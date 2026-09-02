# CRN-M-02 — Барабаны, блоки, полиспасты
# D3 Verification Rubric v1
## Проверка причинного инженерного анализа, transfer и обновления убеждений по evidence

---

# Назначение

Эта рубрика отвечает на вопрос:

> **доказал ли обучающийся D3-компетентность наблюдаемым causal-analysis поведением на знакомых и незнакомых кейсах, включая способность изменить собственный вывод после нового evidence?**

Она не проверяет запоминание Practice A–L и не требует всегда назвать одну «истинную первопричину». Проверяется рабочая цепочка:

```text
CAUSAL QUESTION / CASE BOUNDARY
→ NEUTRAL OBSERVED SIGNATURE
→ PRESENT STATE + HISTORY
→ CAUSAL MAP
→ COMPETING FALSIFIABLE H
→ PREDICTIONS / WOULD BE UNEXPECTED
→ EVIDENCE MATRIX
→ OBSERVABILITY GATE
→ DISTINGUISHING DATA
→ CONFOUNDERS / DYNAMIC / UNKNOWN CHECK
→ MODEL STATUS + HYPOTHESIS-SPACE LIMIT
→ SOURCE / METHOD / DATA / AUTHORITY CHECK
→ BOUNDED CONCLUSION
→ UPDATE AFTER NEW EVIDENCE
```

Корректный вывод `PLAUSIBLE — DISTINGUISHING DATA REQUIRED`, `SOURCE / OEM / SPECIALIST REQUIRED` или `NOT YET DEMONSTRATED` может быть сильным D3-результатом, если граница доказана.

D3 Verification **не является** formal root-cause certification, proof/design verification, fatigue/remaining-life assessment, acceptance/discard decision, specialist NDT interpretation или разрешением на repair/redesign/rerouting/field modification. Score bands ниже — педагогическая политика оценки, а не технические критерии крана.

---

# Архитектура проверки

Verification состоит из трёх обязательных слоёв:

```text
LAYER 1 — KNOWN CASE EVIDENCE
↓
LAYER 2 — UNSEEN CAUSAL TRANSFER U1
↓
LAYER 3 — ADVERSARIAL EVIDENCE UPDATE C1
```

## Layer 1 — Known Case Evidence

Проверяющий выбирает один или несколько кейсов Practice A–L так, чтобы получить evidence по ER-D3-01…12. Known cases проверяют рабочую технику causal analysis, но **никогда не закрывают D3 сами по себе**.

## Layer 2 — Unseen Causal Transfer U1

Новый кейс U1 отсутствует в Practice A–L и должен одновременно содержать неоднозначную сигнатуру, минимум две физические H, data/mapping risk, history или dynamic uncertainty и source/authority boundary. Он закрывает transfer-компонент ER-D3-13.

## Layer 3 — Adversarial Evidence Update C1

После того как ученик зафиксировал initial matrix/model status/conclusion, проверяющий выдаёт новый существенный datum. Ученик обязан показать:

```text
NEW DATUM
→ OBSERVABILITY / APPLICABILITY CHECK
→ MATRIX UPDATE
→ UNKNOWN REGISTER UPDATE
→ RELATIVE H SUPPORT UPDATE
→ MODEL STATUS UPDATE
→ NEW BOUNDED CONCLUSION
```

Неизменившийся conclusion допустим только если ученик объясняет, **почему новый datum не различает модели или не применим к текущему question/window**.

---

# Шкала 0–4

Каждая ER-D3-dimension оценивается:

```text
0 — ABSENT / UNSAFE
1 — GUIDED / FRAGILE
2 — BASIC / KNOWN-CASE
3 — D3 DEMONSTRATED
4 — D3 TRANSFER / ROBUST
```

## Level 0 — ABSENT / UNSAFE

Ключевой шаг отсутствует либо causal claim создаёт опасное overreach-поведение: closed-world root cause, non-detection=falsification, unknown=zero, before/after=proof, source=authority или field/remaining-life verdict без метода/полномочий.

## Level 1 — GUIDED / FRAGILE

Ученик узнаёт элементы метода, но удерживает competing-model / observability / unknown / authority discipline только после подсказки.

## Level 2 — BASIC / KNOWN-CASE

На знакомом кейсе reasoning в основном корректен, но transfer или evidence update нестабильны. Blocking Failure отсутствует.

## Level 3 — D3 DEMONSTRATED

Ученик самостоятельно выполняет компетенцию, сохраняет причинную неопределённость там, где она реальна, и выдаёт bounded technical conclusion.

## Level 4 — D3 TRANSFER / ROBUST

Level 3 устойчиво сохраняется на unseen и после meaningful challenge; learner умеет менять собственный ranking/status/conclusion без потери source/authority guards.

---

# ER-D3-01 — Формулирует causal question и фиксирует case boundary

## 0
Начинает с готовой причины или смешивает режимы/периоды так, что causal question не определён.

## 1
После подсказки называет систему/режим/окно, но границы и history/state остаются расплывчатыми.

## 2
На знакомом кейсе задаёт рабочий causal question и большинство границ, но transfer нестабилен.

## 3
Самостоятельно фиксирует causal question, system/mode/time window, present snapshot и relevant history до causal ranking.

## 4
На unseen/challenge быстро пересобирает case boundary при изменении time window/state и явно отмечает, какое прежнее evidence стало неприменимо.

---

# ER-D3-02 — Отделяет observed signature от объяснения

## 0
Записывает причину внутри OBSERVED или использует локализацию как доказательство механизма.

## 1
Может нейтрализовать наблюдение только после указания проверяющего.

## 2
На known case обычно разделяет observation и explanation, но mapping/data-origin неполны.

## 3
Самостоятельно фиксирует нейтральную сигнатуру, localization/mapping, data origin и не прячет causal claim в описании.

## 4
На unseen/challenge сохраняет нейтральное OBSERVED даже когда новое evidence сильно поддерживает любимую модель.

---

# ER-D3-03 — Строит causal map взаимодействующих переменных

## 0
Выбирает одну деталь/фактор и объявляет её причиной без causal structure.

## 1
После подсказки перечисляет факторы, но не показывает механизм/связи.

## 2
На known case строит полезную карту, однако путает upstream factor, mediator/state и response.

## 3
Самостоятельно связывает history/duty, geometry/route, contact, motion/dynamics, spooling, local response, observed Y и data-quality layer.

## 4
На unseen/challenge перестраивает только затронутые causal links и объясняет downstream consequences без превращения scaffold в regression proof.

---

# ER-D3-04 — Сохраняет конкурирующие и фальсифицируемые hypotheses

## 0
Использует одну causal story либо декоративную H2, не способную реально конкурировать.

## 1
Вторую H формирует только после подсказки; H_data — нефальсифицируемое «датчик врёт».

## 2
На known case даёт минимум две разумные H, но predictions/assumptions различают их неполно.

## 3
Самостоятельно формирует реально конкурирующие H1/H2/... и при релевантности фальсифицируемую H_data с явными assumptions.

## 4
На unseen/challenge расширяет/сужает hypothesis set по evidence и явно пишет HYPOTHESIS-SPACE LIMIT, не выдавая рассмотренный набор за весь мир.

---

# ER-D3-05 — Пишет falsifiable predictions и WOULD BE UNEXPECTED

## 0
Гипотеза совместима с любым результатом или predictions записываются после просмотра evidence.

## 1
Предсказания появляются только после подсказки и почти все confirmatory.

## 2
На known case пишет полезные predictions, но слабые unexpected/change-my-mind условия.

## 3
До следующего evidence формулирует expected signature, state/window, WOULD BE UNEXPECTED и WHAT WOULD CHANGE MY MIND для основных H.

## 4
На transfer/challenge использует заранее записанные predictions для честного update, включая downgrade любимой H.

---

# ER-D3-06 — Строит evidence matrix и обновляет relative model status

## 0
Подбирает только подтверждения любимой H или переводит compatibility прямо в proof.

## 1
Матрица появляется после подсказки; категории используются непоследовательно.

## 2
На known case различает EXPECTED/COMPATIBLE/UNEXPECTED/UNKNOWN, но ranking/status обновляет слабо.

## 3
Самостоятельно ведёт evidence matrix по competing H и обновляет relative support/model status без closed-world claim.

## 4
На unseen + challenge явно показывает BEFORE/AFTER matrix, какие ячейки изменились, почему изменился ranking/status и что осталось неразличённым.

---

# ER-D3-07 — Применяет observability gate до negative evidence / falsification

## 0
Считает non-detection доказанным отсутствием или falsification без проверки detectability.

## 1
Вспоминает coverage/sensitivity только после подсказки.

## 2
На known case задаёт часть observability-вопросов, но mapping/time-window check нестабилен.

## 3
До negative evidence проверяет expected location/window, method capability, coverage/sensitivity и mapping reliability; иначе ставит UNKNOWN.

## 4
На unseen/challenge корректно меняет UNKNOWN ↔ meaningful negative evidence при появлении/исчезновении observability proof.

---

# ER-D3-08 — Выбирает genuinely distinguishing data и evidence plan

## 0
Предлагает «собрать больше данных» или только дополнительные подтверждения любимой H.

## 1
После подсказки называет один потенциально различающий datum, но без predicted outcomes.

## 2
На known case выбирает разумное следующее наблюдение, однако discrimination logic неполна.

## 3
Самостоятельно выбирает datum/inspection/history check, для которого заранее показывает разные ожидаемые outcomes competing H и practical observability.

## 4
На unseen/challenge ранжирует evidence plan по discrimination value, feasibility/authority и способен отказаться от красивого, но неразличающего измерения.

---

# ER-D3-09 — Разделяет snapshot/history, confounders и change bundles

## 0
Текущий хороший/плохой snapshot трактует как полную историю или before/after как proof одной причины.

## 1
После подсказки замечает history/confounders, но causal inference остаётся слишком сильной.

## 2
На known case разделяет present/history и видит основные simultaneous changes.

## 3
Самостоятельно ведёт timeline, change bundle и confounders; не объявляет before/after natural experiment без условий.

## 4
На transfer/challenge пересобирает causal ranking после раскрытия дополнительного одновременного изменения или corrected history.

---

# ER-D3-10 — Перестраивает dynamic-state model и не заменяет неизвестное нулём

## 0
При transient использует прежнюю quasi-static модель как фактическую load authority или принимает unmeasured = zero.

## 1
Замечает динамику только после подсказки; missing acceleration/state остаётся неявным.

## 2
На known case умеет остановить квазистатический вывод, но rebuild/evidence plan неполны.

## 3
Самостоятельно фиксирует body/frame/state, различает quasi-static и transient question, сохраняет unknown acceleration/load history и корректный next evidence.

## 4
На unseen/challenge уверенно меняет model status при добавлении/удалении transient evidence, не импортируя crane-specific factors или proof methods.

---

# ER-D3-11 — Ведёт assumptions, unknown register, sensitivity и model-status discipline

## 0
Скрывает неизвестные, подменяет их типичными значениями или делает точный causal claim из qualitative sensitivity.

## 1
Unknowns/assumptions появляются только после подсказки; status слишком уверенный.

## 2
На known case ведёт register, но не всегда связывает unknown с conclusion strength.

## 3
Самостоятельно перечисляет material assumptions/unknowns, directional sensitivity только в допустимом смысле и выбирает честный model status.

## 4
На unseen/challenge показывает, какой unknown реально управляет решением, и осознанно понижает/повышает status при изменении этого input.

---

# ER-D3-12 — Разделяет evidence role, source existence, method applicability и authority

## 0
Считает наличие стандарта/OEM/source автоматическим разрешением на formal proof, remaining life, acceptance или field action.

## 1
После подсказки признаёт authority boundary, но method/data applicability проверяет неполно.

## 2
На known case обычно разделяет source и permission, но question-specific evidence roles слабы.

## 3
Самостоятельно пишет, какой evidence/source отвечает на какой вопрос, доказан ли method applicability, достаточны ли данные и какая authority всё ещё нужна.

## 4
На transfer/challenge выдерживает pressure-trap: даже при появлении источника не выдаёт заблокированный result, если method/data/competence/authority не доказаны.

---

# ER-D3-13 — Собирает bounded causal conclusion и переносит D3 на unseen + challenge

## 0
Выдаёт formal root cause/field verdict либо не способен интегрировать case без подсказок.

## 1
На unseen case сохраняет часть workflow только с существенным ведением проверяющего.

## 2
Known A–L reasoning в основном корректен, но unseen/challenge интеграция нестабильна.

## 3
Самостоятельно проходит полный D3 workflow на U1, выдаёт bounded conclusion + hypothesis-space limit + next evidence и после C1 обновляет matrix/status/conclusion.

## 4
На unseen/challenge демонстрирует устойчивое belief updating: быстро отказывается от прежнего ranking, если evidence того требует, сохраняет UNKNOWN/authority boundaries и объясняет, почему новый вывод сильнее, но всё ещё bounded.

---

# Blocking Failures — non-compensable

Любой BF ниже немедленно означает `D3 NOT VERIFIED` независимо от total score.

## BF-D3-01 — Closed-world causal closure

`BEST SUPPORTED` или одна согласующаяся история объявляется formal/root cause без hypothesis-space limit и без признания нерассмотренных альтернатив.

## BF-D3-02 — Non-detection falsification without observability

Отсутствие наблюдаемого признака используется для falsification без доказанной detectability/coverage/sensitivity/mapping/time-window applicability.

## BF-D3-03 — `H_data` collapse

`H_data` используется как нефальсифицируемая мусорная корзина: «датчик врёт» объясняет любое неудобное evidence без собственных predictions.

## BF-D3-04 — Dynamic unknown erased

Неизмеренное acceleration/transient состояние заменяется нулём или прежняя quasi-static модель выдаётся за actual dynamic load authority.

## BF-D3-05 — Sensitivity becomes causal identification

Directional/qualitative sensitivity или формальный символ производной выдаётся за доказанный causal effect без валидной модели/identification.

## BF-D3-06 — Before/after single-cause proof

Улучшение/ухудшение после multi-change maintenance/change bundle объявляется доказательством одной причины без разделения confounders.

## BF-D3-07 — Evidence-role collapse

Один источник/вид evidence трактуется как универсально сильнейший для всех вопросов вместо question-specific role/applicability.

## BF-D3-08 — Source-exists authority leap

Наличие ISO/OEM/паспорта/документа автоматически превращается в разрешение на formal method, design proof, remaining-life, acceptance или field action без applicability/data/authority proof.

## BF-D3-09 — Unknown / assumption erasure

Материальный unknown/assumption, способный изменить ranking/conclusion, молча заменяется типичным значением, нулём или уверенностью.

## BF-D3-10 — Single-story analysis

Нетривиальный неоднозначный case анализируется только одной физической causal story без реального competing model, когда альтернативы очевидно доступны.

## BF-D3-11 — Failure to update after challenge

После meaningful C1 learner защищает первоначальный matrix/status/conclusion вопреки новому evidence или меняет ответ без объяснимого evidence-to-update path.

---

# Обязательный unseen transfer — U1

## Исходные данные

На грузоподъёмном механизме после планового осмотра обнаружена повторяющаяся локальная сигнатура на двух участках каната. Для учебного кейса известно:

- один из участков в части циклов может попадать в переходную область многослойной навивки барабана;
- оба участка проходят через один направляющий блок, но точная rope-section ↔ node mapping из старых записей имеет неопределённость;
- примерно за месяц до первого документированного наблюдения изменился профиль работы: стало больше коротких циклов и остановок;
- в monitoring log есть два кратковременных event, похожих на transient, но синхронизация часов monitoring и эксплуатационного журнала не подтверждена;
- направляющий блок ранее заменялся в рамках планового обслуживания; одновременно выполнялись и другие работы;
- текущий визуальный snapshot барабана/блока не показывает очевидного уникального дефекта;
- coverage предыдущих осмотров и точность mapping различаются;
- equipment-specific OEM/passport method для root-cause, remaining-life или acceptance decision в кейсе не предоставлен.

Ученик не получает готовых H. Он обязан построить минимум три реально конкурирующие модели из релевантных семейств, например:

```text
H_spooling/contact
H_sheave/route
H_duty/transient
H_data — when justified
```

## Обязательные действия на U1

1. Сформулировать causal question и case boundary.
2. Записать нейтральный OBSERVED + mapping/data-origin limits.
3. Разделить current snapshot и accumulated history.
4. Построить causal map.
5. Сформировать competing falsifiable H и H_data при необходимости.
6. Записать predictions / WOULD BE UNEXPECTED до следующего evidence.
7. Построить evidence matrix.
8. Выполнить observability check для любых non-detections.
9. Назвать 1–3 genuinely distinguishing next data items.
10. Выделить confounders/change bundle и dynamic unknowns.
11. Вести assumptions/unknown register.
12. Выбрать model status + hypothesis-space limit.
13. Провести source/method/data/authority check.
14. Выдать bounded conclusion без formal root-cause/remaining-life/field verdict.

## Минимально допустимый initial conclusion

В зависимости от reasoning допустимы разные lead-model rankings. Сильный ответ **не обязан** выбрать одну H. Например, допустимо:

```text
PLAUSIBLE — DISTINGUISHING DATA REQUIRED
```

если ученик конкретно показывает, какие данные разделят spooling / sheave-route / transient / data-quality модели.

---

# Mandatory Challenge C1 — corrected mapping + event applicability

После initial conclusion проверяющий выдаёт два новых факта:

1. Независимая повторная привязка уменьшает mapping uncertainty и показывает, что **один из двух наблюдаемых участков не попадает в предполагаемую переходную область барабана в тех циклах, где сигнатура документировалась**, но оба участка по-прежнему проходят через общий направляющий блок.
2. Проверка временной синхронизации показывает, что один monitoring spike не относится к рассматриваемому событию; для второго spike time alignment остаётся `UNKNOWN`.

Ученик обязан обновить:

```text
OBSERVABILITY / APPLICABILITY
EVIDENCE MATRIX
UNKNOWN REGISTER
H_spooling relative support
H_sheave/route relative support
H_duty/transient relative support
H_data where relevant
MODEL STATUS
HYPOTHESIS-SPACE LIMIT
BOUNDED CONCLUSION
```

Expected D3 behaviour:

- не объявлять `H_spooling = false` только потому, что один участок больше не поддерживает старую mapping story;
- не объявлять направляющий блок formal root cause только потому, что он общий для двух участков;
- снять или ослабить evidence, которое оказалось time-inapplicable;
- оставить второй transient event `UNKNOWN`, если его applicability всё ещё не доказана;
- предложить следующий datum, который реально различает remaining lead models.

Failure to perform an evidence-linked update triggers BF-D3-11.

---

# Optional Challenge C2 — authority pressure

Проверяющий добавляет фразу: «В стандарте/паспорте есть раздел про этот механизм. Дай итоговый remaining-life или разрешение продолжать/изменить работу».

Сильный learner разделяет `SOURCE EXISTS`, `METHOD APPLICABLE`, `INPUT DATA SUFFICIENT`, `COMPETENCE/AUTHORITY` и не выдаёт заблокированный результат. C2 полезен для Level 4 ER-D3-12, но не обязателен для базового VERIFIED, если authority behaviour уже наблюдалось на U1/C1.

---

# Mandatory evidence package

Для `D3 VERIFIED` в assessment record должны быть видимы минимум:

1. `CAUSAL QUESTION / CASE BOUNDARY`;
2. `OBSERVED SIGNATURE` без causal wording;
3. `DATA ORIGIN / LOCALIZATION / MAPPING`;
4. `SYSTEM / MODE / TIME WINDOW`;
5. `PRESENT STATE / HISTORY SPLIT`;
6. `CAUSAL MAP`;
7. минимум две competing `HYPOTHESIS CARD`;
8. `H_data` card, если data-artifact risk материален;
9. `PREDICTIONS + WOULD BE UNEXPECTED`;
10. `EVIDENCE MATRIX`;
11. `OBSERVABILITY CHECK` до negative evidence;
12. `NEXT DISTINGUISHING DATA / EVIDENCE PLAN`;
13. relevant `CONFOUNDERS / CHANGE BUNDLE / DYNAMIC REBUILD`;
14. `ASSUMPTIONS + UNKNOWN REGISTER`;
15. `MODEL STATUS + HYPOTHESIS-SPACE LIMIT`;
16. `SOURCE / METHOD / DATA / AUTHORITY CHECK`;
17. initial `BOUNDED CONCLUSION`;
18. explicit `C1 MATRIX/STATUS/CONCLUSION UPDATE`.

Известные A–L могут дать evidence для ER-D3-01…12, но не заменяют U1 + C1.

---

# Scoring sheet

| Dimension | Score 0–4 | Evidence reference | Notes / BF risk |
|---|---:|---|---|
| ER-D3-01 |  |  |  |
| ER-D3-02 |  |  |  |
| ER-D3-03 |  |  |  |
| ER-D3-04 |  |  |  |
| ER-D3-05 |  |  |  |
| ER-D3-06 |  |  |  |
| ER-D3-07 |  |  |  |
| ER-D3-08 |  |  |  |
| ER-D3-09 |  |  |  |
| ER-D3-10 |  |  |  |
| ER-D3-11 |  |  |  |
| ER-D3-12 |  |  |  |
| ER-D3-13 |  |  |  |

```text
TOTAL: ____ / 52
ALL 13 DIMENSIONS >= 3: YES / NO
U1 COMPLETE: YES / NO
C1 UPDATE COMPLETE: YES / NO
MANDATORY EVIDENCE PACKAGE COMPLETE: YES / NO
ANY BLOCKING FAILURE: YES / NO
```

# Blocking-failure sheet

| BF | Triggered? | Evidence |
|---|---|---|
| BF-D3-01 Closed-world causal closure |  |  |
| BF-D3-02 Non-detection falsification without observability |  |  |
| BF-D3-03 `H_data` collapse |  |  |
| BF-D3-04 Dynamic unknown erased |  |  |
| BF-D3-05 Sensitivity becomes causal identification |  |  |
| BF-D3-06 Before/after single-cause proof |  |  |
| BF-D3-07 Evidence-role collapse |  |  |
| BF-D3-08 Source-exists authority leap |  |  |
| BF-D3-09 Unknown / assumption erasure |  |  |
| BF-D3-10 Single-story analysis |  |  |
| BF-D3-11 Failure to update after challenge |  |  |

---

# Решение Verification

## D3 NOT VERIFIED

Любое из условий достаточно:

- любой `BF-D3-01…11`;
- любой `ER-D3-01…13 < 3`;
- отсутствует unseen U1;
- отсутствует meaningful C1 evidence update;
- mandatory evidence package неполон;
- learner выдаёт formal root-cause / proof-design / remaining-life / acceptance / field-authority claim за пределами доказанного метода и полномочий.

## D3 VERIFIED

Все условия одновременно:

- total score **39–45 / 52**;
- `ER-D3-01…13 >= 3` без исключений;
- `BF = NONE`;
- known-case evidence получено;
- U1 завершён самостоятельно;
- C1 update завершён evidence-linked способом;
- mandatory evidence package complete;
- bounded uncertainty/stop/escalation используется как допустимый инженерный результат, когда discrimination/method/authority не доказаны.

## D3 ROBUST / TRANSFER

Все условия D3 VERIFIED плюс:

- total score **46–52 / 52**;
- `ER-D3-06 = 4` — evidence matrix/model update robust;
- `ER-D3-08 = 4` — distinguishing-data selection robust;
- `ER-D3-13 = 4` — unseen + challenge integration robust;
- хотя бы одна из `ER-D3-07/09/10/11/12 = 4` на transfer/challenge evidence;
- learner способен объяснить не только **что** изменил после C1, но и **почему величина/направление изменения confidence соответствует evidential value нового datum**.

Граница 39/46 — педагогический assessment contract. Она не является техническим коэффициентом, safety factor или equipment criterion.

---

# Что означает D3 VERIFIED

D3 VERIFIED означает, что learner способен причинно анализировать неоднозначный drum/sheave/reeving case, сохранять competing models, проверять observability, выбирать distinguishing evidence, удерживать history/dynamic/unknown boundaries и честно обновлять model status после нового evidence.

Это **не означает**, что learner автоматически имеет полномочия:

- сертифицировать formal root cause;
- рассчитывать proof/design loads по закрытым методам;
- назначать remaining-life;
- принимать/браковать оборудование по невыданным критериям;
- менять reeving/geometry/operation реального ПС;
- заменять OEM/паспорт/специалиста там, где они обязательны.

---

# Следующий этап

После Verification Rubric выполняется `D3 FINAL ALIGNMENT / v1`:

```text
Lesson + Editorial + Red Team + Reader Experience
↕
Practice A–L
↕
Practice Reasoning A–L
↕
Expected Result ER-D3-01…13
↕
Verification Rubric ER-D3-01…13 + BF-D3-01…11 + U1 + C1
```

Final Alignment должен найти orphan content, missing evidence, surprise BF, guard contradiction или скрытое authority creep **до Source Freshness и Freeze**.
