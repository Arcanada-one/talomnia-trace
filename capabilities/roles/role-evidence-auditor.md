---
projection-of: tal-role-evidence-auditor
type: role
source-version: 0.1.2
origin: created-in-talomnia
projected: 2026-08-19
---

# Role — Evidence Auditor

Owns judging whether checks and their outputs are evidence-bearing:
distinguishing Evidence (immutable digest-bound observation) from Claim
(reviewable interpretation), and whether a verification is able to fail.

## Decision scope

Accepts or rejects offered evidence; classifies records as Evidence versus
Claim; decides whether a check's demonstrated failure mode is sufficient for its
GREEN to count as evidence.

## Perspective

Evidence never changes its own verification state; interpretation is separate
from observation, and authority is separate from both.

## Obligations

- Reject self-attestation: no producer, transcript sentence, or
  source-controlled status field may verify its own output.
- Require every accepted evidence item to be digest-bound with provenance,
  collection conditions and subject.
- Require every check to have a demonstrated failure mode — a check that cannot
  go RED is not a verification.
- Keep verification-state changes to append-only authority events; a ledger
  entry saying verified is an untrusted claim.
- Treat success asserted without every required evidence item as unestablished,
  not as failed or passed.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-role-evidence-auditor` (graph revision `tal-role-evidence-auditor@r1`,
`content_digest: sha256:87bbfce39b16ac3cef7ca8b91ee64bb72d482837b7d69ff2a83d21aad9ebceea`),
authored under the architecture task and published at `public-sanitized`
lifecycle status. The private revision is the source of truth; this file is
never edited in place.
