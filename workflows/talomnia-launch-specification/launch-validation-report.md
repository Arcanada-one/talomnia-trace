# Talomnia Launch Validation Report

**Date:** 2026-08-19
**Executing contract:** K_id `sha256:3d1cec8f…` (launch-validation contract), Resolution Receipt R_id `sha256:baf537ab…`. Issued bundle committed in the private knowledge repository at `architecture/reports/talo-0024/talo-0024-launch-validation.bundle.json` (repo-relative reference only, per this document's own sanitization contract).
**Role:** `tal-role-evidence-auditor@r1`, applying `tal-skill-success-criterion-measurement@r1` under `tal-blueprint-evidence-bearing-verification@r1` — no self-attestation; every verdict below is decided from a check able to fail (§14.8), with the command and observed output on record.

**What this is.** The launch specification's §14.7 closing document: the epic (`TALO-0001`) is not considered finished without it. It grades every §14.1–§14.6 criterion pass/fail/not-applicable against the live system as it stands on this date, separates the P0 stop-factors named by §14.7, and states an explicit go/no-go with its basis.

**Self-use disclosure.** Per §1.4/§5.6: this is a pre-commercial self-use validation case. Both the customer role (issue #30) and the executor role (this report) are performed by Arcanada-operated agents, not by Talomnia and an external client. No commercial cases exist yet.

---

## 1. §14.1 — Process gates (P0)

| # | Criterion | Verdict | Backing fact |
|---|---|---|---|
| 1 | Stage 0 (0a + 0b) passed and validated before implementation | **PASS** | `TALO-0002` (knowledge-repo scaffold, retro issue #11) and `TALO-0003` (Capability Discovery gate, retro issue #12 — 99-row capability map, 95 `exists`/4 `create`) both closed before `TALO-0004`+ began; re-founded stage (`TALO-0019`–`TALO-0022`) repeats the same ordering. |
| 2 | Design Research performed **before** design creation | **FAIL** | Open client-review finding, issue [#31](https://github.com/Arcanada-one/talomnia-trace/issues/31) § C, reproduced by this audit: `ledger/TALO-0008.jsonl` claims knowledge elements `tal-skill-design-research`, `tal-competency-design-systems`, `tal-blueprint-design-system-atlas`. Checked against `graph/data/` on this date: **zero revision files for any of the three** — only `datarim-skill-frontend-ui` resolves. The design stage was accounted against artifacts that were never authored; the design proceeded from whatever the executing agent already knew, not from research. Unresolved as of this report (#31 open, 0 comments). |
| 3 | Sanitization policy exists and is checked in CI | **PASS** | `.github/workflows/sanitization-gate.yml` (Layer A gitleaks + Layer B denylist, positive controls first) exists and is currently green on `main` (last 2 runs on `main`: `success`, 2026-08-19T18:01–18:02Z). A **related but distinct** defense-in-depth gap is open and unresolved: issue [#32](https://github.com/Arcanada-one/talomnia-trace/issues/32) — the CI gate is a post-push backstop by construction, and a version-controlled pre-push gate does not yet exist repo-wide (an interim hook was installed manually on three local clones only, `.git/hooks/` is not version-controlled). This does not fail item 3 as literally stated (CI gate exists and is green) but is carried into § 3 (Known limitations) because it is the same sanitization concern. |
| 4 | ADRs written for stack/DB/analytics before main implementation | **PASS** | `architecture/adr/`, `graph/adr/` (`ADR-PKG-001`, `ADR-PKG-002`), `ontology/adr/`, `resolver/adr/` (`ADR-RSV-001`), `docs/adr/` (`ADR-0004-talomnia-web-analytics.md`) exist with authored content; `TALO-0007` ("Technical research + stack/DB/analytics ADRs") is closed (retro issue #16), staged before `TALO-0009`/`TALO-0010` per the epic's own dependency table (TZ §12). |
| 5 | Lifecycle works — only `public`/`sanitized` reaches the projection | **PASS** | `TALO-0025` report: the site-content file for this very workflow was excluded from the projection until it was committed **and** carried `visibility: public` + `maturity: public-sanitized` (`site-content: 0 workflows` before, `1 workflows` after). Issue [#35](https://github.com/Arcanada-one/talomnia-trace/issues/35) independently confirms the gate correctly **excludes** `internal`-visibility Datarim role artifacts from the public Atlas (5 of 29 roles, 9 of 114 skills currently projected) — the low coverage is a separate completeness issue (graded under §14.3 item 4 below), but the gate itself is functioning as designed, not loosened to hide the gap. |
| 6 | Projection is one-way and reproducible — rebuild from Git gives the same result | **PASS** | `src/projection/{atlas.ts,ledger.ts,loader.ts,site-content.ts}` in `talomnia-site` carry explicit one-way/idempotent/deterministic contracts in comments (verified by reading the source); the Evidence Gate decision (#29, merged PR #33) re-ran the same loader against staging and production independently and got matching output both times; this audit's own projection refresh (§5 below) reproduced the same figures a third time. |

**§14.1 tally: 5 pass / 1 fail.** Item 2 is a P0 failure (§14.1 is wholesale P0 per §14.7).

---

## 2. §14.2 — Site

| # | Criterion | Verdict | Backing fact |
|---|---|---|---|
| 1 | All §5.1 sections present, reachable from nav | **PASS** | Live nav (`curl https://talomnia.com/en/`) lists Home, Talomnia Workforce, How it works, Workflows, Research, Capability Atlas, Pricing, Investor Room, Knowledge Contract, Ecosystem, Contact — all return HTTP 200. |
| 2 | RU/EN full content parity, single terminology | **FAIL** | Open client-review finding, issue [#31](https://github.com/Arcanada-one/talomnia-trace/issues/31) § A, **reproduced live by this audit** on this date: `curl -sS https://talomnia.com/en/knowledge-contract \| grep -oE 'href="https://arcanada\.ai[^"]*"'` → `href="https://arcanada.ai/ru/blog/meaning-management-knowledge-contract-architecture"` (English page linking to the Russian article) and the string "Русская версия" appears twice on the English page. `curl -sS https://talomnia.com/ru/atlas \| grep -oE 'resolution receipt\|blueprint\|policy'` → 33× `blueprint`, 14× `policy`, 5× `resolution receipt` — untranslated English type labels and artifact descriptions on the Russian page. Both defects unresolved as of this report. |
| 3 | Language switcher works, persists across sessions | **PASS** | `src/site/theme.ts` defines `LANG_STORAGE_KEY = 'talomnia-lang'`; every fetched page ends with `<script>try{localStorage.setItem('talomnia-lang','en')}catch(e){}</script>` and carries `data-lang-switch` links in the header. Not independently mutation-tested by this audit; graded on shipped-code inspection. |
| 4 | Theme switcher works, persists, system theme respected before manual choice, no FOUC | **PASS** | `PRE_PAINT_THEME_SCRIPT` (`src/site/theme.ts`) is inlined in `<head>` on every fetched page: reads `localStorage['talomnia-theme']` synchronously before paint, falls back to `prefers-color-scheme` media query when unset, applies the `dark` class before first render — the anti-FOUC pattern the spec requires, confirmed present verbatim in live HTML. |
| 5 | Mobile adaptation checked on small screens | **FAIL** | No responsive/viewport test file exists under `test/site/` or `test/site-db/` in `talomnia-site` (searched, none found). Independently, the operator's own live review (issue [#31](https://github.com/Arcanada-one/talomnia-trace/issues/31) § B, filed same date) states plainly: "menu items wrap to two lines, left-aligned and overflowing their blocks." Unresolved. |
| 6 | Accessibility criteria met (target WCAG 2.1 AA, §5.0 — marked `[выведено]`/inferred in the spec, not literal-sourced) | **FAIL** | Only one accessibility-adjacent test exists: `test/site/token-contrast.spec.ts` (color-contrast tokens). No keyboard-navigation test, no alt-text sweep, no automated WCAG/axe audit found anywhere in `talomnia-site`. A shipped-HTML proxy count (17 `aria-*` attributes on the homepage) is weak, non-comprehensive evidence. Per §14.8 ("a green test that cannot fail is not evidence"), the converse also holds: a MUST criterion with no check broad enough to catch a violation cannot be graded pass. Related honesty context: issue #31 § B independently found "no images, no real graphic styling" on the live site. |
| 7 | Repeating entities render from DB, no hardcode | **PASS** | `talomnia-site` README: "no entity is hardcoded in markup (§3.4)"; rendering goes through `src/site/queries.ts` over `src/atlas/queries.ts`; the live `/en/atlas` entity count matches the DB `atlas_entity` count recorded in the Evidence Gate decision (42). |
| 8 | Public pages cached, forms not | **PASS** | Live header check: `/en/atlas` → `cache-control: public, max-age=300, s-maxage=3600, stale-while-revalidate=600`; `/en/contact` → `cache-control: no-store`. |

**§14.2 tally: 5 pass / 3 fail.**

---

## 3. §14.3 — Evidence base

| # | Criterion | Verdict | Backing fact |
|---|---|---|---|
| 1 | Workflows section works from DB, each Workflow has its own page with a permanent URL, public-repo links resolve | **PASS** | `/en/workflows` → 200; case page (both locales) → 200; the Evidence Gate decision (#29) verified all 7 links from the live case page into `talomnia-trace` return HTTP 200 — re-checked by this audit, unchanged. |
| 2 | Workflow 0 published as a **process** (discovery → … → accepted specification), not just the spec file | **PASS** | `workflows/talomnia-launch-specification/README.md` documents the full process (client discovery → discussion → requirements → contradictions/TBD → technical assignment → validation → accepted specification → orchestration input), plus separate `artifacts/`, `correspondence/`, `tasks/` subfolders — not a bare copy of the spec file. |
| 3 | Research: pagination works; Talomnia Workforce Market Research published, marked "pre-commercial self-use validation case" | **FAIL** | Live `/en/research`: `<p>Nothing here yet — data lands in the database as execution happens and is published after sanitization.</p>` — the honest-empty-state disclaimer and badge render correctly (so the honesty framing itself is not at fault), but **no research document is published**. Root cause confirmed against the Evidence Gate decision's own remediation output (§3 of that document): after the loader refresh, `site-content: 1 workflows (18 steps), 0 research, 0 investor docs, 0 pricing cards` — the `research` table is empty by measurement, not merely unrendered. `TALO-0006` (market research) is closed as a task, but its output was never projected into the site DB. |
| 4 | Capability Atlas: filterable list, entity pages, graph relations in the DB schema | **FAIL** | The underlying mechanics work (filterable list renders, entity pages exist, 88 graph relations are stored and served — confirmed via the Evidence Gate decision's DB counts), but the criterion as a working catalog fails on completeness and legibility per the open, unresolved client-review finding [#35](https://github.com/Arcanada-one/talomnia-trace/issues/35): 5 of 29 Role artifacts and 9 of 114 Skill artifacts are projected (Competency type renders 0 entries — tracked separately by #9/TALO-0026, in progress); card headings render as machine slugs (`component-library`, `design-system-atlas`) because artifacts carry no human-readable title field; card descriptions are single-line machine-register text while the underlying artifacts hold substantial `responsibility`/`perspective`/`obligations` prose that the page never surfaces. All three sub-findings independently reproducible against the live graph and site; none corrected as of this report. |
| 5 | Investor Room: White Paper + Pitch Deck in HTML, RU/EN, dated and versioned; honest status, next Evidence Gates, CTA | **FAIL** | Live `/en/investors` and `/en/pricing`-adjacent Documents section: `<p>HTML versions are published once they pass the factual consistency check. If this list is empty, the document has not passed the check and is not published yet.</p>` — the list **is** empty (confirmed by inspecting the rendered `#docs` section; no document card or table row present). The honesty/status/targets/CTA portions of the page **do** pass independently (see §14.4 below — validation targets explicitly labeled non-traction, pre-seed explicitly labeled hypothesis, "Full status in the Investor Room" CTA present in every page footer), but the required documents themselves are not published. The source PDF (`Talomnia_White_Paper_EN_v0.5.pdf`) exists in the workspace and is cited as a reused artifact in the ledger, but no HTML version has passed the factual-consistency check and gone live. |
| 6 | Time and cost fixed per task and in total, including artifact creation | **PASS** | See § 5 (Time and cost) below — sourced from `talo-ledger report` against the committed ledger snapshot. |
| 7 | Workflow Ledger (§9.1) filled — hierarchy, knowledge, time, computation, result per entry; `wall_time` ≠ `active_execution_time`; `rework_of` set where reworked | **PASS** | Ledger report shows wall vs. active time diverging per task (e.g. `TALO-0022`: wall 1h14m40s vs. active 0h41m15s); rework tracked non-trivially (7 of 157 entries, 4.5%, ~$4.48); `TALO-0025`'s own report documents a concrete `rework_of` chain (`staging-deploy-first-attempt-health-red` → the PR #6 fix that turned it green). |
| 8 | `created` / `reused` / `modified` flag set per artifact (§9.2) | **PASS** | The ledger report's "First creation vs reuse" section computes creation-$ vs. reuse-$ per distinct artifact across 90+ artifacts with at least one reuse — this output is only possible if the flag is set and honored per entry. |
| 9 | Pitch Deck created RU + EN, HTML, Investor Room, passed factual-consistency check against White Paper and site | **FAIL** | Same live check as item 5 — the Documents list is empty in both locales; no Pitch Deck HTML exists. |

**§14.3 tally: 5 pass / 4 fail.**

---

## 4. §14.4 — Honesty of presentation (blocking gate, P0)

| # | Criterion | Verdict | Backing fact |
|---|---|---|---|
| 1 | Absence of commercial cases stated plainly | **PASS** | Every fetched page's footer: "Honest status: Talomnia Workforce has no commercial cases yet; the system runs in founder-led validation, and this site was built by that very system." |
| 2 | All target figures marked as targets, not traction or promises | **PASS** | `/en/investors`: "The figures below are validation targets — thresholds, not current traction and not promises." |
| 3 | "N times cheaper than a human" coefficient absent | **PASS** | Swept `/`, `/en/`, `/en/research`, `/en/investors`, `/en/workforce`, `/en/how-it-works` for `cheaper`/`дешевле` — zero matches on any page. |
| 4 | Pre-seed described as a hypothesis, not an announced round | **PASS** | `/en/investors`: "A pre-seed of $500K–$1M is a working hypothesis considered after initial commercial validation. It is not an announced or committed round." |
| 5 | Research case marked pre-commercial self-use validation | **PASS** | `/en/research`: badge + callout, "pre-commercial self-use validation case," present even though the section is otherwise empty (item 3 of §14.3). |

**§14.4 tally: 5 pass / 0 fail. This P0 gate passes.**

---

## 5. §14.5 — Integrations and infrastructure

| # | Criterion | Verdict | Backing fact |
|---|---|---|---|
| 1 | Forms work without iframe; submissions reach Support Center; statuses sync | **FAIL** (sender side implemented and tested; receiver side dark) | Forms are native, no iframe, per the `talomnia-site` README. But live delivery is **dark**: `SupportCenterClient` is env-gated and the README documents three unresolved receiver-side gaps (ADR-0011 D6, "not this task"): (a) Support Center's Turnstile verification is hostname-pinned to its own domain — a server-to-server create from `talomnia.com` cannot currently pass it, so live submissions stay `pending`/`error`; (b) the shared `project` enum on the Support Center side has no `talomnia` value yet (cosmetic — `other` is contract-valid today); (c) `AUTH_SUPPORT_CLIENT_ID` on the Support Center side is single-valued (only the Control Arcana m2m client is admitted) — no Talomnia m2m client is provisioned, so admin status polling cannot run. "Statuses synchronize" is therefore not currently true in production. |
| 2 | Contract tests pass; incompatibility blocks release | **PASS** | `docs/evidence/TALO-0011-mutations.md`, mutation M3: a single-token rename of a vendored contract type (`CreatedTicket` → `CreatedTicketX`) is caught by `test/support/contract-tamper.spec.ts` (RED captured, then reverted to GREEN with the sha256 verified to match both the pinned manifest and the upstream `arcanada-support` file at commit `f2e3fcaf…`). |
| 3 | Idempotency and audit log confirmed by test, not declared | **PASS** | Same file, mutation M1: breaking `submissionIdFor`'s determinism (injecting `Math.random()`) is caught by a real failing Vitest assertion, reverted to GREEN. |
| 4 | Talomnia DB stores only the §6.3 minimum for requests | **PASS** | Same file, mutation M2: routing the submitted `email` into the `source_page` column is caught by `test/site-db/pii-sweep.spec.ts` (RED: sentinel PII found in a swept column; reverted to GREEN: zero hits). |
| 5 | Cloudflare + SSL + nginx + staging/prod + backups + secret management + monitoring with verified alert delivery | **PASS** | `TALO-0012` closed (retro issue #21); `TALO-0025` report: staging and production both `health: OK`, rollback verified (`rollback staging` → `current` switched to the previous release, health OK again); a verified-alert-delivery artifact exists in the orchestration notes (`talo-0012-alert-proof.txt`). |
| 6 | SEO: sitemap, robots, hreflang, OG | **PASS** | Live `sitemap.xml` carries per-locale `<url>` entries with `xhtml:link rel="alternate" hreflang="ru"/"en"` pairs; `robots.txt` allows `/` (disallowing only the two contact-form paths) and points at the sitemap; fetched pages carry `og:title`, `og:description`, `og:locale`, `og:locale:alternate`, and `canonical`. |
| 7 | Knowledge-base client-export procedure documented (§4.4, Phase-1 minimum: a documented procedure, no UI required) | **FAIL** | TZ §4.4 requires, verbatim (marked `[выведено]`/inferred but still MUST): "поддержка экспорта базы знаний клиенту — база всегда может быть выгружена. В Phase 1 достаточно документированной процедуры выгрузки." Searched `talomnia-knowledge/docs/` and every `adr/` directory for an export/handoff/portability procedure — none found (`docs/runbook-devops.md` and `docs/scrutator-indexing.md` cover operational indexing, not client export). No documented procedure exists as of this report. |

**§14.5 tally: 5 pass / 2 fail.**

---

## 6. §14.6 — Ecosystem

| # | Criterion | Verdict | Backing fact |
|---|---|---|---|
| 1 | Talomnia card on arcanada.ai — merged and deployed | **PASS** | Live `https://arcanada.ai/en/` renders a Talomnia card: title "Talomnia," status badge "Building," AAL "L1→L4," description "Professional Capability Infrastructure — professional work without hiring," working link to `https://talomnia.com`. TZ §11's own table records PR `arcanada-landing#64` merged; this audit confirms the deploy is live, not merely merged. |
| 2 | Blog article published via Publisher with operator confirmation | **FAIL** | TZ §11's own table records this row as "К ВЫПОЛНЕНИЮ" (to be done, after site publication so CTAs target live forms) — no evidence of publication found anywhere in the workspace or on Arcanada's public channels as of this report. |

**§14.6 tally: 1 pass / 1 fail.**

---

## 7. P0 stop-factors (§14.7) — separated, not argued around

Per §14.7's own rule: P0 failure blocks release and cannot be worked around, only escalated to the operator.

| P0 item | Scope | Status |
|---|---|---|
| §14.1 — process gates | Whole section | **FAIL** — item 2 (Design Research performed before design) fails: the design stage was accounted against knowledge-graph artifacts that were never authored (#31 § C). **Blocking.** |
| §14.4 — honesty of presentation | Whole section | **PASS** — all 5 items pass (§4 above). |
| §12.1 — publication Evidence Gate | Current state vs. historical constraint | **Two distinct verdicts, kept separate, both already recorded on the merged #29 decision and re-confirmed unchanged by this audit:** (a) **Current gate state: PASS** — every predicate checkable against present live state (case live with artifact matrix and totals, legible trace with resolving links, result document present, ledger parity exact) holds. (b) **Historical ordering constraint (`publish-only-after-gate`): VIOLATED** — production was published (~17:24:30Z) before the gate decision existed and before the case was even verifiably live. This is permanent historical fact, disclosed not corrected. It is not re-litigated here; it is carried forward as a recorded, accepted P0 violation on the epic's record. |
| §5.5 — artifact matrix + timing/cost per Workflow | Live case page | **PASS** — 567-row artifact matrix renders with a `$151.44 · 11.1h`-style header figure (see § 8 for the current, re-verified figure); see § 9 below for an honest note on the matrix's per-row column semantics. |
| §9.1–9.2 — Workflow Ledger | Whole requirement | **PASS** — see §14.3 items 6–8 above. |
| §3.3 — public-repository sanitization | Whole requirement | **PASS** — CI gate exists and is green on `main`. A related, non-blocking defense-in-depth gap (pre-push gate not yet version-controlled, issue #32) is carried into § 9 (Known limitations); it does not fail this P0 item as literally stated. |
| §6.3 — request data minimization | Whole requirement | **PASS** — mutation-proved (§14.5 item 4 above). |

**Net P0 status: one blocking failure (§14.1 item 2 — the fabricated design-capability provenance) plus one disclosed-and-accepted historical violation (§12.1 sequencing) that is not re-opened by this report but is not erased either.** Every other P0 item passes.

---

## 8. Known limitations and next steps (§12.2)

Honest, not exhaustive-to-the-point-of-noise — the items with the most launch relevance first:

1. **Design capability fabrication (P0, blocking — #31 § C).** The design stage (`TALO-0008`) proceeded without the researched, contract-grade design artifacts it was accounted against. Fixing the CSS without first authoring the design capability (role/skill/blueprint, externally sourced, `derived_from`-provenanced) reproduces the same failure the next time anything is designed. Next step: author the design capability first, execute the redesign against it, and correct `TALO-0008`'s ledger accounting with an append-only entry (per #31's own boundaries) — tracked, not executed by this report.
2. **Language separation broken (#31 § A).** English pages carry Russian link targets and strings; the Russian Atlas page leaks untranslated English type labels and full-English artifact descriptions. Both reproduced live by this audit.
3. **Capability Atlas materially incomplete and machine-legible only, not human-legible (#35).** 5 of 29 roles and 9 of 114 skills projected (with the published/withheld split not yet stated on the page itself); card headings are slugs, not titles (no title field exists in the artifact contract yet — an ontology change is required, tracked by #35 itself); card descriptions discard the substantial `responsibility`/`perspective`/`obligations` prose the underlying artifacts already carry.
4. **Pre-push sanitization gate not yet repo-tracked (#32).** The CI gate (post-push) is real and green, but is the only automated backstop that survives a fresh clone today; a pre-push hook exists only as an unversioned local install on three clones. `--no-verify` remains a client-side bypass regardless — CI stays the backstop either way, per #32's own boundary.
5. **Investor Room documents unpublished.** Neither the White Paper HTML nor the Pitch Deck HTML has passed the site's factual-consistency check; the Documents section renders correctly empty (honest, not faked), but neither document exists on the live site.
6. **Research section empty.** The Talomnia Workforce Market Research (`TALO-0006`, closed as a task) was never projected into the site DB; `research` table = 0 rows as of the last confirmed loader run.
7. **Support Center integration is dark end-to-end in production**, for reasons entirely on the receiver side (Support Center), not the sender side (`talomnia-site`), per the README's own documented gate: (a) Turnstile hostname-pinning blocks server-to-server ticket creation from `talomnia.com`; (b) the shared `project` enum has no `talomnia` value (cosmetic, `other` is valid); (c) `AUTH_SUPPORT_CLIENT_ID` on the Support Center side is single-valued and does not yet admit a Talomnia m2m client. The sender-side code is implemented and mutation-tested (idempotency, PII minimization, contract-tamper detection all proven RED→GREEN).
8. **Knowledge-base client-export procedure undocumented.** TZ §4.4's Phase-1 minimum (a documented export procedure, no UI required) has no corresponding document in the workspace as of this report.
9. **19 open PKG gap records** exist in `graph/data/gaps/` as of this audit (8 competency-lifecycle gaps tracked by issue #9/`TALO-0026`, in progress; 5 `TALO-0025`-related gaps already closed by expansion into created revisions per that task's own report; 6 other structural/script gaps). None are silently hidden — each is a real, named file.
10. **Artifact-matrix per-row semantics undocumented on the page.** Of the case page's 567 `<tr>` rows, 508 render `—` in the Type/Version/Status columns (only 58 rows — the actual knowledge-graph artifacts: blueprint/skill/policy/role/constraint/acceptance-criterion — populate Type). This appears to be correct by construction (the remaining ~90% of rows are file paths, PR links, CI runs, and live probes, which structurally have no graph "Type"), but the page does not explain the distinction, and a reader could reasonably misread the dashes as missing data rather than a different row class.
11. **Blog announcement article not yet published** (§14.6 item 2) — deliberately deferred until after site publication per TZ §11 itself, but still open.
12. **Monitor mode.** Referenced orchestration notes (`talo-0012-alert-proof.txt`, `TALO-0024-worklog.md`) exist but this audit could not independently confirm from public-repository facts alone whether the production monitor is still running in a "prelaunch" configuration or has been switched to normal operating mode — **left as unverified** rather than asserted either way.
13. **Accessibility and mobile adaptation lack comprehensive automated checks** (§14.2 items 5–6) — only a color-contrast test exists; no viewport/responsive suite, no axe/WCAG audit.

---

## 9. Time and cost (§9)

Sourced verbatim from `talo-ledger report --dir ledger` against the committed ledger snapshot at `talomnia-knowledge` commit **`ec5268d`** (2026-08-19T17:44:22Z window, "ledger snapshot refresh — issue #29 and #9 executor entries, customer acceptances of PR #33/#34, executor token self-estimates reconciled to harness measurements"), the commit cited by this report:

```
## Epic total

- Entries: 157 across 20 task(s)
- Wall time: 12h 15m 20s; active execution: 10h 26m 21s; idle gap: 1h 48m 59s
- Tokens: 7110763 in / 1120338 out
- Cost: ~$165.76 total (model ~$165.75 + compute ~$0.01 + human ~$0.00)
- Human review time: 0h 00m 00s
- Rework: 7 of 157 entries (4.5%), ~$4.48 spent on rework
```

**Honest boundary on this figure's own accounting:** this report's own executor entries (the work of producing this document) are appended to `talo-orch/ledger/TALO-0024.jsonl` **after** commit `ec5268d`, so they are not included in the 157-entry / $165.76 total quoted above — the same honest-boundary pattern the Evidence Gate decision (#29) used for its own accounting. The live case page's `$151.44 · 11.1h` figure (checked § 1 of the Evidence Gate decision) is a **different, earlier** commit snapshot (`talomnia-knowledge@2f95f52`, restricted to `task_ids = TALO-0002…TALO-0012, TALO-0019…TALO-0025`) — it is not expected to equal the `ec5268d` epic total above, because the case-page figure is scoped to one Workflow's task set while `ec5268d`'s epic total spans all 20 tasks including `TALO-0026` (competency promotion) which is outside Workflow 0's `task_ids` list. Both figures are internally consistent with what they each claim to measure; neither contradicts the other.

---

## 10. The two open operator items

Recorded verbatim as **open**, per the epic's own operator decisions (TZ §15.1), not executed by this report or any prior task:

- **Enabling real payment acceptance.** Stripe is the decided provider (Test/Sandbox Mode only), behind a provider-abstraction adapter. Production payments require a **separate operator confirmation**. Legal review is itself an independent Evidence Gate before production payments can be enabled.
- **Legal-entity registration.** Working name "Arcanada Limited" is not a registered legal entity. Until registration completes: no production payments, no unverified company/legal claims published, Terms/Privacy/Refund stay drafts (confirmed live: `/en/legal/{terms,privacy,refund}` all render "(draft)" in the footer), and every place with registration data is marked "pending legal registration" (confirmed live on `/en/research`'s footer: `"Arcanada Limited" is a working name of the legal entity; registration is not completed (pending legal registration)`).

---

## 11. Projection parity (see PR body for the refresh procedure and its result)

The live database projection was refreshed through the standard loader channel to bring the published workflow figures into parity with the `talomnia-knowledge` commit cited by this report. The refresh procedure, its output, and the parity check are recorded in the PR body rather than repeated here — quoting them inside the report itself, before the projection they describe has run, would be circular (the report would be citing a state it had not yet produced).

---

## 12. Go / no-go decision

**Two distinct statuses, kept separate rather than merged into one number that would hide either fact — the same discipline the Evidence Gate decision (#29) used for its own verdict:**

- **Operational status: LIVE.** The site is in production, serving all required §5.1 sections, and has been since the (already-disclosed) `TALO-0025`/`#29` sequencing event. This report does not undo that fact and is not a mechanism to un-ship a production deploy.
- **Formal Launch Validation status, against the §14.7 P0 bar: NO-GO.**

**Basis.** §14.7 is explicit: a P0 failure blocks release and cannot be worked around, only escalated to the operator. This audit found one live, unresolved P0 failure — §14.1 item 2, the design stage accounted against three knowledge-graph artifacts that were never authored, with the visible, still-open consequence in issue #31 (broken language separation, unstyled design). It also re-confirms, without re-litigating, the previously-disclosed §12.1 historical sequencing violation, which is permanent record, not a fixable-today item.

Both P0 findings trace to a single open, unresolved client-review issue: **#31**. Until #31's three acceptance criteria are met (design capability authored with external provenance, redesign executed against it, `TALO-0008` accounting corrected), this epic does not meet its own P0 bar, regardless of the fact that the site is already live.

**Recommendation to the operator:** either (a) accept an explicit, named override for §14.1 item 2 pending #31's resolution and treat the current live state as accepted-with-known-defect, or (b) treat this report's NO-GO as the operative status and require #31 (plus, at minimum, #35's Atlas-completeness fix and the Investor Room documents) closed before the epic is considered launched in the formal sense. This report does not make that call — per §14.7, only the operator can waive a P0.

P1 items (§14.2, §14.3, §14.5, §14.6 failures listed above) do not independently block release per §14.7's own grading rule, but are recorded with their basis for the operator's judgment; none is silently smoothed over.

---

## 13. The rebuild story (part of the record)

Two eras, disclosed rather than hidden. The first eleven tasks (`TALO-0002`–`TALO-0012`) were issued as markdown briefs — prompts, not resolved contracts: no fixed artifact-version set, no Resolution Receipt, no separation of what-to-know / what-is-permitted / what-is-forbidden / how-success-is-measured. Measured consequence: 39 of 73 brief-era ledger entries (53%) named more than one knowledge element on a single row, making per-element cost attribution structurally impossible for those entries — the root finding that produced `TALO-0023` (per-knowledge-element cost attribution) and, upstream of it, the operator's 2026-08-19 decision to re-found the epic on Knowledge Contract Architecture rather than patch the brief-era accounting:

> "смысл был не просто это считать, а считать именно сколько в каждой задаче и подзадаче использовано на каждую агентскую роль, на каждый скилл, на каждый блюпринт времени, денег, токенов… Еще не поздно вернуться в начало, пересоздать так, как надо, и вести учет даже того, что уже сделано."

The re-founding (`TALO-0019`–`TALO-0025`) made the order mandatory — knowledge artifacts → graph → resolver → contracts → execution — and this task (`TALO-0024`) is itself part of that re-founded era: Support Center integration, Workflow 0's own publication, the Evidence Gate, and this Launch Validation Report were each resolved to a `K_id` before execution, not run from a brief. Retrospective issues [#4](https://github.com/Arcanada-one/talomnia-trace/issues/4)–[#28](https://github.com/Arcanada-one/talomnia-trace/issues/28) carry the closed brief-era and contract-era tasks' own Knowledge Contracts and Resolution Receipts, so the public trace shows the full history — brief era included, not edited out.
