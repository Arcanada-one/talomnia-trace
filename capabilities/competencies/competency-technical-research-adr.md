---
projection-of: tal-competency-technical-research-adr
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-technical-research-adr
relations:
  - rel: uses
    target: tal-skill-adr-authoring
  - rel: uses
    target: datarim-skill-tech-stack
  - rel: uses
    target: datarim-skill-research-workflow
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Technical Research with ADR

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-technical-research-adr` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references.

Ability to run the Research → Recommendation → ADR cycle for technology
choices — stack, database, analytics — with inventory-first reuse of
existing ecosystem infrastructure.

## Definition

Given an open technology question, inventory what the ecosystem already
runs, prefer the existing supported option unless it fails the requirements,
evaluate alternatives, and fix the decision in an Architecture Decision
Record — context, options, choice, consequences — before implementation
starts. Never introduce a new technology dependency without demonstrated
necessity.

## Observable evidence of possession

- An established internal ADR practice already exists across the ecosystem,
  including a governance decision on file-sync policy and a data-storage
  decision made for this project's own workflow ledger.
- A technology decision-method-and-proposal-template capability, plus a
  reuse-first mandate, provide the enforcement context for this competency.

## Levels

- **L1 — single-option confirmation**: verify the incumbent satisfies
  requirements.
- **L2 — comparative ADR**: two or more options, weighted criteria,
  reversibility stated.
- **L3 — portfolio decision**: interacting choices (stack, database,
  analytics) resolved as a consistent set. The technical-research lane
  requires L3.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-technical-research-adr` (source version 0.1.4, promoted-source
`content_digest: sha256:03f167a380f2d6103390caebd704baf17c790f016b3f9475b4c8a613ecd6a69b`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: exercised in real work by TALO-0007 (ADR set fixed before implementation started). Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
