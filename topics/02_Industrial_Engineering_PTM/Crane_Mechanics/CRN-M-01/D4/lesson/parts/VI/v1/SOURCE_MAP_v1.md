# CRN-M-01 / D4 Lesson
# Part VI — Source Map v1
## Проверка актуальности: 2026-08-31

Part VI разворачивает завершённый D4-G5.

Новые универсальные pretension values, friction coefficients, transverse modulus values, groove/pitch limits или drum-stress formulae не вводятся.

---

## Основная source gate

`D4/gates/G5/v1/CRN-M-01_D4_G5_MULTILAYER_DRUM_v1.md`

Использовано:
- package state;
- lower layer as deformable support;
- crossover/cut-in mechanism;
- group-of-wraps model;
- recurrence after rope replacement as system evidence;
- radial stability;
- diameter under load;
- pretension denominator guard;
- M1/M2/M3 escalation;
- drum–rope coupling;
- design-authority boundary.

---

## ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`

Статус на 2026-08-31:
- Published, Edition 5;
- current published version;
- stage 90.92: to be revised.

Публичное описание прямо указывает, что при multi-layer spooling deterioration is significantly greater at crossover zones than at other rope sections.

Официальная страница:
https://www.iso.org/standard/66759.html

Использовано:
- crossover zone as special deterioration location.

Guard:
- location does not prove unique root cause.

---

## ISO/CD 4309 — Edition 6

Статус на 2026-08-31:
- Committee Draft;
- under development;
- NOT current published requirement.

Официальная страница:
https://www.iso.org/standard/90256.html

Использовано:
- freshness awareness only.

---

## ISO 16625:2025

`Cranes and hoists — Selection of wire ropes, drums and sheaves`

Статус на 2026-08-31:
- Published;
- Edition 2;
- 2025-02.

Публичная область:
- selection proof incorporates rope-drive geometry and drum/sheave geometry.

Официальная страница:
https://www.iso.org/standard/77889.html

Использовано:
- drum geometry belongs to rope-selection/system-compatibility problem.

---

# Numerical guard

G5 identified two public technical recommendations with different denominators:
- percentage of nominal rope load;
- percentage of minimum breaking load.

Lesson deliberately does NOT select one as a universal value.

Rule:
`number + denominator + source + context`.

---

# Reader Experience

Narrative puzzle:
> empty drum looks perfect; under load rope cuts into lower layer — what changed?

Arc:
1. lower layer becomes deformable;
2. crossover becomes contact-history zone;
3. axial strength separates from radial stability;
4. pretension gets denominator discipline;
5. rope and drum become coupled design system.

Formal Reader Experience Pass remains after full Lesson, Technical Editorial and Red Team.
