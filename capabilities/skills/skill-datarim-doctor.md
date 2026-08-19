---
projection-of: datarim-skill-datarim-doctor
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Task Ledger Doctor

**Inputs.** `operational_files` (markdown), `conflict_policy` (config)

**Outputs.** `migrated_ledgers` (markdown), `findings_report` (report)

## Preconditions

- The workflow-state directory is resolvable from the working tree
- An exclusive lock is acquired; a concurrent invocation exits without mutating
- Input files are UTF-8; non-UTF-8 files are refused rather than migrated

## Procedure

1. (shell) Probe the operational task files against the strict one-liner schema in dry-run mode and list every non-compliant finding.
2. (shell) Before any mutation, write a full backup of the workflow-state directory and take an exclusive lock against concurrent runs.
3. (editor) Externalize legacy block-style task entries into per-task description files with the closed twelve-key frontmatter, skipping files that are already compliant.
4. (editor) Rewrite the task indexes as machine-parseable one-line ledgers, delete abolished files, and strip retired archive sections.
5. (editor) Migrate legacy archive entries into canonical per-task archive documents, resolving collisions by the configured conflict policy and preserving unparseable entries with a manual-migration marker.
6. (review) Verify the emitted entry count is not below the parsed count, restoring the backup on any loss, then re-scan the tree to assert zero findings and that a second run is a no-op.

## Effects

- Task indexes conform to the one-line pointer schema and stay bounded in size
- Legacy content is relocated into per-task description and archive documents
- Abolished files are deleted; a pre-mutation backup and in-tree sidecar copies are created

## Evidence obligations

- The backup archive path surfaced in the run summary for manual rollback
- The parsed-versus-emitted count invariant enforced on every fixing run
- Per-pass summary lines counting parsed, stripped, synthesised, and preserved entries
- A post-fix re-scan showing zero findings and idempotency of a repeat run

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-datarim-doctor` (graph revision `datarim-skill-datarim-doctor@r2`,
`content_digest: sha256:b0b3ccc9ccd65dffa112a4d81d405e4c0330b03b5b624c1ead142945b9d6d02e`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
