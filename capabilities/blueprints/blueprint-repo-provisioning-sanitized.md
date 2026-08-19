---
projection-of: tal-blueprint-repo-provisioning-sanitized
type: blueprint
source-version: 0.1.4
origin: created-in-talomnia
projected: 2026-08-19
relations:
  - rel: uses
    target: tal-skill-sanitization-gate
  - rel: uses
    target: tal-constraint-sanitized-projection
---

# Blueprint — Repository Provisioning with Sanitization

Provision a project's repository contour — a public evidence repository plus private
implementation repositories — with a sanitization policy, a blocking CI gate, security
policy files, and correct commit identity.

This blueprint was created for the Talomnia launch and then executed to provision the
repository you are reading, together with its private sibling repositories.

## Preconditions

- Capability discovery for the project passed; the sanitization constraint and the
  artifact lifecycle policy exist.
- A service-account commit identity with a verified e-mail is available — personal
  accounts never author routine work.

## Stages with checkpoints

1. **Public evidence repo**: README disclaimer — sanitized execution trace, not a
   production working repository; license decision recorded; empty-but-structured
   trace layout whose directory slugs match the public site's URL slugs, so site
   links into the repo are derivable and stable.
   *Checkpoint:* disclaimer present, repo public, zero internal identifiers.
2. **Sanitization policy file + CI gate** in the public repo, built per
   `tal-skill-sanitization-gate`; the gate is blocking and mutation-proven
   (planted finding → red, removed → green).
   *Checkpoint:* red run + green run captured as evidence.
3. **Private implementation repos** (site, backend): bootstrap per the organization's
   security-policy mandate (SECURITY.md + accepted-risk register), CI skeleton with a
   dependency-audit floor; scope fenced to a compilable skeleton — product logic
   belongs to later stages.
   *Checkpoint:* repos exist, private, security files in place, CI green.
4. **Cross-links**: the public repo README points at the product site; the knowledge
   base records repository names as reference entities — never hostnames or
   filesystem paths.

## Quality criteria

Sanitization policy exists as a document **and** as an automatic blocking check that
runs on every push; no real filesystem paths, hostnames or IP addresses anywhere in
the public contour; evidence of the red/green gate runs archived.

## Outputs

Public evidence repo + private implementation repos, sanitization policy + proven
gate, red/green run evidence, ledger entries with created/reused per artifact.
