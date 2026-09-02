# CRN-M-02 — Барабаны, блоки, полиспасты
# D3 Practice Reasoning v1
## Worked competing-hypothesis paths для кейсов A–L

---

# Как пользоваться этим документом

Это **не единый answer key** и не каталог формальных root cause.

D3 оценивает архитектуру причинного анализа:

```text
OBSERVED SIGNATURE
→ SYSTEM / MODE / WINDOW
→ HISTORY / PRESENT STATE
→ COMPETING HYPOTHESES
→ PREDICTIONS
→ EVIDENCE MATRIX
→ OBSERVABILITY
→ DISTINGUISHING DATA
→ MODEL UPDATE
→ UNKNOWN REGISTER
→ BOUNDED CONCLUSION
```

Для одного и того же кейса сильные ответы могут различаться:

- составом H1/H2/H3, если альтернативы физически осмысленны;
- порядком проверки evidence;
- тем, какой datum считается самым ценным первым;
- model-status, если ученик честно формулирует границы собственного evidence set.

Но сильный ответ не имеет права перескочить через guards:

```text
PLAUSIBLE ≠ SUPPORTED ≠ FORMAL ROOT CAUSE
BEST SUPPORTED ≠ CLOSED-WORLD PROOF
NON-DETECTION ≠ FALSIFICATION WITHOUT OBSERVABILITY
H_data ≠ TRASH BIN
NOT MEASURED ≠ ZERO
PREDICTED DIRECTION ≠ IDENTIFIED CAUSAL EFFECT
BEFORE / AFTER ≠ ONE CAUSE PROVEN
SOURCE EXISTS ≠ METHOD APPLICABLE ≠ DATA SUFFICIENT ≠ AUTHORITY GRANTED
```

Допустимые D3 model-status:

```text
SUPPORTED CAUSAL MODEL — BOUNDED
PLAUSIBLE — DISTINGUISHING DATA REQUIRED
ALTERNATIVE NOT EXCLUDED
MODEL INVALIDATED BY EVIDENCE
SOURCE / OEM / SPECIALIST REQUIRED
NOT YET DEMONSTRATED
```

`SUPPORTED CAUSAL MODEL — BOUNDED` всегда означает «лучше поддержан среди реально рассмотренных альтернатив при текущем evidence set». Это не formal root-cause certification.

---

# Что оценивается прежде всего

Сильный D3 ответ должен показать:

1. нейтральное описание наблюдаемой сигнатуры;
2. named system / mode / time window;
3. минимум две реально конкурирующие причинные модели;
4. проверяемые predictions для каждой модели;
5. различающие, а не просто подтверждающие данные;
6. observability перед использованием отсутствия признака как negative evidence;
7. separation present state / accumulated history;
8. явный unknown register;
9. изменение model-status только после evidence update;
10. bounded conclusion с authority boundary.

Красивый рассказ без этих элементов — не сильный D3 ответ.

---

# Кейс A — Одна локальная сигнатура, три механизма
## Competing hypotheses first

### Сильная траектория

Нейтральное `OBSERVED`:

```text
На участке каната, локализованном вблизи transition/crossover context,
обнаружена локальная сигнатура деградации.
```

В эту фразу специально не включается слово «причина».

Разумный hypothesis set:

```text
H1_spooling:
локальная контактная/геометрическая история переходной зоны
вносит существенный вклад в формирование сигнатуры.

H2_sheave:
тот же участок каната получает существенный локальный вклад
при прохождении направляющего блока.

H3_duty_transient:
локализация связана с тяжёлыми циклами / переходными режимами
и их совпадением с положением данного rope section.
```

### Predictions

`H1_spooling` ожидает, например:

- повторяемую связь сигнатуры с определённым drum/spooling state;
- пространственную локализацию, согласованную с transition/crossover history;
- усиление/изменение паттерна там, где одна и та же rope section повторно попадает в соответствующий state.

`H2_sheave` ожидает:

- связь того же rope section с прохождением конкретного sheave/contact node;
- признаки/историю, которые лучше следуют route/sheave exposure, чем drum state;
- возможное отличие у rope sections с другой sheave exposure при сходном spooling state.

`H3_duty_transient` ожидает:

- временную связь с тяжёлыми/переходными событиями;
- различие между периодами/режимами с разной event history;
- отсутствие необходимости в постоянной связи только с одним geometry node.

### Наиболее ценные distinguishing data

Для `H1` против `H2`:

```text
rope-section mapping
+ drum position / spooling state
+ sheave passage history
для тех же циклов
```

Нужен datum, который показывает, какой exposure лучше объясняет локализацию, а не просто подтверждает, что оба контакта вообще существуют.

Для `H1` против `H3` полезна синхронизация:

```text
точная rope-section / drum-state history
↔ тяжёлые/переходные события
```

### Model status

До такой дискриминации:

```text
H1 = PLAUSIBLE — DISTINGUISHING DATA REQUIRED
H2 = ALTERNATIVE NOT EXCLUDED
H3 = ALTERNATIVE NOT EXCLUDED
```

### Bounded conclusion

```text
Локализация совместима с механизмом spooling/contact,
но текущие данные не отделяют его от sheave/route и duty/transient history.
Следующий сильный шаг — сопоставить идентичность rope section
с drum/spooling state и sheave/event history по тем же циклам.
Formal root cause и acceptance/remaining-life выводы не сделаны.
```

### Допустимый альтернативный путь

Можно считать `H2` текущей ведущей моделью, если ученик аргументирует это доступным evidence. Сильный ответ всё равно обязан оставить H1/H3 и назвать datum, который мог бы поменять ranking.

### Типичные провалы

- `A-F1`: transition zone → root cause без конкурентов;
- `A-F2`: перечислить три H без predictions;
- `A-F3`: назвать ещё один confirmatory факт вместо distinguishing datum;
- `A-F4`: забыть временную/rope-section mapping.

---

# Кейс B — Похожие следы после разных маршрутов
## Same signature does not prove same cause

### Сильная траектория

Первый шаг — **не объединять B1 и B2** только потому, что внешний паттерн похож.

Нужно вести отдельно:

```text
B1:
route history
sheave exposure
spooling state/history
rope-section identity
operating/duty window

B2:
те же поля, но как отдельный case file
```

### Мини-evidence matrix

Для B1 условно:

| Evidence | H_sheave | H_spooling |
|---|---|---|
| повторный проход через один блок | EXPECTED | COMPATIBLE |
| визуально стабильная навивка | COMPATIBLE | не автоматически UNEXPECTED |
| точная rope-section mapping отсутствует | UNKNOWN | UNKNOWN |

Для B2:

| Evidence | H_sheave | H_spooling |
|---|---|---|
| route недавно изменён | COMPATIBLE / potentially discriminating with timing | COMPATIBLE |
| частое попадание в transition/crossover | COMPATIBLE | EXPECTED |
| exact mapping отсутствует | UNKNOWN | UNKNOWN |

Важно: `stable spooling snapshot` сам по себе не доказывает отсутствие прошлой контактной истории.

### Confirmatory versus discriminating

Слабо различающий факт:

```text
«данный участок вообще проходит через блок»
```

если обе модели это допускают.

Более сильный distinguishing datum:

```text
сравнить разные rope sections или периоды,
где sheave exposure меняется при похожем spooling exposure,
или наоборот.
```

### UNKNOWN

Без exact rope-section mapping должны остаться неизвестными:

- действительно ли один и тот же участок получил сравниваемые exposures;
- сколько и каких циклов относилось к каждому state;
- совпадает ли наблюдаемая локализация с нужной историей контакта.

### Bounded conclusion

```text
Похожая сигнатура не объединяет B1 и B2 в одну причинную историю.
Для B1 и B2 нужны отдельные route/spooling/duty case files.
До section-level history обе модели остаются допустимыми,
а causal equivalence двух случаев не доказана.
```

### Типичные провалы

- `B-F1`: same signature → same cause;
- `B-F2`: использовать current visual state как полную history;
- `B-F3`: смешать B1/B2 в одну evidence matrix;
- `B-F4`: назвать «похожесть» discriminating evidence.

---

# Кейс C — «Не увидели признак»
## Observability before negative evidence

### Сильная траектория

До фразы «признака нет» нужны четыре gates:

```text
1. ACCESS / COVERAGE:
   осмотрена ли именно нужная поверхность/зона?

2. METHOD SENSITIVITY:
   способен ли выбранный метод видеть ожидаемый признак?

3. MAPPING:
   проверена ли именно релевантная rope section?

4. TIME WINDOW:
   соответствует ли наблюдение периоду, для которого сделано prediction?
```

### Evidence classification

При неизвестных coverage/sensitivity/mapping/window:

```text
NON-DETECTION = UNKNOWN
```

а не `UNEXPECTED` и тем более не `MODEL INVALIDATED BY EVIDENCE`.

Чтобы отсутствие стало meaningful negative evidence, контроль должен:

- покрыть предсказанную зону;
- иметь достаточную detectability для ожидаемого признака;
- иметь надёжную mapping;
- относиться к релевантному состоянию/периоду.

Только затем надёжное отсутствие может стать `UNEXPECTED` для H1.

### Bounded conclusion

```text
Текущий визуальный non-detection не опровергает H1,
потому что observability для предсказанного признака не доказана.
Evidence status = UNKNOWN.
Нужен targeted inspection/measurement с подтверждёнными coverage,
sensitivity, mapping и time window.
```

### Типичные провалы

- `C-F1`: not observed → absent;
- `C-F2`: UNKNOWN → UNEXPECTED;
- `C-F3`: объявить model invalidated до проверки detectability;
- `C-F4`: увеличить «уверенность» только потому, что осмотр был выполнен формально.

---

# Кейс D — `H_data` как настоящая гипотеза
## Data artifact must also predict something

### Сильная траектория

Физическая модель может быть:

```text
H1_physical:
реальный переходный event породил кратковременное физическое изменение,
которому соответствует зарегистрированный spike.
```

`H_data` должна быть такой же проверяемой:

```text
H_data:
spike возник или был неверно привязан ко времени
из-за sensor/reinstallation/timestamp/data-chain artifact.
```

### Predictions для `H_data`

Например:

- рассогласование timestamps между каналами;
- отсутствие синхронного изменения в независимом физически связанном канале;
- необычность signal shape, совпадающая с known data-chain event;
- корреляция с переустановкой/инициализацией датчика, а не с operating event.

### Что могло бы ослабить `H_data`

- согласованный event в нескольких независимых каналах;
- подтверждённая синхронизация времени;
- повторяемость spike при одинаковом operating state;
- независимое физическое evidence, совпадающее по времени/месту.

Это не обязательно автоматически докажет H1, но сделает `H_data` слабее.

### First checks

Разумный порядок:

```text
timestamp alignment
→ sensor installation / maintenance log
→ independent channels
→ event log
→ physical inspection evidence with known window
```

### Model status

Пока:

```text
H1_physical = PLAUSIBLE — DISTINGUISHING DATA REQUIRED
H_data      = PLAUSIBLE — DISTINGUISHING DATA REQUIRED
```

### Bounded conclusion

```text
Единичный spike пока нельзя использовать как чистое physical-event evidence.
Data-chain/timing artifact является отдельной falsifiable альтернативой.
Нужна cross-channel/time-base проверка до causal ranking.
```

### Типичные провалы

- `D-F1`: «датчик врёт» без predictions;
- `D-F2`: неудобный datum автоматически отправить в H_data;
- `D-F3`: один согласованный канал считать достаточным closed-world proof;
- `D-F4`: смешать data reliability и физическую причинность в один вопрос.

---

# Кейс E — Текущий snapshot хороший, история плохая
## Present state versus accumulated history

### Сильная траектория

Нужно разделить две таблицы.

`PRESENT STATE`:

```text
сегодняшняя геометрия
сегодняшняя укладка
текущий route/contact state
текущий visual snapshot
```

`ACCUMULATED HISTORY`:

```text
предыдущая конфигурация направляющего узла
длительность работы в ней
rope-section exposure
циклы / события того периода
момент возврата конфигурации
```

### Почему хороший snapshot не очищает историю

Материал и локальная сигнатура могут отражать **предыдущее exposure**, даже если сегодняшний механизм выглядит нормально. Текущий snapshot отвечает прежде всего на вопрос «что видно сейчас?», а не «какая история воздействий была накоплена?».

### Что нужно сопоставить

Ключевой datum:

```text
rope-section identity
↔ position through prior configuration
↔ operating cycles/time window
↔ first detection / progression timing
```

### Что current snapshot способен ослабить

Он может ослаблять модель, которая **обязательно предсказывает продолжающийся current-state anomaly** и при этом observability доказана.

Он не опровергает автоматически модель, где причинный exposure был прошлым и оставил persisted signature.

### Model status

```text
past-configuration mechanism = PLAUSIBLE — DISTINGUISHING DATA REQUIRED
current-only mechanism       = может быть слабее, но не автоматически invalidated
```

### Bounded conclusion

```text
Текущий нормальный snapshot не исключает механизм,
действовавший в документированной прошлой конфигурации.
Нужна section-level temporal mapping между прошлым route state,
циклами и моментом появления сигнатуры.
```

### Типичные провалы

- `E-F1`: current normal → historical normal;
- `E-F2`: текущую фотографию считать полной duty history;
- `E-F3`: забыть latency/persistence локальной сигнатуры;
- `E-F4`: назначить remaining life по прошлой exposure story.

---

# Кейс F — Переходный режим и старая FBD
## Dynamic state rebuild

### Сильная траектория

Старая FBD всё ещё может быть полезна как карта:

- выбранного тела;
- реальных внешних взаимодействий;
- геометрических force paths, которые не исчезли.

Но старое равновесное уравнение не наследуется автоматически.

Если рассматриваемая сборка ускоряется:

```text
ΣF_ext = m · a_G
```

для named body и выбранной inertial frame напоминает, что `ΣF = 0` уже не гарантировано.

Если релевантна простая fixed-axis rotational model, её также нужно объявить отдельно; D3 не превращает общую механику в crane-specific dynamic calculation.

### `a not measured ≠ 0`

Отсутствие измерения означает:

```text
acceleration magnitude/history = UNKNOWN
```

а не ноль.

### Distinguishing data

Для `H_quasi-static` против `H_transient-load` полезны:

- velocity-time data, из которых можно обоснованно установить изменение скорости;
- direct/appropriate acceleration data;
- synchronised event history;
- повторяемость сигнатуры/response в steady vs transition windows.

### Model status

Без нужной kinematic history:

```text
QUALITATIVE dynamic contribution: PLAUSIBLE — DISTINGUISHING DATA REQUIRED
numeric transient load: NOT YET DEMONSTRATED
```

### Что запрещено вычислять

Из общей записи нельзя самовольно получить:

- crane-specific dynamic factor;
- formal load combination;
- proof-of-competence result;
- allowable load;
- remaining life;
- equipment-specific intervention.

### Bounded conclusion

```text
Старая FBD сохраняет полезную карту взаимодействий,
но баланс должен быть перестроен для переходного состояния.
Поскольку acceleration history не измерена, её вклад нельзя принять равным нулю
и нельзя количественно назначить без дополнительных данных/метода.
```

### Типичные провалы

- `F-F1`: old ΣF=0 сохраняется потому что body тот же;
- `F-F2`: unmeasured a = 0;
- `F-F3`: из `m·a` вывести нормативный dynamic factor;
- `F-F4`: не объявить body/frame/window.

---

# Кейс G — После ремонта стало лучше
## Before/after change bundle

### Сильная траектория

Событие содержит минимум пять одновременных interventions:

```text
block replacement
+ guide adjustment
+ rope re-reeving / reinstallation
+ start-mode change
+ cleaning/lubrication
```

Следовательно, наблюдение:

```text
AFTER bundle → signature decreased
```

не идентифицирует вклад одного элемента.

### Confounders

К ним могут относиться:

- изменившийся operating regime;
- иной rope seating после перезаправки;
- lubrication/contact state;
- одновременная geometry adjustment;
- различия duty до/после окна работ.

### Когда evidence станет сильнее

Before/after станет более natural-experiment-like, если:

- изменение одного ключевого фактора лучше изолировано;
- остальные условия сопоставимы и документированы;
- baseline известен;
- одинаковый observation method применяется до/после;
- time window достаточно релевантен;
- альтернативные simultaneous changes минимальны или могут быть учтены.

### Follow-up

Сильный follow-up не обязан намеренно менять реальное ПС. Можно искать уже существующее comparison evidence:

- сопоставимые периоды/механизмы с заменой блока без других изменений;
- history, где guide/start/lubrication менялись отдельно;
- локализацию сигнатуры относительно sheave exposure до/после.

Нельзя менять equipment configuration ради учебной гипотезы без authority.

### Model status

```text
H_block = PLAUSIBLE / better supported after bundle,
but ALTERNATIVES NOT EXCLUDED
```

`SUPPORTED CAUSAL MODEL — BOUNDED` допустим только если evidence реально различает block effect от существенных альтернатив.

### Bounded conclusion

```text
Улучшение после maintenance bundle поддерживает идею,
что один или несколько изменённых факторов были причинно значимы.
Оно не идентифицирует замену блока как единственную причину.
```

### Типичные провалы

- `G-F1`: post hoc = proof;
- `G-F2`: забыть simultaneous changes;
- `G-F3`: предложить опасный field A/B test без authority;
- `G-F4`: назвать maintenance event controlled experiment.

---

# Кейс H — Направление чувствительности известно
## Sensitivity is not causal identification

### Сильная траектория

Да, допустима qualitative prediction:

```text
если H_duty верна и прочие существенные условия сопоставимы,
heavy-cycle exposure ↑
→ ожидается усиление response/signature.
```

Но наблюдаемая association пока смешана с другими изменениями:

```text
heavy cycles ↑
и одновременно
speed mode changes
и
spooling zone changes
```

### Роли переменных

В зависимости от causal model они могут быть:

- confounder — влияет и на exposure, и на response;
- mediator — лежит внутри causal chain;
- proxy — отражает другой ненаблюдаемый фактор;
- downstream response — следствие, а не причина.

Их роль нельзя назначать только по корреляции.

### Distinguishing observation

Полезен естественно возникший/документированный comparison, где:

```text
heavy-cycle exposure различается,
а speed/spooling context остаётся достаточно сопоставимым
```

или наоборот — меняется speed/spooling при похожем duty exposure.

### Почему `∂Y/∂x > 0` опасно

Без определённой математической модели, переменных и assumptions такая запись создаёт видимость локальной количественной производной и независимого causal effect. D3 здесь достаточно:

```text
x ↑ → response tends to ↑ under stated conditions
```

как проверяемой directional hypothesis.

### Bounded conclusion

```text
Наблюдается положительная directional association между heavy-cycle exposure
и сигнатурой, но она не идентифицирует независимый causal effect,
потому что speed/spooling context меняется одновременно.
Нужны сравнения, способные разделить эти факторы.
```

### Типичные провалы

- `H-F1`: correlation → causal coefficient;
- `H-F2`: derivative notation без модели;
- `H-F3`: confounder автоматически объявить mediator;
- `H-F4`: придумать численный sensitivity factor.

---

# Кейс I — Какой источник отвечает на какой вопрос
## Evidence roles are question-specific

### Сильная траектория

Нельзя ранжировать документы одной лестницей. Сначала вопрос.

## Вопрос 1 — что наблюдалось вчера?

Первичная роль:

```text
inspection record / contemporaneous observation evidence
```

при условии известной зоны, метода и времени.

## Вопрос 2 — какой режим/история были последние недели?

Первичная роль:

```text
monitoring / operating history / event records
```

с проверкой качества и mapping.

## Вопрос 3 — какая configuration / equipment-specific boundary предусмотрена?

Первичная роль:

```text
applicable OEM manual / passport / approved equipment documentation
```

## Вопрос 4 — подтверждён ли специальный технический вывод?

Если вывод требует отдельного formal method/competence:

```text
applicable specialist method + competent conclusion
```

и соответствующие исходные данные.

### Почему универсальной hierarchy нет

OEM manual может быть сильнейшим источником для approved configuration, но он не доказывает, что конкретная сигнатура была вчера на конкретной rope section.

Inspection record может доказывать observation, но не заменить OEM configuration authority.

Monitoring history может описывать event/duty history, но не становится remaining-life certification автоматически.

### Rule

```text
QUESTION
→ REQUIRED EVIDENCE ROLE
→ APPLICABILITY / QUALITY
→ SUFFICIENCY
→ AUTHORITY BOUNDARY
```

### Bounded conclusion

```text
Evidence source выбирается по вопросу, а не по универсальному престижу документа.
Ни один из перечисленных источников автоматически не замещает остальные роли.
```

### Типичные провалы

- `I-F1`: OEM всегда выше inspection;
- `I-F2`: monitoring = certification;
- `I-F3`: specialist report считать релевантным ко всем вопросам;
- `I-F4`: не проверить applicability/current configuration.

---

# Кейс J — Стандарт найден, расчёт ещё не разрешён
## Source existence versus formal-method authority

### Сильная траектория

Нужно разорвать цепочку на четыре gates:

```text
G1 SOURCE EXISTS
G2 SOURCE APPLICABLE
G3 REQUIRED DATA SUFFICIENT
G4 AUTHORITY / COMPETENCE PRESENT
```

Из условия доказан максимум `G1` — релевантные по теме документы найдены.

Не доказаны автоматически:

- применимость конкретной редакции/метода к конкретному вопросу/ПС;
- наличие полного formal method;
- полнота inputs;
- право/компетенция сделать требуемый формальный вывод.

### Что D3 всё ещё может делать

Даже без formal calculation D3 может:

- определить, какой класс метода нужен;
- перечислить недостающие inputs;
- отделить measured/known от assumed/unknown;
- построить causal hypotheses;
- сформулировать evidence plan;
- обозначить escalation boundary.

### Что остаётся locked

```text
crane-specific dynamic factor / load combination
proof-of-competence result
fatigue / remaining-life number
formal acceptance/discard verdict
field redesign / rerouting authority
```

если соответствующие gates не закрыты.

### Почему «точная цифра» слабее

Число без applicable method + sufficient inputs + authority имеет больше знаков, но не больше доказательной силы.

### Model status

Для formal conclusions:

```text
SOURCE / OEM / SPECIALIST REQUIRED
```

### Bounded conclusion

```text
Наличие тематически релевантного источника подтверждает направление эскалации,
но не разблокирует formal calculation.
Applicability, inputs и competence/authority должны быть доказаны отдельно.
```

### Типичные провалы

- `J-F1`: source title match → method unlocked;
- `J-F2`: недостающие inputs заменить typical values;
- `J-F3`: public abstract превратить в paid normative method;
- `J-F4`: analysis authority → field authority.

---

# Кейс K — Похож ли этот случай на natural experiment?
## Historical comparison with conditions

### Сильная траектория

Этот случай сильнее обычного change bundle потому что:

- есть comparison mechanism;
- документировано изменение одного элемента route на одном механизме;
- второй остаётся comparison group;
- inspection/monitoring собираются сопоставимым способом;
- режим заявлен как сопоставимый.

Но это всё ещё не гарантирует controlled experiment.

### Baseline/confounder checks

Нужно проверить минимум:

```text
pre-change rope condition
load/duty spectrum
maintenance differences
environment/contact conditions
rope age/history
actual route/spooling state
observation coverage/sensitivity
```

### Что усиливает H_route

Например:

- после route change у изменённого механизма response систематически изменился в предсказанном направлении;
- comparison mechanism при сопоставимых условиях не показал такого изменения;
- baseline до вмешательства был достаточно сопоставим;
- изменение локализуется там/тогда, где H_route это предсказывает.

### Что ослабляет H_route

- аналогичное изменение одновременно происходит и в comparison mechanism без route change;
- response не меняется при подтверждённом route exposure;
- различие лучше объясняется baseline/duty/maintenance difference;
- predicted localization не совпадает при надёжной mapping/observability.

### Терминология

`natural experiment` становится более оправданным, если external/operational change создаёт достаточно изолированный contrast и альтернативные объяснения хорошо ограничены.

Если существенные confounders остаются неизвестными, честнее:

```text
historical comparative evidence
```

### Bounded conclusion

```text
Comparison design усиливает способность различать H_route,
но causal strength зависит от baseline comparability и confounder control.
Наличие comparison group само по себе не делает случай controlled experiment.
```

### Типичные провалы

- `K-F1`: comparison group → randomized control;
- `K-F2`: игнорировать baseline rope condition;
- `K-F3`: считать одинаковый monitoring достаточным контролем duty;
- `K-F4`: natural experiment использовать как статус уверенности, а не описание design conditions.

---

# Кейс L — Полный D3 case file
## Integrated transfer case without a single answer

### 1. OBSERVED SIGNATURE

Одна допустимая нейтральная формулировка:

```text
На конкретном участке каната обнаружена локальная сигнатура состояния;
её точная cycle-by-cycle связь с drum/route/event history пока неполна.
```

### 2. SYSTEM / MODE / TIME WINDOW

```text
SYSTEM:
rope section + drum transition/crossover context + guide/sheave route

MODE:
normal operation including documented route change and vibration episodes

WINDOW:
несколько недель до обнаружения сигнатуры,
с отдельным анализом pre-change / post-change / current snapshot
```

### 3. Competing models

```text
H1_spooling:
transition/crossover exposure существенно участвует в локальной сигнатуре.

H2_route:
изменение положения направляющего блока изменило route/contact history
и существенно участвует в сигнатуре.

H3_transient:
эпизоды вибрации/переходной динамики дают существенный вклад
в определённых operating windows.

H4_history_interaction:
сигнатура возникает из взаимодействия нескольких exposures,
а не одного node/state.

H_data:
сильный monitoring spike или его временная привязка искажены data-chain/timing artifact.
```

`H4` не должна быть «всё влияет на всё». Она должна иметь predictions, например: strongest signature ожидается только при совпадении конкретного route/spooling state с определённым event history.

### 4. Predictions / would be unexpected

`H1_spooling`:

```text
PREDICTS:
связь affected rope section с transition/crossover states по повторным циклам.

WOULD BE UNEXPECTED:
надёжная mapping показывает отсутствие такого exposure в relevant window,
при этом observability/history достаточны.
```

`H2_route`:

```text
PREDICTS:
изменение response/localization после route change
и согласованность affected section с новым contact path.

WOULD BE UNEXPECTED:
сопоставимые sections без нового route exposure показывают тот же специфический pattern,
а sections с exposure — нет, при хорошем mapping.
```

`H3_transient`:

```text
PREDICTS:
association с vibration/transition episodes
и различие steady versus event windows.

WOULD BE UNEXPECTED:
надёжные synchronized data показывают отсутствие relevant transients,
когда predicted response возникает повторно.
```

`H_data`:

```text
PREDICTS:
timestamp/cross-channel inconsistency или sensor-chain signature.

WOULD BE UNEXPECTED:
сильная независимая multi-channel синхронность + подтверждённый time base
+ independent physical evidence одного event.
```

### 5. Evidence matrix — один допустимый вариант

| Evidence | H1 spooling | H2 route | H3 transient | H_data |
|---|---|---|---|---|
| возможный transition/crossover context, mapping incomplete | COMPATIBLE | COMPATIBLE | COMPATIBLE | COMPATIBLE |
| documented guide-block route change 3 weeks ago | COMPATIBLE | EXPECTED | COMPATIBLE | COMPATIBLE |
| vibration episodes appeared after route change | COMPATIBLE | EXPECTED / supportive | EXPECTED / supportive | COMPATIBLE |
| one strong spike, time sync unconfirmed | COMPATIBLE | COMPATIBLE | COMPATIBLE | EXPECTED |
| current snapshot better than weeks ago | COMPATIBLE | COMPATIBLE | COMPATIBLE | COMPATIBLE |

Эта матрица нарочно не объявляет победителя. Многие факты пока **supportive but non-discriminating**.

### 6. Где нельзя использовать negative evidence

`current snapshot looks better` не опровергает прошлый exposure mechanism, пока не доказано, что модель предсказывает persistence/current anomaly именно сегодня.

`no visible sign now` также не negative evidence без:

```text
coverage
sensitivity
mapping
time-window relevance
```

### 7. Три наиболее ценных следующих действия

Один сильный вариант:

```text
1. Reconstruct rope-section / drum-state / route mapping across the relevant weeks.
   Distinguishes primarily H1 vs H2 and constrains H4.

2. Validate monitoring time base and cross-channel consistency around the spike/vibration episodes.
   Distinguishes H3 vs H_data.

3. Compare documented pre-change and post-change inspection/monitoring windows
   under as-comparable-as-possible operating conditions.
   Strengthens/weakens H2 and tests interaction with H3.
```

Если ordinary observation не способен различить нужный mechanism, следующий шаг может быть `SOURCE / OEM / SPECIALIST REQUIRED` вместо самостоятельного field intervention.

### 8. Unknown register

Минимум:

```text
U1 exact cycle-by-cycle rope-section mapping
U2 synchronized dynamic/event history
U3 actual magnitude/history of transient loads
U4 full prior duty/fatigue history
U5 complete OEM/passport configuration constraints
U6 reliability/time alignment of the strong monitoring spike
```

Ни один из этих unknown нельзя заменить нулём или типичным значением.

### 9. Model status

При данных ровно из условия сильный консервативный ответ:

```text
H2_route = PLAUSIBLE — DISTINGUISHING DATA REQUIRED
H1_spooling = ALTERNATIVE NOT EXCLUDED
H3_transient = ALTERNATIVE NOT EXCLUDED
H_data = ALTERNATIVE NOT EXCLUDED
```

Если ученик считает H2 лучше поддержанной из-за temporal order `route change → vibration episodes`, он может так и написать, но статус `SUPPORTED CAUSAL MODEL — BOUNDED` требует явного hypothesis-space limit и объяснения, какое evidence действительно различает H2 от H3/H_data. При текущем условии это не обязательно доказано.

### 10. Bounded conclusion

Пример:

```text
Текущий evidence поддерживает связь рассматриваемой сигнатуры
с изменившейся route/spooling/event history, но не разделяет механизмы надёжно.
Route-change hypothesis выглядит значимой, однако transient contribution,
spooling exposure и data-timing artifact не исключены.
Следующие ключевые данные — section/state mapping и synchronized cross-channel history.
Formal root cause, acceptance, design proof и remaining life не установлены.
```

### 11. Что остаётся запрещено

```text
formal root-cause certification
crane-specific dynamic factor/load combination
proof-of-competence result
fatigue / remaining-life number
acceptance/discard verdict
repair / rerouting / modernization authority
```

### Допустимые альтернативные пути

Сильный ученик может выбрать `H1` или `H3` как current lead model, если показывает:

- почему конкретные facts лучше поддерживают её;
- какие конкуренты реально рассмотрены;
- какое evidence ещё может поменять вывод.

Не требуется совпадение с одной ranking H1/H2/H3.

### Типичные провалы

- `L-F1`: route changed → root cause;
- `L-F2`: spike считать physical truth без time-base check;
- `L-F3`: current better snapshot использовать как доказательство прошлой нормы;
- `L-F4`: unknown dynamic load = zero;
- `L-F5`: interaction hypothesis без falsifiable predictions;
- `L-F6`: bounded causal story превратить в remaining-life verdict.

---

# Cross-case reasoning map

| Skill | Main cases | What strong reasoning shows |
|---|---|---|
| Competing hypotheses | A, B, L | минимум две реальные alternatives до discrimination |
| Predictions | A, D, L | каждая H рискует быть опровергнутой, а не только объясняет post hoc |
| Observability | C, L | non-detection получает вес только после coverage/sensitivity/mapping/window |
| `H_data` | D, L | data artifact itself predicts and can lose |
| Snapshot vs history | B, E, L | current state не стирает accumulated exposure |
| Dynamic rebuild | F, L | unmeasured acceleration не превращается в zero/static |
| Change bundle/confounding | G, K | before/after не изолирует cause автоматически |
| Qualitative sensitivity | H | direction hypothesis не притворяется causal coefficient |
| Evidence roles | I | question first, source role second |
| Formal-method authority | J | source/applicability/data/competence — разные gates |
| Integrated bounded conclusion | L | lead model + alternatives + unknowns + next data + authority boundary |

---

# Общая taxonomy провалов D3 Practice

## Family 1 — causal closure too early

```text
symptom → one cause
best supported → root cause
same signature → same cause
before/after → one changed item caused it
```

## Family 2 — observability/data collapse

```text
not observed → absent
H_data → trash bin
unknown mapping → assumed mapping
one spike → unquestioned physical truth
```

## Family 3 — model-scope collapse

```text
not measured → zero
correlation → causal coefficient
generic Newton–Euler → crane-specific factor
present state → complete history
```

## Family 4 — authority collapse

```text
source exists → formal method unlocked
analysis → acceptance/discard
causal support → remaining life
lesson hypothesis → permission to alter equipment
```

---

# Финальный self-check перед сильным D3 ответом

Перед сдачей любого кейса спроси:

```text
1. Я отделил observation от cause?
2. У меня есть реальный competitor, а не strawman?
3. Каждая H что-то предсказывает?
4. Я назвал datum, который разделяет H, а не просто подтверждает обе?
5. Если использую absence — observability доказана?
6. Я разделил present state и history?
7. UNKNOWN остался UNKNOWN?
8. Model status соответствует evidence, а не уверенности рассказчика?
9. Я назвал, что может изменить мой вывод?
10. Я не превратил D3 в proof/design/remaining-life/field authority?
```

Если хотя бы один пункт провален, причинный рассказ может быть убедительным, но ещё не инженерно устойчивым.

---

# Что этот Reasoning сознательно не делает

Этот документ не является:

- formal root-cause certification;
- доказательством exhaustiveness hypothesis space;
- нормативным расчётом crane-specific dynamic factors/load combinations;
- proof-of-competence calculation;
- fatigue-life / remaining-life calculation;
- discard/acceptance procedure;
- design verification;
- specialist NDT interpretation;
- разрешением на ремонт, rerouting, изменение конфигурации или режима эксплуатации.

Следующий этап — **D3 Expected Result v1**: перевести D3 lesson + Practice + Reasoning в наблюдаемые компетенции, минимальный evidence package и unseen transfer criteria перед Verification Rubric.
