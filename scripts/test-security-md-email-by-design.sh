#!/usr/bin/env bash
# Proves SECURITY.md Reporting contact is allowed by design (no allowlist
# expiry), while other emails / other paths still fail Layer B.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"

fail() { echo "FAIL: $*" >&2; exit 1; }
pass() { echo "ok  $*" ; }

work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
git clone -q "$ROOT" "$work/repo"
cd "$work/repo"
git config core.hooksPath .githooks

# Empty allowlist body (header only) — must still be green for SECURITY.md contact
cat > .sanitization-allowlist <<'AL'
# Sanitization allowlist — reviewed exceptions (SANITIZATION.md § 3).
# Format: <path>:<class>:<expiry YYYY-MM-DD>:<justification>
AL

grep -q 'security@arcanada.ai' SECURITY.md || fail "SECURITY.md missing security@arcanada.ai"

rc=0
# IMPORTANT: invoke the sandbox copy so ROOT inside the script is this clone.
GITHUB_ACTIONS=true bash ./scripts/sanitization-check.sh >/tmp/bydesign-clean.out 2>/tmp/bydesign-clean.err || rc=$?
[ "$rc" = 0 ] || fail "expected clean tree exit 0, got $rc; stderr=$(cat /tmp/bydesign-clean.err); stdout=$(cat /tmp/bydesign-clean.out)"
pass "SECURITY.md Reporting contact allowed with empty allowlist"

cp SECURITY.md SECURITY.md.bak
printf '\nContact alias: leak-test-%s@example.com\n' "$$" >> SECURITY.md
rc=0
GITHUB_ACTIONS=true bash ./scripts/sanitization-check.sh >/tmp/bydesign-badmail.out 2>/tmp/bydesign-badmail.err || rc=$?
[ "$rc" != 0 ] || fail "expected non-zero for non-policy email in SECURITY.md"
grep -q 'FORBIDDEN\[EMAIL\]' /tmp/bydesign-badmail.out || fail "expected FORBIDDEN[EMAIL] for non-policy address; out=$(cat /tmp/bydesign-badmail.out)"
pass "non-policy email in SECURITY.md is refused"
mv SECURITY.md.bak SECURITY.md

printf 'Write to security@arcanada.ai please\n' > NOTE-EMAIL.md
git add NOTE-EMAIL.md
rc=0
GITHUB_ACTIONS=true bash ./scripts/sanitization-check.sh >/tmp/bydesign-otherpath.out 2>/tmp/bydesign-otherpath.err || rc=$?
[ "$rc" != 0 ] || fail "expected non-zero for security contact outside SECURITY.md"
grep -q 'FORBIDDEN\[EMAIL\]' /tmp/bydesign-otherpath.out || fail "expected FORBIDDEN[EMAIL] on other path"
pass "security contact outside SECURITY.md is refused"

echo "test-security-md-email-by-design: all cases pass"
