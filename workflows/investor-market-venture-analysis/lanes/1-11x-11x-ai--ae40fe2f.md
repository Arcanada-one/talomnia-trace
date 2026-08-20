Delivering the research now (a status-check message arrived mid-run from a parallel lane asking me to wrap up with verified findings — I've done a final consolidation pass rather than additional speculative fetching).

**Methodology note:** WebSearch was budget-exhausted (never used). Plain `bing.com/search` returned irrelevant/localized junk (geo-defaulted to Germany, ignored query terms) and is flagged unusable below, not treated as absence-proof. `news.google.com/rss/search` worked reliably for headline/source/date discovery; where I only saw a headline in that feed (did not open the underlying article), it's marked "headline-only, not fetched" with reduced confidence. `en.wikipedia.org` worked. Direct company-URL guesses worked well. Google web search and most direct TechCrunch/Bing consent-redirects looped into `consent.google.com` (DE geo) and were abandoned in favor of direct TechCrunch URL guesses, which succeeded.

---

## 1. 11x (11x.ai)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Sales, RevOps, Marketing teams at mid-market/enterprise companies. [OFFICIAL_COMPANY, 11x.ai homepage, fetched OK, high confidence] |
| 2 | Product | Two "AI digital workers": **Alice** (outbound SDR) and **Julian** (inbound phone agent) — automate prospecting, engagement, lead qualification. [OFFICIAL_COMPANY, fetched OK] |
| 3 | Business model | SaaS subscription for "digital worker" deployment/usage across channels (email, phone, social, SMS). No explicit per-seat/per-outcome language found. [unverified — inferred from marketing copy, OFFICIAL_COMPANY, fetched OK] |
| 4 | Pricing | Not published. `https://www.11x.ai/pricing` → **HTTP 404** (fetched, confirmed absent). Site directs to "Live Demo" request. |
| 5 | Execution model | Company claims full autonomy; third-party reporting (ZoomInfo pilot) suggests real-world performance gaps. Mixed/disputed. |
| 6 | Human-involvement, verbatim | "Independent, proactive, and able to execute complex tasks without supervision to drive results autonomously." [OFFICIAL_COMPANY, 11x.ai homepage, fetched OK] |
| 7 | Vertical/horizontal | Horizontal (sales prospecting, any industry). |
| 8 | Tool vs outcome | Framed rhetorically as labor replacement ("digital worker") but commercially delivered as SaaS software subscription. |
| 9 | Evidence/audit trail published | Not found on any fetched page. **unknown**. |
| 10 | Customer acceptance model | **unknown** — not stated on any fetched page. |
| 11 | Knowledge reuse across customers | **unknown** — not claimed on any fetched page. |
| 12 | Deployment model | SaaS, hosted on AWS. [OFFICIAL_COMPANY, /security page, fetched OK] |
| 13 | Privacy/security posture | SOC 2 Type II, CASA Tier 3, GDPR/CCPA framework, TLS in transit, AES-256 at rest, AWS RDS clustered DB. [OFFICIAL_COMPANY, /security page, fetched OK] |
| 14 | Stated strengths | "Always learning," "deeply integrated," 24/7 multilingual operation, "every message written for your specific prospect." No benchmark-style claim (e.g. SWE-bench-equivalent) found. [OFFICIAL_COMPANY] |
| 15 | Documented weaknesses/criticism | See Criticism table below — customer-logo misrepresentation (ZoomInfo, Airtable), churn/culture reporting, CEO resignation. |

**Funding:** $2M pre-seed (Aug 2023, TechCrunch headline, RSS-only); $24M Series A led by Benchmark (announced Sep 16 2024, TechCrunch headline, RSS-only); $50M Series B led by a16z — TechCrunch "Exclusive" dated Sep 30 2024 (RSS-only) vs. official announcement dated Nov 11 2024 (Yahoo Finance/Sifted, RSS-only) — **both dates reported, conflict noted, neither individually opened**. Total raised "$70M+" per company's own /security page (OFFICIAL_COMPANY, fetched OK). **Valuation: unknown** — not found in any source. **ARR/customer counts: unknown** — company lists named logos (Checkr, Canibuild, MMB Networks, Leica Biosystems, Ouster, Rho) on its homepage, but see Criticism table — logo-accuracy is independently disputed for at least two of these customer-type claims (ZoomInfo, Airtable, both since removed from site per TechCrunch).

---

## 2. Artisan (artisan.co)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Startups, SMB/mid-market, enterprise sales orgs. [OFFICIAL_COMPANY, homepage, fetched OK] |
| 2 | Product | **Ava**, an AI "BDR" — finds/enriches leads, sends multichannel outreach, handles replies, books meetings. [OFFICIAL_COMPANY, fetched OK] |
| 3 | Business model | Subscription SaaS, volume-tiered (leads/mailboxes/dialer seats). [OFFICIAL_COMPANY, /pricing, fetched OK] |
| 4 | Pricing | Team (~2,500 leads/mo), Scale (~6,000 leads/mo), Enterprise (custom) — **no dollar figures published**; all tiers require "Talk to sales." [OFFICIAL_COMPANY, fetched OK] |
| 5 | Execution model | Human-in-the-loop by default: "approval mode, escalation rules, account owner respect, exclusion lists," with an optional full-autonomy mode. |
| 6 | Human-involvement, verbatim | Marketing: "She handles every reply...books meetings directly on your reps' calendars." Contrast — CEO on the ad campaign: **"No, which is ironic, because we did the billboards that said, 'stop hiring humans' but that was mostly just for attention."** [TechCrunch, Apr 9 2025, fetched OK, verbatim] |
| 7 | Vertical/horizontal | Horizontal (outbound sales). |
| 8 | Tool vs outcome | Sold as a tool (volume-tiered SaaS subscription); marketed rhetorically as headcount replacement. |
| 9 | Evidence/audit trail | "Audit logging" listed as a security feature, but this is access/admin logging, not published session-logs/replay of AI work product. [OFFICIAL_COMPANY, fetched OK] |
| 10 | Customer acceptance model | **unknown**. |
| 11 | Knowledge reuse across customers | **unknown** — not claimed. |
| 12 | Deployment model | SaaS; SSO/SAML/SCIM supported. [OFFICIAL_COMPANY, fetched OK] |
| 13 | Privacy/security posture | SOC 2 Type II certified, GDPR compliant, RBAC, audit logging. [OFFICIAL_COMPANY, fetched OK] |
| 14 | Stated strengths | Case-study claims: "20x ROI, $700K ARR sourced in 6 months" (RAISE Summit case study); Jason Lemkin (SaaStr) quoted: "replaced our entire outbound sales team with Artisan"; SumUp: "$52 cost per lead from 400k+ personalized emails." [OFFICIAL_COMPANY marketing page, fetched OK — third-party attribution but hosted/selected by Artisan, so treat as OFFICIAL_COMPANY-curated, not independently verified] |
| 15 | Documented weaknesses/criticism | Extensive — see Criticism table: "Stop Hiring Humans" billboard backlash, temporary LinkedIn ban, and the still-hiring-humans irony. |

**Funding:** $12M Series Seed (Sep 2024, RSS-only); **$25M Series A led by Glade Brook Capital** (announced Apr 9 2025, TechCrunch, fetched OK — investors also include Y Combinator, Day One Ventures, HubSpot Ventures, Oliver Jung, Fellows Fund). **Valuation: unknown** — not found. **ARR/customers:** TechCrunch (Apr 9 2025, fetched OK) reported **$5M ARR and 250 customer companies** at that date, **35 employees with 22 more roles planned**; company's own current homepage (fetched separately, undated claim) states "6,000+ sales teams" as customers — **conflict/growth noted, both reported**.

---

## 3. Cognition (cognition.com / Devin)

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Large enterprises: named customers Mercedes-Benz, Goldman Sachs, Infosys, Cognizant; also "Cognition for Government." [OFFICIAL_COMPANY, homepage, fetched OK] |
| 2 | Product | "Devin, the first autonomous software engineer" — "plans, writes, tests, and ships production code on its own, working inside your codebase." [OFFICIAL_COMPANY, fetched OK] |
| 3 | Business model | Subscription/enterprise licensing. Exact structure (per-seat vs. usage) **not disclosed** on fetched pages. [unverified] |
| 4 | Pricing | No published consumer pricing found; enterprise appears custom/sales-led. **unknown** exact figures. |
| 5 | Execution model | Company markets **both** framings simultaneously (see below) — genuinely dual/contradictory public positioning, not a single clear answer. |
| 6 | Human-involvement, verbatim | Autonomy framing: **"Devin, the first autonomous software engineer."** Collaboration framing (same site): **"expanding human capacity — not by replacing meaningful work but by working alongside people as an exponential collaborator."** [Both OFFICIAL_COMPANY, homepage, fetched OK — reported as-is, contradiction flagged] |
| 7 | Vertical/horizontal | Horizontal (software engineering, any industry). |
| 8 | Tool vs outcome | Marketed with "engineer"/labor framing; commercially delivered as a subscription software product. |
| 9 | Evidence/audit trail | Audit logs exist internally (≥1 year retention per security docs) but are for compliance access-logging, not a published/customer-facing session-replay or PR-diff trail. [OFFICIAL_COMPANY, /security, fetched OK] |
| 10 | Customer acceptance model | **unknown** — not stated on fetched pages (product description implies PR-based code delivery into "your codebase," consistent with code-review/PR-merge acceptance, but this is inference, not a sourced claim — flagged [unverified]). |
| 11 | Knowledge reuse across customers | **unknown** — not claimed. |
| 12 | Deployment model | SaaS with a **hybrid data plane**: "Control Plane" is Licensor-managed; "Data Plane" can be Licensor-controlled OR the customer's own cloud account ("Customer Data Plane"), which Licensor cannot access. [OFFICIAL_COMPANY, /security, fetched OK] |
| 13 | Privacy/security posture | SOC 2 Type II **and** ISO 27001, TLS 1.2+ in transit, AES-256 at rest, annual pen testing + bug bounty, MFA, RBAC, dedicated incident-response team, one customer audit/year. [OFFICIAL_COMPANY, /security, fetched OK] |
| 14 | Stated strengths | No exact SWE-bench number+date was locatable on any page I fetched — **this is a gap, explicitly flagged, not filled with a training-memory number**. Third-party (via Wikipedia, which cites Bloomberg testing): Devin could "create a website within ten minutes" and recreate a Pong game. [SECONDARY_DB — en.wikipedia.org "Devin AI" article, fetched OK, summarizing REPUTABLE_MEDIA Bloomberg testing — confidence medium, underlying Bloomberg piece not independently opened] |
| 15 | Documented weaknesses/criticism | Launch-demo criticism, Windsurf acquisition + post-acquisition layoffs/buyouts — see Criticism table. |

**Funding/valuation (chronological):** $21M round, early 2024, at **$350M valuation** [en.wikipedia.org "Devin AI," fetched OK]. → **$10B valuation** reported ~Sep 8 2025 (Bloomberg headline via Google News RSS — **headline-only, article not opened**, REPUTABLE_MEDIA, medium confidence). → **"raised $1B at $25B pre-money valuation"** reported ~Apr 23–May 27 2026 (TechCrunch/Bloomberg headlines via RSS — **headline-only**) → same round reported elsewhere as **"$26B post-money"** (FinSMEs/The Information headlines, RSS-only) — noted as the same financing event described two ways. → **Aug 12, 2026: reportedly in talks to raise at a $40B valuation**, "less than three months after $26B mark" (TechCrunch, Bloomberg, PYMNTS, Tech Funding News — all RSS headline-only, explicitly "reportedly"/"in talks," i.e. **unconfirmed as of today, 2026-08-20**). **ARR:** GetLatka headline "Cognition AI Revenue 2026: $492M ARR, $26B Valuation" — **SECONDARY_DB, headline-only, not independently verified, [unverified]**.

---

## 4. Factory (factory.ai / "Droids")

| # | Field | Finding |
|---|---|---|
| 1 | Target customer | Enterprise engineering teams / global systems integrators. Named clients: Blackstone, Adyen, Wipro, Groq, Chainguard, You.com, Podium. [OFFICIAL_COMPANY, homepage, fetched OK] |
| 2 | Product | "Droids" — described as "agent-native software development," "THE AUTONOMY STACK FOR ENTERPRISE TEAMS." [OFFICIAL_COMPANY, fetched OK] |
| 3 | Business model | Subscription SaaS, **per-seat** tiers. [OFFICIAL_COMPANY, /pricing, fetched OK] |
| 4 | Pricing | **Pro $20/mo, Plus $100/mo, Max $200/mo, Business custom (up to 150 seats), Enterprise custom (unlimited seats)**. [OFFICIAL_COMPANY, /pricing, fetched OK — exact published figures] |
| 5 | Execution model | Company markets autonomy ("THE INDUSTRIAL REVOLUTION FOR SOFTWARE DEVELOPMENT"); no explicit human-in-loop statement found on fetched pages. Fast Company headline (Feb 25 2025, RSS-only, not opened) describes it as "a junior developer in a box" — **REPUTABLE_MEDIA framing, headline-only**. |
| 6 | Human-involvement, verbatim | "THE AUTONOMY STACK FOR ENTERPRISE TEAMS." [OFFICIAL_COMPANY, homepage, fetched OK] — no more granular human-in-loop language found. |
| 7 | Vertical/horizontal | Horizontal (software engineering). |
| 8 | Tool vs outcome | Tool — explicitly per-seat subscription software. |
| 9 | Evidence/audit trail | "Audit logging" listed as a Business/Enterprise-tier feature (access/admin logging). [OFFICIAL_COMPANY, /pricing, fetched OK] |
| 10 | Customer acceptance model | **unknown**. |
| 11 | Knowledge reuse across customers | **unknown** — not claimed. |
| 12 | Deployment model | SaaS by default; **on-premise deployment available at Enterprise tier**, plus customer-managed encryption keys and data residency options. [OFFICIAL_COMPANY, /pricing, fetched OK] |
| 13 | Privacy/security posture | Privacy Policy, Terms, SLA, DPA, and **BAA** (HIPAA-relevant) all referenced as available documents; specific controls not detailed on fetched pages. [OFFICIAL_COMPANY, homepage, fetched OK] |
| 14 | Stated strengths | **Gap** — I could not locate any independent benchmark (SWE-bench or otherwise) for Factory. Search results were heavily polluted by unrelated "Forex Factory," "Factory Magdeburg" (concert venue), and Disney "Star Wars Droid Factory" toy-news noise across multiple query attempts. |
| 15 | Documented weaknesses/criticism | **No independent evaluation or critical press located** despite repeated search attempts — explicit gap, not filled. |

**Funding/valuation (chronological):** $50M Series B from NEA, Sequoia Capital, NVIDIA, and J.P. Morgan (Business Wire, Sep 25 2025, RSS headline-only). → **$150M Series C at a $1.5B valuation**, led by Khosla Ventures with Sequoia Capital, reported Apr 16–17 2026 across WSJ/Tech Funding News/FinSMEs/Yahoo Finance (all RSS headline-only, consistent figures across independent outlets, medium-high confidence despite none individually opened). → City AM, Aug 3 2026 (RSS headline-only): **"Exclusive: Blackstone set to back AI 'droid' firm at $3.5bn valuation"** — explicitly "set to," i.e. **reported/unconfirmed**. **ARR:** GetLatka headline "Factory Revenue 2025: $129M ARR (**Bootstrapped**)" [SECONDARY_DB, RSS headline-only] — **note: "Bootstrapped" directly conflicts with the same company's reported $50M Series B and $150M Series C VC rounds found in the same search sweep; flagged as an unresolved conflict, not reconciled**.

---

## CRITICISM / FAILURE-MODE EVIDENCE

| Company | What happened | Date | URL | Fetch outcome | Verbatim quote |
|---|---|---|---|---|---|
| 11x | ZoomInfo says 11x displayed its logo as a customer without permission; only ran a 1-month trial (mid-Jan–mid-Feb) during which "11x's product performed significantly worse than our SDR employees"; lawyer alleged "deceptive trade practices, trademark infringement, misappropriation of goodwill, and false advertising" | reported Mar 24, 2025 | techcrunch.com/2025/03/24/a16z-and-benchmark-backed-11x-has-been-claiming-customers-it-doesnt-have/ | fetched OK | "Since November, 11x has been claiming us as a customer in a multitude of channels: in sales calls, on its website, and now even on its AI dialer. We've spent the past four months demanding that they stop displaying our logo." |
| 11x | Airtable's logo appeared on 11x's site/"manifesto" page as of Mar 20–21, 2025 despite only a short trial the prior year, "never used in production and never rolled out to our sales team" | Mar 24, 2025 | techcrunch.com/2025/03/24/a16z-and-benchmark-backed-11x-has-been-claiming-customers-it-doesnt-have/ | fetched OK | "It was never used in production and never rolled out to our sales team." |
| 11x | Company response to the logo-misuse reporting | Mar 24, 2025 | same URL as above | fetched OK | Company said it "promptly removed any undesired or inaccurate customer mentions" and attributed limited cases to "human error." |
| 11x | Sifted reports 11x facing scrutiny over customer churn and "toxic" office culture | Mar 25, 2025 | (Sifted; RSS title only — full article not opened; direct fetch not attempted after wrap-up instruction) | RSS headline seen via news.google.com/rss — **article itself NOT independently fetched** | Headline only: "11x faces scrutiny over customer churn and 'toxic' office culture" — **content beyond the headline unverified** |
| 11x | Inc.com framed the affair as AI's "Theranos Moment" | Apr 11, 2025 | (Inc.com; RSS title only, not opened) | RSS headline seen, article not fetched | Headline only: "AI's 'Theranos Moment'? What the 11x Scandal Reveals About Credibility" — content unverified |
| 11x | Founder/CEO Hasan Sukkar stepped down, replaced by CTO Prabhav Jain; moved to non-executive chairman | May 5, 2025 | techcrunch.com/2025/05/05/11x-ceo-hasan-sukkar-steps-down/ | fetched OK | "I love building from the ground up. It's in my bones." / "sometimes, loving your company means knowing when to pass the CEO baton for the next leg of the race." (Sukkar, on LinkedIn, as quoted by TechCrunch) |
| Cognition/Devin | Original Devin launch-demo videos criticized by YouTube channels for showing fabricated/irrelevant work product | reporting summarized, original demo Mar 2024 | en.wikipedia.org/wiki/Devin_AI | fetched OK | "failing to deliver on the project request, instead writing, testing, and debugging code irrelevant to the Upwork request" (attributed by Wikipedia to YouTube channels "Internet of Bugs" and "Computer Vision Project") |
| Cognition | Cognition acquires Windsurf's IP, product, and remaining staff (post Google's hire of key Windsurf leadership) | signed Jul 14, 2025 (first contact Fri Jul 11, agreement signed Mon morning) | techcrunch.com/2025/07/14/cognition-maker-of-the-ai-coding-agent-devin-acquires-windsurf/ | fetched OK | "Incredibly excited to share that Cognition is acquiring Windsurf. What an insane weekend – from first call after 5pm on Friday to a signed definitive agreement this morning." (Cognition President Russell Kaplan). Deal price undisclosed. Windsurf: $82M ARR, 350+ enterprise customers, "hundreds of thousands" of DAUs at acquisition. |
| Cognition | Three weeks after the Windsurf acquisition: 30 employees laid off, buyout offered to ~200 remaining staff (9 months' salary, decide-by Aug 10), staff who stay required to work 6 days/week, 80+ hour weeks | Aug 5, 2025 | techcrunch.com/2025/08/05/three-weeks-after-acquiring-windsurf-cognition-offers-staff-the-exit-door/ | fetched OK | "We don't believe in work-life balance—building the future of software engineering is a mission we all care so deeply about that we couldn't possibly separate the two." (CEO Scott Wu) |
| Artisan | Company's own ad campaign vs. reality: still had 35 employees, planned 22 more hires (incl. sales), despite "Stop Hiring Humans" billboards; also raised $25M same period | Apr 9, 2025 | techcrunch.com/2025/04/09/artisan-the-stop-hiring-humans-ai-agent-startup-raises-25m-and-is-still-hiring-humans/ | fetched OK | "No, which is ironic, because we did the billboards that said, 'stop hiring humans' but that was mostly just for attention." / "Human labor becomes more valuable when you have the AI content." (CEO Jaspar Carmichael-Jack) |
| Artisan | "Stop Hiring Humans" SF billboard campaign launch sparked broad backlash coverage across many outlets (Ars Technica, SF Chronicle, Gizmodo, CBS News, KQED, and more — titles only, not all opened) | Dec 10–18, 2024 (initial wave); recurring coverage through Aug 2026 | Ars Technica: techcrunch.com-style guess failed → fetched via news.google.com RSS redirect attempt, which looped to consent.google.com; **the underlying Ars Technica article itself was NOT successfully fetched** | RSS headline seen; consent-redirect blocked full fetch | Headline only: "AI company trolls San Francisco with billboards saying 'stop hiring humans'" — content beyond headline unverified |
| Artisan | LinkedIn temporarily banned Artisan's company page over the campaign, then reinstated it | ban reported ~Jan 8, 2026; reinstatement reported Jan 7, 2026 (dates as returned by feed, order as-shown, not reconciled) | (TechCrunch "Yes, LinkedIn banned AI agent startup Artisan, but now it's back"; KRON4 "...banned from LinkedIn temporarily" — both RSS headline-only, neither opened) | RSS headlines seen, articles not independently fetched | Headlines only — content unverified beyond title |
| Artisan | Billboard campaign flown over SF by plane; described by SFist as "rage-baiting" | May 1, 2026 | (SFist; RSS headline only, not opened) | RSS headline seen, not fetched | Headline only: "Day Around the Bay: AI Company Flies Rage-Baiting 'Stop Hiring Humans' Ad Through the Sky" |
| Artisan | 'This is fine' comic creator (KC Green) alleges the company stole his art for campaign creative | May 3, 2026 | (TechCrunch; RSS headline only, not opened) | RSS headline seen, not fetched | Headline only: "'This is fine' creator says AI startup stole his art" — content unverified |

---

## PROVEN ABSENT (404 / NXDOMAIN — confirmed non-existent, not merely blocked)

- `https://www.11x.ai/pricing` — **HTTP 404**. Confirms 11x has no public pricing page.
- `https://en.wikipedia.org/wiki/Cognition_(company)` — **HTTP 404**. No Wikipedia article exists under that exact title (Devin AI has its own article, which does exist and was used above).

**Not proven absent, just unusable/unreachable (excluded from "proven absent" per the 403/429-vs-404 rule):**
- Plain `bing.com/search?q=...` — returned consistently irrelevant, geo-localized (German) generic results across 6 separate queries; server answered (200 OK) but content was not responsive to the query — **treated as a dead search channel, not evidence any topic doesn't exist**.
- `google.com/search` and several `news.google.com/rss/articles/...` deep-link redirects — looped to `consent.google.com` (GDPR/DE geo-gate), never reached the target — **blocked by consent wall, not proof of absence**.
- Several individual source articles seen only as RSS headlines (Sifted "toxic culture" piece, Inc.com "Theranos Moment" piece, Ars Technica billboard piece, LinkedIn-ban pieces, "stole his art" piece) were **not independently opened** — flagged inline above as headline-only, not claimed as fully verified.
- No independent third-party evaluation or criticism of Factory/Droids was located despite multiple query variants — search noise (Forex Factory, Factory Magdeburg venue, Disney Droid Factory toys) dominated results; this is a **research gap**, not a confirmed absence of such coverage.
- Exact SWE-bench (or equivalent) benchmark number + date for Devin — **not located** on any fetched page; not fabricated, left as unknown.