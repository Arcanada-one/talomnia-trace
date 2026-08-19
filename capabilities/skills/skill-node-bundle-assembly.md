---
projection-of: tal-skill-node-bundle-assembly
type: skill
source-version: 0.1.5
origin: created-in-talomnia
projected: 2026-08-19
---

# Skill — Node Release Bundle Assembly

**Inputs.** `site_repository_checkout` (path), `lockfile` (path)

**Outputs.** `release_bundle_dir` (path)

## Preconditions

- The checkout is a committed repository state (never an edited host tree); the lockfile is present and frozen.
- Toolchain parity with the target host: node 22.x line, pnpm 11.x line (the systemd units exec /usr/bin/node dist/main.js).

## Procedure

1. (package-manager) Install the full dependency set with the frozen lockfile (pnpm install --frozen-lockfile); a lockfile drift aborts the build rather than being silently resolved.
2. (compiler) Compile with the build config (pnpm build -> tsc -p tsconfig.build.json) producing dist/ with dist/main.js as the unit entrypoint.
3. (test-runner) Run the unit suite (pnpm test:unit) and stop on any red; the projection suite requires a PostgreSQL server and is skipped loudly, never silently, where absent.
4. (bundler) Assemble the bundle directory: dist/, package.json, public/ static assets, and production-only node_modules (pnpm install --prod --frozen-lockfile in a bundle staging dir); dev toolchain (tsc, vitest, prisma CLI) must not ride the bundle.
5. (validator) Self-check the broker floor before shipping: the bundle contains dist/main.js and package.json (mirror of talomnia-deploy verify-bundle), and node dist/main.js boots against a loopback environment when a smoke environment is available.

## Effects

- A self-contained release bundle exists whose layout satisfies the deploy broker's verify-bundle acceptance and the systemd unit's runtime expectations.

## Evidence obligations

- Build and test logs plus the bundle file listing; verify-bundle output from the broker on the shipped bundle.

## Bounds

- `excluded`: dev dependencies, .git, test trees, secrets or env files: never in the bundle

## Provenance

Sanitized one-way projection of the private knowledge artifact
`tal-skill-node-bundle-assembly` (graph revision `tal-skill-node-bundle-assembly@r2`,
`content_digest: sha256:44898a44d4c5bce6a1360179da57c06ac4505b9d8b5ea828cdb9c77c68788c61`),
published at `public-sanitized` lifecycle status. Authored during the Talomnia launch epic and promoted with an evidenced lifecycle trail under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
