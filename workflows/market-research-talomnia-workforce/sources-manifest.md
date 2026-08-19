# TALO-0035 — Source Verification Manifest

Verification of every external source citation in
`docs/research/market-research-talomnia-workforce.md` (talomnia-knowledge, v0.1.0)
before public publication. Acceptance criterion: sources are real and resolvable —
fabricated sources are a hard failure; an empty page is honest.

- Verification date: **2026-08-19 (UTC)**
- Method: for each citation, web search for the canonical URL, then a live fetch of
  that URL recording the actual HTTP outcome, then a judgement whether the fetched
  page supports the claim as the document states it.
- Honesty rules applied: no URL is listed as verified without an actual fetch;
  bot-blocked/paywalled pages are recorded as real-but-blocked; figure mismatches
  are recorded, not silently fixed on either side.
- Totals: **52 attempted / 46 resolved with a fetched supporting page (33 full,
  13 partial) / 5 resolvable-but-blocked (fetch denied or non-supporting alternates
  only) / 1 unresolved / 20 recorded discrepancies or caveats.**

Legend — outcome: `200` fetched ok; `403/429/timeout` fetch blocked or failed
(page believed real); `UNRESOLVED` no claim-matching source found.
supports_claim: yes / partial / no / not-determinable (n-d).

## Summary table

| source_key | url | outcome | supports_claim | grade_in_doc |
|---|---|---|---|---|
| sierra-arr-techcrunch | https://techcrunch.com/2025/11/21/bret-taylors-sierra-reaches-100m-arr-in-under-two-years/ | 200 | yes | primary |
| sierra-site | https://sierra.ai/blog/100m-arr | 200 | yes | primary |
| sierra-per-resolution | https://fin.ai/learn/sierra-ai-pricing | 200 | partial | secondary/snippet |
| intercom-fin-pricing | https://www.intercom.com/pricing | 200 | yes | secondary (upgradeable to primary) |
| zendesk-automated-resolution | https://www.getmacha.com/blog/zendesk-ai-pricing-explained | 200 | partial | secondary |
| salesforce-agentforce | https://coworker.ai/blog/salesforce-agentforce-pricing | 200 (vendor page 403) | yes | secondary |
| crosby-fixed-fee | https://sacra.com/c/crosby/ | 200 | partial | secondary |
| crosby-series-b | https://crosby.ai/blog/series-b-planting-our-flag | 200 | yes | secondary (found primary) |
| invisible-revenue | https://sacra.com/c/invisible/ | 200 | yes | secondary |
| invisible-raise | https://finance.yahoo.com/news/invisible-technologies-raises-100-million-120000213.html | businesswire timeout; mirror 200 | partial | primary |
| superside-revenue | https://getlatka.com/companies/superside | 200 | partial | secondary |
| general-catalyst-services | https://www.sourcery.vc/p/breaking-inside-general-catalysts | 200 | partial | secondary |
| aidols | https://aidolsgroup.com/en/pricing/ | 200 | partial | vendor marketing |
| devin-acu-pricing | https://www.eesel.ai/blog/cognition-ai-pricing | 200 (vendor 429) | yes | secondary |
| devin-arr | https://sacra.com/c/cognition/ | 200 | yes | secondary |
| devin-criticism | https://www.theregister.com/2025/01/23/ai_developer_devin_poor_reviews/ | 200 | yes | critical secondary |
| big-four-profit-stall | UNRESOLVED | no matching source found | n-d (leans against) | secondary |
| mckinsey-outcome-fees | https://www.aol.com/articles/ai-forcing-mckinsey-bcg-bain-063300000.html | 200 (original 403) | yes | secondary |
| source-global-research | https://sourceglobalresearch.com/reports/9598-how-to-talk-to-your-clients-about-value | 403 (bot-blocked) | n-d (snippet-corroborated) | secondary |
| deloitte-outsourcing-2024 | https://www.deloitte.com/ca/en/services/consulting/perspectives/global-outsourcing-survey-2024.html | 200 | yes | primary |
| expert-networks-complaints | https://fieldsignalhq.com/resources/blog/is-glg-legit-honest-reviews-and-buyer-assessment | 200 | partial | secondary |
| fractional-exec-sizing | https://growthmarketreports.com/report/fractional-executiveplace-market | 200 (2nd sizing 403) | partial | secondary, low confidence |
| wonder-dissolution | https://inex.one/expert-network-directory/askwonder | 200 | yes | secondary |
| upwork-csuite-survey | https://www.computerworld.com/article/3804217/execs-are-prioritizing-skills-over-degrees-and-hiring-skilled-more-freelancers-to-fill-gaps.html | 200 | partial | primary via coverage |
| mckinsey-state-of-ai-2025 | https://www.mckinsey.com/capabilities/quantumblack/our-insights/the-state-of-ai | timeout ×2; coverage 200 | yes (core figures) | primary |
| us-chamber-smb-genai | https://www.uschamber.com/technology/artificial-intelligence/u-s-chambers-latest-empowering-small-business-report-shows-majority-of-businesses-in-all-50-states-are-embracing-ai | 200 | yes | secondary (upgradeable to primary) |
| smb-agent-piloting | https://www.upwork.com/resources/state-of-ai-in-smbs | 403 (bot-blocked) | n-d (snippet-corroborated) | secondary |
| upwork-fy2025 | https://www.stocktitan.net/sec-filings/UPWK/8-k-upwork-inc-reports-material-event-92dcac1b4c14.html | 200 (canonical IR page timeout) | yes | primary |
| fiverr-fy2025 | https://markets.financialcontent.com/franklincredit/article/gnwcq-2026-2-18-fiverr-announces-fourth-quarter-and-full-year-2025-results | 200 (canonical IR page timeout) | yes | primary via snippet (now verified) |
| upwork-cost-to-hire | https://www.upwork.com/resources/cost-to-hire-software-developer | 403 (bot-blocked) | n-d | primary via snippet |
| upwork-fees | https://golance.com/blogs/upwork-fees-explained-2026 | 200 (Upwork pages 403) | yes | primary via snippet |
| fiverr-fees | https://freelanceready.com/fiverr-fee-calculator/ | 200 | yes | secondary |
| toptal-rates | https://www.toptal.com/developers | 200 | yes / partial (avg) | secondary, directional |
| builder-ai-insolvency | https://techstartups.com/2025/05/24/builder-ai-a-microsoft-backed-ai-startup-once-valued-at-1-2-billion-files-for-bankruptcy-is-ai-becoming-another-com-bubble/ | 200 | yes (partial on "~700") | secondary |
| 11x-techcrunch | https://techcrunch.com/2025/03/24/a16z-and-benchmark-backed-11x-has-been-claiming-customers-it-doesnt-have/ | 200 | yes | primary |
| ai-sdr-churn | https://www.autobound.ai/blog/ai-sdr-vs-human-sdr | 200 | yes (attribution caveat) | secondary |
| artisan-issues | https://techcrunch.com/2025/04/09/artisan-the-stop-hiring-humans-ai-agent-startup-raises-25m-and-is-still-hiring-humans | 200 | yes / partial (pricing) | secondary |
| toptal-quality-misses | https://www.trustpilot.com/review/toptal.com | 403; alternates 200 don't support | n-d | secondary reviews |
| outcome-pricing-practitioner | https://www.institutepm.com/knowledge-hub/outcome-based-pricing-ai-agents | 200 | yes | secondary |
| accelerance-2026-rates | https://www.accelerance.com/blog/2026-outsourcing-rate-trends-asia-europe-latam | 200 | yes | primary |
| clutch-pricing | https://clutch.co/developers/pricing | 200 | partial | primary via snippet |
| consulting-day-rates | https://scopecreeper.com/resources/consulting-rate-benchmarks/ | 200 | yes | secondary |
| market-research-pricing | https://www.thefarnsworthgroup.com/blog/market-research-cost | 200 | partial | primary-for-own / secondary |
| expert-network-pricing | https://valueaddvc.com/blog/expert-networks-for-investors-how-they-work-and-which-are-worth-paying-for | 200 | partial | secondary |
| forrester-report-price | https://www.forrester.com/report/the-pricing-optimization-solution-landscape-q3-2023/RES179729 | error page served | n-d (snippet-confirmed) | primary |
| forrester-subscription-vendr | https://www.vendr.com/marketplace/forrester | 200 | yes | secondary |
| chatgpt-pro-price | https://www.cloudzero.com/blog/how-much-does-chatgpt-cost/ | 200 (openai.com 403) | yes | widely published |
| openai-agent-pricing-rumor | https://techcrunch.com/2025/03/05/openai-reportedly-plans-to-charge-up-to-20000-a-month-for-specialized-ai-agents/ | 200 | yes | secondary |
| 11x-alice-pricing | https://www.11x.ai/products/alice/pricing | 200 | partial | primary |
| lindy-pricing | https://www.lindy.ai/pricing | 200 | yes | primary |
| mldeep-assessment | https://mldeep.io/ai-readiness-assessment-cost | 200 | yes | primary |
| pertama-rate-card | https://www.pertamapartners.com/insights/ai-consulting-pricing-guide | 200 | yes | primary |

## Per-source details

### § 4.1 — AI-native outcome sellers

### sierra-arr-techcrunch
- claim: Sierra $100M ARR within ~21 months of launch (TechCrunch 2025-11-21)
- url: https://techcrunch.com/2025/11/21/bret-taylors-sierra-reaches-100m-arr-in-under-two-years/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Article dated 2025-11-21; "21-month-old" startup reached $100M ARR; outcomes-based pricing model confirmed. Exact match.

### sierra-site
- claim: sierra.ai confirms $100M ARR and outcome-based pricing ("if an AI agent can't complete a task and has to hand the work over to a human, the customer doesn't pay")
- url: https://sierra.ai/blog/100m-arr
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Sierra's own blog: "$100M in ARR — seven quarters after we launched in February 2024" (≈21 months). Escalation-no-charge claim confirmed on companion page https://sierra.ai/blog/outcome-based-pricing-for-ai-agents (200 ok, fetched), but Sierra's own wording is hedged: "if a case needs to be escalated, in most cases, there's no charge" — slightly weaker than the doc's absolute quote.

### sierra-per-resolution
- claim: Sierra ~$1.50 per resolved interaction; contracts from ~$150k/yr
- url: https://fin.ai/learn/sierra-ai-pricing
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: secondary/snippet
- access_date: 2026-08-19
- notes: Fetched page confirms contracts "typically start at approximately $150,000 per year" (explicitly a third-party estimate) but does NOT state $1.50/resolution — it says the per-outcome rate is undisclosed. Secondary blogs report $1–$2.50 with ~$1.50 commonly cited; never vendor-confirmed. The doc's [secondary/snippet] grade is accurate.

### intercom-fin-pricing
- claim: Intercom Fin $0.99/resolution
- url: https://www.intercom.com/pricing
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Vendor's own pricing page: "Fin is priced at $0.99 per outcome" (Intercom now says "per outcome" — confirmed/assumed resolution or completed workflow). Figure matches; source is better than the doc's [secondary] grade — upgradeable to primary.

### zendesk-automated-resolution
- claim: Zendesk $1.50–2.00 per automated resolution
- url: https://www.getmacha.com/blog/zendesk-ai-pricing-explained
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Fetched secondary: ~$1.30–$1.50 committed / ~$2.00 pay-as-you-go, explicitly third-party estimates (Zendesk publishes no rate card). A second fetched secondary (eesel.ai, 200 ok) gives $1.20–$1.50 without the $2.00 — secondaries conflict on the exact range. A Zendesk support-article URL tried returned 404. Doc's range sits inside the union of estimates; no official confirmation exists.

### salesforce-agentforce
- claim: Salesforce Agentforce ~$2/conversation
- url: https://coworker.ai/blog/salesforce-agentforce-pricing
- http_status_or_outcome: 200 ok (vendor page https://www.salesforce.com/agentforce/pricing/ = 403, bot-blocked, real page)
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Confirms $2/conversation as one of three current models (also Flex Credits $500/100K, per-user from $125/mo). The $2 figure is widely attributed to the bot-blocked vendor page.

### crosby-fixed-fee
- claim: Crosby sells completed contract reviews at fixed per-document fee ~$400 typical ($250–$1,000 range) with sub-hour turnaround
- url: https://sacra.com/c/crosby/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: secondary (Sacra, Altis)
- access_date: 2026-08-19
- notes: Sacra confirms "fixed fee, typically around $400". The $250–$1,000 range appears only in search summaries (eesel.ai review: "$250 to $1,000 per contract"), not on the fetched page; Altis not independently fetched. DISCREPANCY on turnaround: Sacra says four-hour SLA with "many completed in minutes" — the doc's "sub-hour turnaround" is stronger than the source's SLA wording.

### crosby-series-b
- claim: Crosby Sequoia-seeded June 2025, later a $60M Series B
- url: https://crosby.ai/blog/series-b-planting-our-flag
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Crosby's own blog (2026-03-31): "$60 million Series B was led by Lux and Index, with participation from Sequoia". Sacra (fetched, 200) confirms "$5.8 million seed round announced in June 2025… led by Sequoia Capital". Company blog is primary-grade — better than the doc's label.

### invisible-revenue
- claim: Invisible Technologies $134M revenue in 2024, more than doubling YoY
- url: https://sacra.com/c/invisible/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary (Sacra)
- access_date: 2026-08-19
- notes: Sacra: "$134M in revenue in 2024, up 123% from $60M in 2023" — exact match.

### invisible-raise
- claim: Invisible raised $100M in September 2025 at a >$2B valuation (Businesswire) [primary]
- url: https://finance.yahoo.com/news/invisible-technologies-raises-100-million-120000213.html (Businesswire original timed out ×2; vendor page https://invisibletech.ai/fundraise fetched 200 ok)
- http_status_or_outcome: businesswire.com fetch failed: timeout ×2; verified via Yahoo mirror (200) + vendor page (200)
- fetched: yes (mirror + vendor page)
- supports_claim: partial
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: DISCREPANCY IN ATTRIBUTION: the Businesswire release (read via mirror, dateline 2025-09-16) confirms the $100M raise but states NO valuation. The valuation comes from the vendor's own fundraise page ("$100M funding round lands us at a $2B valuation") and Bloomberg (paywalled, not fetched). The doc's Businesswire [primary] citation covers only the $100M half; the valuation should cite the vendor page or Bloomberg, and vendor wording is "$2B", not ">$2B".

### superside-revenue
- claim: Superside revenue $44.9M in 2024, ARR >$75M; tiers $5K–$50K+/month
- url: https://getlatka.com/companies/superside
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: GetLatka confirms $44.9M 2024 revenue. The ">$75M ARR" and "$5K–$50K+/month tiers" figures were found only on a low-tier secondary (businessmodelcanvastemplate.com, fetched 200). Internal tension: GetLatka labels the $44.9M itself "Est. ARR", which conflicts with a separate >$75M ARR. Flag the ARR figure as low-confidence.

### general-catalyst-services
- claim: General Catalyst allocated $1.5B to buying traditional service firms and re-basing them on AI (accounting, legal, call centers, HR…); labor is 55–65% of services cost
- url: https://www.sourcery.vc/p/breaking-inside-general-catalysts
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: $1.5B creation-strategy commitment confirmed. The fetched source does NOT contain the doc's vertical list nor the "labor is 55–65% of services cost" figure (it cites a "$16 trillion services market" and 30–50% task automation instead). The 55–65% labor-share sub-claim was not found in any fetched source — UNVERIFIED.

### aidols
- claim: AIDOLS fixed-fee 90-day engagements at $75K–$250K with a written ROI guarantee
- url: https://aidolsgroup.com/en/pricing/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: vendor's own marketing
- access_date: 2026-08-19
- notes: DISCREPANCY: vendor pricing page today shows the 90-day "Build" tier at **$75K–$150K** with a 100% ROI money-back guarantee (tiers: Sprint $15–25K / 2–3 wks, Build $75–150K / 90 days, Scale $25K/mo). The doc's $250K upper bound does not appear on the page. Fixed-fee 90-day structure and written ROI guarantee confirmed.

### devin-acu-pricing
- claim: Devin sold as metered tool: Agent Compute Units ~15 min each; $20/mo entry + ~$2.25/ACU; entry price collapsed $500→$20/mo (≈ ~$9/agent-hour)
- url: https://www.eesel.ai/blog/cognition-ai-pricing
- http_status_or_outcome: 200 ok (vendor page https://devin.ai/pricing = 429 ×2, rate-limited not dead; VentureBeat original = 403 bot-blocked)
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary press; "vendor page unreachable" (still accurate)
- access_date: 2026-08-19
- notes: All figures confirmed: entry $20 (down from $500/mo), $2.25/ACU on Core ($2.00 on Team), "1 ACU ≈ 15 minutes of Devin actively working" ⇒ ~$8–9/agent-hour. Official https://docs.devin.ai/admin/billing (fetched 200) confirms ACU billing exists but does not publish the $2.25 or 15-min figures.

### devin-arr
- claim: Cognition/Devin $73M ARR by mid-2025, higher figures since
- url: https://sacra.com/c/cognition/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Sacra: "$73M ARR in June 2025, up from $1M in September 2024"; "higher since" supported (Sacra estimates $492M run-rate May 2026).

### devin-criticism
- claim: "15% success rate" criticism of the original Devin agent
- url: https://www.theregister.com/2025/01/23/ai_developer_devin_poor_reviews/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: critical secondary
- access_date: 2026-08-19
- notes: The Register reports Answer.AI testing: 3 of 20 tasks completed satisfactorily ("Nailed just 15% of assigned tasks"). Underlying primary is answer.ai's 2025-01-08 post (linked from the article, not separately fetched).

### § 4.2 — Traditional alternatives

### big-four-profit-stall
- claim: Big Four profit growth stalled for the first time since before Covid
- url: UNRESOLVED
- http_status_or_outcome: no claim-matching source found
- fetched: no (claim-matching source); several adjacent sources fetched
- supports_claim: not-determinable — and partially contradicted by what was found
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Four search variants tried. Fetched adjacent sources: a Yahoo Finance consulting-year-in-review (200 — revenue-growth slowdown, nothing on profit stalling); accountancyage.com 2025-11-21 (200 — UK partner payouts RISING in FY2025: Deloitte +4% to £1.05m, KPMG record £816k — leans AGAINST the claim); one 404, one 403. 2024 reporting of ~5% partner-pay declines at EY/Deloitte/PwC exists but is a different claim. The exact formulation may be a paywalled FT piece that could not be located. RECOMMENDATION: reword or drop unless the original source can be produced.

### mckinsey-outcome-fees
- claim: ~25% of McKinsey's global fees are outcome-based; UK managing partner citing deliberate shift to performance-based arrangements (Nov 2025)
- url: https://www.aol.com/articles/ai-forcing-mckinsey-bcg-bain-063300000.html
- http_status_or_outcome: 200 ok (original TheStreet article = 403, bot-blocked, real)
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Mirror of TheStreet article: "About one quarter of McKinsey's global fees now come from this kind of outcome-based pricing" — disclosed at a November 2025 London briefing; UK managing partner Michael Birshan quoted on "doing more performance-based arrangements with our clients".

### source-global-research
- claim: only ~half of clients believe consulting firms create value beyond "getting what they paid for"; 2025 shrinkage in small ad-hoc project volume as clients self-serve with AI
- url: https://sourceglobalresearch.com/reports/9598-how-to-talk-to-your-clients-about-value
- http_status_or_outcome: 403 forbidden (site bot-blocks; a second URL on the same host also 403)
- fetched: no
- supports_claim: not-determinable (fetch blocked; first half corroborated by search snippet)
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Source Global Research is real; the report page exists and its search snippet carries the "only half of clients think consulting firms create value beyond just getting what they paid for" finding (2025). The ad-hoc-shrinkage half is only loosely corroborated; exact phrasing unverified. Resolvable source with an access barrier — re-verify by a human with site access before publication.

### deloitte-outsourcing-2024
- claim: Deloitte Global Outsourcing Survey 2024: 25% report lower cost/higher quality from AI-powered outsourcing; 70% vendor-management not fully mature; 70% repatriated some work within five years; 80% plan to maintain/increase outsourcing investment
- url: https://www.deloitte.com/ca/en/services/consulting/perspectives/global-outsourcing-survey-2024.html
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: All four figures verified verbatim on Deloitte's own page. Full PDF exceeded fetch size limit (>10MB) — page suffices.

### upwork-fy2025
- claim: Upwork FY2025: revenue $787.8M (+2% YoY), GSV >$4B, active clients −6% to 785,000, take rate 19%, "AI Integration & Automation" GSV +90% YoY in Q4 2025
- url: https://www.stocktitan.net/sec-filings/UPWK/8-k-upwork-inc-reports-material-event-92dcac1b4c14.html
- http_status_or_outcome: 200 ok (canonical investors.upwork.com release and GlobeNewswire copy both timed out — pages exist, surfaced by search)
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Confirmed on fetched 8-K mirror (release dated 2026-02-09): revenue $787.8M +2%; GSV $4.03B; active clients 785,000 −6% YoY; AI Integration & Automation GSV "grew more than 90% year over year" in Q4 2025. Take rate 19% not stated verbatim but arithmetic-consistent ($787.8M / $4.03B ≈ 19.5%).

### fiverr-fy2025
- claim: Fiverr FY2025: revenue $430.9M (+10.1%), active buyers −13.6% YoY, spend/buyer +13.3%, GMV from >$1,000 transactions +22.8%
- url: https://markets.financialcontent.com/franklincredit/article/gnwcq-2026-2-18-fiverr-announces-fourth-quarter-and-full-year-2025-results
- http_status_or_outcome: 200 ok (canonical investors.fiverr.com timed out ×2; fiverr.com/news copy 403; GlobeNewswire copy timed out; AP-syndicate copy 429)
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary release, figures via snippet
- access_date: 2026-08-19
- notes: All four figures confirmed verbatim in the fetched full release text (dated 2026-02-18): $430.9M +10.1%; buyers 3.1M vs 3.6M = −13.6%; spend/buyer $342 vs $302 = +13.3%; "GMV from transactions over $1,000 grew 22.8%". The doc's "via snippet" caveat can be upgraded — full release text now verified.

### wonder-dissolution
- claim: Wonder (askwonder.com) dissolved as of September 2025 [Inex One directory]
- url: https://inex.one/expert-network-directory/askwonder
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Directory entry: "As of September 2025, AskWonder has been dissolved. Their website is no longer active, and according to the NY Department of State, the entity is no longer active." Corroborating: askwonder.com itself failed DNS resolution on 2026-08-19 — consistent with a dead site.

### expert-networks-complaints
- claim: GLG/AlphaSights/Guidepoint persist at premium prices but draw complaints about cost, stale expert profiles, and minimum commitments
- url: https://fieldsignalhq.com/resources/blog/is-glg-legit-honest-reviews-and-buyer-assessment
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Fetched page confirms premium pricing ($1,000–2,000/hr band for GLG) and annual-contract lock-in / minimum commitments. The "stale expert profiles" complaint was NOT on the fetched page — corroborated only by an unfetched search result (cleverx.com comparison).

### fractional-exec-sizing
- claim: fractional-executive market sized $8.6–9.4B in 2025 with double-digit growth forecasts; the two sizings disagree by ~40%; low-tier research firms
- url: https://growthmarketreports.com/report/fractional-executiveplace-market (second sizing: https://dataintelo.com/report/fractional-executiveplace-market — 403)
- http_status_or_outcome: 200 ok (first); 403 forbidden (second — real page, body unverified)
- fetched: yes (first) / no (second)
- supports_claim: partial
- grade_in_doc: secondary, low confidence
- access_date: 2026-08-19
- notes: Growth Market Reports fetched: "USD 8.6 billion in 2025", CAGR 16.2%, USD 34.2B by 2034. Dataintelo's $9.4B (2025) / $24.7B (2034) known from search snippets only. DISCREPANCY in framing: the two 2025 sizings ($8.6B vs $9.4B) disagree by ~9%, not ~40%; the ~40% gap fits the 2034 forecasts ($24.7B vs $34.2B, ≈38%). The doc sentence should attribute the ~40% disagreement to the forecasts, or correct the percentage.

### § 4.2/§ 5 — marketplaces, rates, fees

### upwork-cost-to-hire
- claim: Upwork's own cost-to-hire pages: developers median $20/hr (typical $10–100); market research analysts $25–70/hr; business consultants median $55/hr ($28–98); business analysts median $35/hr ($25–60)
- url: https://www.upwork.com/resources/cost-to-hire-software-developer (also tried a hire/…/cost/ page)
- http_status_or_outcome: 403 forbidden (both URLs — bot-blocked)
- fetched: no
- supports_claim: not-determinable
- grade_in_doc: primary via snippet (doc itself flags "direct fetch 403; re-verify before reuse")
- access_date: 2026-08-19
- notes: Upwork bot-blocks all direct fetches — the same barrier the document already discloses. Pages are real (indexed, returned in search); the specific rate figures could not be verified against fetched page content today. Keep the doc's caveat.

### upwork-fees
- claim: Upwork client fee 3–10% by plan; freelancer fee 0–15% variable since May 2025
- url: https://golance.com/blogs/upwork-fees-explained-2026 (Upwork's own pricing and support pages both 403)
- http_status_or_outcome: 200 ok (secondary); 403 on both primary Upwork pages
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary via snippet
- access_date: 2026-08-19
- notes: Fetched secondary confirms exactly: freelancer fee variable 0–15% effective 2025-05-01; client marketplace fee Basic 3% (ACH) / 5% (other), Business Plus 8% / 10% — i.e. 3–10% by plan. Figures correct; grade is effectively "primary claim verified via secondary" (primaries bot-blocked).

### fiverr-fees
- claim: Fiverr buyer 5.5% + small-order fee; seller 20% flat [sources conflict on the small-order fee]
- url: https://freelanceready.com/fiverr-fee-calculator/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Fetched page: buyer 5.5%, "$3 additional charge" on orders under $100, seller 20% flat. Other sources cite different small-order thresholds/amounts — the doc's "sources conflict" caveat is accurate and confirmed.

### toptal-rates
- claim: Toptal publishes no rate card [verified on toptal.com]; secondary sources converge on $60–150+/hr, avg ~$90/hr
- url: https://www.toptal.com/developers (secondary: https://www.hireinsouth.com/post/how-much-does-toptal-cost)
- http_status_or_outcome: 200 ok (both; thefrontendcompany.com alternate = 403)
- fetched: yes
- supports_claim: yes (no-rate-card + $60–150+ range); partial (the ~$90/hr average)
- grade_in_doc: secondary, directional only
- access_date: 2026-08-19
- notes: toptal.com/developers confirmed: no rates published. Fetched secondary confirms "$60–$150+/hour, plus $500 deposit and $79/month subscription". The "avg ~$90/hr" appears only in search snippets, not on a fetched page — keep as directional.

### § 4.3 — failure modes

### builder-ai-insolvency
- claim: Builder.ai collapsed into insolvency in May 2025 after claimed revenue $220M was audited to ~$55M; "AI" delivery was ~700 human developers
- url: https://techstartups.com/2025/05/24/builder-ai-a-microsoft-backed-ai-startup-once-valued-at-1-2-billion-files-for-bankruptcy-is-ai-becoming-another-com-bubble/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes (insolvency, $220M→~$55M); partial on "~700 developers"
- grade_in_doc: secondary; widely reported
- access_date: 2026-08-19
- notes: Fetched article confirms May 2025 bankruptcy, claimed $220M vs actual ~$55M, Viola Credit seizing $37M. On workforce it cites the 2019 WSJ investigation of "hundreds of engineers in India and Ukraine" — not a "~700" count; the ~700 figure circulates in other coverage not fetched. Suggest "hundreds (reported ~700)" or cite a piece carrying 700.

### 11x-techcrunch
- claim: TechCrunch 2025-03-24: 11x displayed logos of non-customers (ZoomInfo, Airtable both denied being customers) and inflated ARR
- url: https://techcrunch.com/2025/03/24/a16z-and-benchmark-backed-11x-has-been-claiming-customers-it-doesnt-have/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Exact article, exact date. ZoomInfo: "We did not give them permission to use our logo… we are not a customer." Airtable denied being a customer. ARR inflation: "$14 million in ARR when… contracts that passed the three-month trial totaled only about $3 million."

### ai-sdr-churn
- claim: AI SDR products report 50–70% annual churn — roughly double human SDR turnover
- url: https://www.autobound.ai/blog/ai-sdr-vs-human-sdr
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes (with attribution caveat)
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Fetched page states verbatim: "50-70% annual churn rates for AI SDR tools, according to UserGems, roughly double the average for human SDRs." CAVEAT: the UserGems page it cites as its source (fetched, 200 ok) does NOT contain the churn figure — the attribution chain is broken at its root. Real circulating secondary claim; primary not located. Treat as secondary/low-confidence.

### artisan-issues
- claim: Artisan's CEO publicly acknowledged early hallucination and response-rate problems; Artisan ~$7,200/yr [secondary]
- url: https://techcrunch.com/2025/04/09/artisan-the-stop-hiring-humans-ai-agent-startup-raises-25m-and-is-still-hiring-humans (pricing: https://www.miniloop.ai/blog/artisan-pricing)
- http_status_or_outcome: 200 ok (both)
- fetched: yes
- supports_claim: yes (CEO admissions); partial (pricing — secondaries conflict)
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: TechCrunch: CEO "We had extremely bad hallucinations when we first launched"; first-gen AI SDRs "get a pretty low response rate" and "relatively high churn". Pricing: miniloop.ai lists Employee plan $600/mo = $7,200/yr as "the only publicly listed price" (supports doc); landbase.com (fetched, 200) says Artisan "does not publicly list fixed dollar amounts" and estimates ~$2,000/mo entry. Add "sources conflict" to the doc.

### toptal-quality-misses
- claim: Toptal's "top 3%" vetting demonstrably lets quality misses through [secondary reviews]
- url: https://www.trustpilot.com/review/toptal.com
- http_status_or_outcome: 403 forbidden (Trustpilot bot-blocked); two review pages fetched 200 ok did NOT support the claim (flexiple.com/reviews/toptal — no client quality complaints documented; lancerreview.com/review/toptal — complaints mainly from rejected applicants)
- fetched: no (the supporting page); yes (two non-supporting alternates)
- supports_claim: not-determinable
- grade_in_doc: secondary reviews
- access_date: 2026-08-19
- notes: WEAKEST VERIFIED ITEM. Search snippets do quote client reviews consistent with the claim (vetting complaints, missed deadlines), but every page actually fetched was either blocked or does not document quality misses. RECOMMENDATION: soften "demonstrably" or cite a specific fetchable review before publication.

### outcome-pricing-practitioner
- claim: practitioner writing on outcome pricing converges on: hardest part is a contractually unambiguous, technically measurable definition of "done"; attribution disputes, unclear success criteria, customer gaming are the named risks
- url: https://www.institutepm.com/knowledge-hub/outcome-based-pricing-ai-agents
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Fetched piece states verbatim: "The hardest part of outcome-based pricing is not pricing. It is defining 'done' in a way that is contractually unambiguous and technically measurable," and names attribution ("the hardest unsolved problem"), dispute-resolution needs, and subjective-criteria risk. Search corpus shows the same convergence across several other practitioner pieces — the "converges" framing is fair.

### § 5 — remaining price-benchmark rows

### accelerance-2026-rates
- claim: Accelerance 2026 rate survey: LatAm junior $33–45 / senior $60–75/hr; Asia junior $24–31 / senior $31–41/hr; CEE junior $31–39 / senior $64–76/hr; LatAm/Asia declining ~7–8% YoY
- url: https://www.accelerance.com/blog/2026-outsourcing-rate-trends-asia-europe-latam
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: All six rate ranges match exactly; declines LatAm 7.1%, Asia "nearly 8%", CEE 4.4% — matches "~7–8% in LatAm/Asia". The full guide landing page (also fetched, 200) is form-gated with no figures — cite the blog URL.

### clutch-pricing
- claim: most Clutch-listed dev firms $25–49/hr; span $25–150+/hr
- url: https://clutch.co/developers/pricing
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: primary via snippet
- access_date: 2026-08-19
- notes: Page states "Most software development companies listed on Clutch charge between $24–$49/hour" — doc says $25 at the low bound (off by $1). Rate filters run <$50 / $50–199 / $200+, so the upper span exceeds "$150+" (compatible, not literal).

### consulting-day-rates
- claim: MBB partners $500–1,000+/hr billed, teams sold as bundles; Big Four UK £800–1,500/day junior to £3,500–6,000/day partner
- url: https://scopecreeper.com/resources/consulting-rate-benchmarks/ (MBB bundle model: https://slideworks.io/resources/management-consulting-fees-how-mc-kinsey-prices-projects)
- http_status_or_outcome: 200 ok (both)
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Scopecreeper confirms Big Four UK verbatim: "£800–£1,500/day for junior staff and £3,500–£6,000/day for partners". Slideworks confirms the team-bundle model and gives MBB senior-partner rates consistent with "$500–1,000+/hr" ($700–900 avg; GSA $1,116–1,194/hr).

### market-research-pricing
- claim: typical custom study $25,000–65,000; qualitative $5k–15k per 10–15 interviews; executive B2B qualitative $40,000+
- url: https://www.thefarnsworthgroup.com/blog/market-research-cost (qual/exec: https://merren.io/how-much-does-qualitative-research-cost/)
- http_status_or_outcome: 200 ok (both)
- fetched: yes
- supports_claim: partial
- grade_in_doc: primary for their own pricing, secondary as market norm
- access_date: 2026-08-19
- notes: Farnsworth confirms verbatim "$25,000 to $65,000 for a qualitative or quantitative custom market research project in 2026". Merren confirms "$40,000+ for 10-15 specialist interviews" (executive B2B). DISCREPANCY on the middle figure: doc says qualitative $5k–15k per 10–15 interviews; the fetched page says $8,000–22,500 for 10–15 US IDIs. The $5k–15k figure could not be confirmed on any fetched page.

### expert-network-pricing
- claim: expert networks $500–2,000 per expert-hour; GLG reportedly $1,500–2,000/hr; AlphaSights ~$1,000/hr [quote-only]
- url: https://valueaddvc.com/blog/expert-networks-for-investors-how-they-work-and-which-are-worth-paying-for (firm figures: https://www.28experts.com/blog/how-much-are-you-really-paying-for-with-glg-alphasights-and-guidepoint)
- http_status_or_outcome: 200 ok (both)
- fetched: yes
- supports_claim: partial
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: ValueAddVC confirms "$500–$2,000 per session" overall; GLG "$600–$2,000/session" + $5k–15k/mo platform fee. 28experts gives GLG "$1,000–$2,500 per hour" — overlaps but is not identical to the doc's "$1,500–2,000/hr". AlphaSights ~$1,000/hr NOT directly confirmed on any fetched page (28experts says only "5-10% lower than GLG"). Overall range holds; per-firm figures are looser than cited.

### forrester-report-price
- claim: Forrester single reports $2,995 (some $1,495) [primary, forrester.com]
- url: https://www.forrester.com/report/the-pricing-optimization-solution-landscape-q3-2023/RES179729 (second report URL also tried)
- http_status_or_outcome: fetch returned a Forrester error page on both report URLs (likely bot-gating)
- fetched: yes (error page, not the report page)
- supports_claim: not-determinable direct; partial via search snippets
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Google-indexed forrester.com report pages show "individual purchase ($2995)" for at least three reports — the price point is real and current in the index, but forrester.com serves an error page to automated fetchers. The $1,495 variant was NOT seen anywhere today. Downgrade the citation to "primary via snippet — direct fetch blocked" and drop or re-verify $1,495.

### forrester-subscription-vendr
- claim: Forrester subscriptions $25k–500k+/yr [Vendr data]
- url: https://www.vendr.com/marketplace/forrester
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Vendr states verbatim "annual contracts typically range from $25,000 to $500,000+ depending on scope"; median contract $65,755/yr over 64 purchases.

### chatgpt-pro-price
- claim: ChatGPT Pro $200/mo [widely published]
- url: https://www.cloudzero.com/blog/how-much-does-chatgpt-cost/ (openai.com pricing pages = 403 ×2, bot barrier, pages exist)
- http_status_or_outcome: 200 ok (secondary)
- fetched: yes
- supports_claim: yes
- grade_in_doc: widely published
- access_date: 2026-08-19
- notes: Pro $200/mo confirmed still current. NOTE market moved: since 2026-04-09 there are TWO Pro tiers ($100/mo and $200/mo); "$200/mo" remains accurate as the top Pro tier but is no longer the only Pro price.

### openai-agent-pricing-rumor
- claim: reported (never confirmed) OpenAI plans for $2k–20k/mo specialist agents [The Information via TechCrunch]
- url: https://techcrunch.com/2025/03/05/openai-reportedly-plans-to-charge-up-to-20000-a-month-for-specialized-ai-agents/
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Article (2025-03-05, citing The Information) confirms the tiers exactly: $2,000/mo knowledge worker, $10,000/mo software developer, $20,000/mo PhD-level research; framed as unconfirmed plans ("may be planning", "reportedly").

### 11x-alice-pricing
- claim: 11x Alice from $36,000/yr [primary, 11x pricing page]
- url: https://www.11x.ai/products/alice/pricing
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: DISCREPANCY ON THE VENDOR'S OWN PAGE: the Growth tier card reads "Starting at $3,750 / mo, billed annually" (= $45,000/yr) while the page's FAQ states "11x starts at $36,000 per year on the Growth plan". The doc's $36,000 IS on the live page (FAQ) but the headline tier price is $45,000/yr. Recommend "from $36,000–45,000/yr (vendor page internally inconsistent)".

### lindy-pricing
- claim: Lindy $29.99–199.99/user/mo [primary, live page]
- url: https://www.lindy.ai/pricing
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Live page: Plus $29.99, Pro $99.99, Max $199.99 per user/mo, Enterprise custom — exactly the doc's range. (Some 2026 blogs claim Plus $49.99; the live vendor page today says $29.99 — the doc matches the primary.)

### mldeep-assessment
- claim: MLDeep $10,000 fixed-fee AI readiness assessment [primary]
- url: https://mldeep.io/ai-readiness-assessment-cost
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Page body/header: "$10,000 Fixed Price" (scorecard + gap analysis + 90-day roadmap, 2-week delivery). Caveat: the page's own title tag reads "…| $15K Fixed" — vendor's title and body disagree ($15K vs $10K). Doc matches the on-page body figure.

### pertama-rate-card
- claim: Pertama: AI readiness SGD 15k–35k (<100-employee orgs), SGD 40k–85k mid-market; advisory retainers ~SGD 5k–12k for 10 hrs/mo; AI consulting hourly $150–1,200 by seniority
- url: https://www.pertamapartners.com/insights/ai-consulting-pricing-guide
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: All four figure sets confirmed verbatim: SGD $15,000–35,000 (<100 employees, 2–3 wk), SGD $40,000–85,000 (100–1,000 employees), retainers SGD $5,000–12,000/mo for ~10 hrs, global hourly USD $150–250 (junior) to $700–1,200 (principal).

### § 7 — ICP data

### upwork-csuite-survey
- claim: Upwork Research Institute survey of 502 C-level executives (early 2025): 48% of CEOs plan to increase freelance hiring; 51% difficult to run without freelancers; 81% shifting to skills-based hiring; top performers 85% vital / 91% expand
- url: https://www.computerworld.com/article/3804217/execs-are-prioritizing-skills-over-degrees-and-hiring-skilled-more-freelancers-to-fill-gaps.html
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: partial (two figure discrepancies)
- grade_in_doc: primary via coverage
- access_date: 2026-08-19
- notes: Coverage confirms exactly: 51%, 85%, 91%. DISCREPANCIES: the fetched coverage says "50% plan to increase freelance hiring this year" (doc: 48% of CEOs) and "80% of corporate executives will prioritize skills over degrees" (doc: 81%). The 48%/81% variants may come from a different write-up of the same survey (unfetched). Could not fetch an upwork.com research page for this survey. RECOMMENDATION: align the doc's figures to whichever coverage is cited.

### mckinsey-state-of-ai-2025
- claim: McKinsey State of AI 2025 (n=1,993, fielded mid-2025): 88% use AI in ≥1 function; 62% experimenting with agents; 23% scaling; ≤10% per-function scaling; leading functions IT/knowledge management/engineering
- url: https://www.mckinsey.com/capabilities/quantumblack/our-insights/the-state-of-ai
- http_status_or_outcome: fetch failed: timeout 60s ×2 (page exists — surfaced by search with matching snippets); coverage fetched: https://www.cxtoday.com/ai-automation-in-cx/mckinseys-state-of-ai-the-scaling-gap-is-now-cxs-problem/ (200 ok)
- fetched: no (primary) / yes (coverage)
- supports_claim: yes on core figures (88/62/23); partial on the rest
- grade_in_doc: primary
- access_date: 2026-08-19
- notes: Coverage confirms verbatim: 88% regular AI use in ≥1 function, 62% at least experimenting with agents, 23% scaling agentic systems somewhere. n=1,993 / fielded June 25–July 29 2025 confirmed in mckinsey.com search snippet. ≤10% per-function corroborated by a Forbes headline (fetch 403). Leading-functions list not independently verified. McKinsey page real and resolvable; timeouts look like slow-host/bot behavior.

### us-chamber-smb-genai
- claim: 58% of US small businesses use generative AI, up from 40% in 2024 (US Chamber data)
- url: https://www.uschamber.com/technology/artificial-intelligence/u-s-chambers-latest-empowering-small-business-report-shows-majority-of-businesses-in-all-50-states-are-embracing-ai
- http_status_or_outcome: 200 ok
- fetched: yes
- supports_claim: yes
- grade_in_doc: secondary (verified on US Chamber's own page — upgradeable to primary)
- access_date: 2026-08-19
- notes: Verbatim: "58% of small businesses say they use generative AI—up from 40% in 2024 and more than double the adoption rate in 2023" (Empowering Small Business report, published 2025-08-18).

### smb-agent-piloting
- claim: SMB agent piloting spans decision support (41%) through autonomous task execution (30%)
- url: https://www.upwork.com/resources/state-of-ai-in-smbs
- http_status_or_outcome: 403 forbidden (bot-blocked; page exists — surfaced by search with matching snippets)
- fetched: no
- supports_claim: not-determinable by direct fetch; corroborated by search snippets
- grade_in_doc: secondary
- access_date: 2026-08-19
- notes: Search snippets of the Upwork page confirm exactly: decision support 41%, information retrieval 36%, workflow automation 34%, multi-step planning 34%, autonomous task execution 30% (Upwork Research Institute Q1 2026 Business Leader Landscape survey, n=195, SMBs 10–99 employees). Coverage alternate also 403. Real, resolvable source behind a bot barrier. Caveat worth adding to the doc: Q1 2026 survey, n=195 (small sample).

## Unresolved and discrepancies

### Unresolved (1)

1. **big-four-profit-stall** — no source found stating "Big Four profit growth
   stalled for the first time since before Covid". Adjacent 2024 reporting covers
   partner-pay declines, and Nov 2025 UK reporting shows partner payouts RISING
   (Deloitte +4%, KPMG record) — the found evidence leans against the claim for
   FY2025. Possibly a paywalled FT piece that could not be located. Recommend
   rewording or dropping unless the original source is produced.

### Resolvable but access-blocked — claim not verifiable by fetch today (5)

2. **source-global-research** — sourceglobalresearch.com 403-blocks fetchers; the
   "only ~half of clients see value beyond what they paid for" finding is
   snippet-corroborated; the "2025 shrinkage in small ad-hoc project volume"
   half is unverified. Human re-verification needed.
3. **upwork-cost-to-hire** — Upwork 403-blocks all direct fetches (as the doc
   already discloses). Rate figures unverifiable by fetch today.
4. **smb-agent-piloting** — same Upwork 403 barrier; figures snippet-corroborated
   exactly.
5. **forrester-report-price** — forrester.com serves error pages to fetchers;
   $2,995 confirmed via multiple search snippets; the $1,495 variant not seen
   anywhere today — drop or re-verify $1,495.
6. **toptal-quality-misses** — supporting page (Trustpilot) 403; the two review
   pages that could be fetched do not document client-side quality misses.
   Soften "demonstrably" or cite a specific fetchable review.

### Figure and attribution discrepancies (fetched source vs document)

7. **aidols** — vendor page shows Build tier $75K–$150K; doc says $75K–$250K.
   Upper bound not on today's page.
8. **invisible-raise** — the Businesswire release carries no valuation; the
   ">$2B" figure belongs to the vendor's fundraise page ("$2B") / Bloomberg.
   Split the attribution.
9. **crosby-fixed-fee** — doc's "sub-hour turnaround" vs Sacra's "four-hour SLA,
   many completed in minutes"; and the $250–$1,000 range is snippet-only.
10. **general-catalyst-services** — "labor is 55–65% of services cost" not found
    in any fetched source (fetched source says 30–50% task automation, $16T
    market). Sub-claim unverified.
11. **sierra-site quote** — Sierra's own wording is hedged ("in most cases,
    there's no charge"); the doc quotes it as absolute.
12. **sierra-per-resolution** — $1.50/resolution is a third-party estimate; the
    fetched estimator page explicitly says the per-outcome rate is undisclosed.
13. **zendesk-automated-resolution** — fetched secondaries conflict: $1.30–1.50
    committed/$2.00 PAYG vs $1.20–1.50 without $2.00. No official rate card.
14. **superside-revenue** — ">$75M ARR" found only on a low-tier secondary and
    conflicts with GetLatka labeling $44.9M as "Est. ARR". Low confidence.
15. **clutch-pricing** — page says "$24–$49/hour"; doc says $25–49 (low bound
    off by $1).
16. **market-research-pricing** — qualitative "$5k–15k per 10–15 interviews" not
    on any fetched page; fetched source says $8,000–22,500 for 10–15 US IDIs.
17. **expert-network-pricing** — fetched sources give GLG $600–2,000/session and
    $1,000–2,500/hr vs doc's "$1,500–2,000/hr"; AlphaSights ~$1,000/hr not
    confirmed on any fetched page.
18. **11x-alice-pricing** — vendor page internally inconsistent: tier card
    $3,750/mo ($45,000/yr) vs FAQ "$36,000 per year". Doc cites the FAQ figure.
19. **mldeep-assessment** — vendor page title says "$15K Fixed", body says
    "$10,000 Fixed Price". Doc matches the body.
20. **fractional-exec-sizing** — the two 2025 sizings differ ~9%, not ~40%; the
    ~40% gap belongs to the 2034 forecasts. Doc's framing misattributes the
    disagreement.
21. **upwork-csuite-survey** — fetched coverage says 50% (doc: 48%) and 80%
    (doc: 81%); other figures (51/85/91) exact.
22. **builder-ai-insolvency** — fetched article says "hundreds of engineers";
    "~700" circulates in coverage not fetched. Suggest "hundreds (reported ~700)".
23. **artisan-issues** — $7,200/yr supported by one fetched secondary,
    contradicted by another ("no public pricing, ~$2,000/mo est."). Add
    "sources conflict".
24. **ai-sdr-churn** — the 50–70% churn stat's own cited source (UserGems) does
    not contain the figure; attribution chain broken upstream. Keep as
    secondary/low-confidence.
25. **chatgpt-pro-price** — since 2026-04 there are two Pro tiers ($100 and
    $200/mo); $200 is the top tier, no longer the only Pro price.
26. **upwork-fy2025** — take rate "19%" not stated verbatim in the release;
    arithmetic-consistent (787.8/4,030 ≈ 19.5%). Cosmetic, worth a footnote.
