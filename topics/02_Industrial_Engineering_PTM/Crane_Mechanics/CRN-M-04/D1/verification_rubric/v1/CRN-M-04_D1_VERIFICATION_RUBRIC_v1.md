# CRN-M-04 — Редукторы и муфты
# D1 Verification Rubric v1
## Формальная проверка beginner-компетентности, переноса и границ инженерного вывода

---
# Назначение

Эта рубрика отвечает на вопрос:

> **может ли обучающийся самостоятельно разобрать незнакомый привод с редуктором/муфтой на D1-уровне, не повышая topology до operating state, ratio до actual/rated torque, family до exact design/interchangeability, condition evidence до diagnosis/acceptance и учебный STOP до equipment-operation authority?**

Проверяется не память формулировок, а наблюдаемое действие:

```text
SYSTEM / AUTHORITY BOUNDARY
→ DRIVE-PATH / CLAIM-STATUS MAP
→ KINEMATIC / TORQUE STATUS
→ REDUCER / COUPLING FAMILY + IDENTITY STATUS
→ CONDITION / LUBRICATION EVIDENCE REGISTER
→ SOURCE ROLE / EXACT APPLICABILITY
→ DISCRIMINATING EVIDENCE REQUEST
→ BOUNDED CONCLUSION / STOP-HANDOFF
```

D1 Verification не открывает расчёт ISO 6336, selection/rating редуктора или муфты, численные alignment limits, lubricant selection/substitution, condition acceptance, root-cause diagnosis, repair/adjustment или continued-operation / return-to-service verdict.

---
# Языковое правило

Learner-facing проверка ведётся **по-русски**. Английские labels допустимы как короткие отраслевые обозначения, но русские эквиваленты засчитываются полностью. Балл ставится за инженерное действие, а не за английский словарь.

Ключевые labels:
- `drive path` — путь передачи вращения/момента через подтверждённые интерфейсы;
- `operating state` — фактический режим/направление/состояние в рассматриваемый момент;
- `rating` — допустимая/паспортная характеристика в применимом engineering contract;
- `exact applicability` — доказанная применимость конкретного источника к данному компоненту, конфигурации и вопросу;
- `bounded conclusion` — вывод только в пределах реально замкнутой цепочки evidence;
- `STOP / REQUEST EVIDENCE` — остановка неподдержанного вывода с конкретным запросом данных;
- `equipment authority` — полномочие принять реальное эксплуатационное/ремонтное/приёмочное решение.

---
# Архитектура проверки

Verification содержит три обязательных слоя:

```text
LAYER 1 — ЗНАКОМЫЙ PRACTICE CASE A–J
↓
LAYER 2 — U1: НЕЗНАКОМЫЙ DRIVE CASE
↓
LAYER 3 — C1: ИЗМЕНЕНИЕ EVIDENCE / CONFIGURATION STATUS
```

## Layer 1 — знакомый кейс
Проверяющий выбирает один Practice case A–J без выдачи Reasoning как answer key.

Цель:
- получить базовое evidence по ER-D1-01…09;
- убедиться, что learner способен сам собрать D1 drive packet;
- проверить, что знакомый сюжет не заменяет перенос.

Известный кейс **не подтверждает ER-D1-10 сам по себе**.

## Layer 2 — U1: unseen transfer
Используется новый кейс, которого нет в Practice A–J.

Цель:
- проверить ER-D1-01…10;
- проверить source/evidence/authority discipline в новой комбинации ловушек;
- разрешить корректный bounded STOP как сильный результат, если цепочка доказательств не замкнута.

## Layer 3 — C1: evidence-status challenge
После первого ответа на U1 проверяющий выдаёт существенное новое evidence.

Learner обязан:
1. назвать, что именно изменилось;
2. обновить только затронутые статусы;
3. не сохранять старый вывод по инерции;
4. не повышать новое evidence выше его реальной роли;
5. выдать новый bounded conclusion / STOP-handoff.

---
# Шкала 0–4

```text
0 — ОТСУТСТВУЕТ / ОПАСНЫЙ STATUS JUMP
1 — ТОЛЬКО С ПОДСКАЗКОЙ
2 — БАЗОВО НА ЗНАКОМОМ КЕЙСЕ
3 — D1 ПРОДЕМОНСТРИРОВАН
4 — УСТОЙЧИВЫЙ ПЕРЕНОС / КОРРЕКТНОЕ ОБНОВЛЕНИЕ ПО НОВЫМ ДАННЫМ
```

## Level 0
Ключевой шаг отсутствует либо learner оставляет опасный неподдержанный вывод, например topology→operating state, ratio→actual/rated torque, flexible coupling→alignment acceptance, symptom→root cause, general source→exact applicability или SkillsVault STOP→equipment command.

## Level 1
Понятия знакомы, но рабочая цепочка держится на наводящих вопросах. Learner не определяет самостоятельно blocked claim и discriminating evidence.

## Level 2
На знакомом кейсе логика в основном верна, но на новой конфигурации теряется один существенный слой или требуется challenge, чтобы исправить status jump.

## Level 3
Learner самостоятельно строит D1 evidence package, разделяет статусы, выбирает source role, проверяет applicability и заканчивает bounded conclusion либо обоснованным STOP.

## Level 4
Level 3 устойчиво сохраняется на U1 и C1, включая изменение текущей конфигурации/source status и попытки подтолкнуть к design/rating/acceptance/operation verdict.

---
# ER-D1-01 — System / authority boundary
## Граница системы и полномочий
### 0
Соседние узлы/authority domains слиты так, что claim о редукторе, муфте, тормозе, исполнителе или эксплуатации переносится без доказательства.
### 1
Boundary появляется только после подсказки.
### 2
На знакомом кейсе основные узлы разделены, но один существенный interface/authority gate теряется.
### 3
До технического вывода learner выдаёт `SYSTEM / AUTHORITY MAP`: in-scope components, adjacent objects, unknown interfaces и outside-D1 authority.
### 4
На U1/C1 самостоятельно меняет boundary/status только при новом evidence и не присваивает SkillsVault equipment authority.

---
# ER-D1-02 — Drive-path topology / operating-state separation
## Связность без выдуманного режима
### 0
Карта связности повышена до текущего направления вращения, power/torque flow или режима без evidence.
### 1
Разделение topology/state появляется после подсказки.
### 2
На знакомом кейсе topology верна, но learner неустойчиво маркирует mode-dependent claims.
### 3
Выдаёт `DRIVE-PATH / CLAIM-STATUS MAP` с `CONFIRMED / DOCUMENTED / HYPOTHESIS / UNKNOWN / MODE-DEPENDENT`.
### 4
На U1/C1 корректно обновляет только доказанные связи/режимы и не трактует стрелку схемы как универсальное доказательство operating state.

---
# ER-D1-03 — Ratio / actual torque / permissible-rating separation
## Кинематика без псевдорасчёта rating
### 0
Ratio и/или motor nameplate превращены в actual transmitted torque, permissible/rated output torque или suitability claim.
### 1
После подсказки learner разделяет три статуса.
### 2
На знакомом кейсе различает их, но current-ratio applicability проверяет нестабильно.
### 3
Выдаёт `KINEMATIC / TORQUE STATUS`: current ratio status, actual torque established/not established, permissible/rated torque established/outside D1.
### 4
На U1/C1 без подсказки отбрасывает historical ratio как current input после появления конфликтующего as-built evidence и не делает rating inference.

---
# ER-D1-04 — Reducer family without exact-design/rating escalation
## Распознавание family в пределах доказанного
### 0
Family или внешний вид используются как доказательство exact design/rating/load sharing/efficiency/reversibility либо как основание выбора.
### 1
Family определяется только после подсказки.
### 2
На знакомом кейсе family recognition в целом верно, но exact identity/status сформулированы неустойчиво.
### 3
Выдаёт `REDUCER FAMILY STATUS`: bounded family, supporting cues, exact identity status, design/rating claims not established/outside D1.
### 4
На U1/C1 меняет classification при новом evidence и сохраняет guard `FAMILY ≠ EXACT DESIGN / SIZE / RATING`.

---
# ER-D1-05 — Coupling / alignment / interchangeability separation
## Муфта без скрытой приёмки
### 0
`Flexible`, видимое смещение или family standard используются как достаточное доказательство допустимой несоосности, adjustment verdict либо interchangeability.
### 1
Разделение identity/alignment/interchangeability появляется после подсказки.
### 2
На знакомом кейсе learner знает, что нужны exact limits/data, но не формулирует их роль точно.
### 3
Выдаёт `COUPLING / ALIGNMENT STATUS`: family, exact identity, observed state, measured/acceptance status, interchangeability status; запрашивает exact method/limits/interface data.
### 4
На U1/C1 корректно обновляет identity/interchangeability и не переносит family-scope ГОСТ Р 50895-2025 на неподтверждённую муфту/замену.

---
# ER-D1-06 — Condition / lubrication evidence discipline
## Наблюдение без диагноза и назначения
### 0
Шум/вибрация/нагрев/течь/damage term превращены в root cause/acceptance, либо общий lubricant source — в installed/substitution/top-up claim.
### 1
После подсказки learner отделяет observation/history/hypothesis.
### 2
На знакомом кейсе register есть, но source role или unknowns сформулированы слишком общо.
### 3
Выдаёт `CONDITION / LUBRICATION REGISTER`: observed, reported/history, hypotheses, unknowns, root-cause status, acceptance status, lubricant identity/substitution status.
### 4
На U1/C1 корректно обновляет только затронутые evidence states; ISO 10825-1 остаётся damage-nomenclature role, ISO 12925-1 — lubricant-specification boundary, а не equipment verdict.

---
# ER-D1-07 — Source role / exact applicability
## Источник выбирается по вопросу
### 0
Название/номер документа объявлены exact applicable без проверки edition/scope/component/configuration/question либо explicit mismatch игнорируется.
### 1
Source role выбирается после подсказки.
### 2
На знакомом кейсе learner различает roles, но applicability проверяет нестабильно.
### 3
Использует цепочку `CLAIM → REQUIRED SOURCE ROLE → CANDIDATE SOURCE → EXACT APPLICABILITY STATUS` и выдаёт `CONFIRMED / NOT YET CONFIRMED / EXCLUDED`.
### 4
На C1 меняет source map при появлении exact device/configuration evidence и не пытается применять неподходящий источник «по аналогии».

---
# ER-D1-08 — Historical data / current configuration discipline
## Старые данные не становятся current engineering input автоматически
### 0
Old drawing/history/ratio/maintenance record превращены в current as-built fact без подтверждения.
### 1
Ограниченность history признаётся после подсказки.
### 2
На знакомом кейсе history status верный, но current evidence request слишком общий.
### 3
Выдаёт `CONFIGURATION / REVISION STATUS`: current identity/drawing, historical data, current applicability.
### 4
На U1/C1 самостоятельно понижает/повышает current applicability в ответ на revision/as-built evidence и не цепляется за старую схему.

---
# ER-D1-09 — Discriminating evidence / bounded STOP / authority handoff
## Остановка именно заблокированного вывода
### 0
Learner выдаёт design/rating/acceptance/operation verdict без authority basis либо пишет общий `STOP` без blocked claim/evidence request.
### 1
После подсказки просит «паспорт/документы вообще».
### 2
На знакомом кейсе bounded conclusion в целом корректен, но запрос evidence не различает competing statuses.
### 3
Называет конкретный blocked claim, конкретное discriminating evidence и заканчивает только в пределах доказанного; при необходимости использует `D1 STOP — EXACT DEVICE / SOURCE / OEM / COMPETENT-PROCESS DATA REQUIRED`.
### 4
На U1/C1 умеет сохранить STOP либо снять только его доказанную часть, не присваивая equipment authority.

---
# ER-D1-10 — Unseen transfer
## Перенос всей D1-цепочки на новый привод
### 0
Без знакомого сюжета workflow разваливается или learner выбирает verdict по внешнему виду/удобной номинальной гипотезе.
### 1
U1 выполняется только пошагово с подсказками.
### 2
Большая часть workflow переносится, но один критический слой теряется и восстанавливается только после challenge.
### 3
На U1 learner самостоятельно формирует полный D1 evidence package и приходит к bounded conclusion или STOP/evidence handoff.
### 4
После C1 корректно показывает `до / после`, обновляет только затронутые layers и сохраняет source/authority guards.

---
# Политика Blocking Failures

Любой подтверждённый Blocking Failure делает итог:

```text
D1 NOT VERIFIED
```

независимо от суммы.

## Downstream-use trigger
BF считается сработавшим, если опасный status jump:
- присутствует в финальном ответе; **или**
- используется как основание для следующего технического/selection/acceptance/operation вывода; **или**
- сохраняется после нейтрального C1 challenge.

Самокорректированная черновая гипотеза, явно помеченная как hypothesis и исправленная до downstream use, оценивается по соответствующей ER-dimension, но не является автоматическим BF.

## BF-D1-01 — BOUNDARY / AUTHORITY LEAKAGE
System boundary потеряна так, что claim или authority переносится между компонентами/доменами без доказательства.

## BF-D1-02 — TOPOLOGY → OPERATING STATE
Connectivity/arrow повышены до current rotation direction, power/torque flow или operating mode без evidence.

## BF-D1-03 — RATIO → ACTUAL / RATED TORQUE
Ratio и/или motor nameplate использованы как достаточное доказательство actual transmitted либо permissible/rated torque/suitability.

## BF-D1-04 — COUPLING FLEXIBILITY → ALIGNMENT ACCEPTANCE
`Flexible` или видимое relative movement превращены в допустимую несоосность, adjustment/acceptance verdict без exact method/limits.

## BF-D1-05 — FAMILY STANDARD → INTERCHANGEABILITY
Family/source match использован как доказательство совместимости/замены конкретной муфты без exact identity/interface/rating basis.

## BF-D1-06 — LUBRICANT SOURCE → INSTALLED / SUBSTITUTION CLAIM
Общий lubricant source повышен до доказательства установленного продукта, разрешённого долива, смешивания или substitution.

## BF-D1-07 — CONDITION / DAMAGE → ROOT CAUSE / ACCEPTANCE
Symptoms, trend или damage name превращены в root cause, браковку, remaining-life либо acceptance verdict без применимого process/evidence.

## BF-D1-08 — DOCUMENT TITLE → EXACT APPLICABILITY
Документ выбран по названию/категории и использован как exact applicable без edition/scope/component/configuration/question check.

## BF-D1-09 — HISTORICAL DATA → CURRENT CONFIGURATION
Old drawing/history/ratio/maintenance record использованы как current as-built engineering fact без подтверждения.

## BF-D1-10 — EQUIPMENT-AUTHORITY LEAK
SkillsVault analysis/STOP превращён в continued-operation, stop-operation, return-to-service, repair, adjustment или иной equipment command без authority process.

---
# Severity-review families — не автоматические BF

## SR-D1-01 — FAMILY → EXACT IDENTITY / RATING
Если learner сначала назвал family слишком уверенно, но сам ограничил claim и не использовал это для rating/selection/interchangeability, это scoring error по ER-D1-04/05.

Если guess становится основанием для actual/rated torque, interchangeability или source applicability, срабатывает соответствующий BF-D1-03/05/08.

## SR-D1-02 — UNKNOWN → CONVENIENT NOMINAL ASSUMPTION
Явная гипотеза, помеченная как hypothesis и проверяемая discriminating evidence, допустима как reasoning branch.

Если unknown скрыто превращён в engineering fact и используется downstream, срабатывает соответствующий BF по фактическому status jump (например BF-D1-02/03/04/05/06/08/09).

Так Rubric не наказывает за честное `UNKNOWN`, но не позволяет компенсировать опасную неподтверждённую уверенность высокой общей суммой.

---
# Scoring

10 dimensions × 4 = **40 points maximum**.

Сумма рассматривается только после BF-check.

- `0–19` → `D1 NOT VERIFIED`;
- `20–24` → `D1 DEVELOPING`;
- `25–29` → `D1 BORDERLINE`;
- `30–35` → `D1 VERIFIED` только при выполнении mandatory gates;
- `36–40` → `D1 ROBUST / TRANSFER` только при выполнении robust gates.

---
# Mandatory gates для D1 VERIFIED

Обязательны одновременно:

```text
ER-D1-01 >= 3
ER-D1-02 >= 3
ER-D1-03 >= 3
ER-D1-04 >= 3
ER-D1-05 >= 3
ER-D1-06 >= 3
ER-D1-07 >= 3
ER-D1-08 >= 3
ER-D1-09 >= 3
ER-D1-10 >= 3
TOTAL >= 30 / 40
BLOCKING FAILURES = 0
KNOWN CASE = COMPLETE
U1 = COMPLETE
C1 = COMPLETE
EVIDENCE PACKAGE = COMPLETE
```

Высокий total score не компенсирует ни один ER < 3 и ни один BF.

---
# Robust gates для D1 ROBUST / TRANSFER

Требуются:
- total >= 36/40;
- все условия `D1 VERIFIED`;
- `ER-D1-07 = 4` — source applicability устойчиво обновляется;
- `ER-D1-09 = 4` — STOP/handoff корректно пересматривается по новым данным;
- `ER-D1-10 = 4` — unseen transfer + C1 выполнены без подсказок;
- 0 BF.

---
# Обязательный evidence package

Для формальной фиксации результата сохраняются:

```text
01_KNOWN_CASE_RESPONSE
02_UNSEEN_U1_RESPONSE
03_CHALLENGE_C1_DELTA
04_ER_SCORING_SHEET
05_BLOCKING_FAILURE_CHECK
06_EVIDENCE_PACKAGE_CHECK
07_FINAL_VERIFICATION_DECISION
```

В learner response должны быть видимы минимум восемь outputs:
1. `SYSTEM / AUTHORITY MAP`;
2. `DRIVE-PATH / CLAIM-STATUS MAP`;
3. `KINEMATIC / TORQUE STATUS`;
4. `REDUCER / COUPLING FAMILY + EXACT-IDENTITY STATUS`;
5. `CONDITION / LUBRICATION EVIDENCE REGISTER`;
6. `SOURCE-ROLE / EXACT-APPLICABILITY MAP`;
7. `DISCRIMINATING EVIDENCE REQUEST`;
8. `BOUNDED CONCLUSION / STOP-HANDOFF`.

Русские эквиваленты названий допустимы.

---
# U1 — незнакомый кейс
## Сценарий

На механизме крана рассматривается привод, по которому доступен неполный пакет:
- двигатель идентифицирован по читаемой табличке;
- между двигателем и редуктором находится закрытый соединительный узел; по внешним признакам он похож на flexible coupling, exact designation не читается;
- корпус редуктора внешне похож на parallel-axis/cylindrical family, но текущая nameplate частично закрыта;
- старый drawing 2019 года для похожей установки показывает ratio `31.5`, связь drawing с текущей as-built configuration не подтверждена;
- в журнале обслуживания есть запись «масло долито», точный продукт/grade/quantity и OEM prescription в пакете отсутствуют;
- после обслуживания оператор сообщает о более заметном шуме; на корпусе видны следы масла;
- на складе есть внешне похожая запасная муфта, а коллега нашёл ГОСТ Р 50895-2025 и предлагает считать её взаимозаменяемой;
- другой коллега предлагает по motor nameplate + old ratio оценить output torque и сравнить его с «типичным» rating;
- текущий вопрос руководителя: **можно ли считать ratio/current torque/rating понятными, поставить запасную муфту, долить подходящее gear oil и оставить привод в работе?**

Численные design/rating/alignment/lubrication/acceptance критерии в U1 не требуются и не должны реконструироваться.

## Требуемое поведение
Learner должен самостоятельно:
1. задать system/authority boundary;
2. построить observed/documented drive path, не достраивая hidden coupling/internal reducer architecture;
3. отделить topology от current operating state;
4. статусировать old ratio как historical/unconfirmed current input;
5. не выводить actual/rated torque из motor nameplate + old ratio;
6. распознать reducer/coupling family только на доказанном уровне;
7. не объявить запасную муфту interchangeable по внешнему виду/семейному стандарту;
8. разделить leakage/noise/history/lubricant record на evidence states без root-cause или lubricant-substitution verdict;
9. выбрать source roles и проверить exact applicability;
10. выдать bounded conclusion и discriminating evidence request, сохранив equipment-authority boundary.

Сильный outcome может закончиться:

```text
D1 STOP — CURRENT CONFIGURATION / EXACT COUPLING / LUBRICANT / APPLICABLE ENGINEERING-AND-OPERATION BASIS NOT CLOSED
```

Это успешный результат, если learner точно показывает, какие claims заблокированы и чем они могут быть различены.

---
# C1 — получены точные данные о текущей конфигурации

После первого ответа проверяющий сообщает:

> Получены актуальная nameplate редуктора и OEM package для текущей машины. Exact reducer model подтверждён; current as-built ratio отличается от старого drawing и равен другому значению. Exact installed coupling designation подтверждён. Запасная муфта относится к той же широкой family, но её exact designation/interface data не совпадают с установленной. OEM package содержит отдельную alignment procedure и отдельное lubricant prescription для exact reducer. Текущих measured alignment records, подтверждения фактически залитого lubricant и competent condition/operation decision в пакете всё ещё нет.

Learner должен:
1. записать `INPUT / EVIDENCE DELTA`;
2. повысить current reducer/coupling identity status до confirmed;
3. заменить historical ratio current as-built ratio **без** превращения ratio в actual/rated torque;
4. понизить old drawing до historical evidence и объяснить, что изменилось;
5. обновить interchangeability status запасной муфты на основании exact mismatch, не создавая самовольный replacement verdict;
6. перенести alignment/lubricant source-role к exact OEM procedure/prescription, но не объявить measured alignment или installed lubricant подтверждёнными;
7. не превращать наличие OEM package в condition acceptance или continued-operation permission;
8. обновить bounded conclusion / evidence request и сохранить `SkillsVault STOP ≠ equipment-operation authority`.

Сильный ответ показывает `до / после` и меняет только статусы, которые реально затронуло новое evidence.

---
# Scoring Sheet

| ER | Known case | U1 | C1 | Final 0–4 | Evidence note |
|---|---:|---:|---:|---:|---|
| ER-D1-01 | | | | | |
| ER-D1-02 | | | | | |
| ER-D1-03 | | | | | |
| ER-D1-04 | | | | | |
| ER-D1-05 | | | | | |
| ER-D1-06 | | | | | |
| ER-D1-07 | | | | | |
| ER-D1-08 | | | | | |
| ER-D1-09 | | | | | |
| ER-D1-10 | n/a | | | | |

---
# Blocking Failure Check

| BF | Triggered? | Evidence / downstream use |
|---|---|---|
| BF-D1-01 | | |
| BF-D1-02 | | |
| BF-D1-03 | | |
| BF-D1-04 | | |
| BF-D1-05 | | |
| BF-D1-06 | | |
| BF-D1-07 | | |
| BF-D1-08 | | |
| BF-D1-09 | | |
| BF-D1-10 | | |

---
# Final decision order

Проверяющий принимает решение строго в порядке:

```text
1. BF CHECK
2. ALL ER >= 3 CHECK
3. KNOWN + U1 + C1 CHECK
4. EVIDENCE PACKAGE CHECK
5. TOTAL SCORE
6. ROBUST GATES
```

Если есть BF — итог `D1 NOT VERIFIED`, даже при 40/40 по арифметике.

Если нет BF, но любой ER < 3 — `D1 NOT VERIFIED / DEVELOPING / BORDERLINE` по score и evidence, но не `VERIFIED`.

Correct bounded STOP может быть `VERIFIED` или `ROBUST` outcome, если он демонстрирует полный D1 workflow и точный evidence/authority handoff.

---
# Что Rubric специально не открывает

Rubric не разрешает самостоятельно выводить:
- ISO 6336 numerical gear load capacity / coefficients;
- reducer selection/service factor/rating;
- coupling selection/rating/interchangeability verdict;
- numeric angular/parallel/axial alignment limits;
- lubricant grade/viscosity/quantity/mixing/substitution/top-up decision;
- backlash/wear/damage acceptance limits;
- vibration/noise/temperature acceptance thresholds;
- root cause по condition evidence;
- repair/adjustment/overhaul;
- return-to-service / continued-operation permission.

Следующий этап:
`CRN-M-04 / D1 FINAL ALIGNMENT / v1`.
