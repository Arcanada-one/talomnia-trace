---
projection-of: tal-competency-data-modeling-projection
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
relations:
  - rel: uses
    target: tal-competency-technical-research-adr
  - rel: derived-from
    target: tal-doc-scrutator-indexing
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Data Modeling and Knowledge Projection

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
