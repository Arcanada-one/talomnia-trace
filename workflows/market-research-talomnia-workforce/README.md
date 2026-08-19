# Workflow — Market Research: Talomnia Workforce

> **Built by Talomnia for Talomnia — pre-commercial self-use validation.**
> This directory is the public evidence trail of how the Talomnia Workforce
> market research was produced and published. The findings live on
> [talomnia.com/en/research/market-research-talomnia-workforce](https://talomnia.com/en/research/market-research-talomnia-workforce)
> (Russian: [/ru/research/…](https://talomnia.com/ru/research/market-research-talomnia-workforce));
> the production process renders at
> [/en/workflows/market-research-talomnia-workforce](https://talomnia.com/en/workflows/market-research-talomnia-workforce).
> The two pages reference each other and do not duplicate each other's data
> (customer review [#42](https://github.com/Arcanada-one/talomnia-trace/issues/42), R1-03 + R1-14).

| File | What it is |
|---|---|
| [`research-document.md`](research-document.md) | The canonical research document, v0.2.0 — ten original sections plus the v0.2.0 additions (executive summary, customer pains, sources-and-verification) and the verification-driven corrections, each named in its changelog. |
| [`sources-manifest.md`](sources-manifest.md) | The source-verification manifest: all 52 citations attempted with live fetches on 2026-08-19 — 46 resolved with a fetched supporting page, 5 real-but-fetch-blocked, 1 unresolved (removed from the text), 20 recorded discrepancies. Fabricated sources are a hard failure of the acceptance criterion; this file is the proof none were published. |

## Production trail (from the Workflow Ledger)

| # | Stage | Role | Wall time | Cost (est.) |
|---|---|---|---|---|
| 1 | context-intake | researcher | 6m 07s | $2.26 |
| 2 | desk-research: pricing benchmarks | researcher | 5m 02s | $1.85 |
| 3 | desk-research: competitors + ICP | researcher | 7m 37s | $1.96 |
| 4 | document authoring + factcheck | researcher | 12m 42s | $2.03 |
| 5 | reporting + ledger | researcher | 1m 22s | $0.33 |
| 6 | source verification for publication | researcher | 17m 19s | $1.11 |
| 7 | publication under contract | knowledge-curator | 17m 39s | $2.68 |

Steps 1–5 are the TALO-0006 production lane (2026-08-19, pre-contract era —
recorded honestly as such); steps 6–7 are the TALO-0035 publication lane,
executed under Knowledge Contract
`K_id sha256:2e2788005e9acfb319d2dcb01c031c59560fb749b726084897ae866df5868fcd`
(resolution receipt `sha256:106caa8be8eccf06d945af655e338e88756830637d2ac72a350a56cacaa55d02`),
whose embedded constraints are the review's own criteria: no fabricated
sources, publication-not-reexecution, no data duplicated between the Research
and Workflow surfaces.

## The gate that can fail

The publication is guarded by a source-manifest check: a URL published in the
research's sources list without a fetched, claim-supporting record in the
manifest turns the check red (a planted fabricated source was demonstrated
red before delivery; transcript in the delivery pull request). An empty
sources list is honest and passes — an invented citation never does.
