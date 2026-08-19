---
projection-of: datarim-skill-playwright-qa
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Browser QA Evidence Pass

**Inputs.** `changed_files` (report), `task_id` (config), `target_surface` (config)

**Outputs.** `run_artifacts` (report), `run_summary` (markdown)

## Preconditions

- The changed-files set touches rendered markup, styles, or frontend components
- A local dev surface or static fixture is reachable for the browser pass
- The QA stage of the task pipeline is running

## Procedure

1. (analysis) Detect whether the changed-files set touches rendered markup, styles, or frontend components, and skip the pass when it does not.
2. (shell) Resolve the browser tool through the fixed chain: operator override, CLI, MCP server, environment browser, or none.
3. (shell) Acquire the per-task lock so concurrent QA runs serialize instead of trampling each other's artifacts.
4. (shell) Run the browser pass headless by default, or headed when requested and a display is available.
5. (editor) Write the screenshot, trace, log, and run summary into a timestamped run directory with a stable pointer to the latest run.
6. (report) Cite the resolved tool, mode, exit code, and run path in the QA report, recording missing tooling as a finding rather than a failure.

## Effects

- A timestamped evidence directory is produced for each browser pass, with a stable pointer to the latest run
- Concurrent QA runs on the same task are serialized by a per-task lock
- The QA report gains a cited browser verification sub-step

## Evidence obligations

- Per-run directory containing the screenshot, trace bundle, and combined run log
- Run summary recording tool, headed mode, target, viewport, exit code, and findings
- QA report citation of the resolved tool, mode, exit code, and run path
- Findings recorded for missing tooling or lock timeouts instead of silent skips

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-playwright-qa` (graph revision `datarim-skill-playwright-qa@r2`,
`content_digest: sha256:716b8dcca722330010f580532d2c36694f7b48c3e7375d01bc4defe79663269d`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
