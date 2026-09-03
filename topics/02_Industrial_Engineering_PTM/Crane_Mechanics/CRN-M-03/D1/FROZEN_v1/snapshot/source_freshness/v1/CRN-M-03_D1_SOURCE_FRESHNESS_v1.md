# CRN-M-03 / D1 — Source Freshness v1

## Решение

`PASS — FREEZE CANDIDATE READY`

Baseline remote commit:

`d0530d63dd9cc5dd6159bc7757d6a1e6027749d2`

Дата проверки свежести:

`2026-09-03`

Проверяемый контур:

```text
D1 Scope / Source Gate
Lesson + Technical Editorial + Red Team + Reader Experience
Practice / Practice Reasoning
Expected Result
Verification Rubric
Final Alignment
```

Этот проход повторно проверяет текущий статус внешних источников, явные границы применимости/исключения и D1-границы по силовому пути, принципу удержания, приёмке и полномочиям перед immutable D1 Freeze.

---

# 1. Сводка

```text
Published / regulatory anchors checked:          5
Equipment-specific authority boundary:           1
Development companion records:                   0
Explicit scope / exclusion records rechecked:    2
Watchlist records:                               0

Stale anchor requiring removal:                  0
Draft misused as current requirement:            0
Withdrawn edition used as current:               0
Source-scope leakage requiring correction:       0
Acceptance-authority leakage:                    0
Numeric claim-lock leakage:                      0
Equipment-authority leakage:                     0
Language-accessibility regression:               0
Content correction required:                     0
```

Вывод:

> Ни один дефект свежести источников не блокирует CRN-M-03 D1 Freeze.

---

# 2. Проверка текущих источников

## ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

Публичные метаданные ISO проверены 2026-09-03:

- Edition 5;
- опубликован 2026-07;
- статус `Published`, stage `60.60`;
- предыдущая ISO 4306-1:2007 показана как withdrawn.

Роль D1: терминология и граница компонентного описания крана. Название элемента не становится доказательством его допустимости, совместимости или технического состояния.

Статус: `PASS`

Public metadata: https://www.iso.org/standard/78820.html

---

## ISO 1837:2003

`Lifting hooks — Nomenclature`

Публичные метаданные ISO проверены 2026-09-03:

- Edition 2;
- статус `Published / Confirmed`, stage `90.93`;
- ISO указывает, что редакция была пересмотрена и подтверждена в 2022 году и остаётся current.

Роль D1: номенклатура крюков.

Жёсткая граница сохраняется:

```text
НОМЕНКЛАТУРА
≠
РАСЧЁТ / PROOF
≠
ПРИЁМКА / БРАКОВКА
```

Статус: `PASS`

Public metadata: https://www.iso.org/standard/37599.html

---

## ISO 17440:2014

`Cranes — General design — Limit states and proof of competence of forged steel hooks`

Публичные метаданные ISO проверены 2026-09-03:

- Edition 1;
- статус `Published / Confirmed`, stage `90.93`;
- документ остаётся действующей опубликованной редакцией;
- публичный scope сохраняет ограничение на определённые кованые стальные крюки;
- plate hooks явно не входят в scope.

Роль D1: **граница формального proof-of-competence для определённого класса крюков**, а не универсальный beginner-критерий для любого крюка или всей крюковой подвески.

Публичные метаданные не используются для восстановления платных формул/таблиц или для реального equipment verdict.

Статус: `PASS`

Public metadata: https://www.iso.org/standard/59758.html

---

## ISO 17096:2015

`Cranes — Safety — Load lifting attachments`

Публичные метаданные ISO проверены 2026-09-03:

- Edition 1;
- статус `Published / Confirmed`, stage `90.93`;
- lifecycle ISO показывает повторное подтверждение стандарта 2026-03-20;
- публичный scope по-прежнему включает ряд non-fixed attachments (например clamps, vacuum lifters, lifting magnets, beams, C-hooks, forks);
- публичный scope по-прежнему **явно исключает buckets, grabs, grab buckets и container spreaders**.

Критический D1 guard сохраняется без изменений:

```text
ПОХОЖАЯ КАТЕГОРИЯ / НАЗВАНИЕ
≠
ТОЧНАЯ ПРИМЕНИМОСТЬ ИСТОЧНИКА
```

и отдельно:

```text
ISO 17096
≠
ТЕХНИЧЕСКАЯ ОСНОВА ДЛЯ GRAB / GRAB-BUCKET ПО АНАЛОГИИ
```

Это особенно важно для U1 + C1: если exact OEM identity раскрывается как `grab`, learner обязан убрать ISO 17096 из роли применимого технического источника для этого устройства, а не «дотягивать» scope по сходству.

Статус: `PASS`

Public metadata: https://www.iso.org/standard/58103.html

---

## ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Публичная нормативная запись проверена 2026-09-03:

- действующая отображаемая редакция: `16.04.2026`;
- список изменений включает приказ Ростехнадзора №129 от 16.04.2026;
- срок действия ограничен `01.09.2032`.

Роль D1: российская regulatory / operational-authority boundary для применимого контекста ПС.

ФНП не заменяют exact hook/attachment standard, паспорт, OEM/device documentation и компетентное решение по реальному оборудованию.

Статус: `PASS`

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

---

# 3. Equipment-specific authority boundary

Для реального оборудования по-прежнему необходимы актуальные паспорт/OEM/device documents, соответствующие **конкретному** объекту и конфигурации, если вывод касается:

- фактической крюковой подвески и её интерфейсов;
- типа/конструкции/материала/исполнения крюка;
- keeper/latch и утверждённой конфигурации;
- actual clamp/grab/magnet/vacuum attachment;
- грузоподъёмности и совместимости конкретного устройства;
- inspection / test / maintenance / replacement / repair requirements;
- модификации, приёмки, пуска или return-to-service.

Freshness не нашёл оснований ослаблять эту границу.

`PASS`

---

# 4. Повторная проверка D1 claim locks

Следующие классы утверждений остаются закрытыми без точного применимого источника и equipment/device evidence:

- numeric hook geometry / proof criteria;
- wear / deformation / crack / discard thresholds;
- side / tip / eccentric numeric limits;
- latch / keeper design, retrofit or acceptance;
- grab / clamp / magnet / vacuum holding-force criteria;
- load-test values and acceptance procedures;
- specialist NDT interpretation;
- repair / refurbishment instructions;
- equipment-specific capacity / compatibility;
- return-to-service / continued-operation permission.

Freshness review не обнаружил утечки этих классов в принятый D1 content.

`PASS`

---

# 5. Языковая доступность

Learner-facing policy остаётся:

```text
RUSSIAN-FIRST
```

Англоязычная техническая метка допустима, когда она уже объяснена по-русски или является необязательным label. Русский эквивалент полностью валиден при оценке.

Freshness не вносит новых learner-facing английских терминов и не меняет language guard.

`PASS`

---

# 6. Watchlist

```text
WATCHLIST: EMPTY
```

На дату 2026-09-03 ни один из проверенных D1 anchors не требует отдельной development/replacement watch-записи для текущего v1.

Это не отменяет будущую обязательную freshness-проверку при новой версии контента.

---

# 7. Решение перед Freeze

```text
Final Alignment:                  PASS
Current-source anchors:           PASS
Explicit exclusions:             PASS
Draft/current separation:         PASS
Source-role / applicability:      PASS
Claim locks:                      PASS
Acceptance guard:                 PASS
Equipment-authority guard:        PASS
Language accessibility:           PASS
Content corrections:              NONE
Watchlist:                        EMPTY

D1 FREEZE CANDIDATE:              READY
```

**CRN-M-03 D1 SOURCE FRESHNESS = COMPLETE / PASS.**

Next:

`CRN-M-03 / D1 FREEZE / v1 — immutable D1 package, manifests, frozen index and tag contract`
