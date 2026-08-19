---
projection-of: tal-competency-integration-engineering
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
relations:
  - rel: uses
    target: datarim-skill-testing
  - rel: derived-from
    target: arcanada-doc-internal-http-patterns
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Integration Engineering

Ability to integrate two services contract-first — native forms without an
iframe, webhook or polling status sync, retries, idempotency, an audit log,
and contract tests that block release on incompatibility.

## Definition

Connect a project's own forms to an upstream support system per a strict
requirement table: a native UI (no iframe), shared ecosystem libraries under
the hood, contract tests between the two sides with release blocked on
incompatibility, status sync via webhooks or polling, retries with
idempotency keys and an audit log, request linking by ID, API
contract-version detection, and form-option passthrough for pre-order and
consultation intents.

## Observable evidence of possession

- A codified internal HTTP-integration standard — sender/receiver fixtures,
  contract-first stubs, soft-fail behavior, cross-repo enum handling — is
  already exercised between ecosystem services.
- The upstream support system is a running production service with existing
  consumers.

## Levels

- **L1 — one-way submit** with idempotency.
- **L2 — synced lifecycle**: status sync, retries, audit log.
- **L3 — contract-guarded**: contract tests wired into CI and blocking, with
  idempotency and the audit log confirmed by a test rather than a
  declaration. The integration lane requires L3.
