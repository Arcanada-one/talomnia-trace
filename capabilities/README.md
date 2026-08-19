# Capabilities — reusable artifacts a client keeps

Talomnia's position is that a client receives not only the delivered result but the
**reusable capability artifacts** created along the way: roles, competencies, skills
and blueprints. This tree holds their public projections.

| Path | Entity type |
|---|---|
| `roles/` | Who does the work — responsibility profiles. |
| `competencies/` | What the workforce knows how to do. |
| `skills/` | Procedural knowledge — how a class of task is executed. |
| `blueprints/` | Repeatable multi-step work programs. |

Provenance contract:

- Every file here is a **sanitized projection** of an artifact whose authoritative,
  full version lives in a private knowledge repository. Projection is one-way:
  files here are generated from the source, never edited in place.
- Only artifacts that reached the `public-sanitized` lifecycle status may appear
  here; each file's frontmatter carries `projection-of` (source artifact id),
  `source-version`, and `projected` (date).
- The projection passes the same CI sanitization gate as everything else
  ([SANITIZATION.md](../SANITIZATION.md)).
