#!/usr/bin/env bash
# Proves SECURITY.md security@arcanada.ai is allowed by design (no allowlist
# expiry), while other emails / other paths still fail Layer B.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
CHECK="$ROOT/scripts/sanitization-check.sh"

fail() { echo "FAIL: $*" >&2; exit 1; }
pass() { echo "ok  $*" ; }

# --- sandbox clone of current tip ---
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT
git clone -q "$ROOT" "$work/repo"
cd "$work/repo"
git config core.hooksPath .githooks
# empty allowlist body (header only) — must still be green for SECURITY.md contact
cat > .sanitization-allowlist <<'AL'
# Sanitization allowlist — reviewed exceptions (SANITIZATION.md § 3).
# Format: <path>:<class>:<expiry YYYY-MM-DD>:<justification>
AL

# Ensure SECURITY.md carries the policy contact
grep -q 'security@arcanada.ai' SECURITY.md || fail "SECURITY.md missing security@arcanada.ai"

rc=0
GITHUB_ACTIONS=true bash "$CHECK" >/tmp/bydesign-clean.out 2>/tmp/bydesign-clean.err || rc=$?
[ "$rc" = 0 ] || fail "expected clean tree exit 0, got $rc; stderr=$(cat /tmp/bydesign-clean.err)"
pass "SECURITY.md security@arcanada.ai allowed with empty allowlist"

# Plant a non-policy email in SECURITY.md — must go red
cp SECURITY.md SECURITY.md.bak
printf '\nContact alias: leak-test-%s@example.com\n' "$$" >> SECURITY.md
rc=0
GITHUB_ACTIONS=true bash "$CHECK" >/tmp/bydesign-badmail.out 2>/tmp/bydesign-badmail.err || rc=$?
[ "$rc" != 0 ] || fail "expected non-zero for non-policy email in SECURITY.md"
grep -q 'FORBIDDEN\[EMAIL\]' /tmp/bydesign-badmail.out || fail "expected FORBIDDEN[EMAIL] for non-policy address"
pass "non-policy email in SECURITY.md is refused"
mv SECURITY.md.bak SECURITY.md

# Plant policy contact in a non-SECURITY.md path — must go red
printf 'Write to security@arcanada.ai please\n' > NOTE-EMAIL.md
git add NOTE-EMAIL.md
rc=0
GITHUB_ACTIONS=true bash "$CHECK" >/tmp/bydesign-otherpath.out 2>/tmp/bydesign-otherpath.err || rc=$?
[ "$rc" != 0 ] || fail "expected non-zero for security@arcanada.ai outside SECURITY.md"
grep -q 'FORBIDDEN\[EMAIL\]' /tmp/bydesign-otherpath.out || fail "expected FORBIDDEN[EMAIL] on other path"
pass "security@arcanada.ai outside SECURITY.md is refused"

echo "test-security-md-email-by-design: all cases pass"
