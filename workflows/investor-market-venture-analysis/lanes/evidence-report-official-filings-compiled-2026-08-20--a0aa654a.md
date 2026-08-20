All data gathered. Here is the evidence report.

---

# Evidence Report — Official Filings (compiled 2026-08-20)

## Fetch-method note (important for the fetch-status column)

`WebFetch` is blocked by **sec.gov** (HTTP 403 on every Archives URL tried) and by **www.tcs.com** (HTTP 403 on every path, including `/robots.txt`). Both servers answered — the sources are reachable, not absent. Where WebFetch returned 403 I re-fetched the identical URL with `curl` sending an SEC-compliant User-Agent (`Talomnia Research [email redacted per TZ 3.3]`), which returned **HTTP 200** for sec.gov. TCS returned **403 to both methods**, so TCS figures come from TCS's own SEBI/exchange filings retrieved via BSE India (`bseindia.com`, the filing repository — the documents are TCS's own signed press release and results statement, so still OFFICIAL_FILING). Every fetch status below is the observed one.

`WebSearch` hit its session budget (200/200) after 2 calls; all remaining discovery was done via SEC EDGAR's `data.sec.gov/submissions` JSON API and the BSE announcements API, both fetched directly.

---

## Table A — Listed professional-services firms

| Company | Metric | Value | Currency | Fiscal year + end date | Source | Class | URL | Fetch status | Verbatim quote | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| Accenture plc | Revenue, latest completed FY | 69,672,977 thousand ($69.67bn) | USD | FY2025, ended **Aug 31, 2025** | 8-K Ex-99, Q4/FY25 earnings release, dated Sept 25 2025 | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1467373/000146737325000213/q4fy25earnings8-kexhibit.htm | WebFetch **HTTP 403**; curl w/ SEC UA **HTTP 200** | "Total Revenues $ 69,672,977 $ 64,896,464 7% 7%" | High |
| Accenture plc | Revenue (headline) + YoY growth (company-stated) | $69.7bn; **+7% in USD and +7% in local currency** | USD | FY2025, ended Aug 31, 2025 | same 8-K Ex-99 | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "$69.7 billion for the year, an increase of $4.8 billion or 7% in both U.S. dollars and local currency" | High |
| Accenture plc | Headcount at FY end | ~779,000 people | — | as of **Aug 31, 2025** | FY2025 Form 10-K (filed 2025-10-10, period 2025-08-31) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1467373/000146737325000217/acn-20250831.htm | WebFetch **HTTP 403**; curl **HTTP 200** | "We are a value and solution-led company with approximately 779,000 people as of August 31, 2025" | High |
| Accenture plc | Revenue per employee — **computed** | **≈ $89,439** | USD | FY2025 | computed: 69,672,977,000 ÷ 779,000 | — | (inputs above) | n/a — computed | *(computed, no quote)* | High (arithmetic); Medium (headcount is "approximately") |
| EPAM Systems | Revenue, latest completed FY | 5,457,056 thousand ($5.457bn) | USD | FY2025, ended **Dec 31, 2025** | FY2025 Form 10-K (filed 2026-02-26) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1352010/000135201026000015/epam-20251231.htm | WebFetch **HTTP 403**; curl **HTTP 200** | "Revenues $5,457,056 100.0 % $4,727,940 100.0 %" | High |
| EPAM Systems | YoY revenue growth (company-stated) | **+15.4%** (reported); FX contributed +1.3pp, acquisitions +9.2pp | USD | FY2025 | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "our total revenues increased 15.4% from the previous year to $5.457 billion… fluctuations in foreign currency increased our revenues by 1.3%" | High |
| EPAM Systems | Headcount at FY end | ~62,850 employees (of which ~56,600 delivery professionals) | — | as of **Dec 31, 2025** | same 10-K, Human Capital | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "As of December 31, 2025, 2024 and 2023, we had approximately 62,850, 61,200, and 53,150 employees, respectively, of which approximately 56,600, 55,100, and 47,350 were delivery professionals" | High |
| EPAM Systems | Revenue per employee — **computed** | **≈ $86,827** (all employees) / **≈ $96,414** (delivery professionals only) | USD | FY2025 | computed: 5,457,056,000 ÷ 62,850 · and ÷ 56,600 | — | (inputs above) | n/a — computed | *(computed, no quote)* | High |
| Globant S.A. | Revenue, latest completed FY | 2,454,877 thousand ($2.455bn) | USD | FY2025, ended **Dec 31, 2025** | FY2025 Form 20-F (filed 2026-02-27) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1557860/000162828026012910/glob-20251231.htm | WebFetch **HTTP 403**; curl **HTTP 200** | "Revenues $ 2,454,877 100.0 % $ 2,415,689 100.0 % $ 2,095,939 100.0 %" | High |
| Globant S.A. | YoY revenue growth (company-stated) | **+1.6%** (reported) | USD | FY2025 | same 20-F | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "For the year ended December 31, 2025, revenues increased by 1.6% to $2.5 billion from $2.4 billion for the year ended December 31, 2024." | High |
| Globant S.A. | Headcount at FY end | 28,773 employees ("Globers") | — | as of **Dec 31, 2025** | same 20-F | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "As of December 31, 2025, we had 28,773 employees worldwide, and operations through subsidiaries with offices and employees in 31 countries." | High |
| Globant S.A. | Revenue per employee — **computed** | **≈ $85,319** | USD | FY2025 | computed: 2,454,877,000 ÷ 28,773 | — | (inputs above) | n/a — computed | *(computed, no quote)* | High |
| Infosys Ltd | Revenue, latest completed FY (USD) | 20,158 million | USD | FY2026, ended **Mar 31, 2026** | FY2026 Form 20-F (filed 2026-06-15) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1067491/000119312526270520/infy-20260331.htm | WebFetch not attempted (sec.gov 403 pattern established); curl **HTTP 200** | "Revenues 20,158 19,277 881 4.6 %" | High |
| Infosys Ltd | Revenue, latest completed FY (INR) | 178,650 crore | INR | FY2026, ended Mar 31, 2026 | Outcome of Board Meeting / Q4 & FY26 results, filed with BSE 2026-04-23 | OFFICIAL_FILING | https://www.bseindia.com/xml-data/corpfiling/AttachHis/0C09F653-9382-4863-A61A-608D1074F3B0-175431.pdf | curl **HTTP 200** (43.1 MB PDF) | "Revenues 178,650 162,990 9.6%" (header: "In ₹ crore, except per equity share data") | High |
| Infosys Ltd | YoY revenue growth (company-stated) | **+4.6% reported USD; +3.1% constant currency**; **+9.6% in INR** | USD / INR | FY2026 | 20-F (USD/CC) + BSE results (INR) | OFFICIAL_FILING | (both above) | curl **HTTP 200** | "Our revenues in reported currency terms for fiscal 2026 was $20,158 million, a growth of 4.6% in comparison to fiscal 2025. As against this, our revenues in constant currency terms for fiscal 2026 grew by 3.1% in comparison to fiscal 2025" | High |
| Infosys Ltd | Headcount at FY end | 328,594 total employees | — | as of **Mar 31, 2026** | 20-F; corroborated by BSE results fact sheet | OFFICIAL_FILING | (both above) | curl **HTTP 200** | 20-F: "Between March 31, 2022, and March 31, 2026, our total employees grew from 314,015 to 328,594" · BSE: "Total employees 328,594 337,034 323,578" | High |
| Infosys Ltd | Revenue per employee — **computed** | **≈ $61,346** · **≈ ₹5,436,800** | USD / INR | FY2026 | computed: 20,158,000,000 ÷ 328,594 · and 1,786,500,000,000 ÷ 328,594 | — | (inputs above) | n/a — computed | *(computed, no quote)* | High |
| Tata Consultancy Services | Revenue, latest completed FY | 267,021 crore | INR | FY2026, ended **Mar 31, 2026** | TCS Press Release to NSE/BSE, April 9 2026 (Reg. 30 LODR) | OFFICIAL_FILING | https://www.bseindia.com/xml-data/corpfiling/AttachHis/8d01a131-0e27-4a5b-891e-66e7bf2230d4.pdf | curl **HTTP 200**; TCS's own site www.tcs.com **HTTP 403** to both WebFetch and curl | "FY 26 Revenue ₹267,021 crore, Growth +4.6% YoY, -2.4% in CC" | High |
| Tata Consultancy Services | Revenue (audited statement cross-check) | 2,67,021 crore (FY25: 2,55,324) | INR | FY2026, ended Mar 31, 2026 | "Financial Results For The Year Ended March 31, 2026" (Result filing) | OFFICIAL_FILING | https://www.bseindia.com/xml-data/corpfiling/AttachHis/da445746-06b9-4078-a71b-cc48f97fbc93.pdf | curl **HTTP 200** | "Total 70,698 67,087 64,479 2,67,021 2,55,324" (consolidated segment revenue, "₹crore") | High |
| Tata Consultancy Services | Revenue (USD, approximate, company-stated) | "over US$30 billion" | USD | FY2026, ended Mar 31, 2026 | same press release, boilerplate "About TCS" | OFFICIAL_FILING | (press-release URL above) | curl **HTTP 200** | "TCS generated consolidated revenues of over US$30 billion in the fiscal year ended March 31, 2026." | Medium — an approximation, not a reported figure |
| Tata Consultancy Services | YoY revenue growth (company-stated) | **+4.6% YoY reported; −2.4% in constant currency** | INR | FY2026 | same press release | OFFICIAL_FILING | (press-release URL above) | curl **HTTP 200** | "FY 26 Revenue ₹267,021 crore, Growth +4.6% YoY, -2.4% in CC" | High |
| Tata Consultancy Services | Headcount at FY end | 584,519 | — | FY2026 annual highlights, year ended **Mar 31, 2026** | same press release | OFFICIAL_FILING | (press-release URL above) | curl **HTTP 200** | "FY2026: Annual Highlights • Employee Headcount: 584,519" | High |
| Tata Consultancy Services | Revenue per employee — **computed** | **≈ ₹4,568,218** | INR | FY2026 | computed: 2,670,210,000,000 ÷ 584,519 | — | (inputs above) | n/a — computed | *(computed, no quote)* | High |
| Capgemini SE | Revenue, latest completed FY | 22,465 million | EUR | FY2025, ended **Dec 31, 2025** | FY 2025 Results press release, Feb 13 2026 7:00am CET | OFFICIAL_FILING | https://investors.capgemini.com/en/publication/fy-2025-results/ | WebFetch **fetched OK (200)**; curl **HTTP 200** | "Revenues of €22,465 million in 2025, up +1.7%" | High |
| Capgemini SE | YoY revenue growth (company-stated) | **+1.7% reported; +3.4% at constant exchange rates** | EUR | FY2025 | same press release | OFFICIAL_FILING | (as above) | WebFetch **fetched OK** | "Revenue growth at constant exchange rates * of +3.4% for the full year, and +10.6% in Q4" | High |
| Capgemini SE | Headcount at FY end | 423,400 | — | as of **Dec 31, 2025** | same press release, § Headcount | OFFICIAL_FILING | (as above) | WebFetch **fetched OK** | "At December 31, 2025, the Group's total headcount stood at 423,400, up 82,300 or +24% year-on-year and up 68,700 compared to the end of September 2025, primarily reflecting the integration of WNS team members." | High |
| Capgemini SE | Revenue per employee — **computed** | **≈ €53,059** | EUR | FY2025 | computed: 22,465,000,000 ÷ 423,400 | — | (inputs above) | n/a — computed | *(computed)* — **Medium**: see caveat C1 below | Medium |
| Thoughtworks Holding | Revenue, last available public FY | 1,126,816 thousand ($1.127bn) | USD | FY2023, ended **Dec 31, 2023** — *last 10-K; company taken private Nov 13 2024* | FY2023 Form 10-K, filed 2024-02-27 | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1866550/000186655024000022/twks-20231231.htm | WebFetch **HTTP 403**; curl **HTTP 200** | "Revenues $ 1,126,816 $ 1,296,238 $ 1,069,945" | High |
| Thoughtworks Holding | YoY revenue growth (company-stated) | **−13.1% as reported; −12.6% at constant currency** | USD | FY2023 | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Revenue Growth Rate as reported (1) (13.1) % 21.1 % 33.2 % Revenue Growth Rate at constant currency (1) (12.6) % 26.8 % 29.3 %" | High |
| Thoughtworks Holding | Headcount at FY end | 10,848 employees | — | as of **Dec 31, 2023** | same 10-K, People Metrics | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "People Metrics Number of employees … As of … December 31, 2023 December 31, 2022 … 10,848 12,671" | High |
| Thoughtworks Holding | Revenue per employee — **company-stated** | **$98,000** (FY2023), $108,000 (FY2022) — company's own "average revenue per employee" | USD | FY2023 | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "10,848 12,671 $98,000 $108,000 12.0% 12.0% (1) We define average revenue per employee as total revenues for the period divided by the average number of employees in such period." | High |
| Thoughtworks Holding | Revenue per employee — **computed** (year-end headcount basis, for comparability with the other rows) | **≈ $103,873** | USD | FY2023 | computed: 1,126,816,000 ÷ 10,848 | — | (inputs above) | n/a — computed | *(computed)* — differs from the company's $98,000 because Thoughtworks divides by *average* headcount, not year-end | High |
| Thoughtworks Holding | Last quarterly public filing | Q3 2024 revenue $261,393 thousand; 9M 2024 $761,657 thousand; 10,491 employees as of Sept 30, 2024 | USD | quarter ended **Sept 30, 2024** | Form 10-Q filed 2024-11-12 (final periodic report) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1866550/000186655024000060/twks-20240930.htm | curl **HTTP 200** | "Revenues $ 261,393 $ 280,159 $ 761,657 $ 874,430" and "10,491 11,058 $72,000 $74,000" | High |
| Thoughtworks Holding | Take-private / delisting | Merger completed **Nov 13, 2024**; Nasdaq trading suspended; Form 25-NSE filed 2024-11-13, Form 15-12G filed 2024-11-25 | — | n/a | Form 8-K dated Nov 13 2024 (+ EDGAR submissions index) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1866550/000121390024097457/ea0220617-8k_thought.htm · https://data.sec.gov/submissions/CIK0001866550.json | curl **HTTP 200** (both) | "On November 13, 2024, Thoughtworks Holding, Inc., a Delaware corporation (the "Company"), completed its previously announced merger with Tasmania Merger Sub, Inc. … a wholly owned subsidiary of Tasmania Midco, LLC" and "requested that Nasdaq suspend trading of the Company Common Stock on Nasdaq prior to the opening of trading on November 13, 2024" | High |

---

## Table B — Talent marketplaces

### Upwork Inc. (Nasdaq: UPWK)

| Company | Metric | Value | Currency | Fiscal year + end date | Source | Class | URL | Fetch status | Verbatim quote | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| Upwork | GSV, FY | 4,028,386 thousand ($4.028bn), +1% | USD | FY2025, ended **Dec 31, 2025** | FY2025 Form 10-K (filed 2026-02-13) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000012/upwk-20251231.htm | WebFetch **HTTP 403**; curl **HTTP 200** | "GSV $ 4,028,386 1 % $ 4,008,107 (3) % $ 4,142,252 1 %" | High |
| Upwork | Total revenue, FY | 787,784 thousand ($787.8m), +2% | USD | FY2025, ended Dec 31, 2025 | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Total revenue $ 787,784 $ 769,325 $ 18,459 2 %" | High |
| Upwork | Marketplace revenue, FY | 682,883 thousand, +3% | USD | FY2025 | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Marketplace $ 682,883 $ 662,108 20,775 3 %" | High |
| Upwork | Take rate, FY — **company-stated** | **18.7%** (Marketplace take rate; +69 bps YoY) | % | FY2025 | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Marketplace take rate increased to 18.7% for the year ended December 31, 2025, as compared to 18.0% in 2024" · definition: "Marketplace take rate … is calculated by dividing Marketplace revenue by Marketplace GSV. We define Marketplace GSV as GSV derived from the Upwork Marketplace." | High |
| Upwork | Take rate, FY — **computed, different denominator** | 19.56% (total revenue ÷ total GSV) | % | FY2025 | computed: 787,784 ÷ 4,028,386 | — | (inputs above) | n/a — computed | *(computed — NOT the company's definition; company divides Marketplace revenue by Marketplace GSV, a subset of total GSV)* | High (arithmetic), not comparable to the 18.7% |
| Upwork | Active clients, FY end | 785 thousand (785,000), −6% | count | as of **Dec 31, 2025** | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Active clients 785 (6) % 832 (2) % 851 5 %" under header "(In thousands, except GSV per active client and percentages)" | High |
| Upwork | GSV per active client, FY | $5,129, +7% | USD | FY2025 | same 10-K | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "GSV per active client $ 5,129 7 % $ 4,815 (1) % $ 4,867 (4) %" | High |
| Upwork | **Latest reported quarter** — GSV | $966.4m ($966,439k), −3.6% YoY (release headline says "decreased 4%") | USD | **Q2 2026, quarter ended Jun 30, 2026**; released Aug 10, 2026 | 8-K Ex-99.1, Q2 2026 press release | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000046/upwork2q26-pressrelease.htm | curl **HTTP 200** | "GSV (1) was $966.4 million, decreased 4% year-over-year" and table "GSV (1) $ 966,439 $ 1,002,650 (3.6) %" | High |
| Upwork | Q2 2026 — revenue | $191.7m total ($191,660k); Marketplace $166,858k; Enterprise $24,802k; −2% YoY | USD | Q2 2026, ended Jun 30, 2026 | same press release | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Revenue decreased 2% year-over-year to $191.7 million" · "Total revenue 191,660 194,939 387,143 387,645" | High |
| Upwork | Q2 2026 — take rate | **unknown / not disclosed** | — | Q2 2026 | Q2 2026 press release contains no take-rate line; Marketplace GSV (the company's denominator) is not broken out | OFFICIAL_FILING | (as above) | curl **HTTP 200** | *(absence of a take-rate line item in "Key Financial and Operational Metrics" table — no quote available for a figure that is not stated)* | High that it is not stated |
| Upwork | Q2 2026 — active clients | 763,000, −4% YoY | count | as of **Jun 30, 2026** | same press release | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Active clients (1) of 763,000" · table "Active clients (1) 763 796 (4) %" | High |
| Upwork | Q2 2026 — GSV per active client | $5,230, +5% YoY (company calls it a record) | USD | as of Jun 30, 2026 | same press release | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "GSV per Active Client Reaches Record $5,230 Marking Eighth Consecutive Quarter of Sequential Growth" | High |

### Fiverr International Ltd. (NYSE: FVRR)

| Company | Metric | Value | Currency | Fiscal year + end date | Source | Class | URL | Fetch status | Verbatim quote | Confidence |
|---|---|---|---|---|---|---|---|---|---|---|
| Fiverr | Marketplace GMV, FY | $1,073.0 million, −2.2% | USD | FY2025, ended **Dec 31, 2025** | FY2025 Form 20-F (filed 2026-03-12) | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1762301/000117891326000858/zk2634486.htm | WebFetch **HTTP 403**; curl **HTTP 200** | "for the twelve-month period ended December 31, 2025, marketplace GMV was $1,073.0 million, down 2.2% year-over-year" | High |
| Fiverr | Revenue, FY | $430.9 million total, **+10.1%**; marketplace revenue $297.5m (−1.8%); services revenue $133.4m (+50.9%) | USD | FY2025, ended Dec 31, 2025 | same 20-F | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Revenue increased by $39.4 million, or 10.1%, to $430.9 million for the year ended December 31, 2025, from $391.5 million for the year ended December 31, 2024." | High |
| Fiverr | Take rate, FY — **company-stated** | **27.7%** (vs 27.6% in 2024) | % | FY2025 | same 20-F | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Our marketplace take rate, defined by marketplace revenue divided by marketplace GMV was 27.7%, compared to 27.6% in 2024." | High |
| Fiverr | Take rate — **computed, different numerator** | 40.16% (total revenue ÷ GMV) | % | FY2025 | computed: 430.9 ÷ 1,073.0 | — | (inputs above) | n/a — computed | *(computed — NOT the company's metric; Fiverr's take rate uses marketplace revenue only, excluding the $133.4m of services revenue)* | High (arithmetic), not comparable to 27.7% |
| Fiverr | Annual active buyers, FY end | 3,135 thousand (3.135m), −13.6% YoY | count | as of **Dec 31, 2025** | same 20-F | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Annual active buyers (in thousands) 3,135 3,630 4,027" · "a 13.6% year-over-year decrease in annual active buyers" | High |
| Fiverr | Annual spend per buyer, FY end | $342, +13.3% YoY | USD | as of Dec 31, 2025 | same 20-F | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Annual spend per buyer $ 342 $ 302 $ 278" | High |
| Fiverr | **Latest reported quarter** — revenue | $97.8m, −10.0% YoY; marketplace revenue $63.1m (−15.5%); services revenue $34.6m (+2.0%) | USD | **Q2 2026, quarter ended Jun 30, 2026**; released Jul 29, 2026 | 6-K Ex-99.1, Q2 2026 results | OFFICIAL_FILING | https://www.sec.gov/Archives/edgar/data/1762301/000117891326003624/exhibit_99-1.htm | curl **HTTP 200** | "Revenue in the second quarter of 2026 was $97.8 million, compared to $108.6 million in the second quarter of 2025, a decrease of 10.0% year over year." | High |
| Fiverr | Q2 2026 — GMV | **unknown / not stated as a dollar figure in the Q2 2026 release** | USD | Q2 2026 | The release defines GMV and reports take rate and spend-per-buyer, but gives no GMV dollar amount | OFFICIAL_FILING | (as above) | curl **HTTP 200** | *(no quote — figure not stated)* | High that it is not stated |
| Fiverr | Q2 2026 — TTM GMV, **computed from rounded inputs** | ≈ $994 million | USD | TTM to Jun 30, 2026 | computed: 2,700,000 buyers × $368 spend per buyer (per the company's own definition: "Annual spend per buyer … is calculated by dividing our GMV within the last 12-month period by the number of annual active buyers") | — | (inputs above) | n/a — computed | *(computed from rounded published inputs — treat as approximate)* | Low-Medium (both inputs are rounded to 2 s.f. / 3 s.f.) |
| Fiverr | Q2 2026 — take rate (company-stated) | **28.0%** TTM to Jun 30 2026, vs 27.6% TTM to Jun 30 2025 | % | TTM ended Jun 30, 2026 | same 6-K exhibit | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Marketplace take rate 1 for the twelve months period ended June 30, 2026 was 28.0%, compared to 27.6% for the twelve months period ended June 30, 2025." | High |
| Fiverr | Q2 2026 — annual active buyers | 2.7 million, −21.9% YoY | count | as of **Jun 30, 2026** | same 6-K exhibit | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Annual active buyers 1 as of June 30, 2026, were 2.7 million, compared to 3.4 million as of June 30, 2025, a decline of 21.9% year over year." | High |
| Fiverr | Q2 2026 — annual spend per buyer | $368, +15.6% YoY | USD | as of Jun 30, 2026 | same 6-K exhibit | OFFICIAL_FILING | (as above) | curl **HTTP 200** | "Annual spend per buyer 1 as of June 30, 2026, reached $368, compared to $318 as of June 30, 2025, an increase of 15.6% year over year." | High |

---

## PROVEN ABSENT (404 / NXDOMAIN)

| URL | Observed | What it proves |
|---|---|---|
| `https://www.capgemini.com/investors/` | **HTTP 404** (203,215 bytes of 404 page body returned) | That specific path does not exist. Capgemini IR lives at `https://investors.capgemini.com/en/` (**HTTP 200**). |
| `https://www.bseindia.com/xml-data/corpfiling/AttachLive/<id>.pdf` (both TCS attachments) | **HTTP 404** | The `AttachLive` path is for current filings only; the same documents resolve **HTTP 200** under `AttachHis`. Not an absence of the documents. |
| Accenture FY2026 10-K / FY2026 annual results | **Absent by enumeration, not by 404** — `data.sec.gov/submissions/CIK0001467373.json` (**HTTP 200**) lists the most recent 10-K as period `2025-08-31`, filed 2025-10-10. | Accenture's FY2026 ends Aug 31 2026, i.e. after today's date (2026-08-20), so FY2025 is correctly the latest completed fiscal year. |
| Thoughtworks 10-K after FY2023 | **Absent by enumeration** — EDGAR full-index for CIK 1866550 (**HTTP 200**) shows the last 10-K filed 2024-02-27 and the last 10-Q filed 2024-11-12, followed by Form 25-NSE (2024-11-13) and Form 15-12G (2024-11-25). | No public annual filing exists after FY2023. |

Nothing else returned 404 or NXDOMAIN.

---

## GAPS — no credible source found

1. **TCS revenue in USD, precise.** The TCS press release states only the approximate boilerplate "over US$30 billion". No precise USD FY2026 revenue was found in the fetched filings. TCS's own site (`www.tcs.com/investor-relations`, `/investor-relations/financial-statements`, and the `/content/dam/...` PDF paths) returned **HTTP 403 to both WebFetch and curl with a browser User-Agent** — the server answered, so the source is reachable but not retrievable by this method. Not converted (per instruction).
2. **Upwork Marketplace take rate for Q2 2026.** Not stated in the Q2 2026 press release, and not computable to the company's own definition because Marketplace GSV is not broken out from total GSV in that release. Tried: the full Q2 2026 8-K Ex-99.1 text (HTTP 200) and the FY2025 10-K definition section.
3. **Fiverr GMV dollar figure for Q2 2026.** The Q2 2026 6-K exhibit reports take rate, active buyers and spend per buyer but no GMV amount. Tried: full text of the 6-K Ex-99.1 (HTTP 200); every occurrence of "GMV" in it is definitional or contextual. A shareholder letter is referenced ("posted to its investor relations website at investors.fiverr.com") but was not fetched.
4. **Accenture exact (non-rounded) headcount.** Both the 10-K and the earnings release say "approximately 779,000". No exact figure is published.
5. **EPAM / Accenture / Globant headcount is "approximately"** in every case, so the computed revenue-per-employee inherits that rounding.

---

## Disagreements and definitional conflicts observed (not resolved)

- **C1 — Capgemini revenue-per-employee is distorted by the WNS acquisition.** Headcount rose +24% YoY to 423,400 "primarily reflecting the integration of WNS team members", while revenue rose only +1.7%. The year-end headcount therefore includes a workforce that contributed to revenue for only part of FY2025. The computed €53,059 is arithmetically correct from the two published figures but is not a like-for-like productivity measure against the prior year or against the other companies. Reported, not adjusted.
- **C2 — "Revenue per employee" is not one metric.** Thoughtworks publishes its own *average revenue per employee* ($98,000 for FY2023) using **average** headcount over the period. Every other company here publishes only a **point-in-time year-end** headcount. Computing on the year-end basis gives $103,873 for Thoughtworks — a 6% divergence from the company's own number, purely from the denominator convention. Both are shown above.
- **C3 — EPAM has two defensible denominators.** 62,850 total employees vs 56,600 delivery professionals; revenue per employee is $86,827 or $96,414 depending on which is chosen. Both are shown.
- **C4 — Take-rate denominators differ between Upwork and Fiverr and from a naive computation.** Upwork: Marketplace revenue ÷ *Marketplace* GSV (18.7%). Fiverr: marketplace revenue ÷ marketplace GMV (27.7%), excluding 31.0% of its total revenue that comes from services. A total-revenue-over-total-volume computation gives 19.56% and 40.16% respectively — different metrics, shown separately and labelled.
- **C5 — Infosys and TCS growth rates point in opposite directions depending on currency.** Infosys FY2026: +9.6% INR, +4.6% USD reported, +3.1% constant currency. TCS FY2026: +4.6% INR YoY but **−2.4% in constant currency**. Both companies' own stated figures; no reconciliation attempted.
- **C6 — Accenture headcount date vs source.** The press release boilerplate (Sept 25, 2025) and the 10-K (period Aug 31, 2025) both say ~779,000; the 10-K's phrasing pins it explicitly to "as of August 31, 2025", so the fiscal-year-end date is used above.
- **C7 — Fiscal-year alignment.** The seven services firms span three different year-ends (Aug 31, Dec 31, Mar 31) and, for Thoughtworks, three different calendar years (FY2023 vs FY2025/FY2026 for the rest). Not normalised.

---

## Fetch log (every URL attempted, with observed status)

| # | URL | Method | Observed |
|---|---|---|---|
| 1 | https://newsroom.accenture.com/news/2025/accenture-reports-fourth-quarter-and-full-year-fiscal-2025-results | WebFetch | **fetched OK (200)** — page body carries only the headline and "August 31, 2025"; figures are behind a "Click to Download" PDF, not extractable |
| 2 | https://www.sec.gov/Archives/edgar/data/1467373/000146737325000213/q4fy25earnings8-kexhibit.htm | WebFetch | **HTTP 403** |
| 3 | (same URL) | curl + SEC UA | **HTTP 200**, 632 KB |
| 4 | https://data.sec.gov/submissions/CIK0001467373.json | curl | **HTTP 200** |
| 5 | https://www.sec.gov/Archives/edgar/data/1467373/000146737325000217/acn-20250831.htm | curl | **HTTP 200** |
| 6 | https://www.sec.gov/files/company_tickers.json | curl | **HTTP 200** |
| 7 | https://data.sec.gov/submissions/CIK1352010.json (un-padded CIK) | curl | **HTTP 404** — malformed, not an absence; padded form works |
| 8 | https://data.sec.gov/submissions/CIK0001352010.json (EPAM) | curl | **HTTP 200** |
| 9 | https://data.sec.gov/submissions/CIK0001557860.json (Globant) | curl | **HTTP 200** |
| 10 | https://data.sec.gov/submissions/CIK0001067491.json (Infosys) | curl | **HTTP 200** |
| 11 | https://data.sec.gov/submissions/CIK0001627475.json (Upwork) | curl | **HTTP 200** |
| 12 | https://data.sec.gov/submissions/CIK0001762301.json (Fiverr) | curl | **HTTP 200** |
| 13 | https://www.sec.gov/Archives/edgar/data/1352010/000135201026000015/epam-20251231.htm | curl | **HTTP 200** |
| 14 | https://www.sec.gov/Archives/edgar/data/1557860/000162828026012910/glob-20251231.htm | curl | **HTTP 200** |
| 15 | https://www.sec.gov/Archives/edgar/data/1067491/000119312526270520/infy-20260331.htm | curl | **HTTP 200** |
| 16 | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000012/upwk-20251231.htm | WebFetch | **HTTP 403** |
| 17 | (same URL) | curl | **HTTP 200** |
| 18 | https://www.sec.gov/Archives/edgar/data/1762301/000117891326000858/zk2634486.htm | curl | **HTTP 200** |
| 19 | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000046/ (index) | curl | **HTTP 200** |
| 20 | https://www.sec.gov/Archives/edgar/data/1627475/000162747526000046/upwork2q26-pressrelease.htm | curl | **HTTP 200** |
| 21 | https://www.sec.gov/Archives/edgar/data/1762301/000117891326003624/exhibit_99-1.htm | curl | **HTTP 200** |
| 22 | https://www.tcs.com/investor-relations | WebFetch | **HTTP 403** |
| 23 | https://www.tcs.com/investor-relations | curl + browser UA | **HTTP 403** ("Access Denied") |
| 24 | https://www.tcs.com/investor-relations/financial-statements | curl | **HTTP 403** |
| 25 | https://www.tcs.com/content/dam/tcs/investor-relations/financial-statements/2025-26/q4/Press-Release-Q4-FY26.pdf | curl | **HTTP 403** (speculative path; blocked before it could be confirmed) |
| 26 | https://www.tcs.com/robots.txt | curl | **HTTP 403** — whole-domain edge block, not path-specific |
| 27 | https://api.bseindia.com/.../AnnGetData/w?... | curl | **HTTP 200** but returns `"No Record Found!"` — wrong endpoint |
| 28 | https://api.bseindia.com/BseIndiaAPI/api/AnnSubCategoryGetData/w?...strScrip=532540... | curl + Referer | **HTTP 200**, TCS announcement index returned |
| 29 | https://www.bseindia.com/xml-data/corpfiling/AttachLive/da445746-…pdf | curl | **HTTP 404** |
| 30 | https://www.bseindia.com/xml-data/corpfiling/AttachHis/da445746-06b9-4078-a71b-cc48f97fbc93.pdf (TCS FY26 results) | curl | **HTTP 200**, 2.22 MB PDF |
| 31 | https://www.bseindia.com/xml-data/corpfiling/AttachHis/8d01a131-0e27-4a5b-891e-66e7bf2230d4.pdf (TCS FY26 press release) | curl | **HTTP 200**, 768 KB PDF |
| 32 | https://api.bseindia.com/BseIndiaAPI/api/AnnSubCategoryGetData/w?...strScrip=500209... (Infosys) | curl | **HTTP 200** |
| 33 | https://www.bseindia.com/xml-data/corpfiling/AttachHis/0C09F653-9382-4863-A61A-608D1074F3B0-175431.pdf (Infosys FY26 board outcome) | curl | **HTTP 200**, 43.1 MB PDF |
| 34 | https://www.capgemini.com/investors/ | curl | **HTTP 404** |
| 35 | https://www.capgemini.com/news/press-releases/ | curl | **HTTP 200** |
| 36 | https://investors.capgemini.com/en/ | curl | **HTTP 200** |
| 37 | https://investors.capgemini.com/en/financial-results/ | curl | **HTTP 200** |
| 38 | https://investors.capgemini.com/en/publication/2025-universal-registration-document/ | curl | **HTTP 200** |
| 39 | https://investors.capgemini.com/en/publication/fy-2025-results/ | curl | **HTTP 200** |
| 40 | (same URL) | WebFetch | **fetched OK (200)** — independently returned the same two verbatim quotes |
| 41 | https://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&company=thoughtworks&type=10-K&…&output=atom | curl | **HTTP 200** |
| 42 | https://data.sec.gov/submissions/CIK0001866550.json | curl | **HTTP 200** |
| 43 | https://www.sec.gov/Archives/edgar/data/1866550/000186655024000022/ (index) | curl | **HTTP 200** |
| 44 | https://www.sec.gov/Archives/edgar/data/1866550/000186655024000022/twks-20231231.htm | curl | **HTTP 200** |
| 45 | https://www.sec.gov/Archives/edgar/data/1866550/000186655024000060/twks-20240930.htm | curl | **HTTP 200** |
| 46 | https://www.sec.gov/Archives/edgar/data/1866550/000121390024097457/ea0220617-8k_thought.htm | curl | **HTTP 200** |

**One correction to a common assumption, flagged because the brief asserted it:** the Thoughtworks take-private 8-K does **not** name Apax. The word "Apax" appears nowhere in the filing. The counterparties named in the filing are "Tasmania Merger Sub, Inc." and "Tasmania Midco, LLC". I have quoted the filing's own language rather than the brief's framing; the Apax attribution is not established by any document I fetched.