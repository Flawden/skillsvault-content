# CRN-M-02 / D2 — Source Freshness v1

## Decision

`PASS WITH WATCHLIST — FREEZE CANDIDATE READY`

Baseline remote commit:

`89548b636c718881189a90c3a35c2888b92c974c`

Freshness date:

`2026-09-02`

Scope:

```text
D2 Scope / Source Gate
Lesson + Technical Editorial + Red Team + Reader Experience
Practice / Practice Reasoning
Expected Result
Verification Rubric
Final Alignment
```

This pass revalidates the external source anchors, D2-specific geometry/spooling/classification boundaries and equipment-authority guard before immutable D2 Freeze.

---

# 1. Result summary

```text
Primary external/source-boundary anchors checked: 6
Development companion records checked:          1
Current published/regulatory anchors:            5
Equipment-specific authority boundary:           1
Watchlist records:                               2

Stale anchor requiring removal:                  0
Draft misused as current requirement:            0
Withdrawn edition used as current:                0
Numeric claim-lock leak:                         0
Classification-authority leak:                   0
Equipment-authority leak:                        0
Content correction required:                     0
```

Decision:

> No external-source defect blocks CRN-M-02 D2 Freeze.

---

# 2. Critical current-status checks

## ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

ISO metadata checked 2026-09-02:

- Edition 5;
- publication date 2026-07;
- status: Published / International Standard;
- ISO life-cycle metadata identifies ISO 4306-1:2007 as the previous withdrawn edition.

D2 uses this as terminology/component-role context only. It does not turn vocabulary diagrams into equipment-specific design authority.

Status: `PASS`

Public metadata: https://www.iso.org/standard/78820.html

---

## ISO 16625:2025

`Cranes and hoists — Selection of wire ropes, drums and sheaves`

ISO metadata checked 2026-09-02:

- Edition 2;
- publication date 2025-02;
- status: Published / International Standard;
- ISO 16625:2013 is withdrawn;
- the public abstract explicitly states that rope-drive geometry and drum/sheave geometry are incorporated in the selection proof.

This remains the primary D2 engineering-boundary anchor for rope-drive, drum and sheave geometry. D2 correctly uses qualitative mechanics while keeping exact design/selection values locked to the applicable standard/OEM source.

Status: `PASS`

Public metadata: https://www.iso.org/standard/77889.html

---

## ISO 4301-1:2016

`Cranes — Classification — Part 1: General`

ISO metadata checked 2026-09-02:

- Edition 3;
- publication date 2016-07;
- status: Published / current;
- ISO states that the publication was reviewed and confirmed in 2021 and remains current;
- the public abstract frames classification around service conditions including working cycles, load spectrum factor and average displacements.

D2 uses this only as classification/duty context. It does not invent classification factors, duty groups or equipment-specific class decisions.

Status: `PASS`

Public metadata: https://www.iso.org/standard/63070.html

---

## ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`

ISO metadata checked 2026-09-02:

- Edition 5 remains the current published edition;
- ISO marks the standard as `to be revised`;
- it remains the current published reference until a replacement edition is actually published;
- the public abstract continues to state that deterioration can be significantly greater in multi-layer crossover zones than elsewhere in the rope system.

D2 uses this as supporting inspection/spooling context only. Crossover or side-contact observation remains an observation/mechanism input, not an automatic accept/discard verdict.

Status: `PASS + WATCH`

Public metadata: https://www.iso.org/standard/66759.html

---

## ISO/CD 4309 — Edition 6

ISO development metadata checked 2026-09-02:

- Edition 6;
- status: Committee Draft / under development;
- current stage: 30.20, CD consultation initiated;
- the draft is a future replacement candidate and is not a current requirement.

D2 correctly keeps the draft out of current normative authority.

Status: `WATCH / DRAFT ONLY`

Development metadata: https://www.iso.org/standard/90256.html

---

## ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Status checked 2026-09-02:

- current reference remains in force in the edition of 16.04.2026;
- validity is limited through 01.09.2032;
- the rules apply to lifting cranes and continue to require the operating organization to comply with the operating manuals/instructions of the lifting appliances available to it;
- technical-inspection scope/order/periodicity is also tied to the equipment operating manual.

D2 therefore keeps the correct hierarchy: regulatory boundary + actual equipment documentation; it does not use the FNP as a substitute for exact geometry/design/classification criteria.

Status: `PASS`

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

---

# 3. D2-specific claim-boundary recheck

The following remain locked unless an exact applicable standard or passport/OEM source is available:

- numeric D/d values;
- groove radius, pitch, depth and other groove geometry limits;
- numeric fleet/lead/deflection-angle limits;
- numeric efficiency/loss factors presented as design or acceptance data;
- allowable drum/sheave stresses, pressures or strength limits;
- numeric discard/acceptance thresholds;
- equipment-specific reeving, anchoring, spooling or corrective-action decisions;
- equipment-specific duty/classification factors or class assignment;
- dynamic load factors or drive-sizing conclusions;
- repair, redesign or field-modification instructions.

Freshness found no leakage of these claim classes into accepted D2 content.

`PASS`

---

# 4. D2 geometry/spooling claim review

The accepted D2 content remains correctly bounded:

- rope-drive, drum and sheave geometry can influence selection/mechanics, but exact criteria remain source-bound;
- local `Ti` bookkeeping does not assert universal equality of tension;
- vector reaction reasoning remains qualitative unless geometry/loads are fully defined;
- `v_circ = ω r_k` and `M = T r_m` remain explicitly simplified local models, not equipment ratings;
- helical/axial spooling components remain a stop condition for universal circumference-only speed claims;
- crossover/side-contact observations remain inspection/mechanism clues, not automatic discard verdicts;
- classification remains context, not an invented numeric class or factor;
- quasi-static reasoning remains separated from dynamic-load authority.

No source-status change requires modification of these statements.

`PASS`

---

# 5. Equipment-specific authority boundary

The actual passport/OEM manual remains required for equipment-specific claims including:

- actual reeving and rope anchoring;
- actual drum/sheave/groove geometry;
- permitted rope type/size;
- permitted spooling arrangement and layer behaviour;
- equipment-specific angle definitions/limits;
- duty/classification data used for the actual machine;
- service, inspection and replacement limits;
- field correction, modification, acceptance or return-to-service decisions.

Freshness found no reason to weaken this boundary.

`PASS`

---

# 6. Watchlist

```text
WATCH-01
ISO 4309:2017
Reason: current published Edition 5 is formally marked to be revised.

WATCH-02
ISO/CD 4309 — Edition 6
Reason: active Committee Draft at stage 30.20; future replacement must be rechecked before a later content version/freeze if publication status changes.
```

No watchlist item requires D2 content correction today.

---

# 7. Freeze decision

```text
Final Alignment:              PASS
Current-source anchors:       PASS
D2 geometry/spooling claims:  PASS
Classification boundary:      PASS
Draft/current separation:     PASS
Replacement check:            PASS
Numeric claim locks:          PASS
Equipment authority guard:    PASS
D1 frozen prerequisite:       IMMUTABLE
Content corrections:          NONE
Watchlist:                    ACTIVE / NON-BLOCKING

D2 FREEZE CANDIDATE:          READY
```

**CRN-M-02 D2 SOURCE FRESHNESS = COMPLETE / PASS WITH WATCHLIST.**

Next:

`CRN-M-02 / D2 FREEZE / v1 — immutable D2 package, manifests, frozen index and tag contract`
