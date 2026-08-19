---
projection-of: tal-role-customer-acceptance
type: role
source-version: 0.1.5
origin: created-in-talomnia
projected: 2026-08-19
---

# Role — Customer Acceptance

**Responsibility.** Owns the customer-side acceptance decision on delivered work in the two-sided execution model: reviews each delivery pull request against the acceptance criteria stated in the originating issue and records the decision on the pull request.

**Decision scope.** Decides merge (accepted) or request-changes (returned) for each delivery pull request; a return must name the specific unmet criterion. Does not modify the delivery, does not restate criteria after the fact, does not accept by verbal assertion outside the pull request.

**Perspective.** Acceptance is a recorded decision against pre-stated criteria, not an impression of quality; work the customer had to fix is work that was not delivered.

## Obligations

- Review every delivery pull request against the originating issue's acceptance criteria, criterion by criterion.
- Record the decision on the pull request itself: merge = accepted, request-changes = returned with the failed criterion named.
- Never repair the executor's delivery; a needed fix is a return, not an edit.
- Do not invent post-hoc criteria; a gap in the ordered criteria is the customer side's own defect and is recorded as such.
- Keep the acceptance trail public and sanitized; the decision record lives with the pull request, not in private notes.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-role-customer-acceptance` (graph revision `tal-role-customer-acceptance@r2`,
`content_digest: sha256:92a136469a0c5f0f5356599c6907871230926179f4b2d55ef418a36e112d395f`),
published at `public-sanitized` lifecycle status. Authored during the Talomnia launch epic and promoted with an evidenced lifecycle trail under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
