#!/usr/bin/env bash
# Cloudflare provisioning for the talomnia.com zone (TALO-0012, TZ v1.3.1 § 8).
#
# Runs inside the cf-provision GitHub Actions workflow. All inputs arrive via
# environment variables so this file stays free of identifiers:
#   CF_API_TOKEN       org-level Actions secret (never printed)
#   ZONE_NAME          apex domain (workflow input, default talomnia.com)
#   ORIGIN_IP          repo secret — public IPv4 of the origin host (masked)
#   ACTION             verify | dns | tls-settings | origin-cert | analytics | purge
#   WRAP_PUBKEY_B64    (origin-cert only) base64 PEM RSA public key; the private
#                      TLS key generated here is hybrid-encrypted to it so the
#                      artifact leaks nothing even in a public repo.
#
# Output discipline (public repo): print PASS/FAIL and idempotency state only.
# Never echo record contents, ids, token material or key material.
set -euo pipefail

API="https://api.cloudflare.com/client/v4"
auth=(-H "Authorization: Bearer ${CF_API_TOKEN}")

fail() { echo "FAIL: $*" >&2; exit 1; }

[ -n "${CF_API_TOKEN:-}" ] || fail "CF_API_TOKEN is empty — org secret did not arrive"

jqr() { python3 -c "import json,sys; d=json.load(sys.stdin); $1"; }

zone_id() {
  curl -s "${auth[@]}" "$API/zones?name=${ZONE_NAME}" \
    | jqr 'r=d.get("result") or []; print(r[0]["id"] if r else "")'
}

case "${ACTION}" in

verify)
  curl -s "${auth[@]}" "$API/user/tokens/verify" \
    | jqr 'print("token:", "valid" if d["success"] else d["errors"])'
  zid=$(zone_id); [ -n "$zid" ] || fail "zone ${ZONE_NAME} not visible to this token"
  echo "::add-mask::$zid"
  echo "zone: visible"
  # Scope probes — read-only calls per capability we need later.
  for probe in "dns_records?per_page=1" "settings/ssl"; do
    ok=$(curl -s "${auth[@]}" "$API/zones/$zid/$probe" | jqr 'print(d["success"])')
    echo "scope read $probe: $ok"
  done
  acct=$(curl -s "${auth[@]}" "$API/accounts?per_page=1" \
    | jqr 'r=d.get("result") or []; print(r[0]["id"] if r else "")')
  if [ -n "$acct" ]; then echo "::add-mask::$acct"; echo "account scope: yes"; else echo "account scope: NO (analytics via API unavailable)"; fi
  ;;

dns)
  [ -n "${ORIGIN_IP:-}" ] || fail "ORIGIN_IP secret did not arrive"
  zid=$(zone_id); [ -n "$zid" ] || fail "zone not found"
  echo "::add-mask::$zid"
  upsert() { # $1 type, $2 name, $3 content, $4 proxied
    local existing
    existing=$(curl -s "${auth[@]}" "$API/zones/$zid/dns_records?type=$1&name=$2" \
      | jqr 'r=d.get("result") or []; print(r[0]["id"] if r else "")')
    body=$(printf '{"type":"%s","name":"%s","content":"%s","proxied":%s,"ttl":1}' "$1" "$2" "$3" "$4")
    if [ -n "$existing" ]; then
      ok=$(curl -s -X PUT "${auth[@]}" -H 'Content-Type: application/json' \
        "$API/zones/$zid/dns_records/$existing" --data "$body" | jqr 'print(d["success"])')
      echo "dns $1 $2: updated ok=$ok"
    else
      ok=$(curl -s -X POST "${auth[@]}" -H 'Content-Type: application/json' \
        "$API/zones/$zid/dns_records" --data "$body" | jqr 'print(d["success"])')
      echo "dns $1 $2: created ok=$ok"
    fi
  }
  upsert A     "${ZONE_NAME}"          "${ORIGIN_IP}" true
  upsert A     "staging.${ZONE_NAME}"  "${ORIGIN_IP}" true
  upsert CNAME "www.${ZONE_NAME}"      "${ZONE_NAME}" true
  ;;

tls-settings)
  zid=$(zone_id); [ -n "$zid" ] || fail "zone not found"
  echo "::add-mask::$zid"
  setz() { # $1 setting, $2 value-json
    ok=$(curl -s -X PATCH "${auth[@]}" -H 'Content-Type: application/json' \
      "$API/zones/$zid/settings/$1" --data "{\"value\":$2}" | jqr 'print(d["success"])')
    echo "setting $1=$2: ok=$ok"
  }
  setz ssl '"strict"'
  setz always_use_https '"on"'
  setz min_tls_version '"1.2"'
  ;;

origin-cert)
  [ -n "${WRAP_PUBKEY_B64:-}" ] || fail "WRAP_PUBKEY_B64 input required"
  workdir=$(mktemp -d); trap 'rm -rf "$workdir"' EXIT
  echo "${WRAP_PUBKEY_B64}" | base64 -d > "$workdir/wrap-pub.pem"
  openssl genrsa -out "$workdir/origin.key" 2048 2>/dev/null
  openssl req -new -key "$workdir/origin.key" -subj "/CN=${ZONE_NAME}" -out "$workdir/origin.csr"
  csr=$(python3 -c "import json;print(json.dumps(open('$workdir/origin.csr').read()))")
  resp=$(curl -s -X POST "${auth[@]}" -H 'Content-Type: application/json' \
    "$API/certificates" --data "{\"hostnames\":[\"${ZONE_NAME}\",\"*.${ZONE_NAME}\"],\"requested_validity\":5475,\"request_type\":\"origin-rsa\",\"csr\":$csr}")
  ok=$(echo "$resp" | jqr 'print(d["success"])')
  if [ "$ok" != "True" ]; then
    echo "$resp" | jqr 'print("origin-cert FAIL:", d.get("errors"))'; exit 1
  fi
  echo "$resp" | jqr 'print(d["result"]["certificate"], end="")' > "$workdir/origin.pem"
  echo "origin-cert: issued ($(openssl x509 -in "$workdir/origin.pem" -noout -enddate))"
  # Hybrid-encrypt the private key to the operator-session public key.
  openssl rand -out "$workdir/aes.bin" 32
  openssl enc -aes-256-cbc -pbkdf2 -salt -in "$workdir/origin.key" \
    -out "$workdir/origin.key.enc" -pass "file:$workdir/aes.bin"
  openssl pkeyutl -encrypt -pubin -inkey "$workdir/wrap-pub.pem" \
    -pkeyopt rsa_padding_mode:oaep -in "$workdir/aes.bin" -out "$workdir/aes.bin.enc"
  mkdir -p out
  cp "$workdir/origin.pem" "$workdir/origin.key.enc" "$workdir/aes.bin.enc" out/
  echo "origin-cert: key wrapped for artifact (plaintext key never leaves the runner)"
  ;;

analytics)
  acct=$(curl -s "${auth[@]}" "$API/accounts?per_page=1" \
    | jqr 'r=d.get("result") or []; print(r[0]["id"] if r else "")')
  [ -n "$acct" ] || fail "no account scope on token — enable Web Analytics needs operator"
  echo "::add-mask::$acct"
  zid=$(zone_id); echo "::add-mask::$zid"
  existing=$(curl -s "${auth[@]}" "$API/accounts/$acct/rum/site_info/list?per_page=50" \
    | jqr 'r=(d.get("result") or []); print(next((s["site_tag"] for s in r if (s.get("zone_tag")=="'"$zid"'" or (s.get("ruleset") or {}).get("zone_tag")=="'"$zid"'")), ""))' || true)
  if [ -n "$existing" ]; then
    echo "analytics: already enabled for zone"
  else
    ok=$(curl -s -X POST "${auth[@]}" -H 'Content-Type: application/json' \
      "$API/accounts/$acct/rum/site_info" \
      --data "{\"zone_tag\":\"$zid\",\"auto_install\":true}" | jqr 'print(d["success"])')
    echo "analytics: created ok=$ok (auto_install beacon)"
  fi
  ;;

purge)
  zid=$(zone_id); [ -n "$zid" ] || fail "zone not found"
  echo "::add-mask::$zid"
  ok=$(curl -s -X POST "${auth[@]}" -H 'Content-Type: application/json' \
    "$API/zones/$zid/purge_cache" --data '{"purge_everything":true}' | jqr 'print(d["success"])')
  echo "purge: ok=$ok"
  ;;

*) fail "unknown ACTION=${ACTION}" ;;
esac
