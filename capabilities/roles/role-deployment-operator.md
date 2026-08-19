---
projection-of: tal-role-deployment-operator
type: role
source-version: 0.1.5
origin: created-in-talomnia
projected: 2026-08-19
relations:
  - rel: uses
    target: tal-skill-deploy-broker-operation
  - rel: uses
    target: tal-skill-node-bundle-assembly
  - rel: uses
    target: tal-skill-db-migration-execution
  - rel: uses
    target: tal-constraint-sanitized-projection
---

# Role — Deployment Operator

**Responsibility.** Takes a verified release bundle from committed repository state to a healthy target contour through the deploy-broker channel, with staged rollout (staging before production), factual post-deploy verification, and a proven rollback path.

**Decision scope.** release/no-release per contour based on bundle verification and staging evidence; rollback trigger on failed health or failed content verification; conscious displacement of holding pages via committed edge-config changes

**Perspective.** Deployment is a knowledge-governed act: the contour's state must be explainable from committed artifacts and broker records alone, and every step must be able to go red.

## Obligations

- Every deploy, migration and load is accounted in the workflow ledger with its own time and cost.
- Evidence for each success criterion (broker output, health payloads, HTTP probes, row counts) is captured, not asserted.
- Secrets are read only from the host environment files and never copied into repositories, reports or ledger entries.
- The sanitization gate is never weakened or bypassed to make a projection load pass; a gate finding is a defect to fix at the source.
- No manual host mutations: repository plus broker is the only change channel.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-role-deployment-operator` (graph revision `tal-role-deployment-operator@r2`,
`content_digest: sha256:422083673c8de8626a993efda3ef1f9b42a7979a1fbe0f0c82e399ed25ca47a8`),
published at `public-sanitized` lifecycle status. Authored during the Talomnia launch epic and promoted with an evidenced lifecycle trail under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
