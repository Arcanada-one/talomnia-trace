# Artifacts — Workflow 0

Index, not a mirror: the artifact repository (`talomnia-knowledge`) is private by
design (TZ § 4.3 — `public-sanitized` permits a *sanitized projection*, never
publication of the internal Markdown itself). What follows is the sanitized
pointer set — id, kind, and content digest — for the artifacts this workflow's own
sub-task produced or selected. The full, browsable, typed graph of everything the
epic produced is the **Capability Atlas** (`talomnia.com/atlas`), projected live
from the same source; this file is a snapshot at publication time.

## Selected by this sub-task's contract (K_id `sha256:05cdee3c…`)

| Id | Kind | Content digest (prefix) |
|---|---|---|
| `tal-blueprint-evidence-bearing-verification` | Blueprint | `sha256:68576dd4…` |
| `tal-role-evidence-auditor` | Role | `sha256:87bbfce3…` |
| `tal-skill-sanitization-gate` | Skill | *(pre-existing, TALO-0002 era, lifted TALO-0020)* |
| `tal-skill-success-criterion-measurement` | Skill | `sha256:22dec866…` |

Governed by: `tal-constraint-sanitized-projection`, `tal-policy-honesty-presentation`.

## Produced by TALO-0024's four sub-task contracts

| Sub-task | K_id (prefix) | Resolution Receipt digest (prefix) |
|---|---|---|
| A — Support Center integration | `sha256:a2731c3f…` | see `talomnia-knowledge/architecture/reports/sc6/` |
| B — this Workflow 0 + Capability Atlas | `sha256:05cdee3c…` | `sha256:f76549a4…` |
| C — Evidence Gate (TZ § 12.1) | `sha256:122990fc…` | see `talomnia-knowledge/architecture/reports/talo-0024/` |
| D — Launch Validation Report (TZ § 14.7) | `sha256:3d1cec8f…` | see `talomnia-knowledge/architecture/reports/talo-0024/` |

Each is also published as a `resolution_receipt` Capability Atlas entity
(`talomnia.com/atlas/resolution-receipt-…`), carrying its selected primary and
governance artifacts, embedded constraints, and success criteria as typed data.

## Professional Knowledge Graph, at publication time

149 revisions: 30 lifted from this repository's pre-TALO-0019 artifacts, 119
imported from the Datarim framework (graph-grade, not contract-grade — a Knowledge
Contract cannot embed them directly, ADR-RSV-001), 11 authored under TALO-0022
(the architecture-as-artifacts set this workflow's own contract draws from).
14 Gap records — 8 competency files (the ontology manages seven types, not eight),
plus five referenced-but-not-yet-authored artifacts (a design-research study, a
capability-map script, a frontmatter-lint script, a token-contrast-check script,
and the artifact template itself) — published honestly as Gaps, not hidden or
force-fit.

## Ledger

`talomnia-knowledge/ledger/*.jsonl` — the committed workflow ledger this
workflow's time/cost figures are computed from. Run captured at publication:

```
talo-ledger report --dir <committed ledger dir>
```

The exact output is reproduced in this workflow's site page footer and must equal
these files; a mismatch is a defect in the projection, not an acceptable variance.
