# CRN-M-02 / D4 — Source Freshness v1

## Decision

`PASS WITH WATCHLIST — FREEZE CANDIDATE READY`

Baseline remote commit:

`3c640e87602b75c656f58600319250965ba9f19e`

Freshness date:

`2026-09-02`

Scope:

```text
D4 Scope / Source Gate
Lesson + Technical Editorial + Red Team + Reader Experience
Practice / Practice Reasoning
Expected Result
Verification Rubric
Final Alignment
```

This pass revalidates external source editions/status, development records and the D4 method-selection / V&V / robustness / authority boundaries before immutable D4 Freeze.

---

# 1. Result summary

```text
Published/regulatory anchors checked:             10
Development companion records checked:             2
Equipment-specific authority boundary:              1
Watchlist records:                                  5

Stale anchor requiring removal:                     0
Draft misused as current requirement:               0
Withdrawn edition used as current:                   0
Method-role leakage requiring correction:           0
False validation-status leakage:                    0
Unsourced robustness/uncertainty leakage:            0
Remaining-life authority leakage:                   0
Equipment-authority leakage:                        0
Content correction required:                        0
```

Decision:

> No external-source defect blocks CRN-M-02 D4 Freeze.

---

# 2. Critical current-status checks

## ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

ISO metadata checked 2026-09-02: Edition 5, publication 2026-07, status Published / stage 60.60. ISO 4306-1:2007 is the prior withdrawn edition.

D4 role: terminology and component boundary only. Naming a component correctly does not determine the governing proof method or equipment-specific authority.

Status: `PASS`

Public metadata: https://www.iso.org/standard/78820.html

---

## ISO 16625:2025

`Cranes and hoists — Selection of wire ropes, drums and sheaves`

ISO metadata checked 2026-09-02: Edition 2, publication 2025-02, status Published / stage 60.60. Public metadata continues to place rope-drive geometry and drum/sheave geometry inside proof-of-competence/selection logic.

D4 role: primary topic-specific proof/selection boundary. Public metadata may identify the method family; it does not unlock closed proof factors, criteria, tables or a current-equipment verdict.

Status: `PASS`

Public metadata: https://www.iso.org/standard/77889.html

---

## ISO 10972-1:2025

`Cranes — Requirements for mechanisms — Part 1: General`

ISO metadata checked 2026-09-02: Edition 2, publication 2025-02, status Published / stage 60.60. Its public abstract still distinguishes general mechanism/component requirements from proof-of-competence calculations for yield, fatigue and wear limit states.

D4 role: explicit guard against treating every requirements/selection document as the governing proof method.

Status: `PASS`

Public metadata: https://www.iso.org/standard/85884.html

---

## ISO 8686-1:2012

`Cranes — Design principles for loads and load combinations — Part 1: General`

ISO metadata checked 2026-09-02: Edition 2, status Published, current lifecycle stage 90.60 / Close of review. The public abstract still anchors rigid-body kinetic/elastostatic approaches and permits more advanced calculations/tests only where equivalent competence is demonstrated.

D4 role: load/load-combination and model-fidelity boundary. “More detailed model” remains an adequacy claim to demonstrate, not an automatic status promotion.

Restriction: no dynamic factor, load combination or parameter value is reconstructed from public metadata.

Status: `PASS + WATCH`

Public metadata: https://www.iso.org/standard/59417.html

---

## ISO 20332:2016

`Cranes — Proof of competence of steel structures`

ISO metadata checked 2026-09-02: Edition 2, status Published / confirmed current, stage 90.93. The public abstract still identifies limit-state proof of competence for crane steel structures and intended use with applicable ISO 8686 loads/load combinations.

D4 role: proof-method comparison and scope mapping. D4 does not assume every drum, shaft, sheave, block or mechanism component is automatically inside this scope.

Status: `PASS`

Public metadata: https://www.iso.org/standard/62663.html

---

## ISO 4301-1:2016

`Cranes — Classification — Part 1: General`

ISO metadata checked 2026-09-02: Edition 3, Published / confirmed current, stage 90.93. Classification remains linked publicly to working cycles, load spectrum and average displacements.

D4 role: duty/classification input boundary. Classification can be an input to a method but is not itself remaining life, proof adequacy or operating permission.

Status: `PASS`

Public metadata: https://www.iso.org/standard/63070.html

---

## ISO 9927-1:2013

`Cranes — Inspections — Part 1: General`

ISO metadata checked 2026-09-02: Edition 3, Published / confirmed current, last confirmed 2023.

D4 role: inspection evidence boundary. Inspection can challenge/support a model within the actual inspection scope; it is not automatically design proof, full validation, absence-of-defect proof or equipment authority.

Status: `PASS`

Public metadata: https://www.iso.org/standard/51102.html

---

## ISO 4309:2017 and ISO/CD 4309 Edition 6

Current published authority remains ISO 4309:2017 Edition 5. ISO lifecycle now shows stage 90.92 / to be revised, while Edition 6 remains a Committee Draft at stage 30.20 (CD registered 2026-06-29; consultation initiated 2026-06-30).

D4 keeps the published edition and draft strictly separated. The draft is a change-risk watch record, not current normative authority.

Status: `PASS + WATCH`

Published metadata: https://www.iso.org/standard/66759.html

Development metadata: https://www.iso.org/standard/90256.html

---

## ISO 12482:2014 and ISO/CD 12482 Edition 2

Current published authority remains ISO 12482:2014 Edition 1 at stage 90.92 / to be revised. Edition 2 remains a Committee Draft at stage 30.20.

D4 role: monitoring/design-working-period context and history/input boundary. Neither public metadata nor generic D4 reasoning authorizes a numeric remaining-life, life-extension or return-to-service verdict.

Status: `PASS + WATCH`

Published metadata: https://www.iso.org/standard/57481.html

Development metadata: https://www.iso.org/standard/91046.html

---

## ФНП ПС №461

ConsultantPlus metadata checked 2026-09-02: Приказ Ростехнадзора №461 remains shown in редакция от 16.04.2026; document validity is limited through 01.09.2032.

D4 role: Russian regulatory/authority boundary. A SkillsVault calculation or review does not replace prescribed operating, examination, repair, replacement, prohibition or expert procedures.

Status: `PASS`

Public reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

---

## Passport / OEM / actual equipment records

No freshness check can turn a generic source into actual-equipment configuration authority. Current passport/OEM/design/maintenance records remain mandatory where method applicability, geometry, material, duty, permitted alternatives, repair status or field authority depend on them.

Status: `PASS / EQUIPMENT-SPECIFIC LOCK`

---

# 3. D4 method-governance claim-boundary audit

The accepted D4 content remains aligned to the revalidated sources:

- decision question / claim class comes before method prestige;
- public source metadata can identify a candidate method family but cannot prove final applicability to the actual component/configuration;
- a requirements/selection document is not automatically the proof-of-competence method for a different limit state;
- a number found in a primary source still requires the exact branch, conditions and current-case mapping;
- model fidelity is not validation status;
- cross-check agreement is not real-system validation;
- parent-model validation does not automatically validate a child/submodel interface;
- two programs can share one wrong source/configuration/input and therefore share a common-mode error;
- robustness is only as broad as the sourced and justified scenario envelope;
- no observed defect is not proof of defect absence unless coverage/observability support that claim;
- monitoring/history is not a numeric remaining-life verdict;
- an analysis stop is not permission to continue operation;
- a technical recommendation is not an authorized equipment decision.

No source-status change requires correction of Lesson, Practice, Reasoning, Expected Result, Rubric or Final Alignment.

`PASS`

---

# 4. Proof / life / authority locks

The following remain locked unless exact applicable sources, inputs, equipment records and required competence/authority are available:

- closed paid proof factors, tables, coefficients or exact algorithms;
- actual dynamic factors and load combinations;
- actual component strength/fatigue/contact/bearing proof;
- numeric geometry acceptance or discard limits not available in an exact applicable source;
- numeric remaining-life/design-working-period/life-extension result;
- specialist NDT/MRT interpretation outside qualified scope;
- repair, redesign, rerouting or modification approval;
- field acceptance, return-to-service or continued-operation permission.

Freshness found no leakage of these claim classes into accepted D4 content.

`PASS`

---

# 5. Watchlist

```text
WATCH-01  ISO 8686-1:2012
Reason: current published Part 1 remains at lifecycle stage 90.60 / Close of review.

WATCH-02  ISO 4309:2017
Reason: current published Edition 5 is at 90.92 / to be revised.

WATCH-03  ISO/CD 4309 — Edition 6
Reason: active Committee Draft at stage 30.20; never use as current authority before publication/replacement.

WATCH-04  ISO 12482:2014
Reason: current published Edition 1 is at 90.92 / to be revised.

WATCH-05  ISO/CD 12482 — Edition 2
Reason: active Committee Draft at stage 30.20; intended future replacement remains non-normative for current D4.
```

No watchlist item requires a D4 correction today.

---

# 6. Freeze decision

```text
Final Alignment:                     PASS
Published/regulatory freshness:      PASS
Draft/current separation:            PASS
Method-role separation:              PASS
V&V status discipline:               PASS
Common-mode independence guard:      PASS
Robustness-envelope provenance:       PASS
Remaining-life guard:                PASS
Equipment/OEM authority guard:       PASS
D1 frozen prerequisite:              IMMUTABLE
D2 frozen prerequisite:              IMMUTABLE
D3 frozen prerequisite:              IMMUTABLE
FROZEN_INDEX:                        UNCHANGED
Content corrections:                 NONE
Watchlist:                           ACTIVE / NON-BLOCKING

D4 FREEZE CANDIDATE:                 READY
```

Next:

`CRN-M-02 / D4 FREEZE / v1 — immutable D4 package, manifests, frozen index and tag contract`
