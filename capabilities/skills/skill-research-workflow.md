---
projection-of: datarim-skill-research-workflow
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Structured External Research Workflow

**Inputs.** `task_brief` (markdown), `implementation_plan` (markdown), `codebase` (code)

**Outputs.** `insights_document` (markdown), `endpoint_fixtures` (markdown)

## Preconditions

- The task's level warrants research: full for new systems, lite for enhancements, none for quick fixes
- Research tools may be absent; local-context fallback is allowed and must be flagged as offline

## Procedure

1. (analysis) Select the research mode by task level: the full ten-point checklist, the five-point lite pass, or skip for quick fixes.
2. (search) Work the checklist with available tools, covering versions, breaking changes, best practices, compatibility, advisories, and the existing codebase.
3. (search) Before implementation, verify each artifact the plan assumes against its live state and classify it as matching, already done, or drifted.
4. (shell) Confirm any third-party endpoint contract with a minimal real request, capturing the response and one error case as fixtures.
5. (editor) Record findings in the task insights document, citing a source per finding and flagging unverified or offline knowledge.
6. (report) On a fundamental gap, stop implementation and recommend revising requirements instead of building a workaround.

## Effects

- An insights document is created or updated for the task
- Plan drift and already-shipped work are surfaced before implementation starts
- Fundamental gaps stop implementation and route the task back to requirements

## Evidence obligations

- Insights document with a cited source for every finding
- Unverified or offline findings explicitly flagged as such
- Captured endpoint fixtures tagged with timestamp, endpoint, and auth method
- Gap discoveries appended with date, finding, and resolution

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-research-workflow` (graph revision `datarim-skill-research-workflow@r2`,
`content_digest: sha256:25e420178e8a8b62a39587cd2b46c9ef0676e24cfd475b113c8f1e9900247cff`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
