---
projection-of: tal-skill-context-window-lifecycle
type: skill
source-version: 0.1.0
origin: created-in-talomnia
projected: 2026-08-20
---
# Skill — Context-Window Lifecycle

**Inputs.** `lane_roster` (json), `session_usage_record` (jsonl)

**Outputs.** `lane_context_measurement` (report), `context_decision` (record)

## Preconditions

- One or more agent lanes are running under an orchestrator that decides what
  each of them works on.
- Each lane's runtime writes a per-session usage record that is readable from
  outside the session.
- A threshold has been declared, with its source, in the declared-assumptions
  register.

## Why this is a quality skill and not a capacity skill

A lane near the top of its window is not primarily a lane that cannot accept
more work. It is a lane whose output is **less trustworthy than it looks**. It
keeps answering, keeps citing, keeps producing acceptance evidence and merge
decisions — and the details drift. That failure mode is the one this whole
system is built to catch, and it is the one hardest to catch by reading the
work: nothing goes red, nothing throws, the prose stays confident.

Treating saturation as a scheduling problem produces exactly the observed
behaviour: lanes are reset when their capacity is *needed*, and lanes that look
productive are left running at 90% and above. The remedy is not better
scheduling. It is to treat occupancy over the threshold as a defect present in
the work being produced right now.

## Procedure

1. (analysis) Read the threshold from the declared-assumptions register, never
   from memory and never as a literal in the measuring code. It is a declared
   value with a named source, not a measurement of where degradation begins.
2. (shell) For each declared lane, resolve the runtime's per-session state
   directory from the lane's working directory, take the most recently written
   transcript, and read the **last** record carrying usage figures.
3. (analysis) Occupancy is the sum of the cached prefix read back, the prefix
   written this turn, and the uncached input — everything the next turn must
   carry. Output tokens are not occupancy until they return as input; counting
   them overstates every lane.
4. (review) A lane with no usage record yet is **unmeasured**, and unmeasured is
   not zero. Report it as a finding rather than as a pass.
5. (analysis) Compare against the declared threshold and choose one of the three
   actions below. Record the choice, whichever it is — including the choice to
   defer.
6. (report) Publish the measurement with its timestamp, the window size it was
   taken against, and the threshold's source, so a reader can recompute it.

## Do not measure it on the terminal surface

The occupancy figure that a lane's terminal renders is present **only while the
lane is idle**; while it works, the activity indicator takes that space. An
orchestrator that reads the pane therefore sees the number in the one state
where it does not matter and is blind in the state where it does. Two lanes
reached 99.0% and 90.5% under exactly that instrument, doing acceptance-relevant
work, without a single observation recording it.

The transcript is the instrument. It is exact, it is live, it is written by the
lane itself, and it does not care whether the lane is busy.

## The three actions, and what each one costs

The three are not interchangeable, and pretending they are is how a lane loses
work to its own hygiene.

**Compaction — cheap, and lossy in ways that are hard to see.**
The session summarises its own history in place. It costs one turn and no
handoff document. What it loses is unpredictable from outside: the summary keeps
what the summariser judged important, and the thing it drops does not announce
itself. A verification you performed but did not restate can vanish while the
conclusion it supported remains — which converts measured acceptance into a
claim without anyone noticing the conversion. Use it when the lane's remaining
work is short and self-contained, and prefer it *early*, when there is still
enough headroom that the summary is not the only thing left.

**Handoff to a fresh session — expensive, and only as good as its document.**
The successor starts clean, which is the point: full headroom, no degraded
prefix. The cost is real — writing the handoff, the successor reading in, and
the re-establishment of everything the document failed to carry. A handoff is
worth more than a compaction only when the document is good; a bad one is
strictly worse than both alternatives, because it *looks* like continuity. What
it must carry is the blueprint's subject, not this skill's.

**Finishing the current unit first — often the right answer.**
Resetting mid-unit can lose more than it saves. A lane halfway through a
verification, a migration, or a review pass holds working state that no document
captures cheaply, and the successor either redoes it or accepts it on trust.
When a lane crosses the threshold mid-unit, the default is to finish that unit
and hand off before the next one begins — and to **record that decision**, with
the unit named, so a deferral is a decision rather than an omission. A deferral
expires; when it does, the lane is over threshold with no live decision again.

## Effects

- Every running lane's occupancy is known at every observation cycle, whether
  the lane is busy or idle.
- A lane over the declared threshold is acted on at the next unit boundary,
  rather than when its capacity happens to be needed elsewhere.
- Deferrals are recorded and bounded, so they cannot silently become permanent.

## Evidence obligations

- The measurement, with the instant it was taken, the window size, and the
  threshold's declared source.
- For every lane over threshold: the recorded decision, its action, and the
  unit it was deferred to.
- For a handoff: the artifact the successor was briefed from.
- Unmeasured lanes reported as unmeasured, never as zero.

## Provenance

Authored under TALO-0093 in response to customer review R11
(`talomnia-trace#58`), which measured two lanes at 99.0% and 90.5% of a
million-token window while both were producing acceptance-relevant work, and
classified context-window lifecycle as ABSENT from this project's artifacts.

Prior art was read before authoring and is credited rather than duplicated: the
Datarim framework ships a self-clearing skill for a session acting on **its own**
pressure at deterministic bands, and a snapshot-first resume contract. This
skill is the outside view those do not cover — an orchestrator measuring lanes
it is not inside. The relationship, including where the two thresholds differ
and why that is not drift, is stated in
`policies/policy-lane-context-observation.md` § Reuse.
