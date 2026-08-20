---
projection-of: tal-policy-lane-context-observation
type: policy
source-version: 0.1.0
origin: created-in-talomnia
projected: 2026-08-20
---
# Policy — lane context observation (issue #58 R11-04)

## The rule the orchestrator failed to have

Stated as the failure, because that is what the rule has to prevent: the
orchestrator treated a full context window as a **scheduling** problem — *this
lane cannot take new work, so I will use another* — and reset a lane only when
it needed the capacity. It restarted a lane at 98% because it wanted somewhere
to put a task, not because 98% is itself a defect. Lanes at 90% and 99% were
left running because they were busy and looked productive.

Everything below exists so that no orchestrator has to make that call again from
first principles.

## Rules

1. **Observe every lane, every cycle.** Each observation cycle measures the
   context of **every declared lane**, whether it is busy or idle. Not the lanes
   being considered for new work. Not the idle ones. Every one.

2. **Measure it where it is always visible.** From the lane's own usage record.
   The terminal surface renders the figure only while a lane is idle, so an
   orchestrator reading it is blind exactly when the lane is working — which is
   the only time the number matters.

3. **Over threshold is a defect, not a capacity note.** A lane above the
   declared threshold is producing work that is less trustworthy than it looks.
   It is acted on because of that, on its own schedule, and never merely
   because something else wants the seat.

4. **Act at the next unit boundary, not when convenient.** A unit is one
   completable piece of lane work — a verification pass, an implementation step,
   a review response, a merge. The lane is acted on when its current unit ends,
   which is both the cheapest moment and the earliest honest one.

5. **Crossing mid-unit: finish the unit, hand off before the next.**
   This is the case that was being decided ad hoc, so it is written down.

   - **Default — finish the current unit, then hand off before starting the
     next.** Resetting mid-unit can lose more than it saves: a lane halfway
     through a verification or a migration holds working state that no document
     captures cheaply, and the successor either redoes it or takes it on trust.
   - **The deferral is recorded**, naming the unit being finished, at the moment
     the crossing is observed — not afterwards. An unrecorded deferral is
     indistinguishable from not having noticed.
   - **The deferral is bounded** and expires. When it does, the lane is over
     threshold with no live decision, and the gate says so again.
   - **Two exceptions, both narrow.** If the lane is already so far over that
     the current unit's own output cannot be trusted — a lane above roughly
     three quarters of its window producing acceptance evidence, merge decisions
     or cost records — the unit is **abandoned, not finished**, and redone by
     the successor. Finishing it would produce exactly the plausible-but-wrong
     artifact the threshold exists to prevent, and the cost of redoing a unit is
     smaller than the cost of a wrong acceptance that reads as a right one. And
     if the unit has no foreseeable boundary — an open-ended exploration rather
     than a completable piece — it is cut at the nearest checkpoint, because
     "the next boundary" is not a real instant for work that has none.
   - **The handoff is written while the lane is still healthy**, at the decision
     point. A handoff composed at the end of the rope is written by the degraded
     session it exists to replace.

6. **The three actions are chosen on cost, not on habit.** Compaction, handoff,
   and finish-first are different actions losing different things; the
   comparison is in `tal-skill-context-window-lifecycle`. Compaction is cheap
   and quietly lossy and belongs *early*; a handoff is expensive and only as
   good as its document; finishing first is frequently correct and is the
   default mid-unit.

7. **Declare the fleet, then reconcile it.** A lane exists when the roster says
   it exists. A running session the roster does not name is a finding: it is
   unmeasured by this rule, unrestored by the fleet unit, and invisible to every
   mechanism that works from the declaration. A declared lane that is not
   running is a finding too.

8. **Where a new declared operating value goes.** Consumer decides.
   A value that appears in **published accounting** goes in the site's declared
   assumptions register, which the published pages read. A value that governs
   **fleet operation** goes in this repository's register, which the gate reads.
   The two registers hold disjoint values and share no runtime; the *mechanism*
   is deliberately identical, and the literal is never copied between them.
   Duplicating the literal is the defect; duplicating the binding is what makes
   both unable to drift.

## Reuse — what was taken, what was not, and why this is not a second mechanism

The reuse-first mandate applies, and the prior art was read before any of these
artifacts were authored. The framework this fleet runs on ships two relevant
capabilities.

**A context-window self-clearing contract.** A session acting on **its own**
pressure at fixed bands, sending itself a compaction or a clear instruction and
resuming from a task snapshot.

- *Reused:* the three-outcome shape (no action / compact / clear), the principle
  that a reset is only safe when continuity is bound to a durable artifact
  first, and the transaction discipline that a reset which cannot be confirmed
  must be reconciled rather than replayed.
- *Not applicable:* it is **self**-clearing. It is default-off, requires
  explicitly trusting a same-user runtime hook, and gives an orchestrator no way
  to measure a lane it is not inside. The absent capability was the outside
  view — one process measuring many lanes it does not run within — and that is
  what was authored here.
- *On the two thresholds.* That contract acts at 75% and 90% of the window; this
  policy acts at 25%. They are not the same number for the same decision and
  neither supersedes the other. The framework's bands are a **degradation
  backstop** — the last point at which a session must save itself before it
  cannot. The 25% is an **operator quality threshold** for a fleet whose product
  is measurement honesty: work produced above it is not trusted, long before the
  runtime would be in danger. A lane that reaches the framework's bands has
  already been in violation of this policy for a long time. Stating this plainly
  is the difference between two contracts with different jobs and two contracts
  that have drifted.
- *A finding worth recording, since it bears on the evolution note.* The
  framework's own pressure signal for this runtime family arrives from lifecycle
  hooks — turn-complete, session-start, post-compaction — and from the status
  surface. All of those fire at turn boundaries. Between them a busy session
  publishes nothing. So the same structural blindness that this review found in
  the fleet's probe is present in the framework's instrument for the same
  runtime, in a different form. The transcript-derived measurement authored here
  is available on demand, at any instant, and is the honest instrument for both.

**A snapshot-first resume contract, and a session-handoff writer.** Producers
and consumers of durable per-task and per-session artifacts that let a cleared
session continue.

- *Reused, directly:* snapshot-first resume — read the durable artifact before
  anything else; the five-layer handoff body; the append-only decision-log
  semantics; the truncation-protection of the layers that must not be dropped;
  the fail-closed writer contract; and, most of all, the **claim-provenance
  tagging** that refuses an untagged claim. That last one is the existing
  answer to a question R11-02 asks, and it was adopted rather than reinvented.
- *Extended, not duplicated:* `tal-blueprint-lane-handoff` adds the verification
  record as a first-class required section with its own reasoning, and the
  invariants specific to a handoff between two **lanes of a fleet** rather than
  two sessions of one operator — the perishability rule, the write-while-healthy
  rule, and the rule that a raised session is not a restored lane.
- *Not reused:* the runtime-specific writer entry points, paths, and lock
  mechanics. Those are the framework's implementation and this contract does not
  restate them; a lane running under that framework should use its writer.

**Net:** one new instrument (outside-in measurement), one new decision rule
(this policy), and one extension of an existing artifact shape (the handoff's
verification record). Nothing here re-implements a capability that already
existed, and where a value differs from the framework's, the reason is written
down rather than left to be discovered as drift.

## Enforceability (§ 14.8)

The observation half of this policy is enforced by
`tal-constraint-lane-context-threshold` and its gate, which fails when a lane is
over threshold without a live recorded decision, when a lane cannot be measured,
and when the live fleet disagrees with its declaration. The judgement half —
which of the three actions to take — is not mechanically checkable and is not
pretended to be; what the gate checks is that a decision was **taken and
recorded**, which is the part that was missing.

## Provenance

Authored under TALO-0093 for customer review R11 (`talomnia-trace#58` R11-04).
