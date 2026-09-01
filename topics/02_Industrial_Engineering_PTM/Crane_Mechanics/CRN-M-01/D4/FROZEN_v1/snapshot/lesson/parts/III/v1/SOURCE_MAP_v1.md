# CRN-M-01 / D4 Lesson
# Part III — Source Map v1
## Проверка актуальности: 2026-08-31

Part III разворачивает завершённый D4-G3 в учебную последовательность Blocks 11–15.

Новые универсальные численные пороги или ресурсные формулы не вводятся.

---

## Основная source gate

`D4/gates/G3/v1/CRN-M-01_D4_G3_ADVANCED_MECHANICS_v1.md`

Использовано:
- SkillsVault M0–M4;
- `D/d` как вход, а не life formula;
- contact field vs `p = F/A`;
- fretting causal chain;
- evolving damage;
- sensitivity;
- model discrepancy;
- validation ladder.

---

## ISO 16625:2025

`Cranes and hoists — Selection of wire ropes, drums and sheaves`

Статус на 2026-08-31:
- Published;
- Edition 2;
- publication 2025-02;
- replaces ISO 16625:2013.

Публичная область:
- selection of steel wire ropes;
- influence of rope drive geometry;
- drum and sheave geometry incorporated in proof of competence.

Официальная страница:
https://www.iso.org/standard/77889.html

Использовано:
- подтверждение системной значимости геометрии rope drive;
- Part III не воспроизводит закрытые расчётные процедуры.

---

## ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`

Статус на 2026-08-31:
- Published, Edition 5;
- текущая опубликованная редакция;
- ISO/CD 4309 Edition 6 находится в разработке и не является текущим стандартом.

Публичная область ISO 4309:2017 прямо отмечает повышенную повреждаемость running ropes в crossover zones при multi-layer spooling.

Официальные страницы:
https://www.iso.org/standard/66759.html
https://www.iso.org/standard/90256.html

Использовано:
- реальная геометрия / multilayer contact может локально усиливать повреждение;
- draft не используется как current requirement.

---

# Современная исследовательская литература

## Ridge, I.M.L. — 2026

`Bending-tension fatigue in six-strand wire ropes`

Journal of Strain Analysis for Engineering Design,
Volume 61, Issue 4, 2026.

DOI:
https://doi.org/10.1177/03093247251414306

Публичный abstract:
- highly damaging localised bending–tension fatigue;
- low-amplitude bending motion over sheave + fluctuating tension;
- data set focused on six-strand ropes;
- strong offshore/mooring context.

Использовано:
- bending and tension history can interact;
- small motion can still be mechanically severe.

Guard:
- не переносить endurance model как universal crane-rope curve.

---

## Kamarudin, Ahmad, Tamin — 2026

`Fretting wear damage model for stranded steel wire ropes`

Wear 588 (2026), 206516.

DOI:
https://doi.org/10.1016/j.wear.2026.206516

Публичный abstract:
- damage-based fretting wear model;
- drawn steel wire rope;
- FE calibration;
- cross-wire test validation;
- verification on 1×7 strand configuration.

Использовано:
- M3/M4 models can couple local contact, wear evolution and fracture-related damage;
- numerical parameters remain source- and construction-bound.

Guard:
- no numeric threshold / life correlation copied into lesson;
- no automatic transfer to different crane rope construction.

---

## Dyson et al. — 2026

`Tribometer testing of drawn rope wire in representative fretting contacts: The importance of lubrication mechanisms and lubricant base fluid viscosity in minimising fretting wear`

Proceedings of the IMechE, Part J: Journal of Engineering Tribology.
Online first 2026-08-10.

DOI:
https://doi.org/10.1177/13506501261477250

Публичный abstract:
- lab-scale representative fretting contact;
- lubrication-related parameters materially influence fretting wear;
- base fluid viscosity is specifically investigated.

Использовано:
- lubrication is a contact-regime variable, not merely binary presence/absence.

Guard:
- tribometer result != whole-rope crane life model.

---

# Reader Experience

Narrative puzzle:

> одинаковые `D/d`, диаметр и нагрузка — почему один канат повреждается раньше?

Путь:
1. `D/d` перестаёт быть финальным объяснением;
2. contact becomes field;
3. fretting links contact and fatigue;
4. damage becomes evolving system;
5. model complexity becomes evidence obligation.

Formal Reader Experience Pass выполняется после полного Lesson, Technical Editorial и Red Team.
