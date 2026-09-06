# CRN-M-04 / D1 — Source Gate v1

## Decision

**PASS WITH CLAIM LIMITS**

D1 lesson authoring is unlocked for beginner drive-train reasoning, reducer/coupling function, qualitative speed/torque-path explanation, component/family recognition, condition-description vocabulary and documentation/authority boundaries.

Gear rating, coupling selection, numeric alignment, lubricant selection, acceptance/discard, repair and equipment-specific operational claims remain locked.

## 1. ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

Public ISO metadata verified 2026-09-05:

- Edition 5;
- published 2026-07;
- status: published, stage 60.60;
- establishes commonly used crane terminology covering general concepts and component parts.

Role in D1: crane-system vocabulary/context anchor so reducer/coupling explanations remain inside a crane mechanism rather than becoming a detached machine-design chapter.

Public metadata URL: https://www.iso.org/standard/78820.html

## 2. ГОСТ 31592-2012

`Редукторы общемашиностроительного применения. Общие технические условия`

Public Rosstandart metadata verified 2026-09-05:

- status: Действует;
- introduced in Russia 2014-01-01;
- covers several general-purpose reducer families, including cylindrical, planetary, bevel, bevel-helical, worm and combined arrangements;
- its requirements can be used for special-purpose designs, but that does not make every general-purpose value automatically applicable to an actual crane reducer.

Role in D1: Russian reducer-family / general technical-documentation boundary.

Claim restriction: D1 does not extract numeric torque, speed, overload, accuracy, resource, vibration or acceptance values for a real crane drive from this source by analogy.

Public metadata URL: https://protect.gost.ru/gost/details/a7ff0356-3421-47a5-971a-2ad8703edad3

## 3. ГОСТ Р 50895-2025

`Муфты зубчатые. Технические условия`

Public Rosstandart metadata verified 2026-09-05:

- status: Действует;
- order 1718-ст dated 2025-12-12;
- effective from 2026-01-15;
- replaces ГОСТ Р 50895-96;
- applies to general-purpose gear couplings for connecting coaxial horizontal shafts and transmitting torque while allowing stated forms of shaft displacement within the standard's scope.

Role in D1: current Russian gear-coupling scope anchor and a concrete example that coupling applicability is type-specific.

Critical guard: **gear-coupling scope must not be transferred to all coupling families.** Numeric torque, speed, displacement, fit, assembly or acceptance values remain source/OEM-bound.

Public metadata URL: https://protect.gost.ru/gost/details/a3f18bf8-3bfc-421f-aad6-bc14922903cb

## 4. ISO 6336-1:2019

`Calculation of load capacity of spur and helical gears — Part 1: Basic principles, introduction and general influence factors`

Public ISO metadata verified 2026-09-05:

- Edition 3;
- published 2019-11;
- last reviewed and confirmed in 2025; stage 90.93;
- provides a formal load-capacity calculation framework for cylindrical spur/helical involute gears within its defined scope;
- ISO explicitly states that it is intended for experienced gear designers rather than the general engineering public and does not assure assembled drive-system performance.

Role in D1: **design/proof boundary** proving that real gear rating is a formal expert, source-bound task rather than a beginner extrapolation from `power / speed` relationships.

Claim restriction: no paid equations, influence factors, coefficients, rating procedure or numeric design result is reconstructed in D1.

Public metadata URL: https://www.iso.org/standard/63819.html

## 5. ISO 10825-1:2022

`Gears — Wear and damage to gear teeth — Part 1: Nomenclature and characteristics`

Public ISO metadata verified 2026-09-05:

- Edition 1;
- published 2022-05; stage 60.60;
- provides nomenclature/classification for common gear-tooth wear and damage;
- explicitly limits itself to terminology/condition description and notes that many gear problems require specialist investigation.

Role in D1: visible-condition vocabulary and the boundary between **observation** and **diagnosis/acceptance**.

Claim restriction: D1 cannot infer exact cause, preventive action, serviceability or discard verdict from appearance alone.

Public metadata URL: https://www.iso.org/standard/78719.html

## 6. ISO 12925-1:2024

`Lubricants, industrial oils and related products (class L) — Family C (gears) — Part 1: Specifications for lubricants for enclosed gear systems`

Public ISO metadata verified 2026-09-05:

- Edition 3;
- published 2024-05; stage 60.60;
- applies to lubricants for enclosed gear systems; other parts of the ISO 12925 series cover open gears and greases.

Role in D1: lubricant-family / source-boundary anchor.

Claim restriction: public metadata does not select the actual oil grade, viscosity, fill quantity, interval or substitution for a crane reducer. Those remain equipment/OEM dependent.

Public metadata URL: https://www.iso.org/standard/87200.html

## 7. ISO 14691:2008 — scope-limited development companion

`Petroleum, petrochemical and natural gas industries — Flexible couplings for mechanical power transmission — General-purpose applications`

Public ISO metadata verified 2026-09-05:

- Edition 2;
- current, last reviewed and confirmed in 2024; stage 90.93;
- describes flexible couplings between rotating shafts and recognizes axial, angular and radial displacement accommodation for covered designs;
- **industry scope is petroleum/petrochemical/natural gas**, not cranes.

Role in D1: terminology/mechanism companion only for explaining why some flexible coupling designs accommodate defined misalignment modes.

Critical guard: it is **not** crane-specific selection, design, alignment or acceptance authority and must not override actual coupling documentation or a directly applicable standard.

Public metadata URL: https://www.iso.org/standard/45476.html

## 8. ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Current public reference verified 2026-09-05:

- редакция от 16.04.2026;
- amendments effective from 08.06.2026;
- document remains in force through 01.09.2032;
- establishes the Russian industrial-safety / organizational / operation / repair / assessment authority boundary for hazardous production facilities using lifting structures.

Role in D1: mandatory regulatory boundary. It does not replace reducer/coupling design standards, the crane passport, drawings, operating manual or OEM instructions.

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

## 9. Passport / OEM / actual-drive documentation

Required for real equipment-specific claims, including:

- actual crane mechanism architecture and reducer/coupling type;
- reducer model, ratio, rated torque/power/speed, mounting position and duty limitations;
- coupling type/size, permitted torque/speed, hubs/fits/fasteners and allowable shaft displacement;
- actual alignment and installation procedure;
- lubricant grade/viscosity/fill quantity/change interval and approved alternatives;
- backlash, temperature, vibration/noise or condition limits where specified;
- inspection and maintenance intervals;
- replacement/repair instructions and permitted parts;
- any acceptance, continued-operation or return-to-service decision.

This source is equipment-specific and is not assumed to be publicly distributable.

## Authoring guards

D1 authoring MUST NOT invent or infer:

- real reducer/coupling ratings from motor power alone;
- gear tooth load capacity or ISO 6336 coefficients;
- service factors, dynamic factors or duty corrections;
- allowable backlash, wear, pitting, tooth damage, vibration, noise or temperature limits;
- actual alignment tolerances or shaft displacement limits;
- lubricant grade/viscosity/substitution or oil-change interval;
- coupling selection rules generalized from one coupling family;
- bearing/shaft/key/spline/bolt design values;
- root cause from visible gear/coupling condition alone;
- repair/adjustment instructions or return-to-service authority.

## Source-gap / scope-warning record

The current D1 source set intentionally does **not** claim one universal crane-specific standard that selects and accepts every reducer and every coupling family.

The correct boundary is:

```text
generic drive-train concept
→ applicable component family
→ exact equipment identity
→ exact standard/OEM/passport/drawing
→ qualified decision
```

ISO 14691 remains a scope-limited companion and is recorded on the D1 watchlist until a directly applicable crane/general-machinery coupling source is preferred for the exact claim family being authored.

## Result

The source set is sufficient to author a safe beginner D1 mental model of reducers and couplings while keeping design, selection, numeric acceptance, maintenance execution and operational authority locked.

**D1 SOURCE GATE = COMPLETE / PASS WITH CLAIM LIMITS.**
