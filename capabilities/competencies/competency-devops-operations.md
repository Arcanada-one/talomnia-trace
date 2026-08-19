---
projection-of: tal-competency-devops-operations
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
graph-status: deliberate-gap
graph-gap-record: gap-tal-competency-devops-operations
relations:
  - rel: uses
    target: datarim-skill-infra-automation
  - rel: uses
    target: datarim-skill-nginx-version-compat
  - rel: uses
    target: datarim-skill-prod-readiness-probe
  - rel: uses
    target: datarim-skill-rotation-runbook
  - rel: part-of
    target: tal-capability-map-stage-0b
---

# Competency — DevOps Operations

> **Graph status.** `competency` is not one of the seven managed ontology types;
> in the Professional Knowledge Graph this artifact is deliberately represented as
> the Gap record `gap-tal-competency-devops-operations` (ADR-PKG-002), not as a revision.
> This projection derives from the markdown source artifact; the executable ability
> lives in the graph through the role, skill and blueprint revisions it references.

Ability to provision and operate production web infrastructure — DNS,
CDN/TLS termination, reverse-proxy configuration, CI/CD, staging and
production environments, secret management, backups with verified restore,
and monitoring with verified alert delivery.

## Definition

Stand up and run a production hosting path: domain and DNS, CDN proxying
with TLS and cache TTL/invalidation, versioned reverse-proxy configuration,
CI/CD with operator-confirmed production deploys, separated staging and
production environments, secrets held only in the ecosystem's
secret-management layer, database and asset backups with a tested restore
(not just a copy on disk), and monitoring whose alerts demonstrably reach a
channel someone reads — a monitor with no delivery is not a monitor.

## Observable evidence of possession

- The same agent stack already operates production hosting for the ecosystem
  today: CDN proxying, reverse-proxy configuration, staging/production
  separation and self-hosted CI across existing sites and services.
- A named set of ecosystem skills and mandates already codifies this
  operating discipline: infrastructure automation, reverse-proxy
  version-compatibility checks, network-exposure baselines, pre-deploy
  readiness probes, post-deploy environment diffing, release verification,
  credential-rotation runbooks, a CI/CD convention, pre-deploy health
  checks, deployment-credential handling and operational-resilience
  practice.

## Levels

- **L1 — deploy path**: CI/CD to staging.
- **L2 — production contour**: TLS, caching, secrets and monitoring wired.
- **L3 — resilience proven**: restore tested, alert delivery tested, the
  integrations-and-infrastructure acceptance gate green. The infrastructure
  lane requires L3.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-competency-devops-operations` (source version 0.1.4, promoted-source
`content_digest: sha256:56c61aad86937b82bc4ba54f61412f29d2d394f3020588216efb00660e3997db`),
published at the `public-sanitized` lifecycle status reached through the
four-stage promotion trail fixed in the private repository's Git history and
its lifecycle evidence record. Validated-stage basis: exercised in real work by TALO-0012 and again by TALO-0025 on the production deploy path. Provenance trail completed under contract
K_id `sha256:8915c31fb9cb35dd30c2305d00562cb21ec6965f160b6680e81e2ef1265f653c`
(issue #9). The private artifact is the source of truth; this file is never
edited in place.
