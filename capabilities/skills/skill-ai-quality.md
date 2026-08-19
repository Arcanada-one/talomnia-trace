---
projection-of: datarim-skill-ai-quality
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — AI Development Quality Discipline

**Inputs.** `task_description` (markdown), `codebase` (code)

**Outputs.** `implementation` (code), `test_suite` (code)

## Preconditions

- Requirements are gathered and the definition of done is explicit before coding starts
- The task is decomposed into units small enough to hold 7-9 objects in working memory
- The architecture skeleton is reviewed and approved before implementation begins

## Procedure

1. (analysis) Decompose the task into small focused units: methods of at most 50 lines, one responsibility each, and independent variables for independent signals.
2. (review) Define the explicit definition of done, corner cases, and out-of-scope boundaries before any code is written, and verify the task is solvable as scoped.
3. (editor) Write tests before code with strict edge-only mocking, then create an architecture skeleton of stubs and have it approved before implementation.
4. (editor) Implement one method at a time within the approved skeleton, wiring all planned features in the first pass rather than deferring cheap work.
5. (shell) Run the auto-detected project linter after each red-green-refactor cycle and fix findings immediately instead of accumulating lint debt.
6. (review) Close every clause of a multi-clause success criterion with its own named test, and confirm any cited file-and-line claim by a content search before editing against it.

## Effects

- Code ships as small tested units within the stated size limits
- Lint findings are fixed at code time, leaving a clean baseline for later review stages
- Architecture is validated before implementation effort is spent

## Evidence obligations

- Tests authored before the code they verify, with mocking confined to edges
- A named test per clause of every multi-clause success criterion
- A linter run after each TDD cycle with findings resolved
- A content search confirming each cited file-and-line claim before an edit relies on it

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-ai-quality` (graph revision `datarim-skill-ai-quality@r2`,
`content_digest: sha256:2095ed9880d6d27ada58c0bd1075bfd77bbe29faa6488e184b23c143256aafd7`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
