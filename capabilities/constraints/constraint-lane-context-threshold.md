---
projection-of: tal-constraint-lane-context-threshold
type: constraint
source-version: 0.1.0
origin: created-in-talomnia
projected: 2026-08-20
---
# Constraint — lane context threshold

## The threshold

**25% of the lane's context window.**

Source: an operator decision recorded in `talomnia-trace#58` R11, and held in
`policies/declared-assumptions.json` under `lane-context-threshold-pct`
together with the words it was declared in.

## What kind of claim this is

A **declared assumption**, and nothing stronger. No experiment in this project
located the occupancy at which an agent's output begins to degrade, and none is
claimed. What is claimed is the operator's reasoning, published in their own
words so a reader can disagree with it: a saturated window produces
plausible-but-wrong work instead of failing loudly, and that is the failure mode
every gate here exists to catch and the hardest to catch by review.

Because it is declared rather than measured, it is held the way
`tal-policy-declared-human-rate` holds its rate: the value lives in exactly one
place, inside its own citation, and the check refuses to run if the value has
left the citation behind. Changing the number alone goes red. Changing the
number *and* the citation means editing a quoted human statement — still
possible, and now a deliberate, visible act in a diff. **A value nothing
verifies is a default, not a declaration.**

## Clauses

1. **Every declared lane is measured at every observation cycle**, busy or idle.
   Occupancy is read from the session's own usage record, never from a terminal
   surface that renders it only in one of the two states.
2. **Over the threshold without a live recorded decision is a violation.** Not a
   scheduling note — a defect in the work the lane is producing.
3. **A recorded decision names one of the defined actions** — handoff completed,
   compaction performed, finish-the-current-unit-then-hand-off, or lane retired.
   Free text is refused: "noted" must not be able to pass as "handed off".
4. **A decision expires.** Validity is declared, bounded, and short (see
   `context-decision-validity-hours`). A deferral that never expires is not a
   decision but a permanent exemption, and the gate would go green forever on
   the first recorded excuse.
5. **Unmeasured is not zero.** A lane whose occupancy cannot be read is a
   finding in its own right, under `tal-constraint-unknown-is-not-zero`. "No
   measurement" is exactly the condition that produced this constraint.
6. **The live fleet must match its declaration.** A running session the roster
   does not name is a finding, and so is a declared lane that is not running. A
   lane raised outside the declaration is invisible to every mechanism that
   works from the declaration — including this one.

## Enforceability (§ 14.8)

- `scripts/bin/lane-context-gate.py` — reconciles the declared roster against
  the live fleet, measures each lane from its transcript, and exits non-zero on
  any finding.

  **Demonstrated red against real lanes, not a fixture.** At
  2026-08-20T06:11:07Z, on the live fleet the gate was written for: two lanes
  over the declared threshold with no recorded decision (31.3% and 28.7% of a
  1,000,000-token window). The measurement that prompted the constraint —
  99.0% and 90.5% at 05:56Z, in `talomnia-trace#58` — is the same instrument
  reading the same lanes an hour earlier.

- `scripts/tests/test_lane_context_gate.py` — 19 tests, each green paired with
  the red that proves it checks something: a lane over threshold is red and the
  same tree goes green once the decision is recorded, then **red again** once
  that decision expires; a live session missing from the roster is red; a
  declared lane that is not running is red; a lane with no usage record is
  reported unmeasured rather than passed; an action outside the defined set
  stops the gate; and moving the declared value without moving its citation
  fails with a message naming the broken binding.

- `scripts/bin/lane-context-gate.py` carries no threshold literal, and a test
  asserts it — the value has exactly one home.

### Where it runs, and the limit of that

Stated rather than implied: **this gate cannot run in CI**, because CI has no
fleet to measure. It runs on the fleet host, at every observation cycle, as part
of the orchestrator's loop (`tal-policy-lane-context-observation` rule 1). The
consequence is that its red is only as reliable as the orchestrator's discipline
in running it — which is a weaker guarantee than a merge-blocking check and is
not dressed up as one.

What *is* mechanically enforced away from the fleet is the part that can be:
the declared value's binding to its own citation, the decision-record vocabulary,
the unmeasured-is-not-zero rule and the roster reconciliation logic all fail in
`scripts/tests/test_lane_context_gate.py`, which runs anywhere.

## Bounds

- `forbidden`: reading lane occupancy from the terminal surface; recording a
  decision without one of the defined actions; a decision with unbounded
  validity; reporting an unmeasured lane as 0; presenting 25% as a measured
  degradation point; restating the threshold literal anywhere outside the
  declared-assumptions register; raising a lane the roster does not declare.

## Provenance

Authored under TALO-0093 in response to customer review R11
(`talomnia-trace#58` R11-03), which required a constraint whose check can go red
and asked that red be demonstrated against the day's real measurement rather
than a fixture.
