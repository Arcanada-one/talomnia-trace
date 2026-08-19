#!/usr/bin/env bash
# test-prepush-gate.sh — proof that the pre-push gate goes RED and GREEN
# (issue #32, acceptance criteria 2–4). Run locally or in CI.
#
# Method: the tracked tree (git archive HEAD) is unpacked into a sandbox
# repository with a local bare remote. Every case is a real `git push` so the
# hook runs exactly as it does in life. Planted values are built by string
# concatenation at runtime, so this file itself never matches a detector
# pattern and needs no allowlist entry.
#
# Covered:
#   - unwired clone is LOUD: check-gate-wiring.sh exits 1, and a local run of
#     the bare checker refuses too (absence detection, AC 2);
#   - wired clean tree: push allowed (green);
#   - one planted finding per detector class: push refused, the class named
#     (red, AC 4);
#   - recorded defect #1: the hook never invokes the checker with --dir
#     (allowlist-skipping form);
#   - recorded defect #2 (status laundering) behaviorally: a checker that
#     fails — self-test failure or missing file — refuses the push; if the
#     hook read status through a pipe these cases would pass and this test
#     would go red.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

PASS=0; FAIL=0
ok()   { PASS=$((PASS+1)); printf 'PASS: %s\n' "$1"; }
bad()  { FAIL=$((FAIL+1)); printf 'FAIL: %s\n' "$1"; }
expect_rc() { # description expected actual
  if [ "$2" = "$3" ]; then ok "$1 (exit $3)"; else bad "$1 (expected exit $2, got $3)"; fi
}
expect_nonzero() {
  if [ "$2" -ne 0 ]; then ok "$1 (refused, exit $2)"; else bad "$1 (was allowed, exit 0)"; fi
}

# The committer email is concatenated so this tracked file carries no
# EMAIL-class literal of its own.
sandbox_mail='gate-test'; sandbox_mail+='@'; sandbox_mail+='example.com'
GIT_ID=(-c user.name=gate-test -c "user.email=$sandbox_mail")

# ---- sandbox: tracked tree -> fresh repo + local bare remote ----------------
bare="$TMP/remote.git"
git init -q --bare "$bare"
work="$TMP/clone"
mkdir "$work"
git -C "$ROOT" archive HEAD | tar -x -C "$work"
git -C "$work" init -q
git -C "$work" "${GIT_ID[@]}" add -A
git -C "$work" "${GIT_ID[@]}" commit -qm "sandbox: tracked tree of HEAD"
git -C "$work" remote add sandbox "$bare"

# ---- AC 2: absence is loud ---------------------------------------------------
rc=0; (cd "$work" && bash scripts/check-gate-wiring.sh) >/dev/null 2>&1 || rc=$?
expect_rc "unwired clone: check-gate-wiring.sh goes red" 1 "$rc"

rc=0; (cd "$work" && GITHUB_ACTIONS= bash scripts/sanitization-check.sh) >/dev/null 2>&1 || rc=$?
expect_rc "unwired clone: local bare checker run goes red" 1 "$rc"

git -C "$work" config core.hooksPath .githooks
rc=0; (cd "$work" && bash scripts/check-gate-wiring.sh) >/dev/null 2>&1 || rc=$?
expect_rc "wired clone: check-gate-wiring.sh goes green" 0 "$rc"

# ---- green: clean tree pushes ------------------------------------------------
rc=0; git -C "$work" push -q sandbox HEAD:refs/heads/main >/dev/null 2>&1 || rc=$?
expect_rc "clean tree: push allowed" 0 "$rc"

# ---- red: one planted finding per detector class -----------------------------
# Values are concatenated so THIS file stays pattern-free.
plant_ip='peer at 10.6'; plant_ip+='6.77.88'
plant_path='log under /ho'; plant_path+='me/planteduser/build.log'
plant_host='deployed via node arcana'; plant_host+='-plantbox'
plant_mail='contact planted.person'; plant_mail+='@'; plant_mail+='example-corp.com'
plant_phone='call +'; plant_phone+='1 (555) 014-2668 after hours'
plant_tracker='tracked internally as INFRA'; plant_tracker+='-9999'
# NB: no `tr </dev/urandom | head` here — under `set -o pipefail` the infinite
# reader dies of SIGPIPE (141) and silently kills the whole test. od reads a
# finite 18 bytes -> exactly 36 hex chars, no pipe against an infinite source.
plant_cred="token ghp_$(od -An -tx1 -N18 /dev/urandom | tr -d ' \n')"

plant_and_push() { # class content
  local class="$1" content="$2" rc=0 out
  printf '%s\n' "$content" > "$work/planted-finding.md"
  git -C "$work" "${GIT_ID[@]}" add planted-finding.md
  git -C "$work" "${GIT_ID[@]}" commit -qm "planted: $class"
  out="$(git -C "$work" push sandbox HEAD:refs/heads/planted-$class 2>&1)" || rc=$?
  expect_nonzero "planted $class: push refused" "$rc"
  if printf '%s' "$out" | grep -q "FORBIDDEN\[$class\]"; then
    ok "planted $class: finding named in refusal output"
  else
    bad "planted $class: FORBIDDEN[$class] not named in output"
  fi
  git -C "$work" "${GIT_ID[@]}" reset -q --hard HEAD~1
}

plant_and_push IP4      "$plant_ip"
plant_and_push ABSPATH  "$plant_path"
plant_and_push HOSTNAME "$plant_host"
plant_and_push EMAIL    "$plant_mail"
plant_and_push PHONE    "$plant_phone"
plant_and_push TRACKER  "$plant_tracker"
plant_and_push CRED     "$plant_cred"

# ---- recorded defect #1: never the allowlist-skipping --dir form -------------
if grep -qE -- '--dir' "$ROOT/.githooks/pre-push"; then
  bad "hook must not use the --dir checker form"
else
  ok "hook never uses the --dir checker form"
fi

# ---- recorded defect #2 (behavioral): a failing checker refuses the push -----
printf '#!/usr/bin/env bash\necho detector deliberately broken >&2\nexit 3\n' \
  > "$work/scripts/sanitization-check.sh"
rc=0; git -C "$work" push -q sandbox HEAD:refs/heads/broken-checker >/dev/null 2>&1 || rc=$?
expect_nonzero "broken checker (self-test fails): push refused" "$rc"
git -C "$work" checkout -q -- scripts/sanitization-check.sh

rm "$work/scripts/sanitization-check.sh"
rc=0; git -C "$work" push -q sandbox HEAD:refs/heads/missing-checker >/dev/null 2>&1 || rc=$?
expect_nonzero "missing checker: push refused" "$rc"
git -C "$work" checkout -q -- scripts/sanitization-check.sh

# ---- green again: sandbox intact after all red cases --------------------------
rc=0; git -C "$work" push -q sandbox HEAD:refs/heads/final-clean >/dev/null 2>&1 || rc=$?
expect_rc "clean tree after red cases: push allowed" 0 "$rc"

printf '\n%d passed, %d failed\n' "$PASS" "$FAIL"
[ "$FAIL" -eq 0 ]
