Evidence collection complete. Below is the full record.

---

# EU + UK + GLOBAL ENTITY COUNTS — EVIDENCE

## 1. EU — enterprises by size class (Eurostat SBS)

| Figure | Value | Definitional boundary | Ref. year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| EU27 enterprises, TOTAL | 33,065,522 | Enterprises (not local units). NACE aggregate `B-S_X_O_S94` = "Industry, construction and market services (except public administration and defence; compulsory social security; activities of membership organisations)". Geo `EU27_2020`. Indicator `ENT_NR`. | 2023 | Eurostat dataset `sbs_sc_ovw` via dissemination API | GOV_STATISTIC | https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/sbs_sc_ovw?format=JSON&geo=EU27_2020&indic_sbs=ENT_NR&time=2023&nace_r2=B-S_X_O_S94&lang=EN | fetched OK (twice, values identical both times) | dataset label `"Enterprise statistics by size class and NACE Rev. 2 activity (from 2021 onwards)"`; nace label `"Industry, construction and market services (except public administration and defence; compulsory social security; activities of membership organisations)"`; indicator label `"Enterprises - number"`; TOTAL = 33,065,522 | Census/register-based SBS, not a sample survey; n/a | High |
| EU27 micro, 0–9 persons employed | 31,190,636 | as above; size_emp `0-9` = "From 0 to 9 persons employed" | 2023 | same | GOV_STATISTIC | same URL | fetched OK | `"0-9 persons: 31,190,636"` (JSON value keyed to label "From 0 to 9 persons employed") | as above | High |
| EU27 10–19 persons employed | 1,023,841 | as above | 2023 | same | GOV_STATISTIC | same URL | fetched OK | `"10-19: 1,023,841"` | as above | High |
| EU27 20–49 persons employed | 547,973 | as above | 2023 | same | GOV_STATISTIC | same URL | fetched OK | `"20-49: 547,973"` | as above | High |
| EU27 medium, 50–249 | 248,817 | as above | 2023 | same | GOV_STATISTIC | same URL | fetched OK | `"50-249: 248,817"` | as above | High |
| EU27 large, 250+ | 54,256 | as above; size_emp `GE250` = "250 persons employed or more" | 2023 | same | GOV_STATISTIC | same URL | fetched OK | `"GE250: 54,256"` | as above | High |
| EU27 enterprises, TOTAL | 33,462,377 | as above; marked provisional, "last updated 10 March 2026" | 2024 | same dataset, `time=2024` | GOV_STATISTIC | https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/sbs_sc_ovw?format=JSON&geo=EU27_2020&indic_sbs=ENT_NR&time=2024&nace_r2=B-S_X_O_S94&lang=EN | fetched OK | `"Total: 33,462,377"` | as above | Medium-High (provisional) |
| EU27 micro 0–9 | 31,586,889 | as above | 2024 | same | GOV_STATISTIC | https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/sbs_sc_ovw?format=JSON&geo=EU27_2020&indic_sbs=ENT_NR&time=2024&nace_r2=B-S_X_O_S94&size_emp=0-9&lang=EN | fetched OK (isolated single-cell query to confirm the label) | `"From 0 to 9 persons employed"` … `31,586,889` | as above | Medium-High |
| EU27 10–19 / 20–49 / 50–249 / 250+ | 1,020,383 / 549,564 / 250,670 / 54,871 | as above | 2024 | same | GOV_STATISTIC | 2024 URL above | fetched OK | `"10-19 persons: 1,020,383 / 20-49 persons: 549,564 / 50-249 persons: 250,670 / 250+ persons: 54,871"` | as above | Medium-High |
| EU SMEs (0–249), narrative | "some 33.0 million", 99.8% of enterprises | "business economy", stated on that page as NACE Rev. 2 sections B–N, P–R + S95 + S96 | 2023 | Eurostat Statistics Explained, "Structural business statistics overview" | GOV_STATISTIC | https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Structural_business_statistics_overview | fetched OK | "The overwhelming majority (99.8%) of enterprises active within the EU's business economy in 2023 were micro, small and medium-sized enterprises (SMEs) – some 33.0 million" ; "Structural business statistics cover the 'business economy', which includes industry, construction and many services (NACE Rev. 2 sections B to N, P to R as well as division S95 and S96)." | n/a | High |
| EU micro share | 99.1% of enterprises | as above | 2023 | same | GOV_STATISTIC | same | fetched OK | "More than 9 out of 10 (99.1%) enterprises in the EU were micro enterprises (employing less than 10 persons)" | n/a | High |
| EU enterprises, total (news release) | "around 33.1 million" | "business economy" = "'industry', 'construction', 'distributive trades' (wholesale and retail trades) and 'services', and covers only 'market producers'" | 2023 | Eurostat news article ddn-20251013-2 | GOV_STATISTIC | https://ec.europa.eu/eurostat/web/products-eurostat-news/w/ddn-20251013-2 | fetched OK | "In 2023, there were around 33.1 million enterprises in the EU, employing 162.2 million people." ; "Large enterprises (with more than 249 people employed) represented only 0.2% of the total number of enterprises" ; "Medium-sized enterprises (50-249 people employed) constituted a small share of the total number of enterprises (0.8%)" ; "The majority, 99%, of the enterprises were micro and small enterprises (0-49 people employed)" | n/a | High |
| EU SMEs (SME Performance Review) | "34 million SMEs" | Definition/NACE scope **not stated on the fetched page** | 2025 | European Commission, Annual Report on European SMEs 2025/2026 landing page | GOV_STATISTIC | https://single-market-economy.ec.europa.eu/publications/annual-report-european-smes-20252026_en | fetched OK | "The EU's 34 million SMEs demonstrated solid growth in 2025 and are consolidating a recovery from recent crises." ; "Their real value added grew by 2.5%, employment by 1.0%, and the number of enterprises by 1.8%." | n/a | Medium (no scope definition on page) |

**Derived by summing published Eurostat bands (arithmetic on the figures above, not a published figure):**

| Derived figure | 2023 | 2024 (prov.) |
|---|---|---|
| Small (10–49) = (10–19)+(20–49) | 1,571,814 | 1,569,947 |
| 50+ persons employed = (50–249)+(250+) | 303,073 | 305,541 |
| 10+ persons employed | 1,874,887 | 1,875,488 |
| SMEs (total − 250+) | 33,011,266 | 33,407,506 |

Both years' five component bands sum exactly to the published TOTAL (2023 sum 33,065,523 vs published 33,065,522 — 1-unit rounding; 2024 sum matches exactly), which is the internal consistency check I used.

### EU disagreements observed (not resolved)
- **NACE scope wording differs between two Eurostat surfaces**: the Statistics Explained overview says the business economy is "NACE Rev. 2 sections B to N, P to R as well as division S95 and S96", while the databrowser aggregate carrying the 33.0m figure is labelled `B-S_X_O_S94` = "Industry, construction and market services (except public administration and defence; compulsory social security; activities of membership organisations)". These are not identical strings; I did not reconcile them.
- **"Non-financial business economy" was NOT the scope of the figures I could verify.** The verified aggregate `B-S_X_O_S94` **includes** NACE K (financial and insurance activities) — the NACE code list returned by the API explicitly contains K64, K65, K66. A strict "non-financial business economy" total is **unknown** from what I fetched.
- **33.0m SMEs (Eurostat SBS, 2023) vs 34m SMEs (SME Performance Review, 2025)** — different producers, different years, and the SME Performance Review page states no scope. Reported as-is.
- **33,065,522 (API, 2023) vs "around 33.1 million" (news release, 2023) vs "some 33.0 million SMEs" (Statistics Explained, 2023)** — the first is all enterprises, the third excludes large; the 33.1m/33.0m rounding is consistent with that but I did not verify the reconciliation from a source.

---

## 2. UK — business population

### 2a. DBT "Business population estimates" (whole population, incl. unregistered)

| Figure | Value | Definitional boundary | Ref. year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| UK private-sector businesses, total | 5.7 million | Private sector; includes VAT/PAYE-registered **and** unregistered; "sole proprietorships, ordinary partnerships, and companies" | start of 2025 | DBT, Business population estimates for the UK and regions 2025: statistical release | GOV_STATISTIC | https://www.gov.uk/government/statistics/business-population-estimates-2025/business-population-estimates-for-the-uk-and-regions-2025-statistical-release | fetched OK | "The number of private sector businesses in the United Kingdom (UK) at the start of 2025 was 5.7 million" ; "This publication provides the only official estimate of the total number of private sector businesses in the UK at the start of each year." ; "both those registered for Value Added Tax (VAT) and/or Pay As You Earn (PAYE) and unregistered businesses" | Modelled estimate combining IDBR + Labour Force Survey; **n not stated** on the page as fetched | High |
| — with no employees | 4,272,535 | as above (Table C) | start of 2025 | same | GOV_STATISTIC | same | fetched OK | Table C: "With no employees 4,272,535" | as above | High |
| — 1 to 9 employees | 1,150,875 | as above | start of 2025 | same | GOV_STATISTIC | same | fetched OK | Table C: "1 to 9 employees 1,150,875" | as above | High |
| — 10 to 49 employees | 220,085 | as above | start of 2025 | same | GOV_STATISTIC | same | fetched OK | Table C: "10 to 49 employees 220,085" | as above | High |
| — 50 to 249 employees | 38,435 | as above | start of 2025 | same | GOV_STATISTIC | same | fetched OK | "38,435 businesses were medium-sized (50 to 249 employees)" ; "Medium-sized business: a business with 50 to 249 employees" | as above | High |
| — 250+ employees | 8,335 | as above | start of 2025 | same | GOV_STATISTIC | same | fetched OK | "8,335 businesses were large (250 or more employees)" | as above | High |
| Employers vs non-employers | 1.4m (25%) employers / 4.3m (75%) non-employers | "did not employ anyone aside from the owners" | start of 2025 | same | GOV_STATISTIC | same | fetched OK | "1.4 million (25%) businesses had employees and 4.3 million (75%) did not employ anyone aside from the owners" | as above | High |
| Registered vs unregistered | 2.6m registered (46%) / 3.0m unregistered (54%) | VAT and/or PAYE registration | start of 2025 | same | GOV_STATISTIC | same | fetched OK | "At the start of 2025, ONS recorded 2.6 million private sector businesses as registered for VAT and/or PAYE, 46% of the estimated total population" ; "3.0 million businesses (54%) traded without being registered for VAT or PAYE and are classified here as unregistered" | as above | High |

Component sum 4,272,535+1,150,875+220,085+38,435+8,335 = 5,690,265 ≈ the stated 5.7m (my arithmetic).

### 2b. ONS "UK Business: activity, size and location" (IDBR, VAT/PAYE-registered only)

| Figure | Value | Definitional boundary | Ref. year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| UK VAT/PAYE businesses (enterprises) | 2.73 million | Enterprises registered for VAT and/or PAYE only; excludes unregistered businesses. "For this release, the term 'business' is used to represent an enterprise." | IDBR snapshot 14 March 2025 | ONS bulletin, UK business; activity, size and location: 2025 | GOV_STATISTIC | https://www.ons.gov.uk/businessindustryandtrade/business/activitysizeandlocation/bulletins/ukbusinessactivitysizeandlocation/2025 | fetched OK | "There were 2.73 million Value Added Tax (VAT) and/or Pay As You Earn (PAYE) businesses in the UK as of March 2025" ; "a snapshot of the Inter-Departmental Business Register (IDBR) taken on 14 March 2025" | Administrative register, not a survey | High |
| Enterprises, TOTAL | 2,734,615 | Enterprise = "the smallest combination of legal units which has a certain degree of autonomy within an Enterprise Group" | 2025 | Nomis dataset NM_142_1, "UK Business Counts - enterprises by industry and employment size band" (IDBR extract) | GOV_STATISTIC | https://www.nomisweb.co.uk/api/v01/dataset/NM_142_1.data.csv?geography=2092957697&industry=37748736&employment_sizeband=0,1,2,3,4,5,6,7,8,9&legal_status=0&measures=20100&date=latest | fetched OK | dataset title (from https://www.nomisweb.co.uk/api/v01/dataset/NM_142_1.def.sdmx.xml, fetched OK): "UK Business Counts - enterprises by industry and employment size band"; description "An extract compiled from the Inter Departmental Business Register (IDBR) recording the number of Enterprises that were live at a reference date in March"; Total = 2,734,615 | register | High |
| — 0 to 4 | 2,137,205 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "0 to 4 \| 2,137,205" | register | High |
| — 5 to 9 | 300,645 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "5 to 9 \| 300,645" | register | High |
| — 10 to 19 | 156,590 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "10 to 19 \| 156,590" | register | High |
| — 20 to 49 | 84,595 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "20 to 49 \| 84,595" | register | High |
| — 50 to 99 | 29,335 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "50 to 99 \| 29,335" | register | High |
| — 100 to 249 | 14,835 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "100 to 249 \| 14,835" | register | High |
| — 250 to 499 | 5,485 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "250 to 499 \| 5,485" | register | High |
| — 500 to 999 | 2,900 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "500 to 999 \| 2,900" | register | High |
| — 1000+ | 3,030 | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "1000+ \| 3,030" | register | High |
| UK **local units** (contrast) | 3,180,620 | **Local units, not enterprises** — "local units are individual sites belonging to an enterprise" | 2025 | Nomis NM_141_1, "UK Business Counts - local units by industry and employment size band" | GOV_STATISTIC | https://www.nomisweb.co.uk/api/v01/dataset/NM_141_1.data.csv?geography=2092957697&industry=37748736&employment_sizeband=0,1,2,3,4,5,6,7,8,9&legal_status=0&measures=20100&date=latest | fetched OK | "Total \| 3,180,620"; def (https://www.nomisweb.co.uk/api/v01/dataset/NM_141_1.def.sdmx.xml, fetched OK): "UK Business Counts - local units by industry and employment size band" … "recording the number of Local Units that were live at a reference date in March" | register | High |

### 2c. UK enterprises by **turnover** size band (IDBR)

| Turnover band (£000) | Enterprises, 2025 |
|---|---|
| 0 to 49 | 387,285 |
| 50 to 99 | 525,225 |
| 100 to 249 | 873,705 |
| 250 to 499 | 390,055 |
| 500 to 999 | 244,225 |
| 1,000 to 1,999 | 137,320 |
| 2,000 to 4,999 | 95,475 |
| 5,000 to 9,999 | 36,775 |
| 10,000 to 49,999 | 33,525 |
| 50,000+ | 11,020 |
| **Total** | **2,734,615** |

Source: Nomis NM_199_1 "UK Business Counts - enterprises by industry and turnover size band" (GOV_STATISTIC). URL: https://www.nomisweb.co.uk/api/v01/dataset/NM_199_1.data.csv?geography=2092957697&industry=37748736&turnover_sizeband=0,1,2,3,4,5,6,7,8,9,10&legal_status=0&measures=20100&date=latest — **fetch status: fetched OK**. Band labels verbatim from https://www.nomisweb.co.uk/api/v01/codelist/CL_199_1_TURNOVER_SIZEBAND.def.sdmx.xml (fetched OK): `"10000 to 49999 (thousand)"`, `"50000+ (thousand)"`. Definitional boundary: VAT/PAYE-registered enterprises only; the ONS bulletin states turnover "is based on VAT returns for a 12-month period. For 2025, these relate to a 12-month period covering the financial year 2023 to 2024" — i.e. **the turnover reference period is FY2023-24, not 2025**. Confidence: High.

**Derived by summing published UK bands (my arithmetic, not published):** enterprises with 50+ employees = 55,585; with 250+ employees = 11,415; with turnover ≥ £10m = 44,545.

### UK disagreements observed (not resolved)
- **250+ employees: 8,335 (DBT BPE, start-2025) vs 11,415 (ONS IDBR, March-2025 snapshot, sum of 250–499 + 500–999 + 1000+).**
- **50–249 employees: 38,435 (DBT BPE) vs 44,170 (ONS IDBR, sum of 50–99 + 100–249).**
- **10–49 employees: 220,085 (DBT BPE) vs 241,185 (ONS IDBR, sum of 10–19 + 20–49).**
These two publications use different units and methods (BPE is a modelled whole-population estimate incl. unregistered; IDBR counts registered enterprises) but I did not find a source reconciling the divergence in the *upper* size bands, where unregistered businesses should be irrelevant. Reported unresolved.

---

## 3. Global entity counts

| Figure | Value | Definitional boundary | Ref. year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| Formal MSMEs worldwide | "over 322 million" | Formally registered MSMEs; country-specific national definitions, not harmonised — "the thresholds for classifying an enterprise by size vary across countries" | data collection ended 2019 (data collected July–December 2018) | World Bank Group / IFC, "Micro, Small and Medium Enterprises Economic Indicators (MSME-EI) Analysis Note", December 2019 | GOV_STATISTIC (IFI official publication) | https://documents1.worldbank.org/curated/en/873301627470308867/pdf/Micro-Small-and-Medium-Enterprises-Economic-Indicators-MSME-EI-Analysis-Note.pdf | fetched OK (WebFetch returned binary; text extracted locally with `pdftotext`) | "It is estimated that at the end of the data collection period in 2019, there were over 322 million formal MSMEs, employing more than 705 million people." | Secondary compilation of national official sources ("mainly census"), 176 economies; the same document also says "in the 77 economies where data is available" — see disagreement note | Medium |
| Formal **SMEs** worldwide (small + medium, excl. micro) | "about 20 million" | Small + medium only; national definitions; the note states "the common threshold levels for small and micro enterprises are 50 and 10 employees, respectively" and "the most common threshold for defining a MSME by the number of employees is 250 globally" | as above | same | GOV_STATISTIC | same | fetched OK | "There are about 20 million formal SMEs, with about 5 million operating in emerging markets." | as above | Medium |
| Formal microenterprises worldwide | "around 277 million" | as above | as above | same | GOV_STATISTIC | same | fetched OK | "There are around 277 million formal microenterprises, with emerging markets accounting for about 189 million." | as above | Medium |
| MSMEs reported only as an undifferentiated total | "around 26 million" | countries reporting no size split | as above | same | GOV_STATISTIC | same | fetched OK | "a number of countries only report data for the MSME sector as a whole, with a total of around 26 million MSMEs." | as above | Medium |
| MSME share of firms | "over 90% of all firms" | no count, no threshold, no source cited on the page | "As of October 2025" (factsheet date) | IFC Financial Institutions Group MSME factsheet | GOV_STATISTIC | https://www.ifc.org/content/dam/ifc/doclink/latest/msme-s-factsheet-ifc-financial-institutions-group.pdf | fetched OK (binary; extracted with `pdftotext`) | "MSMEs make up over 90% of all firms and account, on average, for 70% of total employment and 50% of GDP worldwide." | n not stated; no source cited | Low (no count, no definition) |
| Same statement, IFC web page | "over 90% of all firms" | as above | not stated | IFC MSME Finance page | GOV_STATISTIC | https://www.ifc.org/en/what-we-do/sector-expertise/financial-institutions/msme-finance | fetched OK | "MSMEs make up over 90% of all firms and account, on average, for 70% of total employment and 50% of GDP worldwide." | n not stated | Low |
| D-U-N-S Number records | "over 500 million records" | Business *records/identifiers*, not enterprises above any size threshold; includes branches, sites, defunct records | announced 14 November 2022 | Dun & Bradstreet press release (PR Newswire) | AGGREGATOR | https://www.prnewswire.com/news-releases/dun--bradstreet-announces-over-500m-duns-numbers-in-its-data-cloud-301676803.html | fetched OK | "Dun & Bradstreet a leading global provider of business decisioning data and analytics, today announced that its database of the world-renowned D–U–N–S® Number had crossed over 500 million records in the Dun & Bradstreet Data Cloud." | vendor database, not a statistical universe | Medium (vendor self-report) |
| D-U-N-S Number records | "more than 600 million businesses worldwide" | as above | URL path indicates 26 November 2025; **the fetched page rendered the date as "9 months ago (published August 20, 2026)" — date ambiguous, flagged** | ThisDay Live, quoting Atinuke Williams, Senior Manager of Customer Success & Engagement, Dun & Bradstreet Nigeria | REPUTABLE_MEDIA reporting an AGGREGATOR claim | https://www.thisdaylive.com/2025/11/26/dun-bradstreet-over-600m-businesses-identified-through-duns-number/ | fetched OK | "more than 600 million businesses worldwide are now recognised and verified through the DUNS Number" | vendor self-report relayed by media | Low-Medium |
| Count of companies worldwide with >50 employees | **unknown** | — | — | — | — | — | see "GAPS" below | — | — | — |
| Count of companies worldwide with >$10M revenue | **unknown** | — | — | — | — | — | see "GAPS" below | — | — | — |

### Global disagreements / internal inconsistencies observed (not resolved)
- **Within the World Bank/IFC MSME-EI note itself**: the Foreword says the database "provides economy-level data for MSMEs in 176 economies" and reports "over 322 million formal MSMEs"; the Abstract says "in the 77 economies where data is available, there are 322 million formal MSMEs". Same total attributed to two different economy counts in the same document.
- **World Bank Enterprise Surveys** publishes indicators and firm-level microdata, not a universe count: "more than 150 economies"; informal sector surveys cover "over 35,000 unregistered businesses in more than 40+ cities"; micro surveys cover "businesses with 1-4 workers across 35 economies". URL https://www.enterprisesurveys.org/en/data — **fetched OK**. It does **not** state a worldwide firm count.
- **OECD SDBS** exists and is per-country, not worldwide. Dataflow metadata fetched OK at https://sdmx.oecd.org/public/rest/dataflow/OECD.SDD.TPS/DSD_SDBSBSC_ISIC4@DF_SDBS_ISIC4/1.0?references=all — name "Structural business statistics by size class and economic activity (ISIC Rev. 4)", dimensions include `REF_AREA`, `SIZE_CLASS` (codes seen include `_T`, `S1T249`, `S_GE250`), `MEASURE`, `ACTIVITY`. Coverage is OECD member economies; no world aggregate observed.

---

## 4. EU — use of AI in enterprises

| Figure | Value | Definitional boundary | Ref. year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| EU enterprises using AI technologies | 19.95% | Enterprises with 10+ employees and self-employed persons; NACE Rev. 2 market sectors (manufacturing, construction, wholesale/retail, transport, accommodation, ICT, real estate, professional/scientific/technical, administrative). Percentage only — **absolute number not published on the page** | 2025 | Eurostat Statistics Explained, "Use of artificial intelligence in enterprises" | GOV_STATISTIC | https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Use_of_artificial_intelligence_in_enterprises | fetched OK (fetched twice) | "In 2025, 19.95% of EU enterprises used AI technologies" — the technologies enumerated on the page: "text mining", "speech recognition", "natural language generation", "image generation", "image recognition", "machine learning", "robotic process automation", "autonomous physical movement technologies"; scope: "covered enterprises with at least 10 employees and self-employed persons"; "Data extracted in December 2025" | EU survey on 'ICT usage and e-commerce in enterprises'; **n not stated** on the page | High for the %, n/a for counts |
| Small enterprises (10–49) using AI | 17% | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "In 2025, 17% of small enterprises, 30.36% of medium enterprises and 55.03% of large enterprises used AI." | n not stated | High |
| Medium (50–249) using AI | 30.36% | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | same quote | n not stated | High |
| Large (250+) using AI | 55.03% | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | same quote | n not stated | High |
| Year-on-year change | +6.47 percentage points vs 2024 | as above | 2024→2025 | same | GOV_STATISTIC | same | fetched OK | "Compared with 2024, the use of AI technologies increased by 6.47 percentage points." | n not stated | High |
| Number (not %) of EU enterprises using AI | **unknown** | — | — | — | — | — | not published on the fetched page; the underlying dataset `isoc_eb_ai` has unit "Percentage of enterprises" only | — | — | — |

### Caveats / inconsistencies on the AI figures
- **Reference-year wording conflict within the same page.** One fetch of the page returned: "The data presented are based on results from the 2024 EU survey on 'ICT usage and e-commerce in enterprises,' with statistics obtained from surveys conducted by National Statistical Authorities in the first months of 2025", while the headline text reads "In 2025, 19.95% of EU enterprises used AI technologies" and "Data extracted in December 2025". I did not resolve which survey wave/label is correct.
- **API cross-check was unusable.** I queried `isoc_eb_ai` directly (https://ec.europa.eu/eurostat/api/dissemination/statistics/1.0/data/isoc_eb_ai?format=JSON&geo=EU27_2020&lang=EN&time=2025&unit=PC_ENT&size_emp=GE10, **fetched OK**). The response confirmed the dataset label "Artificial intelligence by size class of enterprise", the size classes ("From 10 to 49 persons employed", "From 50 to 249 persons employed", "250 persons employed or more", "10 persons employed or more"), and unit "Percentage of enterprises". However the value-to-indicator mapping returned by the fetch was internally contradictory (it reported "at least 3 technologies" 59.29% > "at least 2 technologies" 54.15%, which is impossible), so **I discard those API values entirely** and rely only on the Statistics Explained prose. A separate query with `indic_is=E_AI` returned an empty value set (code not valid).
- **The AI survey frame is narrower than the SBS enterprise universe** (ICT survey excludes some NACE activities and covers only 10+ employees). I therefore did **not** multiply the AI percentages by the SBS 10+ counts.

---

## 5. EU — businesses buying IT / cloud / outsourced services

| Figure | Value | Definitional boundary | Ref. year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| EU enterprises using **paid** cloud computing services | 52.74% | Enterprises with at least 10 employees or self-employed persons; EU Member States (article also covers Norway and candidate countries) | 2025 | Eurostat Statistics Explained, "Cloud computing - statistics on the use by enterprises" | GOV_STATISTIC | https://ec.europa.eu/eurostat/statistics-explained/index.php?title=Cloud_computing_-_statistics_on_the_use_by_enterprises | fetched OK (fetched twice) | "52.74% of EU enterprises used paid cloud computing services in 2025, mostly for e-mail, office software and storage of files."; scope: "covered enterprises with at least 10 employees or self-employed persons"; "Data extracted in January 2026" | EU survey on ICT usage and e-commerce in enterprises; **n not stated** | High |
| Large (250+) buying cloud services | 84.67% | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "84.67% reported purchasing such services in 2025" | n not stated | High |
| Medium (50–249) buying cloud services | 66.78% | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "66.78% of medium-sized enterprises used purchased cloud computing services" | n not stated | High |
| Small (10–49) buying cloud services | 49.3% | as above | 2025 | same | GOV_STATISTIC | same | fetched OK | "the share of enterprises using paid cloud computing services increased in the same time period by 7.48 pp to 49.3%" | n not stated | High |
| EU enterprises where **external suppliers performed the ICT functions** (bought-in IT services) | 71.92% | Enterprises with 10 or more employees or self-employed persons; NACE Rev. 2 market sectors | 2023 | Eurostat Statistics Explained, "ICT specialists - statistics on hard-to-fill vacancies in enterprises" | GOV_STATISTIC | https://ec.europa.eu/eurostat/statistics-explained/index.php?title=ICT_specialists_-_statistics_on_hard-to-fill_vacancies_in_enterprises | fetched OK | "In 2023, in 71.92% of EU enterprises external suppliers performed the ICT functions." ; "2024 Community survey on 'ICT usage and e-commerce in enterprises'" ; "Data extracted in June 2025" | **n not stated** | High |
| Large enterprises outsourcing ICT functions | 83.29% | as above | 2023 | same | GOV_STATISTIC | same | fetched OK | "The share of enterprises outsourcing their ICT functions reached 83.29% among large enterprises, compared with 70.19% for small enterprises." | n not stated | High |
| Small enterprises outsourcing ICT functions | 70.19% | as above | 2023 | same | GOV_STATISTIC | same | fetched OK | same quote | n not stated | High |
| EU enterprises employing ICT specialists (contrast: in-house) | 20.05% | as above | 2024 | same | GOV_STATISTIC | same | fetched OK | "20.05% of EU enterprises employed ICT specialists in 2024." ; "The percentage of large enterprises employing ICT specialists (78.44%) was in 2024 more than 5 times higher than the ratio of small sized enterprises employing ICT specialists (14.04%)." | n not stated | High |
| Medium enterprises outsourcing ICT functions | **unknown** | — | — | — | — | — | the fetched sentence gives only large and small | — | — | — |
| Share of businesses buying **consulting / professional services** (management, legal, accounting, advisory) | **unknown** | — | — | — | — | — | see "GAPS" | — | — | — |

---

## PROVEN ABSENT (404 / NXDOMAIN)

| URL | Observed |
|---|---|
| https://ec.europa.eu/eurostat/statistics-explained/index.php?title=ICT_specialists_in_enterprises | **HTTP 404 Not Found** — this Statistics Explained article title does not exist. The correct title (found via the site's own search page, fetched OK) is "ICT specialists - statistics on hard-to-fill vacancies in enterprises". |
| https://www.smefinanceforum.org/data-sites/msme-country-indicators | **HTTP 404 Not Found** |
| https://sdmx.oecd.org/public/rest/data/OECD.SDD.TPS,DSD_SDBSBSC_ISIC4@DF_SDBS_ISIC4,1.0/.A.ENT_NB._T._T.._T?startPeriod=2022&format=csvfile&dimensionAtObservation=AllDimensions | **HTTP 404 Not Found** — this specific key/measure-code query path is invalid. The dataflow itself IS reachable (fetched OK, see §3), so this is a wrong-key error, **not** evidence the OECD data is absent. |

### Other non-200 outcomes (source reachable — NOT absent)

| URL | Observed |
|---|---|
| https://www.oecd.org/en/data/indicators/enterprises-by-business-size.html | **HTTP 403 Forbidden** — server answered; source exists, content not retrieved by me. |
| https://www.statista.com/statistics/1261035/large-global-companies/ | **Too many redirects (exceeded 10)** — server answered with a redirect loop (likely consent/paywall gate); source exists, content not retrieved. Would have been AGGREGATOR class in any case. |
| https://www.nomisweb.co.uk/api/v01/dataset/NM_143_1.data.csv?... | **Empty response body, no error** — wrong dataset id on my part; the correct turnover dataset is NM_199_1 (fetched OK). |
| https://www.ifc.org/content/dam/ifc/doclink/latest/msme-s-factsheet-ifc-financial-institutions-group.pdf and https://documents1.worldbank.org/.../MSME-EI-Analysis-Note.pdf | **HTTP 200, binary PDF** — WebFetch could not parse; both were saved locally and text-extracted with `pdftotext`. Quotes above come from that extraction. |

---

## GAPS — no credible source found

1. **Count of companies worldwide with more than ~50 employees.** No official or credible source found stating this. Tried: World Bank/IFC MSME-EI Analysis Note (gives ~20m formal SMEs, but the note's own thresholds place "small" at 10 and "medium" at 50–250, so 20m is *small + medium*, i.e. roughly 10–249 employees, **not** >50); IFC MSME factsheet Oct 2025 (percentages only, no count); IFC MSME Finance web page (same); World Bank Enterprise Surveys data page (indicators + microdata, explicitly no universe total); OECD "Enterprises by business size" indicator page (HTTP 403); OECD SDBS SDMX dataflow (reachable, per-country only, no world aggregate). Nothing found.

2. **Count of companies worldwide with revenue above ~$10M.** No source found at all — official, consultancy, or aggregator. The only revenue-banded register data I could verify is national (UK IDBR turnover bands, §2c). Vendor universes (D&B) count *records*, not revenue-qualified companies. Unknown.

3. **Absolute number (not %) of EU enterprises using AI.** The Eurostat `isoc_eb_ai` dataset carries unit "Percentage of enterprises" only; the Statistics Explained article publishes no counts. I deliberately did not multiply the AI share by SBS enterprise counts because the two have different sampling/coverage frames (ICT survey excludes several NACE activities present in the SBS aggregate `B-S_X_O_S94`, which notably includes NACE K). Unknown.

4. **Sample size (n) and sampling frame detail for every Eurostat ICT-survey figure** (AI use, cloud purchase, ICT outsourcing). None of the three Statistics Explained pages I fetched states n. Written as "n not stated" throughout.

5. **Share/number of businesses that report buying consulting or professional services** (management consulting, legal, accounting, advisory). No Eurostat or ONS survey measuring this was located. The closest verified measures are proxies for *IT* services only: cloud purchase (52.74% EU, 2025) and ICT functions performed by external suppliers (71.92% EU, 2023). Tried: Eurostat Statistics Explained search for "ICT specialists external suppliers" (fetched OK, returned exactly one article — the vacancies one already cited). No consulting/professional-services purchase statistic found. Unknown.

6. **Eurostat SBS on a strict "non-financial business economy" basis.** The verified aggregate `B-S_X_O_S94` includes NACE K (financial and insurance). A non-financial-only EU total by size class was not retrieved. Unknown from what I fetched.

7. **Medium-sized (50–249) EU enterprises outsourcing ICT functions.** The fetched sentence reports only large (83.29%) and small (70.19%). Unknown.

8. **WebSearch budget exhausted** (200/200 calls) partway through the global lane. All work after that point was done by direct WebFetch against URLs already surfaced or constructed against documented APIs (Eurostat dissemination API, Nomis API, OECD SDMX). Additional global-lane sources that would normally be reached via search (S&P Capital IQ published universe counts, Bureau van Dijk/Orbis, ILO enterprise counts) were **not** attempted and should be treated as untested, not absent.