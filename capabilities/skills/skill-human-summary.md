---
projection-of: datarim-skill-human-summary
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Plain-Language Operator Recap

**Inputs.** `stage_report` (report), `operator_brief` (markdown), `task_record` (markdown)

**Outputs.** `operator_summary` (markdown)

## Preconditions

- A verification or archive stage has produced its technical output for the summary to sit above
- The banned-word and allowed-word lists are present; if absent, the stage notes the gap and skips the summary
- The operator's language is detected from their most recent message

## Procedure

1. (analysis) Source the four answers — what was asked and done, what worked, what is still open, what happens next — from the stage report, the operator's original brief, and the task record, in the operator's language.
2. (editor) Emit the fixed-shape summary: a task-identifier preamble followed by exactly four sub-sections in fixed order, 150 to 400 words total, with a one-line placeholder for any empty sub-section.
3. (review) Enforce plain language by checking the allowlist before the banlist, permitting at most two fenced verbatim-quote blocks as the escape hatch.
4. (review) Grade violations on the info, warn, block severity ladder; at the block threshold reject the summary and offer a corrected re-run.
5. (editor) Append a plain-language disclosure for any success criterion that was verified once by hand and carries no automated regression guard.

## Effects

- The chat gains a standalone-readable recap between the technical block and the next-step menu
- The same section may be appended to the QA or compliance report when that file exists
- Archive documents are never mutated by the recap

## Evidence obligations

- A mandatory task-identifier preamble making the recap attributable when read out of context
- All four sub-headings present in fixed order, with explicit placeholders where nothing applies
- Vocabulary violations recorded on the graded severity ladder
- A disclosure sentence for every criterion closed without a repeatable automated check

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-human-summary` (graph revision `datarim-skill-human-summary@r2`,
`content_digest: sha256:66728f5774873ea76b80356fedfe4e0425b8f9797cf3a221f0c56159e599f702`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
