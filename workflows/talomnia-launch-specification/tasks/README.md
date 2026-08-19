# Tasks — Workflow 0

What was issued to each executing lane, and how the issuing mechanism itself
changed partway through the epic — the fact this workflow exists to demonstrate.

## Era 1 — markdown briefs (TALO-0002 – TALO-0012)

Each task was a **prompt**: a markdown brief with instructions, no fixed artifact
version set, no Resolution Receipt, no separated "may / must not / how success is
measured." Structurally identical to a well-written task description, and exactly
the pattern the rebuild replaced. Goals, one line each:

| Task | Goal |
|---|---|
| TALO-0002 | Scaffold the private knowledge repository: structure, artifact template, lifecycle, Scrutator indexing path |
| TALO-0003 | Capability discovery: map roles/skills/blueprints, inventory Datarim, find and close gaps |
| TALO-0004 | Workflow Ledger: schema, writer, wire into every lane |
| TALO-0005 | Repositories: this public showcase + the site + the backend; sanitization policy and CI gate |
| TALO-0006 | Talomnia Workforce market research |
| TALO-0007 | Technical research + ADRs: stack, database, analytics |
| TALO-0008 | Design research + design system as Capability Atlas artifacts |
| TALO-0009 | Database schema + migrations + one-way reproducible Git→DB→Atlas projection |
| TALO-0010 | Implement talomnia.com — every TZ § 5 section, RU/EN, themes, DB-driven |
| TALO-0011 | Support Center integration: forms, requests, contract tests |
| TALO-0012 | DevOps: Cloudflare, TLS, nginx, staging + prod, backups, verified-delivery monitoring |

## Era 2 — Knowledge Contracts (TALO-0019 – TALO-0025)

Each task is a **Knowledge Contract**: what the executor must know (with source
digests), what is permitted, what is forbidden, and how success is measured — each
predicate backed by evidence, not self-declared. Goals, one line each:

| Task | Goal |
|---|---|
| TALO-0019 | Ontology in executable form: JSON Schemas, canonical digest, invalid-state codes |
| TALO-0020 | Professional Knowledge Graph: typed multigraph store, bounded closure, terminal states |
| TALO-0021 | Resolver: five stages, three separated identities, seven terminal states |
| TALO-0022 | Architecture as artifacts: blueprints and skills agents actually execute, generated in two forms |
| TALO-0023 | Cost attribution by knowledge element, replacing estimate-only accounting |
| TALO-0024 | Re-execute the epic's remainder through resolved contracts, not briefs — four sub-tasks, four `K_id`s |
| TALO-0025 | *(disclosed lapse, not a planned task)* An out-of-contract deploy attempt, caught, refiled to run through a contract |

TALO-0017 (a cost-attribution brief) was **issued and then superseded before any
lane executed it** — TALO-0023 replaced it outright once the rebuild started; no
ledger entries exist under TALO-0017 because no work was ever done under it.
TALO-0018 (the announcement page) executed and shipped, but — a genuine gap,
disclosed rather than smoothed over — has no ledger entry of its own; it predates
TALO-0004's ledger wiring reaching every lane.

Full text of the Knowledge Contracts (source: `talomnia-knowledge` worktree,
`KC-TALO-0019.md` … `KC-TALO-0024.md`) is not reproduced verbatim here — each
contract's resolved bundle, Resolution Receipt and `K_id` are the machine-checkable
record, published as `resolution_receipt` Capability Atlas entities
(`talomnia.com/atlas`) and indexed in [`../artifacts/README.md`](../artifacts/).
