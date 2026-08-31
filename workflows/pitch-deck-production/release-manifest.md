# Release manifest — Talomnia Investor Pitch v0.1

Four independent release files: Russian and English, each as PDF and PPTX, each
12 slides. The filename carries the edition version, so a new edition is a new
URL and cannot be served in place of an old one.

Every row below was produced by fetching the **published** file from
talomnia.com and hashing the bytes that came back — not by hashing a local copy
and asserting it is what ships.

| File | URL | Bytes | SHA-256 |
|---|---|---|---|
| RU, PDF | [`talomnia-investor-pitch-ru-v0.1.pdf`](https://talomnia.com/assets/docs/talomnia-investor-pitch-ru-v0.1.pdf) | 137 897 | `a00612a8da13ef7a462c43bb3d04aee2dedbb44c4d34638426f67366502e4e98` |
| RU, PPTX | [`talomnia-investor-pitch-ru-v0.1.pptx`](https://talomnia.com/assets/docs/talomnia-investor-pitch-ru-v0.1.pptx) | 278 140 | `71c76a813ac2959d879d478eef99e7c6ed2744d10f6826f2a79cb12e262c8f2d` |
| EN, PDF | [`talomnia-investor-pitch-en-v0.1.pdf`](https://talomnia.com/assets/docs/talomnia-investor-pitch-en-v0.1.pdf) | 124 710 | `f1f778a7724bb945ee76bb2fb14dab02198b36c800a5ad59c7f34e3b9d549429` |
| EN, PPTX | [`talomnia-investor-pitch-en-v0.1.pptx`](https://talomnia.com/assets/docs/talomnia-investor-pitch-en-v0.1.pptx) | 271 990 | `d0639cf09ae8fa411d9b362b54e956c1480b96e374bcb1660f7ed07d531df3d5` |

Verified 2026-08-31 against the live site.

## Reproducing this manifest

```
for f in talomnia-investor-pitch-{ru,en}-v0.1.{pdf,pptx}; do
  curl -sS "https://talomnia.com/assets/docs/$f" | sha256sum | sed "s|-|$f|"
done
```

A digest that no longer matches means the bytes behind a shipped version changed.
That is a publication-practice failure, not a caching one: a released edition is
never re-cut under a version that has already shipped.

## What this manifest does not claim

It pins bytes, not content quality. It says the four files served today are the
four files this workflow released; it says nothing about whether the deck's
argument is persuasive, and it is not an independent audit of the figures inside.
The deck's factual boundaries are recorded in
[`reconciliation-note.md`](reconciliation-note.md).
