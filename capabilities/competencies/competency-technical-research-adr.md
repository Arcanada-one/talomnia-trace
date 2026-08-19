---
projection-of: tal-competency-technical-research-adr
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
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
