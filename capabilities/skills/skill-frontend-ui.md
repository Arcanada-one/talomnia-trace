---
projection-of: datarim-skill-frontend-ui
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Frontend Interface Quality Checklist

**Inputs.** `ui_changes` (code), `dev_surface` (config)

**Outputs.** `screenshot_evidence` (report), `checklist_findings` (report)

## Preconditions

- The task modifies HTML, CSS, templates, or visual components
- Dark mode is driven by a class toggle with light styles as the default
- A local dev surface or static fixture is available for the automated browser pass

## Procedure

1. (review) Check theme CSS: light styles as the unprefixed default, dark as a class-based override, and no negation selectors that let light colors leak into dark mode.
2. (review) Verify both themes and mobile, tablet, and desktop viewports by screenshot; if screenshots cannot be captured, explicitly ask a human to verify visually before closing.
3. (review) For multilingual sites, verify language parity: identical translation keys, working language switcher, URL prefixes on internal links, and no wrong-language text leaks.
4. (review) Walk the mobile-responsiveness, accessibility, performance-hygiene, and SEO and social-preview checklists for the changed surfaces.
5. (shell) Query the filesystem for live component counts before publishing any numbers in content or documentation; never reuse cached figures.
6. (shell) Run the automated browser pass at the QA stage, saving per-run screenshot artifacts and a summary for operator visual review.

## Effects

- Theme, responsiveness, accessibility, and metadata defects are caught before the task closes
- Visual deviations are surfaced for operator diff review instead of being silently accepted
- Published component counts trace to a live filesystem query rather than stale session data

## Evidence obligations

- Screenshots of dark and light themes and of each viewport class
- Per-run browser-pass artifacts with a summary for the latest pass
- An explicit hand-off to a human reviewer whenever screenshots cannot be captured

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-frontend-ui` (graph revision `datarim-skill-frontend-ui@r2`,
`content_digest: sha256:2041e05aad7da1e8e1018f32adc3e343f740f4ea96a686e88de2c42bb64b718c`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
