# CRN-M-04 — Редукторы и муфты
# D1 Practice v1
## Граница привода, путь вращения/момента, распознавание family, evidence/source status и bounded STOP

---

# Зачем эта практика

D1 проверяет не способность рассчитать зубчатую передачу, выбрать редуктор/муфту или вынести реальному оборудованию verdict.

Нужно уметь перенести beginner-маршрут урока на **новый** привод:

```text
ЧТО ЗА ПРИВОД / УЗЕЛ И ГДЕ ЕГО ГРАНИЦА?
→ КУДА ИДЁТ ВРАЩЕНИЕ И ЧЕРЕЗ КАКИЕ ИНТЕРФЕЙСЫ?
→ КАКУЮ ФУНКЦИЮ ВЫПОЛНЯЕТ КАЖДЫЙ УЗЕЛ?
→ ЧТО НАБЛЮДАЕТСЯ, А ЧТО ТОЛЬКО ПРЕДПОЛАГАЕТСЯ?
→ КАКОЙ SOURCE ROLE НУЖЕН ДЛЯ СЛЕДУЮЩЕГО ВЫВОДА?
→ ЧТО D1 ИМЕЕТ ПРАВО УТВЕРЖДАТЬ?
→ BOUNDED CONCLUSION ИЛИ STOP / REQUEST EXACT DATA / HANDOFF
```

Practice намеренно **не содержит worked answer key**. Если кейс будто бы требует реального torque/rating, выбора муфты или редуктора, численного допуска центровки, выбора масла, браковочного критерия, диагноза причины или решения «можно работать» — это часть проверки. Успешный D1-ответ должен остановить неподдержанный скачок статуса и запросить точный применимый источник/OEM/паспорт/чертёж/компетентный процесс.

---

# Общий формат ответа

Для каждого кейса выдай короткий **D1 drive packet**.

## 1. System boundary

Что именно входит в рассматриваемый привод/узел, а что остаётся за границей?

## 2. Drive-path map

Покажи наблюдаемую/подтверждённую последовательность валов, муфт, ступеней и выходного механизма.

Если внутренний путь не виден или не подтверждён, так и напиши:

```text
OBSERVED INTERFACE / APPARENT PATH
≠
PROVEN INTERNAL ARCHITECTURE
```

## 3. Function map

Для каждого элемента дай только bounded function:

```text
SOURCE OF ROTATION / CONNECTION / RATIO CHANGE / SUPPORT / SEALING /
BRAKING BOUNDARY / OUTPUT INTERFACE / UNKNOWN
```

## 4. Evidence / unknown register

Раздели:

```text
OBSERVED
DOCUMENTED
HISTORY / REPORT
HYPOTHESIS
UNKNOWN
```

Наблюдение нельзя молча повышать до причины, acceptance или design fact.

## 5. Family / identity status

Если возможно, укажи только уровень знания:

```text
FAMILY RECOGNITION
EXACT TYPE NOT CONFIRMED
EXACT MODEL / CONFIGURATION CONFIRMED
```

Family или внешнее сходство не дают selection/interchangeability authority.

## 6. Source role

Назови тип источника для следующего технического вопроса:

```text
VOCABULARY / FAMILY SCOPE
GENERAL REDUCER STANDARD
EXACT COUPLING STANDARD
GEAR LOAD-CAPACITY METHOD
DAMAGE NOMENCLATURE
LUBRICANT SPECIFICATION BOUNDARY
OEM / PASSPORT / DRAWING / MANUAL
REGULATORY / COMPETENT PROCESS
```

Exact applicability всё равно нужно подтвердить.

## 7. Bounded conclusion

Разрешённые D1-статусы:

```text
D1 MAP COMPLETE — CLAIM BOUNDED
D1 FAMILY RECOGNIZED — EXACT IDENTITY NOT CONFIRMED
D1 EVIDENCE DESCRIBED — CAUSE / ACCEPTANCE NOT ESTABLISHED
D1 SOURCE ROLE IDENTIFIED — EXACT APPLICABILITY NOT YET CONFIRMED
D1 STOP — EXACT DEVICE / SOURCE / OEM DATA REQUIRED
OUTSIDE D1 — DESIGN / RATING / ACCEPTANCE / OPERATION AUTHORITY REQUIRED
```

## 8. STOP / evidence handoff

Назови **конкретно**, какого evidence не хватает: модель/табличка, паспорт, drawing, internal arrangement, coupling designation, lubricant record, alignment procedure, condition history, applicable standard branch, competent inspection/diagnostic decision или другое.

`SkillsVault STOP` — это остановка неподдержанного вывода. Это **не** команда реальному оборудованию продолжать или прекращать работу.

---

# Карманные D1 guards

```text
ВИДИМАЯ ЦЕПОЧКА ≠ ДОКАЗАННАЯ ВНУТРЕННЯЯ АРХИТЕКТУРА
ARROW / DRIVE MAP ≠ UNIVERSAL DIRECTION-OF-POWER PROOF
RATIO + MOTOR NAMEPLATE ≠ ACTUAL / PERMISSIBLE OUTPUT TORQUE
FAMILY ≠ EXACT DESIGN / SIZE / RATING / INTERCHANGEABILITY
FLEXIBLE COUPLING ≠ ANY MISALIGNMENT IS ACCEPTABLE
ГОСТ Р 50895-2025 ≠ ALL COUPLINGS
ISO 12925-1 ≠ PROOF OF INSTALLED / CORRECT LUBRICANT
DAMAGE NAME ≠ ROOT CAUSE / ACCEPTANCE
NO OBSERVED SYMPTOM ≠ HEALTHY CONDITION PROVEN
GENERAL STANDARD ≠ EXACT DEVICE AUTHORITY
SKILLSVAULT STOP ≠ EQUIPMENT OPERATION COMMAND
```

---

# Кейс A — «Это просто мотор с редуктором»
## System-boundary triage

На фотографии механизма видны:

- электродвигатель;
- закрытый соединительный узел между двигателем и корпусом передачи;
- корпус редуктора;
- выходной вал;
- ещё один соединительный узел;
- барабан/исполнительный механизм;
- тормозной узел расположен рядом, но по фото неясно, на каком валу и как включён в кинематическую схему.

Коллега говорит: «Да тут всё очевидно: мотор → редуктор → барабан».

### Задача

1. Выбери разумную границу системы для D1-разбора.
2. Раздели объекты по функциям, не называя закрытые соединительные узлы точным типом без evidence.
3. Построй `observed drive-path map` от двигателя до исполнительного механизма.
4. Что в этой карте является наблюдаемым интерфейсом, а что — предположением о внутренней архитектуре?
5. Почему положение тормоза нельзя достроить «по типовой схеме»?
6. Дай bounded conclusion без design/operation verdict.

### Ловушка

```text
FAMILIAR LAYOUT
≠
PROVEN AS-BUILT DRIVE ARCHITECTURE
```

---

# Кейс B — Стрелка на схеме «доказала» направление
## Drive-path versus operating-mode trap

В учебной схеме нарисовано:

```text
MOTOR → COUPLING → REDUCER → OUTPUT
```

Известно только, что эти элементы соединены в таком порядке. Нет данных о текущем режиме, торможении, внешнем моменте, возможности обратного хода или реальном направлении вращения валов.

Коллега утверждает:

> «Стрелка же вправо, значит мощность всегда идёт только от мотора к выходу, и все валы вращаются в показанном направлении».

### Задача

1. Что действительно показывает D1 drive map?
2. Какие утверждения о направлении вращения/потока мощности из стрелки не следуют?
3. Какие данные понадобятся, если реальный вопрос касается направления вращения конкретного вала или режима обратной передачи?
4. Чем topology/connectivity отличается от operating-state claim?
5. Выбери bounded status.

### Ловушка

```text
CONNECTIVITY MAP
≠
OPERATING-MODE / ROTATION-DIRECTION PROOF
```

---

# Кейс C — «20:1 и 15 кВт — момент уже известен»
## Ratio-to-torque shortcut

На табличке двигателя читается номинальная мощность. В старом документе для похожего привода указано передаточное отношение `20:1`. Точная модель редуктора, потери, duty, фактический режим, динамика, rating method и связь старого документа с текущей сборкой не подтверждены.

Коллега предлагает:

> «Подставим мощность и ratio — получим момент на выходе и сразу увидим, подходит ли редуктор».

### Задача

1. Раздели `kinematic ratio`, фактически передаваемый момент и допустимый/rated момент.
2. Что нужно подтвердить прежде, чем ratio старого документа вообще использовать для current configuration?
3. Почему D1 не должен превращать motor nameplate + ratio в actual torque claim?
4. Какие source roles нужны отдельно для architecture/ratio и для реального rating/selection вопроса?
5. Сформулируй STOP/evidence request без численного расчёта.

### Ловушка

```text
RATIO KNOWN
+
MOTOR NAMEPLATE KNOWN
≠
ACTUAL TRANSMITTED TORQUE KNOWN
≠
ALLOWABLE / RATED TORQUE PROVEN
```

---

# Кейс D — Четыре редуктора по одному абзацу
## Reducer-family recognition without selection

Даны четыре описания.

**D1.** Входной и выходной валы параллельны; внутри видны цилиндрические колёса нескольких ступеней.

**D2.** Вход и выход меняют направление осей примерно на угол; первая заметная пара имеет коническую геометрию.

**D3.** Есть центральное колесо, сателлиты и венец; несколько зацеплений участвуют в общей планетарной структуре.

**D4.** Видна червячная пара с характерно отличающимися элементами; точная модель и направление передачи неизвестны.

### Задача

Для D1–D4:

1. Назови наиболее вероятную **family на уровне принципа**, если данных достаточно.
2. Какие признаки являются recognition cues, а не доказательством exact model?
3. Какие selection/rating/interface свойства нельзя перенести из family-name?
4. Для D3 объясни, почему несколько зацеплений не дают права объявить равное распределение нагрузки.
5. Для D4 не делай вывод о самоторможении/обратимости только из слова «червячный».

### Ловушка

```text
FAMILY RECOGNIZED
≠
EXACT DESIGN / LOAD SHARING / EFFICIENCY / REVERSIBILITY / RATING KNOWN
```

---

# Кейс E — «Муфта гибкая, значит центровка не критична»
## Coupling function / movement / limit boundary

Между двигателем и редуктором установлена муфта с эластичным элементом. Точная модель читается плохо. После обслуживания на соседнем узле заметно относительное смещение осей валов. Численных измерений, монтажной процедуры и OEM limits нет.

Коллега говорит:

> «Это же гибкая муфта — она для этого и сделана».

### Задача

1. Что D1 может сказать о функции муфты?
2. Что можно осторожно сказать о способности некоторых конструкций допускать относительные перемещения?
3. Почему family/слово «гибкая» не дают численный misalignment verdict?
4. Какие виды relative movement нельзя бездумно свалить в одно слово «несоосность»?
5. Что нужно запросить для equipment-specific alignment/acceptance вопроса?
6. Дай bounded conclusion.

### Ловушка

```text
COUPLING CAN ACCOMMODATE SOME MOVEMENT
≠
ANY OBSERVED MISALIGNMENT IS ACCEPTABLE
```

---

# Кейс F — «Поставим похожую муфту»
## Interchangeability / source-scope trap

На складе есть две внешне похожие муфты:

- у установленной читается только часть маркировки;
- у запасной известен производитель и размер;
- обе имеют зубчатые элементы/внешние признаки, похожие на зубчатую муфту;
- на запасную найден текст ГОСТ Р 50895-2025;
- exact designation установленной муфты, посадки, interface dimensions, rating и application history не подтверждены.

Коллега предлагает: «Стандарт на зубчатые муфты есть — значит запасная подходит».

### Задача

1. Раздели `family recognition`, `exact identity` и `interchangeability claim`.
2. Что именно может дать ГОСТ Р 50895-2025 как source-role, если current component действительно в его scope?
3. Почему этот ГОСТ нельзя переносить на все типы муфт?
4. Какие exact-device/interface data нужны прежде, чем вообще обсуждать замену?
5. Какой D1 STOP должен сработать до selection/replacement verdict?

### Ловушка

```text
STANDARD EXISTS FOR A FAMILY
≠
THIS DEVICE IDENTIFIED
≠
REPLACEMENT INTERCHANGEABILITY PROVEN
```

---

# Кейс G — Утечка и неизвестное масло
## Lubrication evidence / specification boundary

На корпусе редуктора видны следы масла возле уплотнения. В журнале есть запись, что «масло доливали», но не указаны точная марка, вязкость, объём или источник назначения. На складе есть несколько gear oils. Кто-то находит ISO 12925-1 и предлагает выбрать «подходящее по классу».

### Задача

1. Что здесь observation, что history, а что unknown?
2. Почему утечка не доказывает единственную root cause?
3. Какую роль может играть ISO 12925-1 как lubricant-specification boundary?
4. Почему он не доказывает, что именно залито, и не даёт D1 права самостоятельно назначить замену/смешивание?
5. Какие OEM/passport/maintenance records нужны дальше?
6. Сформулируй bounded conclusion/STOP.

### Ловушка

```text
LUBRICANT STANDARD FOUND
≠
INSTALLED LUBRICANT IDENTIFIED
≠
SUBSTITUTION / TOP-UP AUTHORIZED
```

---

# Кейс H — «Шум + вибрация + тёплый корпус = зубья разрушены»
## Condition evidence is not diagnosis

Оператор сообщает, что привод стал «громче». На корпусе чувствуется нагрев. Доступный канал vibration monitoring показывает изменение относительно прошлого месяца. При внешнем осмотре также замечены следы масла. Внутреннего осмотра, trend context, точных thresholds, load history и model-specific criteria нет.

Коллега заключает:

> «Совпало сразу несколько признаков — значит разрушение зубьев доказано».

### Задача

1. Разложи данные по evidence families: report / temperature observation / vibration trend / leakage observation.
2. Какие из них независимы, а какие могут иметь общий underlying condition или общий источник ошибки?
3. Почему согласие нескольких признаков не является root-cause proof?
4. Какую роль может играть ISO 10825-1 для описания damage, если повреждение действительно наблюдено?
5. Какие дополнительные evidence/source roles нужны для diagnosis/acceptance?
6. Дай D1 status без health verdict.

### Ловушка

```text
MULTIPLE CONSISTENT SYMPTOMS
≠
ROOT CAUSE PROVEN
≠
ACCEPTANCE / REMAINING LIFE DECIDED
```

---

# Кейс I — Правильный источник для неправильного вопроса
## Source-role router

Есть шесть запросов:

**I1.** Нужен общий российский scope/технические требования для ряда редукторов.

**I2.** Нужен вопрос по зубчатой муфте как family.

**I3.** Нужно рассчитать несущую способность зубчатой передачи конкретного редуктора.

**I4.** Нужно корректно назвать/описать наблюдаемое повреждение зубьев.

**I5.** Нужно определить требования к смазочному материалу закрытой зубчатой системы, а затем понять, что предписано именно этому редуктору.

**I6.** Нужно решить, можно ли конкретному крановому приводу продолжать работу после обнаруженного изменения состояния.

### Задача

1. Для I1–I6 выбери source **role**, не пытаясь закрыть все вопросы одним документом.
2. Где уместны ГОСТ 31592-2012, ГОСТ Р 50895-2025, ISO 6336, ISO 10825-1 и ISO 12925-1 как стартовые anchors?
3. Где exact applicability всё равно требует проверки edition/scope/component/configuration?
4. Где OEM/passport/drawing имеет более прямую equipment-specific роль?
5. В каком запросе нужен отдельный competent/regulatory operational process, а не учебный standard lookup?

### Ловушка

```text
CORRECT DOCUMENT TITLE
≠
CORRECT QUESTION
≠
EXACT APPLICABILITY
≠
EQUIPMENT VERDICT
```

---

# Кейс J — Интегрированный D1 capstone
## From drive map to bounded handoff

Перед тобой неполный пакет по приводу механизма:

- двигатель идентифицирован по табличке;
- между двигателем и редуктором стоит муфта, но её exact model не читается;
- на редукторе частично видна маркировка, старый чертёж показывает двухступенчатую схему;
- неизвестно, соответствует ли старый drawing текущей as-built configuration;
- второй соединительный узел связывает выход редуктора с исполнительным механизмом;
- после недавнего обслуживания появились жалобы на шум;
- есть небольшие следы масла на корпусе;
- сотрудник говорит, что «раньше такой шум уже был и всё работало»;
- известен старый ratio, но его relation к current configuration не подтверждён;
- в интернете найден общий стандарт на редукторы и отдельный стандарт на зубчатые муфты;
- точные alignment records, lubricant record, inspection acceptance criteria и equipment-specific operational decision отсутствуют.

Руководитель спрашивает:

> «Что тут происходит и можно ли оставить привод в работе?»

### Задача

Собери полный D1 drive packet без unsourced numeric claim:

1. **System boundary:** какие узлы входят в анализ и какие остаются отдельными authority domains?
2. **Drive-path map:** покажи только подтверждённые интерфейсы; отметь места, где architecture/configuration требует проверки.
3. **Function map:** двигатель / муфта / редуктор / выход / уплотнение / support / unknown.
4. **Family/identity:** что можно классифицировать, а где exact type/model не подтверждён?
5. **Evidence register:** раздели шум, утечку, историю, старый drawing, ratio и маркировку по статусам.
6. **Status-jump audit:** перечисли минимум шесть опасных скачков — например observation→cause, ratio→actual torque, family→interchangeability, general standard→exact applicability.
7. **Source-role map:** какой вопрос идёт к general reducer standard, coupling standard, damage terminology, lubricant specification boundary, а какой — к OEM/passport/drawing/competent process?
8. **Bounded conclusion:** что D1 действительно установил?
9. **STOP / evidence handoff:** какие точные данные нужно запросить дальше?
10. Отдельно напиши: `SkillsVault STOP ≠ equipment-operation permission or prohibition`.

### Ловушка

```text
A GOOD D1 TECHNICAL MAP
≠
DESIGN / RATING / DIAGNOSIS / OPERATION AUTHORITY
```

---

# Что Practice специально не проверяет

Practice A–J не требует и не разрешает самостоятельно изобретать:

- расчёт ISO 6336, коэффициенты и load-capacity proof;
- actual/transmitted/permissible torque по одному ratio и motor nameplate;
- service factor, duty factor или selection редуктора;
- coupling rating/selection/interchangeability verdict;
- численные alignment/misalignment limits;
- backlash/wear/damage discard criteria;
- vibration/noise/temperature acceptance thresholds;
- lubricant grade/viscosity/quantity/substitution/top-up decision;
- shaft/bearing/key/spline/fastener design;
- root cause по шуму, вибрации, нагреву, утечке или одному виду повреждения;
- repair/adjustment/overhaul procedure;
- return-to-service или continued-operation permission.

Если кейс доходит до такого вопроса, успешный D1-ответ должен **остановить unsupported inference**, назвать недостающее evidence и передать вопрос точному источнику/OEM/competent process.

---

# Следующий слой

`CRN-M-04 / D1 PRACTICE REASONING / v1`

Он покажет несколько допустимых beginner reasoning paths, discriminating evidence requests и common failure modes для A–J, но Practice останется без встроенного единственного answer key.
