# Workflow — Investor Market & Venture Opportunity Analysis

> **Built by Talomnia for Talomnia — pre-commercial self-use validation.**
> The findings live on
> [talomnia.com/en/research/investor-market-venture-talomnia](https://talomnia.com/en/research/investor-market-venture-talomnia)
> (Russian: [/ru/research/…](https://talomnia.com/ru/research/investor-market-venture-talomnia));
> the production process renders at
> [/en/workflows/investor-market-venture-analysis](https://talomnia.com/en/workflows/investor-market-venture-analysis).
> This is a **separate** artifact from the Talomnia Workforce Market Research, which is
> preserved unchanged — the two answer different questions and both remain published
> (customer review [#49](https://github.com/Arcanada-one/talomnia-trace/issues/49)).

| File | What it is |
|---|---|
| [`sizing-model.md`](sizing-model.md) | TAM/SAM/SOM by two independent method families, with formulas, inputs, sources, assumptions, data dates, confidence and sensitivity per calculation. SAM and SOM are deliberately **not computed** — the reasons are the finding. |
| [`defensibility-and-thesis.md`](defensibility-and-thesis.md) | Moat graded Current/Emerging/Hypothesis/Not demonstrated, the three venture-scale scenarios, the bear case, Bull/Base/Bear, exit paths, evidence gates and the investor recommendation. |
| [`first-party-evidence.md`](first-party-evidence.md) | The only measured rather than cited dataset: the Workflow Ledger. Contains the study's load-bearing negative finding. |
| [`sources-manifest.md`](sources-manifest.md) | Every published citation fetched live by the publishing lane with its HTTP status; the not-re-verified set named; the recency-weighted-index caveat recorded so `not found` is never read as `absent`. |
| [`validation-report.md`](validation-report.md) | Nine gates that fired during production, ten adversarial checks against the document, and six stated limits. |
| [`agent-manifest.json`](agent-manifest.json) | Measured telemetry for all 36 agents: wall, input/output/cache tokens, cost, deliverable size. |
| [`lanes/`](lanes) | All 36 agent deliverables as produced, 1.4MB of raw evidence. |

## Production trail (from the Workflow Ledger)

| # | Stage | Role | Wall time | Cost (measured) |
|---|---|---|---|---|
| 1 | contract assembly | resolver-operator | 51m 00s | $6.65 |
| 2 | first-party measurement | evidence-auditor | 3m 40s | $0.42 |
| 3 | desk research — top-down sizing | researcher | 29m 57s | $18.69 |
| 4 | desk research — bottom-up sizing | researcher | 31m 40s | $13.61 |
| 5 | desk research — funding and comparables | researcher | 1h 16m 07s | $53.02 |
| 6 | desk research — matrix and exits | researcher | 44m 51s | $54.14 |
| 7 | research fan-out (30 sub-researchers) | researcher | 7h 56m 38s | $250.80 |
| 8 | telemetry correction | evidence-auditor | 7m 24s | $0.50 |

**Total: 12.02 hours wall, $397.83, across 40 accounted execution units — 36 of them agents.**

Costs are **measured**, not estimated: read from each agent's own transcript (per-message
input, output, cache-write and cache-read tokens) and priced at list rates with the cache
tiers separately. Wall times are computed from each agent's first and last message
timestamps.

## The gate that can fail, and did

Three gates refused work during this task and changed the output rather than being worked
around:

1. The **ledger validator** rejected an invented duration three separate times, including
   inside the entry written to correct the first one.
2. The **honesty gate** rejected the document's own moat section for using a banned
   "N times cheaper" construction — *while the sentence was refuting that very claim.*
3. The **research-sections projection** rejected a table with an empty header cell,
   because a missing language side is a publication defect by design.

A fourth, the **workflow status-honesty gate**, did not fire: all 40 ledger entries are
`passed` and none pending. The status is nevertheless `in_progress`, because the scope
declared by the contract includes publication and the Investor Room link, and until those
land the work inside the declared scope is unfinished. **The status is understated on the
merits, not because a gate forced it.**

## Accounting note worth reading

The production contour turned out to be **nine times wider than assumed at launch**: four
research lanes spawned children, which spawned further children, ending at 36 agents. They
were discovered by enumerating the session's agent transcripts, not by completion
notifications — notifications fire only for agents that stop with no live children, and
several agents here never surfaced one. The notification token field also excludes cache
reads, which understated cost by 2.0x–7.2x on the five entries first booked from it.
Both defects are recorded in the ledger with their corrections.

## Sanitization

The raw lane files under [`lanes/`](lanes) were passed through the repository's §3.3
sanitization gate before publication. Four third-party contact email addresses and two IP
addresses (an Akamai edge address recorded while diagnosing a blocked host) were redacted
in place and marked as such. No market figure, source URL, HTTP status or finding was
altered — only the identifiers the gate forbids publishing. The gate is green on the whole
working tree.
