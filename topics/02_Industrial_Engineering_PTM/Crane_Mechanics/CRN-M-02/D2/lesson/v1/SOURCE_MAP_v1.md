# CRN-M-02 / D2 Lesson v1 — Source Map

Assembled: 2026-09-02.

This map inherits the locked D2 Source Gate. It records claim roles; it does not reconstruct paid standards or infer equipment-specific limits.

## S1 — ISO 4306-1:2026

**Title:** Cranes — Vocabulary — Part 1: General
**Status used:** Published, Edition 5.
**Public metadata:** https://www.iso.org/standard/78820.html

Role:

- crane/component terminology boundary;
- standardized vocabulary context for drums, sheaves/blocks and crane concepts.

Not used for numeric design or acceptance limits in Lesson v1.

## S2 — ISO 16625:2025

**Title:** Cranes and hoists — Selection of wire ropes, drums and sheaves
**Status used:** Published, Edition 2; supersedes withdrawn ISO 16625:2013.
**Public metadata:** https://www.iso.org/standard/77889.html

Public metadata/abstract is used only for the engineering-boundary claim that rope-drive geometry and drum/sheave geometry belong to the rope/drum/sheave selection problem.

Lesson uses this boundary to justify:

- geometry is a system variable;
- actual drum/sheave/rope compatibility is an engineering-selection question;
- public metadata is insufficient for exact D/d, groove geometry, selection factors or equipment limits.

## S3 — ISO 4301-1:2016

**Title:** Cranes — Classification — Part 1: General
**Status used:** Published / confirmed current in kickoff.
**Public metadata:** https://www.iso.org/standard/63070.html

Role:

- duty/classification context;
- supports the lesson-level principle that working cycles/load spectrum/displacement context matters to engineering selection.

Not used to reproduce mechanism-specific selection tables or coefficients.

## S4 — ISO 4309:2017

**Title:** Cranes — Wire ropes — Care and maintenance, inspection and discard
**Status used:** current published Edition 5; Edition 6 remains under development watch.
**Public metadata:** https://www.iso.org/standard/66759.html

Public abstract supports:

- multilayer spooling as a distinct inspection/condition context;
- crossover zones as locations where rope deterioration can be significantly greater.

Lesson uses this only as a qualitative condition/escalation anchor.

Not reproduced:

- discard criteria;
- inspection tables;
- numeric wear/broken-wire/diameter limits;
- equipment acceptance decisions.

## S5 — ISO/CD 4309, Edition 6

**Public metadata:** https://www.iso.org/standard/90256.html

Status at D2 kickoff: under development, Committee Draft stage.

Role: freshness watch only. It is **not** used as current normative authority.

## S6 — ФНП ПС №461

**Document:** Приказ Ростехнадзора от 26.11.2020 №461.
**Edition used by Source Gate:** ред. 16.04.2026; valid through 01.09.2032.
**Reference:** https://www.consultant.ru/document/cons_doc_LAW_373321/

Role:

- Russian regulatory/operational boundary;
- reinforces that actual lifting-equipment operation, inspection, replacement and intervention belong to an applicable regulatory/documentation framework.

The lesson does not use this source to invent geometry, repair instructions or acceptance limits.

## S7 — Passport / OEM documentation

Required authority for equipment-specific questions including:

- actual reeving/dead-end arrangement;
- drum/sheave dimensions and groove data;
- permissible rope type/size;
- fleet/lead geometry limits;
- installation/spooling procedure;
- efficiency/capacity/service limits where specified;
- acceptance, replacement, repair or modification decisions.

No proprietary OEM document is embedded in the public repository.

## M1 — Vector statics / force-map model

Educational first-principles mechanics used in Lesson v1:

- a rope branch transmits tensile action along its local axis in the simplified flexible-rope model;
- the resultant action of multiple branches at a node depends on both force magnitude and direction;
- support reaction balances the modeled resultant under the stated equilibrium/quasi-static assumptions.

The lesson intentionally avoids a scalar sheave-reaction formula tied to a potentially ambiguous angle convention. Directional/vector reasoning is used instead.

This is **not** a normative capacity or bearing-life calculation.

## M2 — Drum kinematics

Educational first-principles relation:

```text
v_rope = ω · r_eff
```

Used only under the stated simple no-slip kinematic model to explain why changing effective winding radius changes the angular-speed / rope-speed relationship.

It is not an equipment speed limit or control-system claim.

## M3 — Drum moment model

Educational first-principles relation for a single modeled tangential rope action:

```text
M_rope = T · r_eff
```

Used to show that effective lever arm matters to torque balance.

It is not a motor-sizing, gearbox-rating, capacity or drum-strength calculation.

## M4 — Non-ideal dependency model

Lesson may label branch tensions separately (`T1`, `T2`, ...), and state qualitatively that real friction, bending, contact, deformation and dynamics can invalidate blind equal-tension assumptions.

No generic loss percentage, efficiency factor or capstan/friction coefficient is assigned.

## Claim-lock audit

Lesson v1 does **not** introduce:

- numeric D/d minimums;
- numeric drum/sheave diameter rules;
- numeric groove radius/pitch/depth;
- numeric fleet/deflection-angle limits;
- numeric efficiency/loss coefficients;
- allowable drum/sheave stresses or contact pressures;
- bearing-life calculations;
- fatigue-life prediction;
- discard/acceptance limits;
- redesign/repair/reeving-change instructions;
- equipment-specific dimensions or corrective action.
