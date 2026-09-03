# CRN-M-03 / D1 Verification Rubric v1 — Alignment

## ER coverage

Все ER-D1-01…10 имеют явные дескрипторы 0–4.

| ER | Наблюдаемая компетенция | Known evidence | U1 / C1 evidence |
|---|---|---|---|
| ER-D1-01 | Object / interface boundary | A, J | U1 + C1 |
| ER-D1-02 | Branch / merge load path | B, J | U1 |
| ER-D1-03 | Latch / seating evidence discipline | C, J | U1 |
| ER-D1-04 | Holding principle | D, J | U1 + C1 |
| ER-D1-05 | Observation / unknown register | E, J | U1 + C1 |
| ER-D1-06 | Identity / interchangeability / whole-system boundary | F, H, J | U1 + C1 |
| ER-D1-07 | Source role / exact applicability | G, J | U1 + C1 |
| ER-D1-08 | History / nominal marking status | I, J | U1 + C1 |
| ER-D1-09 | Evidence request / bounded STOP / authority handoff | A–J | U1 + C1 |
| ER-D1-10 | Unseen transfer | known cases insufficient | U1 + C1 required |

## Verification architecture

Обязательные layers:

1. один знакомый Practice case A–J;
2. `U1` — новый unseen case;
3. `C1` — evidence-status update после первого ответа.

Known-case performance и Case J сами по себе недостаточны для ER-D1-10.

## Blocking-failure decision

Expected Result передал 8 strong BF candidates и 2 severity-review candidates.

Rubric принимает решение:

### Non-compensable BF — 8

- BF-D1-01 Object / authority collapse;
- BF-D1-02 Visual symmetry → load claim;
- BF-D1-03 Latch / seating → acceptance;
- BF-D1-04 Visible state → complete verification;
- BF-D1-05 Interchangeability by appearance;
- BF-D1-06 Source-scope leap;
- BF-D1-07 History → current validation;
- BF-D1-08 Equipment-authority leak.

Любой BF → `D1 NOT VERIFIED` независимо от суммы.

### Severity review — 2

`SERIAL-PATH ASSUMPTION` и `HOLDING-PRINCIPLE COLLAPSE` не объявляются автоматическими BF.

Они снижают соответствующую ER-dimension. BF возникает только если ошибка приводит к уже определённому опасному downstream claim.

Так сохраняется важная D1-граница: **честное `UNKNOWN` не наказывается как опасная ошибка; уверенная неподтверждённая выдумка — наказывается**.

## Mandatory D1 core

Для `D1 VERIFIED`:

- ER-D1-01…10 >= 3;
- total >= 30/40;
- no BF;
- known case completed;
- U1 completed;
- C1 completed;
- evidence package complete.

Для `D1 ROBUST / TRANSFER`:

- total >= 36/40;
- ER-D1-07 = 4;
- ER-D1-09 = 4;
- ER-D1-10 = 4;
- no BF.

## U1 design rationale

U1 не копирует Practice J.

Он соединяет несколько trap families в новой конфигурации:
- hook suspension + detachable gripping device;
- branch/merge topology;
- closed latch / reassuring seating;
- incomplete device identity;
- visible nominal marking;
- past-success history;
- exact holding mechanism unknown;
- category-title source temptation.

Правильный D1 outcome может не содержать field verdict. Сильный bounded STOP является положительным evidence, если learner точно показывает blocked claim и discriminating evidence.

## C1 design rationale

C1 предоставляет exact OEM identity и одновременно вскрывает explicit source exclusion: устройство подтверждается как `grab`, а public scope ISO 17096 исключает grabs/grab buckets.

Проверяется, способен ли learner:
- повысить identity status;
- изменить source applicability status;
- не повысить OEM-document existence до current acceptance;
- сохранить equipment-authority boundary.

## Evidence outputs

Минимальный learner package:

1. Object / interface map;
2. Load-path map;
3. Holding principle;
4. Observation / unknown register;
5. Identity / configuration status;
6. Source-role / exact-applicability map;
7. Discriminating evidence request;
8. Bounded conclusion / STOP-handoff.

Verification добавляет U1 response, C1 delta, ER scoring, BF check и final decision.

## Language accessibility

Learner-facing формулировки — Russian-first.

Английские термины допускаются как устойчивые labels, но их смысл вводится по-русски; equivalent Russian wording полностью засчитывается. Проверка не должна превращаться в экзамен по английской терминологии.

## Claim/source boundary

Rubric не вводит новых технических нормативов или equipment criteria.

Остаются locked:
- hook proof/design numbers;
- discard/inspection/acceptance thresholds;
- holding-force calculations;
- load-test acceptance;
- repair/NDT/return-to-service;
- equipment-specific capacity/compatibility;
- operational permission.

## Final Alignment readiness

Следующий stage должен подтвердить exact traceability:

```text
Lesson ↔ Practice ↔ Reasoning ↔ ER-D1-01…10 ↔ Rubric ↔ BF/SR ↔ U1/C1
```

без orphan competence, surprise BF или guard contradiction.
