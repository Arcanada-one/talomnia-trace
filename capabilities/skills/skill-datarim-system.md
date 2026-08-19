---
projection-of: datarim-skill-datarim-system
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Datarim Core System Rules

**Inputs.** `workspace_root` (path), `operational_files` (markdown)

**Outputs.** `compliant_state` (markdown)

## Preconditions

- The workflow-state directory already exists; it is never created outside initialization
- Task identifiers follow the prefix-and-number format across the whole lifecycle
- The core entry is loaded before any specialized fragment

## Procedure

1. (analysis) Load the core rules entry first, then only the fragment matching the current sub-problem: paths and storage, task identity, backlog and routing, model assignment, or command and archive rules.
2. (search) Resolve the workflow-state directory before any read or write by checking the working directory and walking up parents; stop and request initialization if none exists.
3. (review) Check for applicable skills before acting, and resolve instruction conflicts by fixed priority: operator instructions first, framework skills second, default behavior last.
4. (editor) Keep operational files as machine-parseable one-line ledgers, with full task content living only in the per-task description file under its closed frontmatter schema.
5. (review) Close each task with the disposition matching its real outcome (completed, cancelled, absorbed, or superseded) and record it in the committed archive.

## Effects

- Workflow state stays bounded, greppable, and machine-parseable
- Each active task has a single source of truth in its description file
- Closed tasks carry a disposition that matches what actually happened

## Evidence obligations

- One-line index entries carrying a pointer to the task's description file
- A committed archive document recording each closed task's disposition
- Validation warnings for any local override of framework components, with critical skills refusing to be shadowed at all

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-datarim-system` (graph revision `datarim-skill-datarim-system@r2`,
`content_digest: sha256:29e76f6b3f4f998a81375d694fcea3cd4593805d58ccb8408445e1603ac2acdf`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
