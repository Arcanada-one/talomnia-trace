---
projection-of: tal-competency-data-modeling-projection
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-data-modeling-projection
relations:
  - rel: uses
    target: tal-competency-technical-research-adr
  - rel: derived-from
    target: tal-doc-scrutator-indexing
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Data Modeling and Knowledge Projection

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-data-modeling-projection` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references.

Ability to design a project's data layer — a graph-capable catalog schema,
workflow/research/ledger entities, request-data minimization — and a one-way,
reproducible Git → indexing → database → site projection.

## Definition

Model a minimum entity set covering workflow cases, workflow steps, research
records, catalog entities, catalog relations, investor documents, incoming
requests and workflow-ledger entries, all with RU/EN fields for site-facing
text; hold catalog relations as a graph, not a tree; minimize stored request
data by treating an upstream support system as the source of truth; and build
a one-way reproducible projection — from the authoritative Git source, through
an indexing layer, into the database and the public site — where rebuilding
the projection from Git yields the same result. Lifecycle filter: only
artifacts that reached the public-sanitized status reach the public
projection.

## Observable evidence of possession

- The ecosystem already operates production relational databases, each
  isolated per project, and an indexing pipeline with single-writer
  discipline, secret-scan-before-ingest, and content-hash manifest
  invariants.
- This project's own indexing-pipeline documentation already maps the
  concrete indexing path this competency exercises.

## Levels

- **L1 — schema**: DDL and migrations for the minimum entity set.
- **L2 — projection**: a reproducible Git-to-database pipeline with lifecycle
  filtering.
- **L3 — mutation-verified**: deleting a source record demonstrably changes
  what a page shows. The data-layer lane requires L3.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-data-modeling-projection` (source version 0.1.4, promoted-source
`content_digest: sha256:fb059564ace40d372c07a7cccaeb1be6c9291b72007d1e1037ae5fa66885451c`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: exercised in real work by TALO-0009, outcome confirmed by the TALO-0012 consumer of its migrations checklist. Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
