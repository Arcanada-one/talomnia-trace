# Talomnia — Sanitized Execution Trace

> **Disclaimer.** This repository is a **sanitized execution trace** of work performed
> by the Talomnia professional capability infrastructure. It is **not** a working
> production repository: no product code runs from here, and the content is a curated,
> anonymized projection of the real execution record. Secrets, personal data, real
> filesystem paths, internal hostnames and IP addresses are removed by policy and
> blocked by CI — see [SANITIZATION.md](SANITIZATION.md).

Talomnia delivers professional work without hiring. This repository is the public
evidence surface for that claim: it shows **how** work is executed — orchestrator
tasks, statuses, agent correspondence, produced artifacts — and **what a client keeps**
afterwards: reusable capability artifacts (roles, competencies, skills, blueprints),
not just the end result.

## What is here

| Path | Content |
|---|---|
| [`workflows/`](workflows/) | One directory per published Workflow. The directory name equals the workflow's URL slug on talomnia.com (`/workflows/<slug>` ↔ `workflows/<slug>/`). Each holds anonymized orchestrator tasks, sanitized artifacts, and agent correspondence. |
| [`capabilities/`](capabilities/) | Sanitized projections of the reusable knowledge artifacts created for Talomnia — roles, competencies, skills, blueprints. Full internal versions live in a private knowledge repository; every projection carries its source id and version. |
| [`SANITIZATION.md`](SANITIZATION.md) | The sanitization policy this repository is governed by, and the contract of the CI gate that enforces it on every push. |

## Link stability contract

Pages on [talomnia.com](https://talomnia.com) link into this repository. Those links
are load-bearing evidence, so:

- Workflow directory slugs are **append-only** — a published slug is never renamed;
  a superseded workflow keeps its directory with a pointer to the successor.
- Issues, pull requests and commits referenced by the site are GitHub-native permanent
  URLs and are never rewritten. History rewrites are allowed on this repository for
  exactly one reason: removing a sanitization breach, as described in
  [SANITIZATION.md](SANITIZATION.md).

## Integrity

Every push to every branch runs the sanitization gate
([`.github/workflows/sanitization-gate.yml`](.github/workflows/sanitization-gate.yml)).
The gate first proves it can fail — it plants synthetic findings and requires both
detector layers to go red on them — and only then scans the repository. `main` is
protected: changes land through pull requests with the gate green.

## License

Content is licensed under [CC BY 4.0](LICENSE). Attribution: Talomnia / Arcanada.
