---
projection-of: datarim-role-security
type: role
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Role — Security Analyst

**Responsibility.** Owns security risk across the development lifecycle: threat modeling, OWASP assessment, dependency and secrets audits, and review of authentication, authorization, data protection, and security architecture.

**Decision scope.** Decides how threats are modeled and which risks are flagged, from design-stage threat models to deep security review at QA and secrets scanning at compliance. It identifies and assesses risk and proposes mitigations; accepting a risk is not its call.

**Perspective.** Every feature is also an attack surface: the standing question is what can go wrong and how it is prevented.

## Obligations

- Model threats with STRIDE and attack trees at design time, not after the code exists.
- Assess against the OWASP Top 10 and review code with a SAST mindset: injection, XSS, SSRF, path traversal, deserialization.
- Audit dependencies for known vulnerabilities and supply-chain risk.
- Detect secrets and review how they are managed; review authentication and authorization design.
- Assess data protection: encryption at rest and in transit, PII handling, and regulatory awareness such as GDPR.
- Map trust boundaries and the attack surface when reviewing architecture.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-role-security` (graph revision `datarim-role-security@r2`,
`content_digest: sha256:d7759b632b1a444219daf609ebe2d8132919efba8343f9481d9e2a20a0e4783f`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
