---
projection-of: datarim-skill-immutability
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Pipeline Artifact Immutability Contract

**Inputs.** `pipeline_artifacts` (markdown), `blocker_evidence` (report)

**Outputs.** `return_to_source_record` (markdown), `routing_decision` (report)

## Preconditions

- A pipeline stage has produced a baselined artifact that downstream stages consume
- Authority to change an immutable artifact rests with the operator, never the stage executor alone
- The claimed blocker is a discovered constraint, not implementation difficulty

## Procedure

1. (review) Treat each stage's produced artifact — requirements, plan steps, design decisions, tests, checklists, visual baselines — as frozen against weakening by any downstream stage.
2. (analysis) When a deliverable fails its criterion, decide first whether the work is wrong (fix the work) or the artifact specified the wrong contract (open a formal revision); implementation difficulty is never a valid trigger.
3. (review) Reject tautological criteria that cannot fail, along with relaxed checks, narrowed checklist items, re-scoped QA criteria, and silently replaced visual baselines.
4. (editor) On a genuine blocker, record a return-to-source entry in the task record — the original artifact text verbatim, the concrete reason, and the proposed new text — before the artifact is changed.
5. (report) Escalate the proposed revision to the operator and route work to the stage that owns the artifact per the routing table, instead of continuing the current stage.

## Effects

- Artifacts change only by formal supersession or an operator-approved revision
- Failing work gets fixed rather than its tests or criteria weakened
- Work is routed back to the stage that owns the contested artifact

## Evidence obligations

- A return-to-source record with verbatim original text, reason, and proposed text, written before the change
- Supersede markers linking each replacement artifact to the one it replaces
- Append-only QA and compliance reports preserved for the audit trail

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-immutability` (graph revision `datarim-skill-immutability@r2`,
`content_digest: sha256:b92d78be266cac2e376cf47aecdcec1c4eade3e5586d8254eb07c33d90b81e42`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
