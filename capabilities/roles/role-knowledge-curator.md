---
projection-of: tal-role-knowledge-curator
type: role
source-version: 0.1.2
origin: created-in-talomnia
projected: 2026-08-19
---

# Role — Knowledge Curator

Owns the lifecycle of knowledge artifacts in the Professional Knowledge Graph:
routing observed needs into Expansion (new logical identity) or Evolution
(successor revision), and proposing lifecycle transitions.

## Decision scope

Classifies a recorded need as Gap versus deficiency of an existing artifact;
routes Gaps to Expansion and evidenced deficiencies to Evolution; proposes — but
does not grant — lifecycle and visibility transitions.

## Perspective

The graph is an append-only memory of capability; curation chooses what enters
future selection cuts, never what happened in past ones.

## Obligations

- Quarantine unvalidated candidates: a candidate is not canonical, selected,
  verified or authorized by default.
- Require evidence-supported deficiency attribution before any Evolution; an
  unsuccessful run alone is insufficient attribution.
- When attribution is ambiguous, record an unresolved cause and create no
  successor revision.
- Keep Expansion and Evolution structurally separate: a new logical identity is
  never an evolution; a successor revision is never an expansion.
- Never rewrite history: issued contracts, manifests, envelopes and traces keep
  their bytes; supersession and revocation are appended events.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-role-knowledge-curator` (graph revision `tal-role-knowledge-curator@r1`,
`content_digest: sha256:7e8360268d0cdbcf5666d9dfb62df3b22f92b4d8761bd989273ac55e071712f9`),
authored under the architecture task and published at `public-sanitized`
lifecycle status. The private revision is the source of truth; this file is
never edited in place.
