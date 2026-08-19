---
projection-of: datarim-skill-security-baseline
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Shipped-Artifact Security Baseline

**Inputs.** `changed_artifacts` (code), `ci_results` (report), `suppression_registry` (config)

**Outputs.** `baseline_verdict` (report), `suppression_entries` (config)

## Preconditions

- The change touches shipped artifacts that consumers copy into their own runtimes
- Required CI gate jobs are configured for the repository
- Rules carry RFC 2119 force; relaxation needs architect approval

## Procedure

1. (analysis) Classify the changed shipped artifacts against the eleven security rule clusters, from shell and Python hygiene to supply chain and boundary gates.
2. (review) Apply the mandatory rules of each matching cluster, including strict shell mode, quoted expansions, no eval on input, no pipe-to-shell installs, and secret hygiene.
3. (shell) Run the required CI gate tools for the touched clusters and treat any red required job as a merge blocker.
4. (review) For changes where untrusted content reaches a model context, run a distinct adversarial review in a separate context, since green CI does not clear this gate.
5. (editor) Register every suppression with reason, scope, expiry, and reviewer, and convert each new finding into a rule update with a regression test or an accepted-risk record.

## Effects

- Merges are blocked until required security jobs and reviews pass
- Suppressions become auditable registry entries instead of silent inline markers
- New findings turn into rule updates with regression tests or recorded accepted risks

## Evidence obligations

- Green required CI jobs for every touched rule cluster
- Adversarial review artifact cited at QA for untrusted-content boundary changes
- Registry entry with reason, expiry, and reviewer for every active suppression
- Regression test or accepted-risk record for every new finding

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-security-baseline` (graph revision `datarim-skill-security-baseline@r2`,
`content_digest: sha256:90e7156f8ba42e8101a521f3584bbda6825f1cbf683ffa45ea41c9d7e1895a3c`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
