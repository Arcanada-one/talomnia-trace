---
projection-of: datarim-skill-nginx-version-compat
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Nginx Version Compatibility Probe

**Inputs.** `nginx_change_plan` (markdown), `target_host` (config)

**Outputs.** `version_pinned_plan` (markdown)

## Preconditions

- The task plans to edit nginx configuration
- Shell access to the host running the target nginx instance is available

## Procedure

1. (shell) Probe the running nginx binary on the target host for its exact version before writing any configuration.
2. (shell) List the compiled-in modules to confirm support for planned features such as HTTP/2 and HTTP/3.
3. (editor) Record the probed version in the plan instead of assuming one, since distributions pin old release branches.
4. (analysis) Map every planned directive to the confirmed version, using the standalone http2 and http3 directives on modern releases.
5. (review) Require an explicit statement of TLS settings and a passing configuration test before any reload is scheduled.

## Effects

- The plan pins the exact nginx version and the matching directive syntax
- TLS protocol and cipher settings are stated explicitly instead of relying on build defaults
- Unsafe reloads are prevented by a mandatory configuration test

## Evidence obligations

- Exact running nginx version string recorded in the plan
- Module list output confirming required modules before planning features that need them
- A passing configuration test before any reload

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-nginx-version-compat` (graph revision `datarim-skill-nginx-version-compat@r2`,
`content_digest: sha256:f2544fe851d424258ad9cfb3c9d759d12ad013acbd4094825a9512407dd24447`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
