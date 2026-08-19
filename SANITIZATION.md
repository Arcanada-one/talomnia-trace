# Sanitization Policy

This document is the governing policy for everything published in this repository.
It is not a convention or a verbal agreement: it is enforced by an automatic,
**blocking** CI check on **every push and every pull request**
([`.github/workflows/sanitization-gate.yml`](.github/workflows/sanitization-gate.yml)).

## 1. Forbidden content

The following classes of content must never appear in this repository — in any file,
on any branch, in any commit of published history:

| Class | Examples of what is banned |
|---|---|
| **Secrets and tokens** | API keys, access tokens, private keys, passwords, session cookies, connection strings with credentials — of any provider, live or expired. |
| **Real filesystem paths** | Absolute paths of operator or fleet machines (`/home/<user>/...`, `/Users/<user>/...`, `C:\Users\...`, deployment paths). |
| **Personal data** | Names of private individuals, e-mail addresses, phone numbers, account handles that identify a private person. |
| **Internal hostnames** | Machine names, mesh/VPN node names, internal service hostnames of the executing infrastructure. |
| **IP addresses** | Any IP literal, internal or external. Documentation ranges (RFC 5737: `192.0.2.0/24`, `198.51.100.0/24`, `203.0.113.0/24`) are the only tolerated form, for illustrative examples. |
| **Internal tracker references** | Task ids of internal ecosystem projects. The `TALO-` ids of the workflows showcased here are the subject of this repository and are allowed. |

Published content is a **projection**: it is produced from internal records by
removing or replacing the above, never by copying internal records verbatim.

## 2. Enforcement — the gate

Two independent detector layers run in CI:

- **Layer A — gitleaks** (pinned version, checksum-verified binary), scanning the
  **entire git history** of the branch in two runs: **A1** with the built-in default
  ruleset (secrets and tokens), **A2** with the repository's infrastructure rules in
  [`.gitleaks.infra.toml`](.gitleaks.infra.toml) (internal IP ranges, absolute
  machine paths, mesh hostnames). The runs are separate because the default config's
  global allowlist suppresses path-shaped findings when custom rules merely extend it
  (measured while building this gate).
- **Layer B — [`scripts/sanitization-check.sh`](scripts/sanitization-check.sh)**,
  scanning the working tree for the class patterns above (IPv4 literals including
  `\.`-escaped forms, absolute paths, internal host/mesh names, e-mail addresses,
  phone numbers, internal tracker ids, plus a credential-pattern backstop).

Any finding fails the check. The check is a **required status** on `main`
(admin bypass disabled): a red gate blocks the merge, and therefore publication.

### The gate must be able to fail

A green check that cannot go red proves nothing. Therefore, on **every run**, before
scanning the repository, the workflow executes a **positive control**: it plants
synthetic findings (a randomly generated high-entropy token, an internal-style IP,
an absolute path) outside the checkout and requires **each layer to detect them**.
If a detector stays green on planted findings — for example, a scanner that loaded
zero rules — the gate fails itself.

Two practical notes from proving this gate, kept here so they are not re-learned:

- Low-entropy or textbook example values (the classic `AKIA...EXAMPLE` key) are
  deliberately ignored by secret scanners; a positive control must plant
  **randomly generated** values or it silently tests nothing.
- Layer A scans history, so deleting a leaked file in a follow-up commit does **not**
  make the branch green — see § 4.

## 3. Exceptions — allowlist discipline

Legitimate exceptions (e.g. the public security contact address in `SECURITY.md`)
live in [`.sanitization-allowlist`](.sanitization-allowlist), one entry per line:

```
<path>:<class>:<expiry YYYY-MM-DD>:<justification>
```

- Every entry names the file, the finding class it suppresses, an expiry date and a
  human-readable justification.
- An **expired entry turns the gate red** until renewed by an explicit review.
- The detector definition files (`scripts/sanitization-check.sh`,
  `.gitleaks.infra.toml`, `.sanitization-allowlist`) necessarily contain the
  patterns they detect and are
  excluded from Layer B scanning; they are governed instead by pull-request review on
  the protected branch. Weakening a detector is a policy change and must be treated
  as one.

## 4. Breach response

If forbidden content reaches published history despite the gate:

1. Rotate/invalidate the exposed value first (if it is a credential).
2. Rewrite the affected history to remove it — this is the **only** sanctioned reason
   for a history rewrite in this repository (see the link-stability contract in
   [README.md](README.md)).
3. Record the incident and the gate improvement that prevents the recurrence; a breach
   that does not produce a new detector pattern or test is not closed.
