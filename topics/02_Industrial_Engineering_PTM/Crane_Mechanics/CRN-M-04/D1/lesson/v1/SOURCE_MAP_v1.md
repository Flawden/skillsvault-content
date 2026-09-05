# CRN-M-04 / D1 Lesson v1 — Source Map

Assembled: 2026-09-05.

This map records source roles already locked by CRN-M-04 D1 Source Gate v1. It does not reproduce paid ISO text, normative tables, design coefficients, acceptance limits or equipment-specific instructions.

## S1 — ISO 4306-1:2026

**Title:** Cranes — Vocabulary — Part 1: General
**Role:** crane vocabulary/component context anchor.
**Public metadata:** https://www.iso.org/standard/78820.html

Used only to keep reducer/coupling discussion inside a crane-system vocabulary context. Not used for gear rating, coupling selection or acceptance.

## S2 — ГОСТ 31592-2012

**Title:** Редукторы общемашиностроительного применения. Общие технические условия
**Role:** general reducer-family / Russian technical-documentation boundary.
**Public metadata:** https://protect.gost.ru/gost/details/a7ff0356-3421-47a5-971a-2ad8703edad3

Lesson use: recognition of reducer families and the fact that general reducer requirements do not automatically become the values for an actual crane reducer.

Not used to provide actual torque, speed, overload, accuracy, resource, vibration or acceptance values.

## S3 — ГОСТ Р 50895-2025

**Title:** Муфты зубчатые. Технические условия
**Role:** current Russian gear-coupling scope anchor.
**Public metadata:** https://protect.gost.ru/gost/details/a3f18bf8-3bfc-421f-aad6-bc14922903cb

Critical guard:

```text
GEAR COUPLING SCOPE
≠
ALL COUPLING FAMILIES
```

Lesson v1 does not transfer gear-coupling requirements or displacement limits to elastomeric, rigid/flange, disc, chain or other coupling designs.

## S4 — ISO 6336-1:2019

**Title:** Calculation of load capacity of spur and helical gears — Part 1
**Role:** formal gear load-capacity design-method boundary.
**Public metadata:** https://www.iso.org/standard/63819.html

Lesson use: demonstrates that gear rating is a formal source/input/method problem and not a beginner shortcut from motor power or visual geometry.

No ISO 6336 coefficients, paid equations/tables or design procedure are reconstructed.

## S5 — ISO 10825-1:2022

**Title:** Gears — Wear and damage to gear teeth — Part 1: Nomenclature and characteristics
**Role:** gear-damage terminology / condition-description boundary.
**Public metadata:** https://www.iso.org/standard/78719.html

Lesson use: supports observation/description vocabulary while preserving:

```text
CONDITION DESCRIPTION ≠ ROOT CAUSE ≠ ACCEPTANCE / SERVICEABILITY VERDICT
```

## S6 — ISO 12925-1:2024

**Title:** Lubricants ... Family C (gears) — Part 1: Specifications for lubricants for enclosed gear systems
**Role:** enclosed-gear lubricant specification boundary.
**Public metadata:** https://www.iso.org/standard/87200.html

Lesson use: explains why lubrication is source-bound. Actual grade, viscosity, compatibility, fill quantity, interval and substitution remain actual-reducer/OEM questions.

## S7 — ISO 14691:2008

**Title:** Flexible couplings for mechanical power transmission — General-purpose applications
**Role:** scope-limited development companion only.
**Public metadata:** https://www.iso.org/standard/45476.html

Its petroleum/petrochemical/natural-gas industry scope is preserved. It is **not** promoted to crane-specific selection/alignment/acceptance authority.

## S8 — ФНП ПС №461

**Document:** Правила безопасности ОПО, на которых используются подъемные сооружения.
**Role:** Russian regulatory / operational / repair-authority boundary.
**Reference:** https://www.consultant.ru/document/cons_doc_LAW_373321/

Lesson v1 does not use it as a substitute for reducer/coupling design standards, drawings, passport or OEM manuals.

## S9 — Passport / OEM / actual-drive documentation

Required for equipment-specific claims, including:

- actual drive architecture;
- reducer model, ratio, rated torque/power/speed and mounting position;
- coupling type/size/design, permitted torque/speed and allowed displacement;
- actual alignment/installation requirements;
- lubricant grade/viscosity/fill/change interval and approved alternatives;
- backlash, condition, temperature, vibration/noise limits when specified;
- inspection/maintenance intervals;
- replacement/repair instructions;
- acceptance / continued-operation / return-to-service decisions.

No proprietary OEM content is embedded.

## M1 — Educational first-principles mechanics

Lesson v1 uses qualitative reasoning only:

- trace rotation/torque path;
- separate reducer, coupling, brake and support functions;
- recognize speed-ratio / torque-level relationship qualitatively;
- recognize reducer/coupling families without selection;
- separate observable evidence from diagnosis/acceptance;
- separate lubrication/alignment importance from actual numeric specification.

## Claim-lock audit

Not introduced in Lesson v1:

- ISO 6336 calculation procedure or coefficients;
- gear geometry/material sizing;
- shaft/bearing/key/spline/bolt design;
- reducer or coupling selection/rating;
- service/duty/dynamic factors;
- numeric alignment/displacement limits;
- backlash/wear/damage/vibration/noise/temperature acceptance limits;
- lubricant grade/viscosity/substitution/change interval;
- repair/adjustment/overhaul instructions;
- specialist NDT;
- remaining-life prediction;
- equipment-specific operational permission or return to service.

## Authoring guards carried into Technical Editorial

- reducer ≠ coupling ≠ brake;
- teaching drive-path ≠ universal machine layout;
- reduced speed ≠ free power creation;
- reducer family recognition ≠ selection authority;
- coupling family recognition ≠ interchangeable requirements;
- gear-coupling standard ≠ all-coupling standard;
- flexible/compensating coupling ≠ arbitrary misalignment tolerance;
- lubricant importance ≠ lubricant-selection authority;
- noise/heat/vibration/leak/damage observation ≠ diagnosed cause;
- damage nomenclature ≠ acceptance/serviceability verdict;
- source name/category match ≠ exact applicability;
- SkillsVault STOP ≠ equipment-operation command.
