# CRN-M-04 / D2 Lesson v1 — Source Map

Source gate: `PASS_WITH_DERIVATION_GUARDS`.

Эта карта фиксирует, **какой источник поддерживает какой класс утверждений**, и одновременно сохраняет запреты D1/D2. Она не расширяет scope исходных документов.

## INT-CRN-M04-D1-FROZEN

`crn-m-04-d1-v1` — immutable prerequisite.

Используется для:
- reducer/coupling role vocabulary;
- D1 evidence/status separation;
- source applicability discipline;
- design/rating/alignment/lubrication/condition/repair/operation locks.

Не изменяется D2 authoring.

## EDU-OPENSTAX-ROTATIONAL-POWER

OpenStax University Physics Vol. 1 §10.8, Work and Power for Rotational Motion.

Используется для:
- rotational power identity `P = T·ω`;
- `T = P/ω`;
- unit-consistent transition between rpm and rad/s when deriving `T ≈ 9550·P_kW/n_rpm`.

Guard:
- torque and angular speed must belong to the same rotating object/shaft state;
- source does not provide reducer/coupling rating, service factor or efficiency.

## EDU-OPENSTAX-STATIC-EQUILIBRIUM

OpenStax University Physics Vol. 1 §12.1, Conditions for Static Equilibrium.

Используется для:
- free-body reasoning;
- `ΣF = 0`;
- `ΣM = 0`;
- bounded external reaction exercises with explicit geometry.

Guard:
- calculated external support reaction is not bearing internal load, life or selection.

## DEV-KHK-GEAR-TECHNICAL-REFERENCE

KHK Gear Technical Reference — Calculation of Gear Dimensions.

Используется как **non-normative development companion** для:
- simple gear-pair terminology;
- number-of-teeth / reference-diameter context;
- simple ratio reasoning for an explicitly identified pair.

Guard:
- KHK is not crane rating/acceptance authority;
- no design selection, strength rating or OEM applicability is inferred.

## EXT-ISO-6336-1-2019

Role: **hard gear-rating boundary**.

Lesson uses ISO 6336 only to teach that demand-side torque/force is not tooth load capacity. D2 does not reconstruct paid formulae, influence factors, tables, service factors or rating workflow.

## EXT-GOST-31592-2012

Role: reducer scope/documentation boundary inherited from D1.

No D2 calculation proves a specific reducer complies with the standard or is adequate for a real crane duty.

## EXT-GOST-R-50895-2025

Role: gear-coupling family-specific boundary inherited from D1.

Guard:
- calculated torque does not unlock gear-coupling selection;
- family-specific displacement/alignment limits are not generalized to other couplings.

## DEV-ISO-14691-2008

Role: inherited **watchlist companion only**.

Its petroleum/petrochemical/natural-gas scope prevents promotion to generic crane coupling authority. D2 lesson uses no generic acceptance values from it.

## EXT-RU-FNP-461

Role: operation/repair authority boundary.

Calculations remain educational/analytical and do not become maintenance instructions, return-to-service decisions or permission to operate.

## OEM-PASSPORT-ACTUAL-CRANE-DRIVE

Required for real equipment claims involving:
- exact topology and direction;
- actual ratio/stages;
- shaft power/speed basis and duty;
- efficiency;
- reference/pitch geometry;
- support/load locations;
- component rating or allowable limits.

## Equation-to-authority map

| Lesson relation | Allowed purpose | Forbidden promotion |
|---|---|---|
| `ω = 2πn/60` | unit conversion | topology proof |
| `P = T·ω` | same-shaft mechanics | component rating |
| `T ≈ 9550·P_kW/n_rpm` | algebraic/unit conversion | reducer/coupling selection |
| simple `i` from proven `n` or `z` | kinematics | actual capacity or duty |
| `P_out = ηP_in` with supplied η | bounded power bookkeeping | infer unknown efficiency |
| `F_t = T/r = 2T/d` | moment relation with supplied lever/pitch radius | gear tooth strength |
| `ΣF = 0`, `ΣM = 0` | explicit external statics model | bearing life/selection |

**SOURCE MAP RESULT = PASS / DERIVATION GUARDS PRESERVED.**


## Technical Editorial Pass I — added derivation guards

The editorial pass preserves the same source roles and adds no new normative authority.

- `P = T·ω` requires the same shaft/object state **and** one declared sign/power-flow convention; mixed shaft states or mixed sign conventions are invalid.
- `T ≈ 9550·P_kW/n_rpm` requires mechanical shaft power, `n != 0`, and a stated steady/quasi-steady state; it does not reconstruct start/brake/shock/transient peak torque.
- simple ratio magnitude does not transfer rotation sign across internal meshes, idlers, common shafts, planetary branches or other topology changes without a separate direction proof.
- efficiency is directional/regime/boundary-specific; unknown reverse efficiency and incompatible stage efficiencies are not inferred.
- `F_t = T_mesh/r = 2T_mesh/d` requires torque and radius/diameter from the same isolated gear/mesh side; net shaft torque is not silently assigned to one mesh.
- `ΣF = 0`, `ΣM = 0` are equilibrium conditions; “quasi-static” use requires an explicit negligible-inertia assumption, otherwise dynamics remain outside the bounded statics model.
- a planar support-reaction result is not the full 3D bearing reaction and is never bearing internal load/life/selection.
- interface continuity does not by itself prove equal `P`, `T` or `n` across a coupling; transfer equality requires the stated topology and ideal/loss model.
- steady/quasi-steady calculated demand remains distinct from transient/peak demand, rated capacity and permitted operation.

**EDITORIAL GUARD RESULT = PASS / SAME SOURCE SCOPE PRESERVED.**

## Red Team Pass I — adversarial derivation guards

Red Team adds no new normative authority. It attacks ways a learner could still obtain a plausible number while violating identity or model contracts.

- positive `P=Tω` does not by itself establish forward power flow; axis/sign convention and boundary identity remain mandatory;
- a formally nonzero but near-zero/poorly resolved speed does not make `P/n` a trustworthy torque estimate;
- ratio values require an explicit numerator/denominator convention; reciprocal interpretation is not inferred;
- an efficiency value is not portable across flow direction, regime or boundary merely because it lies in a plausible numeric range;
- arbitrary reserve/service multipliers do not turn steady demand into transient demand or rated capacity;
- same shaft does not make net shaft torque equal to one selected `T_mesh`;
- equilibrium equations do not guarantee a unique reaction solution for a statically indeterminate model;
- a negative calculated reaction is a sign-convention result until a contact/support model proves a physical separation or other event;
- component connectivity does not prove equal `P`, `T` or `n` across a real coupling without the declared transfer model;
- rounding, margin or “nearest larger catalog value” does not promote calculated demand to capacity, selection, acceptance or equipment authority.

**RED TEAM GUARD RESULT = PASS WITH CORRECTIONS APPLIED / DERIVATION AND AUTHORITY LOCKS PRESERVED.**
