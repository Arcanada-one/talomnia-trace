# Result — Workflow 0: the Talomnia launch specification

Result document for this Workflow, required by the §12.1 Evidence Gate ("a result
document for the case exists"). Produced under the Evidence Gate contract (K_id
`sha256:122990fc…`) that verified this workflow against the gate — see
[`evidence-gate-decision.md`](evidence-gate-decision.md) in this same directory
for the full predicate-by-predicate check. This file states what was ordered, what
was delivered, and the measured outcome; it does not repeat the gate mechanics.

## What was ordered

Build and launch Talomnia Workforce end to end, tracked as epic `TALO-0001`: the
launch specification itself, the professional knowledge graph behind it, the
resolver that turns intents into Knowledge Contracts, the public site that
publishes the evidence, and — mid-epic — a rebuild of the execution model from
markdown briefs onto resolved contracts, disclosed rather than hidden (see the
workflow's [README § Rebuild](README.md#rebuild--disclosed-not-silenced)).

## What was delivered

- **Specification and graph**: executable ontology (TALO-0019), Professional
  Knowledge Graph with 149 revisions (TALO-0020), five-stage resolver with three
  structurally separated identities (TALO-0021), architecture re-expressed as
  11 contract-grade blueprints/roles/skills (TALO-0022), per-knowledge-element
  cost attribution (TALO-0023).
- **Site**: talomnia.com live in both locales, DB-driven from the same graph —
  Workflows list, this case page, Capability Atlas (42 entities, 88 relations),
  How-it-works, Research, Investor Room, Pricing, Contact.
- **Execution proof on itself**: this Workflow's own publication contract (K_id
  `sha256:05cdee3c…`) was resolved, not hand-assembled — including a documented
  rejection of an earlier candidate set at the resolver's Verify stage (see
  README § Rebuild).
- **The disclosed lapse**: an out-of-contract deploy attempt by the parent
  orchestrator was caught by the sanitization gate and re-filed as TALO-0025 to
  run through a contract — published here, not edited out.
- **This Evidence Gate check** (TALO-0024 sub-task C, K_id `sha256:122990fc…`):
  verified every §12.1 predicate against the live system, found and fixed a real
  divergence (the production database's site-content projection was still empty
  at the time of this check — see the decision document), and produced this
  result document plus the formal decision document, both required by the gate
  itself.

## Verification outcome

Full predicate-by-predicate evidence is in
[`evidence-gate-decision.md`](evidence-gate-decision.md). Summary:

| Check | Result |
|---|---|
| Self-use case live at a permanent URL, with artifact matrix and time/cost totals | **PASS** (after a documented projection refresh — see decision document) |
| Trace legible in this repository, links from the site resolve | **PASS** |
| Result document exists | **PASS** — this file |
| Case page totals equal the committed ledger snapshot | **PASS** — exact match, see figures below |
| Every link from the live case page into this repository resolves HTTP 200 | **PASS** |
| Sequencing (trace published before production deploy, gate decision recorded after both) | **disclosed, not hidden** — see decision document |

## Figures (from the committed ledger, TALO-0024)

Sourced from `talo-ledger report` against the committed ledger snapshot at
`talomnia-knowledge` commit `2f95f52` (2026-08-19T17:44:22Z), restricted to this
workflow's `task_ids` (`TALO-0002`–`TALO-0012`, `TALO-0019`–`TALO-0025`):

- Time: **40,138 s** (11h 08m 58s)
- Cost: **$151.44** (all entries `cost_estimated: true`, basis documented per entry)

These are the same figures the live case page renders — the projection recomputes
them from the same committed ledger rows inside the same DB transaction, so the
page and this file are two views of one source, not two independently maintained
numbers.
