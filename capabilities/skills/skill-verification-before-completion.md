---
projection-of: datarim-skill-verification-before-completion
type: skill
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Skill — Evidence-Backed Completion Gate

**Inputs.** `pending_claim` (markdown), `verification_command` (code)

**Outputs.** `verified_claim` (report)

## Preconditions

- A completion, fix, or passing claim is about to be made, or a commit, pull request, or handoff is imminent
- The rule covers paraphrases and any implication of success, not only exact phrases

## Procedure

1. (analysis) Identify the exact command that would prove the claim before making any completion statement.
2. (shell) Run the full verification command fresh, in the current step, rather than relying on the memory of a previous run.
3. (review) Read the complete output, check the exit code, and count failures before stating any result.
4. (review) For regression tests, demonstrate the red-green cycle: the test must fail with the fix reverted and pass with it restored.
5. (shell) In a shared working tree, probe the current branch first and verify against the committed state of the task branch when the tree has moved.
6. (report) State the claim only together with its evidence, and report the actual status when the output does not confirm success.

## Effects

- Status claims are backed by fresh evidence or corrected to the actual state
- False completion reports are blocked before commits, pull requests, and handoffs

## Evidence obligations

- Fresh verification command output, with exit code, presented together with the claim
- Red-green cycle demonstrated for every regression test
- The actual diff independently checked when accepting delegated agent results
- Committed-state verification cited when the shared tree's checkout differs from the task branch

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-skill-verification-before-completion` (graph revision `datarim-skill-verification-before-completion@r2`,
`content_digest: sha256:7e5ea38b0cfb580c6496e019076a1675f785a06865fe5f4bf9841965e8595e25`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
