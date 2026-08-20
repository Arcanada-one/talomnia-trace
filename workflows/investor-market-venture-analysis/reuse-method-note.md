# Reuse economics — recomputation and method note (TALO-0068 rework)

**Returned on talomnia-knowledge#7:** the published ratio did not reproduce, and the
reviewer got the opposite sign twice. It is a method defect. This note states the method,
re-derives the number on the current corpus, and records what the measurement can and
cannot support.

## Snapshot (so the figure is re-derivable)

- Corpus: `~/talo-orch/ledger/*.jsonl`
- Entries: **354** (the published figure used 284 — stale by 70 entries, a fifth of the corpus)
- Digest: `cat ledger/*.jsonl | sha256sum` → **`4d0b3f5cc827d5a941f7ddcd4f63e7511ddfa895041826f059ffbbba3ddd7a12`**
- Disposition events: **824 created, 170 reused, 249 modified**, across **979 distinct artefacts**
- Script: `work-0068/reuse_recompute.py`; raw output `reuse-recomputation.txt`

## Four estimators, stated

| # | Method | Population | mean creation | mean reuse | create ÷ reuse | reuse ÷ create |
|---|---|---|---|---|---|---|
| M1 | entry cost split equally across its artefacts | all artefacts (824 vs 170) | $0.8438 | $0.5096 | **1.656** | 0.604 |
| M2 | entry cost attributed whole to each artefact | all artefacts (824 vs 170) | $2.1818 | $1.6981 | **1.285** | 0.778 |
| M3 | equal-split, restricted to artefacts with ≥1 reuse | 50 vs 170 | $0.3787 | $0.5096 | **0.743** | 1.346 |
| M4 | **paired within artefact** — each artefact's own creation vs its own reuses | 50 pairs | $0.3787 | $0.5170 | **0.733** (median **0.568**) | 1.364 |

M1 and M2 say reuse is cheaper. M3 and M4 say the opposite. **They are not answering the
same question**, and that is the whole explanation of the sign flip.

- **M1/M2 compare unpaired populations.** The creation arm contains **774 artefacts that
  were never reused** — including the 36 research-lane deliverables, each the sole artefact
  of an expensive entry. The reuse arm can only contain the 137 artefacts that *were*
  reused. Comparing them measures the **mix of what gets created**, not the cost behaviour
  of any artefact.
- **M3/M4 compare the same artefacts.** The claim under test is "creating an artefact costs
  N times its later reuse", which is a **paired, within-artefact** claim. **M4 is the
  estimator the claim requires.**

So the reviewer's arithmetic is correct for their method, mine is correct for a different
method, and **neither licenses a directional statement** — for the reason below.

## Why M4 does not support a directional claim either

1. **n = 50 pairs.** Small.
2. **87 of the 137 reused artefacts have no creation event in the ledger at all**, so the
   paired sample covers a minority of reuse activity.
3. **The instrument cannot isolate what it is being asked to measure.** Under equal-split,
   a reuse event is charged `entry_cost / number_of_artefacts`. An entry that reuses one
   artefact while doing substantial new work books that new work as "reuse cost". Nothing
   in the ledger separates the cost of *reusing* a thing from the cost of the work
   surrounding it.
4. Only **15 of 50** artefacts had a reuse cheaper than their own creation — but that count
   comes from the same confounded instrument.

## Verdict

**The ratio is not a measurement of the mechanism in either direction.**

Reuse economics stays graded **Not demonstrated**, and the *reason* changes:

- **was:** "not demonstrated, and the first-party measurement points against it (0.71×)"
- **is:** "not demonstrated: the ratio moves from 1.66× to 0.73× purely with the choice of
  population, and the attribution method in use cannot separate reuse cost from the work
  co-located with it. There is no evidence for the mechanism, and none against it."

This is **stricter, not softer**. The earlier text claimed evidence *against* the mechanism;
that claim was as unearned as a positive one would have been, and it is withdrawn along
with it.

## Defects in the published figure

| # | Defect | Effect |
|---|---|---|
| 1 | **Method not stated** | The number was not checkable by anyone — the reviewer's central and correct complaint |
| 2 | **Stale sample** — 284 entries against 354 now | Means moved ($0.3595→$0.3787), direction did not |
| 3 | **Population described as general when it was restricted** | "On 284 entries: creation $0.3595" reads as all creations; it was 50 events drawn only from artefacts that happened to be reused |
| 4 | **Orientation left implicit** | Printing two means and one ratio invited the reader to divide the other way and read a contradiction. Both orientations are now printed with labels |

## What would make this measurable (EG-3, restated)

An attribution method that isolates reuse: entries whose artefact set is a single reuse and
nothing else, or an explicit per-artefact cost field rather than a split. Until such a
method exists, the mechanism is untested — which is a statement about the instrument, not
about the business.
