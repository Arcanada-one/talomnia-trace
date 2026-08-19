---
projection-of: tal-skill-sanitization-gate
type: skill
source-version: 0.1.4
origin: created-in-talomnia
projected: 2026-08-19
relations:
  - rel: derived-from
    target: tal-constraint-sanitized-projection
  - rel: part-of
    target: tal-blueprint-repo-provisioning-sanitized
---

# Skill — Sanitization CI Gate

How to turn a sanitization constraint into an automatic **blocking** CI check on a
public repository: pattern classes, allowlist discipline, mutation-proofing the gate.

This skill was created for the Talomnia launch and then used to build the gate that
guards this very repository — the sanitized projection you are reading passed through
the gate it describes.

## When to apply

Before the first commit reaches any public surface of a project: showcase repo,
published capability catalog, published telemetry.

## Procedure

1. **Enumerate forbidden classes** from the governing constraint: secrets/tokens,
   real filesystem paths, personal data, internal hostnames and IP addresses. Add the
   organization's specifics: mesh network node names, secret-store path conventions,
   fleet machine naming schemes.
2. **Layer independent detectors:** (a) a generic secret scanner (pinned version,
   checksum-verified binary); (b) a project denylist of internal identifier
   *patterns* — mirrored into CI as patterns, not values, where the values are
   themselves sensitive. Remember that stored patterns are often backslash-escaped
   (`192\.0\.2\.7`) — test the detector against escaped and unescaped forms.
3. **Fail closed.** The check blocks merge/publish on any hit; an allowlist entry
   requires an in-repo justification line with an expiry date.
4. **Mutation-proof the gate:** plant a synthetic forbidden token in a scratch
   branch — CI must go red; remove it — green. A gate that has never been red proves
   nothing. Plant **randomly generated, high-entropy** values: secret scanners
   deliberately ignore low-entropy textbook examples, so a naive positive control
   can pass while testing nothing.
5. **Wire the lifecycle filter:** projection tooling refuses artifacts whose
   lifecycle status does not permit public projection.

## Failure modes

- Scanner runs but its findings are non-blocking (advisory CI) — the policy is then
  a verbal agreement, not a control.
- Denylist values committed to the public repo, leaking the very identifiers they
  protect.
- Scanner silently loads zero (or toothless) rules and stays green — countered by a
  positive control that plants findings on every run and requires red.
- Gate green because it scans the wrong directory — same counter.

## Verification

Planted-token red run and clean green run both recorded as evidence; the gate is a
required (blocking) check on the publication path; the positive control re-proves
the gate's ability to fail on every run.
