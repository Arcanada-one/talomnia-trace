All four lanes are in and cross-validated. Raw evidence below.

---

# TALO-0068 — Lane B: bottom-up sizing inputs (evidence only)

**Compiled 2026-08-20.** Every cited URL was fetched; observed status is stated. `403`/`429`/timeout = server answered or was reachable but blocked — **kept**, not treated as absent. Only `404`/NXDOMAIN appear in "proven absent". Computed figures are marked **[computed]** with inputs shown. Nothing here is a market size — these are inputs.

Retained raw source files (this machine): `/tmp/susb_rcpt.xlsx`, `/tmp/sas22.xlsx`, `/tmp/sas_t1.xlsx`, `/tmp/sup.zip`, `/tmp/bea/Use_Tables_Supply-Use_Framework_1997-2023_Summary.xlsx`, `/tmp/bea/Use_SUT_Framework_2017_DET.xlsx`.

---

## A. ENTITY COUNTS

### A1 — US employer firms by employment size (source's own bands)

Source: **US Census SUSB 2022**, `us_state_naics_detailedsizes_2022.xlsx` + `us_naicssector_large_emplsize_2022.xlsx`. Class **GOV_STATISTIC**. Fetch **OK**. Boundary: **firms** (enterprises = all establishments under common ownership), **employer only**. Reference year **2022** (release date 4/10/2025). Frame: administrative universe, not a sample — "2022 County Business Patterns and Economic Census". Confidence **high**.
URLs: `https://www2.census.gov/programs-surveys/susb/tables/2022/us_state_naics_detailedsizes_2022.xlsx` · `.../us_naicssector_large_emplsize_2022.xlsx`

| Band | Firms | Verbatim |
|---|---|---|
| Total | 6,395,635 | `01: Total \| 6395635` |
| <5 | 4,029,041 | `02: <5 employees \| 4029041` |
| 5–9 | 1,034,135 | `03: 5-9 employees \| 1034135` |
| 10–14 | 428,589 | `04:10-14 employees \| 428589` |
| 15–19 | 228,328 | `05: 15-19 employees \| 228328` |
| <20 | 5,720,093 | `06: <20 employees \| 5720093` |
| 20–24 / 25–29 / 30–34 / 35–39 / 40–49 | 142,888 / 95,073 / 68,222 / 50,819 / 70,770 | `07:…142888` … `11:…70770` |
| 50–74 / 75–99 | 89,207 / 44,181 | `12: 50-74 employees \| 89207` |
| 100–149 / 150–199 / 200–299 / 300–399 / 400–499 | 40,744 / 19,444 / 18,798 / 8,904 / 5,451 | `14:…40744` … `18:…5451` |
| <500 | 6,374,594 | `19: <500 employees \| 6374594` |
| 500–749 … 20,000+ | 6,974 / 3,426 / 3,412 / 1,777 / 1,091 / 2,099 / 1,124 / 592 / 546 | `03: 500-749 employees \| 6974` … `11: 20,000+ employees \| 546` |
| Establishments, total | 8,298,562 | — |
| Employment, total | 135,748,407 | — |

**≥50 employees = 247,770 [computed]** (89,207+44,181+40,744+19,444+18,798+8,904+5,451+21,041). No official table publishes this cutoff.
**500+ employees = 21,041**, published directly by SBA Office of Advocacy, *FAQs About Small Business*, Feb 2026 — `https://advocacy.sba.gov/wp-content/uploads/2026/02/FINAL_FAQsAboutSmallBusiness_2026_012826.pdf` — WebFetch **403**, curl **200** (1,075,526 bytes) + pdftotext. Verbatim: "There are 21,041 large businesses." Class GOV_STATISTIC.

**Establishment cross-check, County Business Patterns 2023** (`https://www2.census.gov/programs-surveys/cbp/datasets/2023/cbp23us.zip`, fetch **OK**), boundary **establishments** of employer businesses, ref year 2023: total 8,361,342; `n<5` 4,639,650; `n5_9` 1,465,355; `n10_19` 1,047,307; `n20_49` 759,342; `n50_99` 249,344; `n100_249` 138,356; `n250_499` 38,279; `n500_999` 14,239; `n1000` 9,470; employment 139,831,742. Bands sum exactly to the total.

### A2 — US employer firms by RECEIPTS size (answers "how many firms above $10M revenue")

Source: **US Census SUSB 2022**, `us_6digitnaics_rcptsize_2022.xlsx`. Class **GOV_STATISTIC**. URL `https://www2.census.gov/programs-surveys/susb/tables/2022/us_6digitnaics_rcptsize_2022.xlsx` — fetch **OK** (2,051,346 bytes, parsed locally). Header verbatim: `Enterprise Size ($1,000)` — bands are in **thousands of dollars**. Ref year **2022**. Confidence **high**. *(Retrieved and parsed independently by two agents; identical values.)*

| Band ($000) | Firms | Receipts ($000) | Avg receipts/firm **[computed]** |
|---|---|---|---|
| Total | 6,395,635 | 50,848,996,830 | $7.95M |
| <100 | 1,097,913 | 55,024,886 | $0.05M |
| 100–499 | 2,348,197 | 604,756,701 | $0.26M |
| 500–999 | 1,020,244 | 727,469,860 | $0.71M |
| 1,000–2,499 | 987,743 | 1,546,764,969 | $1.57M |
| 2,500–4,999 | 421,142 | 1,467,255,380 | $3.48M |
| 5,000–7,499 | 155,200 | 942,538,815 | $6.07M |
| 7,500–9,999 | 80,189 | 692,030,225 | $8.63M |
| 10,000–14,999 | 85,220 | 1,034,618,263 | $12.14M |
| 15,000–19,999 | 44,621 | 768,527,171 | $17.22M |
| 20,000–24,999 | 27,826 | 619,509,412 | $22.26M |
| 25,000–29,999 | 18,783 | 512,434,371 | $27.28M |
| 30,000–34,999 | 14,064 | 453,669,531 | $32.26M |
| 35,000–39,999 | 10,714 | 400,093,380 | $37.34M |
| 40,000–49,999 | 15,221 | 678,479,802 | $44.58M |
| 50,000–74,999 | 22,060 | 1,341,160,633 | $60.80M |
| 75,000–99,999 | 11,078 | 953,967,757 | $86.11M |
| 100,000+ | 35,420 | 38,050,695,674 | $1,074.27M |

**Thresholds [computed]** — no official row states these cutoffs:

| Threshold | All industries | NAICS 54 | NAICS 5415 | NAICS 5416 | NAICS 541511 | NAICS 541611 | NAICS 541910 |
|---|---|---|---|---|---|---|---|
| Total firms | 6,395,635 | 872,305 | 127,147 | 204,867 | 62,773 | 93,514 | 3,747 |
| ≥$10M receipts | **285,007** | 28,581 | 7,145 | 5,681 | 4,033 | 2,590 | 310 |
| ≥$25M | 127,340 | 13,423 | 3,568 | 2,883 | 2,059 | 1,312 | 189 |
| ≥$50M | 68,558 | 8,054 | 2,237 | 1,850 | 1,298 | 883 | 141 |
| ≥$100M | 35,420 | 5,036 | 1,437 | 1,227 | 850 | 602 | 94 |

### A3 — US totals incl. nonemployers

| Figure | Value | Boundary | Year | Source | Class | Fetch | Verbatim |
|---|---|---|---|---|---|---|---|
| Employer firms | 6,395,635 | firms, employer | 2022 | SBA Advocacy FAQ Feb 2026 | GOV_STATISTIC | WebFetch **403**, curl **200** | "17.7 percent, or 6,395,635 firms, have paid employees (termed "employer firms")" |
| Nonemployer firms | 29,811,495 | firms, no employees | 2022 | same | GOV_STATISTIC | 403/200 | "82.3 percent, or 29,811,495 firms, have no employees" |
| All small businesses | 36,207,130 | <500 emp incl. nonemployers | 2022 | same | GOV_STATISTIC | 403/200 | "There are 36,207,130 small businesses in the U.S." |
| Nonemployer **establishments** | 30,427,808 | establishments | 2023 | Census NES `nonemp23us.zip` | GOV_STATISTIC | **OK** | row `"00","00","-","001",,30427808,"G",,1752978019` |
| Nonemployer receipts | $1,752,978,019 thousand | — | 2023 | same | GOV_STATISTIC | **OK** | same row |

**Disagreement (unresolved):** 29,811,495 nonemployer *firms* (2022, SBA/NES) vs 30,427,808 nonemployer *establishments* (2023, Census NES) — different year and different unit. Also SUSB 2022 establishments 8,298,562 vs CBP 2023 establishments 8,361,342.

### A4 — EU enterprises by size class

Source: **Eurostat SBS**, dataset `sbs_sc_ovw` via the dissemination API. Class **GOV_STATISTIC**. Fetch **OK** (queried twice, identical). Boundary: **enterprises** (not local units); NACE aggregate `B-S_X_O_S94` = "Industry, construction and market services (except public administration and defence; compulsory social security; activities of membership organisations)"; geo `EU27_2020`; indicator `ENT_NR` = "Enterprises - number". Register-based, not a sample.
URL: `https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/sbs_sc_ovw?format=JSON&geo=EU27_2020&indic_sbs=ENT_NR&time=2023&nace_r2=B-S_X_O_S94&lang=EN`

| Size class | 2023 | 2024 (provisional, "last updated 10 March 2026") |
|---|---|---|
| Total | 33,065,522 | 33,462,377 |
| 0–9 | 31,190,636 | 31,586,889 |
| 10–19 | 1,023,841 | 1,020,383 |
| 20–49 | 547,973 | 549,564 |
| 50–249 | 248,817 | 250,670 |
| 250+ | 54,256 | 54,871 |
| 10–49 **[computed]** | 1,571,814 | 1,569,947 |
| 50+ **[computed]** | 303,073 | 305,541 |

Narrative corroboration, Eurostat Statistics Explained "Structural business statistics overview" (fetch **OK**): "The overwhelming majority (99.8%) of enterprises active within the EU's business economy in 2023 were micro, small and medium-sized enterprises (SMEs) – some 33.0 million". Eurostat news `ddn-20251013-2` (fetch **OK**): "In 2023, there were around 33.1 million enterprises in the EU, employing 162.2 million people."

**Caveat flagged by the collecting agent:** `B-S_X_O_S94` **includes NACE K** (financial and insurance — K64/K65/K66 appear in the returned code list), so this is **not** a strict "non-financial business economy" total. **Disagreement:** European Commission SME Performance Review landing page (fetch **OK**) says "The EU's 34 million SMEs demonstrated solid growth in 2025" with no scope definition stated — vs Eurostat's 33.0m for 2023.

### A5 — UK business population

**DBT Business population estimates 2025** (whole population incl. unregistered). Class **GOV_STATISTIC**. URL `https://www.gov.uk/government/statistics/business-population-estimates-2025/business-population-estimates-for-the-uk-and-regions-2025-statistical-release` — fetch **OK**. Boundary: private sector, registered + unregistered; modelled estimate (IDBR + Labour Force Survey); **n not stated**. Reference: **start of 2025**.

| Band | Businesses | Verbatim |
|---|---|---|
| Total | 5.7 million | "The number of private sector businesses in the United Kingdom (UK) at the start of 2025 was 5.7 million" |
| No employees | 4,272,535 | Table C |
| 1–9 | 1,150,875 | Table C |
| 10–49 | 220,085 | Table C |
| 50–249 | 38,435 | "38,435 businesses were medium-sized (50 to 249 employees)" |
| 250+ | 8,335 | "8,335 businesses were large (250 or more employees)" |
| Employers / non-employers | 1.4m (25%) / 4.3m (75%) | "1.4 million (25%) businesses had employees and 4.3 million (75%) did not employ anyone aside from the owners" |
| Registered / unregistered | 2.6m (46%) / 3.0m (54%) | "3.0 million businesses (54%) traded without being registered for VAT or PAYE" |

**ONS/IDBR (VAT/PAYE-registered enterprises only)**, Nomis `NM_142_1`, snapshot 14 March 2025, fetch **OK**: Total 2,734,615; 0–4 2,137,205; 5–9 300,645; 10–19 156,590; 20–49 84,595; 50–99 29,335; 100–249 14,835; 250–499 5,485; 500–999 2,900; 1000+ 3,030. Local units (contrast, `NM_141_1`): 3,180,620. ONS bulletin verbatim: "There were 2.73 million Value Added Tax (VAT) and/or Pay As You Earn (PAYE) businesses in the UK as of March 2025".

**UK enterprises by turnover band**, Nomis `NM_199_1`, fetch **OK** — turnover reference period is **FY2023-24** per the ONS bulletin ("based on VAT returns for a 12-month period. For 2025, these relate to a 12-month period covering the financial year 2023 to 2024"):

| Turnover (£000) | 0–49 | 50–99 | 100–249 | 250–499 | 500–999 | 1,000–1,999 | 2,000–4,999 | 5,000–9,999 | 10,000–49,999 | 50,000+ |
|---|---|---|---|---|---|---|---|---|---|---|
| Enterprises | 387,285 | 525,225 | 873,705 | 390,055 | 244,225 | 137,320 | 95,475 | 36,775 | 33,525 | 11,020 |

**≥£10m turnover = 44,545 [computed]**. **≥50 employees = 55,585 [computed]**; **≥250 = 11,415 [computed]**.

**Disagreement (unresolved):** 250+ employees — DBT BPE 8,335 vs ONS IDBR 11,415. 50–249 — 38,435 vs 44,170. 10–49 — 220,085 vs 241,185. Different units and methods, but the divergence in the *upper* bands (where unregistered businesses should be irrelevant) was not reconciled by any source found.

### A6 — Global counts

| Figure | Value | Boundary | Year | Source | Class | Fetch | Verbatim |
|---|---|---|---|---|---|---|---|
| Formal MSMEs worldwide | "over 322 million" | formally registered; **national definitions, not harmonised** | data collection ended 2019 | World Bank/IFC MSME-EI Analysis Note, Dec 2019 | GOV_STATISTIC | **OK** (binary PDF; pdftotext) | "there were over 322 million formal MSMEs, employing more than 705 million people" |
| Formal **SMEs** (small+medium, excl. micro) | "about 20 million" | note's own thresholds: small=10, micro=10, MSME cutoff 250 | same | same | GOV_STATISTIC | **OK** | "There are about 20 million formal SMEs, with about 5 million operating in emerging markets." |
| Formal microenterprises | "around 277 million" | same | same | same | GOV_STATISTIC | **OK** | "There are around 277 million formal microenterprises" |
| MSME share of firms | "over 90% of all firms" | no count, no threshold, no source cited | factsheet dated Oct 2025 | IFC FIG MSME factsheet | GOV_STATISTIC | **OK** | "MSMEs make up over 90% of all firms and account, on average, for 70% of total employment and 50% of GDP worldwide." |
| D-U-N-S records | "over 500 million records" | **business records/identifiers**, not enterprises above a size threshold | announced 14 Nov 2022 | D&B press release | **AGGREGATOR** | **OK** | "its database of the world-renowned D–U–N–S® Number had crossed over 500 million records" |
| D-U-N-S records | "more than 600 million businesses worldwide" | same; **page date rendered ambiguously** — flagged | URL path says 2025-11-26; page rendered "published August 20, 2026" | ThisDay Live quoting D&B Nigeria | REPUTABLE_MEDIA quoting AGGREGATOR | **OK** | "more than 600 million businesses worldwide are now recognised and verified through the DUNS Number" |
| Companies worldwide >50 employees | **unknown** | — | — | — | — | — | see GAPS |
| Companies worldwide >$10M revenue | **unknown** | — | — | — | — | — | see GAPS |

**Internal inconsistency inside the World Bank/IFC note (unresolved):** the Foreword says the database "provides economy-level data for MSMEs in 176 economies"; the Abstract says "in the 77 economies where data is available, there are 322 million formal MSMEs". Same total, two different economy counts, same document.

World Bank Enterprise Surveys data page (fetch **OK**) publishes indicators and firm-level microdata for "more than 150 economies" but **states no universe count**. OECD SDBS dataflow reachable (fetch **OK**, `sdmx.oecd.org`) — per-country only, no world aggregate.

### A7 — Businesses that report buying professional / IT services

| Figure | Value | Boundary | Year | Source | Class | Fetch | Verbatim | n |
|---|---|---|---|---|---|---|---|---|
| EU enterprises where external suppliers performed the ICT functions | **71.92%** | 10+ employees, NACE market sectors | 2023 | Eurostat SE "ICT specialists – hard-to-fill vacancies" | GOV_STATISTIC | **OK** | "In 2023, in 71.92% of EU enterprises external suppliers performed the ICT functions." | n not stated |
| — large / small | 83.29% / 70.19% | same | 2023 | same | GOV_STATISTIC | **OK** | "reached 83.29% among large enterprises, compared with 70.19% for small enterprises" | n not stated |
| EU enterprises using **paid** cloud services | 52.74% | 10+ employees | 2025 | Eurostat SE "Cloud computing" | GOV_STATISTIC | **OK** | "52.74% of EU enterprises used paid cloud computing services in 2025" | n not stated |
| — large / medium / small | 84.67% / 66.78% / 49.3% | same | 2025 | same | GOV_STATISTIC | **OK** | "84.67% reported purchasing such services in 2025"; "66.78% of medium-sized enterprises"; "…by 7.48 pp to 49.3%" | n not stated |
| EU enterprises employing ICT specialists (in-house contrast) | 20.05% | same | 2024 | same | GOV_STATISTIC | **OK** | "20.05% of EU enterprises employed ICT specialists in 2024." | n not stated |
| Medium (50–249) outsourcing ICT | **unknown** | — | — | — | — | — | source gives only large and small | — |
| Share buying **consulting / professional** services | **unknown** | — | — | — | — | — | see GAPS | — |

**US demand side is measured in dollars, not counts** — see §B1/B2.

### A8 — Counts / shares reporting genAI adoption

**US Census BTOS**, `National.xlsx` and `Employment Size Class.xlsx`, sheet "Response Estimates", Question ID 7. Class **GOV_STATISTIC**. URLs `https://www.census.gov/hfp/btos/downloads/National.xlsx` and `.../Employment%20Size%20Class.xlsx` — both fetch **OK**. Question verbatim: *"In the last two weeks, did this business use Artificial Intelligence (AI) in any of its business functions? (Examples of AI: machine learning, natural language processing, virtual agents, voice recognition, etc.)"* Frame verbatim: *"all employer businesses (single location and multi-location) in the U.S. economy, excluding farms"*; sample: *"approximately 1.2 million businesses split into six panels (approximately 200,000 cases per panel)"* — **per-wave respondent count not stated**. Reference period **2026-07-13 → 2026-07-26** (cycle 202616), published 2026-08-13.

| Cut | AI "Yes" | SE |
|---|---|---|
| National | **21.8%** | 0.33% |
| — "No" / "Do not know" | 68.6% / 9.6% | — |
| Expect to use in next 6 months | 25.9% | — |
| 1–4 employees | 21.9% | 0.52% |
| 5–9 | 20.0% | 0.62% |
| 10–19 | 20.2% | 0.63% |
| 20–49 | 22.4% | 1.26% |
| 50–99 | 27.8% | 1.77% |
| 100–249 | 30.3% | 1.40% |
| 250+ | **41.5%** | 1.69% |
| Prior waves 202615/202614/202613 | 21.5% / 21.7% / 20.6% | — |

File note verbatim: *"Due to the federal funding lapse (shutdown) from October 1, 2025 through November 13, 2025, the Business Trends and Outlook Survey (BTOS) did not collect data for the reference periods covering October 6 – November 16, 2025 (Cycles 202521 – 202523)."*

**Series break — the question wording changed.** Census America Counts article (fetch **OK**, `https://www.census.gov/library/stories/2026/05/ai-use-businesses.html`) states the wording was revised "last November to ask businesses whether they were using AI 'in any business function'". Under the **old** wording ("in producing goods or services"), SBA Advocacy FAQ Feb 2026 (WebFetch **403**, curl **200**) reports: *"Between Sept. 2024 and Aug. 2025, 7.6 percent of businesses used artificial intelligence (A.I.). The most likely businesses to have used A.I. were those with more than 250 employees—11.4 percent—followed by those with fewer than five employees—8.2 percent."*

**Disagreements (unresolved):** 21.8% (BTOS Jul 2026, new wording) vs 7.6% (BTOS Sept 2024–Aug 2025, old wording) — not the same measure. 41.5% for 250+ (BTOS 202616) vs 37% for ≥250 (Census article, window ending May 2026) vs 11.4% for >250 (SBA, old wording). 17%–20% overall (Census article, Dec 2025–May 2026) vs 20.6%–21.8% (BTOS file, Jun–Jul 2026).

**Eurostat "Use of artificial intelligence in enterprises"** (fetch **OK** ×2). Boundary: enterprises with **10+ employees**, NACE market sectors; **percentages only — Eurostat publishes no absolute count** (dataset `isoc_eb_ai` unit is "Percentage of enterprises"). Verbatim: *"In 2025, 19.95% of EU enterprises used AI technologies"*; *"In 2025, 17% of small enterprises, 30.36% of medium enterprises and 55.03% of large enterprises used AI."*; *"Compared with 2024, the use of AI technologies increased by 6.47 percentage points."* **n not stated.**
Two caveats from the collecting agent: (i) the same page carries a reference-year wording conflict — headline "In 2025" and "Data extracted in December 2025" vs a passage describing "the 2024 EU survey on 'ICT usage and e-commerce in enterprises,' with statistics obtained from surveys conducted by National Statistical Authorities in the first months of 2025"; (ii) an API cross-check at `isoc_eb_ai` (fetch **OK**) returned an internally impossible value set ("at least 3 technologies" 59.29% > "at least 2 technologies" 54.15%) and was **discarded**.

**McKinsey State of AI — NOT OBTAINED.** `https://www.mckinsey.com/capabilities/quantumblack/our-insights/the-state-of-ai` and `.../the-state-of-ai-how-organizations-are-rewiring-to-capture-value`: WebFetch **timeout (60s) ×3**; curl HTTP/2 **INTERNAL_ERROR (err 92)**; curl `--http1.1` **timeout at 45s, 0 bytes**; `https://www.mckinsey.com/` and `/robots.txt` also **timeout, 0 bytes** — a host-level block from this network, **not a 404**. A search snippet asserted "72%" and "1,993 participants in 105 nations"; **that is unverified and is deliberately not entered as evidence.**

---

## B. PER-ENTITY SPEND

### B1 — Purchased professional & technical services, per firm, by buying industry (official, same year, same NAICS)

Numerator: **Census Service Annual Survey 2022, Table 5** ("Estimated Selected Expenses for Employer Firms: 2020 Through 2022"), line item verbatim **"Purchased professional and technical services"**, $ millions, employer firms. Denominator: **SUSB 2022** firm counts (row `01: Total`) at the same NAICS. Both **GOV_STATISTIC**, ref year **2022**, fetch **OK**.
URLs: `https://www2.census.gov/programs-surveys/sas/tables/time-series/sas-latest/sas-22.xlsx` · `https://www2.census.gov/programs-surveys/susb/tables/2022/us_6digitnaics_rcptsize_2022.xlsx`
**Boundary:** SAS covers **employer firms in selected service sectors only** (12 NAICS sectors; manufacturing, retail, wholesale, construction are **not** in SAS). SAS methodology page verbatim: *"published estimates only included data for employer firms."* Per-firm values are **arithmetic means, skewed by large firms** — no median is published.

| NAICS | Industry (buyer) | Firms 2022 | Purchased prof & tech svcs, $M | Per firm **[computed]** |
|---|---|---|---|---|
| 22 | Utilities | 6,772 | 10,069 | $1,486,858 |
| 5112 | Software Publishers | 13,674 | 12,395 | $906,465 |
| 518 | Data Processing, Hosting, Related | 11,482 | 7,277 | $633,775 |
| 522 | Credit Intermediation | 38,785 | 38,571 | $994,482 |
| 523 | Securities & Commodity Contracts | 69,788 | 27,079 | $388,018 |
| 524 | Insurance Carriers | 135,082 | 30,831 | $228,239 |
| 531 | Real Estate | 340,797 | 16,854 | $49,455 |
| 54 | Professional, Scientific & Technical Svcs | 872,305 | 117,655 | $134,878 |
| 5413 | Architectural/Engineering | 95,284 | 24,040 | $252,298 |
| 5415 | Computer Systems Design | 127,147 | 26,928 | $211,786 |
| 5416 | Mgmt/Sci/Tech Consulting | 204,867 | 18,447 | $90,044 |
| 5417 | Scientific R&D Services | 17,930 | 29,722 | $1,657,669 |
| 561 | Administrative & Support Svcs | 355,191 | 20,576 | $57,929 |
| 621 | Ambulatory Health Care | 504,777 | 50,756 | $100,551 |
| 622 | Hospitals | 3,136 | 61,604 | $19,644,133 |
| 61 | Educational Services | 103,287 | 5,119 | $49,561 |
| 722 | Food Services & Drinking Places | 516,506 | 10,397 | $20,129 |
| 81 | Other Services (exc. Public Admin) | 729,236 | 22,420 | $30,745 |

Additional SAS 2022 buyers of the same line item ($M, no SUSB join computed here): 5111 Publishers 3,731 · 5121 Motion Picture 2,663 · 517312 Wireless Telecom 5,169 · 519 Other Information 3,399 · 532 Rental & Leasing 2,945 · 5411 Legal 6,754 · 5412 Accounting 2,656 · 5414 Specialized Design 1,349 · 5418 Advertising/PR 3,351 · 5419 Other PST 4,408 · 562 Waste Mgmt 1,817 · 6211 Offices of Physicians 27,937 · 623 Nursing/Residential 10,124 · 624 Social Assistance 7,778 · 711 Performing Arts 6,346 · 713 Amusement/Gambling 4,132 · 721 Accommodation 5,017 · 484 Truck Transportation 4,355 · 488 Support Activities for Transportation 3,071.

Adjacent line items in the same table for NAICS 54 (2022, $M): Total expenses 2,011,721 · Data processing & other purchased computer services 23,554 · Expensed purchases of software 31,245 · Temporary staff and leased employee expense 57,653.

### B2 — US business purchases of professional-services commodities (BEA input-output, demand side)

Source: **BEA Supply-Use tables**, "The Use of Commodities by Industries – Summary", millions of dollars, reference year **2023** (latest available). Class **GOV_STATISTIC**. Archive `https://apps.bea.gov/industry/iTables%20Static%20Files/AllTablesSUP.zip` — fetch **HTTP 200**, 20,439,248 bytes; parsed locally from `Use_Tables_Supply-Use_Framework_1997-2023_Summary.xlsx`. Column codes verbatim: `T001` = "Total Intermediate"; `T019` = "Total use of products"; `F02N` = "Nonresidential private fixed investment in intellectual property products"; `F040` = "Exports of goods and services"; `F010` = "Personal consumption expenditures".
*(BEA's own landing page `https://www.bea.gov/industry/input-output-accounts-data` — fetch **OK** — states verbatim "Industry input-output tables have been migrated to other areas of the BEA website" and lists no direct file URLs; the static archive above was reached by direct probe.)*

| Commodity | Total Intermediate (business inputs) | Total use | IP investment | PCE | Exports |
|---|---|---|---|---|---|
| 5415 Computer systems design and related services | **286,588** | 832,527 | 342,948 | (suppressed) | 51,912 |
| 5412OP Miscellaneous professional, scientific, and technical services | **1,833,247** | 3,228,729 | 767,254 | 114,273 | 224,890 |
| 5411 Legal services | 287,248 | 452,631 | — | 131,102 | 20,484 |

2022 comparatives (same file): 5415 T001 294,812 / T019 792,295; 5412OP T001 1,727,934 / T019 3,036,659; 5411 T001 270,550 / T019 442,442.

Top buying industries, 2023, $M — commodity **5415**: State & local general government 40,505 · Wholesale trade 22,409 · Federal general government (nondefense) 17,494 · Administrative & support services 16,717 · Data processing/internet publishing 16,601 · Misc. professional/scientific/technical 13,250 · Computer systems design (own-industry) 11,051 · Securities/commodity contracts 10,068 · Publishing exc. internet 8,500 · Credit intermediation 7,808 · Insurance carriers 7,770 · Food services 7,732.
Commodity **5412OP**: own-industry 186,439 · Wholesale trade 167,574 · State & local govt 104,678 · Other retail 101,375 · Other real estate 85,350 · Construction 78,578 · Data processing/internet publishing 74,841 · Federal defense 68,744 · Admin & support 66,633 · Credit intermediation 65,916 · Securities 63,310 · Management of companies 54,659.

**Detail-level commodities, reference year 2017** (BEA publishes detail only for 2017), from `Use_SUT_Framework_2017_DET.xlsx` in the same archive, $M:

| Commodity | Total Intermediate | Total use |
|---|---|---|
| 541511 Custom computer programming services | 12,200 | 284,835 |
| 541512 Computer systems design services | 155,614 | 210,591 |
| 541610 Management consulting services | **183,376** | 234,655 |
| 5416A0 Environmental and other technical consulting services | 57,627 | 57,833 |
| 541700 Scientific research and development services | 12,978 | 647,677 |
| 541300 Architectural, engineering, and related services | 266,697 | 354,782 |
| 541200 Accounting, tax prep, bookkeeping, payroll | 161,458 | 182,037 |
| 541800 Advertising, PR, and related services | 391,922 | 413,130 |
| 541100 Legal services | 217,452 | 358,096 |
| 5419A0 All other misc. professional/scientific/technical | 86,802 | 91,578 |

**Boundary note:** NAICS 541910 (marketing research) has **no separate BEA detail commodity** — it is inside `5419A0`. Also note the low `T001` for 541511 and 541700: most of their output is capitalised as `F02N` (IP investment), not counted as intermediate input.

**Not available:** SAS **Table 8** ("Estimated Revenue by Product and Class of Customer") covers only NAICS 484, 511xx, 5112, 517311, 51913, 56133, 56151, 56152, 561599 — **NAICS 54 is not in it**. So no official US class-of-customer split for professional services.

### B3 — IT / cloud spend per company

| Figure | Value | Boundary | Year | Source | Class | Fetch | Verbatim | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|
| Public cloud spend, large enterprises | **76% spend >$5M/month** | public cloud only, per org, monthly; "large enterprise" **not defined on the page** | 2026 (pub. 18 Mar 2026) | Flexera 2026 State of the Cloud | OTHER (vendor survey) | **OK** (WebFetch + curl 200) | "76% of large enterprises now spend more than $5 million monthly on public cloud" | **n=753** "cloud decision-makers"; frame **not stated** | High |
| Cloud spend by size | large ent. dominate $2M+/mo; SMBs <$50K/mo | same | 2026 | same | OTHER | **OK** | "large enterprises dominating $2M+ monthly spend while SMBs remain concentrated below $50K" | n=753 | Med-High |
| Software audit spend | 44% spent >$1M over 3 years | audit cost only, 3-yr cumulative | 2026 | Flexera 2026 State of ITAM | OTHER | **OK** | "44% report spending over $1 million on software audits over the past three years" | n=512, frame not stated | Med |
| IT spend as % of revenue, Financial Services | 4.4% (p25) – 11.4% (p75) | "operational spending (including depreciation)" or cash basis | page dated Jan 2021 | Avasant / Computer Economics | OTHER | **OK** | "4.4% at the 25th percentile to 11.4% at the 75th percentile" | "over 25 industry sectors"; **n not stated** | Med |
| IT spend as % of revenue, Discrete Manufacturing | 1.4% – 3.2% (p25/p75) | same | Jan 2021 | same | OTHER | **OK** | "1.4% and 3.2% at the 25th and 75th quartiles, respectively" | n not stated | Med |
| Size effect on IT % of revenue | modest, larger > smaller | directional only | Jan 2021 | same | OTHER | **OK** | "the effect of organization size is far less than the deviation by industry sector" | n not stated | Med |
| IT spend per employee by size band | 1–49: $1,800–4,000; 50–249: $4,000–7,500; 250–999: $6,000–14,000; 1,000–4,999: $9,000–15,000; 5,000+: $9,000–14,000 | annual IT spend per FTE | 2026 | ITBudgetCalculator.com | **AGGREGATOR** | **OK** | cites only "Gartner IT Key Metrics summary, 2026 forecast briefing" and "Spiceworks State of IT" — **no retrievable primary document named** | **n not stated** | **Low — flagged** |

**Reachable but blocked (kept, not absent):** Gartner IT Key Metrics Data 2025 `https://www.gartner.com/en/documents/5964539` — **403** via WebFetch *and* curl. Computer Economics IT Spending & Staffing Benchmarks — **403** both. Spiceworks/Ziff Davis State of IT press release (businesswire) — **WebFetch timeout 60s**, not retried successfully.

### B4 — Consulting / outsourcing spend

All Source Global Research figures below are **supplier-side market totals, not per-company spend**. URL `https://www.sourceglobalresearch.com/blog-post/which-consulting-services-are-clients-set-to-buy-in-2025s-unreliable-market` — WebFetch **403**, curl **200**. Class OTHER. 2025 forecast; method not stated on page; n/a.
Global consulting market **$275bn** ("Source's latest market data indicates that the global consulting market will hit $275bn in 2025.") · Technology & innovation **$69.2bn** · Strategy **>$60bn** · Risk & financial management **$58.7bn** · Cybersecurity **~$36bn (+9%)** · Operations **$36bn**.

**ISG Index™ Q1 2026** (`https://ir.isg-one.com/news-market-information/press-releases/news-details/2026/Global-Technology-Services-Market-Surges-to-New-AI-Fueled-High-in-Q1-ISG-Index/default.aspx`, fetch **OK**, class OTHER — analyst, in a listed company's IR release). Boundary verbatim: *"commercial outsourcing contracts with annual contract value (ACV) of $5 million or more"* — a **census of contracts ≥$5M ACV**, not a survey. Managed services ACV **$11.2bn** (+3% YoY) across **744 contracts** (+0.8%), 6 mega-deals at $100M+. Combined market ACV $39.4bn (+29%); XaaS $28.2bn; ITO $7.9bn; BPO $2.5bn; IaaS $23.1bn; SaaS $5.1bn. **ISG publishes no average contract value; the collecting agent explicitly declined to divide ACV by contract count.**

**Deloitte Global Outsourcing Survey 2024** — WebFetch **failed: maxContentLength (10MB) exceeded**; curl **200**, 11,177,305 bytes, full text extracted. Class MAJOR_CONSULTANCY. n stated as *">500 global business and technology leaders, including more than 150 C-suite"*; fielding dates and revenue bands **not stated in the PDF**. Verbatim: *"outsourcing are expected to increase for 40% of survey respondents, with only 20% reporting a planned reduction"*. **Full-text scan for `$`, "spend", "budget", "revenue" found only percentages — the report contains no per-company outsourcing spend figure. This is a confirmed absence, not a fetch failure.**

**Everest Group** (fetch **OK**), class OTHER: "80% of organizations expect positive ROI from AI"; "67% cite legacy infrastructure and 55% cite change management challenges". n=**200+** senior decision-makers at orgs with **annual revenue >$1bn**, N. America/Europe/APAC, 50%+ US/UK, LinkedIn-verified.

### B5 — Market research spend

**ESOMAR** figures are **supplier-side industry turnover, not client spend.** Research World (ESOMAR's own publication, fetch **OK**), class OTHER: *"Globally, the insights industry is estimated to have surpassed US$150 billion as of 2024 and is expected to surpass US$160 billion by the end of this year."* Sector split 2024: market research **US$56bn**; research software **US$62bn**; reporting **US$35bn**. Within the MR sector: *"Approximately 62% is attributed to full-service and market research services (including fieldwork), 31% to firms providing subscription-based and research software services, and the remaining 7% to consultancy services."* Method verbatim: *"A funnel-like approach where the respondent first estimates the size of the overall insights industry in their country…"* — **n not stated**.
ESOMAR GMR 2024 page (fetch **OK**): *"Globally, 2023 saw the insights industry expand by 8% from almost US$130 billion to US$142 billion."* Coverage: "more than 110 countries representing 80% of the industry". Report price: PDF €390 / hardcover €470 / both €480 (members €80 or free).

**Definitional boundary — why this number cannot be inverted into client-side market-research spend.** From the AAPOR 2025 insights-industry panel deck quoting ESOMAR 2024 p.194 (`https://aapor.confex.com/aapor/2025/mediafile/Handout/Session2112/Insights%20Industry%20panel%20at%20AAPOR%202025%20conference.pdf`, fetch **OK**, PDF text extracted): research-software sector *"Examples of digital data analytics includes Salesforce, Adobe, and NICE Systems."*; reporting sector *"Examples of consulting firms research companies include Deloitte, McKinsey & Co., and Booz Allen Hamilton. Examples of industry reports companies include Garner [sic], CoStar, and IHS Markit."* The headline therefore **includes Salesforce, Adobe, Deloitte, McKinsey and Gartner revenue**.

**Disagreement (unresolved):** ESOMAR's own 2024 report gives $142bn for 2023; the ESOMAR-published 2025 article gives ">$150bn as of 2024" while its own sector components sum to $153bn.

Supply-side US cross-check (official): SAS 2022, NAICS **54191 Marketing Research and Public Opinion Polling**, employer-firm revenue **$29,106M** (2021: $24,461M; 2020: $23,433M).

### B6 — Enterprise genAI spend per company

| Figure | Value | Boundary | Year | Source | Class | Fetch | Verbatim | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|
| **Annual genAI budget per company** | **~2/3 of enterprises budget $5M or more** | self-reported "budget for Gen AI solutions and related services", per company per year | fielded **26 Jun – 11 Jul 2025** | Wharton Human-AI Research + GBK Collective, *Accountable Acceleration* | OTHER (academic + research firm) | WebFetch returned PDF unparsed; **PDF retrieved OK (4.2MB), text extracted** | "Budgets for 2025 remain robust, with nearly two-thirds of enterprises budgeting $5M or more, led by Tier 1 organizations."; chart title "Two-Thirds of Enterprises Are Investing $5M+"; question "QSP1. What is your organization's approximate budget for Gen AI solutions and related services?" | **n=801**. Frame: "U.S.-based enterprise commercial organization (1000+ employees and >$50 million revenue)"; senior decision-makers across HR/IT/Legal/Marketing/Ops/Product/Procurement/Finance/GM; 15-min online tracker | **High — best per-company genAI figure found** |
| Largest firms | 23% of Tier 1 invest $20M+ | per company per year | 2025 | same | OTHER | as above | "23% of Tier 1 enterprises are investing $20M or more" | Tier 1 = $2B+ revenue, **n=155** | High |
| Revenue tier bases | Tier 3 $50M–<$250M **n=218**; Tier 2 $250M–<$2B **n=428**; Tier 1 $2B+ **n=155**; total **n=801** | sampling frame | 2025 | same | OTHER | as above | "Total: 2025 (n=801)" | as listed | High |
| Highest-budget industries | Banking/Finance, Technology/Telecom, Professional Services (+$10M avg) | industry averages | 2025 | same | OTHER | as above | "The top average investments (+$10M) among industries are in Banking/ Finance, Technology/Telecom, and Professional Services." | Prof. Services n=114; Tech/Telecom n=168; Banking/Finance n=126 | High |
| Budget direction | 88% expect increases next 12 months | forward expectation | 2025 | same | OTHER | as above | "88% expect budgets to increase in the next year" | n=801 | High |
| Internal R&D share | ~30% of technology budgets | share of genAI tech budget | 2025 | same | OTHER | as above | "Another 30% of technology budgets now go to internal R&D, according to those in IT functions" | n=801, IT subset | Med |
| Total **US enterprise AI spend** (aggregate, not per company) | **$37bn in 2025**, from $11.5bn (2024) and $1.7bn (2023); apps $19bn + infra $18bn | market aggregate | 2025 | Menlo Ventures, *2025: The State of Generative AI in the Enterprise* | OTHER (VC research) | **OK** | "Enterprise AI has surged from $1.7B to $37B since 2023, now capturing 6% of the global SaaS market" | **n=495** US enterprise AI decision-makers, fielded **7–25 Nov 2025**; "C-suite executives, VPs of Engineering and Product, and technical leaders responsible for AI purchasing"; research partner unnamed | High for the aggregate |
| Menlo per-company average | **not published** | — | 2025 | same | OTHER | **OK** | report "does not provide per-company average annual AI spending figures"; no size breakdown | n=495 | — |

**Disagreement (unresolved):** Wharton (n=801, US firms 1,000+ employees / >$50M revenue) implies ~2/3 of that population budget ≥$5M/yr; Menlo (n=495) puts *total* US enterprise AI spend at $37bn for 2025. Different universes and different spend definitions (Menlo counts model/app/infrastructure purchases; Wharton asks for a self-reported budget for "Gen AI solutions and related services"). Not reconciled.

### B7 — Project ticket sizes and published rate cards

#### B7a — Government-published seat pricing for research/advisory (Gartner)

Source: **NY State OGS Contract PS66085, Award NEG-22601, Appendix E-3 "NYS Net Prices – Gartner Research and Advisory Services Pricing"**. Class **GOV_STATISTIC** (published government contract price list). URL `https://online.ogs.ny.gov/purchase/prices/7300122601pl_gartner.pdf` — WebFetch returned PDF unparsed; **PDF retrieved OK, text extracted**. Pricing basis verbatim: *"The pricing in Section 1 is effective May 13, 2024, and is the same as the pricing Gartner offers on its GSA Contract."* Header verbatim: `GARTNER Research Advisory Services (RAS) SUBSCRIPTIONS … ANNUAL FEE`. Boundary: **annual subscription fee per named seat/role**, USD. Confidence **high**.

| Product / seat | Annual fee (USD) |
|---|---|
| Global CIO Team Plus — Global CIO (Team Leader), invitation only | 225,424 |
| Gartner for CISOs Executive — Individual Access (single user) | 139,193 |
| Executive Programs v2 — Guided Team Leader | 128,352 |
| Executive Programs v2 — Self-Directed Team Leader | 73,481 |
| Gartner for CIOs — Individual Access Advisor (single user) | 72,194 |
| Gartner for CIOs — Team Leader | 65,688 |
| Technical Professionals Team (1 leader + up to 4 members) | 64,676 (+12,390 per extra member) |
| IT Leadership Team Plus — Team Leader | 37,840 |
| IT Leadership Team — Cross Function Team Member | 20,522 |
| IT Leadership Team — Essentials Team Member | 10,290 |

*Washington State DES contract 05712 Gartner price list `https://apps.des.wa.gov/contracting/05712p22.pdf` — fetch **OK (200, 457KB)** but the file is a **scanned image with no text layer** (Producer "RICOH MP C6004ex", 9 pages, created 26 Feb 2020). Reachable, unusable.*

#### B7b — Expert-network / research-panel published pricing (vendor rate cards, class OTHER, fetched 2026-08-20, all **OK**)

| Vendor | Item | Price | Verbatim |
|---|---|---|---|
| Inex One (`https://inex.one/pricing`) | Expert call hourly fee | **$1,000–$1,250/hr** (30-min = 80% of hourly; 15-min increments) | "Our average hourly fee ranges from $1,000 to $1,250." |
| Inex One | Platform subscription | $500/project; $2,500/yr Corporate; $10,000/yr Enterprise | "$500 /project"; "$2,500 /year"; "$10,000 /year" |
| Prolific (`https://www.prolific.com/pricing`) | Platform fee on participant pay | 42.8% corporate / 33.3% academic | "our platform fee is usually 42.8% for corporate customers, and a discounted 33.3% for academic or non-profit customers" |
| Prolific | Participant pay floor | rec. £9.00/$12.00 per hr; min £6.00/$8.00 per hr | "we recommend you pay participants at least £9.00 / $12.00 per hour, while the minimum pay allowed is £6.00 / $8.00 per hour" |
| Attest (`https://www.askattest.com/pricing`) | Credit tiers — **no currency published** | Basic ≤50,000 credits; Standard ≤100,000; Elite ≤200,000; Custom 400,000+ | "we count a credit as an answer to one survey question from one person"; "a 10 question survey to 500 people would equal 5,000 credits" |

#### B7c — Fixed-scope engagement values, UK public sector (whole-contract, GBP)

Source: **Crown Commercial Service / GCA, Digital Outcomes and Specialists opportunities listing**, live snapshot fetched 2026-08-20, "34 results found in All lots". Class **GOV_STATISTIC**. URL `https://redirect.contractawardservice.gca.gov.uk/digital-outcomes/opportunities` — WebFetch of the pre-redirect URL returned **HTTP 302**; the redirect target fetched **HTTP 200**. Boundary: **advertised contract value for a named engagement**, whole contract, not annual.

| Engagement (verbatim title, abbreviated) | Buyer | Value | Lot |
|---|---|---|---|
| "DCMS is seeking bids for a combined Discovery/Alpha programme" | DCMS | £470,000 | 1 |
| "HOS0069 - Digital Delivery Partner (Work Package A – Discovery & Design)" | Housing Ombudsman | £352,000 | 1 |
| "9-1-Peabody Website … redesign and rebuild its public website" | Peabody Trust | £250,000 | 1 |
| (Ofqual, Lot 1) | Ofqual | £500,000 | 1 |
| "C10333 - HHT Exit and Identity Modernisation … discovery, design, and migration preparation" | DWP | £1,500,000 | 1 |
| "prj_16447 - Community Payback - next stage of modernisation" | MoJ | £7,200,000 | 1 |
| "prj_14708 HMCTS Software Engineering Centre of Excellence" | MoJ | £4,000,000 | 2 |
| "prj_17499 HMCTS Test Centre of Excellence" | MoJ | £7,100,000 | 2 |
| "Prj_17622 Technology Operations Digital and Technology Delivery Services" | MoJ | £7,500,000 | 2 |
| "FCDO/DDaT … Digital Products and Services, Corporate Enquiries Handling" | FCDO | £4,500,000 | 2 |
| "The Garage Delivery Factory and Live Service Teams" | DWP | £120,000,000 | 2 |
| "UK Health Security Agency Research Participant Recruitment Services" | UKHSA | £1,550,000 | 4 |
| "9-4-THE GOOD GYM" | The Good Gym | £345,345 | 4 |

14 listed opportunities carried a parseable value; **one Lot 1 entry is advertised at £1** — evident placeholder, flagged, excluded. **No average was computed** — this is a snapshot of currently-open tenders, not a sample frame.

#### B7d — Fixed-scope software build, aggregator cross-check (weaker)

Clutch Software Development Pricing Guide, `https://clutch.co/developers/pricing`, class **AGGREGATOR**, "Updated August 19, 2026", fetch **OK**, **n not stated** ("data gathered through Clutch reviews"; total review count not published): average software development project **$132,480.29**; average monthly cost $10,209.39; average project length ~13 months; average app development project $90,780.11 / ~11 months. Verbatim: "Experienced software developers on Clutch cost between $10,000 to $49,000 per project". **Internally inconsistent** — the $132,480 average and the "$10,000 to $49,999" typical range sit on the same page. Confidence **Low–Med**.

#### B7e — Hourly and daily rate cards (strongest ticket-size evidence)

**UK — official cross-supplier average day rates.** Crown Commercial Service / GCA, DOS 7 framework RM1043.9 (agreement 30 Jan 2026 – 29 Jul 2027). Class **GOV_STATISTIC**. URL `https://assets.applytosupply.digitalmarketplace.service.gov.uk/digital-outcomes-and-specialists-7/documents/reports/supplier-average-rates-report-digital-outcomes-and-specialists-7.csv` — fetch **OK** (curl 200, 43,339 bytes; 601 rows = 200 roles × 3 lots). Header verbatim: `Role,Lot,Average rate,Minimum rate,Maximum rate`. Boundary verbatim from the publishing page: *"You can download the average day rates for digital roles across all suppliers. This can guide you in setting your budget."* GBP; **VAT treatment not stated**; these are averages of supplier-submitted maximum rates, **not transacted prices**.

| Role | Lot 1 Digital Outcomes | Lot 2 Capability & Delivery Partners | Lot 3 Digital Specialists |
|---|---|---|---|
| Developer | £833.80 | £927.77 | £847.58 |
| Technical architect | £953.63 | £1,040.99 | £963.11 |
| Security architect | £982.10 | £1,059.52 | £984.60 |
| Cyber security | £1,353.99 | £1,550.13 | £1,344.15 |
| Delivery manager | £927.90 | £1,014.12 | £908.98 |
| Product manager | £897.09 | £992.51 | £896.94 |
| Business analyst | £856.86 | £929.86 | £844.17 |
| Data scientist | £926.20 | £1,005.26 | £911.69 |
| Data engineer | £835.48 | £926.34 | £844.58 |
| Service designer | £870.59 | £942.64 | £859.74 |
| Test engineer | £814.88 | £901.93 | £815.81 |
| Test manager | £1,031.67 | £1,149.50 | £1,018.46 |
| Tester (QAT) | £696.80 | — | — |
| Performance analyst | £853.75 | £912.91 | £829.98 |

Sample verbatim row: `Developer,Digital Outcomes,833.8,47.0,9999.0`.
**Data-quality flag:** the Min/Max columns are contaminated by sentinels — `9999.0` is the maximum for most Lot 1/Lot 3 roles and `1.0` a minimum for Cyber security (Lot 3). **Use the Average column only.** Lot 2 maxima (£4,000–£4,200) appear to be genuine ceilings.

**UK — single-supplier published rate card, G-Cloud 14.** Dell Technologies Services, "Services Reference SR # 000981798", v1.0, dated **26 April 2024**. Class **OFFICIAL_FILING** (supplier's published framework pricing on the government asset host). URL `https://assets.applytosupply.digitalmarketplace.service.gov.uk/g-cloud-14/documents/92251/290454247729435-sfia-rate-card-2024-04-30-1635.pdf` — WebFetch returned PDF unparsed; **PDF retrieved OK (98KB), text extracted**.

| Role | Day rate | Role | Day rate |
|---|---|---|---|
| Solution Architect | £1,589.00 | Consultant | £1,568.00 |
| Sr Solution Architect | £1,738.00 | Sr Consultant | £1,975.00 |
| Implementation Specialist | £1,154.00 | Advisory Consultant | £2,633.00 |
| Senior Implementation Specialist | £1,505.00 | Principal Consultant | £2,927.00 |
| Project Management | £1,316.00 | Program Manager | £1,711.00 |
| Senior Project Management | £1,514.00 | Sr Program Manager | £2,172.00 |

Boundary verbatim: *"Rates provided are 'day rates' '7.5hr/day' during normal UK offices time typically 9am to 5.30pm and exclude weekends and holidays."*; *"All prices exclude VAT and any taxes as required by law."*; *"The rates provided are for Time and Material engagements only and do not include any travel and expenses"*; *"The rates provided are not applicable for fixed fee services."*

**US — GSA Multiple Award Schedule published labor rates.** Class **GOV_STATISTIC** (Authorized Federal Supply Schedule Price Lists). Both retrieved as PDFs (WebFetch returned PDF unparsed; **PDFs retrieved OK, text extracted**).

*Acquisition Professionals LLC, contract 47QRAA18D00FJ, SIN 541611.* URL `https://acquisitionprofessionalsllc.com/wp-content/uploads/2024/03/GSA-Pricelist-AP-GSA-MAS-TC-Mod-37-1.pdf`. Header verbatim `GSA Hourly Rates / SIN 541611 (w/IFF)`; *"Contract Period: September 12, 2018 – September 11, 2028"*; *"Pricelist current as of Modification # PS-0037, effective 01/24/2024."*; *"Government net prices (discounts already deducted)."*

| Labor category | Yr 6 (09/12/23–09/11/24) | Yr 10 (09/12/27–09/11/28) |
|---|---|---|
| Acquisition Consultant | $127.83 | $151.85 |
| Acquisition Specialist III | $133.27 | $158.32 |
| Business Systems Analyst | $89.17 | $105.92 |
| Budget Analyst | $76.06 | $90.36 |
| Administrative Assistant | $64.06 | $76.10 |

*PDRI, contract GS-02F-086AA, SINs 54161 / 541611 / 541611W / 56131 / 541612EPM / 611430TD and 54151S.* URL `https://pdri.com/wp-content/uploads/2024/04/Consolidated-GSA-Pricelist-020924.pdf`. Verbatim: *"Contract Period: January 22, 2023 through January 21, 2028"*. Hourly.

| Labor category | SIN | Yr 1 | Yr 5 |
|---|---|---|---|
| Senior Manager | 54161… | $364.93 | $410.73 |
| Assessment Expert | 54161… | $331.75 | $373.38 |
| Project Director | 54161… | $266.64 | $300.11 |
| Senior Assessment Consultant | 54161… | $232.22 | $261.37 |
| Assessment Consultant | 54161… | $182.09 | $204.93 |
| Systems Engineer Manager | 54151S | $225.72 | $247.21 |
| Program Manager | 54151S | $181.79 | $199.10 |
| Systems Engineer | 54151S | $160.74 | $176.04 |
| Business Analyst | 54151S | $154.76 | $169.49 |

Same list also publishes **fixed unit prices** — verbatim: *"360-degree Assessment | Per Assessment | $175.00"*, *"IT Professional Skills Assessment | Per Assessment | $35.00"*.

**US — legacy GSA Advantage text price list, flagged as historical.** 3T International, Inc., SIN 132-51 (a **retired** legacy IT services SIN). `https://www.gsaadvantage.gov/ref_text/GS35F0546K/GS35F0546K_online.htm` — fetch **OK** (WebFetch and curl 200). Rates (contractor site / government site): Executive Program Manager $240.20/$180.00; Principal Consultant $198.92/$148.00; Subject Matter Expert $163.42/$157.79; Senior Consultant $114.53/$108.91; Programmer/Analyst $58.43/$52.21; Junior Programmer/Analyst $43.43/$38.83. **The document's embedded metadata reads `2003-09-22T19:32:00Z` / `2004-11-01T15:53:00Z` and SIN 132-51 no longer exists post-MAS-consolidation. Confidence for current pricing: very low — include only as a historical rate card.** Flagged because these figures surface in search results with no date attached.

*GSA CALC+ Quick Rate tool `https://buy.gsa.gov/pricing/qr/mas` — fetch **OK (200)** but JS-rendered; only the page title "IGCE (Independent Government Cost Estimate)" returned, no rate data. The CALC+ user guide PDF fetched **OK** but is image-based with no text layer.*

### B8 — US labour-cost anchors for the same work (official)

Source: **BLS Occupational Employment and Wage Statistics (OEWS)** via the BLS public API v1 (`https://api.bls.gov/publicAPI/v1/timeseries/data/`) — fetch **HTTP 200**. Class **GOV_STATISTIC**. Reference: annual, **2025**. National, all industries, all ownerships.
**Series-ID construction validated**: the "all occupations" series returned employment **155,495,730**, matching the published OEWS national total, confirming the occupation/datatype mapping. Confidence **high** for the values; **medium** on the label mapping because the v1 API returns no series title (catalog requires v2 + registered key).
*BLS web pages are blocked from this network: `https://www.bls.gov/oes/current/oes131111.htm`, `.../oes_nat.htm`, and `https://www.bls.gov/oes/special-requests/oesm24nat.zip` all returned **HTTP 403** to curl with a browser UA — reachable, blocked, not absent.*

| SOC | Occupation | Employment | Annual mean wage | Annual median wage |
|---|---|---|---|---|
| 00-0000 | All occupations | 155,495,730 | $69,770 | $50,980 |
| 13-1111 | Management Analysts | 898,280 | $113,790 | $101,860 |
| 15-1252 | Software Developers | 1,687,890 | $148,100 | $135,980 |
| 13-1161 | Market Research Analysts & Marketing Specialists | 899,580 | $89,490 | $78,760 |
| 15-1211 | Computer Systems Analysts | 519,530 | $114,610 | $105,850 |
| 15-1242 | Database Administrators | 69,990 | $110,090 | $104,620 |
| 13-2011 | Accountants and Auditors | 1,449,500 | $94,750 | $83,680 |

---

## C. SERVICE-INDUSTRY REVENUE PER FIRM (cross-check)

### C1 — Listed professional-services firms, official filings

All SEC figures below were obtained twice, independently: once by direct filing retrieval and once by me via the **SEC XBRL companyconcept API** (`data.sec.gov`, HTTP 200). **The two methods agree exactly on every company where both returned a value** — Accenture, EPAM, Globant, Thoughtworks, Upwork, Fiverr, and Infosys FY2025 as the comparative in the FY2026 filing.
**sec.gov returns HTTP 403 to WebFetch on every Archives URL**; the identical URLs return **HTTP 200** to curl with an SEC-compliant User-Agent. Server answered — reachable, not absent.

| Company | Metric | Value | Ccy | FY + end date | Source | Class | Fetch | Verbatim | Conf |
|---|---|---|---|---|---|---|---|---|---|
| Accenture plc | Revenue | 69,672,977 thousand | USD | FY2025, **Aug 31 2025** | 8-K Ex-99, Q4/FY25 earnings release · `https://www.sec.gov/Archives/edgar/data/1467373/000146737325000213/q4fy25earnings8-kexhibit.htm` | OFFICIAL_FILING | WebFetch **403**; curl **200**; XBRL API **200** | "Total Revenues $ 69,672,977 $ 64,896,464 7% 7%" | High |
| Accenture | Growth (company-stated) | +7% USD and +7% local currency | USD | FY2025 | same | OFFICIAL_FILING | curl **200** | "$69.7 billion for the year, an increase of $4.8 billion or 7% in both U.S. dollars and local currency" | High |
| Accenture | Headcount | ~779,000 | — | Aug 31 2025 | FY2025 10-K `.../000146737325000217/acn-20250831.htm` | OFFICIAL_FILING | WebFetch **403**; curl **200** | "approximately 779,000 people as of August 31, 2025" | High |
| Accenture | Revenue/employee **[computed]** | ≈ $89,439 | USD | FY2025 | 69,672,977,000 ÷ 779,000 | — | — | — | High arithmetic / Med (headcount is "approximately") |
| EPAM Systems | Revenue | 5,457,056 thousand | USD | FY2025, **Dec 31 2025** | FY2025 10-K `.../000135201026000015/epam-20251231.htm` | OFFICIAL_FILING | WebFetch **403**; curl **200**; XBRL **200** | "Revenues $5,457,056 100.0 % $4,727,940 100.0 %" | High |
| EPAM | Growth (company-stated) | +15.4% reported; FX +1.3pp; acquisitions +9.2pp | USD | FY2025 | same | OFFICIAL_FILING | curl **200** | "our total revenues increased 15.4% from the previous year to $5.457 billion… fluctuations in foreign currency increased our revenues by 1.3%" | High |
| EPAM | Headcount | ~62,850 total; ~56,600 delivery professionals | — | Dec 31 2025 | same | OFFICIAL_FILING | curl **200** | "we had approximately 62,850, 61,200, and 53,150 employees, respectively, of which approximately 56,600, 55,100, and 47,350 were delivery professionals" | High |
| EPAM | Revenue/employee **[computed]** | ≈ $86,827 (all) / ≈ $96,414 (delivery only) | USD | FY2025 | 5,457,056,000 ÷ 62,850 · ÷ 56,600 | — | — | — | High |
| Globant S.A. | Revenue | 2,454,877 thousand | USD | FY2025, **Dec 31 2025** | FY2025 20-F `.../000162828026012910/glob-20251231.htm` | OFFICIAL_FILING | WebFetch **403**; curl **200**; XBRL **200** | "Revenues $ 2,454,877 100.0 % $ 2,415,689 100.0 % $ 2,095,939 100.0 %" | High |
| Globant | Growth (company-stated) | +1.6% | USD | FY2025 | same | OFFICIAL_FILING | curl **200** | "For the year ended December 31, 2025, revenues increased by 1.6% to $2.5 billion" | High |
| Globant | Headcount | 28,773 | — | Dec 31 2025 | same | OFFICIAL_FILING | curl **200** | "As of December 31, 2025, we had 28,773 employees worldwide, and operations through subsidiaries with offices and employees in 31 countries." | High |
| Globant | Revenue/employee **[computed]** | ≈ $85,319 | USD | FY2025 | 2,454,877,000 ÷ 28,773 | — | — | — | High |
| Infosys Ltd | Revenue | 20,158 million | USD | FY2026, **Mar 31 2026** | FY2026 20-F `.../000119312526270520/infy-20260331.htm` | OFFICIAL_FILING | curl **200** (XBRL API not yet indexed for FY2026 — returned FY2025 as latest) | "Revenues 20,158 19,277 881 4.6 %" | High |
| Infosys | Revenue (INR) | 178,650 crore | INR | FY2026 | Q4 & FY26 results, BSE `https://www.bseindia.com/xml-data/corpfiling/AttachHis/0C09F653-9382-4863-A61A-608D1074F3B0-175431.pdf` | OFFICIAL_FILING | curl **200** (43.1MB PDF) | "Revenues 178,650 162,990 9.6%" (header "In ₹ crore") | High |
| Infosys | Growth (company-stated) | +4.6% reported USD; **+3.1% constant currency**; +9.6% INR | USD/INR | FY2026 | both | OFFICIAL_FILING | curl **200** | "a growth of 4.6% in comparison to fiscal 2025. As against this, our revenues in constant currency terms for fiscal 2026 grew by 3.1%" | High |
| Infosys | Headcount | 328,594 | — | Mar 31 2026 | 20-F + BSE results | OFFICIAL_FILING | curl **200** | "our total employees grew from 314,015 to 328,594"; BSE: "Total employees 328,594 337,034 323,578" | High |
| Infosys | Revenue/employee **[computed]** | ≈ $61,346 · ≈ ₹5,436,800 | USD/INR | FY2026 | 20,158,000,000 ÷ 328,594 | — | — | — | High |
| TCS | Revenue | 267,021 crore | INR | FY2026, **Mar 31 2026** | TCS press release to NSE/BSE, 9 Apr 2026 (Reg. 30 LODR) `https://www.bseindia.com/xml-data/corpfiling/AttachHis/8d01a131-0e27-4a5b-891e-66e7bf2230d4.pdf` | OFFICIAL_FILING | curl **200**; **www.tcs.com 403 to both WebFetch and curl** | "FY 26 Revenue ₹267,021 crore, Growth +4.6% YoY, -2.4% in CC" | High |
| TCS | Revenue (audited cross-check) | 2,67,021 crore (FY25 2,55,324) | INR | FY2026 | Results filing `.../da445746-06b9-4078-a71b-cc48f97fbc93.pdf` | OFFICIAL_FILING | curl **200** | "Total 70,698 67,087 64,479 2,67,021 2,55,324" | High |
| TCS | Revenue (USD, approximate) | "over US$30 billion" | USD | FY2026 | same press release boilerplate | OFFICIAL_FILING | curl **200** | "TCS generated consolidated revenues of over US$30 billion in the fiscal year ended March 31, 2026." | **Med — an approximation, not a reported figure** |
| TCS | Growth (company-stated) | +4.6% YoY INR; **−2.4% constant currency** | INR | FY2026 | same | OFFICIAL_FILING | curl **200** | as above | High |
| TCS | Headcount | 584,519 | — | Mar 31 2026 | same | OFFICIAL_FILING | curl **200** | "FY2026: Annual Highlights • Employee Headcount: 584,519" | High |
| TCS | Revenue/employee **[computed]** | ≈ ₹4,568,218 | INR | FY2026 | 2,670,210,000,000 ÷ 584,519 | — | — | — | High |
| Capgemini SE | Revenue | 22,465 million | EUR | FY2025, **Dec 31 2025** | FY 2025 Results press release, 13 Feb 2026 `https://investors.capgemini.com/en/publication/fy-2025-results/` | OFFICIAL_FILING | WebFetch **OK (200)**; curl **200** | "Revenues of €22,465 million in 2025, up +1.7%" | High |
| Capgemini | Growth (company-stated) | +1.7% reported; **+3.4% constant FX** | EUR | FY2025 | same | OFFICIAL_FILING | **OK** | "Revenue growth at constant exchange rates * of +3.4% for the full year, and +10.6% in Q4" | High |
| Capgemini | Headcount | 423,400 (+82,300, +24% YoY) | — | Dec 31 2025 | same | OFFICIAL_FILING | **OK** | "the Group's total headcount stood at 423,400, up 82,300 or +24% year-on-year… primarily reflecting the integration of WNS team members" | High |
| Capgemini | Revenue/employee **[computed]** | ≈ €53,059 | EUR | FY2025 | 22,465,000,000 ÷ 423,400 | — | — | — | **Med — see C-note 1** |
| Thoughtworks Holding | Revenue | 1,126,816 thousand | USD | **FY2023**, Dec 31 2023 — last 10-K | FY2023 10-K `.../000186655024000022/twks-20231231.htm` | OFFICIAL_FILING | WebFetch **403**; curl **200**; XBRL **200** | "Revenues $ 1,126,816 $ 1,296,238 $ 1,069,945" | High |
| Thoughtworks | Growth (company-stated) | −13.1% reported; −12.6% constant currency | USD | FY2023 | same | OFFICIAL_FILING | curl **200** | "Revenue Growth Rate as reported (1) (13.1) % 21.1 % 33.2 %" | High |
| Thoughtworks | Headcount | 10,848 | — | Dec 31 2023 | same | OFFICIAL_FILING | curl **200** | "Number of employees … 10,848 12,671" | High |
| Thoughtworks | Revenue/employee — **company-stated** | **$98,000** (FY2023), $108,000 (FY2022) | USD | FY2023 | same | OFFICIAL_FILING | curl **200** | "We define average revenue per employee as total revenues for the period divided by the average number of employees in such period." | High |
| Thoughtworks | Revenue/employee **[computed, year-end basis]** | ≈ $103,873 | USD | FY2023 | 1,126,816,000 ÷ 10,848 | — | — | differs from $98,000 because the company divides by **average** headcount | High |
| Thoughtworks | Last quarterly filing | Q3 2024 revenue $261,393K; 9M 2024 $761,657K; 10,491 employees at Sep 30 2024 | USD | Q3 2024 | 10-Q filed 2024-11-12 | OFFICIAL_FILING | curl **200** | "Revenues $ 261,393 $ 280,159 $ 761,657 $ 874,430" | High |
| Thoughtworks | Take-private | Merger completed **Nov 13 2024**; Form 25-NSE 2024-11-13; Form 15-12G 2024-11-25 | — | — | 8-K `.../000121390024097457/ea0220617-8k_thought.htm` + EDGAR submissions index | OFFICIAL_FILING | curl **200** | "completed its previously announced merger with Tasmania Merger Sub, Inc. … a wholly owned subsidiary of Tasmania Midco, LLC" | High |

**Correction to the brief.** The brief stated Thoughtworks was "taken private by Apax in 2024". **The word "Apax" appears nowhere in the 8-K.** The counterparties named in the filing are "Tasmania Merger Sub, Inc." and "Tasmania Midco, LLC". The Apax attribution is not established by any document fetched — reported, not resolved.

**C-notes (disagreements / definitional conflicts, unresolved):**
1. **Capgemini revenue/employee is distorted by the WNS acquisition** — headcount +24% YoY while revenue +1.7%, so the year-end denominator includes a workforce that contributed for only part of FY2025. Arithmetically correct, not a like-for-like productivity measure.
2. **"Revenue per employee" is not one metric.** Thoughtworks publishes on an **average**-headcount basis ($98,000); every other company publishes only point-in-time year-end headcount. Year-end basis gives $103,873 for Thoughtworks — a 6% divergence purely from denominator convention.
3. **EPAM has two defensible denominators** — 62,850 total vs 56,600 delivery professionals → $86,827 or $96,414.
4. **Infosys and TCS growth signs invert by currency** — Infosys FY2026 +9.6% INR / +4.6% USD / +3.1% CC; TCS FY2026 +4.6% INR but **−2.4% CC**.
5. **Fiscal years are not aligned** — three different year-ends (Aug 31, Dec 31, Mar 31) and, for Thoughtworks, a three-year-older base. Not normalised.
6. Accenture FY2026 ends Aug 31 2026, **after** today's date; FY2025 is correctly the latest completed year (confirmed by enumeration of `data.sec.gov/submissions/CIK0001467373.json`, HTTP 200 — latest 10-K period `2025-08-31`).

### C2 — Listed talent marketplaces

| Company | Metric | Value | Ccy | Period | Source | Class | Fetch | Verbatim | Conf |
|---|---|---|---|---|---|---|---|---|---|
| Upwork | GSV, FY | 4,028,386 thousand (+1%) | USD | FY2025, Dec 31 2025 | FY2025 10-K `.../000162747526000012/upwk-20251231.htm` | OFFICIAL_FILING | WebFetch **403**; curl **200** | "GSV $ 4,028,386 1 % $ 4,008,107 (3) % $ 4,142,252 1 %" | High |
| Upwork | Total revenue, FY | 787,784 thousand (+2%) | USD | FY2025 | same; **XBRL API 200, identical** | OFFICIAL_FILING | curl **200** | "Total revenue $ 787,784 $ 769,325 $ 18,459 2 %" | High |
| Upwork | Marketplace revenue, FY | 682,883 thousand (+3%) | USD | FY2025 | same | OFFICIAL_FILING | curl **200** | "Marketplace $ 682,883 $ 662,108 20,775 3 %" | High |
| Upwork | Take rate — **company-stated** | **18.7%** (from 18.0%) | % | FY2025 | same | OFFICIAL_FILING | curl **200** | "Marketplace take rate increased to 18.7% for the year ended December 31, 2025, as compared to 18.0% in 2024"; definition: "calculated by dividing Marketplace revenue by Marketplace GSV" | High |
| Upwork | Take rate **[computed, different denominator]** | 19.56% | % | FY2025 | 787,784 ÷ 4,028,386 | — | — | **NOT the company's definition** — total revenue ÷ total GSV | High arithmetic, not comparable |
| Upwork | Active clients | 785,000 (−6%) | count | Dec 31 2025 | same | OFFICIAL_FILING | curl **200** | "Active clients 785 (6) % 832 (2) % 851 5 %" (table in thousands) | High |
| Upwork | GSV per active client | $5,129 (+7%) | USD | FY2025 | same | OFFICIAL_FILING | curl **200** | "GSV per active client $ 5,129 7 % $ 4,815 (1) % $ 4,867 (4) %" | High |
| Upwork | Q2 2026 GSV | $966.4m (−3.6% YoY) | USD | Q2 2026, Jun 30 2026; released Aug 10 2026 | 8-K Ex-99.1 `.../000162747526000046/upwork2q26-pressrelease.htm` | OFFICIAL_FILING | curl **200** | "GSV (1) was $966.4 million, decreased 4% year-over-year"; table "GSV (1) $ 966,439 $ 1,002,650 (3.6) %" | High |
| Upwork | Q2 2026 revenue | $191.7m total (Marketplace $166,858K; Enterprise $24,802K), −2% | USD | Q2 2026 | same | OFFICIAL_FILING | curl **200** | "Revenue decreased 2% year-over-year to $191.7 million" | High |
| Upwork | Q2 2026 take rate | **not disclosed** | — | Q2 2026 | same | OFFICIAL_FILING | curl **200** | no take-rate line in "Key Financial and Operational Metrics"; Marketplace GSV not broken out | High that it is not stated |
| Upwork | Q2 2026 active clients | 763,000 (−4%) | count | Jun 30 2026 | same | OFFICIAL_FILING | curl **200** | "Active clients (1) 763 796 (4) %" | High |
| Upwork | Q2 2026 GSV/active client | $5,230 (+5%) | USD | Jun 30 2026 | same | OFFICIAL_FILING | curl **200** | "GSV per Active Client Reaches Record $5,230" | High |
| Fiverr | Marketplace GMV, FY | $1,073.0 million (−2.2%) | USD | FY2025, Dec 31 2025 | FY2025 20-F `.../000117891326000858/zk2634486.htm` | OFFICIAL_FILING | WebFetch **403**; curl **200** | "for the twelve-month period ended December 31, 2025, marketplace GMV was $1,073.0 million, down 2.2% year-over-year" | High |
| Fiverr | Revenue, FY | $430.9m total (+10.1%); marketplace $297.5m (−1.8%); services $133.4m (+50.9%) | USD | FY2025 | same; **XBRL API 200: $430,909,000, identical** | OFFICIAL_FILING | curl **200** | "Revenue increased by $39.4 million, or 10.1%, to $430.9 million for the year ended December 31, 2025" | High |
| Fiverr | Take rate — **company-stated** | **27.7%** (from 27.6%) | % | FY2025 | same | OFFICIAL_FILING | curl **200** | "Our marketplace take rate, defined by marketplace revenue divided by marketplace GMV was 27.7%, compared to 27.6% in 2024." | High |
| Fiverr | Take rate **[computed, different numerator]** | 40.16% | % | FY2025 | 430.9 ÷ 1,073.0 | — | — | **NOT the company's metric** — includes the $133.4m of services revenue | High arithmetic, not comparable |
| Fiverr | Annual active buyers | 3,135,000 (−13.6%) | count | Dec 31 2025 | same | OFFICIAL_FILING | curl **200** | "Annual active buyers (in thousands) 3,135 3,630 4,027" | High |
| Fiverr | Annual spend per buyer | $342 (+13.3%) | USD | Dec 31 2025 | same | OFFICIAL_FILING | curl **200** | "Annual spend per buyer $ 342 $ 302 $ 278" | High |
| Fiverr | Q2 2026 revenue | $97.8m (−10.0% YoY); marketplace $63.1m (−15.5%); services $34.6m (+2.0%) | USD | Q2 2026, Jun 30 2026; released Jul 29 2026 | 6-K Ex-99.1 `.../000117891326003624/exhibit_99-1.htm` | OFFICIAL_FILING | curl **200** | "Revenue in the second quarter of 2026 was $97.8 million, compared to $108.6 million in the second quarter of 2025, a decrease of 10.0% year over year." | High |
| Fiverr | Q2 2026 GMV | **not stated as a dollar figure** | USD | Q2 2026 | same | OFFICIAL_FILING | curl **200** | (no quote — figure absent) | High that it is not stated |
| Fiverr | Q2 2026 TTM GMV **[computed from rounded inputs]** | ≈ $994 million | USD | TTM to Jun 30 2026 | 2,700,000 buyers × $368, per the company's own definition ("dividing our GMV within the last 12-month period by the number of annual active buyers") | — | — | **both inputs rounded to 2–3 s.f.** | **Low–Med** |
| Fiverr | Q2 2026 take rate | **28.0%** TTM (vs 27.6% prior-year TTM) | % | TTM to Jun 30 2026 | same | OFFICIAL_FILING | curl **200** | "Marketplace take rate 1 for the twelve months period ended June 30, 2026 was 28.0%" | High |
| Fiverr | Q2 2026 annual active buyers | 2.7 million (−21.9%) | count | Jun 30 2026 | same | OFFICIAL_FILING | curl **200** | "Annual active buyers 1 as of June 30, 2026, were 2.7 million, compared to 3.4 million as of June 30, 2025, a decline of 21.9%" | High |
| Fiverr | Q2 2026 annual spend per buyer | $368 (+15.6%) | USD | Jun 30 2026 | same | OFFICIAL_FILING | curl **200** | "Annual spend per buyer 1 as of June 30, 2026, reached $368, compared to $318 as of June 30, 2025" | High |

**Take-rate denominators are not comparable across the two companies or with a naive computation.** Upwork: Marketplace revenue ÷ *Marketplace* GSV (18.7%). Fiverr: marketplace revenue ÷ marketplace GMV (27.7%), excluding 31.0% of total revenue that comes from services. Total-revenue-over-total-volume gives 19.56% and 40.16% — different metrics, labelled separately above.

### C3 — US supply-side revenue per provider firm (official, same year)

Numerator: **SAS 2022 Table 2** ("Estimated Revenue by Tax Status for Employer Firms"), employer firms, $M. Denominator: **SUSB 2022** firm counts. Both **GOV_STATISTIC**, ref year **2022**, fetch **OK**. Means, not medians.

| NAICS | Industry | Revenue 2022 ($M) | Firms 2022 | Revenue/firm **[computed]** |
|---|---|---|---|---|
| 54 | Professional, Scientific & Technical Services (employer firms) | 2,610,968 | 872,305 | $2.99M |
| 5415 | Computer Systems Design and Related Services | 648,805 | 127,147 | $5.10M |
| 54161 | Management Consulting Services | 307,310 | — | — |
| 541611 | Admin. Mgmt & General Mgmt Consulting | — | 93,514 | — |
| 5416 | Mgmt/Sci/Tech Consulting (SUSB receipts basis) | 416,043 (SUSB receipts) | 204,867 | $2.03M |
| 54191 | Marketing Research and Public Opinion Polling | 29,106 | 3,747 | $7.77M |
| 54171 | R&D in Physical, Engineering & Life Sciences | 267,969 | — | — |
| 54111 | Offices of Lawyers | 343,016 | — | — |
| 54133 | Engineering Services | 305,233 | — | — |

NAICS 54 total revenue **incl. nonemployers**, SAS Table 1, 2022: **$2,841,227M** (2021 $2,581,432M; 2020 $2,304,998M; 2019 $2,261,086M). Verbatim row: `54|Professional, Scientific, and Technical Services6|Revenue|All Establishments|Employer and Nonemployer Firms|2841227|2581432|2304998|...`

**Product-line splits within the buyer-relevant NAICS**, SAS 2022 Table 4 ("Estimated Sources of Revenue for Employer Firms"), $M, 2022 / 2021 / 2020:

| NAICS 5415 product line | 2022 | NAICS 54161 product line | 2022 |
|---|---|---|---|
| Custom application design and development | 159,854 | Strategic management consulting (incl. w/ implementation) | 73,139 |
| Computer systems design, development, integration | 87,653 | All other consulting revenue | 41,546 |
| IT technical consulting | 78,983 | Marketing management consulting | 31,395 |
| IT technical support | 55,850 | IT technical design, consulting, development | 21,937 |
| IT infrastructure and network management | 46,720 | Human resources management consulting | 15,657 |
| Hosting and IT infrastructure provisioning | 37,820 | Financial management consulting | 13,270 |
| Network design and development | 6,496 | Operations and supply chain mgmt consulting | 12,878 |
| IT related training services | 5,019(s) | Actuarial consulting (exc. pensions/benefits) | 1,843(s) |
| All other operating revenue | 169,775 | All other operating revenue | 95,645 |

Also: NAICS 5412 (Accounting) reports **$23,391M** of "Management consulting services" revenue in 2022 — i.e. consulting revenue booked outside NAICS 5416.

---

## PROVEN ABSENT (404 / NXDOMAIN only)

| URL | Status | What it was meant to provide |
|---|---|---|
| `https://www2.census.gov/programs-surveys/susb/tables/2023/us_state_naics_detailedsizes_2023.xlsx` | **404** | SUSB 2023 by employment size |
| `https://www2.census.gov/programs-surveys/susb/tables/2023/us_naicssector_large_emplsize_2023.xlsx` | **404** | SUSB 2023 large firms |
| `https://www2.census.gov/programs-surveys/susb/tables/2024/` | **404** | SUSB 2024 |
| `https://www2.census.gov/programs-surveys/nonemployer-statistics/datasets/2023/nonemp23us.zip` | **404** | wrong path — file exists under `.../2023/historical-datasets/` (fetched OK) |
| `https://www2.census.gov/programs-surveys/btos/datasets/` and `https://www2.census.gov/programs-surveys/btos/` | **404** both | BTOS bulk datasets |
| `https://ec.europa.eu/eurostat/statistics-explained/index.php?title=ICT_specialists_in_enterprises` | **404** | wrong article title — correct one is "ICT specialists - statistics on hard-to-fill vacancies in enterprises" (fetched OK) |
| `https://www.smefinanceforum.org/data-sites/msme-country-indicators` | **404** | global MSME country indicators |
| `https://sdmx.oecd.org/public/rest/data/OECD.SDD.TPS,DSD_SDBSBSC_ISIC4@DF_SDBS_ISIC4,1.0/.A.ENT_NB._T._T.._T?...` | **404** | invalid SDMX key — the **dataflow itself is reachable (200)**, so this is a query error, not absence |
| `https://www.deloitte.com/us/en/services/consulting/articles/state-of-generative-ai-in-enterprise.html` | **404** | Deloitte State of GenAI |
| `https://kpmg.com/us/en/media/news/ai-pulse-survey-q1-2025.html` (+2 further KPMG URLs) | **404** each | KPMG AI Quarterly Pulse |
| `https://www.surveymonkey.com/market-research/pricing/` | **404** | SurveyMonkey Audience per-respondent pricing |
| `https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/search` (+`?q=rate+card`) | **404** both | G-Cloud live search — **retired on that host**; the asset host still serves documents |
| `https://www.capgemini.com/investors/` | **404** (203,215-byte 404 page) | IR lives at `https://investors.capgemini.com/en/` (200) |
| `https://www.bseindia.com/xml-data/corpfiling/AttachLive/<id>.pdf` (both TCS attachments) | **404** | `AttachLive` is for current filings; same docs resolve **200** under `AttachHis` |
| `https://data.sec.gov/api/xbrl/companyconcept/CIK0001627475/us-gaap/Revenues.json` | **404** | Upwork tags under `RevenueFromContractWithCustomerExcludingAssessedTax` instead (200) |
| `https://data.sec.gov/submissions/CIK1352010.json` | **404** | malformed (un-padded) CIK; padded form works |

**These 404s prove the URL is absent, not that the underlying report does not exist.** The KPMG and Deloitte genAI reports in particular are very likely live at URLs that could not be located once the search budget ran out.

### Reachable but blocked — kept, NOT absent

| Source | Status | Note |
|---|---|---|
| **McKinsey State of AI** (`www.mckinsey.com`, incl. `/robots.txt`) | WebFetch **timeout ×3**; curl HTTP/2 **err 92**; curl `--http1.1` **timeout, 0 bytes** | Host-level block from this network. **No McKinsey figure is reported.** |
| **BLS web** (`bls.gov/oes/current/*`, `bls.gov/bdm/*`, `oesm24nat.zip`) | **403** to WebFetch and to curl w/ browser UA | Worked around via the **BLS public API v1** (HTTP 200) — see §B8. BED firm-size data still not obtained. |
| **sec.gov Archives** (every URL) | **403** to WebFetch; **200** to curl w/ SEC-compliant UA | All §C1/C2 filings retrieved. |
| **www.tcs.com** (all paths incl. `/robots.txt`) | **403** to WebFetch and curl | Worked around via BSE India filing repository (TCS's own signed documents). |
| **Gartner** `gartner.com/en/documents/5964539` (IT Key Metrics Data 2025) | **403** both methods | Paywalled. Primary IT-spend benchmark **not obtained**. |
| **Computer Economics** IT Spending & Staffing Benchmarks | **403** both | Not obtained. |
| **IBM IBV** `/report/ai-roi` | **403**; `/report/ceo-generative-ai` **200 but JS-rendered, no text** | Not obtained. |
| **Source Global Research** blog | WebFetch **403**; curl **200** | Content obtained. |
| **OECD** `oecd.org/en/data/indicators/enterprises-by-business-size.html` | **403** | Not obtained. |
| **Statista** `/statistics/1261035/large-global-companies/` | redirect loop (>10) | Aggregator anyway. |
| **Spiceworks/Ziff Davis** State of IT (businesswire) | WebFetch **timeout 60s** | Not obtained. |
| **AMSG** GSA MAS price list | **403** | Not obtained. |
| **Washington State DES** Gartner price list `apps.des.wa.gov/contracting/05712p22.pdf` | **200** but scanned image, no text layer | Reachable, unusable. |
| **GSA CALC+** `buy.gsa.gov/pricing/qr/mas` | **200** but JS-rendered | User-guide PDF also image-only. |
| **Census BTOS landing pages** `/hfp/btos`, `/hfp/btos/data` | **200** but JS SPA, title only | Data obtained from `/downloads/` files instead. |
| **BTOS `/downloads/` speculative filenames** (Firm Size, Size, Empsize, Firmsize, AI, AI_Supplement, National_AI, Sector_AI, Supplement, BTOS_AI) | **200 with a 4,113-byte error page** (soft-404) | Absence **not** proven by status code. |
| **SBA Advocacy** article pages | **403** both | Underlying PDF retrieved by curl (200); all SBA quotes come from that PDF. |

---

## GAPS — no credible source found

1. **Count of companies worldwide with more than ~50 employees.** Tried: World Bank/IFC MSME-EI Note (gives ~20m "formal SMEs", but the note's own thresholds put small at 10 and medium at 50–250, so 20m is roughly **10–249 employees**, *not* >50); IFC MSME factsheet Oct 2025 (percentages only); IFC MSME Finance page; World Bank Enterprise Surveys data page (explicitly no universe total); OECD "Enterprises by business size" (403); OECD SDBS SDMX dataflow (reachable, per-country only). **Unknown.**
2. **Count of companies worldwide with revenue above ~$10M.** No source found at any class — official, consultancy, or aggregator. The only revenue-banded register data verified is national: **US SUSB 285,007 firms ≥$10M receipts (2022)** and **UK IDBR 44,545 enterprises ≥£10m turnover (FY2023-24 basis)**. Vendor universes (D&B) count *records*, not revenue-qualified companies. **Unknown globally.**
3. **Average/median annual IT spend per company in currency, by size band, from a primary source.** The canonical source (Gartner IT Key Metrics Data) is 403/paywalled; Computer Economics is 403. The per-employee dollar bands in circulation trace to an AGGREGATOR whose citations name no retrievable document. Only Flexera's **cloud-only** figure survives as a per-company currency anchor. **Unknown.**
4. **Average annual spend per company on consulting / professional services (survey-based, client-side).** Source Global publishes only supplier-side totals; Kennedy/ALM not reached. **Note:** §B1 provides an official *US-only, selected-service-sectors-only* substitute (Census SAS "Purchased professional and technical services" ÷ SUSB firm count). No global or all-sector equivalent found.
5. **Average annual spend per company on outsourced software development / IT outsourcing.** ISG publishes aggregate ACV and contract counts but **no average contract value**; Deloitte GOS 2024 contains no spend figures (confirmed by full-text scan of the 11MB PDF, not by fetch failure); Everest Group is percentages only. **Unknown.**
6. **Average corporate spend on market research per company.** ESOMAR measures supplier-side turnover on a definition that sweeps in Salesforce, Adobe, Gartner, Deloitte and McKinsey — it cannot be inverted into client-side per-company spend. Greenbook GRIT publishes no budget figures and states no n. Insights Association data reachable only second-hand. **Unknown.**
7. **AI-readiness / AI-strategy consulting engagement price (ticket size).** No published price found from any source. Tried thoughtbot services page (no pricing) and AWS Marketplace professional-services search (JS-rendered, no extractable listings). **This is the weakest cell in the whole collection.**
8. **Private-sector published price for a technical/product discovery engagement.** Covered only from the public-sector side (DOS7 advertised values). No private agency publishing a discovery-sprint price was found.
9. **GSA SIN 541910 (Marketing Research and Analysis) published labor rates.** eLibrary listing fetched OK and yielded contract numbers (47QRAA20D008C, GS-00F-105DA, 47QTCA21D006V), but the corresponding GSA Advantage `ref_text` price lists returned only redirect stubs to `.docx` terms-and-conditions files, not rate tables.
10. **Absolute number (not %) of EU enterprises using AI.** Eurostat `isoc_eb_ai` carries unit "Percentage of enterprises" only. Deliberately **not** multiplied by SBS counts — the ICT survey frame (10+ employees, narrower NACE) differs from the SBS aggregate `B-S_X_O_S94` (which includes NACE K).
11. **Sample size (n) for every Eurostat ICT-survey figure** (AI use, cloud purchase, ICT outsourcing) — "n not stated" on all three pages.
12. **Per-wave BTOS respondent count.** Only the design (~1.2M sample, ~200,000 per panel) is published, not completed responses. Also: **no BTOS AI cross-tab by revenue band** was found.
13. **Share/number of businesses that report buying consulting or professional services.** No Eurostat or ONS survey measuring this. Closest verified proxies are IT-only (EU cloud purchase 52.74%; ICT functions outsourced 71.92%).
14. **US official class-of-customer split for professional services.** SAS Table 8 does not cover NAICS 54.
15. **Medium-sized (50–249) EU enterprises outsourcing ICT functions** — the source gives only large and small.
16. **Eurostat SBS on a strict non-financial-business-economy basis** — the verified aggregate includes NACE K.
17. **BLS Business Employment Dynamics size-class data** — 403 on all three pages tried. Not obtained.
18. **TCS revenue in USD, precise** — only the boilerplate "over US$30 billion". No currency conversion performed, per instruction.
19. **Upwork Marketplace take rate for Q2 2026** and **Fiverr GMV dollar figure for Q2 2026** — neither is stated in the respective release, and Upwork's is not computable to the company's own definition because Marketplace GSV is not broken out.

**Method constraint affecting coverage — stated plainly.** The session's WebSearch budget (200/200) was exhausted partway through collection. All subsequent work used direct WebFetch and `curl` against URLs already surfaced or constructed against documented APIs (Eurostat dissemination, Nomis, OECD SDMX, SEC EDGAR/XBRL, BSE India, BLS public API). Gaps 3, 4, 6 and 7 in particular are **under-searched, not proven empty**.