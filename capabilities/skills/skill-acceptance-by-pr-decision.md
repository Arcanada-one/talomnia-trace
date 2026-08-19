---
projection-of: tal-skill-acceptance-by-pr-decision
type: skill
source-version: 0.1.5
origin: created-in-talomnia
projected: 2026-08-19
---

# Skill — Acceptance by Pull Request Decision

**Inputs.** `delivery_pull_request` (url), `originating_issue_criteria` (markdown)

**Outputs.** `acceptance_decision` (json)

## Preconditions

- The originating issue states checkable acceptance criteria recorded before execution started.
- The delivery pull request references the originating issue.

## Procedure

1. (reviewer) Read the originating issue's acceptance criteria as the complete decision basis; post-hoc criteria are not admissible.
2. (verifier) Check each criterion against the delivery with a check that can fail: run the named command, open the named page, compare the named figures; capture the observed result per criterion.
3. (vcs) If every criterion holds: merge the pull request; the merge commit is the acceptance record.
4. (vcs) If any criterion fails: request changes on the pull request naming the failed criterion and the observed result; never edit the delivery to make it pass.
5. (ledger) Record the decision in the workflow ledger under the customer side, referencing the issue and pull request.

## Effects

- Every delivery ends in a recorded pull-request decision: accepted by merge, or returned with the failed criterion named.

## Evidence obligations

- Per-criterion check results captured in the pull-request review; the decision reproducible from issue criteria plus delivery state.

## Bounds

- `self_fix`: editing the delivery to make a criterion pass: rejected

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-skill-acceptance-by-pr-decision` (graph revision `tal-skill-acceptance-by-pr-decision@r2`,
`content_digest: sha256:f6703ae9616ea13fcd3f7c8a47b7235211470b07129fd38448f0c4e87889ec2b`),
published at `public-sanitized` lifecycle status. Authored during the Talomnia launch epic and promoted with an evidenced lifecycle trail under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
