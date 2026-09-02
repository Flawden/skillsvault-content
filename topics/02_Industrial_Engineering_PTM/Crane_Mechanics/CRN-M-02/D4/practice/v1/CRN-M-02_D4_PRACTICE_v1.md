# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 Practice v1
## Экспертные интегрированные кейсы A–J

---

# Зачем эта практика

D4 нельзя проверить вопросом «какая модель точнее?» или «что такое validation?». Здесь проверяется способность **управлять инженерным методом как системой доказательства**.

Ученик должен уметь:

- сначала зафиксировать decision question и класс утверждения;
- отличить as-found configuration от approved/design configuration;
- выбрать минимально достаточную модель, а не самую сложную;
- не превращать plausibility в applicability;
- вести input provenance и exact-source gaps;
- различать verification, cross-check и validation;
- искать common-mode error, а не радоваться совпадению двух расчётов;
- проверять, способен ли uncertainty / model form изменить решение;
- сравнивать методы только после harmonization вопроса, границ и входов;
- останавливаться на `STOP / REQUEST EVIDENCE`, когда доказательство не замкнуто;
- не превращать технический вывод в эксплуатационное разрешение или право на изменение ПС.

Во всех кейсах часть данных намеренно отсутствует. Это не дефект задания. На D4 **отказ придумать отсутствующий вход является частью правильной работы**.

---

# Общий контракт ответа D4

Для каждого кейса сформируй один review packet.

## 1. Decision question / claim class

Одним предложением: какой именно вопрос решается и какой тип claim ожидается?

Примеры классов:

```text
DESCRIPTION / STATE
LOAD-PATH / MECHANICS
METHOD APPLICABILITY
SELECTION / PROOF
MODEL ADEQUACY
CONDITION / INSPECTION
MONITORING / HISTORY
TECHNICAL RECOMMENDATION
EQUIPMENT DECISION — OUTSIDE LEARNER AUTHORITY
```

## 2. Configuration and boundary lock

Зафиксируй:

- system / body / rope path;
- reference frame and motion state;
- as-found versus approved configuration;
- requested output;
- какие boundary conditions подтверждены, а какие нет.

## 3. Evidence / input provenance register

Каждый decision-driving input пометь:

```text
PRIMARY / EXACT SOURCE
OEM / PASSPORT / DESIGN RECORD
MEASURED
DERIVED
ASSUMED FOR PEDAGOGICAL MODEL
SECONDARY / UNVERIFIED
UNKNOWN
```

`UNKNOWN` нельзя молча превращать в nominal, типовое или «разумное» значение.

## 4. Method map

Назови минимум два возможных метода/канала, когда это уместно.

Для каждого:

- какой вопрос он решает;
- почему scope может быть применим или не применим;
- какая fidelity нужна;
- какие inputs критичны;
- какой output допустим;
- какой output недопустим.

## 5. Verification / cross-check / validation plan

Не пиши просто «модель проверена».

Раздели:

```text
VERIFICATION — правильно ли решена выбранная модель?
CROSS-CHECK — согласуется ли результат с независимым расчётом/ограничивающим случаем?
VALIDATION — достаточно ли evidence, что модель адекватно представляет реальный объект для данного decision use?
```

## 6. Sensitivity / uncertainty / robustness

Назови минимум один фактор, который способен изменить **решение**, а не только третью цифру результата.

Если заявляешь robustness — укажи provenance scenario envelope.

## 7. Missing evidence / value of information

Назови следующий документ, измерение, inspection record или test, который сильнее всего уменьшит decision uncertainty.

## 8. Bounded conclusion

Допустимые статусы:

```text
SUPPORTED FOR THIS CLAIM
CONDITIONALLY SUPPORTED
NOT DEMONSTRATED
METHOD NOT SHOWN APPLICABLE
INSUFFICIENT DATA
SOURCE / OEM / SPECIALIST REQUIRED
STOP / REQUEST EVIDENCE
INCOMPATIBILITY / MODEL DEFECT IDENTIFIED
```

## 9. Authority handoff

Отдельно напиши:

- что доказано аналитически;
- что не доказано;
- кто должен принять equipment-specific decision;
- может ли safety action требоваться до завершения анализа.

---

# Карманные D4 guards

```text
OBSERVED ≠ APPROVED
PLAUSIBLE ≠ APPLICABLE
SOLVER CONVERGED ≠ MODEL VALIDATED
PARENT MODEL VALIDATED ≠ CHILD SUBMODEL VALIDATED
TWO MODELS AGREE ≠ COMMON-MODE ERROR EXCLUDED
PRIMARY VALUE FOUND ≠ CURRENT-CASE INPUT APPLICABLE
ROBUST IN CHOSEN SCENARIOS ≠ ROBUST OUTSIDE THAT ENVELOPE
NO DEFECT OBSERVED ≠ DEFECT ABSENT
ANALYSIS STOPPED ≠ OPERATION PERMITTED
TECHNICAL RECOMMENDATION ≠ AUTHORIZED EQUIPMENT DECISION
```

---

# Кейс A — «Нам нужен один ответ»
## Question class / source-method governance

Руководитель просит одним письмом ответить:

> «Можно ли оставить текущую схему полиспаста, считать барабан достаточным, а канат — пригодным для дальнейшей работы?»

У инженера есть:

- as-found схема запасовки;
- паспортная схема более ранней ревизии;
- результаты визуального осмотра;
- выгрузка duty history;
- open/public metadata нескольких ISO;
- собственная rigid-body модель;
- FEA барабана, выполненная подрядчиком ранее для другой конфигурации.

Не подтверждено, какая конфигурация официально является действующей design basis.

### Задача

1. Разбей исходный вопрос минимум на четыре claim classes.
2. Покажи, почему один «главный документ» или одна «лучшая модель» не могут закрыть все claims.
3. Построй source/method map по каждому sub-question.
4. Что нужно заморозить в configuration record до любых расчётов?
5. Какие outputs могут быть аналитическими, а какие требуют отдельной authority line?
6. Сформулируй bounded conclusion.

### Ловушка

```text
ONE PHYSICAL OBJECT
≠
ONE ENGINEERING QUESTION
≠
ONE METHOD
```

### Обязательный артефакт

Таблица `Claim → Method → Evidence → Authority → Gap`.

---

# Кейс B — Схема «почти та же»
## Boundary-value problem / configuration provenance

В field photo видно, что один направляющий блок установлен иначе, чем на архивной схеме. Количество ветвей визуально совпадает. Коллега предлагает использовать старую расчётную модель без изменений:

> «Передаточное отношение ведь не изменилось».

Известно:

- текущий rope path восстановлен только по фотографиям и осмотру;
- положение dead-end attachment подтверждено;
- положение осей части блоков измерено;
- archived drawing имеет номер ревизии, но неизвестно, был ли он superseded;
- motion state для интересующего события не зафиксирован.

### Задача

1. Раздели `as-found geometry`, `design/approved geometry` и `calculation geometry`.
2. Какие boundary conditions могли измениться даже при том же числе supporting parts?
3. Какие outputs старая модель ещё может использовать как qualitative cross-check, а какие нельзя переносить?
4. Какой minimum geometry/configuration evidence нужен для нового model lock?
5. Как motion-state uncertainty влияет на scope модели?
6. Какой stop condition должен сработать до formal proof claim?

### Ловушка

```text
SAME REEVING RATIO
≠
SAME LOAD PATH / REACTION / TORQUE / LOCAL CONTACT
```

---

# Кейс C — «Квазистатика сошлась, значит всё нормально»
## Model fidelity / adequacy

Для подъёмного механизма построена аккуратная quasi-static модель. Она согласуется с одним steady-state измерением. Проблемная сигнатура возникает только в короткий момент пуска после смены направления.

Дополнительно:

- acceleration не измерено;
- controller log имеет частоту записи, достаточность которой ещё не оценена;
- mass/inertia части элементов известны из документации, части — нет;
- rigid-body quasi-static equilibrium закрывается без residual.

Коллега говорит:

> «Модель verified и совпала с измерением. Динамическая модель избыточна».

### Задача

1. Для какого decision use quasi-static модель действительно может быть adequate?
2. Что в данных поддерживает, а что не поддерживает quasi-static applicability для события пуска?
3. Какой следующий model-fidelity step является минимально достаточным, а не «максимально умным»?
4. Раздели verification, steady-state cross-check и validation evidence.
5. Какие time-scale / sampling / inertia unknowns являются decision-driving?
6. Какой bounded status допустим до получения transient evidence?

### Ловушка

```text
QUASI-STATIC MODEL VERIFIED
≠
TRANSIENT EVENT ADEQUATELY REPRESENTED
```

---

# Кейс D — Значение найдено в правильном стандарте
## Exact-source / proof applicability

Инженер нашёл в primary standard числовое значение, которое выглядит относящимся к нужному параметру rope drive. Скриншот страницы сохранён. Известны edition и номер документа.

Но:

- ветвление метода зависит от классификации/условий применения;
- не подтверждено, что выбран правильный branch;
- часть входов для branch selection отсутствует;
- public secondary note ранее приводил такое же значение.

Коллега говорит:

> «Теперь всё primary — можно считать proof закрытым».

### Задача

1. Какие дополнительные элементы applicability record нужны кроме номера документа и значения?
2. Чем `primary value located` отличается от `current-case input applicable`?
3. Как должен выглядеть input provenance register для source-bound proof?
4. Что можно сделать open mechanics cross-check'ом, не подменяя formal method?
5. Что делать, если exact branch нельзя подтвердить?
6. Сформулируй request package к designer/OEM/expert вместо угадывания.

### Ловушка

```text
PRIMARY SOURCE LOCATED
≠
CORRECT BRANCH SELECTED
≠
FORMAL PROOF COMPLETE
```

---

# Кейс E — Красная зона на FEA
## Parent–child model interface / local model limits

Подрядчик прислал FEA барабана. На красивой contour plot есть локальный peak stress у геометрического перехода. Mesh convergence показана для peak quantity.

При этом:

- loads пришли из отдельной global модели;
- global model использовала упрощённый rope load representation;
- provenance части branch tensions отсутствует;
- boundary stiffness support structure была принята из старого проекта;
- локальная геометрия в FEA детализирована лучше, чем входные нагрузки.

### Задача

1. Какие вопросы должны быть заданы **до** интерпретации peak stress?
2. Нарисуй parent→child interface contract: какие quantities передаются и где их uncertainty.
3. Что mesh convergence действительно verifies, а чего не validates?
4. Как проверить equilibrium transfer между global и local model?
5. Какие boundary/load uncertainties могут доминировать над local mesh refinement?
6. Какой output FEA допустим сейчас: hotspot identification, relative comparison, proof result или none of these — и почему?

### Ловушка

```text
LOCAL MODEL HIGH FIDELITY
≠
GLOBAL LOAD INPUT HIGH CONFIDENCE
```

---

# Кейс F — Два расчёта совпали
## Verification / cross-check / common-mode error

Две команды независимо получили почти одинаковую реакцию на блоке:

- Team 1 использовала spreadsheet + vector equilibrium;
- Team 2 использовала multibody model;
- software разный;
- implementation независимый.

Позже выяснилось, что обе команды получили один и тот же geometry table и rope-path sketch от заказчика.

На field photo виден признак, что rope path мог быть изменён после выпуска sketch.

### Задача

1. Какие виды ошибки совпадение двух моделей действительно делает менее вероятными?
2. Какие common-mode errors оно почти не проверяет?
3. Как разделить implementation verification, independent cross-check и validation?
4. Что нужно проверить первым: solver settings, geometry provenance или ещё одну модель?
5. Какой discriminating evidence способен изменить обе модели одновременно?
6. Как переписать текущий confidence statement после появления field photo?

### Ловушка

```text
INDEPENDENT IMPLEMENTATIONS AGREE
≠
SHARED INPUTS / INTERPRETATION ARE CORRECT
```

---

# Кейс G — Robust во всех сценариях
## Sensitivity / uncertainty / scenario envelope

Отчёт показывает три сценария:

```text
LOW
NOMINAL
HIGH
```

Во всех трёх решение не меняется. Автор пишет:

> «Вывод robust к uncertainty».

Но в appendix нет provenance диапазонов. Неясно:

- почему именно эти three-point bounds выбраны;
- учтена ли correlation между двумя входами;
- есть ли отдельная model-form uncertainty;
- охватывает ли envelope transient state, который раньше не наблюдался в steady-state data.

### Задача

1. Что нужно доказать до слова `robust`?
2. Раздели parameter uncertainty, measurement uncertainty, configuration uncertainty и model-form uncertainty.
3. Какие параметры надо ранжировать по decision sensitivity?
4. Почему независимое варьирование коррелированных inputs может дать ложную картину?
5. Как competing method может использоваться как model-form challenge?
6. Какой `value of information` highest-priority, если один неизвестный способен перевернуть решение?

### Ловушка

```text
ROBUST INSIDE AN UNSOURCED ENVELOPE
≠
ROBUST ENGINEERING DECISION
```

---

# Кейс H — Осмотр хороший, история тяжёлая
## Inspection / monitoring / remaining-life boundary

Последний визуальный осмотр не выявил явного дефекта. Monitoring показывает, что в последние месяцы duty profile существенно отличался от исходно ожидаемого. В журнале есть несколько перегрузочных событий, но их качество и полнота требуют проверки.

Руководитель спрашивает:

> «Раз дефекта нет, можно ли считать остаточный ресурс достаточным?»

Доступны:

- inspection record;
- partial monitoring history;
- classification/context documents;
- generic fatigue concepts;
- нет confirmed exact remaining-life method/input package для данного решения.

### Задача

1. Какие вопросы имеют inspection, monitoring, classification и remaining-life analysis — по отдельности?
2. Что именно означает `no defect observed` в границах конкретного inspection method?
3. Какие observability / coverage / qualification вопросы нужны перед сильным negative claim?
4. Как duty history влияет на необходимость review, но не превращается автоматически в remaining-life number?
5. Какой evidence package нужен для отдельного remaining-life pathway?
6. Что можно рекомендовать технически без выдачи operational permission?

### Ловушка

```text
NO DEFECT OBSERVED
≠
REMAINING LIFE DEMONSTRATED
```

---

# Кейс I — Аналитика и FEA «спорят»
## Competing methods / harmonization

Rigid-body + simplified load-path model даёт один уровень реакции. FEA/submodel report показывает существенно более высокий local response. Inspection показывает локальную сигнатуру именно в зоне высокого FEA response.

На первом совещании звучит:

> «FEA подтверждается осмотром, значит аналитика неправильная».

Но модели отвечают на разные outputs:

- analytic model — global reaction/load transfer;
- FEA — local structural/contact response;
- inspection — condition evidence;
- boundary assumptions между моделями документированы частично.

### Задача

1. Выполни harmonization: какие quantities действительно можно сравнивать?
2. Какие apparent conflicts исчезают, если развести claim classes?
3. Какой interface quantity должен связывать global и local model?
4. Что inspection может поддержать, но не proof'ить?
5. Какой limiting-case / equilibrium cross-check нужен до выбора «победителя»?
6. Какие варианты статуса конфликта допустимы: model defect, scope mismatch, input mismatch, real local effect, insufficient evidence?
7. Какой следующий evidence максимально различает эти варианты?

### Ловушка

```text
METHODS DISAGREE
≠
ONE METHOD MUST BE WRONG
```

---

# Кейс J — Capstone: «Дайте заключение по механизму»
## Full D4 expert synthesis / bounded authority handoff

После нескольких эпизодов нестабильной навивки команда получила смешанный пакет evidence:

### Configuration

- current rope path восстановлен по осмотру;
- archived OEM drawing показывает другую guide geometry;
- официальный status modification history неполный.

### Mechanics

- steady-state load-path model закрывает equilibrium;
- transient event model ещё не построена;
- один channel monitoring показывает краткий spike;
- timing synchronisation между channels не подтверждена.

### Component model

- старый FEA барабана существует;
- он выполнен для previous guide geometry;
- mesh documentation хорошая;
- load provenance не полностью восстановлена.

### Condition evidence

- visual inspection обнаружил локальный rope wear pattern;
- specialist interpretation/NDT не выполнялись;
- discard/remaining-life decision не входит в доступный evidence package.

### Source layer

- current public source map известен;
- exact source-bound proof branch/inputs полностью не собраны;
- OEM/authority response ещё не получен.

Руководитель просит к концу смены:

> «Сформулируйте техническое заключение и скажите, можно ли продолжать эксплуатацию как есть».

### Задача

Собери полный D4 review packet:

1. Разложи исходный запрос на claim classes.
2. Зафиксируй configuration versions и unknown register.
3. Построй method map минимум из четырёх каналов.
4. Выдели minimal adequate models и запрещённые method jumps.
5. Сформируй input provenance gaps.
6. Напиши verification/cross-check/validation plan.
7. Назови top decision-sensitive uncertainties.
8. Построй evidence harmonization matrix для mechanics / FEA / monitoring / inspection / source/OEM.
9. Выбери bounded technical statuses по каждому sub-question.
10. Сформируй `STOP / REQUEST EVIDENCE` там, где это необходимо.
11. Подготовь authority handoff: что передаётся OEM/designer/specialist/ответственному за безопасную эксплуатацию.
12. Отдельно объясни, почему остановка анализа **не является** разрешением продолжать эксплуатацию до получения ответа.

### Ловушка

```text
URGENT MANAGEMENT REQUEST
≠
PERMISSION TO COLLAPSE METHOD / EVIDENCE / AUTHORITY BOUNDARIES
```

### Обязательный финальный артефакт

```text
A. DECISION QUESTIONS
B. CONFIGURATION LOCK + UNKNOWN REGISTER
C. METHOD / SOURCE MAP
D. INPUT PROVENANCE
E. V&V / CROSS-CHECK PLAN
F. SENSITIVITY / UNCERTAINTY
G. EVIDENCE CONFLICTS
H. BOUNDED CONCLUSIONS
I. REQUESTED EVIDENCE
J. AUTHORITY / SAFETY HANDOFF
```

---

# Что Practice намеренно не содержит

В этом файле нет:

- единственного answer key;
- закрытых таблиц, коэффициентов и branch logic из платных источников;
- фактического proof-of-competence конкретного механизма;
- numeric remaining-life результата;
- discard/acceptance criteria;
- specialist NDT verdict;
- разрешения на эксплуатацию, ремонт, rerouting, redesign или модификацию реального ПС.

Следующий отдельный этап:

`CRN-M-02 / D4 PRACTICE REASONING / v1`

Он должен показать **несколько допустимых reasoning paths**, discriminating evidence, common failure modes и bounded conclusions, не превращая Practice в тест на угадывание одной фразы.
