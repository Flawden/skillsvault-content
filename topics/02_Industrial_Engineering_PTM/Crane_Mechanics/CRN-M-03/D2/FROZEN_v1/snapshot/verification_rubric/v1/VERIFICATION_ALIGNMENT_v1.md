# CRN-M-03 / D2 Verification Rubric v1 — Alignment

## ER coverage

Все ER-D2-01…13 имеют явные дескрипторы 0–4.

| ER | Наблюдаемая компетенция | Known evidence | U1 / C1 evidence |
|---|---|---|---|
| ER-D2-01 | Граница системы / локальный interface | A, J | U1 + C1 |
| ER-D2-02 | Полная ССТ: силы + реакции + моменты | A, B, J | U1 + C1 |
| ER-D2-03 | Line-of-action / contact-resultant status | B, J | U1 + C1 |
| ER-D2-04 | ЦТ выбранной системы | C, J | U1 + C1 |
| ER-D2-05 | Loaded-state constraint hypotheses | D, J | U1 + C1 |
| ER-D2-06 | Load-share classification before reactions | E, J | U1 + C1 |
| ER-D2-07 | Physical mass ≠ capacity arithmetic | F, J | U1 + C1 |
| ER-D2-08 | Holding physics ≠ rating / acceptance | G, J | U1 + C1 |
| ER-D2-09 | Quasistatic ≠ transition dynamics | H, J | U1 + C1 |
| ER-D2-10 | Mechanics / proof / inspection / safe use / authority | I, J | U1 + C1 |
| ER-D2-11 | Discriminating evidence request | A–J | U1 + C1 |
| ER-D2-12 | Model-status / bounded STOP | A–J | U1 + C1 |
| ER-D2-13 | Unseen transfer + challenge update | known cases insufficient | U1 + C1 required |

## Verification architecture

Обязательны:

1. один known Practice case A–J;
2. новый `U1`;
3. `C1`, materially меняющий evidence-status.

Case J сам по себе не закрывает ER-D2-13.

## Scoring decision

13 dimensions × 4 = 52.

- `D2 VERIFIED`: every ER >=3, total >=39, 0 BF, known case + U1 + C1 + evidence package complete;
- `D2 ROBUST / TRANSFER`: total >=47 и ER-D2-06/10/11/12/13 =4, 0 BF.

Сумма не компенсирует слабую dimension.

## Blocking-failure decision

Expected Result передал RF-D2-01…10 как strong candidates. Rubric принимает их как **10 non-compensable BF**, но с важным trigger rule: черновая ошибка становится BF только если learner использует её как основание закрытой/численной/equipment модели и не исправляет до вывода.

### Non-compensable BF — 10

- BF-D2-01 Body / interface laundering;
- BF-D2-02 Force / moment map incomplete;
- BF-D2-03 Contact resultant invention;
- BF-D2-04 CG substitution;
- BF-D2-05 Constraint-state promotion;
- BF-D2-06 Load-share by appearance;
- BF-D2-07 Capacity arithmetic promotion;
- BF-D2-08 Holding completeness claim;
- BF-D2-09 Quasistatic promotion;
- BF-D2-10 Evidence-role / authority collapse.

Любой BF → `D2 NOT VERIFIED` независимо от total.

### Severity review — 1

`RF-D2-11 — NON-DISCRIMINATING EVIDENCE REQUEST` становится `SR-D2-01`.

Общий запрос данных снижает ER-D2-11/12, но не является автоматическим BF, если learner честно остановил inference и не выдал ложный verdict.

## U1 design rationale

U1 не является переименованным Case J. Он соединяет:
- неизвестный ЦТ длинного груза;
- трёхветвевую систему с одной визуально не полностью включённой ветвью;
- rotation state сочленения, известный только без нагрузки;
- friction/clamp holding family с неполным device-specific evidence;
- «медленный» подъём с потенциальным transition;
- nominal marking как temptation для capacity arithmetic.

Правильный результат может быть `MODEL NOT CLOSED`.

## C1 design rationale

C1 даёт exact OEM configuration evidence:
- центральная ветвь подтверждается как вторично включающаяся после относительного перемещения;
- сочленение подтверждается как rotation-limited under load;
- документ не является current inspection/safe-use/operation authorization.

Проверяется способность learner:
- обновить active-contact / constraint / load-share model;
- сохранить unknown CG/holding/transition gaps, если C1 их не закрыл;
- обновить evidence request;
- не сделать authority promotion.

## Evidence outputs

Минимальный learner package — 10 outputs из Expected Result без изменений.

Verification дополнительно сохраняет known response, U1, C1 delta, ER scoring, BF check, SR note и final decision.

## Language accessibility

Learner-facing wording Russian-first. Русские эквиваленты полностью засчитываются; английские labels только explained/optional.

## Claim locks

Rubric не вводит новых design/proof/load-factor/capacity/holding-rating/inspection/load-test/repair/NDT/equipment-operation критериев.

## Final Alignment readiness

Следующий stage обязан подтвердить:

```text
Lesson
↔ Practice
↔ Practice Reasoning
↔ ER-D2-01…13
↔ Rubric 0–4
↔ BF-D2-01…10 / SR-D2-01
↔ U1 / C1
```

без orphan competence, surprise BF или guard contradiction.
