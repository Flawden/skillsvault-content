# CRN-M-04 / D1 Verification Rubric v1 — Alignment

## ER coverage

Все ER-D1-01…10 имеют явные дескрипторы 0–4.

| ER | Наблюдаемая компетенция | Known Practice evidence | U1 / C1 evidence |
|---|---|---|---|
| ER-D1-01 | System / authority boundary | A, J | U1 + C1 |
| ER-D1-02 | Drive-path topology vs operating state | A, B, J | U1 + C1 |
| ER-D1-03 | Ratio / actual / rated torque separation | C, J | U1 + C1 |
| ER-D1-04 | Reducer family without exact-design/rating escalation | D, J | U1 + C1 |
| ER-D1-05 | Coupling / alignment / interchangeability boundary | E, F, J | U1 + C1 |
| ER-D1-06 | Condition / lubrication evidence discipline | G, H, J | U1 + C1 |
| ER-D1-07 | Source role / exact applicability | F, G, H, I, J | U1 + C1 |
| ER-D1-08 | History / current configuration discipline | C, J | U1 + C1 |
| ER-D1-09 | Discriminating evidence / STOP / authority handoff | A–J | U1 + C1 |
| ER-D1-10 | Unseen transfer | known cases insufficient | U1 + C1 required |

## Verification architecture

Обязательны:
1. один known Practice case A–J;
2. `U1` — новый unseen drive case;
3. `C1` — существенный evidence/configuration update.

Known-case performance и Case J сами по себе недостаточны для ER-D1-10.

## Blocking-failure decision

Expected Result передал 10 strong BF candidates + 2 severity-review candidates.

Rubric принимает:

### Non-compensable BF — 10
- BF-D1-01 Boundary / authority leakage;
- BF-D1-02 Topology → operating state;
- BF-D1-03 Ratio → actual / rated torque;
- BF-D1-04 Coupling flexibility → alignment acceptance;
- BF-D1-05 Family standard → interchangeability;
- BF-D1-06 Lubricant source → installed / substitution claim;
- BF-D1-07 Condition / damage → root cause / acceptance;
- BF-D1-08 Document title → exact applicability;
- BF-D1-09 Historical data → current configuration;
- BF-D1-10 Equipment-authority leak.

Любой BF после downstream-use trigger → `D1 NOT VERIFIED` независимо от суммы.

### Severity review — 2
`FAMILY → EXACT IDENTITY / RATING` и `UNKNOWN → CONVENIENT NOMINAL ASSUMPTION` не являются automatic BF сами по себе.

Они снижают соответствующую ER dimension. Если ошибка используется downstream и создаёт один из 10 опасных status jumps, срабатывает конкретный BF.

## Mandatory D1 core

Для `D1 VERIFIED`:
- ER-D1-01…10 >= 3;
- total >= 30/40;
- 0 BF;
- known case completed;
- U1 completed;
- C1 completed;
- evidence package complete.

Для `D1 ROBUST / TRANSFER`:
- total >= 36/40;
- все условия VERIFIED;
- ER-D1-07 = 4;
- ER-D1-09 = 4;
- ER-D1-10 = 4;
- 0 BF.

## U1 design rationale

U1 не копирует Practice J. Он соединяет в новой конфигурации:
- closed connection node / coupling identity uncertainty;
- old ratio/current configuration trap;
- ratio + motor nameplate torque shortcut;
- reducer-family versus exact identity/rating;
- spare-coupling interchangeability temptation;
- general lubricant source versus installed/OEM prescription;
- noise/leakage condition evidence;
- source-title/exact-applicability temptation;
- operation-authority request.

Correct bounded STOP — положительное evidence, если blocked claims и discriminating evidence названы точно.

## C1 design rationale

C1 предоставляет exact current reducer/coupling identity и current OEM package, одновременно:
- опровергает old drawing как current ratio source;
- показывает mismatch spare coupling;
- открывает exact OEM alignment/lubricant source roles;
- **не** закрывает measured alignment, installed lubricant, condition acceptance или operation authority.

Проверяется evidence-status update, а не способность угадать field verdict.

## Evidence outputs

Минимальный learner package:
1. System / authority map;
2. Drive-path / claim-status map;
3. Kinematic / torque status;
4. Reducer / coupling family + exact-identity status;
5. Condition / lubrication evidence register;
6. Source-role / exact-applicability map;
7. Discriminating evidence request;
8. Bounded conclusion / STOP-handoff.

Verification добавляет known response, U1, C1 delta, scoring, BF check и final decision.

## Language accessibility

Learner-facing wording Russian-first. English labels optional; русские эквиваленты полностью засчитываются.

## Claim/source boundary

Rubric не вводит новых нормативных thresholds. Locked остаются numerical design/rating, coupling selection, numeric alignment, lubricant selection/substitution, condition acceptance/root cause, repair/adjustment и equipment-operation authority.

## Final Alignment readiness

Следующий stage должен доказать exact traceability:

```text
Lesson ↔ Practice ↔ Reasoning ↔ ER-D1-01…10 ↔ Rubric ↔ BF/SR ↔ U1/C1
```

без orphan competence, surprise BF или guard contradiction.
