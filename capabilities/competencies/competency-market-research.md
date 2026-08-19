---
projection-of: tal-competency-market-research
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-market-research
relations:
  - rel: uses
    target: datarim-skill-research-workflow
  - rel: uses
    target: datarim-skill-factcheck
  - rel: uses
    target: tal-policy-honesty-presentation
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Market Research

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-market-research` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references.

Ability to produce decision-grade market research — ICP, pains, competitors,
pricing, alternatives, first sellable service — with honest sourcing and
explicit limitations.

## Definition

Answer commercial questions — ideal customer profile, pains, competitor
landscape, price points, alternatives, and a first sellable service reachable
within a short horizon — from verifiable external sources, with a stated
methodology, source list, limitations and version history. Every output
carries an explicit pre-commercial self-use validation marking; hypotheses
stay labeled as hypotheses rather than presented as fact.

## Observable evidence of possession

- A structured external-research capability (checklist-driven research plus
  an insights document) and dedicated research/strategy agent roles are
  already exercised across ecosystem tasks.
- A dedicated fact-checking capability verifies claims before publication.

## Levels

- **L1 — landscape scan** (who exists, what they charge).
- **L2 — decision-grade study**: methodology, sources, limitations,
  conclusions.
- **L3 — pricing recommendation** defensible to an operator or investor
  audience. The market-research lane requires L2 with an L3 pricing
  recommendation attached.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-market-research` (source version 0.1.4, promoted-source
`content_digest: sha256:46158eb4a5418a4bc81a6df433e7062869681730d46d0d4ea5b622b8c29faf09`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: exercised in real work by TALO-0006 (decision-grade market study with an attached pricing recommendation). Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
