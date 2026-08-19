# Capabilities — reusable artifacts a client keeps

Talomnia's position is that a client receives not only the delivered result but the
**reusable capability artifacts** created along the way: roles, competencies, skills
and blueprints. This tree holds their public projections.

| Path | Entity type |
|---|---|
| `roles/` | Who does the work — responsibility profiles. |
| `competencies/` | What the workforce knows how to do. |
| `skills/` | Procedural knowledge — how a class of task is executed. |
| `blueprints/` | Repeatable multi-step work programs. |

Provenance contract:

- Every file here is a **sanitized projection** of an artifact whose authoritative,
  full version lives in a private knowledge repository. Projection is one-way:
  files here are generated from the source, never edited in place.
- Only artifacts that reached the `public-sanitized` lifecycle status may appear
  here; each file's frontmatter carries `projection-of` (source artifact id),
  `source-version`, and `projected` (date).
- The projection passes the same CI sanitization gate as everything else
  ([SANITIZATION.md](../SANITIZATION.md)).

## Published and withheld (issue #35 accounting)

The catalog never silently shows a subset. As of 2026-08-19 the private
knowledge inventory holds, per type (distinct artifact identities in the
knowledge graph united with markdown artifacts):

| Type | inventory | published | withheld | why withheld |
|---|---|---|---|---|
| role | 27 | 18 | 9 | Datarim-imported role definitions with **no execution evidence in the launch epic's Workflow Ledger** (code-simplifier, compliance, dr-orchestrate-resolver, editor, optimizer, peer-reviewer, planner, skill-creator, strategist). They stay graph-grade, `visibility: internal`, until they carry evidenced work. |
| skill | 114 | 31 | 83 | 54 Datarim skill imports without epic execution evidence, 28 Datarim command-surface imports (framework commands, not standalone capability skills), and 1 private validated skill. All graph-grade or private; publication requires the same evidenced lifecycle promotion the 22 published Datarim skills went through. |
| blueprint | 13 | 11 | 2 | Two blueprints remain `validated`/private (backup-restore, monitoring) — not yet through the sanitization stage. |
| competency | 8 | 8 | 0 | — |
| policy / constraint / criterion / receipt | 4 / 3 / 6 / 4 | all | 0 | — |
| prompt / template / script | 1 / 2 / 3 | 0 | 6 | Internal working artifacts at pre-publication maturity. |

The live Capability Atlas renders the same accounting per type, computed
from the projection database at page render time, so removing a published
entity visibly moves it to the withheld column (TZ § 14.8 mutation rule).
An artifact enters the published set **only** through the artifact
lifecycle (`draft → reviewed → validated → shared-internal →
public-sanitized`) with evidence recorded per transition in the private
repository's Git history; the projection filter is never widened to make
the catalog look fuller.
