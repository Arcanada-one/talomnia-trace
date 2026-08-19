---
projection-of: tal-skill-db-migration-execution
type: skill
source-version: 0.1.5
origin: created-in-talomnia
projected: 2026-08-19
---

# Skill — Database Migration Execution

**Inputs.** `migration_chain` (path), `target_database` (string)

**Outputs.** `migration_report` (json)

## Preconditions

- Roles talomnia_owner/talomnia_app/talomnia_loader exist (bootstrap-roles.sql); the target database exists with owner talomnia_owner (bootstrap-databases.sql).
- The migration runner connects as the owner role via the MIGRATE URL from the host env file; credentials never leave the host or enter a repo/report.

## Procedure

1. (migration-runner) Apply the committed chain in order: prisma migrate deploy under the MIGRATE URL (equivalently psql -v ON_ERROR_STOP=1 -f prisma/migrations/*/migration.sql); never hand-edit schema on the server.
2. (migration-runner) Grants ride IN the chain and fail loudly if roles are missing; never repair grants ad hoc — a missing grant is a chain defect to fix in the repository.
3. (validator) Respect write domains: projection tables (workflow*, research, atlas_*, investor_doc, workflow_ledger_*) are loader-write/app-select; operational request is app-write/loader-none; a violation turns the one-way-grants suite red.
4. (validator) Verify schema-to-migrations parity after apply: prisma migrate diff against the applied database yields an empty diff (exit 0).
5. (evidence-recorder) Record applied migration names and the parity result in the migration report.

## Effects

- The target database schema equals the committed migration chain, with grants intact and write domains enforced.

## Evidence obligations

- migrate deploy output, parity diff exit status, and the applied-migrations listing.

## Bounds

- `forbidden`: secrets in migrations or seeds, personal-data columns in request (pinned allowlist), silent grant repair

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-skill-db-migration-execution` (graph revision `tal-skill-db-migration-execution@r2`,
`content_digest: sha256:60f3c60128b1c14d1afbfd3760aa17704bf70f61186e950d7afb0ff84455d872`),
published at `public-sanitized` lifecycle status. Authored during the Talomnia launch epic and promoted with an evidenced lifecycle trail under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
