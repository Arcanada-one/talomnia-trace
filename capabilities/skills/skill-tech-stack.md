---
projection-of: datarim-skill-tech-stack
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Technology Stack Selection Procedure

**Inputs.** `task_brief` (markdown), `incumbent_stack` (config)

**Outputs.** `stack_proposal` (markdown), `decision_note` (markdown)

## Preconditions

- A new project, service, or module is being created, or an explicit stack question was raised
- Trivial single-file tasks are exempt from proposal generation
- The ecosystem backend mandate takes precedence where it differs from this guidance

## Procedure

1. (analysis) Classify the task with the trigger table: new scaffolds, cross-domain components, migrations, and operator requests need a full proposal, while routine same-domain work uses the default recommendation.
2. (search) Assemble two or three candidate stacks from the default and alternative tables, honoring sticky choices already made for the project.
3. (analysis) Assess each candidate across the ten factors, including domain fit, security posture, cost, operational fit, and escape velocity, and write a trade-off summary.
4. (report) State a recommendation separately from candidate ordering and present the decision to the operator.
5. (editor) Record the operator's choice as a decision note in the plan, bound by the immutability contract.
6. (review) Verify dependency versions against the live package registry, never training data, and re-check for outdated majors after every install.

## Effects

- A stack decision is recorded in the plan and bound by the immutability contract
- Later components of the same project inherit the recorded choice
- Mid-implementation stack changes require a recorded concrete reason and a return to planning

## Evidence obligations

- Decision note recording the chosen stack, alternatives, rationale, and escape velocity
- Trade-off summary and per-candidate factor assessment in the proposal
- Version checks against the live package registry rather than model memory
- A recorded concrete reason for any mid-implementation stack change

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-tech-stack` (graph revision `datarim-skill-tech-stack@r2`,
`content_digest: sha256:b2c581cf5da5c344cae8cdf9d599ac7584e55af2c5ab1c8288530450b84f5e98`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
