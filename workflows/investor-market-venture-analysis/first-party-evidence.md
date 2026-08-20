# First-party evidence — Talomnia Workflow Ledger (TALO-0068 lane E)

Source: `~/talo-orch/ledger/*.jsonl` via `talo-ledger report --json`, read 2026-08-20.
This is the ONLY dataset in the investor analysis that is a measurement rather than a
citation. It is also pre-commercial: every entry is Talomnia building Talomnia.

## Aggregate

| Measure | Value | Notes |
|---|---|---|
| Accounted execution units (entries) | 284 | one per researcher / subagent / lane step |
| Tasks | 48 | |
| Distinct artefacts touched | 867 | repo-relative paths or entity ids |
| Wall time | 32.6 h | includes waits |
| Active execution time | 28.7 h | pure execution |
| Model spend | $393.12 | **token-based estimate at list prices, not invoices** |
| Human review time recorded | **0 s** | see data-quality gap below |
| Rework | 15 entries, $16.79 | **4.27 % of total cost** |

## Creation vs reuse — the claim that does NOT survive the larger sample

The published Workforce Market Research (2026-08-19, 22 entries over 4 tasks) reported
"creating a knowledge artifact cost ≈ nine times its later reuse". On the current
284-entry record that ratio does not hold:

| Measure | Value |
|---|---|
| Artefacts with ≥1 reuse | 127 of 867 (14.6 %) |
| Creation events on those artefacts | 46, $16.54 total, **$0.3595 average** |
| Reuse events on those artefacts | 160, $80.85 total, **$0.5053 average** |
| Ratio (avg creation / avg reuse) | **0.71×** |
| Reuse share of all dispositions | 160 of 1 098 (14.6 %) |

**SUPERSEDED on rework (talomnia-knowledge#7).** This section computed one estimator and
read a direction off it. On the current 354-entry snapshot the direction reverses with the
choice of population — see `reuse-method-note.md`. The correct verdict is that the
mechanism is unmeasured, not that it fails.

**Original reading, retained for the record:** on the restricted estimator a reuse event
cost more on average than a creation event, not one-ninth of it. Two caveats that matter and must travel with the number:

1. Cost attribution is an **equal split of an entry's cost across its artefacts**, an
   estimate the tool itself labels as such. An entry that reuses one artefact while doing
   expensive new work charges the whole entry to that reuse. The ratio is therefore
   attribution-sensitive and is evidence about the *accounting*, not only the economics.
2. The earlier 9× figure came from 22 entries. It was a small-sample artefact. Reporting
   it as a durable coefficient would have been wrong, which is why the Workforce research
   labelled it "a small internal sample, not a marketable coefficient".

**Consequence for the investor document:** reuse economics is graded **Not demonstrated**.
It is the central economic claim of the platform scenario, and the first-party record
does not currently support it in either direction — it neither proves the advantage nor
refutes the mechanism, because the measurement instrument (equal-split attribution)
cannot separate them. The Evidence Gate that would settle it is defined in §16.

## Data-quality gaps (stated, not hidden)

| Gap | Effect on the analysis |
|---|---|
| `human_review_time_s` is 0 across all 284 entries | The operating model involves a human operator, but the ledger records no human review time or cost. Any gross-margin statement derived from this dataset therefore **omits human cost entirely** and is an upper bound on margin, not a margin. |
| All costs are token-count × list price | Not invoices. Real spend differs with negotiated rates, caching and retries. |
| Entirely pre-commercial | Zero external paid deliveries. Nothing here is evidence of customer-accepted quality, willingness to pay, or delivery under a customer's acceptance criteria. |
| Attribution is equal-split | Per-artefact and per-capability costs are estimates, flagged as such by the tool. |

## What this dataset DOES establish

- The execution trail exists and is machine-checked: 284 entries, each with time, tokens,
  cost basis, artefacts, disposition, validation status and rework links.
- Rework is measured, not asserted: 4.27 % of cost, 15 entries.
- Cost per unit of accounted execution is small in absolute terms (~$1.38 average per
  entry), on infrastructure work of a kind Talomnia proposes to sell.

## What it does NOT establish

- Any commercial unit economics.
- Any quality level accepted by a paying customer.
- Any reuse cost advantage (see above).
- Any human-in-the-loop cost, because none is recorded.
