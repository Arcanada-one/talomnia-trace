---
projection-of: tal-competency-devops-operations
type: competency
source-version: 0.1.4
origin: created-in-arcanada
projected: 2026-08-19
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
