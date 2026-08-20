# TALO-0068 — Source Verification Manifest

Verification of every external citation published in
`site-content/research/res-investor-market-venture-talomnia.md` before publication.
Acceptance criterion: sources are real and resolvable — a fabricated source is a hard
failure; an empty list is honest.

- **Verification date: 2026-08-20 (UTC)**
- **Method:** every URL below was fetched live by the publishing lane itself (`curl -sL`,
  25s timeout, declared User-Agent), and the observed HTTP status recorded. The research
  lanes had fetched them earlier; this is an independent re-verification, not a copy of
  their claim.
- **Honesty rules applied:** no URL is listed as verified without an actual fetch by this
  lane; `429`/`403` mean the server answered and the source is reachable; only `404` and
  NXDOMAIN prove a source does not exist. A source proven absent is **removed**, not
  softened.

## Summary table

| source_key | url | outcome | supports_claim | grade_in_doc | what it supports |
|---|---|---|---|---|---|
| census-qss-2026q1 | https://www.census.gov/services/qss/qss-current.pdf | 200 | yes | GOV_STATISTIC | Method A: NAICS 5415/5416 quarterly revenue |
| census-sas-2022 | https://www2.census.gov/programs-surveys/sas/tables/time-series/sas-latest/sas-22.xlsx | 200 | yes | GOV_STATISTIC | Methods A and B-1: NAICS 54191 revenue; purchased professional & technical services by buying industry |
| census-susb-2022-receipts | https://www2.census.gov/programs-surveys/susb/tables/2022/us_6digitnaics_rcptsize_2022.xlsx | 200 | yes | GOV_STATISTIC | Buyer counts by receipts band; firms >=$10M receipts |
| bea-use-2017-detail | https://apps.bea.gov/industry/iTables%20Static%20Files/AllTablesSUP.zip | 200 | yes | GOV_STATISTIC | Method B-2: Total Intermediate use of the four detail commodities |
| agentic-definition-gap | https://softwarestrategiesblog.com/2026/02/26/roundup-of-agentic-ai-forecasts-and-market-estimates-2026/ | 200 | yes | OTHER | The ~25x embedded-vs-standalone definition gap, stated by the source as a measurement problem |
| metr-rct-2025 | https://metr.org/blog/2025-07-10-early-2025-ai-experienced-os-dev-study/ | 200 | yes | ANALYST | Randomised trial: developers 19% slower with AI tools while believing they were 20% faster |
| emergence-mirage-pmf | https://emcap.com/thoughts/mirage-product-market-fit-the-silent-killer-of-ai-native-services-companies | 200 | yes | OFFICIAL_FUND | Gross-margin thresholds for AI-native services; the misclassified-services-business failure mode |
| bessemer-state-of-ai-2025 | https://bvp.com/atlas/the-state-of-ai-2025 | 200 | yes | OFFICIAL_FUND | Supernova cohort ~$40M ARR year one at 25% gross margins |
| sequoia-services-new-software | https://www.sequoiacap.com/article/services-the-new-software/ | 200 | yes | OFFICIAL_FUND | Category thesis: services budget dwarfs tool budget |
| menlo-genai-2025 | https://menlovc.com/perspective/2025-the-state-of-generative-ai-in-the-enterprise/ | 200 | yes | OFFICIAL_FUND | Enterprise genAI spend $37B 2025; only 16% of deployments qualify as true agents |
| kpmg-fabricated-citations | https://www.cityam.com/kpmg-report-on-ai-found-riddled-with-ai-hallucinations/ | 200 | yes | REPUTABLE_MEDIA | 40 of 45 citations fabricated in a KPMG agentic-AI report |
| 11x-customer-claims | https://techcrunch.com/2025/03/24/a16z-and-benchmark-backed-11x-has-been-claiming-customers-it-doesnt-have/ | 200 | yes | REPUTABLE_MEDIA | Customer logos displayed for non-customers; ZoomInfo and Airtable on record |
| builder-ai-collapse | https://en.wikipedia.org/wiki/Builder.ai | 200 | yes | SECONDARY_DB | Human engineers behind AI-marketed delivery; insolvency |
| cognition-windsurf | https://cognition.com/blog/windsurf | 200 | yes | OFFICIAL_COMPANY | Windsurf $82M ARR at acquisition; 350+ enterprise customers |
| endava-comp | https://stockanalysis.com/stocks/dava/ | 200 | yes | SECONDARY_DB | Endava market cap and revenue, observed 2026-08-19 |
| fiverr-comp | https://stockanalysis.com/stocks/fvrr/ | 200 | yes | SECONDARY_DB | Fiverr market cap and revenue, observed 2026-08-19 |
| concentrix-comp | https://stockanalysis.com/stocks/cnxc/ | 200 | yes | SECONDARY_DB | Concentrix market cap and revenue, observed 2026-08-19 |
| innodata-comp | https://stockanalysis.com/stocks/inod/ | 200 | yes | SECONDARY_DB | Innodata market cap and revenue, observed 2026-08-19 |
| eurostat-sbs | https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Structural_business_statistics_overview | 200 | yes | GOV_STATISTIC | EU enterprise counts by size class; NACE M value added (not turnover) |
| sierra-arr | https://sierra.ai/blog/year-two-in-review | 200 | yes | OFFICIAL_COMPANY | Company-stated ARR over $150M |
| langchain-series-b | https://www.langchain.com/blog/series-b | 200 | yes | OFFICIAL_COMPANY | Series B $125M at $1.25B; LangSmith trace volume 12x YoY |
| crunchbase-h1-2026 | https://news.crunchbase.com/venture/global-startup-exits-ipo-ma-soar-ai-q2-h1-2026/ | 200 | yes | SECONDARY_DB | H1 2026 $510B; OpenAI+Anthropic $217B = 43% of H1 |

**22 of 22 published citations verified 200 by this lane on 2026-08-20.**

---

## Cited in the text but NOT re-verified by this lane — and therefore NOT in the published `sources:` list

The exit-path evidence (§13) rests on acquisition press releases that the research lanes
recorded as fetched with HTTP 200. When this lane tried to re-verify them, **its
reconstructed URLs returned 404** — the lanes read the pages, the publishing lane rebuilt
the slugs from prose and got them wrong, and the session's WebSearch budget (200/200) was
exhausted, so the canonical URLs could not be recovered.

| Fact | Lane-reported source | This lane's re-verification |
|---|---|---|
| Accenture completed the Faculty acquisition 2026-03-16; Faculty's CEO became Accenture CTO | newsroom.accenture.com (lane: 200) | reconstructed slug **404** |
| Accenture/NeuraFlash 2025-08-27, ~510 professionals | newsroom.accenture.com (lane: 200) | reconstructed slug **404** |
| AlixPartners/Artium 2026-08-04 | alixpartners.com (lane: 200) | reconstructed slug **404** |
| ServiceNow/Moveworks $2.85B, closed 2025-12-15 | newsroom.servicenow.com (lane: 200) | connection failed (000) |
| Workday/Sana ~$1.1B, 2025-09-16 | newsroom.workday.com (lane: 200) | reconstructed slug **404** |

**Disposition:** these facts remain in the document because a lane did fetch them, and they
are graded accordingly — but they are **excluded from the frontmatter `sources:` list**,
which carries only URLs this lane verified itself. A 404 on a reconstructed slug is
evidence that *the URL is wrong*, never that the transaction did not happen. Any reader
re-verifying §13 should expect to locate the canonical press releases independently.

---

## Search-tool limitation that must not be read as absence

Two research lanes fell back to `bing.com/news/search` after the WebSearch budget was
exhausted. **That index is recency-weighted:** it returns "no results" for most 2024 and
many 2025 events that certainly occurred.

> **Every "not found" produced through that channel means the index did not surface it —
> it does NOT mean the event is absent from the record.** Readers must not convert those
> gaps into negative findings.

The same applies to two further channel limits recorded by the lanes: plain `bing.com/search`
returned geo-localised (German) results that ignored query terms and is flagged unusable,
and several `news.google.com` deep links looped into a consent gate.

Specific items marked `unknown` for this reason rather than for absence of evidence:
Sierra's outcome-based pricing figures, Upwork and Fiverr take-rate percentages, the
Replit production-database deletion, the Cursor support-bot incident, the FTC "Operation AI
Comply" defendant list, and the Moffatt v. Air Canada damages figure. **All are widely
reported; none could be fetched in this session; none are asserted in the document.**

---

## Proven absent (404 / NXDOMAIN only)

Recorded by the research lanes and preserved here. These prove the URL does not exist at
that address; where the slug was constructed by a lane rather than found, that is stated,
and it proves nothing about the underlying report.

- `sierra.ai/pricing`, `sierra.ai/blog/outcome-based-pricing`, `sierra.ai/security`, `sierra.ai/trust`
- `decagon.ai/pricing`, `decagon.ai/trust`
- `cresta.com/pricing`, `cresta.com/newsroom`
- `crewai.com/enterprise`, `mercor.com/security`, `mercor.com/trust`, `mercor.com/about`
- `turing.com/security`, `turing.com/about`
- `superside.com/about`, `superside.com/newsroom`
- `abridge.com/security` (the live equivalent is the SafeBase-hosted `trust.abridge.com`)
- `11x.ai/pricing`
- `www2.census.gov/programs-surveys/susb/tables/2023/` and `/2024/` (SUSB 2023/2024 not published)
- `en.wikipedia.org/wiki/EPAM_Systems` — **anomalous**; almost certainly a real article, treated as a session fetch failure, not as absence
- Constructed-guess slugs at thebusinessresearchcompany.com, mordorintelligence.com and
  several vendor newsrooms — **explicitly NOT evidence the underlying report is absent**

## Reachable but blocked (403 / 429 / timeout) — kept, not removed

`gartner.com`, `my.idc.com`, `mckinsey.com` (host-level block from this network),
`bls.gov` web pages (worked around via the BLS public API), `sec.gov` Archives to WebFetch
(worked around via curl with an SEC-compliant UA), `tcs.com`, `businessinsider.com`,
`reuters.com`, `forbes.com`, `law.com`, `bloomberg.com`, `axios.com`, `mlq.ai` (the
MIT/NANDA "95% of pilots fail" PDF), `justice.gov`, `ftc.gov`, `canlii.org`,
`support.upwork.com`, `fiverr.com/support`.

**No McKinsey figure appears anywhere in this document.** A search snippet asserting "72%"
was available and was deliberately not entered as evidence, because the host could not be
reached to confirm it.
