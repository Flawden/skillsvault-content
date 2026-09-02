# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть II. Boundary-value problem для барабана, блоков и полиспаста
## Блоки 6–10 — авторская версия v1

## Reader Navigator — из реального механизма в однозначную постановку

Главная линия этой части:

```text
REAL CONFIGURATION
→ LOCK ROPE PATH + STATE
→ CHOOSE SYSTEM / BOUNDARIES / FRAME
→ DEFINE PHYSICAL OUTPUT
→ ONLY THEN WRITE EQUATIONS
```

Если потерялся в деталях, вернись к четырём словам: **system — state — boundary — output**. Они важнее красивого CAD.

### К концу Части II ты должен уметь

- версионировать as-found configuration и rope path;
- отличить физическую support/contact boundary от удобной constraint в модели;
- зафиксировать frame, sign convention и motion state;
- определить output физически, а не словом `stress` или `reaction`;
- назвать critical unknown, который не позволяет запускать следующую модель.


# Блок 6. «Схема механизма» ещё не является расчётной постановкой

Фото, паспортная схема и красивый CAD отвечают на разные вопросы. D4 требует собрать **boundary-value problem**.

Минимально зафиксируй:

- какие тела входят в расчётную систему;
- где система соединяется с внешним миром;
- rope path и направление каждой ветви;
- точки/зоны контакта с барабаном и блоками;
- support / bearing / axle idealization;
- frame и направление осей;
- motion state;
- load history, если она влияет на вопрос;
- requested output.

Для одного и того же механизма можно построить разные valid models:

- FBD крюковой подвески;
- FBD одного блока;
- барабан как тело относительно оси;
- вал/опоры как отдельную подсистему;
- локальную контактную модель канат–ручей;
- глобальную structural model.

### Guard

Нельзя переносить reaction из одной модели в другую, не проверив, совпадают ли boundary и definition результата.

# Блок 7. Rope path должен быть версионирован так же, как численные входы

В D2 мы учили «проследи весь путь каната». В D4 этого мало: путь должен быть **однозначно документирован**.

Полезная запись:

```text
RopePath v3
Anchor A → Sheave S1 → Moving sheave S2 → Equalizer E1 → Drum D1
State: hook at elevation H, layer L, winding direction WD
```

Почему версия важна?

- rerouting меняет направления ветвей и реакции;
- другой слой меняет effective radius;
- другой reeving configuration меняет moving parts и кинематику;
- «почти такая же» схема может иметь другую опору или dead-end.

D4 запрещает фразу «использовал схему из старого отчёта» без доказательства configuration identity.

### Geometry provenance table

| Параметр | Значение/состояние | Источник | Дата/версия | Уверенность |
|---|---|---|---|---|
| rope path | … | passport / field trace | … | … |
| drum radius/state | … | drawing / measurement | … | … |
| sheave position | … | drawing / survey | … | … |
| support location | … | drawing / CAD | … | … |
| layer/crossover state | … | observation | … | … |

### Red-Team guard: observed configuration ≠ approved configuration

Field trace может очень хорошо отвечать на вопрос **«как проложено сейчас?»**, но сам по себе не отвечает на вопросы **«так ли должно быть?»**, **«кем это изменение разрешено?»** и **«соответствует ли это design/OEM/passport basis?»**.

```text
OBSERVED / AS-FOUND CONFIGURATION
≠
APPROVED / DESIGN-CONFORMING CONFIGURATION
```

Если field trace и authoritative drawing/passport расходятся, нельзя тихо выбрать удобную версию. Фиксируй `CONFIGURATION DISCREPANCY`, используй as-found geometry только в clearly bounded analysis и отдельно эскалируй conformity/authority question.

# Блок 8. Frame и sign convention — часть физики, а не оформление

Ошибки D4 часто рождаются не в сложном solver, а в смешении систем координат.

Для каждого vector result укажи:

- frame;
- positive directions;
- moment reference point/axis;
- units;
- whether value is scalar magnitude or signed component.

Например, для блока:

\[
\vec R = -\left(\vec T_1 + \vec T_2\right)
\]

— это открытая механика. Но сравнить `R_x` из одной модели с «radial reaction» из другой можно только если definitions совпадают.

Для барабана:

\[
M_z = \sum_i (\vec r_i \times \vec T_i)_z
\]

и учебное упрощение `M≈T·r` допустимо лишь при явно заданной геометрии. Если `r` означает radius current layer, а в другой модели — mean pitch radius, это уже разные inputs.

### Check

Перед числом спроси: «что именно означает знак и относительно какой оси?»

# Блок 9. Motion state выбирается до equations

Состояния:

- static equilibrium;
- steady/quasi-static motion;
- acceleration/deceleration;
- start/stop transient;
- slack/take-up event;
- braking or load transfer;
- oscillatory response.

D3 уже учил перестраивать FBD при смене состояния. D4 добавляет выбор **method family**.

Если inertia значима для requested output, `ΣF=0` как фактическая модель не годится. Общая связь

\[
\sum \vec F = m\vec a
\]

сама по себе не даёт crane-specific dynamic factor. Она лишь показывает, что acceleration входит в физическую постановку.

То же для вращения:

\[
\sum M_z = I_z\alpha
\]

Точный `I_z`, damping, compliance, drive control law и transient inputs могут стать критичными. Если их нет, честный status — не «dynamic proof passed», а `MODEL INPUTS INCOMPLETE`.

# Блок 10. Requested output определяет необходимую детализацию модели

Сравним пять outputs:

1. направление resultant на опоре блока;
2. peak bearing reaction;
3. axis torque на барабане;
4. local contact pressure distribution;
5. fatigue proof of a component.

Для пункта 1 может хватить vector statics. Для 2 уже может понадобиться transient load model. Для 4 rigid-body model принципиально не содержит нужного поля. Для 5 требуется applicable proof framework, load combinations, material/detail data и authority.

### Output-to-model ladder

```text
PATH / DIRECTION
→ rigid-body geometry

GLOBAL REACTION / TORQUE
→ rigid-body / quasi-static / dynamic as applicable

DEFORMATION / LOAD SHARING
→ elastostatic / compliant model

LOCAL CONTACT / STRESS FIELD
→ local analytical / FE/contact model

FORMAL PROOF / FATIGUE / ACCEPTANCE
→ exact applicable source method + complete inputs + authority
```

### Stop rule II

Если model family физически не содержит requested output, никакая калибровка не спасёт постановку.

## Рабочий протокол II-A. Configuration lock

Boundary-value problem нельзя строить на «текущей схеме», если текущая схема не идентифицирована.

Минимальный configuration ID:

```text
EQUIPMENT ID:
DRAWING/PASSPORT REVISION:
ROPE/REEVING CONFIGURATION:
DRUM LAYER/ZONE:
HOOK/EQUALIZER POSITION:
OPERATING MODE:
OBSERVATION TIMESTAMP:
FIELD DEVIATIONS FROM DRAWING:
```

Если field deviation обнаружен, не исправляй model silently. Зафиксируй two configurations: `AS-DOCUMENTED` и `AS-OBSERVED`. Иногда их сравнение и есть главное discriminating evidence.

## Рабочий протокол II-B. Geometry mapping error

У geometry есть минимум четыре уровня:

1. nominal drawing;
2. manufacturing/as-built;
3. current measured geometry;
4. simplified model geometry.

Переход 1→4 напрямую опасен. Например, small alignment deviation может быть irrelevant для global torque, но dominant для local contact.

### Geometry relevance test

Для каждого dimension спроси:

- влияет ли он на direction force?
- влияет ли на lever arm?
- влияет ли на contact location?
- влияет ли на stiffness/load sharing?
- входит ли в governing source method?

Если нет — не нужно мерить его с микрометровой точностью. Если да — provenance и uncertainty обязательны.

## Рабочий протокол II-C. State vector

Вместо «кран работает» полезно хранить state vector:

```text
S = {hook position, drum angle/layer, rope-path configuration,
     load, speed, acceleration, drive/brake state,
     support state, temperature/other relevant conditions}
```

Не все компоненты всегда нужны. Но если две серии данных сравниваются, сначала сравни state vectors. «До» и «после» могут оказаться разными не из-за root cause, а потому что system state другой.

## Рабочий протокол II-D. Boundary sensitivity

Boundary condition часто влияет сильнее материала.

Пример structural model барабана:

- Case B1: shaft ends fixed;
- Case B2: bearing translational stiffness represented;
- Case B3: shaft/bearing/support subassembly included.

Если stress field около support резко меняется между B1 и B2, нельзя тратить неделю на уточнение Young's modulus до третьего знака. Dominant uncertainty — boundary.

### Boundary challenge

Любая жёсткая constraint должна отвечать на вопрос:

> какое реальное физическое ограничение она представляет и насколько оно жёсткое относительно исследуемого deformation mode?

## Рабочий протокол II-E. Output definition contract

`Reaction`, `torque`, `stress`, `pressure`, `life`, `margin` — это недостаточные слова.

Для output фиксируй:

```text
NAME:
PHYSICAL DEFINITION:
LOCATION / REGION:
FRAME / AXIS:
TIME CHARACTERISTIC: instantaneous / peak / RMS / cycle / envelope
AGGREGATION: local / resultant / averaged / percentile
UNITS:
SIGN CONVENTION:
SOURCE CRITERION LINK (if any):
```

Это предотвращает псевдосравнение. Peak local stress из fine mesh нельзя напрямую сравнить с section-averaged analytical stress, пока не доказано, что criterion ожидает именно такой quantity.

## Checklist: boundary-value problem complete?

- [ ] configuration identified;
- [ ] rope path traced;
- [ ] bodies/subsystems selected;
- [ ] supports/contacts defined;
- [ ] frame/sign convention fixed;
- [ ] motion state fixed;
- [ ] geometry provenance recorded;
- [ ] requested output defined physically;
- [ ] unknowns visible;
- [ ] authority question separated.

Если хотя бы одна критичная строка пустая, model may be premature.

## Reader Checkpoint II — boundary-value problem без подсказки

1. Какие четыре сущности образуют минимальное ядро постановки?
2. Почему observed configuration нельзя автоматически считать approved configuration?
3. Как ты проверишь, что две серии данных относятся к одному state?
4. Почему `fixed support` должен иметь физическое объяснение?
5. Сформулируй один output так, чтобы другой инженер понял location, frame, time characteristic и units.

# Итог Части II

Хорошая boundary-value problem отвечает на вопрос:

> **какое тело/система, в каком состоянии, с какими boundaries и inputs, в какой системе координат и какой output мы хотим получить?**

# Мост к Части III

Теперь можно выбирать fidelity: rigid-body, quasi-static, elastostatic или более продвинутую модель — и доказывать, почему она достаточна.
