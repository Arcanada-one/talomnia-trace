---
projection-of: tal-competency-bilingual-content
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-bilingual-content
relations:
  - rel: uses
    target: datarim-skill-writing
  - rel: uses
    target: datarim-skill-humanize
  - rel: uses
    target: tal-policy-honesty-presentation
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Bilingual Content

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-bilingual-content` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references.

Ability to produce and maintain RU/EN content with full parity and a single
glossary-backed terminology across site copy, investor documents and research
pages.

## Definition

Author and translate content so RU and EN carry the same meaning and the same
terminology, keyed to a shared glossary (Knowledge Contract, Capability Atlas,
Workflow, Evidence, Budget Limit, …). Terminology drift between languages, or
between the site and investor documents, is treated as a defect: investor
materials must share the terminology of the canonical source document, and a
factual-consistency check catches any divergence before publication.

## Observable evidence of possession

- The ecosystem's content stack (structured writing, AI-pattern removal,
  fact-checking, editorial review) already produces the ecosystem's published
  RU/EN materials today.
- A versioned bilingual source document (RU + EN) already exists as the
  parity source for this competency's first exercise.

## Levels

- **L1 — translation parity** of static copy.
- **L2 — glossary-enforced parity** across site content and database fields.
- **L3 — cross-document consistency**: site, investor documents and research
  pages hold one terminology in both languages. Launch requires L3.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-bilingual-content` (source version 0.1.4, promoted-source
`content_digest: sha256:f69795c2d2464fb5fe8bd5b1bdcd8376f7628d0a6862d2f2b9df2b85a7933656`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: exercised in real work by TALO-0010 (RU/EN site content, glossary-enforced parity). Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
