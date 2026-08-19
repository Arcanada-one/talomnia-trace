---
projection-of: tal-competency-integration-engineering
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-integration-engineering
relations:
  - rel: uses
    target: datarim-skill-testing
  - rel: derived-from
    target: arcanada-doc-internal-http-patterns
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — Integration Engineering

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-integration-engineering` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references.

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

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-integration-engineering` (source version 0.1.4, promoted-source
`content_digest: sha256:94062c1fa21bf9f37807525a7e1ff6962c0bfbf1445bfb0ada1a126660d361a4`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: exercised in real work by TALO-0011 (merged sender-side integration with contract-parity tests and evidence-decided idempotency). Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
