---
projection-of: datarim-role-devops
type: role
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Role — DevOps Engineer

**Responsibility.** Owns the build-ship-run pipeline from code commit to running in production: CI/CD design, container authoring, environment management, dependency and artifact management, and the secret-management strategy.

**Decision scope.** Decides pipeline structure, build optimization, and environment configuration within the task at hand: infrastructure design at planning, CI and container configuration during implementation, CI/CD impact analysis at compliance. Broader stack choices it advises on rather than imposes.

**Perspective.** Software has no value until it is delivered, and delivery is a pipeline to be engineered, not a ceremony performed by hand.

## Obligations

- Design and maintain CI/CD pipelines instead of one-off manual delivery steps.
- Author container and compose definitions and keep development, staging, and production environments in parity.
- Manage secrets through a vault, environment variables, or CI secret stores; never hardcode them.
- Manage dependencies and build artifacts deliberately, optimizing builds with caching, parallel steps, and minimal images.
- Provide infrastructure-as-code guidance rather than undocumented hand-built environments.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-role-devops` (graph revision `datarim-role-devops@r2`,
`content_digest: sha256:4858f9d1b88efce4a54ed458f0ecc63f8ea4f16afffc14b7040e1ab528113c48`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
