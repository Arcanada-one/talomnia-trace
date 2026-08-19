---
projection-of: datarim-skill-factcheck
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Pre-Publication Fact Verification

**Inputs.** `article` (markdown)

**Outputs.** `corrected_article` (markdown), `verification_report` (report)

## Preconditions

- A path to the source text is provided or requested from the author
- A backup exists before any modification of the original
- The author is available to approve changes before they are applied

## Procedure

1. (editor) Back up the original file both beside it and in a working directory, and create a working draft before touching anything.
2. (analysis) Extract every verifiable claim into a table recording its text, location, type, and importance level from critical down to low.
3. (search) Verify claims in importance order against authoritative sources, cross-referencing at least three independent sources for critical claims and two for high, and assign each a verdict with a confidence score.
4. (analysis) Check the document for internal consistency: cross-section contradictions, ripple effects of corrected claims, and temporal logic.
5. (editor) Apply the minimal correction for each non-accurate claim, preserving the author's sentence structure and tone, and annotate each fix with an inline source comment.
6. (report) Present the change summary for the author's review, and only after approval apply the corrected version to the original file and list any claims that remain unverifiable.

## Effects

- Factual errors are corrected with a minimal diff while the author's voice and original language are preserved
- Internal inconsistencies exposed by corrections are resolved
- The original file is replaced only after author approval, with backups retained

## Evidence obligations

- A claims table grading every verifiable statement by type and importance
- A verification report citing sources per claim, scaled to importance (three or more for critical, two or more for high)
- Inline comments recording each correction and its source; fabricated citations are forbidden
- Backup file locations listed in the final summary

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-factcheck` (graph revision `datarim-skill-factcheck@r2`,
`content_digest: sha256:7d6c5ce86441e26e3e9a9e826f36dbb71bcf147c7683e5cd94c0a7c115c40be8`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
