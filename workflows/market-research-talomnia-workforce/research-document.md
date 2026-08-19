---
id: tal-research-market-workforce
name: market-research-talomnia-workforce
description: Talomnia Workforce market research — category landscape, competitor and adjacent-category pricing with sources, first self-use unit-economics measurement, ICP, and the first sellable service. Pre-commercial self-use validation case.
version: 0.2.0
created: 2026-08-19
updated: 2026-08-19
status: published
lane: TALO-0006
visibility: public
related_workflow: TALO-0006
public_workflow_slug: market-research-talomnia-workforce
public_research_slug: market-research-talomnia-workforce
tags: [research, market, pricing, unit-economics, icp, tz-5-6]
---

# Talomnia Workforce — Market Research

> **Built by Talomnia for Talomnia — pre-commercial self-use validation.**
> This research was produced by the
> Talomnia agentic workforce for Talomnia itself, as part of building talomnia.com.
> It is a dogfooding demonstration, not a client delivery and not a commercial
> engagement. Talomnia Workforce has **no commercial cases yet**; all target figures
> mentioned anywhere in Talomnia materials are validation targets, not traction.

## 0. Executive summary (added in v0.2.0, R1-03)

Talomnia Workforce sells completed professional work with economics fixed
before execution and an evidence trail after it. This research grounds three
launch decisions. Findings: (1) the "completed work, not a tool" category is
real and being validated commercially by others in narrow verticals, while
the cross-domain "verifiable accountable work" slot is unclaimed; (2) buyers
pay for accountability and verification, not labor content — human rates for
the same work span three orders of magnitude, and the market has just learned
(Builder.ai, 11x) to verify vendor claims; (3) sell first: fixed-scope
research/technical-analysis engagements with acceptance criteria and a Budget
Limit, plus the AI-first Transformation Consultation. Published together with
its producing Workflow (public slug `market-research-talomnia-workforce`),
with every published citation fetch-verified in the source manifest.

## 1. Purpose

Two decisions of the Talomnia launch depend on this research:

1. A grounded recommendation on future Workforce rates and unit economics
   (the rates themselves are not published — operator decision; this document
   provides the market context the recommendation is built on).
2. A grounded recommendation for pricing the **AI-first Transformation
   Consultation** offering (price publication requires operator confirmation).

Plus the § 5.6 mandate of the launch specification: identify ICP, pains,
competitors, prices, alternatives, and the first sellable service for the next
30 days.

## 2. Context

Talomnia Workforce sells **completed professional work** — research, software
development, technical and product analysis, AI-first consulting — delivered by
digital specialists (AI agents, software systems, humans, or hybrid teams),
with economics fixed before execution (estimate, Budget Limit, acceptance
criteria) and an Evidence trail after it.

The category boundary matters for every comparison below: Talomnia sells an
**accepted outcome**, not access to a model or a seat licence. Pure AI tools
(chat assistants, copilots, agent frameworks) are a different category — they
transfer the work of prompting, orchestrating, and verifying to the buyer.
Comparing Talomnia's price to a tool subscription is a category error in both
directions: the tool is cheaper because the buyer still does the professional
work; the outcome service is comparable instead to what the buyer would pay a
human performer (freelancer, agency, consultancy, in-house hire) for the same
accepted result.

## 3. Method

- **Desk research (2026-08-19):** two independent research passes over public
  sources — (a) competitor and category landscape, (b) price benchmarks in
  adjacent categories. Every market figure in this document carries a source
  and access date; where only secondary sources exist, they are labelled as
  such. Figures we could not verify are listed as gaps, not guessed.
- **Primary self-use measurement:** the Workflow Ledger of this very launch
  epic (TZ § 9) — measured time, token, cost, rework, and creation-vs-reuse
  data for the agent lanes that built the Talomnia launch infrastructure up to
  the moment of writing. This is a **self-use measurement, not commercial
  delivery data**; its limitations are stated inline in § 6.
- Positioning constraints: this document conforms to the honesty-of-
  presentation policy (no commercial-case implications, no unmeasured
  cheaper-than-human coefficients, targets marked as targets).

## 4. Competitive landscape

Source discipline for this section and § 5: figures marked **[primary]** were seen
on the vendor's/platform's own page or official release; **[secondary]** come from
press, analyst blogs, or aggregators; **[snippet]** were visible only in search-result
snippets of the named page. All accessed 2026-08-19. Secondary and snippet figures
should be re-verified before being repeated on any other surface.

### 4.1 AI-native outcome sellers — the category Talomnia enters

The category "we sell completed work, not a tool" already exists and is being
validated commercially by others — in narrower verticals:

- **Sierra** (customer-service agents) is the category's proof point: $100M ARR
  within ~21 months of launch (TechCrunch 2025-11-21; confirmed on sierra.ai)
  [primary], with explicitly outcome-based pricing — "if an AI agent can't complete
  a task and has to hand the work over to a human, the customer doesn't pay,"
  reportedly around $1.50 per resolved interaction [secondary/snippet]. Per-outcome
  pricing has become standard in its vertical: Intercom Fin $0.99/resolution,
  Zendesk $1.50–2.00/automated resolution, Salesforce Agentforce ~$2/conversation
  [secondary].
- **Crosby** — an AI-native law firm with bar-admitted lawyers selling completed
  contract reviews at a fixed per-document fee (~$400 typical, $250–$1,000 range)
  with a same-day SLA (four hours per Sacra) [secondary: Sacra, Altis]; Sequoia-seeded June 2025,
  later a $60M Series B [secondary]. This is the closest structural analogue to
  Talomnia Workforce: humans + AI inside one accountable entity that sells the
  finished deliverable at a pre-agreed price — not the tool.
- **Invisible Technologies** — hybrid "operations-as-a-service" (software
  orchestration + 3,000+ distributed workers): $134M revenue in 2024, more than
  doubling year-over-year [secondary: Sacra]; raised $100M in September 2025 at
  a >$2B valuation (Businesswire) [primary].
- **Superside** — finished creative work on subscription ($5K–$50K+/month tiers):
  revenue $44.9M in 2024 [secondary]; ARR estimates conflict across sources. Evidence that "completed work as
  a productized service" scales well past $75M ARR.
- **AI-enabled services roll-ups** — General Catalyst allocated $1.5B to buying
  traditional service firms and re-basing them on AI execution (accounting, legal,
  call centers, HR and more), on the logic that labor is 55–65% of services cost
  [secondary]. Institutional capital is explicitly betting on AI-executed
  professional services — as acquisition of existing demand rather than new brands.
- **AIDOLS** — AI-native consulting selling fixed-fee 90-day engagements at
  $75K–$250K with a written ROI guarantee [the vendor's own marketing — treat
  claims accordingly].

By contrast, **Cognition/Devin** — the best-known "AI software engineer" — is still
sold as a metered tool (Agent Compute Units, ~15 min of work each), not as accepted
deliverables with acceptance criteria; reported growth is strong ($73M ARR by
mid-2025, higher figures since — all secondary), but quality criticism ("15% success
rate" on the original agent — critical secondary source) lands precisely because the
buyer, not the vendor, owns acceptance. The gap between "metered agent access" and
"accountable accepted outcome" is where Talomnia positions.

**No company was found selling Talomnia's full bundle** — pre-agreed budget limit +
explicit acceptance criteria + execution evidence trail + rework guarantee, across
professional domains. Crosby (legal; fixed fee, human accountability) and AIDOLS
(consulting; fee-back guarantee) are the closest partial matches; nobody found
productizes "evidence of how the work was done" as a trust feature. Caveat: this is
absence of evidence from a bounded search (~15 queries), not proof of absence.

### 4.2 Traditional alternatives — what the client buys today

- **Consulting.** Roughly a quarter of McKinsey's global fees are reportedly
  outcome-based, with its UK managing partner citing a deliberate shift to
  performance-based arrangements (Nov 2025) [secondary]. Source Global Research
  finds only about half of clients believe consulting firms create value beyond
  "getting what they paid for," and reports 2025 shrinkage in small ad-hoc project
  volume as clients self-serve first-pass insights with AI [secondary].
- **Outsourcing/BPO.** Deloitte's Global Outsourcing Survey 2024 [primary]: only
  25% of executives report lower cost or higher quality from AI-powered
  outsourcing; 70% say their vendor-management function is not fully mature; 70%
  repatriated some outsourced work within five years — yet 80% plan to maintain or
  increase outsourcing investment. Demand persists; satisfaction does not.
- **Freelance marketplaces.** Upwork FY2025 [primary]: revenue $787.8M (+2% YoY),
  GSV >$4B, active clients down ~6% to 785,000, take rate 19%; GSV of "AI
  Integration & Automation" work +90% YoY in Q4 2025. Fiverr FY2025 [primary
  release, figures via snippet]: revenue $430.9M (+10.1%), active buyers −13.6%
  YoY while spend per buyer +13.3% and GMV from >$1,000 transactions +22.8%. The
  shared pattern: fewer, larger buyers — the low end of gig work is being absorbed
  by AI tools, while bigger engagements concentrate.
- **On-demand research / expert networks.** **Wonder (askwonder.com), the pre-AI
  "completed research on demand" service, dissolved as of September 2025**
  [secondary: Inex One directory] — direct evidence that a bare research
  deliverable at a fixed low price does not survive the deep-research-tool era.
  Expert networks (GLG, AlphaSights, Guidepoint) persist at premium prices but draw
  complaints about cost, stale expert profiles, and minimum commitments
  [secondary], and are all bolting on AI research layers.
- **Fractional executives.** A growing "capability without hiring" adjacency:
  market sized $8.6–9.4B in 2025 with double-digit growth forecasts — though the
  two available sizings disagree by ~40% and come from low-tier research firms
  [secondary, low confidence].

### 4.3 Where the category breaks — documented failure modes

These are the failures Talomnia's design choices must answer, because buyers now
know them:

1. **Fabricated traction / AI-washing.** Builder.ai — which occupied almost exactly
   this pitch ("software as easy as ordering pizza") — collapsed into insolvency in
   May 2025 after claimed revenue of $220M was audited to ~$55M and its "AI"
   delivery turned out to be hundreds of human developers [secondary; widely reported].
   11x was reported by TechCrunch (2025-03-24) [primary] displaying logos of
   companies that were not customers (ZoomInfo, Airtable both denied being
   customers) and inflating ARR. Consequence: buyers of AI-delivered work actively
   verify claims; unverifiable marketing is now a negative signal.
2. **Quality variance and churn.** AI SDR products report 50–70% annual churn —
   roughly double human SDR turnover [secondary]; Artisan's CEO publicly
   acknowledged early hallucination and response-rate problems [secondary].
   Reviews allege Toptal's "top 3%" vetting lets quality misses through [secondary;
   the review platform itself was fetch-blocked]. Selling outcomes without a verification layer produces churn.
3. **"Defining done".** Practitioner writing on outcome pricing converges on the
   same point: the hardest part is not the price but a contractually unambiguous,
   technically measurable definition of "done" — attribution disputes, unclear
   success criteria, and customer gaming are the named risks [secondary]. This is
   precisely what pre-agreed acceptance criteria + an evidence trail address.
4. **Commoditization of the bare deliverable.** Deep-research tools (OpenAI,
   Perplexity, Gemini, AlphaSense) collapse the floor price of an unaccountable
   research report toward the cost of a subscription. Wonder's death is the
   market's verdict on unverified research-as-deliverable. What remains scarce is
   accountable, verifiable, accepted work — consistent with the White Paper's
   trust thesis.

## 5. Price benchmarks in adjacent categories

The client compares Talomnia not with a tool subscription but with the alternative
cost of obtaining the same accepted result. Benchmarks (all accessed 2026-08-19;
labels as in § 4):

| Category | Observed range | Source & grade |
|---|---|---|
| Freelance marketplace, hourly (Upwork) | developers median $20/hr (typical $10–100); market research analysts $25–70/hr; business consultants median $55/hr (typical $28–98); business analysts median $35/hr (typical $25–60) | Upwork's own cost-to-hire pages [primary, via snippet — direct fetch 403; re-verify before reuse] |
| Marketplace fees | Upwork: client fee 3–10% by plan, freelancer fee 0–15% (variable since May 2025); Fiverr: buyer 5.5% + small-order fee, seller 20% flat | Upwork pricing pages [primary via snippet]; Fiverr figures [secondary, sources conflict on the small-order fee] |
| Curated talent network (Toptal) | no published rate card [verified on toptal.com]; secondary sources converge on $60–150+/hr, avg ~$90/hr | [secondary, directional only] |
| Offshore staff augmentation | 2026: LatAm junior $33–45 / senior $60–75/hr; Asia junior $24–31 / senior $31–41/hr; CEE junior $31–39 / senior $64–76/hr; rates declining ~7–8% YoY in LatAm/Asia | Accelerance 2026 rate survey [primary] |
| Software dev agencies | most Clutch-listed firms $24–49/hr; span $25–150+/hr | Clutch pricing directory [primary via snippet] |
| Management consulting | MBB partners $500–1,000+/hr billed, teams sold as bundles; Big Four UK £800–1,500/day junior to £3,500–6,000/day partner | [secondary; no firm publishes rates] |
| Custom market research projects | typical custom study $25,000–65,000; qualitative ~$8k–22.5k per 10–15 interviews; executive B2B qualitative $40,000+ | research vendors' published guides [primary for their own pricing, secondary as market norm] |
| Expert networks | ~$600–2,500 per expert-hour or session (GLG per fetched reviews; the often-cited AlphaSights ~$1,000/hr was not confirmed on any fetched page) | [secondary; all quote-only, none publish prices] |
| Analyst reports | Forrester single reports $2,995 (some $1,495) [primary, forrester.com]; subscriptions $25k–500k+/yr [secondary, Vendr data] | mixed |
| AI agent products (tool-metered) | Devin $20/mo entry + ~$2.25/ACU (≈15 min of agent work ⇒ ~$9/agent-hour of metered compute) [secondary press of vendor announcement; vendor page unreachable]; ChatGPT Pro up to $200/mo, top tier [widely published]; reported (never confirmed) OpenAI plans for $2k–20k/mo specialist agents [secondary, The Information via TechCrunch] | mixed |
| AI "employee" products (subscription) | 11x Alice $36,000–45,000/yr [primary, 11x pricing page — internally inconsistent: FAQ $36k/yr vs tier card equivalent $45k/yr]; Artisan ~$7,200/yr [secondary]; Lindy $29.99–199.99/user/mo [primary, live page] | mixed |
| AI outcome pricing (support vertical) | $0.99–2.00 per resolved conversation (Intercom/Zendesk/Salesforce); Sierra ~$1.50/resolution, contracts from ~$150k/yr | [secondary] |
| AI readiness / transformation assessments | boutique fixed-fee assessments cluster $10k–35k (MLDeep $10,000 fixed [primary]; Pertama SGD 15k–35k for <100-employee orgs, SGD 40k–85k mid-market [primary rate card]); "typically $10k–30k" [secondary]; Big-Four-tier $50k–150k [secondary only]; advisory retainers ~SGD 5k–12k for 10 hrs/mo [primary, Pertama]; AI consulting hourly $150–1,200 by seniority [secondary benchmark via Pertama guide] | mixed |

Structural observations:

1. **Human professional work spans three orders of magnitude** ($10/hr gig work to
   $2,000/hr expert calls), priced by trust and accountability far more than by
   the labor content itself. What buyers pay for above the floor is vetting,
   verification, and someone to hold responsible.
2. **Per-outcome pricing is arriving from two directions** — AI-native vendors
   (Sierra et al.) and incumbent consulting (McKinsey's reported ~25% outcome-based
   fees). The market is being trained to buy results, which is the unit Talomnia
   sells.
3. **Tool-metered agent pricing is collapsing** (Devin $500→$20/mo entry) while
   outcome-accountable delivery holds premium pricing. Value is migrating from
   model access to verified completion — supporting the White Paper's position
   that price should anchor to the alternative cost of the result, not to
   inference cost.

## 6. Unit economics — first self-use measurement

> **What this is and is not.** The numbers below are measured from the Workflow
> Ledger of the Talomnia launch epic itself (TALO-0001), i.e. Talomnia's agents
> building Talomnia — a **pre-commercial self-use validation case**. They are
> the first real datapoints of the cost structure of agent-executed work in
> this system. They are **not** commercial unit economics: no client, no
> price, no acceptance by an external party, no sales or verification overhead
> is included. No "cheaper than a human" coefficient is derived from them —
> that comparison requires measured commercial delivery, which does not exist
> yet.

Snapshot: ledger of the launch epic as of 2026-08-19T10:26Z — 22 execution
entries across 4 tasks (knowledge-repo bootstrap; capability discovery;
ledger toolkit build; the start of the technical-research lane).

| Metric | Measured value | Notes |
|---|---|---|
| Wall time, total | 48 min 18 s | sum over 22 entries |
| Active execution time | 40 min 59 s | wall minus waiting/idle gaps (7 min 19 s) |
| Tokens | 570,500 in / 85,500 out | as recorded per entry |
| Model cost | ≈ $13.10 | **estimated** (entries carry `cost_estimated` with a stated basis: token counts × published API list prices); compute $0, human review time 0 in the window |
| Rework rate | 2 of 22 entries (9.1%) | ≈ $0.41 of rework cost |
| First-creation vs reuse | avg ≈ $1.67 to create an artifact vs ≈ $0.18 per subsequent reuse | across 30 artifacts with ≥1 reuse; cost attributed by equal split across an entry's artifacts (estimate) |

What the data structurally shows (within its limits):

- **The cost profile is dominated by first creation.** Creating a knowledge
  artifact (role, policy, blueprint, script) cost on average roughly nine
  times more than each later reuse of it in this sample. This is the
  mechanism the Talomnia thesis rests on — capability created once, reused
  many times — observed for the first time in our own ledger rather than
  asserted. Sample is small and internal; the ratio is a process observation,
  not a marketable coefficient.
- **Rework is measurable, not hypothetical.** 9.1% of entries were rework of
  earlier results. Any honest pricing model must carry a rework/verification
  reserve; competitors' pricing (agencies' contingency margins, marketplaces'
  dispute mechanics) does the same in hidden form.
- **Model cost is a minor share of what a client would pay for equivalent
  work.** The measured model spend for the whole window is ≈ $13 (estimated) —
  normalized, roughly $19 per hour of active agent execution at API list prices
  (a cost observation, not a price; actual unit costs depend on model mix and
  commercial terms and can differ materially in both directions).
  The dominant costs of a commercial delivery will be elsewhere: verification,
  human review, sales, infrastructure, rework reserve, and margin. Pricing
  should therefore not be anchored to inference cost — consistent with the
  White Paper's position that the customer compares against the alternative
  cost of obtaining the result, not against compute.

Cost-structure model implied for commercial delivery (composition, not
figures): model/compute cost of execution + verification cost (automated
checks, peer review, human QA where required) + rework reserve (measured
starting point: ~9% of execution) + knowledge amortization (first-creation
cost of new capabilities recovered over reuses) + platform operating cost +
margin. Each component is measurable in the ledger schema already deployed;
commercial engagements will populate them with real values.

Known limitations of this measurement (§ 8 lists all): estimated (not billed)
model costs; equal-split cost attribution across artifacts; one in-progress
lane recorded a zero model cost pending completion; orchestrator/operator
supervision time not yet included in the window; the work measured is
infrastructure bootstrapping, not a representative client task mix.

## 7. ICP — who buys first

### 7.0 Customer pains — what the buyer is escaping (added in v0.2.0, R1-03)

Synthesized from the sourced findings of §§ 4–5 and 7.1 (no new sources):
hiring is slower than the arrival rate of professional tasks (§ 7.1 C-suite
data); outsourcing disappoints yet persists — cost/quality gains are rare and
work gets repatriated while budgets stay (§ 4.2 Deloitte); tools transfer the
professional work of prompting, orchestrating and verifying to the buyer
(§ 2 category boundary); buyers have been burned by fabricated AI claims and
now actively verify (§ 4.3); and "what counts as done" is the top named risk
of outcome buying — exactly what pre-agreed acceptance criteria with an
evidence trail close (§ 4.3).

### 7.1 What the data says about the buyer

- **The C-suite already buys work-without-hiring.** Upwork Research Institute's
  survey of 502 C-level executives (published early 2025) [primary via coverage]:
  about half of CEOs plan to increase freelance hiring (fetched coverage: 50%); 51% say their business would be
  difficult to run without freelancers; 81% are shifting toward skills-based
  hiring. Top-performing companies adopt hardest: 85% call freelancers vital and
  91% plan to expand use.
- **AI-agent adoption is at the experimentation-to-scaling transition.** McKinsey
  State of AI 2025 (n=1,993, fielded mid-2025) [primary]: 88% of organizations use
  AI in at least one function, 62% are experimenting with agents, but only 23% are
  scaling them anywhere — and within any single function ≤10% report scaling.
  Leading functions: IT, knowledge management, engineering. Translation: most
  organizations want agentic execution and cannot yet operate it themselves —
  which is exactly the buyer of delivered outcomes rather than platforms.
- **SMBs are moving faster than expected:** 58% of US small businesses use
  generative AI (up from 40% in 2024, US Chamber data) [secondary]; SMB agent
  piloting spans decision support (41%) through autonomous task execution (30%)
  [secondary].
- The buyer pattern on marketplaces is concentrating: fewer active clients, larger
  engagements (Upwork −6% clients, Fiverr −13.6% buyers YoY, both with rising
  spend per buyer) [primary]. Small transactional gigs are migrating to AI tools;
  what remains purchased is bigger, higher-stakes work.

### 7.2 ICP hypothesis (ours — derived, not surveyed)

The following segmentation is our synthesis of the above, not a measured funnel;
it is falsifiable by the first commercial engagements.

**Primary ICP:** founder / C-level / head of operations at a **10–200-person
technology-adjacent company** that (a) already uses AI tools and believes in
agentic execution but is not scaling agents internally (McKinsey's 62%-minus-23%
cohort), (b) has professional tasks arriving faster than it can hire — research,
technical analysis, development work, product analysis, and (c) has been burned by
or is wary of the documented failure modes of § 4.3, so evidence-backed delivery
is a feature it can evaluate. The buying trigger is a concrete deferred task, not
an "AI transformation" ambition.

**Secondary ICP:** mid-market companies whose leadership needs an **AI-first
transformation entry point** — a paid, bounded consultation that produces a
concrete assessment instead of a platform commitment (see § 7.3). Boutique
assessments at $10k–35k are an established purchase in this segment (§ 5).

**Explicit non-ICP for the validation stage:** enterprises requiring vendor
onboarding, compliance review, and integration into their environments (real
demand — Deloitte's 80% — but sales cycles incompatible with a 30-day validation
window), and price-only buyers comparing against tool subscriptions (category
error by § 2; educating them is more expensive than serving them).

### 7.3 First sellable service (30-day horizon)

The § 5.6 mandate asks what can be sold first. Assessment against three criteria —
existing proven capability, verifiable deliverable, purchasable without long
trust-building:

1. **Recommended first offer: fixed-scope research / technical-analysis
   engagements** (market research, technical due diligence, architecture and
   product analysis) with pre-agreed acceptance criteria, Budget Limit, and an
   evidence trail. Rationale: it is the capability this very document demonstrates
   (research-workflow, multi-source verification, honest sourcing discipline are
   already in the Capability Atlas); the deliverable is verifiable by reading; the
   category has just lost its incumbent (Wonder dissolved) while the surviving
   alternatives are either premium expert-hours ($500–2,000/hr) or unaccountable
   deep-research tool output — leaving the "accountable, sourced, accepted
   research deliverable" slot open. The warning from Wonder's death is priced in:
   the offer must sell accountability and acceptance, not the bare report.
2. **Second offer, same window: the AI-first Transformation Consultation**
   (§ 5.12 card) — a bounded paid assessment of where agentic execution actually
   fits a client's operations, delivered with the same evidence discipline. The
   $10k–35k boutique-assessment benchmark (§ 5) shows an established purchase
   pattern; Talomnia's price is an operator decision (recommendation delivered
   separately, per § 15.1/15.2 of the launch specification).
3. **Deliberately not first:** end-to-end software delivery (highest stakes,
   hardest acceptance definition — start after research-class trust is
   established) and anything sold as "AI employee" subscriptions (the churn-heavy
   pattern of § 4.3).

## 8. Limitations

1. **No commercial cases.** Talomnia Workforce has not delivered a paid
   client engagement. Everything in § 6 is self-use measurement; all
   Talomnia-side numbers are pre-commercial.
2. **Market figures are third-party.** Every external figure is only as good
   as its source (cited inline); several relevant price points are behind
   paywalls or unpublished and are listed as gaps rather than estimated.
3. **Ledger costs are estimated.** Token-based estimates at list prices, not
   billed invoices; attribution across artifacts is an equal-split heuristic.
4. **Sample size.** 22 ledger entries over 4 infrastructure tasks; the
   creation-vs-reuse ratio will move as the epic proceeds.
5. **Category is moving fast.** AI-native service pricing observed in
   2026-08 may not hold; re-run the pricing sweep before any rate decision.

## 9. Conclusions for Talomnia

1. **The category is real and is being validated by others.** Outcome-priced,
   AI-executed work already produces $100M+ ARR businesses in single verticals
   (Sierra), and the closest structural analogues to Talomnia's model (Crosby,
   Invisible, Superside) are growing on exactly the "accountable finished work"
   promise. Talomnia is not inventing a category; it is entering one whose
   cross-domain generalization is still unclaimed.
2. **Trust is the battleground, and the market just learned why.** Builder.ai and
   11x made "verifiable execution" a buying criterion. Talomnia's Evidence /
   acceptance-criteria / Budget-Limit bundle matches the documented failure modes
   of the category one-for-one. This is the differentiation to lead with — and it
   only works while the honesty constraint holds: no claimed traction, targets
   marked as targets.
3. **Pricing should follow the outcome, not the hour of compute.** Both AI-native
   vendors and incumbent consulting are migrating to outcome-based pricing; bare
   deliverables are being commoditized by deep-research tools; human rates show
   buyers pay for accountability, not labor content. Specific Workforce rates
   remain an operator decision outside this document; the market data here is the
   context for it.
4. **Unit economics must keep being measured, not asserted.** The ledger now
   produces real creation-vs-reuse and rework numbers (§ 6). The reuse economics
   the White Paper hypothesizes showed up in the first self-use sample
   (first-creation ≈ 9× the cost of a reuse touch, small internal sample); the
   next measurement milestone is the same ledger discipline applied to the first
   commercial engagement.
5. **First 30 days:** sell fixed-scope research/technical-analysis engagements and
   the AI-first Transformation Consultation (§ 7.3) to the primary ICP (§ 7.2),
   with this document and the launch Workflows as the demonstration artifacts.
6. **Consistency with the White Paper:** the findings support its positioning
   (demand exists; trust and evidence are the scarce goods; price anchors to the
   alternative cost of the result). One refinement rather than contradiction:
   Wonder's dissolution shows that "completed research on demand" without
   verification and accountability is not a viable wedge on its own — the offer
   must be the accountable version, which is what the White Paper describes.

## 10. Versioning

| Version | Date | Change |
|---|---|---|
| 0.1.0 | 2026-08-19 | Initial research (lane TALO-0006, launch epic TALO-0001). |
| 0.2.0 | 2026-08-19 | Publication release (lane TALO-0035, issues #42 R1-03/R1-14): executive summary (§ 0), customer pains (§ 7.0), sources-and-verification section (§ 11), exact self-use marker, public Research/Workflow slugs. Verification-driven corrections, each against the fetched source: dropped the unverifiable "Big Four profit growth stalled" claim (no supporting source found; recent reporting leans against it); Builder.ai "~700 developers" → "hundreds of developers"; Crosby "sub-hour turnaround" → same-day SLA per Sacra; Clutch floor $25 → $24/hr; custom qualitative research $5k–15k → ~$8k–22.5k per fetched guide; expert networks re-ranged to ~$600–2,500/hr-or-session (AlphaSights figure unconfirmed); ChatGPT Pro marked as the top tier; 11x Alice noted as internally inconsistent on the vendor page ($36k FAQ vs $45k tier card); Superside ARR claim replaced by verified 2024 revenue; C-suite "48%" → "about half" per fetched coverage; Toptal quality wording softened to "reviews allege". |

## 11. Sources and verification (added in v0.2.0)

Every citation in this document was resolved and fetched on 2026-08-19 before
publication; the per-claim record (URL, fetch outcome, whether the page
supports the claim as cited, discrepancies) is the source-verification
manifest `research/sources/talo-0035-manifest.md`, published with the public
Workflow trace. Totals: 52 citations attempted, 46 resolved with a fetched
supporting page (33 full, 13 partial), 5 real-but-fetch-blocked, 1 unresolved
(removed from the text). The public Research page lists only the 46 fetched
URLs; blocked and unresolved sources are named in the manifest rather than
published as if verified.
