# CRN-M-04 / D2 — Source Gate v1

Decision: **PASS WITH DERIVATION GUARDS**.

D2 may author bounded applied-mechanics calculations for a **given** reducer/coupling drive model. The gate does not unlock gear rating, component selection, numeric acceptance, repair or operational permission.

## Source strategy

D2 does not replace or reinterpret the frozen D1 authority stack. It adds only public first-principles/technical references needed to support low-risk kinematics, power/torque bookkeeping and static reaction reasoning.

The normative/component applicability boundary continues to come from the frozen D1 source set and exact equipment documentation.

## 1. `crn-m-04-d1-v1` — immutable prerequisite

Role: canonical frozen prerequisite for terminology, source scope, coupling-family separation, evidence discipline and authority locks.

Required gate:

- annotated tag target must equal D2 baseline `origin/main` before any D2 write;
- `status/FROZEN_INDEX.json` must remain byte-identical during D2 kickoff;
- the entire `CRN-M-04/D1` tree must remain git-tree-identical.

D2 may deepen mechanics; it may not rewrite D1.

## 2. OpenStax University Physics Vol. 1 — rotational power

Public reference: https://openstax.org/books/university-physics-volume-1/pages/10-8-work-and-power-for-rotational-motion

Role: first-principles relation for rotational power `P = τω` and unit-consistent conversion between shaft torque, angular speed and mechanical power.

D2 use restriction:

- the relation is a physics identity for the stated shaft state;
- it does **not** provide a component torque rating, service factor, efficiency or duty capability;
- `T ≈ 9550·P_kW/n_rpm` is treated only as an algebraic/unit conversion derived from `P = Tω`.

## 3. OpenStax University Physics Vol. 1 — equilibrium

Public reference: https://openstax.org/books/university-physics-volume-1/pages/12-1-conditions-for-static-equilibrium

Role: `ΣF = 0` and `Στ = 0` / free-body reasoning for bounded support-reaction exercises.

D2 use restriction:

- the rigid-body/static or quasi-static model must be explicit;
- support locations and applied loads must be supplied;
- calculated external reactions do not by themselves provide bearing life, internal load distribution or selection.

## 4. KHK Gear Technical Reference — development companion

Public reference: https://khkgears.net/gear-knowledge/gear-technical-reference/calculation-gear-dimensions/

Role: public gear-technical companion for simple gear-pair geometry, number-of-teeth/speed-ratio relationships and pitch/reference-diameter vocabulary.

Authority status: **development companion, non-normative for crane acceptance**.

D2 use restriction:

- only clearly scoped simple-gear relationships may be used;
- topology/direction must be explicit;
- KHK examples are not a substitute for the actual reducer drawing, OEM data or applicable rating standard;
- no strength/rating/catalog selection is unlocked by this source.

## 5. ISO 6336-1:2019 — remains a hard rating boundary

Public metadata: https://www.iso.org/standard/63819.html

Current metadata was rechecked during D2 preparation: Edition 3 remains current after confirmation in 2025.

Role in D2: boundary, not equation source. Formal spur/helical gear load-capacity work remains an experienced-gear-designer method and outside D2 kickoff.

D2 may calculate **demand-side** shaft torque or a simple tangential force from stated geometry. It may not promote that demand into tooth capacity, safety factor or acceptable design.

## 6. ГОСТ 31592-2012 — reducer applicability boundary

Inherited from frozen D1 source gate.

Role: general reducer scope/documentation anchor. D2 calculations do not prove that a specific crane reducer meets this standard or any equipment-specific rating.

## 7. ГОСТ Р 50895-2025 — gear-coupling applicability boundary

Inherited from frozen D1 source gate.

Role: current Russian gear-coupling scope anchor.

Critical D2 guard: a torque or reaction calculation does not unlock gear-coupling selection, displacement limits, alignment acceptance or transfer of those requirements to other coupling families.

## 8. ISO 14691:2008 — watchlist companion only

Inherited watchlist status from D1.

Its petroleum/petrochemical/natural-gas industry scope remains incompatible with treating it as generic crane coupling authority. It may support terminology/mechanism thinking only.

## 9. ФНП ПС №461 — operation/repair authority boundary

Inherited from D1 freshness state.

Role: prevents calculation exercises from becoming maintenance, repair, admission-to-operation or return-to-service instructions.

## 10. Passport / OEM / drawings for the actual drive

Required whenever D2 moves from an educational/given model to a real crane drive claim, including:

- actual topology and direction of rotation;
- exact ratio and stage arrangement;
- shaft power/speed basis and duty;
- stage/component efficiency where needed;
- reference/pitch diameters and gear geometry;
- bearing/support geometry and load application points;
- coupling identity, torque/speed rating and alignment limits;
- any comparison between calculated demand and allowable capacity.

## Derivation guards

D2 authoring MAY derive:

```text
ω = 2πn/60
P = Tω
T = P/ω
simple-pair ratio from documented n or z
multistage ratio from proven topology
P_out = η P_in only when η is supplied and applicable
F_t = T/r = 2T/d when r/d is supplied and means the relevant lever/pitch radius
external reactions from ΣF = 0 and ΣM = 0 for an explicit statics model
```

D2 authoring MUST NOT infer:

```text
unknown efficiency
unknown load distribution
unknown topology
unknown pressure/helix angle
unknown bearing reactions from a hidden geometry
component capacity from calculated demand
service factor or rating reserve
allowable alignment/misalignment
safe/unsafe/continue-operation verdict
```

## Result

The source set is sufficient for D2 applied-mechanics teaching **only because the calculation lane is bounded to explicit inputs and first-principles derivations, while all capacity, selection, acceptance and equipment-authority claims remain locked**.

**D2 SOURCE GATE = COMPLETE / PASS WITH DERIVATION GUARDS.**
