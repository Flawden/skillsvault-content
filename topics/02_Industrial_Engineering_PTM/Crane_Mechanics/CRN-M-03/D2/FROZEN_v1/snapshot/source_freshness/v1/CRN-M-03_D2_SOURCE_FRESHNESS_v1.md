# CRN-M-03 / D2 — Source Freshness v1

## Решение

`PASS WITH WATCHLIST — FREEZE CANDIDATE READY`

Baseline remote commit:

`59554329bcff086c4fdde8363eb51bdff0995638`

Дата проверки свежести:

`2026-09-03`

Проверяемый контур:

```text
D2 Scope / Source Gate
Lesson + Technical Editorial + Red Team + Reader Experience
Practice / Practice Reasoning
Expected Result
Verification Rubric
Final Alignment
```

Этот проход не переписывает accepted D2 mechanics. Он повторно проверяет current edition/status/lifecycle, явные scope/exclusion records, watchlist и границы между общей механикой, formal proof, inspection, safe use и equipment authority перед immutable D2 Freeze.

---

# 1. Сводка

```text
Published / regulatory anchors checked:          7
Equipment-specific authority boundary:           1
Development companion records:                   0
Explicit scope / exclusion records rechecked:    2
Watchlist records:                               1

Stale anchor requiring removal:                  0
Draft misused as current requirement:            0
Withdrawn edition used as current:               0
Source-scope leakage requiring correction:       0
Formal-proof role leakage:                       0
Inspection-authority leakage:                    0
Safe-use-authority leakage:                      0
Equipment-authority leakage:                     0
Numeric claim-lock leakage:                      0
Language-accessibility regression:               0
Content correction required:                     0
```

Вывод:

> Ни один дефект свежести источников не блокирует CRN-M-03 D2 Freeze. Единственный watchlist record остаётся активным и non-blocking.

---

# 2. Текущие source anchors

## ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

Публичные метаданные ISO повторно проверены 2026-09-03:

- Edition 5;
- publication `2026-07`;
- status `Published`, stage `60.60`;
- previous ISO 4306-1:2007 remains shown as withdrawn.

Роль D2: terminology/component boundary. Термин или название компонента не является proof, inspection acceptance или equipment permission.

Статус: `PASS`

Public metadata: https://www.iso.org/standard/78820.html

---

## ISO 17440:2014

`Cranes — General design — Limit states and proof of competence of forged steel hooks`

Публичные метаданные ISO повторно проверены 2026-09-03:

- Edition 1;
- status `Published / Confirmed`, stage `90.93`;
- public scope still covers defined forged-steel point-hook bodies and specified shanks;
- plate hooks remain explicitly outside the public scope;
- the standard remains a limit-state/formal-proof source and points to ISO 8686-1 for that proof context.

D2 guard сохраняется:

```text
ОБЩАЯ МЕХАНИКА ЭКСЦЕНТРИСИТЕТА / ЛИНИИ ДЕЙСТВИЯ
≠
ISO 17440 PROOF OF COMPETENCE
```

и отдельно:

```text
ISO 17440
≠
WHOLE HOOK-SUSPENSION PROOF
≠
PLATE-HOOK AUTHORITY
```

Статус: `PASS`

Public metadata: https://www.iso.org/standard/59758.html

---

## ISO 17096:2015

`Cranes — Safety — Load lifting attachments`

Публичные метаданные ISO повторно проверены 2026-09-03:

- Edition 1;
- status `Published / Confirmed`, stage `90.93`;
- lifecycle records show confirmation on `2026-03-20`;
- included public categories still cover plate clamps, vacuum lifters, lifting magnets, lifting/spreader beams, C-hooks, lifting forks and clamps;
- public scope still excludes slings, ladles, expanding mandrels, buckets, grabs, grab buckets and container spreaders.

Критический guard остаётся неизменным:

```text
ISO 17096
≠
GRAB / GRAB-BUCKET AUTHORITY BY ANALOGY
```

D2 может объяснять generic mechanics такого удержания, но не переносит ISO 17096 на excluded device class.

Статус: `PASS`

Public metadata: https://www.iso.org/standard/58103.html

---

## ISO 8686-1:2012

`Cranes — Design principles for loads and load combinations — Part 1: General`

Публичные метаданные ISO повторно проверены 2026-09-03:

- Edition 2;
- status `Published`;
- current lifecycle stage `90.60 / Close of review (under review)`;
- public abstract remains a formal load/load-combination proof-of-competence context;
- public ISO/TC 96/SC 10 catalogue continues to list ISO 8686-1:2012 at stage 90.60 and does not list a separate published replacement for Part 1.

Роль D2 не меняется: это boundary между общей учебной механикой и formal design-load/load-combination layer.

D2 не реконструирует из public metadata:

- dynamic/load factors;
- load combinations;
- parameter ranges;
- proof coefficients;
- allowable numerical limits.

Статус: `PASS WITH WATCHLIST`

Public metadata: https://www.iso.org/standard/59417.html
Committee catalogue: https://www.iso.org/committee/344665/x/catalogue/

---

## ISO 9927-1:2013

`Cranes — Inspections — Part 1: General`

Публичные метаданные ISO повторно проверены 2026-09-03:

- Edition 3;
- status `Published / Confirmed`, stage `90.93`;
- ISO states that the edition was last reviewed and confirmed in 2023 and remains current.

Роль D2: inspection-authority boundary.

```text
МЕХАНИЧЕСКОЕ НАБЛЮДЕНИЕ / МОДЕЛЬ
≠
INSPECTION ACCEPTANCE / DISCARD VERDICT
```

Статус: `PASS`

Public metadata: https://www.iso.org/standard/51102.html

---

## ISO 12480-1:2024

`Cranes — Safe use — Part 1: General`

Публичные метаданные ISO повторно проверены 2026-09-03:

- Edition 2;
- publication `2024-08`;
- status `Published`, stage `60.60`;
- public abstract continues to frame safe use as a safe system of work involving planning, selection, operation, maintenance and personnel roles.

Роль D2: safe-use/planning authority boundary.

```text
МЕХАНИЧЕСКАЯ МОДЕЛЬ D2
≠
LIFT PLAN
≠
EQUIPMENT SELECTION AUTHORITY
≠
PERMISSION TO OPERATE
```

Статус: `PASS`

Public metadata: https://www.iso.org/standard/83637.html

---

## ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Публичная нормативная запись повторно проверена 2026-09-03:

- current displayed edition: `16.04.2026`;
- срок действия документа ограничен `01.09.2032`;
- структура действующего текста продолжает отдельно регулировать эксплуатацию ПС, техническое освидетельствование, проверку состояния/дефектацию грузозахватных приспособлений и запреты эксплуатации.

Роль D2: Russian regulatory / inspection / operational-authority boundary.

D2 не переносит отдельные численные rules/таблицы ФНП в generic mechanics и не превращает учебный расчёт в разрешение реальной операции.

Статус: `PASS`

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

---

# 3. Equipment-specific authority boundary

Для реального изделия exact passport/OEM/device documentation по-прежнему обязателен, если claim касается:

- фактической геометрии/конфигурации крюковой подвески или захвата;
- реального loaded-state вертлюга/шарнира/упора/защёлки;
- WLL/capacity/совместимости;
- разрешённых направлений приложения нагрузки и side/tip/eccentric restrictions;
- удерживающего состояния конкретного clamp/magnet/vacuum/grab;
- inspection/test/maintenance/replacement/repair/modification;
- current operation permission / return to service.

Freshness не нашёл оснований ослаблять эту boundary.

`PASS`

---

# 4. Повторная проверка D2 claim locks

Следующие классы остаются закрытыми:

- numeric hook design/proof;
- standard load factors and combinations;
- numeric side/tip/eccentric limits;
- WLL/SWL/capacity selection;
- holding-force/device-rating calculations;
- inspection/discard/acceptance and load-test criteria;
- sling design / rigging-plan authority;
- repair/NDT/return-to-service;
- equipment-specific compatibility or operation permission.

Accepted D2 может использовать `ΣF`, `ΣM`, `M = r × F`, symbolic reactions, centre-of-gravity reasoning, loaded-constraint hypotheses и qualitative dynamics только как явно bounded educational mechanics.

Freshness не обнаружил leakage этих классов в accepted D2 content.

`PASS`

---

# 5. Source-role / authority ladder

Freshness подтверждает неизменную лестницу:

```text
OBSERVATION
→ EDUCATIONAL MECHANICS MODEL
→ FORMAL PROOF SOURCE (when applicable)
→ INSPECTION PROCESS / SOURCE
→ SAFE-USE / PLANNING PROCESS
→ EXACT OEM / EQUIPMENT AUTHORITY
```

При этом ни один положительный слой не повышает автоматически соседний:

```text
COMPONENT PROOF PASS
≠ WHOLE-SYSTEM PROOF PASS

INSPECTION PASS
≠ SAFE-USE PLAN COMPLETE

SAFE-USE PLAN EXISTS
≠ HOLDING / COMPONENT PROOF COMPLETE

OEM CONFIGURATION EVIDENCE
≠ CURRENT INSPECTION / OPERATION PERMISSION
```

`PASS`

---

# 6. Языковая доступность

Learner-facing policy остаётся:

```text
RUSSIAN-FIRST
```

Английские source titles и labels могут сохраняться как metadata/объяснённые технические синонимы, но корректный русский технический эквивалент полностью принимается.

Freshness не вводит нового обязательного англоязычного словаря.

`PASS`

---

# 7. Watchlist

```text
WATCH-01  ISO 8686-1:2012
Reason: current published Edition 2 remains at stage 90.60 / under review.
Action: recheck lifecycle/replacement status for any future D2 revision.
Blocking today: NO.
```

На 2026-09-03 watchlist **не требует D2 correction** и не блокирует Freeze, потому что accepted D2 использует ISO 8686-1 только как formal-proof boundary и не воспроизводит его numeric load-combination content.

---

# 8. Решение перед Freeze

```text
Final Alignment:                     PASS
Published/regulatory freshness:      PASS
Explicit scope/exclusions:           PASS
ISO 8686 lifecycle watch:            ACTIVE / NON-BLOCKING
Generic mechanics boundary:          PASS
Formal-proof role separation:        PASS
Inspection-authority separation:     PASS
Safe-use-authority separation:       PASS
Equipment/OEM authority boundary:    PASS
Russian-first language:              PASS
Content corrections:                 NONE

CRN-M-03 D2 FREEZE CANDIDATE:         READY
```

**CRN-M-03 D2 SOURCE FRESHNESS = COMPLETE / PASS WITH WATCHLIST.**

Next:

`CRN-M-03 / D2 FREEZE / v1 — immutable D2 package, manifests, frozen index and tag contract`
