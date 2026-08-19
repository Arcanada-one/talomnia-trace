# Workflows — execution trace directories

One directory per published Workflow. **The directory name equals the workflow's URL
slug on talomnia.com** (`/workflows/<slug>` on the site ↔ `workflows/<slug>/` here),
so site pages derive repository links mechanically.

Per-workflow layout:

| Path | Content |
|---|---|
| `README.md` | The task, current status, timeline of stages, participating roles/agents, links to artifacts and correspondence, time & cost summary. |
| `tasks/` | Anonymized orchestrator task briefs, as issued to executing agents. |
| `artifacts/` | Sanitized copies of (or pointers to) artifacts the workflow produced. |
| `correspondence/` | Sanitized agent correspondence — the actual back-and-forth of execution. |

Rules:

- Slugs are **append-only**: once a workflow is published its directory is never
  renamed. A superseded workflow keeps its directory with a pointer to the successor.
- Everything here is a sanitized projection produced under
  [SANITIZATION.md](../SANITIZATION.md); the CI gate blocks anything else.
- A workflow is complete only when its page carries the artifact matrix, timing and
  cost — partial traces are marked with their status in `README.md`.
