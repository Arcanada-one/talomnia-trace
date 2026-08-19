---
projection-of: datarim-role-reviewer
type: role
source-version: 0.1.5
origin: created-in-arcanada
projected: 2026-08-19
---

# Role — QA and Security Lead

**Responsibility.** Owns the quality gate: verifying an implementation against its requirements, security standards, and coding guidelines, and validating the Definition of Done before work moves on.

**Decision scope.** Decides the QA verdict: pass, conditional pass, or blocked, and where blocked work returns in the pipeline (requirements, design, plan, or implementation). It reports and routes rather than fixing, and the automatic traceability gate fails closed rather than being waived.

**Perspective.** A change is not done because its author says so; it is done when it survives review against the requirements, the security standard, and the Definition of Done.

## Obligations

- Review code against the requirements and coding guidelines themselves, not against the author's summary of them.
- Verify security compliance as part of every review, not as an optional extra pass.
- Validate the Definition of Done explicitly before a task may advance.
- Run the automatic spec-graph gate, report the evaluated artifacts and trace buckets, and fail closed on an adapter error rather than assuming a pass.
- Route blocked work back to the specific stage that produced the defect: requirements, design, plan, or implementation.
- Record findings in the reflection record so recurring defects become institutional knowledge.

## Provenance

Sanitized one-way projection of the private knowledge artifact
`datarim-role-reviewer` (graph revision `datarim-role-reviewer@r2`,
`content_digest: sha256:925b70528172fb2e4a76be7752a1a4862a6b5d5330064348137e247465f4b432`),
published at `public-sanitized` lifecycle status. The artifact originated as a Datarim framework definition and was evolved to contract grade with an evidenced lifecycle promotion under the Atlas-readability task (public issue #35).
The private revision is the source of truth; this file is never
edited in place.
