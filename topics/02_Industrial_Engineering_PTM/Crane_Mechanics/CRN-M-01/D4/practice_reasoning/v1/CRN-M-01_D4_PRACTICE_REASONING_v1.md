# CRN-M-01 — Канаты и цепи
# D4 Practice Reasoning v1
## Экспертные reasoning paths для кейсов A–H

---

# Как пользоваться этим документом

Это **не answer key**.

Для большинства D4-кейсов не существует одного правильного текста ответа.

Этот документ показывает:

- сильные начальные постановки;
- разумные competing models;
- какие evidence действительно разделяют модели;
- где допустимы несколько bounded conclusions;
- где `INSUFFICIENT DATA` сильнее выдуманного числа;
- типичные логические провалы;
- какие новые данные способны изменить вывод.

Поэтому сравнивай не фразы.

Сравнивай **архитектуру мышления**.

---

# Общая схема сильного D4-ответа

```text
1. DECISION QUESTION
2. FACT / INFERENCE / ASSUMPTION / UNKNOWN
3. COMPETING MODELS
4. SOURCE / METHOD FIT
5. DIFFERENTIATING EVIDENCE
6. SENSITIVITY
7. BOUNDED CONCLUSION
8. AUTHORITY / SAFETY BOUNDARY
```

Сильный ответ может быть короче эталона.

Но он не должен перепрыгивать через эти слои.

---

# Что считается допустимым разнообразием ответа

Два сильных ученика могут:

- по-разному группировать модели;
- выбирать разные первые measurements;
- давать разные приоритеты источникам;
- приходить к разным bounded outputs.

Это допустимо, если каждый может показать:

1. какие facts использованы;
2. какое assumption введено;
3. почему выбранный evidence различает модели;
4. что изменит conclusion;
5. где заканчивается authority.

---

# Case A — Source architecture / applicability

## Сильное начало

Decision question лучше формулировать так:

> Какие источники имеют право поддерживать отдельные технические и формальные утверждения при оценке замены каната, и какие данные отсутствуют для определения обязательной именно здесь нормативной/контрактной рамки?

Это сильнее:

> Какой документ главный?

Потому что второй вопрос заранее предполагает одну линейную иерархию.

---

## Возможная карта claim types

### Claim 1
Текущее состояние каната соответствует/не соответствует эксплуатационным критериям.

Вероятный source class:

```text
APPLICABLE INSPECTION / DISCARD FRAME
```

### Claim 2
Кандидат обладает определённой конструкцией и product properties.

Вероятный source class:

```text
MANUFACTURER PRODUCT DATA
```

### Claim 3
Система исходно была спроектирована под определённый rope configuration.

Вероятный source class:

```text
CRANE OEM / DESIGN DOCUMENTATION
```

### Claim 4
Какую международную методику использовать для современного rope-drive engineering check?

Вероятный source class:

```text
CURRENT TECHNICAL STANDARD
```

### Claim 5
Какой документ обязателен в данном формальном контексте?

Нужен отдельный слой:

```text
LAW / REGULATION / CONTRACT / PROJECT BASIS / OEM REQUIREMENT
```

---

## Почему нет вечной лестницы

Например:

```text
PRODUCT PROPERTY
→ C может быть сильнее A

ORIGINAL MACHINE CONFIGURATION
→ D может быть сильнее B

CURRENT ENGINEERING METHOD
→ B может быть сильнее D

LEGAL APPLICABILITY
→ ни A, ни B, ни C, ни D не достаточны сами по себе
```

---

## Сильное differentiating evidence

Наиболее ценный следующий документ может быть не «ещё один стандарт», а:

- contract technical basis;
- declaration of applicable codes;
- modification history;
- original/current machine documentation.

---

## Допустимые bounded outputs

### Вариант 1

`INSUFFICIENT DATA`

для утверждения о юридически обязательном документе.

### Вариант 2

`SUPPORTED`

для распределения источников по типам технических claims.

Оба могут сосуществовать.

---

## Типичные провалы

### A-F1
«Самый новый международный документ главный».

Ошибка:
currentness ≠ applicability.

### A-F2
«OEM всегда выше стандарта».

Ошибка:
разные типы утверждений.

### A-F3
«Если formal applicability неизвестна, вообще ничего нельзя анализировать».

Ошибка:
технический source review может продолжаться, но formal conclusion остаётся bounded.

---

# Case B — Rope replacement compatibility

## Сильное начало

Decision question:

> Достаточно ли имеющегося evidence, чтобы доказать системную совместимость конкретного candidate rope с существующим crane rope drive без перехода в redesign?

---

## Product passport

Сильный ответ не ограничится:

```text
d
MBF
construction
```

Он добавит как минимум:

- core;
- rotation behaviour;
- surface/lubrication;
- rope family;
- relevant product-specific limits;
- installation/end-condition constraints, если доступны.

---

## System passport

Нужно собрать:

- drum geometry;
- sheave geometry;
- groove condition;
- multilayer use;
- reeving;
- end condition;
- working swivel if any;
- duty/environment;
- original OEM rope configuration.

---

## C0–C3 reasoning

### C0
Можно подтвердить geometric match по известным nominal dimensions.

Но:

```text
C0 PASS
≠
COMPATIBLE
```

### C1
Product identity кандидата может быть подтверждена.

Но если system-critical product data ещё не сопоставлены, C1 не закрывает задачу.

### C2
Требует system-level review.

Здесь уже всплывают gaps:

- groove condition;
- rotational/end-condition fit;
- actual package geometry.

### C3
Если source-bound design calculation нужен для конкретного параметра, без входов он остаётся открытым.

---

## Наиболее вероятный bounded output

При данных кейса:

`NOT DEMONSTRATED`

часто будет сильнее, чем `CONDITIONALLY COMPATIBLE`.

Почему?

Потому что несколько system-critical checks ещё не выполнены.

Но ученик может защитить `CONDITIONALLY COMPATIBLE`, если он чётко определит:

- какие conditions;
- кто должен их подтвердить;
- что этот статус не является permission to install.

---

## Что действительно изменит conclusion

Высокий decision value имеют:

1. actual groove/package inspection;
2. product-specific rotational/end-condition comparison;
3. OEM/design documentation.

---

## Типичные провалы

### B-F1
«MBF выше — значит запас лучше».

Игнорирует другие trade-offs.

### B-F2
«C2 достигнут — значит совместим».

Неверно: C-level — глубина review.

### B-F3
Слишком ранний `INCOMPATIBLE`.

Отсутствие доказательства ≠ доказанная несовместимость.

---

# Case C — Local mechanics / multilayer / tribology

## Сильное начало

Decision question:

> Какая из локальных damage models лучше объясняет концентрацию повреждения в зоне crossover, и какой минимальный measurement различит их без преждевременного перехода к сложной модели?

---

## Сильные competing models

### C-M1 — local crossover/cut-in
Предсказывает:

- spatial repeatability;
- связь с package geometry;
- локальную контактную концентрацию.

### C-M2 — lubrication/fretting
Предсказывает:

- morphology/contact evidence;
- связь с lubrication heterogeneity;
- возможную внутреннюю/наружную контактную деградацию.

### C-M3 — global bending severity
Должна объяснить:

- почему повреждение локализовано;
- почему тот же D/d не создаёт аналогичную картину в других зонах.

Это делает её слабее как **единственную** модель.

---

## Минимально достаточная модель

Для первого различения часто достаточно:

```text
M1–M2
```

с координатным mapping:

- damage location;
- package state;
- lubrication state;
- contact geometry.

M3 имеет смысл, если:

- локальная contact model действительно нужна;
- измерены геометрия/нагрузки;
- результат способен различить модели.

---

## Какие inputs нельзя выдумывать для M3

Например:

- actual contact geometry;
- diameter under load;
- local tension;
- friction/contact assumptions;
- groove/pocket state;
- material/contact parameters.

---

## Сильное differentiating evidence

Очень хороший первый ход:

> проверить воспроизводимость повреждения по одной и той же spatial coordinate относительно crossover/package transition.

Если повреждение мигрирует вместе с локальной package geometry — C-M1 усиливается.

---

## Допустимый bounded output

`CONDITIONALLY SUPPORTED`

для локальной multilayer/contact model.

Но root cause всё ещё может остаться:

`NOT DEMONSTRATED`.

---

## Типичные провалы

### C-F1
«Crossover совпал — причина доказана».

Spatial coincidence ≠ causality.

### C-F2
Сразу FEA.

Complexity without inputs.

### C-F3
Игнорирование lubrication как co-factor.

Одна model не обязана быть единственной.

---

# Case D — Fatigue / remaining-life critique

## Сильное начало

Decision question:

> Поддерживает ли evidence chain количественный remaining-life claim 73 412 cycles, и если нет, какой более слабый статус результата всё ещё допустим?

---

## Сильная атака на claim

Нужно пройти минимум по восьми вопросам:

1. Что такое cycle?
2. Как crane cycle переводится в local rope events?
3. Где load spectrum?
4. Где sequence?
5. Какой rope family у S–N data?
6. Какой D/d / mechanism?
7. Какой endpoint?
8. Где current state?
9. Как задан future duty?
10. Почему D=1 выбран как endpoint?
11. Где uncertainty?
12. Как сделан transfer argument?

---

## Как Miner может остаться полезным

Даже если final life claim не поддержан, модель может быть:

### Comparative
Сравнить scenario A vs scenario B.

### Sensitivity tool
Показать, какой load bin доминирует.

### Educational / screening
Показать effect of spectrum assumptions.

Но только если результат не переименован в certified remaining life.

---

## Сильный bounded output

Обычно:

```text
UNSUPPORTED QUANTITATIVE REMAINING-LIFE CLAIM
```

а внутри допустимых Practice statuses:

`NOT DEMONSTRATED`

для точного числа.

При этом:

`CONDITIONALLY SUPPORTED`

может быть допустим для comparative ranking.

---

## Что изменит conclusion

Высокий decision value:

- local event history;
- valid life curve for matching domain;
- current state;
- future scenario;
- endpoint;
- uncertainty propagation.

---

## Типичные провалы

### D-F1
Пересчитать число «правильнее».

Practice не просит новое число.

### D-F2
Считать average load достаточным spectrum proxy.

Нельзя без основания.

### D-F3
Дисквалифицировать Miner вообще.

Ошибка другого знака.

Модель может быть полезна в bounded role.

---

# Case E — Rotation / installation / causality

## Сильное начало

Decision question:

> Какие competing mechanisms могут объяснить нагрузко- и высотно-зависимое вращение после replacement, и какие безопасно доступные evidence разделят intrinsic rope response, installation twist и system/end-condition effects?

---

## Сильные hypotheses

### E-H1 — intrinsic rope rotational response

Предсказания:
- систематическая dependence on load/length;
- согласование с product rotational data в пределах допустимого transfer.

### E-H2 — installation twist

Предсказания:
- раннее появление;
- связь с re-reeving history;
- возможная distributed torsional signature.

### E-H3 — reeving/system geometry

Предсказания:
- dependence on height / branch geometry;
- repeatable system pattern.

### E-H4 — end-condition/swivel interaction

Предсказания:
- сильная зависимость от torsional boundary.

---

## Почему `after replacement` недостаточно

Replacement изменил сразу много variables:

- product;
- installation state;
- possibly reeving history;
- boundary interactions.

Поэтому temporal association не идентифицирует один механизм.

---

## Сильное differentiating evidence

Безопасные high-value steps:

- reconstruct installation history;
- verify reeving/end conditions;
- map rotation vs load/height;
- compare product test-method address.

Не нужно сразу менять system configuration.

---

## Допустимый bounded output

`CONDITIONALLY SUPPORTED`

для installation hypothesis, если history даёт evidence.

Или:

`INSUFFICIENT DATA`

для выбора между H1/H2/H3/H4.

Оба сильнее, чем «канат плохой».

---

## Типичные провалы

### E-F1
«Rotation-resistant значит не должен вращаться».

Физически неверно.

### E-F2
«После замены — виноват новый канат».

Post hoc.

### E-F3
Предложить эксплуатационный эксперимент с изменением swivel/reeving без authority.

---

# Case F — Chain–wheel compatibility

## Сильное начало

Decision question:

> Является ли наблюдаемая ранняя contact wear новой цепи evidence проблемы самой цепи, изношенного wheel/system interface или их несовместимости?

---

## Разделение трёх уровней

### Product identity
Цепь правильного family/grade?

### Specific compatibility
Подходит ли она конкретному wheel/mechanism?

### Current condition
Что реально происходит после установки?

Эти вопросы нельзя смешивать.

---

## Evolving-pair model

```text
OLD CHAIN WEAR
→ WHEEL POCKET EVOLUTION
→ NEW CHAIN CONTACT
→ LOCAL PRESSURE / SEATING
→ NEW WEAR
```

Это сильнее объясняет повторный wear, чем фраза:

> новая цепь плохая.

Но это всё ещё hypothesis.

---

## High-value measurements

- pocket geometry;
- seating/contact pattern;
- alignment;
- chain dimensions over specified links;
- lubrication/contamination;
- comparison with OEM chain–wheel specification.

---

## Допустимый bounded output

`NOT DEMONSTRATED`

для specific compatibility.

`CONDITIONALLY SUPPORTED`

для worn-wheel/system hypothesis, если contact localization подтверждена.

---

## Типичные провалы

### F-F1
«Grade T + fine-tolerance = совместима».

Product family ≠ specific compatibility.

### F-F2
Игнорировать old-chain wear history.

Она часть system evidence.

### F-F3
Переходить прямо в redesign wheel geometry.

Это отдельная authority.

---

# Case G — MRT / uncertainty / evidence fusion

## Сильное начало

Decision question:

> Какой статус имеет повторяемая MRT-индикация при неполной сопоставимости baseline conditions, и что необходимо до перевода сигнала в criterion-based disposition или root-cause statement?

---

## Правильное разделение

### SIGNAL
Есть повторяемый LF peak.

### DEFECT
Требует validated interpretation.

### CRITERION
Требует applicable mapping signal/parameter → criterion.

### CAUSE
Требует отдельной causal diagnosis.

---

## NDE-E ladder

Возможный reasoning:

### NDE-E1
Повторяемая индикация.

### NDE-E2
Если квалифицированно охарактеризована как LF/LMA.

### NDE-E3
Только если measurement output связан с применимым criterion.

Baseline differences могут ограничить trend claim.

---

## Почему baseline слабее, чем кажется

Другой instrument, speed, lift-off:

```text
TRACE DIFFERENCE
=
OBJECT CHANGE
+
MEASUREMENT CHANGE
```

Если measurement change не контролируется, нельзя назначить всю разницу объекту.

---

## Evidence fusion plan

Сильный план:

```text
MRT REPEATABILITY
+
VISUAL COORDINATE
+
PACKAGE GEOMETRY
+
DUTY / EVENT HISTORY
+
QUALIFIED INTERPRETATION
```

---

## Критический safety answer

Если применимый criterion уже подтверждён квалифицированной процедурой:

> ждать root cause не нужно, если procedure требует safety disposition.

Это одна из главных D4 компетенций.

---

## Допустимый bounded output

`SUPPORTED`

для существования repeatable signal.

`NOT DEMONSTRATED`

для root cause.

Возможен formal disposition только при подтверждённой authority/criterion chain.

---

## Типичные провалы

### G-F1
Сделать LF = internal wire break автоматически.

### G-F2
Сделать crossover = cause автоматически.

### G-F3
Считать baseline абсолютной истиной независимо от measurement conditions.

---

# Case H — Full D4 capstone

## Сильное начало

Здесь лучший ответ не пытается быстро ответить руководству:

> хороший или плохой?

Он сначала переформулирует бинарный вопрос:

> Какой текущий state/evidence status можно обосновать, какие competing mechanisms остаются, и какой следующий action нужен до решения о дальнейшей эксплуатации/совместимости?

---

## Сильный FACT ledger

Примеры facts:

- rotation observed;
- MRT indication observed;
- nominal diameter same;
- MBF higher;
- construction differs;
- OEM explicit approval not found;
- package geometry not measured;
- installation history incomplete;
- noise position-related;
- no gross overload registered.

Не являются facts:

- «канат несовместим»;
- «crossover вызывает дефект»;
- «rotation caused by new rope»;
- «remaining life достаточно».

---

## Пять обязательных models

### H-M1
Replacement compatibility issue.

### H-M2
Installation/torsional-state issue.

### H-M3
Multilayer local-contact issue.

### H-M4
Measurement interpretation issue.

### H-M5
Duty/resource-model issue.

Дополнительно допустимы:
- groove/sheave condition;
- lubrication;
- combined-mechanism model.

---

## Strong evidence matrix logic

Не считать supports.

Вопрос:

> какое evidence **разделяет** модели?

Например:

### Package geometry measurement
сильно разделяет H-M3.

### Installation reconstruction
разделяет H-M2.

### Product/OEM compatibility documentation
разделяет H-M1.

### MRT repeatability/criterion mapping
разделяет H-M4.

### Local event history
разделяет H-M5.

---

## Три high-value next steps

Один сильный порядок:

1. establish current safety/inspection disposition;
2. reconstruct product/OEM + installation compatibility evidence;
3. measure local package/coordinate geometry.

Другой порядок тоже допустим, если ученик объясняет safety and decision value.

---

## Sensitivity

Очень сильный кандидат dominating uncertainty:

> подтверждён ли applicable discard/serviceability criterion сейчас?

Почему?

Если да, immediate disposition может стать независимым от root-cause ranking.

Но если вопрос именно о **root cause**, dominating uncertainty может быть package geometry или installation history.

Это показывает:

> sensitivity зависит от decision question.

---

## Сильный bounded conclusion

Пример структуры, но не шаблон для копирования:

> Наблюдаемый набор симптомов не поддерживает бинарный вывод «канат хороший/плохой». Replacement compatibility и root cause на текущем evidence не доказаны. Локальная multilayer model и installation/torsional model остаются правдоподобными; MRT-индикация требует criterion-bound qualified interpretation. До завершения compatibility and local-geometry checks количественный remaining-life claim не поддержан. Если применимая inspection procedure уже требует safety disposition, это действие не должно ждать завершения root-cause analysis.

---

## Типичные провалы H

### H-F1
Ответить руководству бинарно ради удобства.

### H-F2
Назначить root cause по самому «яркому» evidence.

### H-F3
Спрятать unknowns.

### H-F4
Выдать remaining-life estimate без chain of evidence.

### H-F5
Перепутать analytical review с formal authority.

---

# Cross-case reasoning patterns

После A–H должно стать видно, что D4 постоянно повторяет не термины, а **структуру**.

## Pattern 1 — classify the claim

```text
WHAT ARE WE CLAIMING?
```

## Pattern 2 — choose source by claim type

```text
SOURCE AUTHORITY IS QUESTION-SPECIFIC
```

## Pattern 3 — preserve competing models

```text
PLAUSIBLE
≠
PROVED
```

## Pattern 4 — prefer differentiating evidence

```text
MORE DATA
≠
MORE DECISION VALUE
```

## Pattern 5 — expose sensitivity

```text
UNKNOWN
→
CAN IT FLIP THE CONCLUSION?
```

## Pattern 6 — bounded output

```text
SUPPORTED / CONDITIONAL / NOT DEMONSTRATED / INSUFFICIENT
```

## Pattern 7 — separate safety from root cause

```text
CAUSE UNCERTAIN
≠
ACTION UNAVAILABLE
```

## Pattern 8 — preserve authority boundary

```text
ANALYSIS
≠
FORMAL APPROVAL
```

---

# Common D4 failure taxonomy

## DF-01 — Premature closure

Выбрать первую красивую модель.

## DF-02 — Source flattening

Сделать одну вечную иерархию источников.

## DF-03 — Model worship

Считать сложность доказательством.

## DF-04 — Data laundering

Перевести unknown в assumption, а assumption потом забыть и назвать fact.

## DF-05 — Signal laundering

Перевести signal → defect → cause без отдельных evidence steps.

## DF-06 — Precision laundering

Выдать точное число из грубых uncertain inputs.

## DF-07 — Authority creep

Начать compatibility review и незаметно закончить redesign approval.

## DF-08 — Safety delay

Ждать красивого root cause, когда уже применим criterion-based action.

---

# Как оценивать ученика без answer key

Не спрашивай:

> совпал ли его conclusion с нашим?

Спрашивай:

### Q1
Decision question сформулирован точно?

### Q2
Facts отделены от assumptions?

### Q3
Есть минимум две живые competing models?

### Q4
Следующий evidence реально различает их?

### Q5
Source/method fit объяснён?

### Q6
Uncertainty может изменить conclusion?

### Q7
Bounded output не сильнее evidence?

### Q8
Authority/safety boundary сохранена?

Если восемь ответов сильные, reasoning может быть D4 даже при другом финальном hypothesis ranking.

---

# Следующий этап

`Expected Result`

должен превратить всю эту практику в **наблюдаемый портрет компетентного человека**.

Не:

> «знает стандарты и методы».

А:

> «получив незнакомую rope/chain engineering problem, способен сформулировать decision question, разделить evidence status, построить competing models, выбрать differentiating evidence, ограничить вывод и правильно выполнить specialist/authority handoff».

После Expected Result это уже можно будет превратить в Verification Rubric.
