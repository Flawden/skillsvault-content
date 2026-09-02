# CRN-M-02 / D3 — Source Freshness v1

## Decision

`PASS WITH WATCHLIST — FREEZE CANDIDATE READY`

Baseline remote commit:

`cdc4cc48ff9dc69707a956beb3b4a38ab580f69e`

Freshness date:

`2026-09-02`

Scope:

```text
D3 Scope / Source Gate
Lesson + Technical Editorial + Red Team + Reader Experience
Practice / Practice Reasoning
Expected Result
Verification Rubric
Final Alignment
```

This pass revalidates external source editions/status, active development records and the D3 causal-analysis authority boundaries before immutable D3 Freeze.

---

# 1. Result summary

```text
Primary external/source-boundary anchors checked: 10
Development companion records checked:          2
Current published/regulatory anchors:            8
Equipment-specific authority boundary:           1
Watchlist records:                               5

Stale anchor requiring removal:                  0
Draft misused as current requirement:            0
Withdrawn edition used as current:                0
Formal-proof authority leak:                     0
Remaining-life authority leak:                   0
Inspection/evidence authority leak:              0
Equipment-authority leak:                        0
Content correction required:                     0
```

Decision:

> No external-source defect blocks CRN-M-02 D3 Freeze.

---

# 2. Critical current-status checks

## ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

ISO metadata checked 2026-09-02:

- Edition 5;
- publication date 2026-07;
- status: Published / International Standard;
- ISO lifecycle identifies ISO 4306-1:2007 as the previous withdrawn edition.

D3 uses this as terminology/component-role context only. Vocabulary and diagrams do not become equipment-specific design authority.

Status: `PASS`

Public metadata: https://www.iso.org/standard/78820.html

---

## ISO 16625:2025

`Cranes and hoists — Selection of wire ropes, drums and sheaves`

ISO metadata checked 2026-09-02:

- Edition 2;
- publication date 2025-02;
- status: Published;
- ISO 16625:2013 is withdrawn;
- the public abstract places rope-drive, drum and sheave geometry inside a proof-of-competence/selection problem.

D3 uses this as a formal-method boundary. It may reason about causal dependencies and evidence needs, but it does not reconstruct paid proof factors, selection criteria, D/d values or geometry limits.

Status: `PASS`

Public metadata: https://www.iso.org/standard/77889.html

---

## ISO 4301-1:2016

`Cranes — Classification — Part 1: General`

ISO metadata checked 2026-09-02:

- Edition 3;
- publication date 2016-07;
- status: Published / confirmed current;
- last confirmed in 2021;
- public metadata links classification to working cycles, load spectrum and average displacements.

D3 uses this only to distinguish present state from accumulated duty/history. It does not infer an actual equipment class or classification factor.

Status: `PASS`

Public metadata: https://www.iso.org/standard/63070.html

---

## ISO 8686-1:2012

`Cranes — Design principles for loads and load combinations — Part 1: General`

ISO metadata checked 2026-09-02:

- Edition 2;
- publication date 2012-12;
- status: Published;
- current lifecycle stage: 90.60 / Close of review;
- the ISO/TC 96/SC 10 catalogue still lists ISO 8686-1:2012 as the published Part 1 and does not show a separate replacement project for Part 1 at this check.

D3 uses only the public method boundary: transient/load-combination effects require an explicit analysis framework. No ISO dynamic factor, load combination, proof value or design verification is reproduced or inferred.

Status: `PASS + WATCH`

Public metadata: https://www.iso.org/standard/59417.html

---

## ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`

ISO metadata checked 2026-09-02:

- Edition 5 remains the current published edition;
- status: Published;
- lifecycle stage: 90.92 / to be revised;
- Edition 6 is under development;
- public metadata continues to identify multi-layer/crossover deterioration as relevant rope-condition context.

D3 uses this only as degradation/localization evidence context. Observation of a crossover/local damage signature is not an automatic discard, acceptance or root-cause verdict.

Status: `PASS + WATCH`

Public metadata: https://www.iso.org/standard/66759.html

---

## ISO/CD 4309 — Edition 6

ISO development metadata checked 2026-09-02:

- Edition 6;
- status: Committee Draft / under development;
- stage: 30.20, CD consultation initiated;
- intended future replacement path for ISO 4309:2017.

D3 correctly keeps it outside current normative authority.

Status: `WATCH / DRAFT ONLY`

Development metadata: https://www.iso.org/standard/90256.html

---

## ISO 9927-1:2013

`Cranes — Inspections — Part 1: General`

ISO metadata checked 2026-09-02:

- Edition 3;
- publication date 2013-06;
- status: Published / confirmed current;
- last reviewed and confirmed in 2023.

D3 uses this as an inspection-evidence boundary only. An inspection record can support an observation; it does not by itself supply design verification, remaining-life proof, specialist NDT interpretation or intervention authority.

Status: `PASS`

Public metadata: https://www.iso.org/standard/51102.html

---

## ISO 12482:2014

`Cranes — Monitoring for crane design working period`

ISO metadata checked 2026-09-02:

- Edition 1;
- publication date 2014-09;
- status: Published;
- lifecycle stage: 90.92 / to be revised;
- public metadata links long-term actual duty, original design duty/classification and inspection focus.

D3 uses this to teach that accumulated history is a distinct evidence object. It does not calculate, certify or predict the remaining design life of an actual crane.

Status: `PASS + WATCH`

Public metadata: https://www.iso.org/standard/57481.html

---

## ISO/CD 12482 — Edition 2

ISO development metadata checked 2026-09-02:

- Edition 2;
- status: Committee Draft / under development;
- stage: 30.20, CD consultation initiated;
- ISO metadata states that it will replace ISO 12482:2014.

It remains watch-only and is not used as a current requirement.

Status: `WATCH / DRAFT ONLY`

Development metadata: https://www.iso.org/standard/91046.html

---

## ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Status checked 2026-09-02:

- current reference is the edition of 16.04.2026;
- the document is valid through 01.09.2032;
- the rules retain explicit regulatory domains for operation, technical examination, repair/reconstruction/modernization and conformity/expert assessment of lifting appliances.

D3 therefore keeps the correct authority boundary: causal-analysis training does not substitute for the documentation, procedure, competence or approval required for real equipment decisions.

Status: `PASS`

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

---

# 3. D3 causal-analysis claim-boundary recheck

Freshness confirms that accepted D3 content remains bounded as intended:

- bounded causal support is not formal root-cause certification;
- a source title or document existence is not proof that a method is applicable;
- method applicability is separate from input-data sufficiency, competence and authority;
- generic `ΣF = m·a` / `ΣM = I·α` reasoning does not import ISO 8686 dynamic factors or load combinations;
- qualitative/directional sensitivity does not identify a causal effect or unlock design proof;
- snapshot observations are separated from accumulated duty/history;
- monitoring/history context does not produce an actual design-working-period or remaining-life verdict;
- inspection evidence does not automatically become specialist NDT/MRT interpretation or acceptance/discard authority;
- rope-condition/localization evidence does not reconstruct ISO 4309 discard criteria;
- rope-drive geometry context does not reconstruct ISO 16625 proof/selection criteria;
- before/after maintenance remains a change bundle unless evidence controls the relevant confounders;
- non-detection remains gated by observability, coverage, mapping and event applicability;
- equipment-specific repair, rerouting, redesign, life extension or return-to-service remains outside D3 authority.

No source-status change requires a Lesson, Practice, Reasoning, Expected Result, Rubric or Final Alignment correction.

`PASS`

---

# 4. Proof / design / remaining-life locks

The following claim classes remain locked unless the exact applicable method, inputs, equipment documentation and required competence/authority are available:

- paid proof-of-competence factors or procedures;
- numeric ISO dynamic factors or load combinations;
- numeric design, stress, bearing, contact or acceptance criteria;
- numeric discard thresholds reconstructed from paid text;
- fatigue-life or remaining-life calculations;
- actual design-working-period conclusion;
- formal specialist NDT/MRT interpretation;
- actual equipment class or duty-factor assignment when not documented;
- equipment-specific corrective-action, repair, redesign, rerouting, modification or life-extension decision;
- field acceptance / return-to-service authority.

Freshness found no leakage of these claim classes into accepted D3 content.

`PASS`

---

# 5. Evidence-role and equipment-authority boundary

D3 correctly keeps evidence roles question-specific:

- observation/measurement supports what was actually observed within its coverage and mapping;
- history/monitoring supports accumulated-duty or sequence questions within the available record;
- passport/OEM/design documentation supports actual configuration, permitted limits and equipment-specific design information;
- formal standards can define a method/boundary but do not prove that the method is applicable or that sufficient input data/competence exists;
- specialist evidence carries only the authority of the actual qualified method and scope performed.

For real equipment, the actual passport/OEM/manual, maintenance/event history, applicable regulatory procedure and required competent specialist remain authoritative where the question depends on them.

Freshness found no evidence-role collapse or equipment-authority leak.

`PASS`

---

# 6. Watchlist

```text
WATCH-01
ISO 8686-1:2012
Reason: published Part 1 is currently at lifecycle stage 90.60 / Close of review; recheck the review outcome before a future content revision.

WATCH-02
ISO 4309:2017
Reason: current published Edition 5 is at 90.92 / to be revised.

WATCH-03
ISO/CD 4309 — Edition 6
Reason: active Committee Draft at stage 30.20; future publication must replace the current-source record before a later version/freeze.

WATCH-04
ISO 12482:2014
Reason: current published Edition 1 is at 90.92 / to be revised.

WATCH-05
ISO/CD 12482 — Edition 2
Reason: active Committee Draft at stage 30.20 and explicitly intended to replace ISO 12482:2014.
```

No watchlist item requires D3 content correction today.

---

# 7. Freeze decision

```text
Final Alignment:                    PASS
Current published/regulatory:       PASS
Development/current separation:     PASS
D3 causal-analysis claim limits:    PASS
Formal-proof authority guard:       PASS
Remaining-life authority guard:     PASS
Inspection/evidence-role guard:     PASS
Equipment/OEM authority guard:      PASS
D1 frozen prerequisite:             IMMUTABLE
D2 frozen prerequisite:             IMMUTABLE
FROZEN_INDEX:                       UNCHANGED
Content corrections:                NONE
Watchlist:                          ACTIVE / NON-BLOCKING

D3 FREEZE CANDIDATE:                READY
```

Next:

`CRN-M-02 / D3 FREEZE / v1 — immutable D3 package, manifests, frozen index and tag contract`
