---
projection-of: tal-blueprint-lane-handoff
type: blueprint
source-version: 0.1.0
origin: created-in-talomnia
projected: 2026-08-20
---
# Blueprint — Lane Handoff

**Purpose.** Replace a running lane with a fresh session so that the work
continues rather than restarts, and so that nothing the lane established has to
be taken on trust by whoever comes next.

Killing a session is trivial. Everything difficult about a handoff is on the
other side of it.

## Elements

- Skill `context-window-lifecycle` (cardinality 1) — decides that a handoff is
  the right action and when it may happen.
- Skill `verification-before-completion` (cardinality 1) — supplies the standard
  every carried claim is held to.
- Handoff artifact (cardinality 1) — the document below.
- Successor session (cardinality 1) — reads the artifact before touching the
  work.
- Decision record (cardinality 1) — the orchestrator's record that the handoff
  happened, which is what a gate can see.

## What the handoff carries

Six sections. The first five are what any reader would expect; the sixth is the
one that is usually lost, and losing it is what makes a handoff worthless.

1. **The brief.** What this lane was asked to do, in the words it was asked in,
   with the governing issue or task reference. Not a paraphrase: a summary of a
   brief is a second brief, and the successor will follow the summary.

2. **Decisions already taken — with their reasoning.** Each decision, and *why*
   it was chosen. A decision without its reasoning cannot be revisited when new
   information arrives: the successor can only obey it or overturn it blindly.

3. **What was rejected, and why.** The most expensive thing a successor can do
   is re-derive a dead end the predecessor already walked to the end. This
   section is what stops the second session from spending its fresh window on
   the first session's discarded work.

4. **Artifacts and work in flight.** Branches, worktrees, commits pushed, pull
   requests open and their numbers, checks running, deploys pending. Anything
   the successor could otherwise create a duplicate of.

5. **Open questions.** What was not resolved, and what it is blocked on.

6. **The verification record — what has been verified, and how.**
   For each established claim: the claim, the command or observation that
   established it, its result, and when. A handoff that drops this section does
   not merely lose detail — it changes the epistemic status of the work. What
   was *measured* arrives at the successor as *asserted*, and the successor has
   only two options, both bad: accept it on trust, which is how an unverified
   claim enters a merge decision wearing the clothes of a verified one, or redo
   it, which pays the verification cost twice and is the reason handoffs get
   skipped.

   This is the section that justifies the whole cost of a handoff over a
   compaction: a compaction may silently drop a verification while keeping the
   conclusion it supported. A handoff cannot, because this section is required
   and its absence is visible.

## Invariants

- **Every carried claim is tagged `verified:` or `assumed:`.** An untagged claim
  is refused. This is the mechanism that keeps section 6 honest — a claim that
  cannot name what established it must be written down as an assumption, where
  the successor can see it is one.
- **Perishable verifications are re-established, not inherited.** A green check,
  a clean tree, a passing deploy — all of these describe a moment. The handoff
  records the result *and its instant*; the successor re-runs anything whose
  subject can have moved since. Verifications of immutable objects (a digest, a
  landed commit, a published bundle) carry over as they are.
- **The artifact is written while the predecessor is still healthy.** A handoff
  composed at 99% occupancy is written by the degraded session it exists to
  replace. Write it at the decision point, not at the end of the rope.
- **The successor reads the artifact before acting**, and re-reads the primary
  sources for anything it is about to change.
- **The handoff is recorded as a decision**, so the fleet gate can see that the
  lane was handed off rather than merely left alone.
- **A session is not a lane.** Raising a fresh terminal restores the container,
  not the work. A lane is restored when a successor has been briefed from the
  artifact — anything less is a green light over an empty seat.

## Allowed variation

- The artifact may live in the repository, in the orchestrator's state, or in
  the task tracker, provided the successor can reach it without the predecessor.
- Sections 1–5 may reuse an existing stage snapshot or session-handoff artifact
  where the runtime already produces one. Section 6 is not optional in any
  variant.
- The successor may be a different model or runtime; the artifact is prose and
  paths, not a runtime-specific state dump.

## Anti-patterns

- **Handing off by pointing at the transcript.** The successor cannot read the
  predecessor's context; that is the entire reason for the handoff.
- **A summary written by the saturated session about its own reliability.**
  Ask what was verified and how, not whether the work is good.
- **Recording the conclusion and not the check.** "Tests pass" is a claim.
  "`<suite>` — 19/19, at 06:14Z, on commit `<sha>`" is a record.
- **Treating a raised session as a restored lane.** See the last invariant.

## Provenance

Authored under TALO-0093 for customer review R11 (`talomnia-trace#58` R11-02).
The five-layer body structure and the `verified:`/`assumed:` claim tagging are
taken from the Datarim framework's session-handoff writer rather than reinvented;
what this blueprint adds is the verification record as a first-class required
section with its own reasoning, and the invariants that govern a handoff between
two *lanes of a fleet* rather than between two sessions of one operator.
