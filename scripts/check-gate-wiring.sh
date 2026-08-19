#!/usr/bin/env bash
# check-gate-wiring.sh — is the pre-push sanitization gate wired in THIS clone?
#
# The hook lives in the tracked .githooks/ directory, but git only runs it when
# core.hooksPath points there. A clone or worktree without that config operates
# with NO local gate and nothing else would ever say so — this check makes that
# absence loud (issue #32, acceptance criterion 2).
#
# Exit: 0 wired, 1 not wired (with the one setup command to run), 2 not a repo.
#
# Worktree note: core.hooksPath is repository config shared by all linked
# worktrees, and the relative value ".githooks" resolves inside each worktree's
# own checkout, so wiring the repository once covers every worktree.
set -uo pipefail

repo_root="$(git rev-parse --show-toplevel 2>/dev/null)" || {
  echo "check-gate-wiring: not inside a git repository" >&2
  exit 2
}

hooks_path="$(git config core.hooksPath || true)"
fail=0

if [ "$hooks_path" != ".githooks" ]; then
  echo "UNWIRED-GATE: core.hooksPath is '${hooks_path:-<unset>}', expected '.githooks'." >&2
  fail=1
fi

if [ ! -x "$repo_root/.githooks/pre-push" ]; then
  echo "UNWIRED-GATE: $repo_root/.githooks/pre-push is missing or not executable." >&2
  fail=1
fi

if [ "$fail" -ne 0 ]; then
  cat >&2 <<'MSG'

This clone can push to a PUBLIC repository without any local sanitization
gate. Wire it now (one command, run once per clone; covers all worktrees):

    git config core.hooksPath .githooks

CI remains the backstop, but CI goes red only AFTER the bytes are public.
MSG
  exit 1
fi

echo "gate wiring OK: core.hooksPath=.githooks, pre-push hook present and executable"
exit 0
