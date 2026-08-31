# Workflow — Pitch Deck Production

> **Built by Talomnia for Talomnia — pre-commercial self-use validation.**
> This directory is the public evidence trail of how the 12-slide Talomnia
> Pitch Deck was produced, reviewed, reconciled and released. The production
> process renders at
> [/en/workflows/pitch-deck-production](https://talomnia.com/en/workflows/pitch-deck-production)
> (Russian: [/ru/workflows/…](https://talomnia.com/ru/workflows/pitch-deck-production)).
> The deck itself stays in the
> [Investor Room](https://talomnia.com/en/investors) — this record makes its
> production and its checks inspectable without duplicating the presentation.

| File | What it is |
|---|---|
| [`release-manifest.md`](release-manifest.md) | The four canonical downloads — RU and EN, PDF and PPTX — with their public URLs, byte sizes and SHA-256 digests, each verified by fetching the published file. |
| [`reconciliation-note.md`](reconciliation-note.md) | The one discrepancy review found between the White Paper and the Investor Room, and the decision not to guess it away. |

## Production trail

| # | Stage | Date | Role | Artifact |
|---|---|---|---|---|
| 1 | source-backed authoring | 2026-08-20 | writer | bilingual Pitch Deck source — unsupported claims left absent, with the reasons stated |
| 2 | factual review and release gate | 2026-08-20 | evidence-auditor | consistency review plus a mutation-proven gate requiring White Paper and Pitch Deck in RU and EN |
| 3 | twelve-slide reconciliation | 2026-08-25 | writer | RU and EN, PDF and PPTX, reconciled to one 12-slide semantic model |
| 4 | release and continuity verification | 2026-08-26 | reviewer | four canonical downloads, source registry and byte-level package manifest released through the Investor Room |

Stage 1 and stage 2 are the TALO-0126 lane. Stages 3 and 4 are later release
work carried out under the TALO-0001 epic.

## What was measured, and what was not

This is the part most production trails get wrong, so it is stated as numbers
rather than as a claim of diligence.

| Quantity | Value | Basis |
|---|---|---|
| Accounted units of execution | 1 | the TALO-0126 lane |
| Wall time | 1 028 s (17m 08s) | a **floor**: worktree creation to finish, 2026-08-20 |
| Compute cost | $0.00 | measured — no compute was provisioned for this task |
| Active execution time | not measured | never metered |
| Tokens in / out | not measured | never metered |
| Model spend | not measured | never metered |
| Human review time and cost | not measured | never metered |
| **Total execution cost** | **not measured** | it cannot be derived from the rows above, and is not estimated here |

Stages 3 and 4 carry no timing or cost of their own: they were not metered, and
they have not been reconstructed after the fact. An unmeasured quantity is
published as unmeasured — it is never rendered as a zero, and never back-filled
from memory.

## The gate that can fail

Publication of the deck is guarded by an investor-document check: § 5.8.1's
required set — White Paper and Pitch Deck, in Russian **and** English — must
resolve, or the release lane goes red. The check was demonstrated red before
delivery by deleting the Pitch Deck row and observing the failure, then restored;
it is not a check that has only ever been seen passing.

The deck's own content is governed by the same rule as the rest of this
repository: a claim with no published source behind it is left absent, and the
absence is stated. Traction, revenue, SAM, SOM, unit economics and use-of-funds
are absent from the deck for that reason — there are no commercial cases yet, and
inventing the figures would have been the easier and less honest option.

## Capability provenance

Authoring reused existing Capability Atlas artifacts rather than introducing a
presentation-specific capability: the `writer` role; the `customer-narrative`,
`success-criterion-measurement`, `testing` and `verification-before-completion`
skills; the `evidence-bearing-verification` blueprint; the `honesty-presentation`
policy; and the `unknown-is-not-zero` constraint. Sources were the published
White Paper and two published research documents; unsupported fields stayed open.

Sanitized projections of these artifacts live in
[`capabilities/`](../../capabilities/); the full internal versions remain in the
private knowledge repository, by design.
