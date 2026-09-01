# CRN-M-01 / D4 Lesson
# Part IV — Source Map v1
## Проверка актуальности: 2026-08-31

Part IV разворачивает G3 + G8 в Blocks 16–20.
Новые нормативные коэффициенты и закрытые fatigue tables не воспроизводятся.

---

## ISO 4301-1:2016

`Cranes — Classification — Part 1: General`

Статус на 2026-08-31:
- Published;
- Edition 3;
- publication 2016-07;
- reviewed and confirmed 2021;
- remains current.

Публичная область:
- total number of working cycles during specified design life;
- load spectrum factor;
- average displacements.

Официальная страница:
https://www.iso.org/standard/63070.html

Использовано:
- cycle count, load spectrum and displacement are distinct duty coordinates;
- crane cycle count is not automatically local rope fatigue count.

---

## ISO 12482:2014

`Cranes — Monitoring for crane design working period`

Статус на 2026-08-31:
- Published;
- Edition 1;
- current published standard;
- stage: to be revised.

Публичная область:
- monitoring actual crane duty during long-term operation;
- comparing actual duty with original design duty;
- focus special inspections on critical areas.

Официальная страница:
https://www.iso.org/standard/57481.html

Использовано:
- design duty != actual duty;
- crane design working period != rope service life.

Guard:
- standard is about crane design working period, not universal rope remaining-life calculation.

---

## ISO/CD 12482 — Edition 2

Статус на 2026-08-31:
- Committee Draft;
- under development;
- intended to replace ISO 12482:2014;
- NOT current published requirement.

Официальная страница:
https://www.iso.org/standard/91046.html

Использовано:
- freshness awareness only.

Guard:
- draft content is not treated as current requirement.

---

# Research evidence

## Ogata, Yamaguchi, Kurahashi, Yamagiwa — 2026

`Statistical modelling of wire breakage progression and rope fatigue life considering tension history`

Engineering Failure Analysis,
Volume 186 Part A,
15 March 2026,
Article 110476.

DOI:
https://doi.org/10.1016/j.engfailanal.2025.110476

Публичный abstract:
- BoS fatigue under constant, two-step and multistep tension;
- tension-dependent wire-break progression;
- Weibull / hierarchical Bayesian model;
- model captures nonlinear progression;
- in reported tests it outperformed Miner’s rule for fatigue-life prediction.

Использовано:
- sequence/history can matter;
- linear cumulative damage is an assumption, not law.

Guard:
- model is not promoted as universal crane-rope life method.

---

## Ridge — 2026

`Bending-tension fatigue in six-strand wire ropes`

Journal of Strain Analysis for Engineering Design,
61(4), 2026.

DOI:
https://doi.org/10.1177/03093247251414306

Использовано:
- bending–tension can be a distinct local fatigue mechanism;
- fatigue curve carries construction and test-domain address.

Guard:
- strong offshore/mooring emphasis and six-strand data scope;
- no direct universal transfer to crane ropes.

---

## Onur & Imrak — 2012

`Experimental and theoretical investigation of bending over sheave fatigue life of stranded steel wire rope`

Experimental domain:
- 6×36 Warrington-Seale;
- investigated tensile-load and D/d ranges;
- regression model validated within that studied range.

Использовано:
- regression fit is domain-bound;
- extrapolation beyond investigated range requires justification.

Guard:
- historical research, not current normative method.

---

# SkillsVault internal gates

## G3
Used:
- M0–M4;
- sensitivity;
- model discrepancy;
- validation discipline;
- life-output guard.

## G8
Used:
- crane cycle != rope bending cycle;
- average load != spectrum;
- spectrum != local movement/contact history;
- crane design working period != rope service life.

---

# Reader Experience

Puzzle:

> Two identical cranes, both 100 000 cycles and similar average load. Why can rope life differ dramatically?

Narrative arc:
1. crane cycle is deconstructed into local events;
2. average becomes spectrum;
3. S–N receives an address;
4. Miner becomes explicit assumption;
5. remaining life becomes conditional future model;
6. Red Team attacks a seductive precise number.

Formal Reader Experience Pass remains after full Lesson, Technical Editorial and Red Team.
