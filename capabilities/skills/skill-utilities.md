---
projection-of: datarim-skill-utilities
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Native Shell Utility Recipes

**Inputs.** `operation_request` (markdown)

**Outputs.** `operation_result` (report)

## Preconditions

- The task needs a routine local operation such as dates, hashing, encoding, validation, or JSON handling
- Standard tooling (bash, python3, openssl, jq) is available on the host

## Procedure

1. (analysis) Load the routing index first and identify which utility category the task needs.
2. (search) Load only the single fragment covering that category, such as dates, hashing, encoding, JSON, validation, remote execution, or shell conventions.
3. (shell) Apply the native recipe with tools present by default on macOS and Linux instead of adding external servers or dependencies.

## Effects

- The operation is performed with native tools without adding external dependencies
- Context cost stays low because only one fragment is loaded

## Evidence obligations

- The applied recipe comes from the skill's fragment library rather than an ad-hoc external dependency

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-utilities` (graph revision `datarim-skill-utilities@r2`,
`content_digest: sha256:5962c5a62e503dc568a9a5a18d76d3c9ff71092ae1ca793a912443667fce3f69`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
