# Workflow 0 — Talomnia Launch Specification

**Status: published.** This is the first complete Workflow trace: how the Talomnia
launch specification came to be, and how the epic that builds it was executed —
client discovery → discussion → requirements → contradictions/TBD → technical
assignment → validation → accepted specification → input to orchestration, and
onward through implementation. The published evidence is the **process**, not a
polished result: contradictions and gaps are shown as found, with how each was
resolved. A version with the traces of real work edited out would not meet the
requirement this workflow exists to demonstrate (TZ § 5.5, § 14.4).

Live case page (once the site is deployed past the Evidence Gate, TZ § 12.1):
`talomnia.com/workflows/talomnia-launch-specification`. Site source of this page:
[`Arcanada-one/talomnia-site`](https://github.com/Arcanada-one/talomnia-site),
content projected from
[`Arcanada-one/talomnia-knowledge`](https://github.com/Arcanada-one/talomnia-knowledge)
(private — the artifact repository; this repository is its sanitized public trace).

## The task

Build and launch **Talomnia Workforce** — build the specification, the professional
knowledge graph behind it, the resolver that turns intents into contracts, and the
site that publishes the evidence — as a single epic tracked under `TALO-0001`.

## Timeline

Two eras, disclosed explicitly (see **Rebuild**, below): eleven tasks executed on
markdown briefs (`TALO-0002`–`TALO-0012`), then a re-founding on Knowledge Contract
Architecture (`TALO-0019`–`TALO-0025`).

| Task | Stage | What it produced |
|---|---|---|
| TALO-0002 | Knowledge repo scaffold | Private `talomnia-knowledge` repo: artifact template, lifecycle policy, indexing path |
| TALO-0003 | Capability discovery | Capability map — 99 rows, 95 `exists` (Datarim reuse), 4 `create` |
| TALO-0004 | Workflow Ledger | Schema, writer CLI (`talo-ledger`), wired into every subsequent lane |
| TALO-0005 | Repositories | This repository (`talomnia-trace`) + `talomnia-site` scaffolded; sanitization policy and CI gate |
| TALO-0006 | Market research | Talomnia Workforce market research |
| TALO-0007 | Technical research + ADRs | Stack, database, analytics decisions |
| TALO-0008 | Design research | Design system as Capability Atlas artifacts |
| TALO-0009 | Database + projection | Schema, migrations, one-way reproducible Git → DB → Atlas projection |
| TALO-0010 | Site implementation | talomnia.com — all TZ § 5 sections, RU/EN, themes, DB-driven |
| TALO-0011 | Support Center integration | Contract resolved to `Bound` under TALO-0022; implementation executed under TALO-0024 |
| TALO-0012 | DevOps | Cloudflare, SSL, nginx, staging/prod, backups, verified-delivery monitoring |
| TALO-0017 | *(superseded before execution)* | Cost-attribution brief — superseded by TALO-0023 under the rebuild before any lane ran it |
| TALO-0018 | Announcement page | `talomnia.com` → 200, indexable — kept live through the rebuild |
| TALO-0019 | Ontology, executable | 20 JSON Schemas for the 7 managed knowledge types, canonicalization, 17 invalid-state codes |
| TALO-0020 | Professional Knowledge Graph | Bounded-closure graph store; 149 revisions (30 lifted + 119 Datarim imports) |
| TALO-0021 | Resolver | Five stages (Propose→Verify→Select→Assemble→Bind), 7 terminal states, 3 separated identities |
| TALO-0022 | Architecture as artifacts | 11 contract-grade revisions (4 blueprints, 3 roles, 4 skills) + Datarim-executable projection |
| TALO-0023 | Cost attribution | Per-knowledge-element ledger attribution; 73 pre-contract entries retro-marked estimated |
| TALO-0024 | Re-execution via contracts | Support Center, this Workflow 0 + Capability Atlas, Evidence Gate, Launch Validation — each behind a resolved `K_id`, no briefs |
| TALO-0025 | *(disclosed lapse)* | An out-of-contract deploy attempt, caught by the sanitization gate, refiled to run through a contract — see **Rebuild** |

Exact time and cost per task and epic totals: **Time & cost** section below, sourced
from `talo-ledger report` on the committed ledger (`talomnia-knowledge/ledger/*.jsonl`).

## Rebuild — disclosed, not silenced

The first eleven tasks (`TALO-0002`–`TALO-0012`) were issued as **markdown briefs**:
prompts, not contracts. There was no fixed artifact-version set, no Resolution
Receipt, no separation of "what to know / what is permitted / what is forbidden /
how success is measured." Measured consequences, not recalled from memory:

- The capability map was a flat exists/create table, not a typed graph.
- **39 of 73 ledger entries (53%) name more than one knowledge element**
  (`competencies`/`skills`/`blueprints` as a list on one row) — so the cost of a
  single element from those entries is not computable; only 34 entries are
  unambiguous. `role` is unambiguous on every entry.
- The `blueprints` field was polluted with one-off briefs and plans — which the
  ontology's own definition excludes (a Blueprint is a *reusable* structural
  pattern; a brief is a one-time task input).
- Root cause: the work itself was never **expressed** through Role/Skill/Blueprint
  as first-class entities, so attribution could only ever be a post-hoc estimate.

The operator's own words, on 2026-08-19, on why this was rebuilt rather than
patched:

> "смысл был не просто это считать, а считать именно сколько в каждой задаче и
> подзадаче использовано на каждую агентскую роль, на каждый скилл, на каждый
> блюпринт времени, денег, токенов… Еще не поздно вернуться в начало, пересоздать
> так, как надо, и вести учет даже того, что уже сделано."
>
> (*"the point was never just to count it, but to count exactly how much of each
> task and sub-task went to each agent role, each skill, each blueprint — in time,
> money, tokens… It's not too late to go back to the start, rebuild it properly, and
> account for what's already done too."*)

The epic was re-founded on Knowledge Contract Architecture — order made mandatory:
**knowledge artifacts → graph → resolver → contracts → execution**:

1. **TALO-0019** turned the ontology (seven managed knowledge types) into executable
   JSON Schemas with a canonical byte digest and 17 invalid-state codes.
2. **TALO-0020** built the Professional Knowledge Graph — the public name; an
   internal working abbreviation is deliberately not published anywhere in this
   repository or on the site (TZ § 13, § 15.2 item 11). 38 pre-existing artifacts
   were checked against the schemas: **30 lifted** into graph revisions, **8
   competency files could not be** — the ontology recognizes seven managed types,
   not eight, and a competency is not one of them. That is recorded as a **Gap**,
   not silently mapped onto something it isn't. 119 Datarim framework artifacts were
   imported with provenance, unmodified at the source.
3. **TALO-0021** built the resolver: five stages, seven terminal states, and three
   identities kept structurally separate (a contract, its issuance, and its runtime
   binding are three different things — conflating any two is a defect class the
   resolver is built to reject, proven by counterexample tests).
4. **TALO-0022** turned the architecture itself into blueprints and skills — the
   operator's direct instruction was that the architecture must not stay "in an
   agent's head" as read prose, but become artifacts a later task selects and
   executes. Eleven contract-grade revisions (4 blueprints, 3 roles, 4 skills),
   each in two forms: a graph revision (source of truth) and a Datarim-executable
   projection, with a parity test between them.
5. **TALO-0023** replaced the ad hoc attribution: a contract now names exactly the
   artifacts it uses, and cost divides over that named set — no more guessing.
   The 73 pre-contract entries were retro-attributed and honestly marked
   `attribution_estimated: true`.
6. **TALO-0024** — this task, and its three sibling sub-tasks (Support Center
   implementation, the Evidence Gate check, the Launch Validation Report) — executes
   the remainder of the specification **through resolved contracts**, each with its
   own `K_id` and Resolution Receipt, never a brief.

**The mechanism was tested on itself, twice, in this very sub-task.** First: an
earlier resolution attempt for this Workflow 0 contract proposed a candidate set
that included design-related artifacts and two Datarim-imported skills
(`datarim-skill-frontend-ui`, `datarim-skill-research-workflow`); every one of them
was **rejected at Verify** — the imported Datarim revisions fail the ontology's
structured-payload schema (ADR-RSV-001: graph-grade, not contract-grade), and the
design dependency chain was itself incomplete (`tal-competency-design-systems` has
no revision — the same 7-vs-8-type Gap as above). The resolver did not weaken the
contract to make the numbers work; it recorded the rejections with reason codes and
produced a `Gap` receipt. The contract that actually issued (`K_id`
`sha256:05cdee3c…`) was reassembled from only the four artifacts that passed:
`tal-blueprint-evidence-bearing-verification`, `tal-role-evidence-auditor`,
`tal-skill-sanitization-gate`, `tal-skill-success-criterion-measurement`.

Second, closer to home: while this task's contract was being executed, the parent
orchestrator session **built the site bundle and attempted a staging deploy by
hand** — outside any resolved contract: no candidate proposal, no receipt, no
`K_id`, no roles or skills declared. The sanitization gate this very rebuild
exists to run refused the load (`sanitization violation … home-relative filesystem
path`), and the attempt is recorded — `validation_status: failed` — as `TALO-0025`,
re-filed to be executed through a contract instead of deleted from the record. Both
events are published here rather than edited out, per the honesty gate this
workflow's own contract carries as a blocking constraint
(`rebuild-disclosed-not-silenced`).

## Roles, skills and blueprints exercised

Selected for this sub-task's own contract (`K_id sha256:05cdee3c…`):
[`tal-blueprint-evidence-bearing-verification`](../../capabilities/blueprints/),
[`tal-role-evidence-auditor`](../../capabilities/roles/),
[`tal-skill-sanitization-gate`](../../capabilities/skills/skill-sanitization-gate.md),
`tal-skill-success-criterion-measurement`; governed by
`tal-constraint-sanitized-projection` and `tal-policy-honesty-presentation`. Across
the whole epic: 19 Datarim roles + 72 Datarim skills inventoried (TALO-0003), plus
the architecture's own 3 roles / 4 skills / 4 blueprints (TALO-0022). Full,
browsable set: the Capability Atlas at `talomnia.com/atlas`, projected live from
the Professional Knowledge Graph — the entities and their typed relations are data,
not prose written for this README.

## Time & cost

Sourced from `talo-ledger report` against the committed ledger
(`talomnia-knowledge/ledger/*.jsonl` — mirrors the working ledger at the moment this
workflow was published; the figures on the live site page are recomputed from the
same committed files by the projection, not retyped by hand). See `artifacts/` for
the exact captured report output.

## Artifacts

See [`artifacts/README.md`](artifacts/) — an index of the real artifacts this
workflow produced or consumed, with digests, pointing into the (private)
`talomnia-knowledge` repository and its public resolution-receipt entities in the
Capability Atlas.

## Correspondence

See [`correspondence/README.md`](correspondence/) — the operator decision records
this workflow was executed under.

## Tasks

See [`tasks/README.md`](tasks/) — what was issued to each executing lane, and how
that changed from brief to contract partway through.
