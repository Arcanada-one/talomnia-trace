---
projection-of: tal-competency-web-fullstack-delivery
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-web-fullstack-delivery
relations:
  - rel: uses
    target: datarim-skill-frontend-ui
  - rel: uses
    target: datarim-skill-performance
  - rel: uses
    target: datarim-skill-playwright-qa
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Web Full-Stack Delivery

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-web-fullstack-delivery` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references.

Ability to deliver a production bilingual database-driven website end to
end — server-side-rendered frontend, backend, forms, theming, accessibility,
SEO — reusing established ecosystem standards.

## Definition

Deliver a public production website where repeated content is rendered from
a database rather than hard-coded, with full RU/EN parity, dark/light themes
with no flash of the wrong theme on load, mobile-first layout, WCAG 2.1 AA
accessibility, full SEO surface (meta tags, Open Graph, sitemap, robots,
hreflang), and CDN-cached public pages while forms stay uncached.

## Observable evidence of possession

- Several existing production websites in the ecosystem are already built
  and operated by the same agent stack, using the same execution technology
  this competency exercises.
- Ecosystem skills already exercised in those deliveries cover front-end
  quality, performance, browser-based QA and pre-deploy environment
  verification.

## Levels

- **L1 — static page delivery** with themes and i18n.
- **L2 — database-driven sections** with mutation-verifiable rendering.
- **L3 — full launch**: server-rendered site, forms, integrations, caching,
  and the site acceptance-criteria gate green. A production launch requires
  L3.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-web-fullstack-delivery` (source version 0.1.4, promoted-source
`content_digest: sha256:a43528940f4601c91e52f71d2d7861dc93db2249a86c24c8dca2d341a93d5958`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: exercised in real work by TALO-0010 on the stack TALO-0009 and TALO-0012 stood up. Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
