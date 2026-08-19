---
projection-of: datarim-skill-diataxis-docs
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Four-Category Documentation Taxonomy

**Inputs.** `documentation_root` (path), `doc_items` (markdown)

**Outputs.** `scaffolded_layout` (path), `drift_warnings` (report)

## Preconditions

- The repository is created under framework scaffolding or subject to the soft audit for existing repos
- The repository is not on the exemption list (research-only, archive-only, or operator-acknowledged)
- The taxonomy is applied without naming any specific site generator; the mandate is layout-only

## Procedure

1. (analysis) Classify each documentation item by its dominant reader intent into tutorials, how-to, reference, or explanation using the closed mapping table.
2. (editor) Scaffold the documentation root with the four category directories, each holding a mandatory stub file, using kebab-case file names and no numeric prefixes.
3. (review) Reject proposed fifth categories such as FAQ, examples, or troubleshooting by splitting their content across the four canonical categories with cross-links.
4. (search) Run the filesystem-presence drift check (all four directories plus a minimum count of documentation files) and emit warnings for non-compliant repositories without blocking builds.
5. (review) Check candidate repositories against the exemption list and reserved sibling directories before flagging them, and during reviews re-check each file against its category definition for drift.

## Effects

- The documentation root gains the four-category layout with mandatory stub files
- Every existing or proposed content type is mapped to exactly one category
- Layout drift is surfaced as warnings that the operator can acknowledge or turn into a migration task

## Evidence obligations

- Filesystem presence of all four category directories, each with its stub file
- A mapping decision from the closed table for every documentation type
- Recorded audit warnings for repositories that do not yet comply

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-diataxis-docs` (graph revision `datarim-skill-diataxis-docs@r2`,
`content_digest: sha256:bd38031b30e098a16ee5245d0bc0a0b5a888d74de1116ae0c56d5531ccdcaa0c`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
