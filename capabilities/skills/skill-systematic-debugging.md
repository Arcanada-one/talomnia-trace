---
projection-of: datarim-skill-systematic-debugging
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Root-Cause-First Debugging Method

**Inputs.** `failure_symptom` (report), `codebase` (code), `recent_diff` (code)

**Outputs.** `regression_test` (code), `root_cause_fix` (code)

## Preconditions

- A bug, test failure, or unexpected behavior has been observed
- No fix has been proposed yet; the process applies especially under time pressure

## Procedure

1. (analysis) Investigate the root cause before any fix: read the full error output, reproduce the failure reliably, and check recent changes.
2. (shell) In multi-component systems, instrument each boundary and run once to gather evidence showing where the data flow breaks.
3. (search) Find a working example of the same pattern and list every difference between the working and the broken code.
4. (analysis) Form one written hypothesis and test it with the smallest possible change, one variable at a time.
5. (editor) Create a failing test that reproduces the bug, then implement a single fix at the root cause without bundled refactoring.
6. (review) Verify the fix and the rest of the suite, and after three failed attempts stop and question the architecture with the operator.

## Effects

- The root cause is identified and fixed at its source rather than at the symptom
- A regression test exists that failed before the fix and passes after it
- Repeated fix failures escalate into an architecture discussion instead of a fourth patch

## Evidence obligations

- Reliable reproduction steps for the failure
- Boundary instrumentation output showing where the data flow breaks
- A written hypothesis naming the suspected root cause
- A failing test that passes after the single root-cause fix

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-systematic-debugging` (graph revision `datarim-skill-systematic-debugging@r2`,
`content_digest: sha256:97f21114b2645c74222adb265b74acbbb9d9ee58a73524e8c37bea2ccbd4d895`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
