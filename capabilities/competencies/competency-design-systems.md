---
projection-of: tal-competency-design-systems
type: competency
source-version: 0.1.4
origin: created-in-talomnia
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-design-systems
relations:
  - rel: uses
    target: tal-skill-design-research
  - rel: uses
    target: tal-blueprint-design-system-atlas
  - rel: uses
    target: datarim-skill-frontend-ui
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Design Systems

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-design-systems` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references. As of TALO-0028 (issue #31) the executable design ability is carried by the
> evolved graph revisions `tal-role-design-lead@r2`, `tal-skill-design-research@r2`
> and `tal-blueprint-design-system-atlas@r2`, each with external-source provenance.

Ability to research, define and ship a design system — concept, style guide,
components, page templates, responsive and accessibility rules — as a
reusable knowledge artifact, not only as implementation files.

## Definition

Turn design requirements into a versioned design system: a design concept, a
style guide, a component set, page templates, mobile adaptation and
accessibility criteria — authored as knowledge-repository entities that
project into the public capability catalog, not only as files in a site's own
repository.

## Observable evidence of possession

- Ecosystem-wide front-end conventions (CSS specificity discipline, theming,
  responsive layout, i18n parity) are already exercised on existing
  production sites.
- Visual-asset generation via structured image prompting is an existing
  capability.
- Gap acknowledged: no prior system-level design artifact existed in the
  ecosystem before this competency was exercised for the first time.

## Levels

- **L1 — style guide** (tokens, typography, color, spacing).
- **L2 — component system** with usage rules and accessibility annotations.
- **L3 — full design system** as catalog entities with page templates and
  verifiable acceptance criteria. The design lane requires L3.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-design-systems` (source version 0.1.4, promoted-source
`content_digest: sha256:31e34caba1087841499310362e6786d9b1cdc204e110352f1c59f4b7d6b70121`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: authored and bootstrap-validated in TALO-0008, re-exercised by the TALO-0010 site delivery. Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
