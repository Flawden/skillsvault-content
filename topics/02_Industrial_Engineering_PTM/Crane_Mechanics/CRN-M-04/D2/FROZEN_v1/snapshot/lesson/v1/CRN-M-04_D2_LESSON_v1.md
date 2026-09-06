# CRN-M-04 / D2 — Редукторы и муфты: прикладная механика заданного привода

Версия: `v1`
Глубина: `D2`
Предпосылка: immutable `crn-m-04-d1-v1`
Source gate: `PASS_WITH_DERIVATION_GUARDS`

D2 учит не «подбирать редуктор», а **строить проверяемую расчётную модель уже заданного привода**. Любая формула здесь работает только после фиксации границы системы, топологии, идентичности вала/сечения, единиц и статуса исходных данных.

Главная карточка D2:

```text
INPUTS      = documented / observed / explicitly-assumed
MODEL       = topology + boundary + equations + efficiency treatment
CALCULATED  = derived demand/result with units and sign convention
AUTHORITY   = what this result does NOT prove
```

Если один из первых трёх слоёв не доказан, следующий вычислительный шаг останавливается. Если рассчитанное значение пытаются превратить в допустимость, рейтинг, ремонт или разрешение эксплуатации, срабатывает authority lock.

## 60-second retrieval spine — маршрут D2 до любой формулы

```text
BOUNDARY / TOPOLOGY
→ INPUT STATUS
→ SAME OBJECT / SIDE / STATE
→ MODEL + EQUATION
→ CROSS-CHECK
→ BOUNDED CONCLUSION OR STOP
```

Короткая версия, которую стоит уметь восстановить из памяти:

```text
MODEL: что именно я считаю?
IDENTITY: к какому валу / mesh / стороне относятся числа?
EQUATION: какая связь разрешена этой моделью?
CHECK: единицы, знак, энергия, определимость?
AUTHORITY: что рассчитанный результат НЕ доказывает?
```

Это не новая формула и не новый источник. Это reader-map существующих D2 guards. Если на любом шаге identity/model не доказаны — не «додумывай» следующий шаг, а переходи к `STOP UNSUPPORTED DERIVATION`.

# 1. Расчёт начинается не с формулы, а с границы модели

До чисел нарисуй минимальную схему: источник вращения → вал/муфта → редуктор/ступени → выход → внешняя нагрузка. Для каждого элемента запиши, входит ли он в расчёт или остаётся внешним.

Нельзя молча считать, что видимая последовательность деталей доказывает реальную кинематическую цепь. Нужны чертёж, паспорт, маркировка, схема или другое подтверждение топологии.

Минимальная запись:

```text
BOUNDARY: motor shaft A -> coupling C1 -> reducer input shaft B -> stage 1 -> stage 2 -> output shaft D
KNOWN: n_A, P_A, z1, z2, z3, z4
UNKNOWN: stage efficiency, coupling rating, bearing internal loads
```

Если неизвестно, какой вал связан с каким, отношение скоростей и перенос момента не вычисляются.

# 2. Статус каждого числа важнее самого числа

Число без происхождения не становится входным данным. В D2 различаются:

- **documented** — паспорт, чертёж, OEM, применимый документ;
- **observed** — измерено/увидено в конкретном состоянии;
- **explicitly-assumed** — допущение для учебной модели;
- **calculated** — получено из модели;
- **rated / allowable** — допустимая способность по применимому источнику;
- **permitted** — эксплуатационное или организационное решение уполномоченной стороны.

Критическая граница:

```text
calculated demand != rated capacity != permitted operation
```

Даже безошибочный расчёт нагрузки не доказывает пригодность реального редуктора или муфты.

## Карточка входных данных — пять полей перед подстановкой

Для каждого числа запиши одну строку:

```text
OBJECT / SIDE  → где величина живёт
STATE          → какой operating state
VALUE + UNIT   → само число и единица
STATUS         → documented / observed / assumed / calculated / rated / permitted
SOURCE / BASIS → откуда оно взялось
```

Если два числа нельзя уверенно посадить на нужный `OBJECT / SIDE / STATE`, их нельзя объединять одной формулой только потому, что единицы подходят.

# 3. Частота вращения и угловая скорость

Для `n` в rpm:

```text
ω = 2πn / 60
n = 60ω / 2π
```

Пример: `n = 1500 rpm`.

```text
ω = 2π * 1500 / 60 ≈ 157.08 rad/s
```

Проверка: rpm и rad/s описывают одну и ту же угловую скорость, но в разных единицах. Перед использованием `P = T·ω` скорость должна быть в rad/s.

Направление вращения хранится отдельно от модуля скорости. Положительное число `1500 rpm` само по себе не говорит, clockwise это или counter-clockwise в выбранной системе координат.

# 4. Связь мощности, момента и угловой скорости

Для одного и того же вала/сечения и согласованного режима:

```text
P = T·ω
T = P/ω
ω = P/T
```

Здесь `P` — механическая мощность на рассматриваемом валу/сечении, `T` — момент на этом же валу/сечении, `ω` — угловая скорость этого же вращающегося состояния. OpenStax отдельно подчёркивает именно **same-object identity** для torque и angular speed.

Перед численным использованием зафиксируй, работаешь ли ты со **signed scalar** относительно выбранной положительной оси или только с модулями. Нельзя взять знак `T` из одной convention, знак `ω` из другой, а затем интерпретировать знак `P` как направление потока мощности.

Нельзя брать моторную электрическую мощность, скорость выходного вала и считать из них «момент редуктора». Сначала нужно доказать, что величины относятся к одной механической границе и одной sign/power-flow convention.

```text
SAME SHAFT / SECTION + SAME STATE + SAME SIGN CONVENTION
are prerequisites for P = T·ω
```

**Red-team trap — sign cancellation.** Численно положительное `P` не доказывает «прямой ход»: одновременно отрицательные `T` и `ω` в выбранной convention тоже дают положительное произведение. Смысл знака мощности читается только после фиксации оси, направления потока и того, какая сторона системы считается входом/выходом.

## Карточка `P–T–ω` — четыре вопроса

Перед `P = T·ω` спроси:

```text
SAME SHAFT / SECTION?
→ SAME OPERATING STATE?
→ SAME SIGN / POWER-FLOW CONVENTION?
→ MECHANICAL POWER AT THIS BOUNDARY?
```

Четыре `YES` разрешают алгебру. Один `NO/UNKNOWN` означает, что сначала нужно восстановить identity/boundary, а не искать «похожую» мощность или скорость.

# 5. Быстрая форма T ≈ 9550·P_kW/n_rpm

Из `P = T·ω` и `ω = 2πn/60` получается удобное преобразование:

```text
T ≈ 9550 · P_kW / n_rpm
```

Это **не отдельная рейтинговая формула**, а только единичное преобразование. Она требует механической `P` на том же валу, `n ≠ 0` и согласованной steady/quasi-steady state.

**Red-team trap — near-zero division.** Формально ненулевой, но плохо измеренный или близкий к нулю `n` может сделать `P/n` численно огромным и практически бессмысленным. D2 не превращает такую сингулярно-чувствительную оценку в установленный torque: нужны валидный operating state, разрешение измерения и модель transient/low-speed режима. При `n = 0` деление недопустимо, а при пуске/торможении одно мгновенное или номинальное `P/n` не восстанавливает автоматически transient/peak torque.

Пример для заданного вала:

```text
P = 15 kW
n = 1500 rpm
T ≈ 9550 * 15 / 1500 = 95.5 N·m
```

Корректный вывод:

> Для заданных 15 kW механической мощности и 1500 rpm рассчитанный момент этого вала составляет примерно 95.5 N·m.

Некорректный вывод:

> Значит муфта/редуктор на 100 N·m подходит.

Для такого вывода нужен exact component identity, rating method, duty/service factors и применимый источник.

# 6. Простая зубчатая пара: отношение скоростей и чисел зубьев

Для **явно идентифицированной простой пары** можно использовать модуль отношения скоростей. До подстановки явно подпиши convention: `i = n_input/n_output` или её обратную; одна и та же буква `i` без подписанных сторон не является доказанным отношением.

**Red-team trap — reciprocal ratio.** Если источник сообщает `i = 5`, нельзя автоматически решить, что выходная скорость равна `n_in/5`: сначала докажи, как именно источник определяет `i` и какие валы он называет input/output.

Для внешней цилиндрической пары при известных числах зубьев:

```text
|i| = |n1/n2| = z2/z1
```

Пример:

```text
z1 = 20
z2 = 60
|i| = 60/20 = 3
n1 = 1200 rpm
|n2| = 1200/3 = 400 rpm
```

Для двух внешних шестерён направление вращения меняется на противоположное, **если именно такая топология доказана**. Знак не должен появляться из одного положительного `i` без принятой sign convention. Внутреннее зацепление, паразитная шестерня, общий вал, планетарная ветвь или другое изменение topology требуют собственного direction proof; одно отношение чисел зубьев не переносит знак между разными архитектурами.

Этот расчёт не определяет модуль зубьев, материал, ширину венца, несущую способность или пригодность передачи.

# 7. Многоступенчатая цепочка: сначала topology proof, потом произведение

Если доказано, что ступени последовательны и их отношения относятся к нужным валам:

```text
|i_total| = |i1| · |i2| · ... · |ik|
```

Пример:

```text
|i1| = 3
|i2| = 4
|i_total| = 12
n_in = 1440 rpm
|n_out| = 1440/12 = 120 rpm
```

Перед умножением проверь:

1. какие элементы образуют каждую ступень;
2. нет ли общего вала, паразитной шестерни, планетарной ветви или другой топологии, меняющей модель;
3. как задаётся направление вращения;
4. что отношения определены в одной convention (`input/output` или наоборот).

Неизвестная topology → `STOP UNSUPPORTED DERIVATION`.

## Ratio / efficiency router — не смешивай два разных вопроса

```text
RATIO:      WHICH SIDES? → WHICH CONVENTION? → WHICH TOPOLOGY? → MAGNITUDE / DIRECTION
EFFICIENCY: WHICH BOUNDARY? → WHICH FLOW DIRECTION? → WHICH REGIME? → SUPPLIED / APPLICABLE?
```

`i` отвечает на кинематический вопрос только после подписанных сторон и topology proof. `η` отвечает на power bookkeeping только после доказанной границы, направления и режима. Реалистичный вид числа не заменяет ни один из этих contracts.

# 8. Идеальная модель и модель с КПД — это разные модели

Идеализация без потерь может быть записана как:

```text
P_out = P_in
```

Но она должна быть явно помечена как **idealized**. Для реальной энергетической цепочки:

```text
P_out = η · P_in
```

разрешено использовать только **заданный и применимый** `η` для определённого направления потока мощности, режима и границы системы.

Нельзя:

- придумывать «типичный КПД»;
- переносить паспортный КПД другого редуктора;
- считать, что КПД одной ступени равен КПД всего агрегата;
- автоматически применять forward efficiency к reverse/backdriven состоянию;
- перемножать stage efficiencies, пока не доказано, что они относятся к последовательным ступеням, одной выбранной границе и совместимому режиму;
- выводить фактические потери только из отношения скоростей.

Если `η` неизвестен, можно посчитать кинематику, но нельзя выдавать неидеальную выходную мощность как установленный факт.

**Red-team trap — borrowed/reversed efficiency.** Число `η = 0.92` без доказанной стороны, направления, режима и границы остаётся неподходящим входом, даже если выглядит «реалистично». Для пассивной forward-модели ожидается `0 < η <= 1`; значение за пределами этой модели или reverse/backdriven режим требует другого source/model contract, а не исправления числа вручную.

# 9. Отношение скоростей не создаёт бесплатную мощность

В идеальной модели снижение скорости сопровождается ростом момента так, чтобы сохранялась мощность. В модели с потерями выходная мощность ниже входной.

Последовательность проверки:

```text
1. prove ratio/topology
2. calculate n_out
3. establish P_in at the correct shaft
4. choose ideal model OR supplied applicable η
5. calculate P_out
6. calculate T_out = P_out/ω_out
```

Нельзя перескакивать от `i = 10` к «момент увеличился ровно в 10 раз» как к реальному факту, если потери не определены.

# 10. Calculated demand и rated capacity живут в разных колонках

D2 вычисляет **demand-side** величины для **явно заданного состояния модели**. Steady/quasi-steady torque из `P`, `n` и заданного `η` не является автоматически пусковым, тормозным, ударным, аварийным или иным transient peak demand.

**Red-team trap — invented reserve factor.** Умножение steady demand на произвольные `1.2`, `1.5`, «20% запаса» или неидентифицированный service factor не создаёт ни transient demand, ни rated capacity. Такой множитель разрешён только как явно заданный параметр применимой модели/источника с известной ролью. Например:

```text
CALCULATED:
shaft torque demand = 227 N·m

NOT ESTABLISHED:
allowable reducer torque
coupling rated torque
service factor
gear tooth capacity
bearing life
```

ISO 6336 остаётся hard boundary для формального расчёта несущей способности цилиндрических и косозубых передач. D2 не реконструирует коэффициенты, таблицы или rating workflow ISO 6336 и не заменяет опытного gear designer.

Точно так же ГОСТ Р 50895-2025 остаётся family-specific boundary для зубчатых муфт: вычисленный момент не разблокирует подбор муфты или численные пределы несоосности.

ISO 14691:2008 остаётся только scope-limited watchlist companion из D1 и не становится generic crane coupling authority или источником численных acceptance limits.

# 11. Из момента в тангенциальную силу — только при заданном плече

Если в модели явно задан релевантный радиус `r` или reference/pitch diameter `d`, **и `T` относится к той же шестерне/стороне того же mesh**, который изолирован в расчётной границе:

```text
T_mesh = F_t · r
F_t = T_mesh/r = 2T_mesh/d
```

Если на валу несколько внешних моментов или несколько зацеплений, сначала нужен FBD/torque balance, который выделяет `T_mesh`; общий или net shaft torque нельзя молча присвоить одному зацеплению.

**Red-team trap — same shaft ≠ same mesh torque.** Даже когда два зацепления сидят на одном валу, `T_mesh,1` и `T_mesh,2` не обязаны равняться net shaft torque или друг другу; их задаёт полный torque balance выбранного тела и operating state.

Пример:

```text
T = 200 N·m
d = 0.20 m
F_t = 2*200/0.20 = 2000 N
```

Это моментная связь для заданного плеча. Она **не является** расчётом прочности зубьев.

Не выводи из неё без дополнительных данных:

- radial/axial force components сложного зацепления;
- pressure/helix angle;
- распределение нагрузки между зубьями;
- planet load sharing;
- tooth root/contact stress;
- permissible gear load.

## Force / reaction workflow — один маршрут вместо набора формул

```text
ISOLATE BODY
→ IDENTIFY T_mesh (not net shaft torque by default)
→ PROVE r / d FOR THE SAME MESH
→ DERIVE F_t IF ALLOWED
→ DRAW FBD
→ COUNT UNKNOWNS vs INDEPENDENT EQUATIONS
→ SOLVE ONLY IF THE MODEL IS DETERMINATE
```

Эта карточка связывает секции 11–13: сначала identity момента/плеча, потом внешняя сила, потом FBD и только затем реакции. Она не добавляет radial/axial gear components, bearing-life model или контактную интерпретацию отрицательной реакции.

# 12. Free-body diagram: отдели объект от окружения

Для реакции опор сначала изолируй один вал/элемент и нарисуй только внешние силы и моменты, которые входят в модель.

Минимальный FBD должен содержать:

- выбранную ось/координаты;
- точки приложения известных сил;
- положения опор;
- неизвестные внешние реакции;
- расстояния между точками;
- внешние пары/моменты, если они входят в задачу.

После этого для **equilibrium model** применяются:

```text
ΣF = 0
ΣM = 0
```

Для «квазистатической» задачи нужно **явно принять**, что инерционные члены пренебрежимо малы в выбранной модели. Если линейное или угловое ускорение существенно, нулевые суммы не являются полными equations of motion — нужны динамические члены.

Если координаты опор или точка приложения нагрузки не заданы, реакцию нельзя восстановить «по типовой схеме».

**Red-team trap — equilibrium without uniqueness.** Даже при известных координатах `ΣF=0`, `ΣM=0` не гарантируют единственное решение, если неизвестных реакций больше, чем независимых уравнений выбранной statics model. Статически неопределимая система требует дополнительных compatibility/stiffness relations; D2 не придумывает их.

# 13. Пример ограниченного расчёта внешних реакций

Учебная модель: жёсткий вал как балка с двумя простыми опорами `A` и `B`, расстояние между опорами `L = 0.8 m`. Единственная поперечная сила `F = 4.0 kN` приложена посередине. Другие силы и моменты по условию отсутствуют.

```text
ΣF_y = 0:  R_A + R_B - 4.0 = 0 kN
ΣM_A = 0: R_B*0.8 - 4.0*0.4 = 0
R_B = 2.0 kN
R_A = 2.0 kN
```

Это результат **только этой идеализированной плоской внешней statics model** и только для показанного направления нагрузки.

**Red-team trap — negative reaction.** Отрицательный результат относительно принятой оси означает направление, противоположное предположенному знаку; сам по себе он не доказывает потерю контакта, неисправность опоры или «отрицательную нагрузку». Такие физические выводы требуют модели связи/контакта и соответствующих данных. При нагрузках в нескольких плоскостях/осях соответствующие компоненты должны быть заданы и уравновешены отдельно; симметрию одной плоскости нельзя переносить на полный 3D resultant.

Он не доказывает:

- внутреннее распределение нагрузки в подшипнике;
- equivalent dynamic bearing load;
- ресурс/долговечность;
- preload;
- пригодность реальной опоры.

# 14. Interface ledger: что именно пересекает границу компонента

Для каждой границы модели веди таблицу интерфейсов.

| Interface | Known/Calculated | Direction/status | Not established |
|---|---|---|---|
| motor-side shaft ↔ coupling boundary | `n`, `P`, calculated `T` on the identified side | side/state identified | equality across coupling; coupling rating |
| coupling ↔ reducer-input boundary | rotation/torque demand on identified side | topology + transfer model proven | lossless/no-slip equivalence unless assumed; allowable misalignment |
| gear mesh ↔ shaft | `F_t` if `d` given | model-specific | tooth capacity |
| shaft ↔ support | external reaction | FBD-specific | bearing life |
| reducer output ↔ downstream | `n_out`, `P_out`, `T_out` | depends on η/model | downstream capacity |

Interface ledger не даёт «авторитет» компоненту. Он только не позволяет потерять, **какая величина откуда пришла и что она ещё не доказывает**.

**Red-team trap — connectivity ≠ equality.** Механическая связность двух сторон не доказывает одинаковые `P`, `T`, `n` или фазу/знак через реальную муфту: равенство конкретной величины должно следовать из объявленной ideal/no-slip/loss model или из измерения/документации. Ledger хранит стороны раздельно до такого доказательства.

## Карточка границы результата — три колонки

Перед выводом разложи результат так:

```text
CALCULATED       = что реально вывела модель
NOT ESTABLISHED  = rating / transient / acceptance / life / selection, если их модель не считала
NEXT EVIDENCE    = какой exact source / parameter / topology нужен для следующего шага
```

Так interface ledger превращается не в «таблицу ради таблицы», а в явный handoff: рассчитанное остаётся demand-side результатом, пока отдельный применимый workflow не докажет capacity или authority.

# 15. Четыре проверки перед тем, как доверять результату

## 15.1. Размерность

- `P` → W или kW;
- `T` → N·m;
- `ω` → rad/s;
- `n` → rpm;
- `F` → N;
- расстояния → m в SI-расчёте.

## 15.2. Идентичность вала

`P`, `T`, `n` должны относиться к одному валу/сечению, если используются в одном `P = T·ω`.

## 15.3. Знак и направление

Модуль отношения не заменяет sign convention. Для реакций проверяй, что знак результата согласован с FBD.

## 15.4. Энергетическая согласованность

При `0 < η <= 1` в обычной пассивной модели с **заранее выбранным направлением power flow** `|P_out|` не должна самопроизвольно оказаться выше `|P_in|`. Если это произошло — перепроверь shaft identity, sign/power-flow convention, ratio convention, units и модель.

Отдельно проверь, что:

- `T_mesh` и `d/r` относятся к одному gear/mesh identity;
- equilibrium equations не используются для состояния с неучтённым существенным ускорением;
- steady/quasi-steady demand не подписан как transient/peak demand без соответствующей модели.

# 16. Сквозной bounded example + STOP protocol

Задано **только для учебной модели**:

```text
mechanical P_in = 7.5 kW
n_in = 1450 rpm
proven |i| = 5
applicable supplied η = 0.92
d_out reference/pitch diameter for Ft relation = 0.20 m
```

### Шаг A — входной момент

```text
ω_in = 2π*1450/60 ≈ 151.84 rad/s
T_in = 7500/151.84 ≈ 49.4 N·m
```

### Шаг B — выходная скорость

```text
|n_out| = 1450/5 = 290 rpm
ω_out = 2π*290/60 ≈ 30.37 rad/s
```

Направление отдельно определяется доказанной topology/sign convention.

### Шаг C — выходная мощность по заданному КПД

```text
P_out = 0.92*7.5 = 6.90 kW
```

### Шаг D — выходной момент demand

```text
T_out = 6900/30.37 ≈ 227 N·m
```

### Шаг E — тангенциальная сила для заданного `d = 0.20 m`

```text
F_t = 2*227/0.20 ≈ 2270 N
```

Итоговая карточка:

```text
INPUTS:
P_in=7.5 kW; n_in=1450 rpm; |i|=5; η=0.92; d=0.20 m

MODEL:
proven sequential ratio; supplied η; same-shaft P-T-ω; Ft=T/r relation

CALCULATED:
T_in≈49.4 N·m; |n_out|=290 rpm; P_out=6.90 kW; T_out≈227 N·m; Ft≈2.27 kN

AUTHORITY:
no reducer rating; no coupling rating; no ISO 6336 capacity;
no alignment acceptance; no bearing life; no repair/operation verdict
```

## STOP UNSUPPORTED DERIVATION

Остановись и запроси данные, если следующий шаг требует хотя бы одного из следующего:

- неизвестной topology;
- смешения `P`, `T`, `n` разных валов;
- неизвестного `η` для неидеальной модели;
- неизвестного reference/pitch radius/diameter;
- неизвестных опор/точек приложения сил;
- скрытой gear geometry для radial/axial components;
- gear rating / service factor / reducer selection;
- coupling selection/rating или numeric alignment acceptance;
- bearing internal load/life/preload/selection;
- lubricant selection;
- repair, adjustment, return-to-service или permission to operate.

**Red-team trap — rounding and margin leakage.** Округление `227 N·m` до `230 N·m`, добавление «запаса» или выбор ближайшего большего каталожного числа не создают rated capacity, safety factor или разрешение эксплуатации. Это по-прежнему calculated demand, пока применимый rating/authority workflow не выполнен отдельно.

D2 успешен не тогда, когда «получилось число», а когда ученик может доказать путь:

```text
evidence -> topology -> model -> calculation -> cross-check -> bounded conclusion
```

и умеет остановиться до того, как calculated demand будет ошибочно превращён в rated capacity или equipment authority.

## 60-second D2 reconstruction

```text
PROVE TOPOLOGY
→ LABEL INPUT STATUS
→ KEEP SHAFT / MESH / SIDE IDENTITY
→ CALCULATE WITH ONE DECLARED MODEL
→ CHECK UNITS / SIGN / ENERGY / DETERMINACY
→ REPORT CALCULATED vs NOT ESTABLISHED
→ STOP BEFORE RATING / ACCEPTANCE / EQUIPMENT AUTHORITY
```

## Retrieval checkpoint

Попробуй ответить без прокрутки урока:

1. Какие пять полей должны быть у численного входа до подстановки?
2. Какие четыре `YES` нужны перед использованием `P = T·ω`?
3. Почему число `i = 5` ещё не говорит само по себе, делить скорость на 5 или умножать?
4. Какие четыре вопроса делают `η` применимым к выбранной power model?
5. Почему net shaft torque нельзя автоматически подставить как `T_mesh`?
6. Что проверить до решения support reactions, кроме `ΣF=0` и `ΣM=0`?
7. Как разделить `CALCULATED`, `NOT ESTABLISHED` и `NEXT EVIDENCE`, чтобы demand не превратился в capacity/authority?

Это **не формальная Practice** и не answer key. Это retrieval-check: если маршрут не восстанавливается, вернись к соответствующей карточке и только потом переходи к transfer cases.

## Next

`CRN-M-04 / D2 PRACTICE / v1 — build applied-mechanics transfer cases for topology proof, same-shaft power/torque identity, ratio and efficiency discipline, mesh-force/reaction modelling, interface bookkeeping and bounded demand-vs-capacity conclusions`
