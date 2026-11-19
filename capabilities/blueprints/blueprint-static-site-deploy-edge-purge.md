---
projection-of: tal-blueprint-static-site-deploy-edge-purge
type: blueprint
source-version: 0.1.0
origin: created-in-talomnia
projected: 2026-11-18
---

# Blueprint — static-site deploy with mandatory edge purge

## Purpose

Repeatable program for shipping a static (or CDN-fronted) site so that, after
deploy, users see the new origin content immediately. Addresses customer review
R12 (`talomnia-trace#59`): green deploys that never purged Cloudflare left
`s-maxage=3600` HTML and `HIT` assets on the edge.

## Preconditions

- Release artifacts are committed and verified (build/test green).
- Deploy channel is the approved path for the contour (reusable workflow or
  deploy-broker), not an ad-hoc host edit.
- A Cloudflare API token with `Zone.Zone:Read` and `Cache Purge:Purge` is
  available to the runner **or** the domain is proven not to be a CF zone.

## Steps

1. **Build and stage** the release bundle for the target webroot.
2. **Deploy to origin** through the approved channel; do not mutate live
   webroots by hand.
3. **Health-check origin** (follow redirects; require a final `2xx`).
4. **Purge the Cloudflare edge cache** for the deployed domain
   (`purge_everything` or equivalent scoped purge).
   - If using `shared-workflows` `deploy-static-site`: keep
     `cloudflare_purge: required` (default) and forward
     `secrets.CF_API_TOKEN`.
   - If the zone lookup returns empty: record the measured skip and continue.
   - If the token is missing under required mode: fail the job.
5. **Probe the public URL** and record cache-status / body evidence that the
   new release is visible (or that purge was measured N/A).
6. **Write the deployment report** including the purge step outcome.

## Bound constraints

- `tal-constraint-post-deploy-edge-purge` — green origin alone is insufficient.
- Sanitization / credential bounds of the executing space: never embed tokens
  in the trace; only secret names and pass/fail outcomes.

## Success criteria

- Origin health green **and** purge step present in the report (success or
  measured N/A for non-CF).
- No silent skip when purge was required and the token was absent.

## Provenance

Public sanitized projection of
`tal-blueprint-static-site-deploy-edge-purge`, authored from
`talomnia-trace#59` / customer review R12.
