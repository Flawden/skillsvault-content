# CRN-M-02 — Барабаны, блоки, полиспасты
# D3 Expected Result v1
## Наблюдаемый профиль причинного инженерного анализа

---

# Назначение

Expected Result фиксирует не то, что ученик способен пересказать причинную схему D3, а то, **что он может доказуемо сделать на новом неоднозначном инженерном кейсе**, где одна наблюдаемая сигнатура допускает несколько механизмов, часть данных неполна, а формальная authority ограничена.

D3 не требует от ученика всегда назвать одну «истинную первопричину». Зрелый результат может быть:

```text
SUPPORTED CAUSAL MODEL — BOUNDED
PLAUSIBLE — DISTINGUISHING DATA REQUIRED
ALTERNATIVE NOT EXCLUDED
MODEL INVALIDATED BY EVIDENCE
SOURCE / OEM / SPECIALIST REQUIRED
NOT YET DEMONSTRATED
```

Сильный ответ может закончиться формулировкой:

> две модели пока неразличимы; вот datum, который способен их разделить.

Это **успешный D3-результат**, если ученик показывает, почему текущие данные не позволяют сделать более сильный вывод.

D3 Expected Result не является:

- formal root-cause certification;
- proof-of-competence calculation;
- design verification;
- fatigue-life / remaining-life assessment;
- equipment acceptance/discard decision;
- specialist NDT interpretation;
- разрешением на repair / redesign / rerouting / field modification.

Paid-standard coefficients, ISO load combinations/dynamic factors, численные критерии ресурса/приёмки и equipment-specific authority остаются закрыты без точного применимого метода, данных, OEM/паспорта, процедуры и требуемой компетенции.

---

# Краткая формула результата D3

После D3 обучающийся способен пройти цепочку:

```text
CAUSAL QUESTION / CASE BOUNDARY
↓
OBSERVED SIGNATURE — WITHOUT EXPLANATION INSIDE IT
↓
SYSTEM / MODE / TIME WINDOW
↓
PRESENT STATE + HISTORY
↓
CAUSAL VARIABLE MAP
↓
COMPETING H1 / H2 / H3 / H_data WHEN RELEVANT
↓
FALSIFIABLE PREDICTIONS
↓
EVIDENCE MATRIX
↓
OBSERVABILITY GATE
↓
DISTINGUISHING DATA
↓
CONFOUNDERS / DYNAMIC / UNKNOWN CHECK
↓
MODEL UPDATE + HYPOTHESIS-SPACE LIMIT
↓
SOURCE / METHOD / AUTHORITY CHECK
↓
BOUNDED CONCLUSION
```

Если после первого вывода появляется новый datum или меняется state/history assumption, ученик **обновляет модель**, а не защищает прежнюю версию любой ценой.

---

# ER-D3-01 — Формулирует causal question и фиксирует границы кейса

## Наблюдаемое поведение

До выбора причины ученик явно фиксирует:

- какой вопрос анализируется;
- что входит в систему;
- какой operating mode/state рассматривается;
- какой time window относится к evidence;
- что является present snapshot, а что historical evidence.

Он не смешивает события из разных периодов или режимов без объяснения их совместимости.

## Evidence output

```text
CAUSAL QUESTION:
...

SYSTEM:
...

MODE / STATE:
...

TIME WINDOW:
...

PRESENT SNAPSHOT:
...

RELEVANT HISTORY:
...
```

## Не считается достигнутым

- «почему износился канат?» без case boundary;
- смешение разных режимов/периодов в одну историю;
- использование более позднего состояния как доказательства более раннего механизма без bridge evidence.

---

# ER-D3-02 — Отделяет наблюдаемую сигнатуру от её объяснения

## Наблюдаемое поведение

Ученик способен описать evidence нейтрально:

- где обнаружена сигнатура;
- когда;
- каким методом/документом;
- как выполнено mapping к rope section / drum position / sheave node / event;
- что именно наблюдалось.

Слово «причина» не прячется внутрь `OBSERVED`.

## Evidence output

```text
OBSERVED SIGNATURE:
...

LOCALIZATION / MAPPING:
...

DATA ORIGIN:
...

OBSERVATION ONLY — NO CAUSE CLAIM:
...
```

## Blocking candidate

```text
Observed near crossover
→ therefore crossover caused it
```

без конкурирующих моделей и discriminating evidence не доказывает D3.

---

# ER-D3-03 — Строит причинную карту взаимодействующих переменных

## Наблюдаемое поведение

Ученик раскладывает case хотя бы по релевантным группам:

- load / duty history;
- geometry / route;
- contact;
- motion / kinematics / dynamics;
- spooling state;
- local mechanical response;
- observed degradation/signature;
- uncertainty / data-quality layer.

Причинная карта используется как scaffold для механизма, а не как regression equation и не как доказательство независимых эффектов.

## Evidence output

```text
CAUSAL MAP:
HISTORY / DUTY → ...
GEOMETRY / ROUTE → ...
CONTACT → ...
MOTION / DYNAMICS → ...
SPOOLING → ...
LOCAL RESPONSE → ...
OBSERVED Y → ...
UNKNOWN / DATA QUALITY → ...
```

## Сильный признак

Ученик способен назвать upstream factor, mediator/state и observed response, не объявляя каждую переменную независимой причиной.

---

# ER-D3-04 — Сохраняет реально конкурирующие и фальсифицируемые гипотезы

## Наблюдаемое поведение

Для нетривиального кейса ученик формирует минимум две физически осмысленные альтернативы, а при реальном риске ошибки mapping/measurement/data — отдельную `H_data`.

Каждая hypothesis должна быть устроена так, чтобы данные могли её **усилить или ослабить**.

## Evidence output

Для каждой модели:

```text
HYPOTHESIS:
...

MECHANISM:
...

ASSUMPTIONS:
...
```

## Не считается достигнутым

- одна любимая H и список подтверждений;
- H2, которая является просто перефразировкой H1;
- `H_data = возможно ошибка` без проверяемого механизма ошибки;
- гипотеза, совместимая с любым возможным результатом.

---

# ER-D3-05 — Пишет falsifiable predictions и `WOULD BE UNEXPECTED`

## Наблюдаемое поведение

До просмотра следующего evidence ученик способен записать, что каждая H предсказывает.

Для каждой серьёзной гипотезы есть минимум:

- ожидаемый признак;
- условие/state/time window, где он ожидается;
- что было бы неожиданно для модели;
- `WHAT WOULD CHANGE MY MIND?`.

## Evidence output

```text
H1 PREDICTS:
...

H1 WOULD BE UNEXPECTED:
...

WHAT WOULD CHANGE MY MIND:
...
```

## Критический guard

Prediction, сформулированный **после** просмотра результата так, чтобы всегда совпасть с evidence, не считается сильным D3 evidence.

---

# ER-D3-06 — Строит evidence matrix и обновляет model status по данным

## Наблюдаемое поведение

Ученик способен сравнивать evidence не только с любимой моделью, а со всеми значимыми конкурентами.

Минимальная семантика матрицы:

```text
EXPECTED
COMPATIBLE
UNEXPECTED
UNKNOWN
```

`COMPATIBLE` не превращается автоматически в `SUPPORTS`, если то же наблюдение ожидают несколько моделей.

## Evidence output

```text
EVIDENCE MATRIX

DATUM | H1 | H2 | H3 | H_data | NOTE
...
```

После каждого важного datum ученик обновляет ranking/status и кратко объясняет изменение.

## Не считается достигнутым

- collecting only evidence for H1;
- `compatible = confirmed`;
- неизменный вывод после evidence, которое существенно изменило relative support.

---

# ER-D3-07 — Применяет observability gate до negative evidence и falsification

## Наблюдаемое поведение

Перед утверждением «признак не найден, значит H неверна» ученик проверяет:

```text
EXPECTED?
APPLICABLE?
OBSERVABLE?
COVERED?
MAPPING RELIABLE?
ASSUMPTIONS STILL VALID?
```

Если detectability/coverage не доказаны, non-detection остаётся `UNKNOWN` или требует model rebuild.

## Evidence output

```text
NEGATIVE-EVIDENCE CHECK:
Prediction expected? ...
Same state/window? ...
Observable by method? ...
Coverage/sensitivity sufficient? ...
Mapping reliable? ...
Result: NEGATIVE EVIDENCE / UNKNOWN / MODEL NEEDS REBUILD
```

## Blocking candidate

`NON-DETECTION → MODEL INVALIDATED` без observability gate.

---

# ER-D3-08 — Выбирает действительно различающие данные и строит evidence plan

## Наблюдаемое поведение

Ученик отличает:

- datum, который просто согласуется с H1;
- datum, который ожидается всеми кандидатами;
- datum, который способен **изменить relative support** между H1/H2/H3.

Если данных недостаточно, он способен назвать следующий наиболее полезный evidence step без выдуманного numeric threshold.

## Evidence output

```text
NEXT DISTINGUISHING DATA:
...

WHY IT DISTINGUISHES:
H1 predicts ...
H2 predicts ...
H3 predicts ...

IF RESULT A:
...

IF RESULT B:
...
```

## Сильный признак

Ученик может честно завершить анализ статусом:

```text
PLAUSIBLE — DISTINGUISHING DATA REQUIRED
```

и назвать конкретный следующий datum.

---

# ER-D3-09 — Разделяет present state, accumulated history, confounders и change bundles

## Наблюдаемое поведение

Ученик не предполагает, что хороший текущий snapshot отменяет неблагоприятную history.

При before/after evidence он спрашивает:

- что именно изменилось одновременно;
- какие confounders возможны;
- насколько comparison близок к controlled/natural-experiment-like condition;
- какие альтернативные explanations сохраняются.

## Evidence output

```text
PRESENT STATE:
...

ACCUMULATED HISTORY:
...

CHANGE BUNDLE:
1. ...
2. ...

CONFOUNDERS:
...

WHAT BEFORE/AFTER CAN SUPPORT:
...

WHAT IT CANNOT PROVE:
...
```

## Blocking candidate

```text
После ремонта стало лучше
→ значит единственная причина доказана
```

---

# ER-D3-10 — Перестраивает модель при динамическом/переходном режиме и не подменяет неизвестное нулём

## Наблюдаемое поведение

Если состояние включает существенное ускорение, торможение, изменение направления, переходный процесс или неизвестную transient history, ученик не переносит автоматически квазистатический вывод.

Общие формы механики используются только в заявленной области:

```text
ΣF = m·a_G
```

и, для подходящей простой rotational model,

```text
ΣM_axis = I_axis·α
```

без импорта crane-specific coefficients/load combinations.

## Evidence output

```text
DYNAMIC STATE:
...

KNOWN KINEMATICS:
...

UNMEASURED / UNKNOWN:
...

OLD MODEL STILL VALID? YES / NO / PARTLY

REBUILD REQUIRED:
...
```

## Blocking candidate

```text
acceleration not measured
→ acceleration = 0
```

---

# ER-D3-11 — Ведёт assumptions, unknown register, sensitivity и model-status discipline

## Наблюдаемое поведение

Ученик явно показывает:

- assumptions;
- unknowns;
- какие выводы чувствительны к неизвестным;
- где sensitivity только качественная;
- какой текущий model status оправдан.

Он не использует математическую точность символов для имитации точности модели.

## Evidence output

```text
ASSUMPTIONS:
1. ...

UNKNOWN REGISTER:
1. ...

QUALITATIVE SENSITIVITY:
x ↑ → effect ↑ / ↓ / ambiguous, because ...

MODEL STATUS:
...

HYPOTHESIS-SPACE LIMIT:
considered ...
not evaluated ...
```

## Не считается достигнутым

- unknowns исчезают из финального вывода;
- `∂Y/∂x` записывается без реально определённой математической модели;
- `SUPPORTED` используется как closed-world proof.

---

# ER-D3-12 — Разделяет evidence role, source existence, method applicability и authority

## Наблюдаемое поведение

Ученик сначала называет вопрос, а затем выбирает evidence/source по его роли.

Он различает:

```text
SOURCE EXISTS
METHOD APPLICABLE
INPUT DATA SUFFICIENT
COMPETENCE / AUTHORITY PRESENT
```

OEM/паспорт может определять configuration/limits, inspection record — текущее наблюдение, monitoring history — эксплуатационную историю, formal standard — метод/границы метода. Ни один из них не становится evidence «для всего сразу».

## Evidence output

```text
QUESTION:
...

EVIDENCE ROLE:
...

APPLICABLE SOURCE / METHOD:
...

INPUTS AVAILABLE:
...

AUTHORITY / COMPETENCE:
...

STOP / ESCALATE IF NEEDED:
...
```

## Blocking candidate

```text
нашли ISO / OEM document
→ formal calculation / remaining life / acceptance / redesign now allowed
```

---

# ER-D3-13 — Собирает bounded causal conclusion и переносит метод на unseen case

## Наблюдаемое поведение

На новой задаче ученик интегрирует предыдущие dimensions в один case file и завершает вывод структурой вида:

```text
CURRENTLY BEST-SUPPORTED / PLAUSIBLE MODEL:
...

WHY:
...

ALTERNATIVE NOT EXCLUDED:
...

UNKNOWN:
...

HYPOTHESIS-SPACE LIMIT:
...

NEXT DISTINGUISHING DATA:
...

MODEL STATUS:
...

AUTHORITY BOUNDARY:
...
```

Он не обязан всегда прийти к `SUPPORTED CAUSAL MODEL — BOUNDED`. `PLAUSIBLE — DISTINGUISHING DATA REQUIRED`, `SOURCE / OEM / SPECIALIST REQUIRED` и `NOT YET DEMONSTRATED` могут быть правильными результатами.

## Transfer requirement

Известные Practice A–L **не достаточны** для закрытия ER-D3-13.

Verification должен содержать unseen case, который не является простой заменой названий/номеров в A–L и требует одновременно:

- неоднозначной observed signature;
- нескольких causal mechanism families;
- incomplete history или state uncertainty;
- evidence, которое не одинаково различает все H;
- хотя бы одного observability/data-quality вопроса;
- source/method/authority boundary.

## Mandatory challenge / evidence update

После первого вывода обучающемуся выдаётся новое evidence или meaningful delta, например:

- lead-model prediction не подтверждается;
- тот же pattern обнаруживается вне предполагаемого state;
- mapping rope section ↔ node оказывается ошибочным;
- появляется transient event history;
- before/after comparison раскрывает второй concurrent change;
- measurement coverage оказывается недостаточной.

Ученик должен **обновить evidence matrix, unknown register и model status**.

Защита старого ответа несмотря на противоречащий datum не демонстрирует D3.

---

# Минимальный evidence package для D3 verification

Для одного интегрального кейса должны быть наблюдаемы как минимум:

1. `CAUSAL QUESTION / CASE BOUNDARY`;
2. `OBSERVED SIGNATURE + LOCALIZATION / DATA ORIGIN`;
3. `SYSTEM / MODE / TIME WINDOW`;
4. `PRESENT STATE / HISTORY SPLIT`;
5. `CAUSAL MAP`;
6. минимум две `HYPOTHESIS CARD`, плюс `H_data` когда релевантно;
7. `PREDICTIONS + WOULD BE UNEXPECTED`;
8. `EVIDENCE MATRIX`;
9. `OBSERVABILITY CHECK` перед negative evidence;
10. `NEXT DISTINGUISHING DATA`;
11. `CONFOUNDERS / CHANGE BUNDLE` когда релевантно;
12. `DYNAMIC STATE / REBUILD` когда релевантно;
13. `ASSUMPTIONS + UNKNOWN REGISTER`;
14. `MODEL STATUS + HYPOTHESIS-SPACE LIMIT`;
15. `SOURCE / METHOD / AUTHORITY CHECK`;
16. `BOUNDED CONCLUSION`;
17. обновлённые matrix/status/conclusion после mandatory challenge.

Не каждый пункт обязан быть длинным документом. Но assessor должен видеть доказательство соответствующей операции мышления.

---

# Known-case evidence не закрывает D3

Practice/Reasoning A–L показывают, что ученик видел паттерны:

- competing hypotheses;
- observability;
- `H_data`;
- snapshot/history;
- dynamic rebuild;
- before/after confounders;
- sensitivity;
- evidence roles;
- source/method authority;
- integrated case file.

Но memorized reuse структуры A–L не доказывает transfer.

D3 Verification обязательно требует:

```text
KNOWN EVIDENCE
+
UNSEEN CASE
+
MANDATORY EVIDENCE-UPDATE CHALLENGE
```

---

# Candidate blocking failures для Verification Rubric

Следующий этап должен назначить severity/non-compensability как минимум следующим failure families.

## BF-D3-01 — Closed-world causal closure

`best supported / plausible → formal root cause`, без hypothesis-space limit и без сохранения существенных альтернатив.

## BF-D3-02 — Non-detection falsification without observability

Отсутствие признака используется как сильное опровержение без проверки detectability/coverage/mapping/applicability.

## BF-D3-03 — `H_data` collapse

`H_data` либо полностью игнорируется при реальном data-quality risk, либо становится нефальсифицируемой корзиной для любого неудобного evidence.

## BF-D3-04 — Dynamic unknown erased

`not measured = zero`, либо квазистатическая модель объявляется достаточной для существенного transient state без обоснования.

## BF-D3-05 — Sensitivity becomes causal identification

Направление изменения или формальный символ производной используется как доказательство causal effect без соответствующей модели/evidence.

## BF-D3-06 — Before/after single-cause proof

Change bundle/confounders игнорируются и улучшение после вмешательства объявляется доказательством одной причины.

## BF-D3-07 — Evidence-role collapse

Источник с высокой authority в одном вопросе автоматически используется как evidence для другого вопроса без role/applicability check.

## BF-D3-08 — Source-exists authority leap

Наличие стандарта/OEM/методики превращается в формальный proof, remaining-life, acceptance/discard или field-modification authority без требуемых данных/метода/компетенции.

## BF-D3-09 — Unknown / assumption erasure

Неизвестные или assumptions, способные изменить conclusion, исчезают из финального model status; точность вывода превышает evidence.

## BF-D3-10 — Single-story analysis

Нетривиальный неоднозначный case закрывается одной narrative hypothesis без реально конкурирующей модели, falsifiable predictions и distinguishing evidence.

## BF-D3-11 — Failure to update after challenge

После нового существенного evidence ученик сохраняет прежний ranking/status/conclusion без rebuild или объяснения.

Эти blocking candidates не добавляют новый технический норматив. Они фиксируют failure modes уже введённого D3 contract.

---

# D3 → D4 boundary

D3 считается достигнутым, когда ученик способен ответить:

> Какая причинная модель лучше поддержана текущими данными, какие альтернативы остаются, и что способно их различить?

D3 **не обязан** выполнять следующий вопрос D4:

> Какой формальный метод/model является здесь валидным, каковы его assumptions/limits/sensitivity, и почему альтернативный метод может дать ошибочный результат?

Если causal analysis упирается в formal calculation/model selection/validation, корректный handoff в D4 или specialist workflow является частью зрелого D3 результата.

---

# Claim / authority boundary

Expected Result не вводит:

- numeric design or acceptance thresholds;
- ISO proof-of-competence coefficients;
- crane-specific dynamic factors/load combinations;
- fatigue-life or remaining-life numbers;
- equipment-specific discard/repair limits;
- specialist NDT interpretation;
- design verification;
- rerouting/repair/redesign permission;
- formal root-cause certification.

Exact applicable source, method, equipment data, OEM/passport documentation, procedure and competent authority остаются обязательными там, где вопрос выходит за bounded causal analysis D3.

---

# Итоговая формула компетенции

```text
OBSERVE NEUTRALLY
→ COMPETE MODELS
→ PREDICT BEFORE CLOSING
→ TEST OBSERVABILITY
→ SEEK DISCRIMINATION
→ KEEP HISTORY / DYNAMICS / UNKNOWNS VISIBLE
→ UPDATE WHEN EVIDENCE CHANGES
→ STOP BEFORE UNSUPPORTED AUTHORITY
```

Именно это, а не уверенно рассказанная одна история, является Expected Result D3.
