# CRN-M-04 — Редукторы и муфты
# D2 Practice v1
## Applied-mechanics transfer: topology, identity, ratio/η, mesh force, reactions, interfaces and bounded demand

---

# Зачем эта практика

D2 Practice проверяет, умеет ли ученик **переносить** reviewed applied-mechanics lesson на новые приводы, а не просто узнавать знакомую формулу.

Для каждого кейса рабочий маршрут один и тот же:

```text
BOUNDARY / TOPOLOGY
→ INPUT STATUS
→ SAME OBJECT / SIDE / STATE
→ MODEL + EQUATION
→ CROSS-CHECK
→ CALCULATED / NOT ESTABLISHED / NEXT EVIDENCE
```

Часть кейсов намеренно содержит достаточно данных для bounded numerical result. Часть содержит реалистичные числа, но **не имеет права быть рассчитана до конца**, пока не доказана topology, shaft/mesh identity, direction, efficiency applicability или determinacy.

Practice намеренно **не содержит worked answer key** и не задаёт единственный канонический reasoning path. Следующий слой `PRACTICE REASONING` должен показать несколько допустимых маршрутов проверки и STOP-решений, а не превратить кейсы в таблицу ответов.

Критическая граница D2 сохраняется во всех A–J:

```text
CALCULATED DEMAND
≠
RATED / ALLOWABLE CAPACITY
≠
PERMITTED OPERATION
```

Если условие просит выбрать редуктор/муфту, придумать service factor, восстановить transient peak, назначить допустимую несоосность, оценить ресурс подшипника или решить «можно ли работать» — это не приглашение додумать число. Это проверка authority lock.

---

# Общий формат ответа — D2 calculation packet

Для каждого кейса дай компактный пакет.

## 1. Boundary / topology

Что именно изолировано? Какие валы, ступени, mesh и interfaces входят в модель? Что остаётся внешним?

## 2. Input-status ledger

Для каждого числа:

```text
OBJECT / SIDE
STATE
VALUE + UNIT
STATUS = documented / observed / assumed / calculated / rated / permitted
SOURCE / BASIS
```

## 3. Identity gate

Перед формулой укажи, что доказано:

```text
SAME SHAFT / SECTION?
SAME OPERATING STATE?
SAME SIGN / POWER-FLOW CONVENTION?
SAME GEAR / MESH FOR T AND d/r?
```

## 4. Model / equations

Назови **одну объявленную модель**: идеальная или с supplied η; equilibrium или dynamic; конкретная ratio convention; конкретный FBD.

## 5. Calculation / STOP

Вычисляй только то, что разрешено доказанной моделью. При недостатке данных напиши:

```text
STOP UNSUPPORTED DERIVATION
MISSING: ...
```

## 6. Cross-check

Минимум один релевантный check:

```text
UNITS / SIGN / ENERGY / RATIO CONVENTION / DETERMINACY / IDENTITY
```

## 7. Result handoff

```text
CALCULATED:
...

NOT ESTABLISHED:
...

NEXT EVIDENCE:
...
```

Ни один D2 packet не заканчивается автоматическим selection/acceptance/operation verdict.

---

# Карманные D2 guards

```text
P, T, n FROM DIFFERENT SHAFTS ≠ ONE P=Tω STATE
NUMBER i WITHOUT CONVENTION ≠ PROVEN SPEED TRANSFORMATION
RATIO ≠ EFFICIENCY
FORWARD η ≠ REVERSE / BACKDRIVEN η
STEADY P/n ≠ TRANSIENT / START / BRAKE PEAK TORQUE
NET SHAFT TORQUE ≠ SINGLE-MESH TORQUE BY DEFAULT
T_mesh + WRONG d/r ≠ VALID F_t
ΣF=0 AND ΣM=0 ≠ UNIQUE REACTIONS IF MODEL IS INDETERMINATE
NEGATIVE REACTION SIGN ≠ FAULT / LOSS-OF-CONTACT VERDICT
CONNECTIVITY ACROSS COUPLING ≠ AUTOMATIC P/T/n EQUALITY
CALCULATED DEMAND ≠ RATED CAPACITY ≠ PERMITTED OPERATION
ROUNDING / INVENTED RESERVE FACTOR ≠ SAFETY OR RATING METHOD
```

---

# Кейс A — Красивые числа с разных валов
## Same-shaft identity before P–T–ω

Из журнала и табличек собраны данные:

```text
motor electrical input = 18.5 kW
motor mechanical shaft power = 16.8 kW  [documented at nominal state]
motor shaft speed = 1470 rpm             [documented at nominal state]
reducer output speed = 294 rpm            [observed in another test]
```

Коллега предлагает взять `18.5 kW` и `294 rpm`, посчитать «выходной момент», а затем сравнить его с муфтой.

### Задача

1. Построй input-status ledger для четырёх величин.
2. Какие пары `P` и `n` проходят same-shaft/same-state gate, а какие нет?
3. Выполни **только разрешённый** расчёт момента, если достаточно данных.
4. Почему electrical input не становится mechanical shaft power без отдельной conversion/loss model?
5. Почему наблюдение `294 rpm` из другого состояния нельзя молча смешать с nominal mechanical power?
6. Заполни `CALCULATED / NOT ESTABLISHED / NEXT EVIDENCE`.

### Ловушка

```text
UNITS MATCH
≠
SHAFT / STATE IDENTITY PROVEN
```

---

# Кейс B — `i = 4.5`: делить или умножать?
## Ratio convention + topology proof

В старом листе рядом с обозначением редуктора стоит `i = 4.5`, но definition отсутствует. На текущей сборке визуально подтверждена одна внешняя зубчатая пара с `z_driver = 24`, `z_driven = 72`; есть ещё закрытая ступень, про которую данных нет. Входной вал вращается `1350 rpm`.

### Задача

1. Что можно вычислить для **явно подтверждённой пары** по числам зубьев?
2. Что нельзя объявлять total reducer ratio из-за закрытой ступени?
3. Как проверить, соответствует ли старое `i = 4.5` convention `n_in/n_out` или обратной?
4. Дай bounded speed result только для доказанного участка topology.
5. Отдельно опиши direction claim: что даёт одна доказанная внешняя пара и что не даёт закрытая ступень?
6. Сформулируй STOP для полного `n_out`, если topology остаётся неполной.

### Ловушка

```text
REALISTIC RATIO NUMBER
≠
DEFINED CONVENTION + CURRENT TOPOLOGY
```

---

# Кейс C — Две ступени, КПД есть только вперёд
## Sequential ratio + efficiency-direction discipline

Для учебной модели документировано:

```text
n_in = 1440 rpm
P_in(mechanical) = 11.0 kW
|i1| = 3.0
|i2| = 4.0
η1_forward = 0.96
η2_forward = 0.94
```

Схема подтверждает последовательные ступени в forward power flow. Затем коллега спрашивает: «А при backdriving просто используй те же η в обратную сторону».

### Задача

1. Для forward state рассчитай допустимые D2 величины: total ratio, output speed, output mechanical power и output torque demand.
2. Покажи energy cross-check для выбранного направления power flow.
3. Какие identity/topology assumptions сделали произведение `i1*i2` допустимым?
4. Почему `η1_forward` и `η2_forward` нельзя автоматически перевернуть для reverse/backdriven state?
5. Какой результат forward расчёта остаётся demand-side, а не rating?
6. Для reverse вопроса сформулируй bounded STOP / next evidence.

### Ловушка

```text
η FOR ONE DIRECTION / REGIME
≠
UNIVERSAL BIDIRECTIONAL LOSS MODEL
```

---

# Кейс D — 12 rpm во время торможения
## Near-zero and transient-demand trap

Во время замедления системы регистратор на одном временном кадре показывает:

```text
shaft speed = 12 rpm
reported mechanical power = 4.0 kW
```

Номинальная скорость этого же вала — `980 rpm`. Контекст вычисления reported power, фильтрация сигнала, angular acceleration и torque history не задокументированы.

Коллега получает огромное значение из `T≈9550P/n` и называет его «пиковым тормозным моментом».

### Задача

1. Проверь формальную размерностную возможность `P/n`, но отдельно оцени model validity.
2. Почему near-zero speed делает результат чувствительным и не доказывает transient peak torque?
3. Какие дополнительные данные/модель нужны для braking/transient claim?
4. Можно ли использовать nominal `980 rpm` вместо measured `12 rpm`, чтобы «получить нормальное число»?
5. Что D2 вправе записать в `CALCULATED`, а что должно остаться `NOT ESTABLISHED`?
6. Сформулируй STOP без самодельного reserve/service factor.

### Ловушка

```text
A LARGE NUMBER FROM P/n
≠
PROVEN TRANSIENT TORQUE HISTORY
```

---

# Кейс E — Один вал, два зацепления
## Net shaft torque versus single-mesh torque

На промежуточном валу находятся две шестерни `G1` и `G2`. Для выбранного steady model известны:

```text
external/input torque at left boundary = +360 N·m
external/output torque at right boundary = -120 N·m
pitch diameter G1 = 0.18 m
pitch diameter G2 = 0.30 m
```

Направления mesh torques пока неизвестны; никаких других внешних моментов в модели нет.

Коллега предлагает подставить `360 N·m` и оба диаметра в `F_t=2T/d`, получив две силы.

### Задача

1. Изолируй вал и задай sign convention для torque balance.
2. Какие torque terms должны появиться в FBD до вычисления `F_t`?
3. Можно ли автоматически считать `T_mesh,G1 = 360 N·m` и `T_mesh,G2 = 360 N·m`?
4. Если torque balance позволяет определить один/оба mesh torques, только после этого вычисли соответствующие tangential forces.
5. Почему `d_G1` нельзя использовать с `T_mesh,G2` и наоборот?
6. Какие gear-capacity выводы остаются запрещёнными даже после вычисления `F_t`?

### Ловушка

```text
SAME SHAFT
≠
SAME TORQUE AT EVERY MESH
```

---

# Кейс F — Вал на двух опорах: здесь реакции считать можно
## Determinate external statics

Учебная плоская модель задана явно:

```text
support A at x = 0.00 m
support B at x = 0.90 m
single downward external load F = 5.4 kN at x = 0.30 m
other forces/moments in this plane = none
acceleration terms = neglected by assumption
```

### Задача

1. Нарисуй/опиши FBD и выбранный положительный знак.
2. Запиши `ΣF_y=0` и `ΣM=0`.
3. Рассчитай внешние реакции `R_A` и `R_B`.
4. Выполни force/moment cross-check.
5. Объясни, почему эти external support reactions не являются автоматически bearing internal load, equivalent dynamic load или bearing-life input.
6. Заполни result handoff.

### Ловушка

```text
EXTERNAL SUPPORT REACTION
≠
BEARING LIFE / SELECTION RESULT
```

---

# Кейс G — Три опоры и одна сила
## Determinacy gate before algebra

Вал моделируется как жёсткое тело в одной плоскости. На нём три неизвестные вертикальные опорные реакции `R_A`, `R_B`, `R_C` и одна известная внешняя сила. Координаты всех точек заданы, но жёсткости опор/вала, compatibility relations и контактные условия не заданы.

Коллега пишет три неизвестных и говорит: «Ну у нас же есть `ΣF=0` и `ΣM=0`, как-нибудь решим».

### Задача

1. Посчитай число неизвестных reaction components и независимых equilibrium equations для этой плоской модели.
2. Является ли система statically determinate?
3. Какие дополнительные relation/data могли бы сделать задачу разрешимой в более богатой модели?
4. Почему нельзя просто принять `R_A=R_B=R_C` из симметрии, если symmetry/load/support model этого не доказывает?
5. Дай `STOP UNSUPPORTED DERIVATION` и конкретный evidence request.
6. Объясни, почему STOP не является equipment-operation command.

### Ловушка

```text
KNOWN COORDINATES
+
EQUILIBRIUM EQUATIONS
≠
UNIQUE REACTIONS FOR AN INDETERMINATE MODEL
```

---

# Кейс H — Через муфту «всё одинаково»
## Interface bookkeeping and no-slip/loss assumptions

На motor-side муфты документировано:

```text
n_A = 1480 rpm
P_A = 9.2 kW mechanical
```

На reducer-side в другом измерении наблюдается `n_B = 1472 rpm`. Точный тип муфты, torsional state, slip behaviour, потери и синхронность измерений не подтверждены.

Коллега заполняет interface ledger так:

```text
n_A = n_B
P_A = P_B
T_A = T_B
```

потому что «муфта соединяет валы».

### Задача

1. Раздели стороны `A` и `B` как отдельные interface identities.
2. Что именно доказывает connectivity, а что требует ideal/no-slip/loss model или синхронных измерений?
3. Можно ли вычислить `T_A` из `P_A` и `n_A`, если same-state documented?
4. Можно ли тем же числом автоматически заполнить `T_B`?
5. Как оформить `CALCULATED / NOT ESTABLISHED / NEXT EVIDENCE` для стороны B?
6. Почему этот кейс не разрешает coupling rating или alignment acceptance?

### Ловушка

```text
CONNECTED SHAFTS
≠
ALL STATE VARIABLES IDENTICAL WITHOUT A TRANSFER MODEL
```

---

# Кейс I — «230 N·m < 300 N·m, значит подходит»
## Demand-to-capacity leakage

Для идентифицированного output shaft в steady model рассчитано:

```text
calculated torque demand = 230 N·m
```

В каталожной таблице рядом с похожим обозначением муфты найдено `300 N·m`. Не подтверждены exact designation установленного компонента, duty category, speed limits, transient loads, service factor/rating method, misalignment state и применимость строки каталога к текущей сборке.

Коллега делает вывод: «Запас 70 N·m — муфта подходит и можно работать».

### Задача

1. Разложи имеющиеся `230 N·m` и `300 N·m` по статусам `calculated` / `rated?` / `applicability unknown`.
2. Почему арифметическая разница `70 N·m` не является safety margin?
3. Какие exact identity/rating inputs нужны до capacity comparison?
4. Почему нельзя придумать `1.2` или `1.5` как service factor «на всякий случай»?
5. Что может остаться bounded D2 conclusion?
6. Какие вопросы должны быть переданы в rating/selection/competent authority workflow?

### Ловушка

```text
DEMAND BELOW A CATALOG NUMBER
≠
APPLICABLE CAPACITY PROVEN
≠
PERMISSION TO OPERATE
```

---

# Кейс J — Integrated D2 capstone
## From topology proof to reactions without crossing rating authority

Для **учебной** модели задана подтверждённая последовательная цепочка:

```text
input shaft A
→ stage 1
→ intermediate shaft B
→ stage 2
→ output shaft C
→ output gear G
```

В forward steady/quasi-steady state документировано:

```text
P_A(mechanical) = 8.4 kW
n_A = 1470 rpm
|i1| = 3.5
|i2| = 2.0
η1_forward = 0.97
η2_forward = 0.95
pitch diameter of output gear G = 0.24 m
```

Для отдельной плоской FBD модели output shaft C:

```text
support L at x = 0.00 m
support R at x = 0.70 m
output gear G force acts at x = 0.20 m
only the derived tangential force acts in this plane
acceleration terms are neglected by explicit assumption
```

При этом **не заданы** reducer gear rating, coupling rating, bearing internal geometry/life data, transient/start/brake factors, alignment limits и operation authority.

### Задача

Собери полный D2 calculation packet:

1. boundary/topology + input-status ledger;
2. total ratio и `n_C` с явной convention;
3. `P_C` через supplied forward efficiencies;
4. `T_A` и `T_C` через same-shaft `P–T–ω`;
5. energy/units sanity check;
6. `F_t` для output gear G только после подтверждения same-mesh `T_C`/`d_G` relation в выбранной модели;
7. external reactions `R_L`, `R_R` из заданной determinate FBD;
8. interface ledger минимум для A → reducer → C → gear → supports;
9. `CALCULATED / NOT ESTABLISHED / NEXT EVIDENCE`;
10. STOP перед gear/coupling rating, bearing life, transient demand и operation verdict.

### Обязательная самопроверка capstone

```text
TOPOLOGY PROVEN?
RATIO CONVENTION DECLARED?
η DIRECTION / REGIME APPLICABLE?
P/T/n SAME SHAFT + STATE?
T_mesh AND d SAME GEAR/MESH?
FBD DETERMINATE?
ENERGY / UNITS CONSISTENT?
DEMAND KEPT SEPARATE FROM CAPACITY / AUTHORITY?
```

### Ловушка

```text
A COMPLETE AND CORRECT CALCULATION CHAIN
≠
A COMPLETE DESIGN / RATING / OPERATION DECISION
```

---

# What success looks like

Practice A–J успешна, если ученик умеет:

1. доказать topology и ratio convention до кинематики;
2. держать `P`, `T`, `n` на одном shaft/section/state;
3. применять только supplied/applicable efficiency с направлением и regime;
4. не превращать near-zero `P/n` в transient peak claim;
5. выделять `T_mesh` через torque balance до `F_t`;
6. проверять same gear/mesh identity для `T` и `d/r`;
7. строить explicit FBD и проверять determinacy до reaction solve;
8. трактовать знак реакции как sign-convention result, а не diagnosis;
9. вести interface ledger по сторонам, не превращая connectivity в equality;
10. отделять calculated demand от rated capacity и equipment authority;
11. делать unit/sign/energy/model cross-check;
12. останавливать unsupported derivation с конкретным next evidence.

## Answer-key separation

В Practice **нет**:

- worked solutions;
- численного answer key;
- preferred single reasoning path;
- scoring rubric;
- reducer/coupling selection rule;
- service-factor table;
- operation permission/prohibition.

Следующий слой должен разобрать возможные reasoning paths, включая корректные STOP-ветви, не превращая их в единственный шаблон ответа.

## Next

`CRN-M-04 / D2 PRACTICE REASONING / v1 — build non-exclusive applied-mechanics reasoning paths, discriminating identity/topology/model checks, bounded calculations and STOP decisions for Practice A–J without turning Practice into a single answer key`
