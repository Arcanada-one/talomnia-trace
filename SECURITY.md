# Security Policy — talomnia-trace

This repository ships within the Arcanada ecosystem and is triaged under the
Arcanada Ecosystem Security Policy Mandate.

## Scope and threat model

A public, content-only repository (no runtime dependencies, no executing service —
`framework` stack profile). The principal risk is **content-borne**: material that
should never be public reaching this repository. That risk is governed by
[SANITIZATION.md](SANITIZATION.md) and its blocking CI gate; a sanitization breach
IS a security finding here and follows the breach-response procedure in that document.

Secondary surface: the CI workflow itself (`.github/workflows/`) — pinned actions
(full commit SHA), checksum-verified scanner binary, `contents: read` permissions.

## Reporting

Report vulnerabilities or sanitization breaches to **security@arcanada.ai** with
subject prefix `[security]`. Encrypt with the PGP key published on
[keys.openpgp.org](https://keys.openpgp.org) when disclosing sensitive details.

Include:

1. Affected file(s)/commit(s).
2. Category (e.g. leaked credential, personal data, internal infrastructure detail,
   CI gate bypass).
3. Reproduction or a pointer to the exact content.
4. Impact assessment.

## Disclosure SLA

| Stage | Target |
|-------|--------|
| Acknowledgement of report | <= 72 hours |
| Triage and severity assignment | <= 7 days |
| Fix for HIGH / CRITICAL | <= 90 days (leaked credentials: rotation starts immediately) |
| Fix for MEDIUM | <= 180 days |
| Fix for LOW | best-effort, batched |

Coordinated public disclosure within 14 days of fix or 120 days after report,
whichever is sooner.

## Accepted risks

Tracked in [`accepted-risk.yml`](accepted-risk.yml) (schema v1, 90-day re-review).
The register starts empty by design.
