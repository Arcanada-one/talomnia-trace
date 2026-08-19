---
projection-of: tal-competency-web-fullstack-delivery
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
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
