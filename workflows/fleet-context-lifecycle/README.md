# Fleet context lifecycle — the orchestrator ran its lanes to a full window

**Task:** TALO-0093 · **Source:** customer review R11, issue #58 ·
**Contract:** `K_id sha256:9b963eb2…`

This workflow is not about the product. It is about how the work on the product
is run, and it starts from a finding the customer made about the orchestrator.

## The finding

Autonomous agent lanes were allowed to run until their context window was nearly
full, instead of having it managed. Measured at 2026-08-20T05:56Z, from each
session's own usage record, against a 1,000,000-token window:

| lane | context | % of window |
|---|---|---|
| lane A | 989,806 | **99.0%** |
| lane B | 905,472 | **90.5%** |
| lane C | 240,236 | 24.0% |
| lane D | 211,757 | 21.2% |
| lane E | 181,998 | 18.2% |
| lane F | 143,229 | 14.3% |

Both of the top two were doing acceptance-relevant work in that state.

The operator's threshold is **25%**, and the reasoning is the load-bearing part:
a saturated window does not fail loudly. It keeps answering, keeps citing, keeps
producing acceptance evidence and merge decisions — and the details drift. That
is the failure mode every gate in this project exists to catch, and the one
hardest to catch by reading the work.

## What the orchestrator got wrong

It treated a full window as a **scheduling** problem — *this lane cannot take new
work, so I will use another* — and reset a lane only when it needed the capacity.
It restarted one lane at 98% because it wanted somewhere to put a task, not
because 98% is itself a defect. Lanes at 90% and 99% were left running because
they were busy and looked productive.

Stated as the rule it was missing: **occupancy above the threshold is a defect in
the work being produced right now**, and it is acted on for that reason.

## The instrument existed the whole time

The orchestrator read context off each lane's terminal surface. That surface
renders the percentage **only while the lane is idle**; while it works, the
activity indicator takes the space. So the number was visible in the one state
where it did not matter, and busy lanes were invisible **by construction**.

Every session also writes its own usage record, turn by turn. The occupancy of a
running lane is the sum of three figures on the last such record — the cached
prefix read back, the prefix written this turn, and the uncached input:
everything the next turn has to carry. That reading is exact, live, and
indifferent to whether the lane is busy. It is one command, over data that had
been on disk the whole time.

*(The method is described here in the abstract. Its executable form references
the fleet's own filesystem layout and lives in the private repository, per the
sanitization policy.)*

## What was built

Five artifacts, all bound by the contract above, and one gate.

- **`skill-context-window-lifecycle`** — how to measure a running lane, when to
  act, and what the three remedies actually cost. Compaction is cheap and lossy
  in ways that are hard to see: the summary keeps what the summariser judged
  important, and a verification you performed but did not restate can vanish
  while the conclusion it supported remains. A handoff is expensive and only as
  good as its document. Finishing the current unit first is frequently correct,
  because resetting mid-unit can lose more than it saves.
- **`blueprint-lane-handoff`** — what a handoff must carry. The brief, the
  decisions *and their reasoning*, what was rejected and why, the artifacts and
  pull requests in flight, and the verification record: what has been checked, by
  which command, with what result. A handoff that loses that record converts
  measured acceptance into hearsay, and the successor either re-accepts on trust
  or redoes work that already passed.
- **`constraint-lane-context-threshold`** — the rule, and the threshold as a
  **declared value** rather than a default.
- **`policy-lane-context-observation`** — the orchestrator's operating rule,
  including what happens when a lane crosses mid-unit.
- **`role-fleet-orchestrator`** — the role that owns all of the above, which did
  not exist: the fleet had a role for a lane and none for whoever runs the lanes.

## The threshold is declared, and it cannot move quietly

25% is an **operator decision**, not a measurement. No experiment here located
the occupancy at which output begins to degrade, and none is claimed.

So it is held the way this project holds every declared assumption since
TALO-0076: the value is stored **together with the words it was declared in**,
and the check refuses to run if the value has left its own citation. Change the
number alone and it goes red. Change the number and the citation and you have
edited a quoted human statement — still possible, and now a visible, deliberate
act in a diff. **A value nothing verifies is a default, and a default is
indistinguishable from an invented number.**

## What happens when a lane crosses mid-unit

Written down as a rule, because it was being decided case by case:

- **Default: finish the current unit, hand off before the next.**
- **The deferral is recorded** at the moment the crossing is observed, naming the
  unit being finished — an unrecorded deferral is indistinguishable from not
  having noticed.
- **The deferral expires.** A deferral that never expires is not a decision but a
  permanent exemption, and the gate would go green forever on the first recorded
  excuse.
- **Two narrow exceptions.** If the lane is already so far over that the current
  unit's own output cannot be trusted, the unit is **abandoned, not finished** —
  finishing it would produce exactly the plausible-but-wrong artifact the
  threshold exists to prevent. And a unit with no foreseeable boundary is cut at
  the nearest checkpoint, because "the next boundary" is not a real instant for
  work that has none.

## The gate, and it went red on real lanes

Not a fixture. The same fleet, the same day:

| instant | result | what the fleet actually looked like |
|---|---|---|
| 05:56Z | **RED** — the review's own measurement | two lanes at 99.0% and 90.5% |
| 06:11:07Z | **RED**, 2 findings | 31.3% and 28.7%, no recorded decision |
| 06:17:13Z | **GREEN**, 0 findings | three over-threshold lanes, each covered by a recorded *finish-unit-then-handoff* decision |
| 13:20Z (evaluated) | **RED**, 3 findings | the same tree, the deferrals expired |

The last row is the one that matters. Nineteen tests cover the rest, each green
paired with the red that proves it checks something: a live session the roster
does not declare is red, a declared lane that is not running is red, a lane whose
occupancy cannot be read is reported **unmeasured** rather than passed — unknown
is not zero — and a decision naming an action outside the defined set stops the
gate rather than passing as one that does.

## A premise of the order, corrected

The review recorded a related exposure: two lanes had been raised outside the
fleet's service unit and "will not survive a logout the way the original four
will."

Measured, that is **wrong in the direction that matters, and the real gap is
larger**. Every session of the fleet — those two included — runs inside the
service's own process group; none was less durable than another, and a logout
would not have ended any of them. What is true is worse: the unit was
**transient**, with no file on disk, so a reboot leaves nothing to start from;
and its single start command raises the anchor session only, so a restart would
have restored the anchor and **not one lane**. All six were equally undeclared.

The fix is a declaration the fleet did not have — a roster naming every session,
its role and its working directory — plus a restore step that brings the live
fleet up to it (verified idempotent against the live fleet, and verified to
actually raise missing sessions on an isolated one), and the unit as a file. The
roster is load-bearing twice over: it is what a restart restores from, and it is
what the gate reconciles against, so a lane raised outside the declaration is now
something a check can see rather than something someone has to notice.

Installing a system unit is a host mutation, outside this task's
repository-and-broker boundary, so the unit ships as a file and the install is
the operator's.

## Evolution note — why no artifact prevented this

**The classification was ABSENT, and that is the honest answer.** There was no
skill for measuring lane context, no blueprint for handing a lane over, no
constraint stating a threshold, no policy on when a handoff is mandatory, and no
role for the orchestrator at all. Nothing failed; nothing existed. The
orchestrator improvised, and improvisation produced two lanes past 90%.

But the sharper observation is about the **instrument**, not the missing rule.

> The fleet's own liveness probe read a surface where the metric is structurally
> invisible in exactly the state that matters.

That is the same class of defect as a guard whose selector excludes the thing it
guards — review R9, issue #56 — and this is now the **second instance**. In both
cases the mechanism was real, ran, and reported successfully. In both cases its
field of view had been chosen so that the condition it existed to detect could
not appear in it. A check like that does not fail; it passes, which is worse,
because a passing check is read as evidence.

Two instances make it worth asking the general question: **are our instruments
being chosen for convenience rather than derived from what needs observing?**

In this case the answer is plainly yes. The pane percentage was chosen because it
was already on the screen. Nobody asked *in which states does this surface carry
the number*, and the answer — *only while idle* — would have disqualified it in
one sentence. The transcript required no new infrastructure and had been written
by every lane, every turn, from the beginning.

That question generalises into a test worth applying to any new check, and it is
cheap: **name the state the check exists to detect, and demonstrate that the
check can see that state.** Not that it passes on a healthy system — that it goes
red on the unhealthy one. This project already has that discipline for
verifications, under §14.8: a check that has not been shown to fail has not been
shown to check anything. What both R9 and R11 show is that the same discipline
must be applied to the **observability surface a check reads**, not only to the
check's own logic. A correct predicate over a blind input is a green light with
nothing behind it.

Worth recording alongside it, from the reuse review: the framework this fleet
runs on has the same shape in its own context-pressure instrument for this
runtime family. Its signal arrives from lifecycle hooks — turn complete, session
start, post-compaction — and from the status surface, all of which fire at turn
boundaries. Between them a busy session publishes nothing. The blindness is not
this fleet's mistake alone; it is a property of choosing the surface that
announces itself over the record that is always there.

## Reuse — what was taken rather than reinvented

The framework already ships a **context-window self-clearing** contract and a
**snapshot-first resume** contract, and the reuse-first mandate applies. Both
were read before anything was authored.

- **Reused:** the three-outcome shape (no action / compact / clear); the rule
  that a reset is only safe once continuity is bound to a durable artifact; the
  five-layer handoff body; append-only decision-log semantics; and the
  **claim-provenance tagging** that refuses a claim which cannot name what
  established it. That last one is the framework's existing answer to part of
  what R11-02 asked for, and it was adopted, not rebuilt.
- **Not applicable:** the framework's contract is *self*-clearing — a session
  acting on its own pressure, from the inside. It gives an orchestrator no way to
  measure a lane it is not inside. That outside view was the absent capability.
- **On the two thresholds, so they cannot be mistaken for drift:** the framework
  acts at 75% and 90%; this policy acts at 25%. They are different decisions.
  The framework's bands are a *degradation backstop* — the last point at which a
  session must save itself. The 25% is a *quality threshold* for a project whose
  product is measurement honesty. A lane that reaches the framework's bands has
  been in violation of this policy for a long time.

## Time and cost

Per TZ §9.2, every unit of this task — including the evolution note — is recorded
in the workflow ledger with its time, cost, and the artifacts it created, reused
or modified. Knowledge production has no free contour.

| | |
|---|---|
| Units | 7 |
| Wall time | 30m 39s |
| Active execution | 29m 07s |
| Tokens | 42,730,186 in / 243,312 out |
| Model cost | ~$92.74 |
| Compute cost | $0.00 (measured — no compute beyond the model) |
| Human cost | $0.00 (measured — no human executed these units) |

| unit | created / modified |
|---|---|
| reuse-first prior art | the reuse analysis (created) |
| measurement instrument | the gate, its 19 tests, the declared-value register, the fleet roster, the decision journal (created) |
| capability artifacts | skill, blueprint, constraint, orchestrator role (created); observation policy, lane role (modified) |
| graph and resolution | 6 graph revisions, the authoring and resolution tools, the intent, the receipt (created); three drifted test suites (modified, back to green) |
| fleet durability | the restore step, the unit file, the runbook (created) |
| evolution note | this page (created) |
| public trace projection | five sanitized projections, the catalog index (created / modified) |

**Two honest notes on those numbers.** The *token counts are measured* — read
from this session's own usage record, with the same summation the gate uses, so
this task's cost was accounted with the instrument the task built. What is
assumed is the price schedule (no metered invoice exists for the session) and the
split of the measured session total across the seven units, which is proportional
to effort rather than separately metered. And the measurement covers the session
up to the moment the ledger was written, so the commit and pull-request steps
that follow are not in it.

A first draft of the ledger apportioned more wall time across the units than the
session had actually elapsed. The ledger writer refused it — *"duration was
invented, not measured"* — which is the same discipline this whole review is
about, applied to the reviewer.
