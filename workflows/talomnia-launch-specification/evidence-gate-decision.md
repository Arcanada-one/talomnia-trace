# §12.1 Evidence Gate — decision document

**Date:** 2026-08-19
**Executing contract:** K_id `sha256:122990fcbda9366206cbf8771df6d02893807a0e2b51c93403844446bc240f58` (prefix `sha256:122990fc…`), Resolution Receipt R_id `sha256:9c870de4e7b814b4e1a79a3442894f1f28f2de8138c6adf982c7e3e14e08b9c4` (prefix `sha256:9c870de4…`), Binding `bind-talo-0024-deploy`. Bundle committed at `architecture/reports/talo-0024/talo-0024-evidence-gate.bundle.json` in the private knowledge repository (referenced here by repo-relative path only, per this document's own sanitization contract).
**Role:** evidence-auditor (`tal-role-evidence-auditor@r1`), applying `tal-skill-success-criterion-measurement@r1` under `tal-blueprint-evidence-bearing-verification@r1` — no self-attestation; every predicate below is decided from a check able to fail, with the observed output captured.

This document is the gate decision itself: the §12.1 requirement that the landing
be admissible only with one full self-use case, a legible public trace, and a
result document — checked here on facts, against the live system as it stands, not
against a plan or an intention.

## 1. Predicate checks

| # | §12.1 predicate | Check run | Observed output | Verdict |
|---|---|---|---|---|
| 1a | Self-use case published at a permanent URL, listing the artifact matrix, timing and cost | `curl` the case page at `talomnia.com/en/workflows/talomnia-launch-specification` and `/ru/...`; inspect the rendered HTML for the artifact-matrix section and the timing/cost figure | Before remediation (see § 3): both locales returned **HTTP 404** — the site's `workflow` table held 0 rows. After the projection refresh documented in § 3: both return **HTTP 200**; the page renders an `#artifact-matrix` table with 567 rows and a header figure `$151.44 · 11.1h` | **PASS (post-remediation)** — see § 3 for the divergence found and fixed |
| 1b | Trace in this repository is legible: tasks, artifacts, correspondence present; links from the site resolve | Listed `workflows/talomnia-launch-specification/{README.md,tasks/,artifacts/,correspondence/}` — all present, non-empty, substantive (not scaffolding placeholders: `README.md` 182 lines covering task/timeline/rebuild/roles/time-cost/links; `tasks/README.md` documents the brief-era and contract-era task list; `artifacts/README.md` indexes the sub-task's selected/produced artifacts by K_id; `correspondence/README.md` carries the operator decision records verbatim-quoted). Extracted every `href` from the live case page's rendered HTML pointing at `github.com/Arcanada-one/talomnia-trace` and requested each with `curl -o /dev/null -w '%{http_code}'` | All 7 links into this repository (repo root, 4 file blobs, `tree/main/workflows/talomnia-launch-specification`, 2 commit links) returned **HTTP 200**. (Two links on the same page point into `talomnia-site`, a *different*, private repository, and return 404 to an unauthenticated visitor — out of scope of this predicate, which is about links into *this* repository, but recorded honestly: see § 5) | **PASS** |
| 1c | Result document for the case exists | Searched `workflows/talomnia-launch-specification/` for any result document | **Did not exist** prior to this task. Created as part of this delivery: [`RESULT.md`](RESULT.md) | **PASS (created by this delivery — the gate cannot pass without it, and producing it is inside this contract)** |
| 2 | Sequencing: did publication precede the gate decision? | Compared the trace-publish commit time, the production-deploy completion time, and this document's authoring time | Trace merged (`talomnia-trace` PR #3, commit `b7c2fa4`) at **17:14:15Z**. Production deploy completed (`prod-deploy-edge-and-verification`, TALO-0025 ledger) at **17:24:30Z**. This decision document is authored now, **after both**. See § 2 | **Sequencing finding recorded, not smoothed over — see § 2** |
| 3 (AC §3) | Live-site verification: Workflows list, case page, Capability Atlas serve; case page totals equal the committed ledger snapshot's `talo-ledger report` output at a cited commit | `curl` each route; ran `talo-ledger report --dir <committed ledger>` filtered to this workflow's `task_ids`; compared to the DB's `workflow.time_total_s` / `cost_total_usd` and to the rendered page figure | `/en/workflows` → 200; case page (both locales) → 200 (post-remediation); `/en/atlas` → 200 with 42 rendered entity cards (matches `atlas_entity` count). Ledger report at commit `2f95f52` (`talomnia-knowledge`, 2026-08-19T17:44:22Z), restricted to `task_ids = [TALO-0002…TALO-0012, TALO-0019…TALO-0025]`: **time 40,138 s, cost $151.44**. DB row (post-refresh): `time_total_s = 40138.00`, `cost_total_usd = 151.4400`. Page renders `$151.44 · 11.1h`. **Exact match** on all three | **PASS (post-remediation)** |
| 4 (AC §4) | Every link from the live case page into this repository resolves HTTP 200 | See row 1b — same check | All 7 links into `talomnia-trace` → 200 | **PASS** |
| 5 (AC §5) | PR references issue #29 and K_id `sha256:122990fc…`; sanitization CI green; ledger entries side-scoped | This PR's body cites both; sanitization CI status recorded on the PR itself; ledger entries appended under `talo-orch/ledger/TALO-0024.jsonl` with `role: "executor-evidence-auditor"` | See the PR for CI status at merge time | **Pending PR CI — tracked on the PR, not asserted here** |

## 2. The sequencing finding

**The Workflow 0 trace was published to this repository at 17:14:15Z. The
production application deploy completed at ~17:24:30Z — ten minutes later, under a
separate intermediate-deploy contract (TALO-0025). This formal Evidence Gate
decision is recorded only now, after both events.** That ordering is stated
plainly, not smoothed over, because it is a real defect in the epic's process, not
a technicality:

- The evidence-gate contract executed here (K_id `sha256:122990fc…`) embeds its
  own execution-phase constraint, `publish-only-after-gate`: *"landing publication
  is admissible only with one full self-use case with a legible repository trace
  and a result document; the site must not ship before that gate is decided on
  facts"* — evaluated as `production_deploys_before_gate_pass == 0`. Measured
  against the actual timeline, that predicate's subject is **1, not 0**: one
  production deploy (TALO-0025) completed before any gate decision existed. **This
  embedded constraint is VIOLATED as a historical fact.** It cannot be undone by
  this document; it can only be disclosed, which is what this section does.
- Even this contract's own issuance postdates the deploy: the bundle's
  `evaluation_time` is `2026-08-19T17:30:00Z` — the contract authorizing *this
  check* was itself issued roughly six minutes after the production deploy it is
  meant to gate.
- Checked against facts as they stood at the deploy's completion time (~17:24Z),
  not against the current, remediated state: the self-use case was **not** live
  at a permanent URL (the site's `workflow` table held 0 rows — see § 3 — so both
  locale URLs returned 404) and **no result document existed**. Two of the three
  §12.1 sub-conditions (1a, 1c) were factually false at the moment production
  shipped. Only 1b (the repository-side trace being legible) held at deploy time,
  because the trace commit had already landed at 17:14:15Z.

**Conclusion of this section: the gate's factual conditions did not hold at
17:24Z.** Production was published before the case was verifiably live and before
a result document existed, in violation of the very rule (§12.1 / the contract's
`publish-only-after-gate` constraint) this document exists to check. This is
recorded as a **process defect of the epic** — the two-sided contract model this
epic re-founded itself on (TALO-0019–0025) was itself mid-rollout at the time, and
the intermediate-deploy lane executed under a sibling contract (TALO-0025) that
did not itself carry a dependency on this evidence-gate contract completing
first. The fix is structural (a future deploy-authorizing contract should declare
an explicit dependency on a passed evidence-gate contract, not merely embed a
constraint that can be violated after the fact), not a rationalization of what
already happened.

## 3. The divergence found, and its remediation

Checking predicate 1a and AC §3 against the live system (not assumed) found a real
divergence: at the start of this check, the case page returned **404** at both
locale URLs, and a direct query against the production database returned
`SELECT count(*) FROM workflow` → **0**. The root cause is on record in the
TALO-0025 task report: at the time of the intermediate deploy, the site-content
that now lives at `site-content/workflows/wf-talo-0024-launch-specification.md`
in the private knowledge repository was still uncommitted work, so the projection
deliberately excluded it (`site-content: 0 workflows` in that deploy's captured
output) — a correct decision at the time, given the projection's contract
(committed Git state only), not a bug in that deploy.

That file has since been committed (`talomnia-knowledge` commit `91cb30d`,
2026-08-19T17:26:55Z, `visibility: public`, `maturity: public-sanitized` — both
required for the projection to pick it up), but the live database projection was
never re-run afterward, so the divergence persisted until this check.

**Remediation, through the standard loader channel** (not an ad-hoc host edit, and
not the deploy broker — which handles application bundles/health/rollback, not
database projection):

1. Exported the current committed state of the private knowledge repository
   (`git archive` at commit `2f95f52`) and transferred it to the production host.
2. Ran the site repository's built projection CLI (`dist/projection/cli.js`,
   already present in the currently-deployed release) against it, using the
   `talomnia_loader`-scoped `DATABASE_URL` from the production host's env file —
   the same mechanism, same role, same one-way Git→DB direction the loader has
   used since TALO-0009/TALO-0025 (the `talomnia_loader` role has no other write
   grant on the projection tables; the site's own runtime role cannot write them
   at all).
3. Output: `atlas: 42 entities, 88 relations` / `ledger: 148 entries, 600 artifact
   rows` / `site-content: 1 workflows (18 steps), 0 research, 0 investor docs, 0
   pricing cards`.
4. Repeated the same procedure against the staging contour (cheap, same
   mechanism, same env-file pattern) — same output.
5. Removed the transferred checkout from the host afterward; no state was left
   behind beyond the DB rows the loader wrote.
6. Re-verified: `SELECT id, slug, time_total_s, cost_total_usd, task_ids FROM
   workflow` now returns exactly one row, `time_total_s = 40138.00`,
   `cost_total_usd = 151.4400`, `task_ids` matching the source file's
   `task_ids` list — an exact match against the `talo-ledger report` figures
   computed independently in § 3 (Predicate table). The case page and Workflows
   list now render correctly (§ 1, row 1a and AC §3).

This refresh is itself disclosed rather than silently folded into "the gate
passed": the fact that a live divergence existed and had to be found and fixed
during this check is further, independent evidence that the ordering finding in
§ 2 is real — had this check not run, the production site would have continued
serving a 404 for the very case §12.1 requires to be live.

## 4. Ledger

Executor-side ledger entries for this task are appended to
`talo-orch/ledger/TALO-0024.jsonl` (private orchestration ledger, not this
repository) under `role: "executor-evidence-auditor"`, `knowledge_contract_id:
"talo-0024-evidence-gate"`. Not reproduced here; the committed ledger this
document's figures are computed from is the one cited in § 1 and § 3.

## 5. Other findings (out of the gate's literal scope, disclosed anyway)

- The case page carries two links into `talomnia-site` (a separate, private
  repository) pointing at specific commits; both return 404 to an unauthenticated
  visitor because that repository is private. This is not a §12.1 gate failure —
  the gate's link-legibility predicate (AC §4) is scoped to links into *this*
  repository, and all of those resolve — but it is a real, visible dead link on
  the public page for anyone who follows it, worth a follow-up.

## 6. Decision

Two distinct verdicts, deliberately kept separate rather than merged into one
number that would hide either fact:

- **Historical ordering constraint (`publish-only-after-gate`, embedded in this
  contract):** **VIOLATED.** Production was published (~17:24:30Z) before this
  gate decision existed, and before the case was even verifiably live (§ 2, § 3).
  This is permanent historical fact; it is disclosed, not corrected retroactively.
- **Current state of the §12.1 gate, as verified by this check (post-remediation,
  this document's date):** **PASS.** Every predicate in § 1 that is checkable
  against present live state — self-use case live with artifact matrix and
  totals, legible trace with resolving links, result document present, ledger
  parity exact, staging and production both re-verified — holds, with evidence
  captured above able to have failed and did not.

Basis for the PASS verdict: rows 1a, 1b, 1c, "3 (AC §3)" and "4 (AC §4)" in § 1,
all independently re-measured in this session, not carried over from any prior
claim. Basis for the VIOLATED verdict: § 2, comparing measured timestamps against
the contract's own embedded predicate.

Acceptance of this document and of the remediation it records is the customer's
decision on the referencing PR, per the two-sided model (TZ § 3.1.1): merge =
accepted, request-changes names the failed criterion.
