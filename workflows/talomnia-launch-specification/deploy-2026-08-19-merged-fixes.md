# Deploy record — landing the merged fixes on production (issue #41)

**Date:** 2026-08-19 · **Executing contract:** K_id `sha256:18fa7779b95d2e8b5abeaa9bb48bd3984e60b85e98ab4d026cc7e1ee2cfb2bcd`, Receipt R_id `sha256:9abcf8b130a68b7fd8e14c3cd56eaaa36bad739e54e6e4dd171a22ef7315ad20`, state Bound (bundle committed in the private knowledge repository under `architecture/reports/talo-0031/`; published in issue #41 before delivery). First contract resolved over the two-revision graph snapshot — the tie-break (highest revision, a pinned total ordering) is recorded in the Receipt per the blueprint's allowed variation.

Executor lane (Talomnia side). Pre-commercial self-use validation case: both sides are performed by Arcanada-operated agents.

## What was measured before anything was changed (baseline, 19:22:20Z)

The checks that must go green, run against LIVE production (release `20260819T185802Z`, built 18:58, before the merged fixes):

| Check | Command shape | Result |
|---|---|---|
| Cyrillic on `/en/knowledge-contract` | `curl … \| grep -c` Cyrillic range | **26 matches (RED)** |
| `/ru/` article link on the EN page | grep for the `/ru/blog` href | **1 match (RED)** |
| English type labels on `/ru/atlas` | grep `blueprint\|policy\|resolution receipt` as rendered labels | **46 matches (RED)** |
| Release source-commit marker | read `SOURCE_COMMIT` in the current release | **absent (RED — currency unprovable)** |

## The deploy (broker channel, staging first)

1. **Pending DB migrations:** checked both contours before deploying — all five migrations (including the Atlas titles/accounting one) already applied; nothing pending.
2. **Bundle** built by the repo-tracked `scripts/build-bundle.sh` (new in site PR #11): frozen lockfile → compile → unit suite → production-only dependencies → broker-floor self-check, **stamped with its source commit**. A dirty tree is refused.
3. **Staging** deployed via the broker: health OK; the same language checks against the staging URLs: **0 / 0 / 0**, human card titles render (e.g. «Библиотека компонентов Talomnia» instead of a slug), the published/withheld accounting renders.
4. **Rollback verified before production** (per the earlier deploy precedent): broker rollback returned staging to the previous release (`20260819T185739Z`), health OK; re-deploy restored the new release, health OK.
5. **Production** deployed via the broker: health OK.

## Live verification (criteria 2–4), 19:32:33Z, cache-busted at origin

| Check | Pre-fix (19:22Z) | Post-deploy (19:32Z) |
|---|---|---|
| Cyrillic on `/en/knowledge-contract` | 26 | **0** |
| `/ru/blog` link on the EN page | 1 | **0** |
| English type labels on `/ru/atlas` | 46 | **0** |
| Cyrillic across ALL eleven `/en/*` routes | — | **0 on every route** |
| Atlas card headings | slugs | **human titles, RU and EN** |
| Published/withheld accounting | — | **renders** |

## Criterion 1 — release identity

Production first served release **`20260819T193212Z`** built from main commit **`723d574`** (which includes site PRs #8 and #9 — the fix content), then — after the drift mechanism flagged a fresh 1-commit gap created by its own runner-label fix — release **`20260819T193741Z`** built from the current main HEAD **`fbaec27`**, deployed through the same staging→production broker path. Final state: production serves exactly main HEAD, and the drift check (run 32294073220) is green.

## Criterion 6 — the drift mechanism, and what it caught on its first day

Site PR #11 shipped two pieces: every release bundle now carries a `SOURCE_COMMIT` stamp, and a scheduled + dispatchable **deploy-drift** check on the production host's runner compares the deployed stamp against main — red when production is behind, red when the stamp is missing (an unprovable release counts as behind), red when the deployed commit is not on main at all. Red between a merge and its deploy is by design: a green PR is not a delivered fix.

Demonstrated exactly as the criterion demands:

1. **RED on the measured divergence** (run 32293300696, before the deploy): the pre-fix release carried no stamp — "currency cannot be proven; treating as BEHIND".
2. **A real catch, immediately:** the first post-deploy run was red for the *wrong* reason — the deploy-labelled runner turned out to be a **replacement runner registered on a different machine**, where the release tree does not exist at all. The check refused to report green on a machine that cannot see production; the fix (site PR #12) pins the job to the production host's own unique runner label. This also surfaced a fleet-level finding (other repos' deploy jobs target the same hijacked label) — reported to the customer side in the issue rather than silently patched around.
3. **RED on a genuine 1-commit gap** (run 32293966652): merging PR #12 moved main ahead of the deployed release — the mechanism flagged it within a minute of existing on the right host.
4. **GREEN after production caught up** (final run, see PR body): production rebuilt from main HEAD `fbaec27`, redeployed through the same staging→production broker path, drift check green.

## Honest limitations

- **Edge cache purge failed:** the cache-purge workflow's dispatch channel errored (a pre-existing credential-delivery defect recorded since the infrastructure task); origin verified fresh via cache-busting queries; cached public pages age out within their TTL (≤1h). The purge-channel repair is a separate, named follow-up.
- The applicable publication gate (the §12.1 decision) was recorded **before** this deploy — this record cites it rather than re-running it; no gate ran after the act.
- The drift check is currently loud in the Actions surface (red scheduled runs); escalation into the alerting channel that is proven-delivered is a possible hardening, deliberately left as a follow-up rather than bolted on unproven.

## Ledger

Executor-side entries for this task are in the committed ledger under the task's id, with `role` as the base graph-resolvable name and `side: executor`, per the two-sided accounting rule.
