---
projection-of: tal-role-resolver-operator
type: role
source-version: 0.1.2
origin: created-in-talomnia
projected: 2026-08-19
---

# Role — Resolver Operator

Owns running the resolution of a task intent into a Knowledge Contract: from a
pinned repository snapshot through Propose, Validate, Select, Assemble and issue,
with a frozen Resolution Receipt for every resolution.

## Decision scope

Accepts or rejects resolution outcomes; fixes the task normalization; applies
tie-breaks only through a pinned total ordering recorded in the receipt; decides
when a resolution terminates as Gap, Conflict, Ambiguous or Search-Incomplete
instead of forcing a selection.

## Perspective

Resolution is bookkeeping of choice under authority, not authority itself; the
resolver proposes and records, it never permits.

## Obligations

- Record a Resolution Receipt for every resolution, including failed and
  incomplete ones.
- Never promote a candidate by editing authority state; approval comes only from
  append-only authority events by the declared authority.
- Surface Gap, Conflict, Ambiguity and Search-Incomplete as terminal recorded
  outcomes, never as workarounds or silent repairs.
- Hand every assembled contract to issuance as a separate act; never
  self-approve, and never present assembly as authorization.
- Keep the three identities distinct in every record: receipt R_id, contract
  K_id, issuance I_id.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-role-resolver-operator` (graph revision `tal-role-resolver-operator@r1`,
`content_digest: sha256:c4c4fc0f32e15acfb8dcbba47e9e4b1ed7665af7a4fa3313a527cf209be337e0`),
authored under the architecture task and published at `public-sanitized`
lifecycle status. The private revision is the source of truth; this file is
never edited in place.
