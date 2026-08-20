# TAM / SAM / SOM — Talomnia Investor Market Sizing Model

**Data date: 2026-08-20.** Every input carries its own source, class, year and confidence.
Nothing here is averaged across methods. Where methods disagree, the disagreement is
reported as a finding with its cause.

> **TAM is not revenue.** No figure in this model is a forecast of Talomnia's revenue,
> and none should be read as one. TAM bounds what could in principle be addressed;
> Talomnia's revenue to date is **$0** — there are no commercial cases.

---

## 0. The definitional problem that governs everything below

The single largest number in circulation for this category — "the AI agents market" —
carries **two mutually exclusive definitions**, and the source that compiles both says so
outright:

> "The standalone agentic AI market lands between $7 billion and $8.5 billion. Gartner's
> broader view, counting agentic capabilities embedded across enterprise software, reaches
> $201.9 billion in 2026. **That 25x gap is not a contradiction. It is a measurement
> problem.**"
> — softwarestrategiesblog.com, 2026-02-26 (HTTP 200)

| Definition | 2025/26 size | Source class | What it counts |
|---|---|---|---|
| Agentic capability embedded in enterprise software | **$201.9–206.5B** (2026) | MAJOR_CONSULTANCY (Gartner, via secondary) | licence value of software that has agentic features |
| Standalone agentic AI products | **$7.0–8.5B** (2025) | AGGREGATOR (MarketsandMarkets, Precedence, Fortune BI) | products sold as agents |

**Ratio: ~25×.** For 2025 specifically the gap between Gartner ($86.4B) and the vendor
consensus ($7.06–7.92B) is **~11×**.

These may never be summed or averaged. **This model does not use either as a TAM.**
Talomnia does not sell agent software; it sells completed professional work. The market it
addresses is the *spend on that work*, which is measured by different instruments entirely
— which is why the model below is built on government statistics rather than on this
category label.

Second structural warning: **markets 1, 3 and 11 in the evidence base are nested, not
adjacent.** Gartner's "agent builder platforms" ($5.0B, 2026) is a sub-segment of its DSML
segment ($29.9B, 2026), which sits inside its total AI spend ($2,595,667M, 2026). Summing
them triple-counts.

---

## METHOD A — Top-down, supply side (what providers of this work earn)

**Family:** GOV_STATISTIC. **Independence:** measures provider revenue, from the US Census
economic surveys. Shares no input with Method B.

### Formula

```
TAM_A(US) = Rev(NAICS 5415) + Rev(NAICS 5416) + Rev(NAICS 54191)
```

Narrowed from all of NAICS 54 to the three service classes Talomnia Workforce actually
sells into: software/technical delivery, management-and-technical consulting, and
research/analysis.

### Inputs

| Input | Value | Basis | Source | Class | Conf |
|---|---|---|---|---|---|
| NAICS 5415 Computer systems design & related | **$765,640M** | trailing 4 quarters, 2Q25–1Q26, employer firms, US | US Census QSS, `census.gov/services/qss/qss-current.pdf` (200) | GOV_STATISTIC | HIGH (arithmetic on published quarters) |
| NAICS 5416 Mgmt/scientific/technical consulting | **$438,640M** | CY2025, sum of 4 NSA quarters | same | GOV_STATISTIC | HIGH (derived, not a Census-published total) |
| NAICS 54191 Marketing research & public opinion polling | **$29,106M** | 2022, employer firms | US Census SAS Table 2 (200) | GOV_STATISTIC | HIGH for 2022; **stale by 3 years** |
| **TAM_A(US)** | **$1,233,386M ≈ $1.23T** | | | | **MEDIUM-HIGH** |

### Assumptions
1. The three NAICS classes approximate Talomnia's sellable scope. They over-include
   (hardware-adjacent systems integration, environmental consulting) and under-include
   (work booked inside NAICS 5417 R&D or client in-house budgets).
2. Vintages are mixed: two classes are 2025–26, one is 2022. **Not normalised.**

### Sensitivity
| Scenario | Basis | TAM_A(US) |
|---|---|---|
| Narrow — consulting + research only, no systems design | drop 5415 | **$0.47T** |
| Stated | as above | **$1.23T** |
| Broad — all of NAICS 54 | Census QSS CY2025 derived | **$3.11T** |

**Range: $0.47T – $3.11T.** The spread is driven entirely by scope choice, not by
measurement error.

### Global extrapolation — deliberately NOT performed
No government agency publishes a global professional-services total. Eurostat publishes
**value added** (EUR 779.3B, NACE M, 2023), which is not comparable to revenue. The only
global figures available are aggregators, and they disagree by **5.3×** ($1.20T Precedence
vs $6.37T TBRC for overlapping years) — both LOW confidence, both excluded from this model
under the no-single-aggregator rule.

> **Consequence, stated rather than papered over:** a defensible *global* TAM cannot be
> built from the available evidence. Any global figure in this document would be an
> assumption wearing a measurement's clothes. TAM_A is US-only, and the US is roughly a
> quarter of world GDP — which sets the direction of the true global number without
> licensing a specific one.

---

## METHOD B — Bottom-up, demand side (what businesses actually spend on this work)

**Family:** GOV_STATISTIC, but a *different instrument*: business expenditure surveys and
national input-output accounts rather than provider revenue. This is the independence that
SC-2 requires — Method B could be wrong in ways Method A could not, and vice versa.

### B-1 — Census expenditure survey

```
TAM_B1(US) = Σ  "Purchased professional and technical services"  over all SAS-covered
                 buying industries, excluding sub-industries already counted in their parent
```

| Component | Value |
|---|---|
| Main buying sectors (14 sectors incl. NAICS 54, 621, 622, 522, 524, 561, 81…) | $431,603M |
| Additional non-overlapping sectors (19 sectors) | $60,547M |
| Excluded as double-counted subsets | NAICS 5411, 5412, 5414, 5418, 5419, 6211 |
| **TAM_B1(US)** | **$492,150M ≈ $492B** |

Source: US Census SAS 2022 Table 5, `www2.census.gov/programs-surveys/sas/.../sas-22.xlsx`
(HTTP 200, parsed locally). Class GOV_STATISTIC. Year **2022**. Confidence **HIGH** for the
inputs, **MEDIUM** for the total (a sum the Census does not itself publish).

**Boundary:** SAS covers **employer firms in 12 selected service sectors only** —
manufacturing, retail, wholesale and construction are *not* in the survey. TAM_B1 is
therefore a **floor**, not a ceiling.

### B-2 — BEA input-output accounts

```
TAM_B2(US) = Σ Total-Intermediate use of the four detail commodities matching
               Talomnia's service classes
```

| Commodity | Total Intermediate |
|---|---|
| 541610 Management consulting services | $183,376M |
| 541512 Computer systems design services | $155,614M |
| 541511 Custom computer programming services | $12,200M |
| 5419A0 Other prof/sci/tech services (contains marketing research) | $86,802M |
| **TAM_B2(US)** | **$437,992M ≈ $438B** |

Source: BEA Supply-Use, `Use_SUT_Framework_2017_DET.xlsx` from
`apps.bea.gov/industry/iTables Static Files/AllTablesSUP.zip` (HTTP 200, 20.4MB, parsed
locally). Class GOV_STATISTIC. Year **2017** — BEA publishes detail-level commodities only
for 2017. Confidence **HIGH** for the inputs, **MEDIUM** for currency (9 years stale).

**Note on 541511:** its Total Intermediate is small ($12.2B) because most of its output is
**capitalised as intellectual-property investment**, not expensed as an intermediate input.
That is a real accounting boundary, not a data error, and it matters below.

### B-1 vs B-2 convergence

| | Value | Year | Instrument |
|---|---|---|---|
| TAM_B1 | $492.1B | 2022 | expenditure survey |
| TAM_B2 | $438.0B | 2017 | input-output accounts |
| **Spread** | **1.12× (12%)** | 5 years apart | two different instruments |

**Two independent demand-side instruments, built by different Census/BEA programmes five
years apart, agree within 12%.** That is the strongest single result in this model.

### Sensitivity
| Scenario | TAM_B(US) |
|---|---|
| Conservative — BEA 2017 basis, unadjusted | **$0.44T** |
| Stated — Census 2022 basis | **$0.49T** |
| Adjusted — Census 2022 basis grown at NAICS 54's measured +6.5% Y/Y to 2026 | **$0.63T** |

---

## THE HEADLINE DISAGREEMENT — and why it is a finding, not noise

| Method | Instrument | US result | Ratio to A |
|---|---|---|---|
| **A** — supply side | provider revenue | **$1.233T** | 1.00× |
| **B-1** — demand side | business expenditure survey | **$0.492T** | **0.40×** |
| **B-2** — demand side | input-output accounts | **$0.438T** | **0.36×** |

**The methods disagree by ~2.5×, and the cause is identifiable rather than mysterious.**
Provider revenue exceeds business intermediate purchases because provider revenue also
contains:

1. **Sales to government** — Census QSS counts federal/state/local purchases; BEA's
   Total-Intermediate column does not.
2. **Sales to households** — BEA shows $114,273M of PCE against commodity 5412OP.
3. **Exports** — BEA shows $224,890M (5412OP) and $51,912M (5415) of exports.
4. **Capitalised output** — BEA shows $767,254M (5412OP) and $342,948M (5415) booked as
   **IP investment**, not as an expensed input. This is the largest single component of
   the gap.

**Which number is the right denominator for Talomnia?** The demand-side one. Talomnia
sells B2B professional work billed against a customer's operating budget with acceptance
criteria. It does not sell to households, is not currently an exporter of record, and its
output is not capitalised on the client's balance sheet. **An investor should anchor on
~$0.44–0.49T (US), not on $1.23T** — and should treat any pitch that leads with the larger
number as having chosen the flattering instrument.

---

## SAM — servable with the proposed model

```
SAM = TAM_B(US)  ×  share of that spend that is fixed-scope and outcome-specifiable
                 ×  share held by buyers who will transact with a pre-commercial vendor
```

| Factor | Value | Basis | Conf |
|---|---|---|---|
| TAM_B(US), stated case | $492B | above | MEDIUM |
| Fixed-scope / outcome-specifiable share | **unknown** | No source found at any class. Census SAS Table 8 (class-of-customer split) **does not cover NAICS 54**. | — |
| Buyers reachable by a pre-commercial vendor | **unknown** | no evidence | — |

> **SAM is not computed.** Two of its three factors have no evidentiary basis, and the
> honest output of a bottom-up model with unknown factors is `unknown`, not a plausible
> product. What *can* be bounded is the buyer count: **285,007** US employer firms with
> receipts ≥$10M (Census SUSB 2022, [computed] — no official row publishes this cutoff),
> of which **28,581** are in NAICS 54 itself. EU enterprises with 50+ employees:
> **303,073** (Eurostat SBS 2023). UK enterprises ≥£10m turnover: **44,545** (ONS IDBR).

---

## SOM — realistically reachable on an early horizon

At the current stage SOM is **not** bounded by market size. It is bounded by delivery
capacity and by a sales cycle Talomnia has never run. Modelling it from TAM would be the
error this whole document exists to avoid.

```
SOM(12 months) = engagements deliverable  ×  realistic ticket  ×  win rate
```

| Factor | Evidence held | Value |
|---|---|---|
| Realistic ticket, fixed-scope technical engagement | UK CCS DOS7 advertised contract values: £250k–£500k (discovery/alpha), £352k (delivery partner) — GOV_STATISTIC, public-sector | £250k–£500k |
| Realistic ticket, private-sector software project | Clutch avg $132,480; page's own typical range "$10,000 to $49,000" — AGGREGATOR, **internally inconsistent** | $10k–$132k, LOW |
| Day-rate benchmark | UK CCS DOS7 average day rates, 200 roles: developer £833.80, technical architect £953.63 — GOV_STATISTIC | published |
| Engagements deliverable in 12 months | **unknown** — no commercial delivery has ever been run | — |
| Win rate | **unknown** — no pipeline exists | — |

> **SOM is not computed, and the reason is the finding.** Talomnia has **zero** external
> paid engagements. Every input that would make SOM meaningful — capacity under commercial
> conditions, sales-cycle length, win rate, acceptance rate — is a quantity that only the
> first paid cases can produce. A SOM presented today would be an assumption stack, and an
> investor should treat any such number from any vendor at this stage the same way.
> The Evidence Gates in §16 of the main document are precisely the measurements that
> would turn this cell from `unknown` into a computed range.

---

## What this model does NOT claim

- It does not claim a global TAM. No defensible global evidence exists (see Method A).
- It does not use the "AI agents market" as a size for anything (see §0).
- It does not present any figure as Talomnia's potential revenue.
- It does not average the supply-side and demand-side results; it reports both and names
  the right denominator for this business.
- It does not compute SAM or SOM, because the required factors are `unknown` rather than
  small.
