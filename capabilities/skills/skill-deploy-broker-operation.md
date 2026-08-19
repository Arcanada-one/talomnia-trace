---
projection-of: tal-skill-deploy-broker-operation
type: skill
source-version: 0.1.5
origin: created-in-talomnia
projected: 2026-08-19
---

# Skill — Deploy Broker Operation

**Inputs.** `release_bundle_dir` (path), `contour` (string)

**Outputs.** `deployment_report` (json)

## Preconditions

- The broker is root-installed on the target host; the installed copy is what runs — a repo-side broker edit without a root re-install changes nothing (measured ecosystem boundary).
- Invocation is root or the sudoers-whitelisted CI principal; no other channel mutates the host.
- Staging precedes production: a production deploy is admissible only after health(staging) OK plus factual content verification.

## Procedure

1. (deploy-broker) verify-bundle <dir>: acceptance floor (dist/main.js, package.json present); a red here stops the release before any host mutation.
2. (deploy-broker) deploy <contour> <dir>: the broker copies the bundle to releases/<utc-ts>, records previous, flips the current symlink, restarts the unit and health-checks; the caller never mutates releases or symlinks by hand.
3. (deploy-broker) health <contour>: loopback /health probe (200 {status:ok,version}); treat a non-OK as a failed deploy, not a warning.
4. (deploy-broker) On failed health or failed content verification: rollback <contour> (requires a recorded previous release), then re-verify health; a rollback that restores health is the recovery evidence.
5. (deploy-broker) Edge config change: commit to deploy/nginx in the repository, ship the checkout, install-edge <checkout> (broker backs up configs, runs nginx -t, restores on failure, reloads); vhosts are never edited on the host.
6. (evidence-recorder) Capture broker outputs, health payloads and post-deploy HTTP probes into the deployment report for the success-criterion evidence.

## Effects

- The contour serves the deployed release through an atomic, reversible release switch; every mutation went through the broker channel.

## Evidence obligations

- Broker stdout for verify-bundle/deploy/health/rollback, health endpoint payloads, and HTTP probes of the served content per contour.

## Bounds

- `forbidden`: manual host mutations, editing installed vhosts/units/releases, deploying production before staging is verified green

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-skill-deploy-broker-operation` (graph revision `tal-skill-deploy-broker-operation@r2`,
`content_digest: sha256:c87e2b0a6fe46ede7046907f7ee08597513b519c4f2de533fb69065451a8d45d`),
published at `public-sanitized` lifecycle status. Authored during the Talomnia launch epic and promoted with an evidenced lifecycle trail under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
