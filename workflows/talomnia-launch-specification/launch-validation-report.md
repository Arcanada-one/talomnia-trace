# Talomnia Launch Validation Report

**Version:** 2 · **Date:** 2026-08-20
**Supersedes:** version 1 of this document, dated 2026-08-19, at this same path.
**Evidence source:** the launch-readiness audit measured against TZ v1.3.1 on
2026-08-20 (`docs/audit/TALO-0114-launch-readiness-audit.md`, private knowledge
repository — repo-relative reference only, per this document's sanitization
contract). Ledger figures are pinned to knowledge snapshot `0f9a38b`.
**Authored under:** TALO-0116. The audit is the source; this report is the
decision document TZ §14.7 requires, and it does not re-measure what the audit
measured.

---

## 0. Two corrections this version makes to the record

**A. The audit's first NOT MET was wrong about existence, and right about
substance.** The audit's headline finding reads *«§14.7 — the Talomnia Launch
Validation Report does not exist»*. It does exist, and has since 2026-08-19: at
this path, authored under TALO-0024, carrying the full §14.7 shape. What is true
is that it was **stale by one day and roughly nine landed lanes**, and stale in
the direction that matters most — its verdict.

**B. Version 1's NO-GO rested on a P0 that has since been remedied.** Version 1
returned `NO-GO` on one blocking failure: §14.1 item 2, *Design Research
performed before design*, which it graded FAIL because the design stage had been
accounted against three knowledge artifacts that were never authored. Those
artifacts were subsequently authored (TALO-0079 and TALO-0083), and the
2026-08-20 audit grades that criterion **MET** with its measurement. A published
`NO-GO` whose stated basis no longer holds is worse than no report: it is a
governance document that misdirects the decision it exists to inform. That is
why this version exists, and why superseding in place — rather than adding a
second report at a second path — is the correct form. Version 1 remains in this
file's git history in full.

Neither correction is a criticism of the audit's method. The audit found the
substantive gap correctly; it looked for the artifact in the private knowledge
repository, where every other governance document of this epic lives, and this
one lives in the public trace repository instead. That the TZ names the document
and not its location is itself a finding, recorded in §7 below.

---

## 1. What this document is

TZ §14.7 requires one closing document and states, in its own words, that
without it *«задача не считается завершённой»*. It requires five things, and
this report is organised around them:

| §14.7 requires | here |
|---|---|
| every §14 criterion marked passed / not passed / not applicable | §2 |
| P0 stop-factors separated, with status | §3 |
| known limitations and next steps (§12.2) | §7 |
| total time and cost (§9) | §8 |
| an explicit go / no-go decision | §9 |

Two further sections exist because TZ §15's decisions have had no written home
until now: §5 records the two **parked** decisions as parked, and §6 records the
items decided autonomously under ADR.

**Every claim below carries the measurement that produced it, or names where the
audit recorded it.** Where something was not measured, it says so rather than
inferring. That property is what this project sells; a validation report that
asserted its own conclusions would contradict the thing it is validating.

**Self-use disclosure.** Per §1.4 / §5.6: this remains a pre-commercial self-use
validation case. The customer role and the executing role are both performed by
Arcanada-operated agents. No commercial cases exist.

---

## 2. §14 criteria — passed / not passed / not applicable

Verdicts are the audit's, with its measurement column condensed to its referent.
The audit's own totals across the whole TZ: **71 MET, 6 PARTIAL, 4 NOT MET,
5 BLOCKED, 3 N/A.**

### §14.1 — process gates (P0 in full)

| # | criterion | verdict | referent |
|---|---|---|---|
| 1 | Stage 0 passed and validated before implementation | **PASS** | audit §2, §14.1 |
| 2 | Design Research before design | **PASS** | audit §10.1 — `research/research-design-landscape.md` + r4, `skill-design-research`. **This is the item version 1 failed.** |
| 3 | sanitization policy + CI check | **PASS** | audit §3.3 — `sanitization-gate.yml`, plants synthetic findings to prove it can fail |
| 4 | ADRs for stack, DBMS, analytics before implementation | **PASS** | ADR-0002, ADR-0003, ADR-0004, all dated 2026-08-19 |
| 5 | lifecycle works — no draft reaches the projection | **PASS** | `lifecycle-gate.spec.ts` |
| 6 | projection one-way and reproducible | **PASS** | `reproducibility.spec.ts`, `one-way-grants.spec.ts` |

**Tally: 6 pass / 0 fail.**

### §14.2 — site (P1)

| # | criterion | verdict | referent |
|---|---|---|---|
| 1 | all §5.1 sections in navigation | **PASS** | 12 / 12 measured on `/ru/` |
| 2 | RU/EN parity, single terminology | **PASS** | `i18n-parity.spec.ts`, language-purity suites |
| 3 | language switcher persists | **PASS** | measured |
| 4 | theme persists, system theme honoured, no FOUC | **PASS** | `anti-fouc.spec.ts` |
| 5 | mobile verified on small screens | **PASS** | overflow sweep, 320 px floor asserted |
| 6 | accessibility criteria met | **PARTIAL** | contrast measured and gated; **no keyboard-navigation or screen-reader pass exists**, and the critique registry reports an open WCAG 2.2 target-size finding |
| 7 | repeated entities from the DB | **PASS** | `db-page-mutation.spec.ts` — mutation-proved |
| 8 | public pages cached, forms not | **PASS** | measured live |

**Tally: 7 pass / 1 partial.**

### §14.3 — evidence base (P1)

| # | criterion | verdict | referent |
|---|---|---|---|
| 1 | Workflows from the DB, permanent URLs, working repo links | **PASS** | 35 / 35 links resolve 200 |
| 2 | Workflow 0 published as a process | **PASS** | measured |
| 3 | Research paginated, market research marked | **PASS** | measured |
| 4 | Atlas filterable, graph relations in the schema | **PASS** | 96 entities, 155 relations, both directions rendered |
| 5 | Investor Room: White Paper **and Pitch Deck** in HTML | **NOT MET** | Pitch Deck absent — 404 both languages |
| 6 | time and cost per task and in total | **PASS** | §8 below |
| 7 | Workflow Ledger filled | **PASS** | all 26 §9.1 fields on all entries, zero omissions |
| 8 | created / reused / modified per artifact | **PASS** | every named artifact carries a flag |
| 9 | Pitch Deck consistency-checked | **NOT MET** | nothing to check |

**Tally: 7 pass / 2 not met.**

### §14.4 — honesty of presentation (P0 in full)

| # | criterion | verdict | referent |
|---|---|---|---|
| a–e | all five honesty clauses | **PASS** | audit §1.4; `honesty-gate.spec.ts` refuses the projection on a planted violation |

**Tally: 5 pass / 0 fail. This P0 gate passes.**

### §14.5 — integrations and infrastructure (P1)

| # | criterion | verdict | referent |
|---|---|---|---|
| 1 | forms without iframe; requests reach Support Center; statuses sync | **PARTIAL** | sender side implemented and mutation-tested; **whether submissions arrive in production was not verified** — audit finding B |
| 2 | contract tests pass; incompatibility blocks the release | **PASS** | `contract-tamper.spec.ts` fails the build on a modified vendored contract |
| 3 | idempotency and audit log proved by test | **PASS** | measured |
| 4 | request minimization | **PASS** | structural + dynamic sweep |
| 5 | Cloudflare, SSL, nginx, staging/prod, backups, secrets, monitoring | **PARTIAL** | **cache invalidation is not available** (§4 item 2 below); monitor still runs `MODE=prelaunch` and must be flipped at launch |
| 6 | SEO: sitemap, robots, hreflang, OG | **PASS** | measured live |
| 7 | knowledge export procedure documented | **NOT MET** | no such document exists |

**Tally: 4 pass / 2 partial / 1 not met.**

### §14.6 — ecosystem (P1)

| # | criterion | verdict | referent |
|---|---|---|---|
| 1 | arcanada.ai card merged and deployed | **PASS** | live on both languages |
| 2 | blog article published via Publisher | **NOT MET** | 0 mentions on the blog. The TZ itself sequences this after the site is live |

**Tally: 1 pass / 1 not met.**

### §14.7 — this document

**Status: not marked here.** This report is the §14.7 artifact; whether it
satisfies §14.7 is an acceptance decision, and a document that graded itself
would be exactly the self-attestation `blueprint-evidence-bearing-verification`
forbids. The operator marks this one in §9.

### §14.8 — the verification rule

| criterion | verdict | referent |
|---|---|---|
| every criterion proved by a check that can go red | **PARTIAL** | the rule is enforced for its own instrument family: measured on `main` for this report, **35 instruments declared — 22 blind cases executed, 17 reasoned `n/a`** — each required to fail when blinded, and the check exits 0. The audit recorded 33 / 21 / 12 hours earlier the same day; the family grows as lanes land, which is why this row carries the figure measured for this document rather than the one inherited from the audit. Three requirements still pass on hand measurement with no re-runnable check: outbound repository links, the Pitch Deck's absence, and the knowledge-export procedure |

Those two numbers are not meant to sum to the third: `declared` counts
instrument *files*, `executed blind` counts *cases* — the files plus four
env-driven cases that attach to files already counted under `n/a`.

### Not applicable — on the TZ's own text, not on judgement

| criterion | why |
|---|---|
| §3.1 enterprise / mass-market execution modes | TZ: *«перспектива, не Phase 1»* |
| §4.2 backend product logic | TZ: *«В Phase 1 продуктовая логика не реализуется»* |
| §4.4 export UI | TZ: *«полноценный UI — вне объёма»* |

---

## 3. P0 stop-factors, separated

§14.7's rule: a P0 failure blocks the release and cannot be worked around, only
escalated. The P0 set is fixed by §14.7 itself.

| P0 item | status | basis |
|---|---|---|
| §14.1 — process gates, in full | **PASS** | 6 / 6, §2 above. Item 2, version 1's blocker, is now met |
| §14.4 — honesty of presentation, in full | **PASS** | 5 / 5; the gate refuses the projection on a planted violation |
| §12.1 — publication Evidence Gate | **PASS** | clause-by-clause below |
| §5.5 — artifact matrix + timing + cost per Workflow | **PASS** | all four workflows carry a matrix and real figures |
| §9.1–9.2 — Workflow Ledger | **PASS** | complete on every entry; disposition flag on every named artifact |
| §3.3 — public-repository sanitization | **PASS** | CI gate on every push, proven able to fail |
| §6.3 — request data minimization | **PASS** | structural and dynamic |

**Net P0 status: every P0 item passes.** That is the audit's own summary
sentence — *«Everything the TZ marks P0 is met»* — and it is the single most
decision-relevant fact in this report.

### §12.1 — the publication Evidence Gate, in detail

The clause requires one complete self-use case with a legible trace in the
repository and a result document. Measured on all four published workflows:

| workflow | task block | artifact matrix | repo links resolving | result document |
|---|---|---|---|---|
| `talomnia-launch-specification` | yes | 13 rows | 6 / 6 → 200 | yes |
| `building-talomnia-com` | yes | 1953 cells | 20 / 20 → 200 | yes |
| `market-research-talomnia-workforce` | yes | 51 rows | 6 / 6 → 200 | yes |
| `investor-market-venture-analysis` | yes | 111 rows | 3 / 3 → 200 | yes |

**35 of 35 links resolve 200. Verdict: PASS.** The gate requires one case; four
exist, and `talomnia-launch-specification` is Workflow 0, the case the TZ names.

**A recorded historical fact, not re-litigated.** Production was published before
the gate decision existed (the TALO-0025 / issue #29 sequencing event). Version 1
recorded it as a disclosed, accepted historical violation. It remains permanent
record. It is not a fixable-today item and it does not change the current gate
state.

**What this green does not cover, stated because it bears on trust.** Nothing in
CI fetches those 35 links. `deploy-drift` watches release currency,
`asset-version-gate` watches asset URLs, `typeset-gate` watches rendered text —
none resolves an outbound repository link. A renamed directory in this repository
would break the Evidence Gate silently. Recommended in §7, not done here.

---

## 4. The four NOT MET — what each blocks, and what it does not

**None of the four sits inside §12.1.** That distinction decides whether stage 9
publication may proceed, and conflating it with the general criteria list would
either block a launch the TZ permits or permit one it does not. §12.1 passes; the
four below are graded elsewhere in §14.

### 1. §14.7 — this report (was: absent; now: stale, superseded here)

- **Blocks:** the epic being *considered complete*, in the TZ's own words. Also
  the two §15 parked decisions having a written home — which is why they were
  documented as constraints and published copy but nowhere recorded *as parked*.
- **Does not block:** publication. It sits outside §12.1 and outside the P0 set.
  The site is live and permitted to be.
- **State after this document:** the shape exists and is current. The acceptance
  is the operator's.

### 2. §5.8.1 / §14.3 — the Pitch Deck was never created

- **Blocks:** §14.3 items 5 and 9, and one third of §13's single-terminology
  requirement, which spans site, White Paper and Pitch Deck — with the deck
  absent, that third is unmeasurable rather than failing.
- **Does not block:** any P0 item, §12.1, or the White Paper, which is published
  and versioned in both languages.
- **Note:** §15.1 item 6 assigns the deck to agents *«в рамках этого задания»* —
  so this is undone assigned work, not a parked decision. It is the only §15.1
  item in that state.

### 3. §4.4 / §15.2 item 10 / §14.5 — the knowledge-export procedure is undocumented

- **Blocks:** §14.5 item 7, and it is the one §15.2 item with **no ADR at all**
  (§6 below).
- **Does not block:** any P0 item or §12.1. §4.4's export **UI** is explicitly
  N/A for Phase 1 on the TZ's own text; what is required is a *minimal documented
  procedure*, and that is a document, not a build.

### 4. §11 / §14.6 — the Arcanada blog article is not published

- **Blocks:** §14.6 item 2, and §11's CTA-coverage requirement, which depends on
  the article existing.
- **Does not block:** any P0 item or §12.1.
- **Sequencing:** the TZ itself places this **after** the site goes live. It is
  on schedule rather than late. Dispatch is hard-gated (§6 below).

---

## 5. §15 parked decisions — recorded as parked

Both were substantively documented — in constraints, in ADRs, and in published
copy a reader can check — but neither was recorded *as a parked decision* in the
place the TZ designates, because that place is this document. A parked decision
that is written down is governance; one that is merely absent is an oversight.
Until this version, it was the second.

### Parked 1 — production payment collection

| | |
|---|---|
| **State** | PARKED. Not pending work, not blocked work, not scheduled |
| **What parks it** | TZ §5.12.1 and `constraint-stripe-sandbox-only`: Stripe operates in Test/Sandbox mode only, behind a provider-abstraction adapter, with live collection held behind an explicit operator go. TZ §15.1 item 2 additionally makes legal review a prerequisite Evidence Gate |
| **What unparks it** | A written operator decision, recorded in this report, **after** two prerequisites are satisfied: the legal entity is registered, and legal review of Terms / Privacy / Refund is complete |
| **Order** | Payments **cannot** unpark before Parked 2. The dependency runs one way and has no exception |
| **Current implementation state** | Correct for a parked decision: the adapter exists, the flag is default-off, and no live payment path is reachable |

### Parked 2 — legal-entity registration

| | |
|---|---|
| **State** | PARKED |
| **What parks it** | TZ §15.1 item 2: *«Arcanada Limited»* is a working name; the TZ forbids publicly claiming it is a registered entity until registration completes. Until then: no production payments, no unverified company or legal details published, Terms / Privacy / Refund kept as drafts, and every place carrying registration data marked *pending legal registration* |
| **What unparks it** | Registration completed, or an explicit operator decision that it stays parked for a stated period |
| **Order** | This is the **first** of the two. Nothing about payments moves until it does |
| **Current implementation state** | Correct and verifiable: all six legal pages carry the working-name framing, the draft marking and the pending-registration marker |

**Neither is a defect, and neither is scheduled work.** Recording them here is the
whole of what §14.7 asks for them.

---

## 6. §15.2 — items decided autonomously, with the ADR that decided each

The operator granted this autonomy on 2026-08-19: research, design, sandbox work
and recommendations proceed without confirmation; only irreversible production
decisions and outward actions escalate. §15 also states that **every** technical
decision in it is fixed in an ADR. This section is where the exercise of that
autonomy becomes auditable.

| §15.2 item | decision | ADR | status |
|---|---|---|---|
| 7 — technology stack | chosen stack | `ADR-0002-talomnia-tech-stack.md` | accepted |
| 8 — DBMS | PostgreSQL, isolated database | `ADR-0003-talomnia-database.md` | accepted |
| 9 — web analytics | Cloudflare Web Analytics | `ADR-0004-talomnia-web-analytics.md` | accepted — **but the implementation contradicts it; see below** |
| 10 — knowledge export | — | **none** | **FINDING: decided by nobody, recorded nowhere** |
| 11 — PKG vs BKG | public term is Professional Knowledge Graph | resolved on the TZ's own §13 text, honoured on the site (0 BKG leaks) | not an ADR, and did not require one |
| 12 — consultation price | not published | — | correct: publication requires operator confirmation |
| 13 — legal meaning of «credit» | drafted inside the legal documents | draft-marked, awaiting legal review | correctly parked behind Parked 2 |

Supporting ADRs exist beyond the three §15.2 required by name: repository
structure, projection source, repository provisioning, design reconciliation,
site rendering, Support Center integration, ledger storage.

### The finding the brief asked for

**§15.2 item 10 — knowledge export — was decided without an ADR, because it was
not decided at all.** There is no procedure and no record of a choice not to
write one. Every other §15.2 item either has its ADR or has a stated reason it
needed none. This one has neither, and it is also NOT MET item 3 in §4 above:
the same gap, seen from the decision side rather than the deliverable side.

### A second finding, on item 9, which is not a missing decision but a contradicted one

ADR-0004 chose Cloudflare Web Analytics **because** it is cookie-less, adds no
third party and needs no consent banner. The published privacy pages state that
decision as fact in both languages. The shipped code implements Google Analytics
4 behind two environment variables. Measured on production: **no analytics tag is
emitted at all**, so nothing is currently flowing anywhere.

Three consequences, pulling in different directions:

1. §5.0's analytics MUST is currently **unmet** — nothing measures anything.
2. The privacy page describes a system that is not running. Not false in effect
   today, but a published claim without a referent.
3. **The tempting repair is the unsafe one.** Setting the two variables would
   satisfy §5.0 by starting a Google data flow while the privacy page names
   Cloudflare — converting a dormant inconsistency into a live §14.4 honesty
   breach and a live consent problem.

This is recorded, not resolved. It is a prerequisite of legal sign-off (§6 of the
hard-gated list), because signing off a privacy page naming Cloudflare is sound
only if Cloudflare is what runs.

---

## 7. Hard-gated — operator actions

Not the executing fleet's, and not softened into recommendations. Stated in the
shape they have to be done.

### 1. Sixteen unapproved knowledge revisions

The resolver refuses any candidate without an approval
(`INVALID_UNAPPROVED_REVISION`) and refuses approval supplied by the content
itself (`INVALID_AUTHORITY_FROM_SOURCE`) — it consumes authority events and never
writes them. **No agent can close this**, by construction.

The sixteen current revisions with no `approve` event:

```
tal-blueprint-backup-verified-restore@r1        tal-policy-visitor-data-collection@r1
tal-blueprint-discovery-surface@r1              tal-role-autonomous-executive-lane@r3
tal-blueprint-long-form-document@r1             tal-role-discovery-surface-owner@r1
tal-blueprint-monitoring-verified-delivery@r1   tal-skill-analytics-instrumentation@r1
tal-blueprint-page-templates@r5                 tal-skill-cloudflare-cache-ops@r2
tal-blueprint-release-with-edge-invalidation@r1 tal-skill-long-form-typesetting@r1
tal-constraint-evidence-declares-coverage@r1    tal-skill-social-preview-composition@r1
tal-constraint-preview-set-complete-or-absent@r1 tal-skill-visual-design-critique@r3
```

**Action:** append one `AuthorityEvent` per revision to the authority log in the
private knowledge repository, in the shape the log already uses:

```json
{
  "authority_class": "arcanada-operator",
  "authority_id": "arcanada-operator",
  "event_id": "evt-<task>-approve-<logical-id>",
  "event_type": "approve",
  "issued_at": "<ISO-8601 UTC>",
  "kind": "AuthorityEvent",
  "schema_version": "talomnia-ontology/v1",
  "subject": {
    "content_digest": "sha256:<the revision's own content_digest>",
    "id": "<revision-id>",
    "subject_kind": "revision"
  }
}
```

The `content_digest` is the field of the same name in the revision's own JSON
file. Land it as a pull request from the operator's account — the authorship is
the signature.

**Until then:** these sixteen cannot enter any Knowledge Contract. Two of them
govern research pages that are already live, which is the same structural
unreachability TALO-0079 recorded and closed once before.

### 2. The Cloudflare cache-purge token

§8 requires cache invalidation and nothing currently provides it. The lane that
would build it is open and blocked on this alone.

**Action:** provision a Cloudflare API token scoped to **Zone → Cache Purge on
the `talomnia.com` zone only**, store it at the ecosystem secret path the deploy
broker reads, and tell the lane the path. Do not paste the value anywhere else;
the repository boundary means no agent should ever see it.

**Scope of what a purge would close, measured rather than argued:** the residual
declaration names five unversioned URLs, and the font exposure window is 24
hours. Everything versioned already goes fresh by construction — measured across
two consecutive releases, including the root landing page since it was versioned.

### 3. Production payments

**Action: none yet, and that is the correct state.** See Parked 1. When given,
the go must be a written decision recorded in this report, and it unparks only
after the legal entity is registered.

### 4. Legal sign-off, including the analytics question

1. Review and approve Terms, Privacy and Refund in both languages. All six are
   draft-marked and carry the pending-registration marker; approval means
   removing the draft marking, which an agent can do once sign-off exists.
2. **Decide the analytics contradiction first** (§6 above). Sign-off on a privacy
   page naming Cloudflare Web Analytics is sound only if that is what runs. If
   GA4 is chosen instead, a consent UI becomes a prerequisite and the privacy
   copy must be rewritten in both languages **before** sign-off, not after.
3. Register the legal entity, or confirm it stays parked. Until then the working
   name must keep its framing — which it currently has, on all six pages.

### 5. The blog article and social publication

The article does not exist and the TZ sequences it after the site is live, which
it now is. **Action:** commission it, then approve its dispatch through Publisher.
§11 requires its CTAs to cover five audiences — early clients and design
partners, a cofounder or operating partner, investors and introductions, the
AI-first consultation, and the waitlist — each pointing at the matching form
parameter. Those parameters exist and are tested, so the article can be written
against them today.

### 6. One check no agent could perform

Confirm whether the Support Center base URL is configured on the production host
and whether the three receiver-side items recorded in the site repository's
README are closed. If they are not, both contact pages are telling visitors their
request reaches Support Center while rows stay `pending`. The fix is one sentence
of copy; **which** sentence depends on a fact only the operator can read.

---

## 8. Known limitations and next steps (§12.2)

Ordered by launch relevance, not by ease.

1. **Analytics: §5.0's MUST is unmet and its ADR is contradicted.** See §6. The
   safe repair is the one the ADR already chose.
2. **Support Center delivery is unverified in production.** The page makes a
   promise the audit could not confirm; submitting a form to production is an
   outward action outside an audit's remit.
3. **Accessibility is partial.** Contrast is measured and gated. Keyboard
   navigation, screen-reader semantics and focus order have never been walked,
   and an open WCAG 2.2 target-size finding stands.
4. **Cache invalidation does not exist.** Versioned assets are fresh by
   construction; five unversioned URLs remain, with a 24-hour exposure window.
5. **Three requirements pass on hand measurement with no re-runnable check** —
   outbound repository links, the Pitch Deck's absence, and the knowledge-export
   procedure. The first is the one with a live failure mode: a renamed directory
   would break the Evidence Gate silently. **Recommended next step: a
   link-resolution sweep in the existing scheduled sweep family.**
6. **The ledger totals in §8 come from a single instrument.** They are reported
   as measured, and they have no external cross-check. The audit records that its
   own counting script returned two wrong answers before a third matched an
   independently measured figure. These figures should be re-derived by a second
   instrument before they are relied on for a commercial decision.
7. **The monitor still runs in prelaunch mode** and must be flipped at launch.
8. **Two ADRs share the number 0004** — one for the projection source, one for
   analytics. §14.1 requires the analytics ADR by name, so a reader told to check
   ADR-0004 can land on the wrong document. Renumbering is a rename plus its
   inbound citations.
9. **The RU White Paper is one version behind EN** (v0.4 against v0.5). The
   version stamp is published on both, so nothing is misrepresented.
10. **Seven ledger subtasks remain `pending`**, and the workflow page states its
    status as in-progress accordingly.
11. **The TZ names this document but not its location.** Version 1 was authored
    into the public trace repository; the launch-readiness audit looked for it in
    the private knowledge repository and reported it absent. Both were reasonable.
    **Next step: state the path in the TZ, or link it from the knowledge
    repository's document index.**

---

## 9. Time and cost (§9)

Pinned to knowledge snapshot **`0f9a38b`** (2026-08-20). Figures are the whole
epic, not one workflow.

| | |
|---|---|
| Ledger entries | **505**, across **90** tasks in 90 files |
| Summed lane time | **74 h 25 min** |
| Active execution | **65 h 48 min** |
| Execution cost | **$2018.84** — $1956.34 model, $62.49 human, $0.01 compute |
| Computed over | **482 of 505** entries |
| Cost NOT MEASURED | **23** entries — recorded as null, not summed as zeros |
| Marked estimated from token counts | **467 of 505** — no provider invoice stands behind those figures |
| Artifact references | **1639** — created 1018, modified 414, reused 207 |
| Rework entries | **24** |

**Summed lane time is not calendar time.** Lanes ran in parallel; the two
quantities are different and must not be added.

**The human figure is small and that is a measurement, not a rounding.** Human
review time is recorded as measured on a handful of entries and as absent —
`null`, never `0` — everywhere else. The rate converting it is a declared
operator assumption, published with the figure wherever it appears.

---

## 10. Go / no-go decision

**§14.7 requires this document to carry an explicit go / no-go. This version does
not supply one, deliberately, and the reason is part of the record: the verdict
is the operator's, and a report that decided it would be the executing side
grading its own work.** Version 1 supplied a verdict; its basis has since been
remedied, which is a demonstration of the hazard rather than an argument against
the practice.

What this report supplies instead is everything the decision rests on, in one
reading:

| | |
|---|---|
| **P0 stop-factors** | **all pass** — §3 |
| **§12.1 publication Evidence Gate** | **passes** — 35 / 35, §3 |
| **Operational status** | **LIVE**, and this report is not a mechanism to un-ship it |
| **NOT MET** | four, **none inside §12.1 and none inside the P0 set** — §4 |
| **Parked** | two, recorded as parked with their order — §5 |
| **Hard-gated on the operator** | six — §7 |

**The decision to record:**

```
Talomnia Launch Validation — operator decision

  Verdict:            [ GO ]  [ NO-GO ]  [ GO WITH NAMED EXCEPTIONS ]
  Named exceptions:   ______________________________________________
  Date:               ______________
  Recorded by:        ______________

  If GO WITH NAMED EXCEPTIONS, each exception names the criterion it
  waives and the condition that closes it.
```

Per §14.7, only the operator can waive a P0 — and on this measurement there is
no P0 to waive. The four NOT MET are P1 or sit outside the P0 grading; §14.7's
own rule is that their non-fulfilment is *recorded with its basis* and the
release decision is the operator's. That recording is §4 and §8 above.

---

## 11. What this report did not do

- **It did not re-measure the audit.** Every verdict in §2 is the audit's, with
  its referent named. Where this report differs from the audit, it says so and
  says why — §0.
- **It did not declare launch readiness or recommend a date.**
- **It did not fix anything.** The analytics contradiction, the missing Pitch
  Deck, the undocumented export procedure and the absent blog article are all
  recorded here and none is closed by this document.
- **It did not grade itself.** §14.7's own row in §2 is left for the operator.
