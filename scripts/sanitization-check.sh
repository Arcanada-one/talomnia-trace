#!/usr/bin/env bash
# sanitization-check.sh — Layer B of the sanitization gate (see SANITIZATION.md).
#
# Scans for the forbidden classes of SANITIZATION.md § 1:
#   IP4      IPv4 literal, including backslash-escaped octets; RFC 5737 doc ranges tolerated
#   ABSPATH  absolute filesystem path of an operator/fleet machine
#   HOSTNAME internal host / mesh node name
#   EMAIL    e-mail address (allowlist for public contact addresses)
#   PHONE    phone number
#   TRACKER  internal ecosystem tracker id (TALO- is the showcased subject, allowed)
#   CRED     credential-pattern backstop (primary detector is Layer A / gitleaks)
#
# Modes:
#   (default)        scan git-tracked files of the repo, honouring .sanitization-allowlist
#   --dir <path>     scan every file under <path> (no allowlist) — used by CI positive control
#   --selftest       plant one synthetic finding per class, require every class to fire
#
# Exit: 0 clean, 1 findings (or self-test failure), 2 usage error.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
ALLOWLIST="$ROOT/.sanitization-allowlist"

# Detector definition files contain the patterns themselves — excluded from the scan,
# governed by PR review on the protected branch (SANITIZATION.md § 3).
EXCLUDED='^(scripts/sanitization-check\.sh|\.gitleaks\.infra\.toml|\.sanitization-allowlist)$'

CLASSES=(IP4 ABSPATH HOSTNAME EMAIL PHONE TRACKER CRED)

pattern_for() {
  case "$1" in
    IP4)      echo '[0-9]{1,3}(\\?\.[0-9]{1,3}){3}' ;;
    ABSPATH)  echo '(/home/[a-z][a-z0-9_-]+/|/Users/[A-Za-z][A-Za-z0-9_-]+/|C:\\+Users\\+[A-Za-z]|/var/(www|lib|log)/|/opt/[a-z][a-z0-9_-]+/|/System/Volumes/)' ;;
    HOSTNAME) echo '(arcana-[a-z]+|[a-z0-9-]+\.ts\.net|tailscale|tailnet)' ;;
    EMAIL)    echo '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}' ;;
    PHONE)    echo '\+[0-9][0-9() -]{6,}[0-9]' ;;
    TRACKER)  echo '(INFRA|SEC|ARCA|AUTH|BILL|CONV|MUN|TRANS|SUP|OVER|CONS|VOICE|DISK|LTM|SRCH|CONN|ARGA|EMAIL|ARAS|STATUS|ADSR|LEGAL|PUB|SPACE|SHARED|CTRL|WIKI|ASUP|PAXBT|CUBR|VERD|TUNE|DATA|AGENT|BENCH|MAINT|FIN|QCK|ROB|DEVOPS|CONTENT|RESEARCH)-[0-9]{4}' ;;
    CRED)     echo '(ghp_[A-Za-z0-9]{20,}|github_pat_[A-Za-z0-9_]{20,}|AKIA[0-9A-Z]{16}|hvs\.[A-Za-z0-9]{20,}|xox[baprs]-[A-Za-z0-9-]{10,}|AIza[0-9A-Za-z_-]{35}|glpat-[A-Za-z0-9_-]{20}|-----BEGIN [A-Z ]*PRIVATE KEY-----|sk-[A-Za-z0-9]{24,})' ;;
    *)        return 1 ;;
  esac
}

# RFC 5737 documentation ranges are the only tolerated IP form.
is_doc_ip() {
  local ip="${1//\\/}"
  case "$ip" in
    192.0.2.*|198.51.100.*|203.0.113.*) return 0 ;;
    *) return 1 ;;
  esac
}

allow_suppresses() { # path class -> 0 if a live allowlist entry covers it
  local path="$1" class="$2" today entry_path entry_class entry_expiry rest
  [ -f "$ALLOWLIST" ] || return 1
  today="$(date -u +%Y-%m-%d)"
  while IFS=: read -r entry_path entry_class entry_expiry rest; do
    case "$entry_path" in ''|'#'*) continue ;; esac
    if [ "$entry_path" = "$path" ] && [ "$entry_class" = "$class" ]; then
      if [ "$(printf '%s\n%s\n' "$entry_expiry" "$today" | sort | head -1)" = "$today" ] || [ "$entry_expiry" = "$today" ]; then
        return 0
      else
        echo "EXPIRED-ALLOWLIST: $entry_path:$entry_class expired $entry_expiry — renew or remove" >&2
        return 2
      fi
    fi
  done < "$ALLOWLIST"
  return 1
}

scan_files() { # reads file list on stdin (relative to $2), honour_allowlist=$1
  local honour="$1" base="$2" found=0 f class pat line lineno text match rc
  while IFS= read -r f; do
    [ -f "$base/$f" ] || continue
    for class in "${CLASSES[@]}"; do
      pat="$(pattern_for "$class")"
      while IFS= read -r line; do
        [ -n "$line" ] || continue
        lineno="${line%%:*}"; text="${line#*:}"
        if [ "$class" = IP4 ]; then
          match="$(printf '%s' "$text" | grep -oE "$pat" | head -1 || true)"
          [ -n "$match" ] && is_doc_ip "$match" && continue
        fi
        if [ "$honour" = yes ]; then
          rc=0; allow_suppresses "$f" "$class" || rc=$?
          if [ "$rc" = 0 ]; then continue; fi
          if [ "$rc" = 2 ]; then found=1; continue; fi
        fi
        echo "FORBIDDEN[$class] $f:$lineno: $(printf '%s' "$text" | head -c 160)"
        found=1
      done < <(grep -nE "$pat" -- "$base/$f" 2>/dev/null || true)
    done
  done
  return "$found"
}

selftest() {
  local dir rc failed=0 class
  dir="$(mktemp -d)"
  trap 'rm -rf "$dir"' RETURN
  # Planted values are generated/synthetic; low-entropy textbook examples are useless
  # as positive controls (secret scanners ignore them by design).
  printf 'addr = 10.66.77.88\n'                                    > "$dir/IP4"
  printf 'log at /home/someoperator/project/build.log\n'           > "$dir/ABSPATH"
  printf 'deployed via node arcana-testbox overnight\n'            > "$dir/HOSTNAME"
  printf 'contact: person.surname@example-corp.com\n'              > "$dir/EMAIL"
  printf 'call +1 (555) 014-2668 after hours\n'                    > "$dir/PHONE"
  printf 'tracked internally as INFRA-9999\n'                      > "$dir/TRACKER"
  printf 'token = "ghp_%s"\n' "$(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 36)" > "$dir/CRED"
  for class in "${CLASSES[@]}"; do
    rc=0
    grep -qE "$(pattern_for "$class")" "$dir/$class" || rc=1
    if [ "$rc" != 0 ]; then
      echo "SELFTEST FAIL: class $class did not fire on its planted sample" >&2
      failed=1
    fi
  done
  # End-to-end: the scanner itself must go red on the planted directory.
  rc=0; ( cd "$dir" && find . -type f | sed 's|^\./||' ) | scan_files no "$dir" >/dev/null || rc=$?
  if [ "$rc" = 0 ]; then
    echo "SELFTEST FAIL: full scan stayed green on planted directory" >&2
    failed=1
  fi
  [ "$failed" = 0 ] && echo "selftest OK: all ${#CLASSES[@]} classes fire"
  return "$failed"
}

case "${1:-}" in
  --selftest)
    selftest ;;
  --dir)
    [ -n "${2:-}" ] || { echo "usage: $0 --dir <path>" >&2; exit 2; }
    rc=0
    ( cd "$2" && find . -type f | sed 's|^\./||' ) | scan_files no "$2" || rc=$?
    [ "$rc" = 0 ] && echo "clean: $2"
    exit "$rc" ;;
  '')
    # Local runs surface a clone operating WITHOUT the pre-push gate (issue #32):
    # a tree that scans clean but pushes ungated is silently unprotected, and
    # nothing else would ever say so. CI checkouts are never wired — there the
    # CI gate itself is the backstop — so the wiring check is skipped exactly
    # when GITHUB_ACTIONS=true and enforced everywhere else.
    if [ "${GITHUB_ACTIONS:-}" != "true" ]; then
      bash "$ROOT/scripts/check-gate-wiring.sh" >/dev/null || exit 1
    fi
    rc=0
    git -C "$ROOT" ls-files | grep -vE "$EXCLUDED" | scan_files yes "$ROOT" || rc=$?
    [ "$rc" = 0 ] && echo "clean: repository working tree"
    exit "$rc" ;;
  *)
    echo "usage: $0 [--dir <path>|--selftest]" >&2; exit 2 ;;
esac
