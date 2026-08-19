# Revision 3 — visual defects: diagnosis, fix, and the checks that could not see them (issue #45)

**Executing contract:** K_id `sha256:a5bf7d75cb382a27203a74e0d7e59aeb2a94f058af1101f597b030ca49ae51b9`, Receipt R_id `sha256:c0ca70876fd0f65a64afb958bd014ff70e58131410e36298d7192c810ed64994` (Bound; published in the issue before delivery). The first intent revision required the design-cluster semantics and terminated **Gap** — the never-authored design-research artifact issue #31 already named; preserved as a record, not papered over.

Executor lane (Talomnia side). Pre-commercial self-use validation case: both sides are performed by Arcanada-operated agents.

## The measured root cause (diagnosed, not assumed)

One defect class explained the navigation and the duplicated diagram together, proven from the browser's own cascade (`getMatchedStylesForNode`): **type-qualified descendant rules outranked the single-class state rules they must never override.**

- `.primary-nav ul {display:flex}` (specificity 0-1-1) also matched the *nested* `ul.nav-more-menu` and defeated `.nav-more-menu {display:none}` (0-1-0) → the «Ещё» dropdown rendered **open at page load**, an absolute-positioned box over the hero — the collision in the customer's screenshot.
- `.diagram svg {display:block}` (0-1-1) defeated `.diagram-v {display:none}` *and* the entire media-query swap (0-1-0) → **both** diagram orientations rendered at every viewport; the vertical one was the "giant boxes" duplicate.
- The clipped text was physical: the widest RU sublabel measures **139 px** (`getBBox`) inside a **132 px** box.
- Two template-referenced classes (`diagram-flow`, `card-desc-full`) had no CSS rules at all — now **implemented**, per the boundary, not deleted.

## R3-04 — why 170 green checks saw none of it, and the red run

No existing check ever computed a style or a box: the nav-fit check is a character-count budget by its own header comment, and every other suite asserts on HTML strings. **Cascade specificity is invisible to text-level checks by construction.**

The replacement is a rendered-output suite (real browser over the real application with its database): computed visibility of the diagram variants, dropdown state at load and its position after a click, nav row geometry inside its container, `getBBox` of every SVG label against its box, horizontal overflow at 1440/1080/375, and a class-coverage check (every template class must have a CSS rule). **On the pre-fix build it failed 6 of 13** — the R3-04 red run, captured before any fix — and 13/13 after. It runs in CI with no silent skip: the first CI round proved that contract by failing loudly on a runner without a browser (the lane now provisions its own).

## The second defect layer, found only because verification ran against LIVE

After the cascade fix deployed, the live page **still** reproduced the defects: fresh HTML referencing an **edge-cached pre-fix stylesheet** (unversioned URL, `s-maxage 3600`). This is the exact mechanism that made the customer's screenshot disagree with a green suite. Structural fix: **asset URLs now carry the release's source-commit stamp**, so every release references asset URLs no earlier release ever used; cache purge became an optimization instead of a correctness dependency (and the working purge dispatch path was re-verified twice, `ok=True`).

## R3-05 — screenshot verification in the working loop

`scripts/visual-verify.mjs` (site repository): screenshots plus geometry assertions — home in both languages and the dense Atlas page, at 1440 px and 375 px — runnable against a local build, staging or production, exit-red on any violation. Wired into the CI test pipeline's rendered lane. Two of its own defects were found by its own failures during this work and fixed (a CSSOM walk blind under nesting-era Chromium; a parsed-CSS wait) — which is the working loop doing its job.

## Evidence in this directory

| File | What it shows |
|---|---|
| `home-ru-1440-BEFORE.png` | Live Russian home, desktop, pre-fix: dropdown open over the hero, the diagram rendered twice (compact row + giant vertical duplicate) |
| `home-ru-1440-AFTER.png` | Same page after: one nav row, closed dropdown, exactly one diagram, label inside its frame |
| `home-ru-375-after.png` | Mobile home after: single (vertical) diagram variant |
| `atlas-ru-1440-after.png` | The dense page after, desktop |

Final state: production serves release `20260819T225233Z` built from the site repository's **main HEAD** (`6c3d3c0`), which also carries the refund-mandate fix (R2-01, deployed out of turn at 22:04Z per the customer's addendum — reported in issue #44), the Workforce revision and the CI browser-resolution fix from the parallel lanes; the deploy-drift check is **green** (run 32310801292); `visual-verify` reports **6/6 renders green against production**; the direct live probe confirms one visible diagram, a closed menu, a single nav row and zero SVG label overflows.

Imagery (the report's fourth observation) is **deliberately not addressed here**: it is not among R3-01..R3-05, and the boundary forbids decorative filler that dilutes the evidence surface — real imagery needs the design capability that issue #31 already requires to be authored first.
