I have gathered sufficient sourced data across all five companies. I have enough to compile the final report now, marking gaps as unknown/unverified per the hard rules.

## COMPANY TABLES

### 1. Invisible Technologies (invisible.co)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Enterprise clients across asset management, banking, consumer, energy, healthcare, insurance, life sciences, private equity, public sector, sports. [OFFICIAL_COMPANY, invisibletech.ai, fetched OK, high confidence] |
| 2 | Product (one line) | Enterprise AI platform ("Axon" agents) combined with a human expert network ("Meridial") delivering automation, AI training/annotation, and back-office operations. [OFFICIAL_COMPANY, invisibletech.ai] |
| 3 | Business model | Company calls it a "services-to-software" hybrid; not a pure subscription or per-seat model per published text. [OFFICIAL_COMPANY] |
| 4 | Pricing figures | Not disclosed on public pages fetched (homepage, about, trust). Marked **unknown**. |
| 5 | Execution model | Human-in-the-loop / AI-plus-human. Company: "Agents that hand off finished results to your systems" combined with human escalation layer. [OFFICIAL_COMPANY] |
| 6 | Human involvement (verbatim) | "AI-plus-human collaboration, with the audit trail"; "A flexible human layer that integrates tightly with our platform"; Meridial provides humans for "stress-testing AI systems, or handling edge cases your agents aren't ready for yet." [OFFICIAL_COMPANY, invisibletech.ai, fetched OK] |
| 7 | Vertical/horizontal | Horizontal platform sold into 10 named verticals. [OFFICIAL_COMPANY] |
| 8 | Tool vs outcome | Outcome-oriented per company language ("we solve the thing behind the thing"; "own the outcome" language not found here but implied by services framing); also sells the Axon agent platform as a tool. Mixed — **unclear/mixed**, not verified as one or the other definitively. |
| 9 | Publishes audit trail | Claims "AI-plus-human collaboration, with the audit trail" as a feature — verbatim company claim, no external audit trail example published/fetched. [OFFICIAL_COMPANY] |
| 10 | Acceptance model | Not disclosed in fetched pages. **unknown**. |
| 11 | Knowledge reuse claim | Claims to have "trained >80% of the world's leading AI models," implying cross-customer scale/reuse of expertise, not explicit "knowledge reuse" claim. [OFFICIAL_COMPANY] |
| 12 | Deployment model | Not explicitly stated (SaaS implied by platform language); **unverified**. |
| 13 | Security posture (published) | DoD CMMC, GDPR (data processor), HIPAA, PCI DSS SAQ A, SOC 2 Type II, Cyber Essentials Plus; contact [email redacted per TZ 3.3]. [OFFICIAL_COMPANY, invisibletech.ai/trust, fetched OK, high confidence, quote: "trusted to automate complex, repetitive work—drawing on deep experience training nearly every major foundation model"] |
| 14 | Stated strengths | "24,000+ Vetted experts"; trained >80% of leading AI models; 10-year operating history (founded 2015). [OFFICIAL_COMPANY] |
| 15 | Documented criticism (third-party) | Wikipedia cites a 2023 Business Insider report that "dozens of contractors" were laid off — but Wikipedia fetch of the underlying BI article was not independently re-verified by this lane (Wikipedia is SECONDARY_DB relay here). [SECONDARY_DB, en.wikipedia.org/wiki/Invisible_Technologies, fetched OK, confidence medium — original BI article not independently fetched]. Direct Bing News searches for "Invisible Technologies" layoffs / government contract / Vanara Capital returned **no results** (see PROVEN ABSENT caveat below — these are "no results" from Bing's recency-weighted index, not proof of non-existence). |

Funding/valuation/revenue (Invisible): Founded 2015 (Francis Pedraza, Chairman); CEO Matthew Fitzpatrick (Jan 2025, ex-McKinsey/QuantumBlack). ~$23M cumulative early funding (Day One Ventures, Greycroft, Backed VC); $100M round led by Vanara Capital (2025) at $2B+ valuation. 2024 revenue reported at $134M (doubled YoY). Headcount ~350 (2025) + ~5,000 contractors across 100+ countries (2024); homepage separately states "250+ team members across 70+ countries" and "24,000+ vetted experts" — these figures **conflict across sources**, both reported as found. [SECONDARY_DB, en.wikipedia.org/wiki/Invisible_Technologies, fetched OK, medium confidence — Wikipedia's own sourcing not independently re-verified] vs [OFFICIAL_COMPANY, invisibletech.ai/about and homepage, fetched OK]. Government contracts: public sector listed as a named vertical with tagline "Cut red tape. Connect systems. Serve people better," but no specific contract/dollar figure found; Bing News search for government contracts returned no results. **unknown/unverified** for a specific named government contract.

---

### 2. Superside (superside.com)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Enterprise and mid-market brands; "400+ top global brands" claimed. [OFFICIAL_COMPANY, superside.com, fetched OK] |
| 2 | Product (one line) | On-demand creative/design production team (branding, video, UI/UX, 3D, motion, illustration) delivered by "senior, AI-native creatives" using in-house AI workflows. [OFFICIAL_COMPANY, superside.com/pricing] |
| 3 | Business model | Subscription (monthly retainer/credit-style spend) with a mandatory 12-month annual commitment. [OFFICIAL_COMPANY, superside.com/pricing, fetched OK] |
| 4 | Pricing figures (published) | **Flex Plan** — variable monthly spend with rollover, minimum monthly budget **$15,000**; **Dedicated Plan** — fixed team starting at **"$30,000 a month, on a 12-month term"**; **High-Impact Projects** — fixed scope/timeline one-off work. Software fee **$1,000/month** included in all plans. **Quick Start** onboarding **$20,000** for a three-week engagement. **Project Boosters** add-on, minimum **$15,000**. Unused Flex budget rolls over up to 3 months; overages billed at standard rates. [OFFICIAL_COMPANY, superside.com/pricing, fetched OK, high confidence — all figures verbatim] |
| 5 | Execution model | Human-delivered with AI assist — "Senior, AI-native creatives" plus "AI-powered briefing," Brand Brain platform, Superads Pro analytics. [OFFICIAL_COMPANY] |
| 6 | Human involvement (verbatim) | "Scale your in-house creative team with top global talent powered by industry-leading AI workflows, delivering anything you can imagine fast and affordably." Also: "Your creative team's creative team." [OFFICIAL_COMPANY, superside.com, fetched OK] |
| 7 | Vertical/horizontal | Horizontal (creative/design services across industries). [OFFICIAL_COMPANY] |
| 8 | Tool vs outcome | Delivered outcome (creative assets/campaigns), not a standalone tool, though a "Brand Brain" platform and "Superads Pro" analytics tool are bundled. [OFFICIAL_COMPANY] |
| 9 | Publishes audit trail | Not found in fetched pages. **unknown**. |
| 10 | Acceptance model | Not specifically disclosed in fetched pricing/homepage content (no SLA/revision terms found on the pricing page as fetched). **unknown/unverified**. |
| 11 | Knowledge reuse claim | Not explicitly claimed in fetched content. **unknown**. |
| 12 | Deployment model | SaaS-style platform access ("Brand Brain platform access," "unlimited users and asset storage") — production/staging run in separate AWS regions/VPCs per security page. [OFFICIAL_COMPANY, superside.com/security, fetched OK] |
| 13 | Security posture (published) | SOC 2 Type II ("annual audit, performed by a trusted third-party, with continuous control monitoring through Drata"); GDPR/CCPA compliant; AES-256 at rest, TLS 1.3 in transit (with post-quantum hybrid key exchange support); annual third-party penetration testing; Intruder.io automated vuln scanning; AWS WAF + GuardDuty; Datadog 24/7 monitoring; RBAC + least privilege; OAuth2.0/SSO (OIDC/SAML2.0); 1-year access log retention. [OFFICIAL_COMPANY, superside.com/security, fetched OK, high confidence, verbatim quotes captured] |
| 14 | Stated strengths | "400+ top global brands," specialist depth across UI/UX, video, illustration, motion, 3D, audio; complimentary onboarding. [OFFICIAL_COMPANY] |
| 15 | Documented criticism (third-party) | None found. Bing News search for "Superside funding valuation Series" returned **no results**; en.wikipedia.org/wiki/Superside did not return a matching company article (returned an unrelated Sidecar World Championship article — likely no dedicated Wikipedia article exists for this company, or the fetch mis-resolved; **not confirmed as PROVEN ABSENT** since it wasn't a clean 404). |

Funding/valuation/revenue: **unknown** — no successful source found. superside.com/about and superside.com/newsroom both returned **HTTP 404**. Bing News search for funding/valuation returned no results.

---

### 3. Mercor (mercor.com)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Enterprise AI labs (OpenAI, Anthropic named) needing domain experts for training/evaluation; individual experts (engineers, lawyers, doctors, bankers, journalists, PhDs). [OFFICIAL_COMPANY, mercor.com, fetched OK; SECONDARY_DB, en.wikipedia.org/wiki/Mercor, fetched OK] |
| 2 | Product (one line) | Marketplace matching vetted domain experts with AI companies for model training, evaluation, and benchmarking (incl. APEX-Agents benchmark). [OFFICIAL_COMPANY + SECONDARY_DB] |
| 3 | Business model | Two-sided marketplace, presumed commission/take-rate on contractor-client transactions — **not explicitly stated as a percentage** on fetched pages. [OFFICIAL_COMPANY, mercor.com, fetched OK, medium confidence on structure, pricing % unverified] |
| 4 | Pricing figures (published) | Contractor hourly pay documented range **$63–$120/hr** depending on role/expertise; "Daily payouts" referenced. Client-side pricing **not disclosed**. [OFFICIAL_COMPANY, mercor.com, fetched OK] |
| 5 | Execution model | Human-delivered work (expert contractors) sourced/matched via platform; not autonomous AI delivery. [OFFICIAL_COMPANY + SECONDARY_DB] |
| 6 | Human involvement (verbatim) | Company mission: **"Organizing human intelligence to power the AI economy."** Frames human expertise as "essential infrastructure for AI development rather than replacement." [OFFICIAL_COMPANY, mercor.com, fetched OK] |
| 7 | Vertical/horizontal | Horizontal marketplace spanning many domains (accounting, design, STEM, healthcare, sales, architecture, law, banking, journalism). [OFFICIAL_COMPANY + SECONDARY_DB] |
| 8 | Tool vs outcome | Marketplace/staffing — sells access to delivered human labor/expertise (an outcome-adjacent labor marketplace), not a software tool. [OFFICIAL_COMPANY] |
| 9 | Publishes audit trail | Not found in fetched pages. mercor.com/security, mercor.com/trust, mercor.com/about all returned **HTTP 404**. **unknown**. |
| 10 | Acceptance model | Not disclosed. **unknown**. |
| 11 | Knowledge reuse claim | Not explicitly found. **unknown**. |
| 12 | Deployment model | SaaS marketplace platform (implied, not explicitly stated). **unverified**. |
| 13 | Security posture (published) | Could not fetch — mercor.com/security and mercor.com/trust both **HTTP 404**. **unknown/unverified** — notable given the LiteLLM breach reporting below. |
| 14 | Stated strengths | 5 million experts on platform claimed in blog content (per Deeptune acquisition post, July 2026); "$1 billion annualized revenue run rate" (per Forbes, reported below). [OFFICIAL_COMPANY, mercor.com/blog, fetched OK for the figure; REPUTABLE_MEDIA, Forbes, for the ARR figure] |
| 15 | Documented criticism (third-party) | See CRITICISM table below — extensive. |

Funding/valuation trajectory: Series C **$350 million at $10 billion valuation, October 2025** [REPUTABLE_MEDIA relay via Forbes and via mercor.com/blog reference to a CNBC article; mercor.com/blog fetched OK, quote context: "Funding Announcement: Date: October 27, 2025, Valuation: $10 billion, Amount: $350 million funding round, Source: CNBC article reference" — the CNBC article itself was not independently fetched (direct Bing search for it returned no results), so this is **[unverified — CNBC primary not fetched]**]. Later reported: Nvidia "reportedly explores stake in AI data provider Mercor at $20B valuation" [REPUTABLE_MEDIA, MSN/Asianet Newsable, Cryptopolitan, Seeking Alpha via Bing News search, fetched OK — note this is characterized as "reportedly exploring," i.e., **not a confirmed closed round**, and Nvidia's involvement is reported, not confirmed by Mercor]. Founders Brendan Foody (CEO), Adarsh Hiremath (CTO/Co-CEO as of Oct 2025), Surya Midha (Board Chairman) — Bay Area high-school friends, Thiel Fellows ($200K each), founded 2023. [REPUTABLE_MEDIA, Forbes via Bing relay, fetched OK (403 on direct Forbes fetch, but full content obtained via Bing News relay of the article) + SECONDARY_DB, en.wikipedia.org/wiki/Mercor, fetched OK]. Contractor base: ~30,000 (Oct 2025, Wikipedia) vs "50,000 experts" (Forbes) vs "5 million experts" (Mercor's own blog, referring likely to registered platform users not active contractors) — **figures conflict across sources, all reported**.

How it describes itself vs traditional staffing/recruiting: positions as a marketplace "organizing human intelligence," not explicitly contrasted against staffing agencies in any fetched source. **unverified/not found** for an explicit self-comparison statement.

---

### 4. Scale AI (scale.com)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Enterprises, governments/public sector, and frontier AI model developers (Meta, Cohere, Cisco, Google, Microsoft, OpenAI, GM, Time named). [OFFICIAL_COMPANY, scale.com/about, fetched OK] |
| 2 | Product (one line) | "Reliable AI Systems for Critical Decisions" — spans training data/annotation/RLHF, model evaluation/red-teaming, and applied AI systems (incl. Donovan for government). [OFFICIAL_COMPANY, scale.com, fetched OK] |
| 3 | Business model | Consulting/systems-integration + services hybrid — "We find the right use case, build the system, and own the outcome" plus a Data Engine product line. [OFFICIAL_COMPANY, scale.com, fetched OK] |
| 4 | Pricing figures | Not disclosed on homepage/about/security/government pages fetched. **unknown**. |
| 5 | Execution model | Human-in-the-loop explicitly stated. [OFFICIAL_COMPANY] |
| 6 | Human involvement (verbatim) | Tagline: **"Humans stay in the loop."** [OFFICIAL_COMPANY, scale.com, fetched OK] |
| 7 | Vertical/horizontal | Horizontal platform serving multiple named verticals: healthcare, energy, real estate, robotics, defense, logistics. [OFFICIAL_COMPANY] |
| 8 | Tool vs outcome | Delivered outcome per own framing — "We find the right use case, build the system, and own the outcome" — combined with a packaged product (Data Engine, Donovan). [OFFICIAL_COMPANY] |
| 9 | Publishes audit trail | Not explicitly framed as "audit trail" in fetched content; Trust Center exists with downloadable certs. **unverified** for an audit-trail-of-work claim specifically. |
| 10 | Acceptance model | Not disclosed in fetched pages. **unknown**. |
| 11 | Knowledge reuse claim | "15 billion human decisions contributed to train AI models," implying aggregate scale but not an explicit cross-customer reuse claim. [OFFICIAL_COMPANY, scale.com/about, fetched OK] |
| 12 | Deployment model | Cloud-based; supports classified/air-gapped networks for government (per Donovan/government page); FedRAMP High authorized; DoD IL4 provisional authorization (DISA-issued). [OFFICIAL_COMPANY, scale.com/security + scale.com/government, both fetched OK] |
| 13 | Security posture (published) | SOC 2 Type II; ISO/IEC 27001:2022 certified; DoD IL4 Provisional Authorization (DISA); FedRAMP High Authorized; three stated principles: "Protect Our Customers' Data," "Secure Our Foundation," "Protect our Shared Future"; vulnerability contact [email redacted per TZ 3.3]. [OFFICIAL_COMPANY, scale.com/security, fetched OK, high confidence, verbatim quotes captured] |
| 14 | Stated strengths | $1 billion paid to contributors globally; 15 billion human decisions; FedRAMP High + DoD IL4 (rare among peers here); named enterprise/government logos. [OFFICIAL_COMPANY] |
| 15 | Documented criticism (third-party) | See CRITICISM table below. |

Funding/valuation/date: Founded 2016 (Alexandr Wang, Lucy Guo, via Y Combinator). Aug 2019 Founders Fund $100M → unicorn (>$1B). July 2021 → $7B valuation (Greenoaks, Dragoneer, Tiger Global). March 2024 → ~$13B (Accel-led). May 2024 → $1B raised incl. Amazon and Meta as new investors → $14B valuation. **June 2025 Meta investment**: sources conflict — reported as **"$14.8 billion"** and **"$14.3 billion"** for a **49% non-voting stake**; Wikipedia's own text states "Meta Platforms spent more than $14 billion" without reconciling the two figures. Former CEO Alexandr Wang joined Meta as part of the deal; Jason Droege (ex-Uber, Scale's former chief strategy officer) became CEO. [SECONDARY_DB, en.wikipedia.org/wiki/Scale_AI, fetched OK, high confidence on the deal occurring, explicit conflict flagged in source text itself]. Current valuation post-Meta-deal cited elsewhere in the ecosystem context as **$29 billion** [OFFICIAL_COMPANY, scale.com/about, fetched OK — note this figure was on the "about" page, timing/date of when this valuation was struck not separately confirmed]. Headcount: "1,000+ employees" (scale.com/about) vs "1,200 employees as of 2025" (Wikipedia) — **minor conflict, both reported**. 2024 revenue: **$870 million** [SECONDARY_DB, en.wikipedia.org/wiki/Scale_AI, fetched OK]. Not profitable as of July 2025 per Wikipedia's relay of a Business Insider reference (BI itself not independently fetched — blocked). 

Government contracts: DoD contract 2020; **$250 million** federal-agency-access contract Jan 2022; US Army XVIII Airborne Corps deal May 2023 (first AI company to deploy an LLM, "Donovan," on a classified network); DoD one-year LLM test/eval contract Feb 2024; US AI Safety Institute agreement Aug 2024; multimillion-dollar "Thunderforge" contract with Defense Innovation Unit March 2025 (shared with Anduril Industries and Microsoft); Qatar government five-year AI deployment deal Feb 2025. Current government customer list per scale.com/government: White House, US Army, US Air Force, CDAO, Defense Innovation Unit. [SECONDARY_DB (Wikipedia, fetched OK) + OFFICIAL_COMPANY (scale.com/government, fetched OK)]

Layoffs: January 2023, 20% of workforce (Wikipedia, headcount not specified). A further layoff event was referenced by Wikipedia's relay of a Business Insider piece ("overhiring and market shifts") but a dedicated Bing News search for "Scale AI layoffs 2025" returned **no matching results** — this specific 2025 layoff claim is **[unverified beyond the Wikipedia relay of BI, BI itself unreachable — 403 client-block]**.

---

### 5. Turing (turing.com)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | AI companies needing specialized human evaluation (Anthropic, Google DeepMind/Gemini, Nvidia named); experts/professionals in 140+ countries seeking remote work. [OFFICIAL_COMPANY, turing.com and www.turing.com, both fetched OK] |
| 2 | Product (one line) | Remote-first talent marketplace connecting vetted domain experts with AI companies for model evaluation, training, and software engineering work. [OFFICIAL_COMPANY] |
| 3 | Business model | Marketplace / per-task freelance model. [OFFICIAL_COMPANY] |
| 4 | Pricing figures (published) | Per-task compensation range **$150–$1,000**; examples: "Scientific Coding - Biology and Python: $250," "Senior Software Engineer – LLM Evaluation: $1,000"; most priority roles **$200–$300**; entry-level **$150**; clinical/medical roles **$300**. [OFFICIAL_COMPANY, turing.com, fetched OK, high confidence, verbatim examples captured] |
| 5 | Execution model | Human-delivered work via marketplace (experts evaluate/train AI outputs). [OFFICIAL_COMPANY] |
| 6 | Human involvement (verbatim) | **"Your expertise builds AI"** — work focuses on evaluating, auditing, and refining AI model outputs for "correctness," "accuracy," and "safety." [OFFICIAL_COMPANY, turing.com, fetched OK] |
| 7 | Vertical/horizontal | Horizontal — spans tech, finance, healthcare, law, creative fields, sciences. [OFFICIAL_COMPANY] |
| 8 | Tool vs outcome | Marketplace delivering human labor/expertise as an outcome (evaluated/trained data), not a software tool. [OFFICIAL_COMPANY] |
| 9 | Publishes audit trail | Not found. turing.com/security and turing.com/about-us both returned **HTTP 404**. **unknown**. |
| 10 | Acceptance model | Not disclosed in fetched pages ("Transparent, bi-weekly payouts" describes contractor pay, not customer acceptance/QA/SLA). **unknown**. |
| 11 | Knowledge reuse claim | Not found in fetched content. **unknown**. |
| 12 | Deployment model | Not disclosed. **unknown**. |
| 13 | Security posture (published) | Not found — turing.com/security returned **HTTP 404**. **unknown**. |
| 14 | Stated strengths | "Top Tier Compensation," "Transparent, bi-weekly payouts," partnerships named with Anthropic, Google DeepMind, Nvidia, 140+ country reach. [OFFICIAL_COMPANY] |
| 15 | Documented criticism (third-party) | None found via direct search. Multiple Bing News searches for "Turing AI controversy," "Turing lawsuit workers pay," "Turing AI evaluation criticism" all returned **explicit no-results** in German-localized Bing News. This is a **search-index gap, not proof of absence** — plain confirmation: no third-party criticism located by this lane. |

Funding/valuation: "$300M+ raised from top-tier venture capital firms" (specific investors not disclosed in the fetched page) [OFFICIAL_COMPANY, turing.com, fetched OK, but figure not independently corroborated by a second source]. Separately, the Forbes article on Mercor (relayed via Bing) referenced **"Turing AI"** at a **$2.2 billion valuation** as part of listing Mercor's competitive landscape [REPUTABLE_MEDIA, Forbes via Bing relay, fetched OK — note: this figure appears in an article primarily about Mercor, not a dedicated Turing funding article, so treat as a secondary mention, not confirmed by a Turing-specific source]. Revenue/headcount: not found. **unknown**.

---

## CRITICISM / FAILURE-MODE EVIDENCE TABLE

| Company | Event | Detail | Source | URL | Fetch outcome | Confidence |
|---|---|---|---|---|---|---|
| Scale AI | Meta investment | June 2025; sources conflict between **$14.3B** and **$14.8B** for a **49% non-voting stake**; Wikipedia text itself states "more than $14 billion" without reconciling the figures; Alexandr Wang left to join Meta, Jason Droege became CEO | SECONDARY_DB (Wikipedia relaying multiple refs) | en.wikipedia.org/wiki/Scale_AI | Fetched OK | High (deal occurred) / conflict explicitly flagged in-source for exact amount |
| Scale AI | Customer pullback post-Meta deal | "Meta's Scale AI deal has clients like Google halting projects, contractors scrambling, and one investor bailing out"; Google, OpenAI, and xAI reportedly halted some Scale AI projects | REPUTABLE_MEDIA (Business Insider, via Bing News relay — direct BI fetch blocked 403) | businessinsider.com/google-xai-openai-pull-back-meta-scale-ai-investment-2025-6 | Bing relay fetched OK; direct BI URL = **HTTP 403 (blocked, server answered)** | Medium — relayed via Bing summarization, not independently read from BI directly |
| Scale AI | Google split reported | "Google plans to split from Scale AI after Meta's deal" | REPUTABLE_MEDIA, WION | wionews.com/business-economy/google-plans-to-split-from-scale-ai-after-meta-s-deal-1749985493028 | Found via Bing News listing; not independently fetched by this lane | Low-medium — headline only, not body-fetched |
| Scale AI | WSJ coverage | Startup/VC coverage of the Scale AI situation, reporter Berber Jin | REPUTABLE_MEDIA, Wall Street Journal | Not captured (paywalled, URL not resolved) | Not fetched | Low — headline/byline only via Bing relay |
| Scale AI | Layoffs | January 2023: 20% of workforce laid off (no headcount given) | SECONDARY_DB, Wikipedia | en.wikipedia.org/wiki/Scale_AI | Fetched OK | Medium |
| Scale AI | Layoffs (2025, disputed) | Wikipedia relays a Business Insider reference: Scale "blamed overhiring and market shifts for layoffs" and "is not profitable" (mid-2025) | SECONDARY_DB relaying REPUTABLE_MEDIA (BI, unreachable directly) | (BI reference not directly resolvable; underlying URL not captured) | BI direct = 403; Wikipedia fetched OK | Low-medium — could not independently confirm at BI |
| Scale AI | Contractor lawsuits | Dec 2024: former employee sued alleging "wage theft and misclassifying workers." Jan 2025: second wage-theft suit. Third suit: alleged "psychological harm from being exposed to disturbing content" | SECONDARY_DB, Wikipedia | en.wikipedia.org/wiki/Scale_AI | Fetched OK | Medium |
| Scale AI / Remotasks | Fairwork (Oxford Internet Institute) assessment | 2022 study: **"Remotasks met the 'minimum standards of fair work' in only one out of ten criteria."** Pay for annotation tasks in Philippines/India/Venezuela dropped to "less than one cent" amid "vicious competition." Late payments "reportedly commonplace"; some workers received "only a few percent of promised compensation." In the Philippines, many hires are "freelance contractors not covered under labor laws." Platform terminated operations in Kenya, Nigeria, Pakistan in early 2024 "citing administrative and operational considerations." | SECONDARY_DB, Wikipedia (Remotasks article) | en.wikipedia.org/wiki/Remotasks | Fetched OK | Medium-high (direct Fairwork site itself: fair.work/en/fw/rankings and fair.work/en/ratings both returned **HTTP 404** — could not independently verify at the primary Fairwork source) |
| Scale AI | Google Docs / public data-exposure incident | The prompt asked specifically about reporting of Scale AI contractor work being exposed via publicly-shared Google Docs | — | — | **Not found.** Multiple Bing News searches ("Scale AI Google Docs leak," "Scale AI data labelers shared Google Docs security," "Scale AI data leak spreadsheet TechCrunch") all returned **explicit no-results** in this lane's search environment | **Could not verify — marked unknown, not proven absent** (Bing News is recency-weighted and German-localized here; a "no results" is not equivalent to a 404/NXDOMAIN) |
| Mercor | Employee/contractor fraud | An early hire/lead manager on the Anthropic account embezzled funds by recruiting his brother and father as fake "experts," sending them "hundreds of thousands of dollars in so-called bonus payments"; discovered ~Dec 2024; employee fired, funds recovered, reportedly "did not end up costing customers any money" | REPUTABLE_MEDIA, Forbes (Rashi Shrivastava) | forbes.com/sites/rashishrivastava/2026/04/15/mercors-23-year-old-billionaire-founders-grapple-with-employee-fraud-and-north-korean-infiltration/ | Direct fetch = **HTTP 403**; content obtained via Bing News relay/summarization of the same article | Medium — relay-summarized, not directly read by this lane |
| Mercor | Suspected North Korean operative infiltration | From Nov 2024 onward, suspected DPRK operatives allegedly used stolen credentials to pass identity checks and produced AI training data for U.S. labs including Anthropic; internally called "NKs"; quote from a former employee: **"They would work 80 hours a week and produce the cleanest code."** Detected via fraud-detection tooling and video interviews showing operators in shared offices wearing identical headphones. Mercor responded by adopting three screening firms, forming a fraud team, and working with Persona for identity verification | REPUTABLE_MEDIA, Forbes (via Bing relay) | Same Forbes URL as above | Same as above (403 direct / Bing relay OK) | Medium |
| Mercor | LiteLLM supply-chain breach | Early April 2026 (per Forbes) / "March 2026" (per Wikipedia relay) — **date conflicts across the two sources, both reported.** Forbes: affected "thousands of companies"; impact: "Meta paused work with Mercor; OpenAI evaluating relationship." At least six contractor lawsuits alleging negligence leading to exposure of Social Security numbers and personal data. Wikipedia's relay states the breach "exposed approximately 4 terabytes of internal data and contractor personally identifiable information, triggering class-action lawsuits and temporary work pauses from clients including Meta." | REPUTABLE_MEDIA (Forbes, via Bing relay) + SECONDARY_DB (Wikipedia) | Forbes URL above; en.wikipedia.org/wiki/Mercor | Forbes = 403 direct/Bing relay OK; Wikipedia = fetched OK | Medium — two sources corroborate the event but disagree on the month (March vs April 2026) and on some details (data volume only in Wikipedia's relay) |
| Mercor | Work culture / pay criticism | "996" culture (9am–9pm, six days/week) reported for staff; contractors reported "stressful work environment, poor management, and declining pay"; compensation structure for strategic project leads shifted from revenue commission (5% cash/10% equity) to performance bonuses | REPUTABLE_MEDIA, Forbes (via Bing relay) + SECONDARY_DB, Wikipedia | Same as above | Same as above | Medium |
| Mercor | Founder profile | Brendan Foody, Adarsh Hiremath, Surya Midha — Bay Area high-school friends (Bellarmine College Prep debate team), Thiel Fellows ($200K each), dropped out of college; became billionaires at age 22 (Oct 2025), described by Forbes as "world's youngest self-made billionaires" | REPUTABLE_MEDIA, Forbes (via Bing relay) | Same as above | Same as above | Medium |
| Mercor | How it describes itself vs traditional staffing/recruiting | No explicit self-comparison statement located in any fetched Mercor source | — | — | Direct Bing News search for this topic returned **no results** | **unknown** |
| Turing | Any reported controversy | None located | — | — | Three separate Bing News searches ("Turing AI company lawsuit workers pay," "Turing.com AI controversy criticism," "Turing AI evaluation company criticism") all returned **explicit no-results** | **Could not verify — marked unknown, not proven absent** |
| Invisible Technologies | Automation vs. human split description | "Agents that hand off finished results to your systems"; "AI-plus-human collaboration, with the audit trail"; Meridial = "a flexible human layer that integrates tightly with our platform," used for "stress-testing AI systems, or handling edge cases your agents aren't ready for yet" | OFFICIAL_COMPANY | invisibletech.ai | Fetched OK | High — direct company language |
| Invisible Technologies | "Digital workers"/AI training business lines | "Axon" agent platform ("AI agents that hand off finished results to your systems"); AI Training line described as **"Where the world's top AI models are trained"**, "research-grade annotation, training, and evaluation," claims trained **"over 80% of the world's leading AI models."** | OFFICIAL_COMPANY | invisibletech.ai | Fetched OK | High |
| Invisible Technologies | Layoffs | Wikipedia cites "one 2023 Business Insider article" noting "dozens of contractors" were laid off | SECONDARY_DB (Wikipedia relaying BI, BI not independently fetched) | en.wikipedia.org/wiki/Invisible_Technologies | Wikipedia fetched OK; underlying BI article not fetched (blocked/not attempted) | Low-medium |

---

## PROVEN ABSENT (clean 404 / NXDOMAIN — confirms non-existence of that specific page, not of the underlying fact)

| URL attempted | Result |
|---|---|
| https://superside.com/plans | HTTP 404 |
| https://superside.com/about | HTTP 404 |
| https://superside.com/newsroom | HTTP 404 |
| https://mercor.com/about | HTTP 404 |
| https://mercor.com/security | HTTP 404 |
| https://mercor.com/trust | HTTP 404 |
| https://scale.com/about (as standalone path attempt beyond the one that succeeded via redirect handling) — note: scale.com/about DID fetch OK in this session; listed here only for clarity it is NOT in the absent list | (n/a — scale.com/about succeeded) |
| https://turing.com/about | HTTP 404 |
| https://turing.com/security | HTTP 404 |
| https://www.turing.com/about-us | HTTP 404 |
| https://invisible.co/security | HTTP 404 (note: invisible.co redirects 301 to invisibletech.ai for most paths; invisibletech.ai/trust succeeded, but invisible.co/security itself 404'd before any redirect resolution) |
| https://en.wikipedia.org/wiki/Mercor_(company) | HTTP 404 |
| https://en.wikipedia.org/wiki/Turing_(AI_company) | HTTP 404 |
| https://en.wikipedia.org/wiki/Turing_(company) | HTTP 404 |
| https://fair.work/en/fw/rankings/?region=all&company=remotasks | HTTP 404 |
| https://fair.work/en/ratings/ | HTTP 404 |

**Note on en.wikipedia.org/wiki/Superside**: this fetch did not return a 404; it returned content about an unrelated topic ("Sidecar World Championship"), which suggests either the article does not exist under that exact title and the fetch mis-resolved, or a genuine naming collision. This is **not classified as PROVEN ABSENT** (no clean 404 received) — treat the existence of a Superside Wikipedia article as unresolved/unknown.

**Note on Business Insider and Forbes**: both domains answered with HTTP 403 on direct fetch (confirming reachability per the task's own framing) — Business Insider content for the Scale AI/Meta customer-pullback story and the Scale AI layoffs/profitability story, and Forbes content for the Mercor fraud/NK-infiltration story, were obtained only via Bing News' own summarization/relay of those articles, not by this lane directly reading the source HTML. This is flagged throughout as a lower-confidence, relay-sourced citation, per the hard rules on fetch-outcome transparency.