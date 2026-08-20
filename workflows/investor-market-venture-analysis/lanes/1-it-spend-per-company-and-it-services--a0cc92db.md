Evidence collection complete. Compiling.

## 1. IT SPEND PER COMPANY (and IT services)

| Figure | Value | Definitional boundary | Ref year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|---|
| IT spend as % of revenue, Financial Services | 4.4% (25th pct) – 11.4% (75th pct) | IT spending = "operational spending (including depreciation)" or cash basis incl. capital, omitting depreciation. Per company, % of revenue | Page states January 2021 | Avasant / Computer Economics, "IT Spending as a Percentage of Revenue by Industry, Company Size, and Region" | OTHER (analyst firm) | https://avasant.com/report/it-spending-as-a-percentage-of-revenue-by-industry-company-size-and-region/ | fetched OK | "4.4% at the 25th percentile to 11.4% at the 75th percentile" | "over 25 industry sectors"; respondent n not stated on this page | Med |
| IT spend as % of revenue, Discrete Manufacturing | 1.4% – 3.2% (25th/75th quartile) | same as above | January 2021 | same | OTHER | same URL | fetched OK | "1.4% and 3.2% at the 25th and 75th quartiles, respectively" | n not stated | Med |
| Effect of company size on IT % of revenue | Modest; larger > smaller within an industry | Directional only, no numbers | January 2021 | same | OTHER | same URL | fetched OK | "Larger companies within an industry tending to spend more on IT as a percentage of revenue than smaller companies"; "the effect of organization size is far less than the deviation by industry sector" | n not stated | Med |
| Public cloud spend per company, large enterprises | 76% spend **>$5M per month** on public cloud | Public cloud spend only (not total IT). Per organization, monthly. "Large enterprise" band not defined in the blog post | 2026 edition (pub. 18 Mar 2026) | Flexera 2026 State of the Cloud Report | OTHER (vendor survey) | https://www.flexera.com/blog/finops/flexera-2026-state-of-the-cloud-report-the-convergence-of-cloud-and-value/ | fetched OK (WebFetch + curl HTTP 200) | "76% of large enterprises now spend more than $5 million monthly on public cloud" | n=753. "based on a survey of 753 cloud decision-makers". Sampling frame NOT stated | **High** (verbatim re-verified against raw HTML) |
| Cloud spend by size band | Large ent. dominate $2M+/month; SMBs <$50K/month | Public cloud, monthly, per org | 2026 | same | OTHER | same URL | fetched OK | "Cloud spend scales with organization size, with large enterprises dominating $2M+ monthly spend while SMBs remain concentrated below $50K" | n=753, frame not stated | Med-High |
| Software audit spend | 44% spent >$1M on software audits over 3 years | Software audit cost only, per org, 3-year cumulative | 2026 | Flexera 2026 State of ITAM press release | OTHER | https://www.flexera.com/about-us/press-center/flexera-2026-state-of-itam-report-reveals-only-31-percent-organizations-have-visibility-into-ai-as-spend-surges | fetched OK | "44% report spending over $1 million on software audits over the past three years" | n=512 "technology professionals worldwide"; frame not stated | Med |
| IT spend per employee by size band | 1–49 emp: $1,800–$4,000; 50–249: $4,000–$7,500; 250–999: $6,000–$14,000; 1,000–4,999: $9,000–$15,000; 5,000+: $9,000–$14,000 | Annual IT spend per FTE, per company | 2026 | ITBudgetCalculator.com | **AGGREGATOR** | https://itbudgetcalculator.com/it-budget-per-employee | fetched OK | "$9,000–$14,000 per FTE annually"; sources given only as "Gartner IT Key Metrics summary, 2026 forecast briefing" and "Spiceworks State of IT" | **n not stated; no citable primary document named** | **Low — flagged** |

**Not obtainable:** Gartner IT Key Metrics Data 2025 (https://www.gartner.com/en/documents/5964539) — **HTTP 403** via WebFetch *and* via curl with browser UA. Source is reachable and real but paywalled. A search snippet asserted "4,733 CIOs and IT Leaders", "$16 trillion in total revenue", "$632 billion in total IT spend" — **I could not verify this by fetching and am not citing it as evidence.**
Computer Economics IT Spending & Staffing Benchmarks (https://www.computereconomics.com/it-spending-and-staffing-benchmarks/) — **HTTP 403** (WebFetch and curl). Reachable, blocked.
Spiceworks/Ziff Davis State of IT press release (businesswire) — **WebFetch timeout (60s exceeded)**; not retried successfully. SMB per-employee figures seen only in search snippets, unverified, **not cited**.

## 2. CONSULTING / PROFESSIONAL SERVICES SPEND PER COMPANY

| Figure | Value | Definitional boundary | Ref year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|---|
| Global consulting market | $275bn | Total market (supplier revenue), NOT per company | 2025 forecast | Source Global Research | OTHER (research firm) | https://www.sourceglobalresearch.com/blog-post/which-consulting-services-are-clients-set-to-buy-in-2025s-unreliable-market | WebFetch **HTTP 403**; curl HTTP 200 (content extracted) | "Source's latest market data indicates that the global consulting market will hit $275bn in 2025." | n/a — market model, method not stated on page | Med |
| Technology & innovation consulting | $69.2bn | Service-line market total | 2025 forecast | same | OTHER | same | curl 200 | "Technology & innovation is the largest consulting market, with a total value of $69.2bn forecast for 2025." | n/a | Med |
| Strategy consulting | >$60bn | Service-line market total | 2025 forecast | same | OTHER | same | curl 200 | "Strategy consulting remains the second-largest service line after technology & innovation, and is set to edge past $60bn for the first time in 2025." | n/a | Med |
| Risk & financial management | $58.7bn | Service-line market total | 2025 forecast | same | OTHER | same | curl 200 | "It remains the third largest of the consulting markets we cover and is set to hit $58.7bn in 2025" | n/a | Med |
| Cybersecurity consulting | ~$36bn (+9%) | Service-line market total | 2025 forecast | same | OTHER | same | curl 200 | "growth of around 9% forecast, enabling it to hit a total of around $36bn by the end of the year" | n/a | Med |
| Operations consulting | $36bn | Service-line market total | 2025 forecast | same | OTHER | same | curl 200 | "Operations remains a sizeable consulting market, with an expected value of $36bn in 2025." | n/a | Med |

**Per-company consulting spend: NOT FOUND.** Every Source Global figure is a supplier-side market total. See GAPS.

## 3. OUTSOURCED SOFTWARE DEVELOPMENT / IT OUTSOURCING

| Figure | Value | Definitional boundary | Ref year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|---|
| Managed services ACV, Q1 | $11.2bn (up 3% YoY) | Annual contract value of **commercial outsourcing contracts ≥$5M ACV only**. Aggregate, not per company | Q1 2026 | ISG Index™ | OTHER (analyst, public co. IR release) | https://ir.isg-one.com/news-market-information/press-releases/news-details/2026/Global-Technology-Services-Market-Surges-to-New-AI-Fueled-High-in-Q1-ISG-Index/default.aspx | fetched OK | "commercial outsourcing contracts with annual contract value (ACV) of $5 million or more" | Census of contracts ≥$5M ACV, not a survey | High |
| Managed services contract count, Q1 | 744 contracts (up 0.8% YoY) | Contracts ≥$5M ACV awarded in quarter | Q1 2026 | same | OTHER | same | fetched OK | (744 awarded; 6 mega-deals at $100M+) | as above | High |
| Combined market ACV | $39.4bn (+29%); XaaS $28.2bn; ITO $7.9bn; BPO $2.5bn; IaaS $23.1bn; SaaS $5.1bn | Aggregate quarterly ACV | Q1 2026 | same | OTHER | same | fetched OK | as listed | as above | High |
| Outsourcing survey base | ">500 global business and technology leaders, including more than 150 C-suite" | Survey respondent count | 2024 | Deloitte Global Outsourcing Survey 2024 | MAJOR_CONSULTANCY | https://www.deloitte.com/content/dam/assets-shared/docs/services/consulting/2025/global-outsourcing-survey-2024.pdf | WebFetch **failed: maxContentLength (10MB) exceeded**; retrieved by curl HTTP 200, 11,177,305 bytes, full text extracted | "Of surveyed respondents, 92% of the organizations today are leveraging or planning to leverage AI in their…" | n>500; fielding dates and revenue bands **not stated in the PDF** | Med |
| Outsourcing spend direction | Spend expected to increase for 40%; 20% planned reduction | Direction only | 2024 | same | MAJOR_CONSULTANCY | same | as above | "outsourcing are expected to increase for 40% of survey respondents, with only 20% reporting a planned reduction" | n>500 | Med |
| AI-ROI expectation | 80% expect positive ROI from AI | Expectation, not spend | Late 2025–early 2026 | Everest Group | OTHER (analyst) | https://www.everestgrp.com/press-release/crisis-is-the-new-normal-everest-group-finds-80-of-organizations-expect-ai-roi-but-execution-gaps-threaten-outcomes-in-2026/ | fetched OK | "80% of organizations expect positive ROI from AI"; "67% cite legacy infrastructure and 55% cite change management challenges" | n=200+ senior decision-makers; orgs with **annual revenue >$1bn**; N. America/Europe/APAC; 50%+ US/UK; LinkedIn-verified | Med-High (frame well stated) |

**ISG publishes ACV and contract count but does NOT publish an average contract value.** I have not divided one by the other — that would be a derivation, not evidence.
**Deloitte GOS 2024 contains NO per-company outsourcing spend figure.** I scanned the full extracted PDF text for `$`, "spend", "budget", "revenue" — only percentages. Confirmed absence, not a fetch failure.

## 4. MARKET RESEARCH SPEND

| Figure | Value | Definitional boundary | Ref year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|---|
| Global insights industry turnover | >US$150bn (2024); >US$160bn expected by end 2025 | **Supplier-side turnover**, not client spend. Includes 3 sectors (below) | 2024 actual / 2025 expected | ESOMAR Global Market Research 2025, via Research World (ESOMAR's own publication) | OTHER (industry association) | https://researchworld.com/articles/inside-the-153bn-insights-industry | fetched OK | "Globally, the insights industry is estimated to have surpassed US$150 billion as of 2024 and is expected to surpass US$160 billion by the end of this year." | Method: "A funnel-like approach where the respondent first estimates the size of the overall insights industry in their country…"; **n not stated** | Med |
| Sector split | Market research US$56bn; research software US$62bn; reporting US$35bn | See definitions below | 2024 | same | OTHER | same | fetched OK | as listed | n not stated | Med |
| Within market research sector | 62% full-service/MR services incl. fieldwork; 31% subscription/software; 7% consultancy | Share of the $56bn MR sector | 2024 | same | OTHER | same | fetched OK | "Approximately 62% is attributed to full-service and market research services (including fieldwork), 31% to firms providing subscription-based and research software services, and the remaining 7% to consultancy services." | n not stated | Med |
| Prior-year industry turnover | US$130bn → US$142bn (+8%) | Supplier-side turnover | 2023 | ESOMAR Global Market Research 2024 report page | OTHER | https://shop.esomar.org/knowledge-center/library?publication=3019 | fetched OK | "Globally, 2023 saw the insights industry expand by 8% from almost US$130 billion to US$142 billion." | "more than 110 countries representing 80% of the industry"; published 10 Sep 2024 | Med-High |
| ESOMAR report price | PDF EUR 390; Hardcover EUR 470; Hardcover+PDF EUR 480 (members EUR 80 / free) | Report purchase price | 2024 | same | OTHER | same | fetched OK | as listed | n/a | High |

**Definitional boundary — critical caveat (this is why the $150bn is NOT "corporate spend on market research"):**

| Sector | ESOMAR's stated inclusion | Source | Fetch status |
|---|---|---|---|
| Market research sector | "Companies and agencies with a focus on project-based research, and sample panel providers… Examples of market research firms include Nielsen, Kantar and Ipsos." | AAPOR 2025 insights-industry panel deck, quoting ESOMAR 2024 p.194 | https://aapor.confex.com/aapor/2025/mediafile/Handout/Session2112/Insights%20Industry%20panel%20at%20AAPOR%202025%20conference.pdf — fetched OK (PDF text extracted locally) |
| Research software sector | "Data-as-a-service (Daas), Software-as-a-service (Saas), data analytics solutions… Examples of digital data analytics includes Salesforce, Adobe, and NICE Systems." | same | same |
| Reporting sector | "Includes consultancy and industry reporting firms. Examples of consulting firms research companies include Deloitte, McKinsey & Co., and Booz Allen Hamilton. Examples of industry reports companies include Garner [sic], CoStar, and IHS Markit." | same | same |

So the headline insights-industry number **includes Salesforce, Adobe, Deloitte, McKinsey and Gartner revenue**. Class: OTHER. Confidence in the definitional quote: High.

**Per-company market research spend: NOT FOUND.** Greenbook GRIT page fetched OK but "contains no figures on market research budgets or spend per company" and states no n.

**Disagreement to report, not resolve:** ESOMAR's own 2024 report gives $142bn for 2023; the ESOMAR-published 2025 article gives ">$150bn as of 2024"; the same article's sector components sum to $153bn while its headline says "surpassed US$150 billion". Different vintages and roundings; I am not reconciling them.

## 5. ENTERPRISE GENERATIVE-AI SPEND PER COMPANY

| Figure | Value | Definitional boundary | Ref year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|---|
| **Annual genAI budget per company** | **~2/3 of enterprises budget $5M or more** | "your organization's approximate budget for Gen AI solutions and related services" — per company, per year | 2025 (fielded 26 Jun – 11 Jul 2025) | Wharton Human-AI Research & GBK Collective, "Accountable Acceleration: Gen AI Fast-Tracks Into the Enterprise" | OTHER (academic + research firm) | https://ai.wharton.upenn.edu/wp-content/uploads/2025/10/2025-Wharton-GBK-AI-Adoption-Report_Full-Report.pdf | WebFetch returned PDF unparsed; **PDF retrieved OK (4.2MB) and text extracted locally** | "Budgets for 2025 remain robust, with nearly two-thirds of enterprises budgeting $5M or more, led by Tier 1 organizations."; chart title: "Two-Thirds of Enterprises Are Investing $5M+"; question: "QSP1. What is your organization's approximate budget for Gen AI solutions and related services?" | **n=801**. Frame: "U.S.-based enterprise commercial organization (1000+ employees and >$50 million revenue)"; roles = senior decision makers in HR, IT, Legal, Marketing/Sales, Operations, Product/Engineering, Purchasing/Procurement, Finance/Accounting or General Management; 15-min online tracking survey | **High — best per-company genAI figure in this lane** |
| genAI budget, largest firms | 23% of Tier 1 invest $20M+ | Per company, per year | 2025 | same | OTHER | same | as above | "23% of Tier 1 enterprises are investing $20M or more – significantly higher than smaller firms." | Tier 1 = $2B+ revenue, **n=155** | High |
| Revenue tier bases | Tier 3 $50M–<$250M (n=218); Tier 2 $250M–<$2B (n=428); Tier 1 $2B+ (n=155) | Sampling frame | 2025 | same | OTHER | same | as above | "Tier 3 Enterprise ($50M - < $250M Annual Revenue)… Tier 2 Enterprise ($250M - < $2B Annual Revenue)… Tier 1 Enterprise ($2B+ Annual Revenue)"; "Total: 2025 (n=801)" | as listed | High |
| Highest-budget industries | Banking/Finance, Technology/Telecom, Professional Services | Industries with top average investment (+$10M) | 2025 | same | OTHER | same | as above | "The top average investments (+$10M) among industries are in Banking/ Finance, Technology/Telecom, and Professional Services." | Banking/Finance n=126, Prof. Services n=114, Tech/Telecom n=168, Retail n=107, Manufacturing n=197, Other n=184 | High |
| Budget direction | 88% expect increases next 12 months; 87% expect returns to accelerate | Forward expectation | 2025 | same | OTHER | same | as above | "88% expect budgets to increase in the next year—with technology and R&D leading the increases" | n=801 | High |
| Internal R&D share | ~30% of technology budgets → internal R&D | Share of genAI technology budget | 2025 | same | OTHER | same | as above | "Another 30% of technology budgets now go to internal R&D, according to those in IT functions" | n=801, IT-function subset | Med |
| Total US enterprise AI spend | $37bn in 2025, from $11.5bn (2024) and $1.7bn (2023) | **Aggregate market**, not per company. Apps $19bn + infrastructure $18bn | 2025 | Menlo Ventures, "2025: The State of Generative AI in the Enterprise" | OTHER (VC research) | https://menlovc.com/perspective/2025-the-state-of-generative-ai-in-the-enterprise/ | fetched OK | "Enterprise AI has surged from $1.7B to $37B since 2023, now capturing 6% of the global SaaS market and growing faster than any software category in history." | **n=495** US enterprise AI decision-makers, fielded **7–25 Nov 2025**; "C-suite executives, VPs of Engineering and Product, and technical leaders responsible for AI purchasing and development decisions at companies actively using AI tools"; research partner unnamed | High for the aggregate |
| Per-company average, Menlo | **not published** | — | 2025 | same | OTHER | same | fetched OK | Report "does not provide per-company average annual AI spending figures" and has "no breakdown by company size" | n=495 | — |

**Disagreement to report, not resolve:** Wharton (n=801, US firms 1,000+ employees / >$50M revenue) implies ~2/3 of that population budget ≥$5M/yr for genAI; Menlo (n=495) puts *total* US enterprise AI spend at $37bn for 2025. The two are not obviously reconcilable at face value (they use different universes, different spend definitions — Menlo counts model/app/infrastructure purchases, Wharton asks respondents for a self-reported budget for "Gen AI solutions and related services"). Both stated n's are solid; I am not resolving the tension.

**Not obtainable:** Deloitte "State of Generative AI in the Enterprise" — **HTTP 404** at https://www.deloitte.com/us/en/services/consulting/articles/state-of-generative-ai-in-enterprise.html. KPMG AI Quarterly Pulse — **HTTP 404** at three URLs tried. IBM IBV — **HTTP 403** at .../report/ai-roi; .../report/ceo-generative-ai returned HTTP 200 but is JS-rendered with no extractable text. Web search budget for the session was exhausted (200/200) before I could locate their canonical URLs, so these are **unlocated, not proven absent**.

## 6. PROJECT TICKET SIZES

### 6a. Market research / expert-network engagement pricing

| Figure | Value | Definitional boundary | Ref year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|---|
| Expert call hourly fee | $1,000–$1,250/hr average | Fee for one expert call, per hour; 30-min calls = 80% of hourly; 15-min increments | Live page, fetched 2026-08-20 | Inex One (expert-network marketplace) | OTHER (vendor published price) | https://inex.one/pricing | fetched OK | "Our average hourly fee ranges from $1,000 to $1,250." | n/a — published rate card | High |
| Expert-network platform subscription | $500/project; $2,500/yr Corporate; $10,000/yr Enterprise | Platform access fee, excludes call fees | fetched 2026-08-20 | same | OTHER | same | fetched OK | "$500 /project"; "$2,500 /year"; "$10,000 /year" | n/a | High |
| Research panel platform fee | 42.8% corporate / 33.3% academic | Fee on top of participant payments | fetched 2026-08-20 | Prolific | OTHER (vendor published price) | https://www.prolific.com/pricing | fetched OK | "For pay-as-you-go pricing, our platform fee is usually 42.8% for corporate customers, and a discounted 33.3% for academic or non-profit customers." | n/a | High |
| Participant pay floor | Recommend £9.00/$12.00 per hr; minimum £6.00/$8.00 per hr | Participant compensation, per hour of their time | fetched 2026-08-20 | Prolific | OTHER | same | fetched OK | "Typically, we recommend you pay participants at least £9.00 / $12.00 per hour, while the minimum pay allowed is £6.00 / $8.00 per hour." | n/a | High |
| Consumer research credits | Basic ≤50,000 credits; Standard ≤100,000; Elite ≤200,000; Custom 400,000+. 1 credit = one answer to one question from one person | Credit tiers — **no currency amounts published** | fetched 2026-08-20 | Attest | OTHER | https://www.askattest.com/pricing | fetched OK | "We have a usage-based model, where we count a credit as an answer to one survey question from one person."; "a 10 question survey to 500 people would equal 5,000 credits." | n/a. **No dollar/GBP figures published** — must book demo | High for structure, no price |

**Published research-seat pricing (Gartner, via a state contract that mirrors GSA) — highest-grade evidence in 6a:**

| Product | Annual fee (USD) | Definitional boundary | Ref year | Source | Class | URL | Fetch status | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|
| Executive Programs v2 — Guided Team Leader | 128,352 | Annual subscription fee per named seat/role | Effective 13 May 2024 | NY State OGS Contract PS66085, Award NEG-22601, Appendix E-3 "NYS Net Prices – Gartner Research and Advisory Services Pricing" | **GOV_STATISTIC** (published government contract price list) | https://online.ogs.ny.gov/purchase/prices/7300122601pl_gartner.pdf | WebFetch returned PDF unparsed; **PDF retrieved OK and text extracted locally** | n/a — published price list | High |
| Executive Programs v2 — Self-Directed Team Leader | 73,481 | same | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| Gartner for CIOs — Team Leader | 65,688 | same | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| Gartner for CIOs — Individual Access Advisor (single user) | 72,194 | same | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| IT Leadership Team Plus — Team Leader | 37,840 | same | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| IT Leadership Team — Cross Function Team Member | 20,522 | same | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| IT Leadership Team — Essentials Team Member | 10,290 | Lowest-priced seat on the list | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| Gartner for CISOs Executive — Individual Access (single user) | 139,193 | Highest single-seat price on the list | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| Global CIO Team Plus — Global CIO (Team Leader) | 225,424 | Invitation only | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |
| Technical Professionals Team (1 leader + up to 4 members) | 64,676 (+12,390 per extra member) | Team subscription | 13 May 2024 | same | GOV_STATISTIC | same | same | n/a | High |

Verbatim (pricing basis): *"The pricing in Section 1 is effective May 13, 2024, and is the same as the pricing Gartner offers on its GSA Contract."* Header: *"GARTNER Research Advisory Services (RAS) SUBSCRIPTIONS … ANNUAL FEE"*. Contract identifiers verbatim: *"State of New York OGS: Group: 73001 Award: NEG-22601 Contract: PS66085"*.

Washington State DES contract 05712 Gartner price list (https://apps.des.wa.gov/contracting/05712p22.pdf) — **fetched OK (HTTP 200, 457KB)** but the file is a **scanned image with no text layer** (Producer: "RICOH MP C6004ex", 9 pages, created 26 Feb 2020). No figures extractable. Reachable, unusable.

### 6b/6c. Discovery, technical analysis and fixed-scope build engagement prices

Published UK public-sector engagement values, live listing "34 results found in All lots", fetched 2026-08-20. Class: **GOV_STATISTIC**. URL: https://redirect.contractawardservice.gca.gov.uk/digital-outcomes/opportunities — WebFetch of the pre-redirect URL returned **HTTP 302 → https://redirect.contractawardservice.gca.gov.uk:443/digital-outcomes/opportunities**; the redirect target fetched **HTTP 200**. Definitional boundary: advertised contract Value for a named engagement under DOS7, GBP, whole contract (not annual). Confidence: High.

| Engagement (verbatim title) | Buyer | Advertised value | Lot |
|---|---|---|---|
| "DEPARTMENT FOR DIGITAL, CULTURE, MEDIA & SPORT … DCMS is seeking bids for a combined Discovery/Alpha programme" | DCMS | £470,000 | Lot 1: Digital Outcomes |
| "HOS0069 - Digital Delivery Partner (Work Package A – Discovery & Design)" | Housing Ombudsman | £352,000 | Lot 1 |
| "9-1-Peabody Website … Peabody requires a supplier to redesign and rebuild its public website, consolidating multiple sites into a single, accessible platfor[m]" | Peabody Trust | £250,000 | Lot 1 |
| "THE OFFICE OF QUALIFICATIONS AND EXAMINATIONS REGULATION" | Ofqual | £500,000 | Lot 1 |
| "C10333 - HHT Exit and Identity Modernisation … discovery, design, and migration preparation" | DWP | £1,500,000 | Lot 1 |
| "prj_16447 - Community Payback - next stage of modernisation" | Ministry of Justice | £7,200,000 | Lot 1 |
| "prj_14708 HMCTS Software Engineering Centre of Excellence" | Ministry of Justice | £4,000,000 | Lot 2 |
| "prj_17499 HMCTS Test Centre of Excellence" | Ministry of Justice | £7,100,000 | Lot 2 |
| "Prj_17622 Technology Operations Digital and Technology Delivery Services" | Ministry of Justice | £7,500,000 | Lot 2 |
| "FCDO/DDaT: Digital and Data: CPG/13857/2026 - Digital Products and Services,Corporate Enquiries Handling" | FCDO | £4,500,000 | Lot 2 |
| "The Garage Delivery Factory and Live Service Teams" | DWP | £120,000,000 | Lot 2 |
| "UK Health Security Agency Research Participant Recuitment Services" | UKHSA | £1,550,000 | Lot 4 |
| "9-4-THE GOOD GYM" | The Good Gym | £345,345 | Lot 4 |

14 of the listed opportunities carried a parseable Value; **one Lot 1 entry is advertised at £1**, evidently a placeholder — flagged, not treated as a real ticket size. I have deliberately not computed an average: the listing is a snapshot of currently-open tenders, not a sample frame.

**Aggregator cross-check (label: AGGREGATOR, treat as weaker):**

| Figure | Value | Definitional boundary | Ref year | Source | Class | URL | Fetch status | Verbatim quote | n / frame | Conf |
|---|---|---|---|---|---|---|---|---|---|---|
| Average software development project cost | $132,480.29 | Per project, from client-submitted reviews | "Updated August 19, 2026" | Clutch Software Development Pricing Guide | **AGGREGATOR** | https://clutch.co/developers/pricing | fetched OK | "Experienced software developers on Clutch cost between $10,000 to $49,000 per project"; average stated as $132,480.29 | **n not stated** — "data gathered through Clutch reviews", "verified project reviews"; total review count not published | Low-Med (self-selected reviews; the $132k average and the "$10,000 to $49,999 typical range" on the same page are internally inconsistent) |
| Average monthly cost | $10,209.39 | Per project per month | Aug 2026 | same | AGGREGATOR | same | fetched OK | as stated | n not stated | Low-Med |
| Average project length | ~13 months | Duration | Aug 2026 | same | AGGREGATOR | same | fetched OK | as stated | n not stated | Low-Med |
| Average app development project | $90,780.11, ~11 months | Per project | Aug 2026 | https://clutch.co/directory/mobile-application-developers/pricing (figure appeared on the developers/pricing page) | AGGREGATOR | as above | fetched OK | as stated | n not stated | Low-Med |

### 6d. AI-readiness / AI-strategy consulting engagement price

**NOT FOUND.** See GAPS.

### 6e. Hourly and daily rate cards — the strongest evidence in this lane

**UK — official cross-supplier average day rates (Crown Commercial Service / Government Commercial Agency, DOS 7 framework RM1043.9, agreement period 30 January 2026 – 29 July 2027).** Class: **GOV_STATISTIC**. URL: https://assets.applytosupply.digitalmarketplace.service.gov.uk/digital-outcomes-and-specialists-7/documents/reports/supplier-average-rates-report-digital-outcomes-and-specialists-7.csv — **fetched OK** (WebFetch confirmed headers and rows; curl HTTP 200, 43,339 bytes, 601 rows = 200 roles × 3 lots). Header row verbatim: `Role,Lot,Average rate,Minimum rate,Maximum rate`.

Definitional boundary — these are **day rates**, established verbatim from the page that publishes the file: *"You can download the average day rates for digital roles across all suppliers. This can guide you in setting your budget."* Currency GBP. VAT treatment is **not stated** on either the CSV or the framework page. Values are averages of supplier-submitted maximum rates across all framework suppliers, not transacted prices.

| Role | Digital Outcomes (Lot 1) avg | Digital Capability & Delivery Partners (Lot 2) avg | Digital Specialists (Lot 3) avg | Verbatim row (Lot 1) | Conf |
|---|---|---|---|---|---|
| Developer | £833.80 | £927.77 | £847.58 | `Developer,Digital Outcomes,833.8,47.0,9999.0` | High |
| Technical architect | £953.63 | £1,040.99 | £963.11 | `Technical architect,Digital Outcomes,953.63,47.0,9999.0` | High |
| Cyber security | £1,353.99 | £1,550.13 | £1,344.15 | `Cyber security,Digital Outcomes,1353.99,187.5,9999.0` | High |
| Delivery manager | £927.90 | £1,014.12 | £908.98 | `Delivery manager,Digital Outcomes,927.9,47.0,9999.0` | High |
| Product manager | £897.09 | £992.51 | £896.94 | `Product manager,Digital Outcomes,897.09,47.0,9999.0` | High |
| Business analyst | £856.86 | £929.86 | £844.17 | `Business analyst,Digital Outcomes,856.86,57.0,9999.0` | High |
| Data scientist | £926.20 | £1,005.26 | £911.69 | `Data scientist,Digital Outcomes,926.2,114.0,9999.0` | High |
| Data engineer | £835.48 | £926.34 | £844.58 | `Data engineer,Digital Outcomes,835.48,114.0,9999.0` | High |
| Service designer | £870.59 | £942.64 | £859.74 | `Service designer,Digital Outcomes,870.59,47.0,9999.0` | High |
| Security architect | £982.10 | £1,059.52 | £984.60 | `Security architect,Digital Outcomes,982.1,47.0,9999.0` | High |
| Test engineer | £814.88 | £901.93 | £815.81 | `Test engineer,Digital Outcomes,814.88,47.0,9999.0` | High |
| Test manager | £1,031.67 | £1,149.50 | £1,018.46 | `Test manager,Digital Outcomes,1031.67,98.0,9999.0` | High |
| Tester (QAT) | £696.80 | — | — | `Tester (QAT),Digital Outcomes,696.8,47.0,9999.0` | High |
| Performance analyst | £853.75 | £912.91 | £829.98 | `Performance analyst,Digital Outcomes,853.75,114.0,9999.0` | High |

**Caveat I must flag:** the Min/Max columns are contaminated by sentinel values — `9999.0` appears as the maximum for most Lot 1/Lot 3 roles and `1.0` as a minimum for Cyber security (Lot 3). Treat the **Average** column as the usable figure and the Min/Max as unreliable. Lot 2 maxima (£4,000–£4,200) look like genuine ceilings.

**UK — single-supplier published rate card, G-Cloud 14.** Class: OFFICIAL_FILING (supplier's published framework pricing document on the government asset host). URL: https://assets.applytosupply.digitalmarketplace.service.gov.uk/g-cloud-14/documents/92251/290454247729435-sfia-rate-card-2024-04-30-1635.pdf — WebFetch returned PDF unparsed; **PDF retrieved OK (98KB) and text extracted locally**. Supplier: Dell Technologies Services. Date on document: **26 April 2024**, "Services Reference SR # 000981798", Version 1.0.

| Group | Role | Day rate |
|---|---|---|
| Architecture | Solution Architect | £1,589.00 |
| Architecture | Sr Solution Architect | £1,738.00 |
| Consulting | Consultant | £1,568.00 |
| Consulting | Sr Consultant | £1,975.00 |
| Consulting | Advisory Consultant | £2,633.00 |
| Consulting | Principal Consultant | £2,927.00 |
| Deployment | Implementation Specialist | £1,154.00 |
| Deployment | Senior Implementation Specialist | £1,505.00 |
| PMO | Project Management | £1,316.00 |
| PMO | Senior Project Management | £1,514.00 |
| PMO | Program Manager | £1,711.00 |
| PMO | Sr Program Manager | £2,172.00 |

Definitional boundary, verbatim from the document: *"Rates provided are 'day rates' '7.5hr/day' during normal UK offices time typically 9am to 5.30pm and exclude weekends and holidays."*; *"All prices exclude VAT and any taxes as required by law."*; *"The rates provided are for Time and Material engagements only and do not include any travel and expenses"*; *"The rates provided are not applicable for fixed fee services."* Confidence: High.

**US — GSA Multiple Award Schedule published labor rates.** Class: **GOV_STATISTIC** (Authorized Federal Supply Schedule Price Lists).

| Contractor | Contract | SIN | Labor category | Rate (contract yr 6, 09/12/23–09/11/24) | Rate (contract yr 10, 09/12/27–09/11/28) | Boundary |
|---|---|---|---|---|---|---|
| Acquisition Professionals LLC | 47QRAA18D00FJ | 541611 | Acquisition Consultant | $127.83 | $151.85 | Hourly, **w/IFF**, header verbatim: "GSA Hourly Rates / SIN 541611 (w/IFF)" |
| " | " | 541611 | Acquisition Specialist III | $133.27 | $158.32 | same |
| " | " | 541611 | Business Systems Analyst | $89.17 | $105.92 | same |
| " | " | 541611 | Budget Analyst | $76.06 | $90.36 | same |
| " | " | 541611 | Administrative Assistant | $64.06 | $76.10 | same |

URL: https://acquisitionprofessionalsllc.com/wp-content/uploads/2024/03/GSA-Pricelist-AP-GSA-MAS-TC-Mod-37-1.pdf — WebFetch returned PDF unparsed; **PDF retrieved OK (170KB) and text extracted locally**. Contract period verbatim: *"Contract Period: September 12, 2018 – September 11, 2028"*; *"Pricelist current as of Modification # PS-0037, effective 01/24/2024."* Government net prices: *"Government net prices (discounts already deducted)."* Confidence: High.

| Contractor | Contract | SINs | Labor category | Rate yr 1 | Rate yr 5 |
|---|---|---|---|---|---|
| PDRI | GS-02F-086AA | 54161, 541611, 541611W, 56131, 541612EPM, 611430TD | Senior Manager | $364.93 | $410.73 |
| " | " | " | Assessment Expert | $331.75 | $373.38 |
| " | " | " | Project Director | $266.64 | $300.11 |
| " | " | " | Senior Assessment Consultant | $232.22 | $261.37 |
| " | " | " | Assessment Consultant | $182.09 | $204.93 |
| " | " | 54151S (IT Professional Services) | Program Manager | $181.79 | $199.10 |
| " | " | 54151S | Systems Engineer Manager | $225.72 | $247.21 |
| " | " | 54151S | Business Analyst | $154.76 | $169.49 |
| " | " | 54151S | Systems Engineer | $160.74 | $176.04 |

URL: https://pdri.com/wp-content/uploads/2024/04/Consolidated-GSA-Pricelist-020924.pdf — WebFetch returned PDF unparsed; **PDF retrieved OK (464KB) and text extracted locally**. Verbatim: *"Contract Number: GS-02F-086AA"*, *"Contract Period: January 22, 2023 through January 21, 2028"*. Hourly rates. Confidence: High. Also published on the same list: fixed unit prices for assessment products, e.g. *"360-degree Assessment | Per Assessment | $175.00"*, *"IT Professional Skills Assessment | Per Assessment | $35.00"* — relevant as fixed-scope unit pricing.

**US — GSA Advantage text price list (legacy, must be discounted):** 3T International, Inc., SIN 132-51 (retired legacy IT services SIN). https://www.gsaadvantage.gov/ref_text/GS35F0546K/GS35F0546K_online.htm — **fetched OK** (WebFetch and curl HTTP 200). Rates (contractor site / government site): Executive Program Manager $240.20/$180.00; Principal Consultant $198.92/$148.00; Subject Matter Expert $163.42/$157.79; Senior Consultant $114.53/$108.91; Programmer/Analyst $58.43/$52.21; Junior Programmer/Analyst $43.43/$38.83. Verbatim: *"All GSA prices pertain to SIN 132-51"*. **Reference year ~2003–2004** — the document's own embedded metadata reads `2003-09-22T19:32:00Z` / `2004-11-01T15:53:00Z`, and SIN 132-51 no longer exists post-MAS-consolidation. **Confidence for current pricing: Very low. Include only as a historical rate card.** I flag this because the figures surface in search results with no date attached and would be easy to mistake for current.

**Not obtainable:** CALC+ Quick Rate tool (https://buy.gsa.gov/pricing/qr/mas and .../qr/know-more) — **fetched OK (HTTP 200) but JS-rendered**; WebFetch received only the page title "IGCE (Independent Government Cost Estimate)" with no rate data. The CALC+ user guide PDF (https://buy.gsa.gov/pricing/assets/documents/user-guides/CALC+%20User%20Guide%20for%20Labor%20Ceiling%20Rates.pdf) fetched OK but is image-based with no usable text layer. Aggregate CALC averages (e.g. "software engineer $124/hr") appeared only in third-party blog summaries, which I did **not** cite.

## PROVEN ABSENT (404 / NXDOMAIN)

| URL | Status | What it was meant to provide |
|---|---|---|
| https://www.deloitte.com/us/en/services/consulting/articles/state-of-generative-ai-in-enterprise.html | HTTP 404 | Deloitte State of GenAI — per-company AI spend |
| https://www.surveymonkey.com/market-research/pricing/ | HTTP 404 | SurveyMonkey Audience per-respondent pricing |
| https://kpmg.com/us/en/media/news/ai-pulse-survey-q1-2025.html | HTTP 404 | KPMG AI Quarterly Pulse |
| https://kpmg.com/us/en/media/news/2025/ai-quarterly-pulse-survey-q2-2025.html | HTTP 404 (curl) | same |
| https://kpmg.com/us/en/articles/2025/ai-quarterly-pulse-survey-q1-2025.html | HTTP 404 (curl) | same |
| https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/search | HTTP 404 (WebFetch and curl) | G-Cloud service search — **retired on that host**; the asset host (assets.applytosupply…) still serves documents, and live search has moved to contractawardservice.gca.gov.uk |
| https://www.applytosupply.digitalmarketplace.service.gov.uk/g-cloud/search?q=rate+card | HTTP 404 | same |

Note: these 404s prove the *URL* is absent, not that the underlying report doesn't exist. The KPMG and Deloitte reports very likely exist at URLs I could not locate — see GAPS.

**Reachable but blocked (403 — source exists, keep):** Gartner IT Key Metrics Data 2025 (403 via WebFetch and curl); Computer Economics benchmarks page (403 both); IBM IBV AI-ROI report (403); AMSG GSA MAS price list (403); Source Global Research blog (403 via WebFetch, **200 via curl** — content obtained).

## GAPS — no credible source found

1. **Average/median annual IT spend per company expressed in currency, by size band, from a primary source.** The only per-company currency anchors I could verify are Flexera's cloud-only figure (>$5M/month for 76% of large enterprises) and Flexera's software-audit figure. Gartner IT Key Metrics Data — the canonical source — is 403/paywalled; Computer Economics is 403. The per-employee dollar bands in circulation trace to ITBudgetCalculator.com, an AGGREGATOR whose citations ("Gartner IT Key Metrics summary, 2026 forecast briefing") name no retrievable document. Tried: Gartner documents page, Computer Economics, Avasant, Flexera, Spiceworks/businesswire (timeout), ITBudgetCalculator.

2. **Average annual spend per company on consulting / professional services.** Source Global Research publishes only supplier-side market totals. No per-company or per-revenue-band client spend figure found. Kennedy/ALM Intelligence not reached (search budget exhausted before I could locate a live URL). Tried: Source Global Research blog and report pages, consultancy.org via search results only.

3. **Average annual spend per company on outsourced software development / IT outsourcing.** ISG publishes aggregate ACV and contract counts but no average contract value; Deloitte GOS 2024 contains no spend figures (verified by full-text scan of the PDF, not by failure to fetch); Everest Group's release is percentages only. Tried: ISG Index Q1 2026, Deloitte GOS 2024 full PDF, Deloitte GBS survey page, Everest Group press releases.

4. **Average corporate spend on market research per company.** ESOMAR measures supplier-side industry turnover, and its definition sweeps in Salesforce, Adobe, Gartner, Deloitte and McKinsey — so it cannot be inverted into a client-side per-company spend. Greenbook GRIT publishes no budget figures and states no n. Insights Association data reachable only second-hand through the AAPOR deck. Tried: Research World, ESOMAR shop and publications pages, Greenbook GRIT, AAPOR 2025 panel deck.

5. **AI-readiness / AI-strategy consulting engagement price (item 6d).** No published price found from any source. thoughtbot's services page publishes no pricing; AWS Marketplace professional-services search is JS-rendered and returned no extractable listings. This is the weakest cell in the lane. Tried: thoughtbot.com/services, AWS Marketplace professional-services search.

6. **Technical/product discovery engagement price from private-sector published pricing (item 6b).** Covered only from the public-sector side (DOS7 advertised values — DCMS Discovery/Alpha £470,000; Housing Ombudsman Discovery & Design £352,000). No private agency publishing a discovery-sprint price was found.

7. **GSA SIN 541910 (Marketing Research and Analysis) published labor rates.** eLibrary listing for SIN 541910 fetched OK (HTTP 200) and yielded contract numbers (47QRAA20D008C, GS-00F-105DA, 47QTCA21D006V), but the corresponding GSA Advantage `ref_text` price lists returned only redirect stubs to `.docx` terms-and-conditions files, not rate tables. Item 6a is therefore covered by expert networks and Gartner seat pricing, not by a government market-research rate card.

**Method constraint affecting coverage:** the session's WebSearch budget (200/200) was exhausted partway through. From that point I worked only from URLs already surfaced plus direct fetches, using Bash `curl` where WebFetch was blocked or size-limited. Bing and DuckDuckGo scraping via curl were attempted as substitutes and both failed to return parseable results (Bing HTTP 200 with no extractable result links; DuckDuckGo HTTP 202 challenge). This is the main reason items 2, 4 and 6d remain open — they are under-searched, not proven empty.