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
- the free-body diagram must identify whether forces are being drawn **on the block** or **on the rope**; action/reaction directions are opposite;
- in the block free-body diagram, `F_rope→block` is the vector sum of branch pulls and support reaction balances the complete modeled force set under the stated equilibrium/quasi-static assumptions.

The lesson intentionally avoids a scalar sheave-reaction formula tied to a potentially ambiguous angle convention. Directional/vector reasoning is used instead.

Red-Team guard: free-body selection precedes arrow construction and equilibrium. A block FBD and a rope FBD use opposite contact-force directions. Quasi-static equilibrium is not promoted into a dynamic-load claim when acceleration is material.

This is **not** a normative capacity or bearing-life calculation.

## M2 — Drum kinematics

First-principles rotation relation retained exactly for the circumferential surface component:

```text
v_circ = ω · r_k
```

The lesson uses `v_rope ≈ ω · r_k` only in a deliberately simplified near-circumferential, negligible-helical-component, no-slip model. It explicitly blocks using no-slip alone as proof of the scalar rope-speed relation for arbitrary helical/axial winding geometry. No-slip constrains local relative contact motion; it does not by itself replace the spatial rope tangent with the circumferential direction.

It is not an equipment speed limit or control-system claim.

## M3 — Drum moment model

General educational first-principles axis-moment relation:

```text
M_axis = (r × F) · e_axis
```

For a simple tangential rope action this may reduce in magnitude to `|M_axis| = T · r_m`, where `r_m` is the effective moment arm derived from the force line of action relative to the axis. The lesson explicitly prevents automatic identification of the kinematic radius `r_k` or current layer radius with the torque arm in oblique/complex geometry.

It is not a motor-sizing, gearbox-rating, capacity or drum-strength calculation.

## M4 — Non-ideal dependency / bookkeeping model

Lesson may label branch tensions separately (`T1`, `T2`, ...), and state qualitatively that real friction, bending, contact, deformation and dynamics can invalidate blind equal-tension assumptions. The `Ti` labels are bookkeeping variables for local branch/node force mapping; they do **not** assert piecewise-constant tension or a physical discontinuity at an arbitrarily drawn segment boundary.

No generic loss percentage, efficiency factor or capstan/friction coefficient is assigned. Continuity of one physical rope is explicitly not accepted as standalone proof that all local `Ti` values are equal.

## M5 — Geometry terminology guard

The lesson uses a generic qualitative phrase for entry/exit and lateral rope geometry. Terms such as `fleet angle`, `lead angle` and `deflection angle` are treated as source-defined terms, not as interchangeable labels with one universal reference line or limit. A numeric value carrying a familiar term cannot be transferred until document applicability, node type, angle definition and reference geometry match.

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
