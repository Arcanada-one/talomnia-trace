---
projection-of: datarim-skill-testing
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Testing Discipline and False-Green Gates

**Inputs.** `change_under_test` (code), `existing_suite` (code)

**Outputs.** `test_suite` (code), `test_evidence` (report)

## Preconditions

- A change is being implemented or verified in the development or QA flow
- The fragment matching the active gate is identified before loading detail

## Procedure

1. (analysis) Load the entry contract first and route to only the fragment matching the active gate, such as TDD discipline, live smoke, silent-failure detection, or legacy triage.
2. (editor) Build the suite along the pyramid, with mostly isolated unit tests, fewer integration tests, and few end-to-end flows, never mocking the thing under test.
3. (review) Drive adapter and gate tests through the real production path: raw fixtures through the real mapper, driver serialization simulated, upstream layers stubbed to passthrough.
4. (shell) Prove gates can fail by breaking the guard and watching the test go red, and make infrastructure-dependent tests probe and skip with a named missing dependency.
5. (report) Derive reported test counts mechanically from the runner's declarations and cite a real producer-output record for every verdict gate.

## Effects

- The test suite follows the pyramid and exercises real production paths
- False-green patterns such as masked mutations, bare skips, and synthetic-only verdicts are eliminated
- Test reporting becomes mechanically verifiable

## Evidence obligations

- Mutation evidence that a guard's test goes red when the guard is broken
- Test counts derived verbatim from a mechanical extractor over the spec files
- One real producer-output record cited for every verdict-gate criterion
- Probe-based skip messages naming the exact missing dependency

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-testing` (graph revision `datarim-skill-testing@r2`,
`content_digest: sha256:b070bb4fe32fda41eafec2f3e2d361f1fb3f2b0f248f7058e5ce6ac4d4c28a18`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
