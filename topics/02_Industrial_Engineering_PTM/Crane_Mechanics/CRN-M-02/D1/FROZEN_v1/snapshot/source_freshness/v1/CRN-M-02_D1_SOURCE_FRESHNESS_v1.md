# CRN-M-02 / D1 — Source Freshness v1

## Decision

`PASS WITH WATCHLIST — FREEZE CANDIDATE READY`

Baseline remote commit:

`4cdad7297ce7c5ae15fb2f0498243db51cd17fe8`

Freshness date:

`2026-09-02`

Scope:

```text
D1 Scope / Source Gate
Lesson + Editorial + Red Team + Reader Experience
Practice / Practice Reasoning
Expected Result
Verification Rubric
Final Alignment
```

This pass revalidates the external source anchors and the equipment-authority boundary before immutable D1 Freeze.

---

# 1. Result summary

```text
Primary external/source-boundary anchors checked: 5
Development companion records checked:          1
Current published/regulatory anchors:            4
Equipment-specific authority boundary:           1
Watchlist records:                               2

Stale anchor requiring removal:                  0
Draft misused as current requirement:            0
Withdrawn edition used as current:                0
Numeric claim-lock leak:                         0
Equipment-authority leak:                        0
Content correction required:                     0
```

Decision:

> No external-source defect blocks CRN-M-02 D1 Freeze.

---

# 2. Critical current-status checks

## ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

ISO metadata checked 2026-09-02:

- Edition 5;
- publication date 2026-07;
- status: Published / International Standard;
- ISO life-cycle page shows ISO 4306-1:2007 as the previous withdrawn edition.

D1 uses this only as the current terminology/component-role anchor.

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
- the public abstract explicitly places rope-drive geometry and drum/sheave geometry inside the selection problem.

D1 correctly uses this as an engineering-boundary anchor without reproducing paid tables or inventing numeric design criteria.

Status: `PASS`

Public metadata: https://www.iso.org/standard/77889.html

---

## ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Status checked 2026-09-02:

- current published reference remains in force in the edition of 16.04.2026;
- the amending list includes orders №16 of 22.01.2024 and №129 of 16.04.2026;
- validity is limited through 01.09.2032;
- the operational layer continues to require compliance with equipment operating manuals/instructions.

D1 therefore keeps the correct hierarchy: regulatory boundary + equipment documentation; it does not use the FNP as a substitute for an exact design standard or OEM/passport data.

Status: `PASS`

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

---

## ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`.

ISO metadata checked 2026-09-02:

- Edition 5 remains the current published edition;
- ISO marks it at stage 90.92, `International Standard to be revised`;
- it remains the published current source until a replacement edition is actually published.

D1 uses it only as a supporting rope-system/inspection-context interface.

Status: `PASS + WATCH`

Public metadata: https://www.iso.org/standard/66759.html

---

## ISO/CD 4309 — Edition 6

ISO development metadata checked 2026-09-02:

- Edition 6;
- status: Committee Draft / under development;
- current stage: 30.20, CD consultation initiated;
- it is a future replacement candidate, not a current requirement.

The D1 source model correctly keeps the draft separate from ISO 4309:2017.

Status: `WATCH / DRAFT ONLY`

Development metadata: https://www.iso.org/standard/90256.html

---

# 3. Equipment-specific authority boundary

The source gate already requires an actual passport/OEM manual for:

- actual reeving;
- rope anchoring / dead-end arrangement;
- drum/sheave/groove dimensions;
- permitted rope types and sizes;
- service/inspection/replacement limits;
- modification or field acceptance decisions.

Freshness found no reason to weaken this boundary.

`PASS`

---

# 4. Claim-lock recheck

The following remain locked in D1 unless exact applicable source/OEM evidence is supplied:

- D/d limits;
- groove radius/pitch/depth values;
- numeric fleet-angle limits;
- numeric drum-capacity/design values presented as equipment limits;
- design factors;
- acceptance/discard limits;
- equipment-specific reeving/service limits;
- repair/redesign instructions.

Freshness review found no leakage of these claim classes into the accepted D1 content.

`PASS`

---

# 5. Watchlist

```text
WATCH-01
ISO 4309:2017
Reason: current published Edition 5 is formally marked to be revised.

WATCH-02
ISO/CD 4309 — Edition 6
Reason: active Committee Draft at stage 30.20; future replacement must be rechecked before a later content version/freeze if publication status changes.
```

No watchlist item requires a D1 content correction today.

---

# 6. Freeze decision

```text
Final Alignment:             PASS
Current-source anchors:      PASS
Draft/current separation:    PASS
Replacement check:           PASS
Claim locks:                 PASS
Equipment authority guard:   PASS
Content corrections:         NONE
Watchlist:                   ACTIVE / NON-BLOCKING

D1 FREEZE CANDIDATE:         READY
```

**CRN-M-02 D1 SOURCE FRESHNESS = COMPLETE / PASS WITH WATCHLIST.**

Next:

`CRN-M-02 / D1 FREEZE / v1 — immutable D1 package, manifests, frozen index and tag contract`
