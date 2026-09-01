# CRN-M-01 / D4 Lesson
# Part VIII — Source Map v1
## Проверка актуальности: 2026-08-31

Part VIII разворачивает завершённый D4-G7 в Blocks 36–40.

Точные instrument-specific settings, MRT discard tables, qualification decisions и operational release не воспроизводятся.

---

## Основная source gate

`D4/gates/G7/v1/CRN-M-01_D4_G7_SPECIALIZED_INSPECTION_v1.md`

Использовано:
- method measures response, not truth;
- LF vs LMA;
- baseline vs threshold;
- lift-off / speed / setup sensitivity;
- visual + MRT evidence fusion;
- signal != defect != criterion != cause;
- MT/PT method scope;
- qualification boundary;
- NDE-E0…E5 SkillsVault ladder;
- AI/ML validation guard.

---

## ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`

Статус на 2026-08-31:
- Published;
- Edition 5;
- current published edition.

Официальная страница:
https://www.iso.org/standard/66759.html

Публично подтверждено:
- care, maintenance, inspection and discard framework for crane/hoist wire ropes;
- MRT is part of internal inspection support in the completed G7 source audit;
- multi-layer deterioration context.

Guard:
- exact closed MRT discard tables/procedure are not reconstructed.

---

## ISO/CD 4309 — Edition 6

Статус:
- Committee Draft;
- under development;
- not current published requirement.

Официальная страница:
https://www.iso.org/standard/90256.html

Used for freshness awareness only.

---

## ГОСТ ISO 9934-1-2021

`Контроль неразрушающий. Магнитопорошковый контроль. Часть 1. Общие принципы`

Статус:
- действует;
- введён 11.03.2026.

Официальная карточка:
https://protect.gost.ru/gost/details/d69c3497-5a7e-4d9e-a47c-6a8a5574561f

Использовано:
- MT scope for ferromagnetic materials;
- surface / near-surface discontinuity layer.

Guard:
- general method standard != universal acceptance criterion.

---

## ISO 3452-1:2021

`Non-destructive testing — Penetrant testing — Part 1: General principles`

Статус на 2026-08-31:
- Published;
- Edition 3;
- under systematic review.

Официальная страница:
https://www.iso.org/standard/75696.html

Публично подтверждено:
- detects discontinuities open to surface;
- standard is not intended for acceptance criteria.

---

## ISO 9712:2021

`Non-destructive testing — Qualification and certification of NDT personnel`

Статус:
- Published;
- Edition 5.

Официальная страница:
https://www.iso.org/standard/75614.html

Использовано:
- qualification/certification is separate from knowing method physics.

---

## ГОСТ Р ИСО 9712-2023

`Контроль неразрушающий. Квалификация и сертификация персонала неразрушающего контроля`

Статус:
- действует;
- введён 01.01.2024.

Официальная карточка:
https://protect.gost.ru/gost/details/724025ce-9c8b-41aa-bbb9-445d21dbb611

Использовано:
- current Russian personnel qualification boundary.

---

## ФНП №461

`Правила безопасности ОПО, на которых используются подъемные сооружения`

Проверка на 2026-08-31:
- редакция от 16.04.2026;
- срок действия ограничен 01.09.2032.

Публично подтверждено:
- для steel wire ropes существует source-bound defectoscopy / metallic-section-loss criterion;
- necessity of defectoscopy depends on normative documentation, type and purpose of lifting structure.

Used:
- signal must be mapped to correct regulated parameter before decision.

Guard:
- numeric criterion is not universalized to any MRT method/jurisdiction.

---

## Xue & Sun — Measurement, 2026

Research on MFL under large sensor lift-off.

Used:
- larger lift-off can weaken defect signal;
- strand background/noise can hinder detection;
- measurement geometry matters.

Guard:
- research signal-processing method != current crane inspection standard.

---

# Reader Experience

Puzzle:

> visually good rope + strong MRT deterioration — whom to believe?

Arc:
1. instrument measures response;
2. baseline/trend requires comparability;
3. conflicting channels generate hypotheses;
4. chain NDT shows method/acceptance separation;
5. uncertainty becomes evidence ladder and next action.

Formal Reader Experience Pass remains after full Lesson, Technical Editorial and Red Team.
