# CRN-M-01 / D4 — Source Freshness v1

## Decision

`PASS WITH WATCHLIST — FREEZE CANDIDATE READY`

Baseline remote commit:

`e2e41e6854b20e9dea3ac19e7c1714b58dd11797`

Freshness date:

`2026-08-31`

Scope:

```text
D4 Architecture
G1–G8 source gates
Lesson Parts I–IX
Practice / Reasoning
Expected Result
Verification Rubric
Final Alignment
```

This pass revalidates **external** normative, regulatory, OEM-boundary and research claims before D4 Freeze.

---

# 1. Result summary

```text
External source records checked: 31
Official/regulatory/standards:    25
Research records:                 6
Watchlist records:                7

Stale source requiring removal:   0
Draft misused as current:         0
Withdrawn source used as current: 0
Numeric-boundary leak:            0
Lesson correction required:       0
```

Decision:

> No external-source defect blocks D4 Freeze.

---

# 2. Critical current-status checks

## ISO 4306-1:2026

Published Edition 5, July 2026.

It replaces ISO 4306-1:2007.

D4 correctly keeps this current international terminology separate from the still-current Russian/interstate terminology branch.

Status:

`PASS`

---

## ISO 16625:2025

Published Edition 2, February 2025.

Replaces ISO 16625:2013.

D4 correctly treats it as the current international rope/drum/sheave selection framework.

Status:

`PASS`

---

## ГОСТ 33710-2015

Rosstandart: `Действует`.

The registered correction effective 2023-02-25 remains part of the status record.

D4 correctly does **not** treat ISO 16625:2025 as automatically replacing this national/interstate framework.

Status:

`PASS`

---

## ISO 4309:2017

Still the current **published** Edition 5.

ISO now marks it `to be revised`.

A future Edition 6 project exists as `ISO/CD 4309`, currently under development.

D4 already uses the correct boundary:

```text
ISO 4309:2017
=
CURRENT PUBLISHED

ISO/CD 4309
=
FUTURE / DRAFT WATCH
```

Status:

`PASS + WATCH`

---

## ГОСТ 33718-2015

Rosstandart: `Действует`.

The Russian/interstate inspection/discard branch therefore remains live in parallel with ISO 4309:2017.

Status:

`PASS`

---

## ISO 4301-1:2016

Published Edition 3, confirmed 2021 and current.

The duty classification coordinates used by D4 remain correctly addressed.

Status:

`PASS`

---

## ISO 12482:2014

Still published, but marked `to be revised`.

`ISO/CD 12482`, Edition 2, is under development and intended to replace it.

D4 correctly uses the 2014 publication for current crane design-working-period context and the CD only as freshness awareness.

Status:

`PASS + WATCH`

---

## ISO 21669:2005

Published Edition 1.

Systematic review completed in 2025; standard confirmed and current.

D4 correctly uses it only as a **test-method anchor** for rotational properties.

Status:

`PASS`

---

## ISO 16841:2014

Published Edition 1, confirmed 2024.

The installation pulling-eye boundary remains current.

Status:

`PASS`

---

# 3. Chain-source freshness

## ISO 3077:2001

Published Edition 3, confirmed in 2023.

Current.

## ISO 7592:1983

Published and still current.

The ISO page currently shows a review-stage state; therefore it stays on the watchlist.

D4 uses no closed discard value from it.

## ГОСТ 30188-97

Rosstandart: `Действует`.

## ГОСТ EN 818-7-2010

Rosstandart: `Действует`.

Effective in Russia from 2025-01-01.

## ГОСТ 33172-2014

Rosstandart: `Действует`.

No chain-source replacement discovered that invalidates Part VII.

Status:

`PASS + ISO 7592 WATCH`

---

# 4. NDT / inspection freshness

## ГОСТ ISO 9934-1-2021

Rosstandart: `Действует`.

Effective 2026-03-11.

It replaced ГОСТ Р ИСО 9934-1-2011 from that date.

D4 uses the new current document.

## ISO 3452-1:2021

Published Edition 3.

Currently under systematic review.

It remains the current published edition.

Its public scope still explicitly states that it is **not intended for acceptance criteria**.

## ISO 9712:2021

Published Edition 5.

Current qualification/certification framework.

## ГОСТ Р ИСО 9712-2023

Rosstandart: `Действует`, effective 2024-01-01.

D4 qualification boundary remains current.

Status:

`PASS + ISO 3452-1 WATCH`

---

# 5. Russian operational frame

## ФНП №461

Current public legal reference:

`Приказ Ростехнадзора №461`

Revision:

`16.04.2026`

Validity is limited to:

`01.09.2032`

D4 uses FNP only as source-bound operational/legal context and does not universalize a numeric MRT threshold.

Status:

`PASS + FUTURE DATE WATCH`

---

# 6. Research freshness and domain guards

## Ridge 2026

Current published six-strand bending–tension fatigue research.

Still correctly bounded by:
- six-strand data;
- strong offshore/mooring context;
- no universal crane-rope endurance transfer.

`PASS`

## Kamarudin et al. 2026

Current Wear paper.

Model remains construction/test-bound; reported calibration numbers are **not imported** into Lesson as universal thresholds.

`PASS`

## Dyson et al. 2026

Online-first August 10, 2026.

Current and very fresh.

D4 uses it only for lubrication/fretting-mechanism evidence, not whole-rope life prediction.

`PASS`

## Ogata et al. 2026

Published in Engineering Failure Analysis.

Still supports the narrow claim that history-dependent/nonlinear progression can outperform a simple Miner representation in the reported tests.

D4 does not promote it as a universal rope-life method.

`PASS`

## Onur & Imrak 2012

Historical research remains intentionally historical.

Its role is methodological:
a regression fit is valid in the investigated tensile-load / D/d / rope-construction domain.

It is **not** treated as current normative authority.

`PASS`

## Xue & Sun 2026

Published Measurement paper.

Still supports the narrow measurement claim that large lift-off weakens MFL defect signal / complicates discrimination.

It is not used as an inspection acceptance standard.

`PASS`

---

# 7. Numeric-boundary audit

## Pretension percentages

The D4 gate/lesson contains example percentages only to demonstrate a denominator trap.

They remain tagged by:

```text
NUMBER
+
DENOMINATOR
+
SOURCE
+
CONTEXT
```

No universal pretension value is created.

`PASS`

## Kamarudin numerical model parameters

The research abstract contains calibrated model-specific numbers.

D4 does **not** transfer them into a universal rope model.

`PASS`

## Miner D = 1

After Technical Editorial and Red Team:

```text
D = 1
≠
UNIVERSAL FAILURE / DISCARD CRITERION
```

The equation remains a teaching model unless an applicable source-defined procedure adopts it.

`PASS`

## MRT / NDT thresholds

No closed ISO/FNP/OEM threshold is reconstructed into a universal SkillsVault rule.

`PASS`

## Swivel / rotation thresholds

No product-catalog threshold is promoted into ISO or universal applicability.

`PASS`

---

# 8. Draft / published separation

The following are explicitly **not current requirements**:

```text
ISO/CD 4309 — Edition 6
ISO/CD 12482 — Edition 2
```

Their only D4 role is:

`FRESHNESS WATCH`

No draft-to-current laundering found.

`PASS`

---

# 9. Watchlist

These sources are valid now but should be rechecked before a future v2:

```text
ISO 4309:2017
→ current published, to be revised
→ ISO/CD 4309 Ed.6 under development

ISO 12482:2014
→ current published, to be revised
→ ISO/CD 12482 Ed.2 under development

ISO 7592:1983
→ current published, review-stage watch

ISO 3452-1:2021
→ current published, systematic-review watch

FNP №461
→ current 2026 revision
→ formal validity currently limited to 2032-09-01

OEM web guidance
→ product/web content can change without standards-style edition control
→ recheck at each real field decision
```

Watchlist status does **not** block current D4 Freeze.

---

# 10. Source Freshness conclusion

No source correction is required before freeze.

The D4 source architecture remains coherent:

```text
CURRENT
≠
AUTOMATICALLY APPLICABLE

PUBLISHED
≠
DRAFT

STANDARD
≠
OEM PRODUCT RULE

RESEARCH MODEL
≠
NORMATIVE METHOD

NUMBER
≠
PORTABLE RULE WITHOUT ADDRESS
```

Final Source Freshness status:

`COMPLETE — PASS WITH WATCHLIST`

---

# Next

`CRN-M-01 / D4 FREEZE / v1`

Freeze must:

```text
CAPTURE CURRENT D4 TREE
↓
VERIFY ALL SHA256 MANIFESTS
↓
CREATE FREEZE MANIFEST / INDEX
↓
MARK D4 FROZEN v1
↓
CREATE IMMUTABLE VERSION / TAG CONTRACT
```

After D4 Freeze:

`CRN-M-01 Full Topic Freeze`
