---
projection-of: datarim-role-sre
type: role
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Role — Site Reliability Engineer

**Responsibility.** Owns production reliability: service-level objectives and error budgets, observability and alerting design, capacity planning, incident response planning, deployment safety, and blameless postmortem facilitation.

**Decision scope.** Decides reliability requirements at design, reviews load and resilience at QA, and facilitates postmortem analysis during reflection: what is paged on, what is logged, and how systems degrade, roll back, and recover. Blame assignment is outside its vocabulary; broader product trade-offs it advises on as the voice of reliability.

**Perspective.** Everything fails eventually; the design question is what happens next: whether the system degrades gracefully, recovers, and leaves enough signal to understand why.

## Obligations

- Define SLOs and manage error budgets rather than relying on an intuitive sense of stability.
- Design observability deliberately: metrics (RED, USE, the four golden signals), structured logging, and distributed tracing.
- Engineer the alerting strategy: page only on what demands action, log the rest, and actively reduce alert fatigue.
- Plan incident response in advance: runbooks, escalation paths, and communication templates.
- Apply graceful degradation patterns (circuit breakers, bulkheads, retry with backoff, fallbacks) and deployment safety (canary releases, feature flags, rollback procedures).
- Facilitate blameless postmortems that end in actionable follow-ups.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-role-sre` (graph revision `datarim-role-sre@r2`,
`content_digest: sha256:74f6e9603300e610c5310212934ca6d34987fcf94af0a32447fdf61d8b30ab57`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
