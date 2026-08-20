# TALO-0068 — Validation Report

**Date 2026-08-20.** What was checked, what failed, and what the failures changed.

## Gates that actually fired during production

| # | Gate | What it caught | Disposition |
|---|---|---|---|
| 1 | Ledger validator — invented duration | `wall_time_s=240` written against a 220s span | Corrected in place (unconsumed) + a disclosure correction entry |
| 2 | Ledger validator — invented duration, **again** | The correction entry itself carried `wall_time_s=220` against its own 16s span | Corrected; `started_at` relabelled as an estimate with stated bounds |
| 3 | Ledger validator — invented duration, **third time** | The cost-correction entry carried 900s against a 249s span | Corrected; rule adopted: compute the span from timestamps first, write second |
| 4 | Ledger validator — record ordering | Lane D's measured finish postdated its `recorded_at`, i.e. the record described a run that had not ended | `recorded_at` moved to the actual write time |
| 5 | Self-audit of the agent tree | 31 of 36 agents unbooked; 5 booked with cost understated 2.0x–7.2x | All 36 rebooked from measured transcript telemetry |
| 6 | Research-sections projection | A market-map table shipped with an empty corner header | Header supplied; the loader refuses a missing language side by design |
| 7 | **Honesty gate (TZ §1.4)** | The document's own moat section used the banned "N times cheaper" construction — **while refuting the claim** | Rephrased. The gate does not care about intent, and it is right not to |
| 8 | Source-fabrication gate | — | Passed clean: 22/22 published citations carry a fetched, claim-supporting record |
| 9 | Workflow status-honesty gate | — | Passed: 40 ledger entries for TALO-0068, **0 pending**; status is nonetheless set to `in_progress` on the merits |

Gate 7 is the one worth naming twice. The sentence was *correcting* an overstated claim, and the gate still refused it — which is the correct behaviour for a pattern ban, and a demonstration that the honesty surface is enforced mechanically rather than by author intent.

## Adversarial checks applied to the document

| Check | Result |
|---|---|
| Does any figure present TAM as company revenue? | No. The model states it explicitly and repeats it in the executive summary. |
| Does any market size rest on a single aggregator? | No. Both method families are government statistics; aggregators appear only as labelled low-confidence context, and the two global aggregator figures are excluded for disagreeing 5.3x. |
| Are the two sizing methods genuinely independent? | Yes — provider revenue (Census QSS/SAS) versus business expenditure (Census SAS Table 5, BEA input-output). Different instruments, different failure modes. |
| Is any competitive-matrix cell estimated? | No. 17 cells across 10 companies read `unknown`. |
| Is anything called a moat that is only an idea? | No. 8 of 16 mechanisms are graded `Not demonstrated`, 3 `Hypothesis`. |
| Is the bear case at bull-case depth? | Yes — 10 numbered items, several sourced to category insiders and one to a randomised controlled trial. |
| Does the recommendation state reasons not to invest? | Yes, as an explicit list of 8. |
| Is any named company claimed as an acquirer? | No. §13 analyses strategic logic only. |
| Is any economy-against-people claim present? | No — checked against the `HUMAN_COMPARISON` pattern class and the §1.4 set. |
| Was the conclusion fixed before the evidence? | No, and the strongest proof is that the study's own prior claim (9x reuse advantage) was **refuted** by its own measurement and the refutation published. |

## What the study could NOT do, stated as limits rather than omitted

1. **No global TAM.** No government agency publishes one; the only global figures are aggregators disagreeing by 5.3x.
2. **SAM and SOM are not computed** — two of three SAM factors have no evidentiary basis, and SOM at this stage is bounded by a sales cycle that has never been run.
3. **Gross margin is not computable** — the ledger records zero human review time across all entries.
4. **Five acquisition press releases were not re-verified by the publishing lane** and are excluded from the published sources list; their facts remain in the text with source class stated.
5. **A recency-weighted news index** produced several `unknown` cells that are index limits, not absences. Named individually in the sources manifest.
6. **No McKinsey figure is used anywhere** — the host was unreachable and a snippet was deliberately not promoted to evidence.

## Reproduction

- Contract, as issued 2026-08-20: `K_id sha256:f98de211802d8b86faf2e7ab7b1502b3cec2cdadaf749ff367b22497a0014636`
- Contract, **re-pinned** under the union snapshot on rebase: `K_id sha256:0bf1bed69ba88a9a4883e7d4e2060b4fe16190def0c3b2b4a8c3edff89562c53`
- Receipt, as issued: `sha256:7e1cdc4ab0e1ab52c8aa3f89e8294059361f3c46008289746cef1ffaa90a2de7`
- Receipt, re-pinned: `sha256:9744805e8e1877ca1a271b3766b970874de497141686ed0bef941e23f7acae80`
- Envelope, as issued: `sha256:920dac5847042e3e6764145810cef10f9e238d1649dce40a5f800fd0a934a19e`
- Envelope, re-pinned: `sha256:bd6edee702a8a7b6ceb2de7007da47f0bf4f6161f394ead1da622870a5547652`
- State `Unbound` by design; bundle PASS by the TALO-0019 ontology validator.
- Re-running the resolver against `origin/main` at the time of issuance reproduced all three digests
  identically. After TALO-0067 and TALO-0079 landed, the graph snapshot moved and the contract was
  re-pinned: **the only field that differs across the entire resolution is `snapshot_digest`** — proposed
  candidates, alternates, rejections, selection, closure entries, governance and policy events are
  byte-identical, so the contract selects exactly the same knowledge. Both bundles validate with
  `HIST_VALID=true`, and both are committed.
