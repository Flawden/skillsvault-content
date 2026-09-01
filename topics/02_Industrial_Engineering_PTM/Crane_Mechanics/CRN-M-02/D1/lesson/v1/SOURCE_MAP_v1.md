# CRN-M-02 / D1 Lesson v1 — Source Map

Verified / assembled: 2026-09-01.

This map records what supports each class of claim. It intentionally does not reconstruct paid ISO tables or introduce equipment-specific numbers.

## S1 — ISO 4306-1:2026

**Title:** Cranes — Vocabulary — Part 1: General
**Status used:** Published, Edition 5, 2026-07.
**Public metadata:** https://www.iso.org/standard/78820.html

Supports:

- crane/component vocabulary boundary;
- use of component-part terminology as a standardized vocabulary domain.

Does not supply in this repository:

- numeric drum/sheave design limits;
- equipment-specific reeving;
- acceptance decisions.

## S2 — ISO 16625:2025

**Title:** Cranes and hoists — Selection of wire ropes, drums and sheaves
**Status used:** Published, Edition 2, 2025-02; ISO 16625:2013 withdrawn.
**Public metadata:** https://www.iso.org/standard/77889.html

Public abstract supports the boundary claim that rope-drive geometry and drum/sheave geometry are part of the rope-selection competence problem.

Used in the lesson to support:

- drum/sheave geometry matters to compatibility;
- geometry cannot be replaced by an unsourced generic number;
- D1 should recognize the question before attempting design selection.

Not reproduced:

- paid tables;
- D/d criteria;
- groove dimensions;
- design factors.

## S3 — ISO 4309:2017

**Title:** Cranes — Wire ropes — Care and maintenance, inspection and discard
**Published edition:** 2017-11.
**Public metadata:** https://www.iso.org/standard/66759.html

A sixth edition is under development as ISO/CD 4309 and therefore remains on freshness watchlist.

Public abstract supports the lesson statement that multilayer spooling and crossover zones are relevant rope-condition / deterioration context.

Used only as an interface/inspection-context source, not as authority for numeric criteria in this D1 lesson.

## S4 — ФНП ПС №461

**Document:** Приказ Ростехнадзора от 26.11.2020 №461.
**Current edition used:** ред. от 16.04.2026.
**Validity:** through 01.09.2032.
**Reference:** https://www.consultant.ru/document/cons_doc_LAW_373321/

Supports:

- Russian industrial-safety / operational-documentation boundary;
- principle that real lifting-equipment decisions live inside an applicable regulatory and equipment-documentation context.

The lesson does not use this source to invent design geometry or replace OEM/passport requirements.

## S5 — Passport / OEM documentation

Equipment-specific authority required for:

- actual reeving scheme;
- rope anchoring / dead-end arrangement;
- actual drum and sheave geometry;
- permitted rope types and sizes;
- service / inspection / replacement limits;
- modification or field acceptance decisions.

No proprietary OEM document is embedded in the public repository.

## M1 — Idealized mechanics derivation

The following are educational first-principles models, not normative limits:

```text
nT = W
T_ideal = W / n
s_rope = n · s_load
v_load = v_rope / n
```

The scalar force form is restricted to simple reeving where the counted supporting rope parts act along the support direction. For a non-parallel/angled arrangement the general boundary is the sum of the relevant force components, e.g. `Σ(T_i)_vertical = W`; with equal `T`, `Σ(T · cos θ_i) = W`. This is included only as a misuse guard, not as an equipment calculation method.

Conditions are stated explicitly in the lesson:

- simple reeving;
- equal branch tension;
- counted support parts are aligned with the modeled support direction for the scalar `nT = W` shortcut;
- every rope-end attachment that transmits tension to the selected moving assembly is explicitly identified;
- frictionless / lossless idealization;
- supporting branches change length consistently with moving-block displacement;
- fixed-end/simple rope-length constraint for `s_rope = n · s_load`; a rope end attached to the moving assembly or a compound/multi-body arrangement requires a separate kinematic derivation;
- quasi-static reasoning for the force relation.

These relations explain the mental model. They do not constitute equipment-specific force, power, capacity, efficiency or design calculations.

## Claim-lock audit

Not introduced in Lesson v1:

- numeric D/d minimums;
- numeric groove radius/pitch/depth;
- numeric fleet-angle limits;
- drum shell/flange strength calculations;
- detailed efficiency factors;
- discard limits;
- redesign / repair instructions;
- permission to modify actual reeving.

## Red-Team model guards — Pass I

- `dead end` is a path endpoint, not proof that the endpoint force is irrelevant; if attached to the moving assembly it is part of the force map.
- `fixed block` is interpreted relative to the selected hoisting/moving assembly, not necessarily as immobile relative to the building.
- multi-body, equalizing/compensating or otherwise compound reeving is outside the simple D1 `n` shortcut unless a separate force/kinematic model justifies it.
- understanding a reeving diagram does not prove field conformance; actual conformance requires the approved equipment documentation.
