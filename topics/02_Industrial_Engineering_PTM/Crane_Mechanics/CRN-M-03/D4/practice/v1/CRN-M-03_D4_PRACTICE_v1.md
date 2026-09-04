# CRN-M-03 — Крюковые подвески и захваты
# D4 Practice v1

## Экспертные интегрированные кейсы A–J

---

# Зачем эта практика

D4 нельзя проверить вопросом «что такое validation?» или «какой ISO относится к крюку?».

Здесь проверяется способность управлять инженерным методом как системой доказательства:

- сначала зафиксировать decision question и claim class;
- различить as-found и approved/design configuration;
- выбрать минимально достаточную модель;
- доказать source/component applicability до formal proof;
- не превращать conditional source language в automatic applicability;
- вести input provenance и source gaps;
- разделять verification / cross-check / validation;
- искать common-mode error;
- оценивать sensitivity, uncertainty и coverage;
- интегрировать inspection / monitoring / classification по их реальным ролям;
- останавливаться на `STOP / REQUEST EVIDENCE`, когда proof chain не замкнута;
- не превращать technical recommendation в equipment permission.

Во всех кейсах часть данных намеренно отсутствует. Это не дефект задания. На D4 отказ придумать отсутствующий input — часть правильной инженерной работы.

---

# Общий контракт ответа D4

Для каждого кейса сформируй один **review packet**.

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

- hook / suspension / grab system boundary;
- component(s) under review;
- reference frame and motion/state;
- as-found versus approved/design configuration;
- requested output;
- confirmed and unconfirmed boundary conditions.

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
- почему scope может быть applicable / conditionally applicable / not shown applicable;
- какая fidelity нужна;
- какие inputs критичны;
- какой output допустим;
- какой output недопустим.

## 5. Verification / cross-check / validation plan

Не пиши просто «модель проверена».

Раздели:

```text
VERIFICATION
— правильно ли решена выбранная модель?

CROSS-CHECK
— согласуется ли результат с независимым расчётом / limiting case?

VALIDATION
— достаточно ли evidence, что модель адекватно представляет real system
  для данного intended-use / decision domain?
```

## 6. Sensitivity / uncertainty / coverage

Назови минимум один фактор, способный изменить decision status, а не только третью цифру результата.

Если заявляешь robustness — укажи:

- provenance диапазона/scenario;
- coverage;
- какие states остаются outside envelope.

## 7. Missing evidence / value of information

Назови следующий документ, measurement, inspection record, monitoring datum, source text или configuration check, который сильнее всего уменьшит decision uncertainty.

## 8. Bounded conclusion

Допустимые статусы:

```text
SUPPORTED FOR THIS CLAIM
CONDITIONALLY SUPPORTED
NOT DEMONSTRATED
METHOD APPLICABILITY NOT YET DEMONSTRATED
METHOD NOT APPLICABLE TO THIS COMPONENT / QUESTION
COMPONENT SCOPE MAPPING NOT DEMONSTRATED
MODEL FORM INSUFFICIENT
CROSS-CHECK CONSISTENT
CROSS-CHECK CONFLICT — REVIEW REQUIRED
RESULT SENSITIVITY HIGH — DECISION NOT ROBUST
EXACT GRAB SOURCE / OEM / DESIGNER REQUIRED
SOURCE / OEM / SPECIALIST REQUIRED
STOP / REQUEST EVIDENCE
```

## 9. Authority handoff

Отдельно напиши:

- что доказано аналитически;
- что не доказано;
- какой actual authorized role/process должен принять equipment-specific decision;
- может ли safety action требоваться до завершения анализа;
- `NOT AUTHORIZING`, если learner/reviewer не владеет соответствующей authority.

---

# Карманные D4 guards

```text
PRELIMINARY MATCH ≠ FINAL APPLICABILITY
OBSERVED / AS-FOUND ≠ APPROVED / DESIGN-CONFORMING
MODEL FORM SUFFICIENT ≠ GOVERNING METHOD SATISFIED
CONDITIONAL EXTENSION ≠ AUTOMATIC APPLICABILITY
ISO 17096 C-HOOK COVERAGE ≠ CRANE HOOK-SUSPENSION PROOF
ISO 17096 ≠ GRAB / GRAB-BUCKET AUTHORITY
SOLVER CONVERGED ≠ MODEL VALIDATED
TWO MODELS AGREE ≠ COMMON-MODE ERROR EXCLUDED
ROBUST IN TESTED / SOURCED ENVELOPE ≠ GLOBALLY ROBUST
NO DEFECT OBSERVED ≠ DEFECT ABSENT
NO EVENT LOGGED ≠ EVENT DID NOT OCCUR
ANALYSIS STOPPED ≠ OPERATION PERMITTED
TECHNICAL RECOMMENDATION ≠ AUTHORIZED EQUIPMENT DECISION
```

---

# Кейс A — «Дайте один ответ по подвеске»

## Question class / source-method governance

Руководитель просит одним письмом ответить:

> «Можно ли оставить текущую крюковую подвеску, считать крюк прочным, а узел пригодным к дальнейшей работе?»

У инженера есть:

- as-found фотографии подвески;
- паспортная сборочная схема старой ревизии;
- результаты визуального осмотра;
- расчёт реакции в ветвях;
- public metadata ISO 17440 и нескольких общих crane standards;
- старый расчёт traverse;
- неполный modification history.

Не подтверждено, какая конфигурация официально является current design basis.

### Задача

1. Разбей исходный вопрос минимум на пять claim classes.
2. Покажи, почему один «главный стандарт» или одна FEA/формула не закрывают все claims.
3. Построй `Claim → Component → Method → Evidence → Authority → Gap`.
4. Что нужно заморозить в configuration record?
5. Какие outputs могут быть analytical, а какие требуют separate authority line?
6. Сформулируй bounded conclusion.

### Ловушка

```text
ONE PHYSICAL ASSEMBLY
≠
ONE ENGINEERING QUESTION
≠
ONE METHOD
≠
ONE AUTHORITY
```

### Обязательный артефакт

Таблица `Claim → Component → Method → Evidence → Authority → Gap`.

---

# Кейс B — «На фото всё почти как в паспорте»

## Boundary-value problem / configuration provenance

В field photo видно:

- hook body и traverse внешне соответствуют знакомой компоновке;
- положение одной cheek/link отличается от архивной схемы;
- маркировка части деталей читается;
- положение оси одного pin измерено;
- официальная revision history после ремонта отсутствует;
- motion state интересующего события не зафиксирован.

Коллега предлагает использовать старую model без изменений:

> «Геометрия же почти та же».

### Задача

1. Раздели `as-found geometry`, `approved/design geometry` и `calculation geometry`.
2. Какие load-path / constraint / contact assumptions могли измениться?
3. Какие outputs old model ещё пригодны как qualitative cross-check?
4. Какой minimum evidence нужен для нового configuration/model lock?
5. Как motion-state uncertainty влияет на выбранную fidelity?
6. Какой STOP condition должен сработать до formal proof claim?

### Ловушка

```text
VISUALLY SIMILAR
≠
SAME CONFIGURATION / LOAD PATH / BOUNDARY CONDITIONS
```

---

# Кейс C — «Статика сошлась — зачем усложнять»

## Model fidelity / adequacy

Для hook suspension построена аккуратная quasi-static model:

- equilibrium закрывается;
- reaction distribution разумна;
- один steady-state measurement согласуется с model;
- проблемная сигнатура появляется только при коротком эпизоде изменения движения;
- acceleration не измерена;
- sampling monitoring channel ещё не оценён;
- часть inertia/configuration inputs отсутствует.

Коллега говорит:

> «Model verified и совпала с измерением. Этого достаточно».

### Задача

1. Для какого decision use quasi-static model может быть adequate?
2. Что поддерживает, а что не поддерживает её applicability к transient event?
3. Какой next-fidelity step минимально достаточен?
4. Раздели verification, steady-state cross-check и validation.
5. Какие unknowns способны изменить method/model choice?
6. Почему `MODEL FORM SUFFICIENT` не означает `GOVERNING METHOD SATISFIED`?
7. Сформулируй bounded status до transient evidence.

### Ловушка

```text
QUASI-STATIC MODEL VERIFIED
≠
TRANSIENT EVENT ADEQUATELY REPRESENTED
≠
FORMAL PROOF COMPLETE
```

---

# Кейс D — Значение найдено в ISO 17440

## Forged-hook proof applicability / exact-source boundary

Инженер располагает легитимным фрагментом applicable source и нашёл числовое value, выглядящее относящимся к hook proof.

Известно:

- hook изготовлен как steel forging;
- shank geometry частично восстановлена по drawing;
- public scope ISO 17440 показывает direct coverage для определённых point-hook bodies / machined shanks;
- public scope отдельно указывает plate hooks как not covered;
- для некоторых иных shank-hook constructions principles могут применяться при условиях exact method;
- classification выбранного shank case не закрыта;
- часть inputs для branch/condition selection отсутствует.

Коллега говорит:

> «Значение primary, крюк кованый — proof можно считать закрытым».

### Задача

1. Построй applicability state: `DIRECT / CONDITIONAL / EXCLUDED / NOT YET DEMONSTRATED`.
2. Какие data нужны для exact component mapping?
3. Чем `primary value located` отличается от `current-case value applicable`?
4. Какие branch/condition/unit/definition checks обязательны?
5. Что можно проверить open mechanics cross-check’ом, не подменяя formal method?
6. Что делать, если conditional-extension conditions нельзя подтвердить?
7. Как должен выглядеть request package к OEM/designer/expert?

### Ловушка

```text
PRIMARY VALUE LOCATED
≠
CORRECT METHOD BRANCH / CONDITION SELECTED
≠
FORMAL HOOK PROOF COMPLETE
```

---

# Кейс E — «Стандарт по attachments есть, значит и grab закроем»

## Grab method hierarchy / source-scope gap

Нужно оценить grab mechanism.

Доступно:

- geometry jaws/linkage по field measurements;
- rope/drive scheme;
- approximate payload CG;
- часть contact/friction assumptions взята из старого internal calculation;
- global mechanics model даёт reactions;
- FEA одной jaw показывает acceptable-looking contour;
- инженер нашёл ISO 17096 и видит, что он относится к load lifting attachments и включает некоторые attachment families, например C-hooks;
- public scope этого ISO явно исключает grabs / grab buckets.

Коллега предлагает:

> «Методика близкая, можно применить по аналогии и получить holding/proof conclusion».

### Задача

1. Построй hierarchy: kinematics → global reactions → contact/holding hypothesis → local model.
2. Какие portions можно делать как general mechanics?
3. Где начинается exact-source gap?
4. Почему C-hook coverage нельзя переносить ни на crane hook-suspension proof, ни на grab?
5. Какие inputs критичны для holding/contact question?
6. Что FEA jaw действительно может дать до validation global/contact inputs?
7. Сформулируй правильный source-gap handoff.

### Ловушка

```text
GENERAL MECHANICS = ALLOWED

ISO 17096 C-HOOK COVERAGE
≠ CRANE HOOK-SUSPENSION PROOF
≠ GRAB / GRAB-BUCKET AUTHORITY
```

### Обязательный артефакт

Таблица `Model layer → Input → Source → Output → Authority / Gap`.

---

# Кейс F — Два расчёта совпали

## Verification / cross-check / common-mode error

Две независимые команды получили почти одинаковую reaction в pin/traverse interface:

- Team 1 — spreadsheet + vector equilibrium;
- Team 2 — multibody model;
- software и implementation разные;
- обе команды получили одну geometry table;
- обе использовали один drawing revision;
- позднее field measurement показал возможное отличие actual pin location;
- material input здесь не decision-driving, а geometry mapping — decision-driving.

### Задача

1. Какие errors совпадение моделей делает менее вероятными?
2. Какие common-mode errors оно почти не проверяет?
3. Раздели implementation verification, cross-check и validation.
4. Какие dimensions independence нужно проверить кроме software?
5. Что проверить первым: ещё один solver или geometry provenance?
6. Какой evidence способен изменить обе модели одновременно?
7. Перепиши текущий confidence statement.

### Ловушка

```text
INDEPENDENT IMPLEMENTATIONS AGREE
≠
SHARED INPUTS / INTERPRETATION ARE CORRECT
```

---

# Кейс G — «Robust во всём диапазоне»

## Sensitivity / uncertainty / coverage

Для grab contact model отчёт показывает три scenarios:

```text
LOW
NOMINAL
HIGH
```

Во всех трёх technical status не меняется.

Но:

- provenance friction/contact ranges указан частично;
- payload CG envelope взят из одного historical case;
- correlation между payload position и contact state не анализировалась;
- model-form alternative по jaw/contact idealization не проверена;
- transient closing state находится outside tested scenarios.

Автор пишет:

> «Вывод robust к uncertainty».

### Задача

1. Что нужно доказать до слова `robust`?
2. Раздели parameter / measurement / configuration / model-form uncertainty.
3. Какие ranges имеют defensible provenance, а какие нет?
4. Почему correlation и coupled states важны?
5. Как competing model можно использовать как model-form challenge?
6. Что означает coverage данного scenario envelope?
7. Какой value-of-information highest priority, если один unknown способен изменить decision status?

### Ловушка

```text
ROBUST INSIDE A CHOSEN ENVELOPE
≠
ROBUST OUTSIDE ITS PROVENANCE / COVERAGE
```

---

# Кейс H — Осмотр хороший, история тревожная

## Inspection / monitoring / remaining-life boundary

Последний visual inspection hook suspension не выявил явного defect.

Monitoring / history показывает:

- duty profile в последние месяцы отличался от ожидаемого;
- несколько events зарегистрированы, но sensor coverage и completeness требуют проверки;
- classification/context documents доступны;
- exact component remaining-life method/input package для текущего decision не подтверждён;
- specialist NDT не выполнялся.

Руководитель спрашивает:

> «Раз дефекта не видно, можно считать остаточный ресурс достаточным?»

### Задача

1. Раздели вопросы inspection, monitoring, classification и remaining-life analysis.
2. Что означает `no defect observed` только в границах конкретного inspection?
3. Какой observability gate нужен перед negative claim?
4. Что означает `no event logged`, если coverage неполна?
5. Как history влияет на review priority, но не превращается автоматически в remaining-life number?
6. Какой evidence package нужен для отдельного remaining-life pathway?
7. Что можно рекомендовать технически без operational permission?

### Ловушка

```text
NO DEFECT OBSERVED
≠
DEFECT ABSENT
≠
REMAINING LIFE DEMONSTRATED
```

---

# Кейс I — Global model, local FEA и inspection «спорят»

## Competing methods / harmonization

Global rigid-body/load-path model даёт умеренную reaction.

Local FEA traverse/pin region показывает высокий local response.

Inspection сообщает local mark/wear signature в той же area.

Но:

- global model и FEA отвечают на разные outputs;
- transfer quantity между global/local models документирована частично;
- support/contact stiffness FEA принята из старого project;
- actual geometry mapping ещё не закрыта.

На совещании звучит:

> «FEA подтверждается осмотром, значит global mechanics неправильна».

### Задача

1. Выполни harmonization: какие quantities действительно можно сравнить?
2. Какие apparent conflicts исчезают после разделения claim classes?
3. Какой interface quantity связывает models?
4. Что inspection может поддержать, но не proof’ить?
5. Какие equilibrium / limiting-case checks нужны?
6. Какие варианты статуса конфликта допустимы?
7. Какой next evidence максимально различает эти варианты?

### Ловушка

```text
METHODS / EVIDENCE DISAGREE
≠
ONE METHOD MUST BE WRONG
```

---

# Кейс J — Capstone: «Дайте заключение по крюку и grab»

## Full D4 expert synthesis / bounded authority handoff

После серии спорных эпизодов команда получила mixed evidence package.

### Configuration

- current hook suspension as-found по осмотру отличается от archived drawing;
- revision / modification status неполный;
- grab jaw/linkage geometry частично измерена;
- approved grab configuration record не найден.

### Mechanics

- steady-state suspension model закрывает equilibrium;
- transient state model отсутствует;
- grab global mechanics model существует;
- contact/holding assumptions partly inherited from old calculation.

### Formal source layer

- ISO 17440 identity/scope известны;
- final hook component applicability и method branch не закрыты;
- ISO 17096 public scope известен и явно исключает grabs/grab buckets;
- exact grab proof/holding/acceptance source в available package отсутствует.

### Component models

- old FEA traverse существует для prior geometry;
- jaw FEA выполнена, но contact load provenance incomplete;
- mesh documentation хорошая.

### Condition / history

- visual inspection hook не показал явного defect;
- local wear/marking на grab есть;
- monitoring history partial;
- specialist NDT / remaining-life pathway не закрыты.

Руководитель просит:

> «Нужен один итог: можно ли считать всё работоспособным и продолжать работу?»

### Задача

1. Разбей запрос минимум на восемь claim classes.
2. Построй current configuration / approved configuration / model configuration map.
3. Построй source-component-method applicability map.
4. Какие models adequate как screening/cross-check, а какие требуют rebuild?
5. Раздели verification / cross-check / validation по каждому critical model.
6. Какие uncertainties способны изменить decision status?
7. Какие negative evidence claims требуют observability gate?
8. Какие source gaps нельзя закрывать аналогией?
9. Сформируй evidence requests по value of information.
10. Дай bounded technical conclusion.
11. Отдельно зафиксируй `NOT AUTHORIZING` и actual authority handoff.
12. Может ли safety action требоваться до завершения analysis?

### Ловушка

```text
A COMPLETE TECHNICAL REVIEW PACKET
≠
AN AUTHORIZED EQUIPMENT DECISION
```

### Обязательный артефакт

Полный D4 review packet:

```text
CLAIM MAP
CONFIGURATION MAP
SOURCE / METHOD APPLICABILITY
INPUT PROVENANCE
MODEL / V&V MAP
SENSITIVITY / COVERAGE
EVIDENCE ROLE MAP
SOURCE GAPS
BOUNDED STATUS
AUTHORITY HANDOFF
```

---

# Финальный self-check практики

Перед сдачей любого кейса проверь:

1. Я ответил на конкретный decision question?
2. Я разделил observed/as-found и approved/design configuration?
3. Я не повысил preliminary source match до final applicability?
4. Я не превратил conditional extension в automatic permission?
5. Я не перенёс ISO 17096 на grabs/grab buckets?
6. Я разделил verification / cross-check / validation?
7. Я атаковал common-mode error?
8. У sensitivity ranges есть provenance и coverage?
9. Я применил observability gate к negative evidence?
10. Я явно указал, что не доказано?
11. Я остановился, если exact source/input/authority отсутствуют?
12. Я не выдал technical recommendation за operation/equipment permission?

Если на любой вопрос ответ «нет» — review packet ещё не готов.
