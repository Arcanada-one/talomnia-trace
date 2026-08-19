---
projection-of: datarim-skill-infra-automation
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Server Fleet Operations Playbook

**Inputs.** `server_inventory` (config), `operation_commands` (code)

**Outputs.** `sweep_log` (report), `health_report` (report)

## Preconditions

- Host keys are verified and recorded before any batch automation runs
- Inventory records carry current, verified addresses rather than assumed ones
- Secrets are passed via protected files, never inline on a logged command line

## Procedure

1. (shell) Bootstrap host-key verification into the known-hosts file once, then check mesh reachability for every node before a batch run, deferring unreachable nodes with a log entry rather than skipping them silently.
2. (shell) Execute batch commands with non-interactive fail-fast SSH options, verifying on one server before the fleet and never batching destructive commands.
3. (shell) Run health checks across hosts and services: HTTP health endpoints, container status, disk usage, and the mesh connectivity matrix.
4. (analysis) Debug outages network-first: DNS resolution, then reachability, then the origin-side response, and only then the application layer.
5. (search) Before migration or decommission, enumerate every service and every non-empty dataset from the engines themselves, treating each as a migration candidate unless the operator records an explicit exclusion.
6. (editor) Track any on-server script or config referenced by a verification gate in the repository, and cite the tracked path in the acceptance criterion before it ships.

## Effects

- Fleet-wide commands run with fail-fast semantics and bounded blast radius
- Migration and decommission plans start from a complete engine-level inventory
- Production-path artifacts consumed by verification gates are under version control

## Evidence obligations

- Reachability results recorded in the sweep log before a batch proceeds
- Operation output piped to files as the audit trail when changes are made
- Service labels in runbooks confirmed by a live probe at authoring time
- Per-store freshness confirmation for every stateful storage before a cutover closes

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-infra-automation` (graph revision `datarim-skill-infra-automation@r2`,
`content_digest: sha256:bfa5ef9115e4101ed2dc9f38ded4366d59543f7e3855e578ed55326d7649d75f`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
