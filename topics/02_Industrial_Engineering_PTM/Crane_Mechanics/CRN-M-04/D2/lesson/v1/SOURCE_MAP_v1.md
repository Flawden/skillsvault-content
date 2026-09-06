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
