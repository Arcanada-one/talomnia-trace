---
projection-of: tal-constraint-post-deploy-edge-purge
type: constraint
source-version: 0.1.0
origin: created-in-talomnia
projected: 2026-11-18
---

# Constraint — post-deploy edge cache purge

## Source

Customer review R12 on the public execution-trace repository
(`talomnia-trace#59`): a successful static-site deploy left users on stale
Cloudflare edge content (`s-maxage=3600` on HTML; asset responses measured
`HIT`) because the deploy path recorded **zero** cache-purge steps.

## The rule

**A green origin deploy is not a green user-visible release until the edge
cache for that domain is purged (or proven not applicable).**

Failing closed on a missing purge credential is preferred to reporting success
while the edge continues to serve the previous release. Shared reusable deploy
workflows that offer a Cloudflare purge step must default to requiring the
token to be forwarded (`cloudflare_purge=required`); optional skip modes are
an explicit caller choice, never the silent default for production static sites.

## Clauses

1. **Every static-site / CDN-fronted deploy blueprint includes an edge-purge
   step** after origin health is green and before the release is declared
   complete.
2. **Missing purge credentials fail the job** when purge is required for that
   contour. Do not hide an absent `CF_API_TOKEN` (or equivalent) behind a green
   deploy note.
3. **A non-CF domain may skip with an explicit measured note** (empty zone
   list). That skip is evidence, not an excuse for omitting the step from the
   blueprint.
4. **Rotating a dead API token is an operator act.** Code and blueprints can
   require forwarding and fail closed; they cannot invent a live credential.
5. **Asset fingerprinting reduces blast radius but does not replace purge** for
   HTML and other long-TTL edge objects that keep unversioned URLs.

## Enforceability (§ 14.8)

- Public reusable workflow: `Arcanada-one/shared-workflows` deploy-static-site
  Cloudflare purge step with `cloudflare_purge` defaulting to `required`
  (closes the fail-soft hide path described with this review).
- Private deploy-broker contour: must expose a purge (or measured skip) step
  in the broker procedure and record it in the deployment report — that
  implementation lives outside this sanitized trace and is tracked separately.

## Provenance

Authored from the customer-review measurement in `talomnia-trace#59`. This
file is the public sanitized projection of
`tal-constraint-post-deploy-edge-purge`.
