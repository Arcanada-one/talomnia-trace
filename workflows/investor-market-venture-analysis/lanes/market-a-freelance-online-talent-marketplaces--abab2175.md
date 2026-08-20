Research complete. All figures below were extracted from documents I downloaded and parsed directly; every quote is copied from the fetched page body unless the row says otherwise.

## Market A — Freelance / online talent marketplaces

| market | figure | metric type | year | source org | FULL URL | source class | conf | verbatim quote (≤200 ch) | fetch outcome | definitional boundary | pub date |
|---|---|---|---|---|---|---|---|---|---|---|---|
| A | USD 787.784M | revenue (company) | FY2025 | Upwork Inc. | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000012/upwk-20251231.htm | OFFICIAL_FILING | HIGH | "Total revenue $ 787,784 $ 769,325 $ 18,459 2 %" | HTTP 200, 2,134,522 bytes, parsed | Marketplace $682,883k + Enterprise $104,901k; thousands USD | 2026-02-13 |
| A | USD 4.0B | GSV | FY2025 | Upwork Inc. | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000012/upwk-20251231.htm | OFFICIAL_FILING | HIGH | "With customers in over 180 countries, our platforms and other workforce solutions enabled $4.0 billion of GSV for the year ended December 31, 2025." | HTTP 200, parsed | 10-K: GSV = "total dollar value transacted through all Upwork platforms and other workforce solutions, including client spend for talent services" + Connects, payment processing, memberships, currency services | 2026-02-13 |
| A | USD 1.3 trillion | TAM / market opportunity — **2028 estimate, not current** | 2028E | Upwork Inc. (8-K EX-99.1) | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000005/exhibit991-upwork4q25andfu.htm | OFFICIAL_FILING | HIGH | "This is our most exciting chapter yet as we tackle the $1.3 trillion market opportunity for flexible digital knowledge work 1" | HTTP 200, 502,703 bytes, parsed | Footnote 1: "Estimated 2028 market size from Upwork Market Study, a commissioned third-party study that estimates the size of the flexible digital knowledge work market based on data from, among other sources, the Bureau of Labor Statistics, World Bank, and International Labour Organization (October 2025)." | 2026-02-09 |
| A | USD 430.9M | revenue (company) | FY2025 | Fiverr International Ltd. | https://www.sec.gov/Archives/edgar/data/1762301/000117891326000858/zk2634486.htm | OFFICIAL_FILING | HIGH | "In the years ended December 31, 2025, 2024 and 2023, our revenue was $430.9 million, $391.5 million and $361.4 million, respectively, a 10.1% and 8.3% increase" | HTTP 200, 2,888,571 bytes, parsed | $297.5M marketplace + $133.4M services | 2026-03-12 |
| A | USD 1,073.0M | GMV | FY2025 | Fiverr International Ltd. | https://www.sec.gov/Archives/edgar/data/1762301/000117891326000858/zk2634486.htm | OFFICIAL_FILING | HIGH | "our marketplace enabled a total transaction value, or marketplace GMV, of $1,073.0 million with an annual active buyer base of 3.1 million." | HTTP 200, parsed | 20-F: GMV = "the total value of transactions ordered through our marketplace, excluding value added tax, goods and services tax, service chargebacks and refunds" | 2026-03-12 |
| A | USD 8.35B | market size | 2025 | The Business Research Company | https://www.thebusinessresearchcompany.com/report/freelance-platforms-global-market-report | AGGREGATOR | LOW | "It will grow from $8.35 billion in 2025 to $9.91 billion in 2026 at a compound annual growth rate (CAGR) of 18.6%." | HTTP 200, 234,772 bytes, parsed | "the freelance platforms market includes revenues earned by companies by providing skilled freelancers with the right work, top professionals with on-demand hiring services, and others" — **platform revenue, not GSV** | 2026-07-30 |
| A | USD 20.12B | forecast-year value | 2030 | The Business Research Company | https://www.thebusinessresearchcompany.com/report/freelance-platforms-global-market-report | AGGREGATOR | LOW | "It will grow to $20.12 billion in 2030 at a compound annual growth rate (CAGR) of 19.4%." | HTTP 200, parsed | as above | 2026-07-30 |

**Negative finding (verified, not assumed):** the Upwork FY2025 10-K contains **zero** occurrences of "trillion", "addressable" or "TAM" (regex count on the full parsed 440,551-char text). EDGAR full-text search across all Upwork filings (CIK 0001627475) returns 16 hits for "trillion" and **0 hits for "$10 trillion"** (`https://efts.sec.gov/LATEST/search-index?q=%22%2410+trillion%22&ciks=0001627475`, HTTP 200). The "$10 trillion global knowledge work" figure in the brief is **not** substantiated in Upwork's SEC filings.

## Market B — Expert networks

| market | figure | metric type | year | source org | FULL URL | source class | conf | verbatim quote (≤200 ch) | fetch outcome | definitional boundary | pub date |
|---|---|---|---|---|---|---|---|---|---|---|---|
| B | USD 1.5B | market size (industry revenues) | 2020 | Gerson Lehrman Group (S-1) | https://www.sec.gov/Archives/edgar/data/1661123/000119312521301055/d161028ds1.htm | OFFICIAL_FILING | HIGH | "According to our analysis, we estimate the industry topped $1.5 billion in revenues and grew double-digits in 2020 despite the effects of COVID-19." | HTTP 200, 2,435,873 bytes, parsed | GLG's term is the "Insight Network market, which provides users access to industry experts" | 2021-10-18 (S-1 withdrawn via Form RW 2022-03-25) |
| B | ~15% CAGR 2020–2025; 17% p.a. since 2012 | CAGR | 2020–2025 | Gerson Lehrman Group (S-1) | https://www.sec.gov/Archives/edgar/data/1661123/000119312521301055/d161028ds1.htm | OFFICIAL_FILING | HIGH | "We estimate the Insight Network market has consistently grown historically at 5.5x to 8.0x GDP growth, achieving 17% growth per annum since 2012 and we estimate that it will continue to grow at a[round 15% CAGR from 2020 to 2025]" | HTTP 200, parsed | Insight Network market | 2021-10-18 |
| B | USD 572.157M (2019) / USD 589.139M (2020) | revenue (company) | 2019, 2020 | Gerson Lehrman Group | https://www.sec.gov/Archives/edgar/data/1661123/000119312521301055/d161028ds1.htm | OFFICIAL_FILING | HIGH | "Revenue $ 572,157 $ 589,139 $ 282,938 $ 322,271" | HTTP 200, parsed | Columns = FY2019, FY2020, 6M-2020, 6M-2021; thousands USD | 2021-10-18 |
| B | GLG 2020 revenue = 2.3× AlphaSights | relative revenue | 2020 | Gerson Lehrman Group | https://www.sec.gov/Archives/edgar/data/1661123/000119312521301055/d161028ds1.htm | OFFICIAL_FILING | MEDIUM | "According to our analysis, GLG's 2020 Revenues were more than 2.3 times larger than our nearest competitor, AlphaSights, based on their reported 2020 revenue." | HTTP 200, parsed | Named competitors: AlphaSights Ltd., Guidepoint Global LLC, Third Bridge Group Ltd | 2021-10-18 |
| B | ~USD 3B | market size | 2025 | Inex One | https://inex.one/blog/expert-network-market-size | OTHER | MEDIUM | "The expert market network hit ~$3Bn in 2025, growing ~12% annually (2023-25) after a quieter stretch (2021-23)." | HTTP 200, parsed | Global expert-network industry revenues | 2026-02-09 |
| B | 11% growth in 2025; ~16% CAGR over decade | CAGR / growth | 2025; 2012–2024 | Inex One | https://inex.one/blog/expert-network-market-size | OTHER | MEDIUM | "The industry has seen around 16% compound annual growth over the last decade." / "By 2025, the industry built momentum and grew by a healthy 11%." | HTTP 200, parsed | Chart labelled "Expert network industry global revenues 2012-24" | 2026-02-09 |
| B | ~11,200 client firms | client-base count | undated (art. 2025/26) | Inex One | https://inex.one/blog/expert-networks-client-mapping-how-we-sized-market | OTHER | LOW | "We estimate that some 11,200 firms within finance, consulting, and strategy use Expert Networks." | HTTP 200, parsed | Top-down + bottom-up dual sizing; corporates = ~45% of clients by number | unknown (no date exposed on page) |
| B | >USD 2.5B | market size | 2024 | Integrity Research Associates (reporting Inex One) | https://www.integrity-research.com/?s=expert+network+market+size | OTHER | LOW | "Expert Network Industry Reaches $2.5 Billion as AI and Consolidation Reshape Market 06/03/2025 According to an industry study conducted by expert network marketplace Inex One, the expert network industry achieved a significant milestone in 2024, with global revenues surpassing $2.5 billion" | HTTP 200 on the **search-listing page** (quote is from the listing excerpt, not the article body). The article itself, https://www.integrity-research.com/expert-network-industry-reaches-2-5-billion-as-ai-and-consolidation-reshape-market/, returned HTTP 200 but is paywalled — `<title>Premium Article - sign in or subscribe</title>` | Global expert-network revenues | 2025-06-03 |

## Market C — Research-as-a-service / market research industry

| market | figure | metric type | year | source org | FULL URL | source class | conf | verbatim quote (≤200 ch) | fetch outcome | definitional boundary | pub date |
|---|---|---|---|---|---|---|---|---|---|---|---|
| C | USD 42.5B | market size | 2019 | ESOMAR, quoted inside GLG's S-1 | https://www.sec.gov/Archives/edgar/data/1661123/000119312521301055/d161028ds1.htm | OFFICIAL_FILING (citing OTHER/ESOMAR) | HIGH (for the citation) | "We also estimate that the $42.5 billion market research industry (as of 2019) has grown at approximately 3.5% per year since 2017, according to ESOMAR" | HTTP 200, parsed | "market research industry", per ESOMAR | 2021-10-18 |
| C | USD 13.4B | market size (adjacent) | 2019 | ESOMAR, quoted inside GLG's S-1 | https://www.sec.gov/Archives/edgar/data/1661123/000119312521301055/d161028ds1.htm | OFFICIAL_FILING (citing OTHER/ESOMAR) | HIGH (for the citation) | "and the $13.4 billion IDA market (as of 2019) has grown approximately 11% per year since 2017, according to ESOMAR." | HTTP 200, parsed | IDA = "Information, Data and Analytics" market — GLG treats it as **separate from** market research | 2021-10-18 |
| C | USD 93.37B | market size | 2025 | The Business Research Company | https://www.thebusinessresearchcompany.com/report/market-research-services-global-market-report | AGGREGATOR | LOW | "It will grow from $93.37 billion in 2025 to $96.77 billion in 2026 at a compound annual growth rate (CAGR) of 3.6%." | HTTP 200, 355,442 bytes, parsed | "revenues earned by entities by providing services such as primary research, secondary research, qualitative and quantitative research, branding research, and customer research" | 2026-07-31 |
| C | USD 116.02B | forecast-year value | 2030 | The Business Research Company | https://www.thebusinessresearchcompany.com/report/market-research-services-global-market-report | AGGREGATOR | LOW | "It will grow to $116.02 billion in 2030 at a compound annual growth rate (CAGR) of 4.6%." | HTTP 200, parsed | as above | 2026-07-31 |
| C | USD 6.5B | revenue (company) | FY2025 | Gartner, Inc. | https://www.sec.gov/Archives/edgar/data/749251/000074925126000112/it-20251231.htm | OFFICIAL_FILING | HIGH | "We had total revenues of $6.5 billion in 2025, an increase of 4% compared to 2024 on a reported basis and 3% excluding the foreign currency impact." | HTTP 200, 2,239,601 bytes, parsed | All segments (Insights, Conferences, Consulting) | 2026-02-12 |
| C | USD 5.1B | revenue (segment) | FY2025 | Gartner, Inc. | https://www.sec.gov/Archives/edgar/data/749251/000074925126000112/it-20251231.htm | OFFICIAL_FILING | HIGH | "Insights revenues increased to $5.1 billion in 2025, an increase of 5% compared to 2024 on a reported basis and 4% excluding the f[oreign currency impact]" | HTTP 200, parsed | Insights = subscription research; contract value $5.2B at 2025-12-31; Consulting ≈9% of total revenues | 2026-02-12 |

**Sources disagree materially (rule 4, reported both, no winner picked):** for Market C in 2019–2025, ESOMAR-via-GLG puts the market research industry at **$42.5B (2019)** growing ~3.5%/yr — which extrapolates far below TBRC's **$93.37B (2025)**. The gap is definitional, not arithmetic: TBRC's boundary explicitly includes "the value of related goods sold by the service provider or included within the service offering", and GLG's filing treats the **$13.4B IDA market as a separate adjacent market** rather than part of the $42.5B. Both rows stand as-is.

## (1) Proven absent — HTTP 404 / NXDOMAIN

- https://esomar.org/knowledge-center/global-market-research-report — 404
- https://inex.one/expert-networks — 404
- https://www.greenbook.org/insights/grit-report — 404
- https://www.mordorintelligence.com/industry-reports/global-market-research-market — 404
- https://www.thebusinessresearchcompany.com/report/market-research-global-market-report — 404
- https://www.thebusinessresearchcompany.com/report/expert-network-global-market-report — 404
- https://www.thebusinessresearchcompany.com/report/expert-network-services-global-market-report — 404
- https://www.thebusinessresearchcompany.com/report/online-gig-economy-global-market-report — 404
- https://www.gminsights.com/industry-analysis/market-research-services-market — 404
- https://www.ipsos.com/en/ipsos-2025-annual-results — 404
- https://www.worldbank.org/en/topic/digitaldevelopment/publication/working-without-borders-the-promise-and-peril-of-online-gig-work — 404
- https://www.integrity-research.com/category/expert-networks/ — 404
- https://api.census.gov/data/2023/servicesannual/?get=…&NAICS2017=54191 — 404 (dataset not in the Census API catalogue; confirmed by enumerating https://api.census.gov/data.json, HTTP 200, 5,196,657 bytes — no `servicesannual` dataset exists)
- https://api.census.gov/data/2022/servicesannual/?get=…&NAICS2017=54191 — 404
- https://data.sec.gov/api/xbrl/companyconcept/CIK0001627475/us-gaap/Revenues.json — 404 (`NoSuchKey`)
- https://esomar.org/publications/global-market-research-2025/_payload.json — 404
- https://esomar.org/api/publications/global-market-research-2025 — 404

**Reachable but no figure obtainable** (server answered; kept out of the tables because I have no verified number, and I will not invent one):

- https://www.bls.gov/news.release/conemp.nr0.htm and /conemp.htm — **403** via both curl and WebFetch. No BLS independent-contractor figure obtained.
- https://www.grandviewresearch.com/industry-analysis/market-research-services-market-report and …/freelance-platforms-market-report — **403** via both curl and WebFetch.
- https://www.imarcgroup.com/market-research-services-market, /freelance-platforms-market — **403**
- https://www.businessresearchinsights.com/market-reports/{market-research-services-market-119083, freelance-platforms-market-115700, expert-network-market-119481} — **403**
- https://www.fortunebusinessinsights.com/market-research-services-market-108845 — **403**
- https://www.verifiedmarketreports.com/product/expert-network-market/ — **500**
- https://www.statista.com/statistics/242477/global-revenue-of-market-research-companies/ — **302 redirect loop** (curl exit 47, >50 redirects)
- https://www.ipsos.com/en/2025-results-line-guidance-launch-horizons-strategic-plan — **403** via both curl and WebFetch. No Ipsos FY2025 revenue obtained.
- https://esomar.org/publications/global-market-research-2025 — **HTTP 200** but Next.js RSC shell; decoding the `self.__next_f` payload (8,838 chars) yields only metadata: *"Esomar's annual Global Market Research report is the only global analysis on the size and characteristics of the insights industry"*. **No turnover figure is exposed publicly — the GMR is a paid report.**
- https://www.precedenceresearch.com/market-research-services-market — HTTP 200 but resolves to the site homepage (`<title>Precedence Research - Advisory, Research & Reports</title>`); the named report content is not on the page.
- Third Bridge Group Limited (UK 06263699) full accounts to 31 Dec 2024: https://find-and-update.company-information.service.gov.uk/company/06263699/filing-history/MzQ3NTE1MDU5MmFkaXF6a2N4/document?format=pdf&download=0 — **HTTP 200, 1,513,619-byte PDF, 43 pages**, but it is an image-only scan (`pdffonts` returns zero embedded fonts; `pdftotext -layout` produced 0 lines) and no OCR is available in this environment. `format=xhtml`/`xml` return HTTP 500. **No Third Bridge turnover figure extracted.**

## (2) Could not corroborate

**Market B (expert networks) is the corroboration risk, and it is worse than "aggregator-only".** There is exactly **one** non-aggregator, currently-updated source of a market-size number: **Inex One**. The apparent second source, Integrity Research Associates, is **not independent** — its own text attributes the number to Inex One: *"According to an industry study conducted by expert network marketplace Inex One…"*. So the $2.5B (2024) and ~$3B (2025) figures are one source counted twice.

The only genuinely independent non-aggregator datapoint for Market B is **five years stale and from a withdrawn IPO**: GLG's 2021 S-1 estimate of **$1.5B (2020)**, from a registration statement withdrawn via Form RW on 2022-03-25. Note this is *broadly consistent* with Inex One's series (GLG $1.5B in 2020 → Inex One $2.5B in 2024 → ~$3B in 2025 implies ~15%/yr, matching GLG's own "around 15% CAGR from 2020 to 2025"), but consistency between a 2021 forecast and a later estimate is not independent confirmation of the level.

I found **no aggregator report for expert networks at all** that was retrievable (all four candidate URLs 404'd or 403'd/500'd). Markets A and C each have both official-filing and aggregator evidence; Market B has neither an accessible aggregator nor a second independent tracker.

Also uncorroborated: **no GOV_STATISTIC row exists in any of the three tables.** BLS was 403, the Census Service Annual Survey is absent from the Census API entirely, the Economic Census API now requires a key (HTTP 302 → "Missing Key"), and the World Bank gig-work publication URL 404'd. The only government data reaching the evidence base does so *indirectly*, through Upwork's commissioned study footnote (BLS, World Bank, ILO) — i.e. laundered through a vendor-commissioned model, not read from the statistical agency.

## (3) Definition drift

**These three markets are not disjoint, and the primary sources say so explicitly.**

GLG's S-1 treats all three as one contiguous space it intends to move across, naming market research as an *adjacent* market it is entering:

> "Our growth is dependent upon the overall growth of the Insight Network market, which is our core market, as well as the adjacent Research and IDA markets."

> "GLG is therefore well positioned, and is investing, to accelerate its share of the $42.5 billion market research industry (as of 2019)… Because the Research market is a massive, natural extension of our core market, we have consciously built, and continue to build, methodological capabilities around our proposition"

So B→C leakage is a stated strategy, not an analyst's inference. Adding B's ~$3B to C's ~$93B therefore risks double-counting the expert-network revenue already booked as B2B research spend.

Inex One reports the same drift from the other direction — expert networks absorbing market-research and survey-sampling work:

> "B2B Survey Sampling: ENs are increasingly being used for reliable, high-quality B2B surveys leveraging their expertise to source professionals and right decision makers for all niche requirements."

> "Expert networks are no longer a luxury for high-stakes deals in high finance; their services are increasingly considered table stakes when running any serious B2B market research."

And on B→"consulting/professional services": Inex One states consulting is the demand engine — *"Consulting remains the spending engine (~50% industry spend)"* — meaning roughly half of Market B is an input cost inside consulting engagements, i.e. it is already embedded in professional-services revenue elsewhere.

**A vs. C overlap** runs through GLG's framing of its own buyers as knowledge professionals, the same population Upwork's TAM counts as supply:

> (GLG) "Since 1983, knowledge professionals have grown from 29 million to 64 million in the U.S. (as of June 2021) according to St. Louis Fed data, and we estimate the total to be around 300 million globally"

> (Upwork) "$1.3 trillion market opportunity for flexible digital knowledge work"

**The most dangerous drift for a sizing model is inside Market A itself — three incompatible units are in play:**

1. **Client spend / GSV** — Upwork's $4.0B GSV and Fiverr's $1,073.0M GMV.
2. **Platform revenue** — Upwork's $787.784M and Fiverr's $430.9M, i.e. take-rate on the above (Fiverr's 20-F: *"'Marketplace take rate' for a given period means marketplace revenue for such period divided by GMV"*).
3. **Total addressable work spend** — Upwork's $1.3 trillion.

TBRC's $8.35B (2025) "freelance platforms market" is measured on unit (2), *platform revenue* — its stated boundary is *"revenues earned by companies by providing skilled freelancers with the right work"*. Upwork + Fiverr revenue alone ($1.219B) is ~15% of that $8.35B, which is plausible; but Upwork's $1.3T is unit (3) and sits **~156× above the entire aggregator market**. The two numbers are not competing estimates of the same quantity and must never be placed on the same axis. Compounding this, the $1.3T is a **2028 forecast**, not a 2025 figure, and its own footnote concedes it is *"a commissioned third-party study"* — a vendor-commissioned estimate of its own opportunity, not an independent measurement.

Finally, GLG separates a fourth adjacent category, **IDA (Information, Data and Analytics), at $13.4B (2019)**, from market research — so "research-as-a-service" boundaries differ even between two figures attributed to the same body (ESOMAR) in the same sentence of the same filing.