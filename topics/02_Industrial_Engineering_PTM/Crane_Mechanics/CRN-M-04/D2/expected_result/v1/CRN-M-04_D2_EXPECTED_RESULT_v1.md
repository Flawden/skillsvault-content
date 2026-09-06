# CRN-M-04 — Редукторы и муфты
# D2 Expected Result v1
## Наблюдаемый профиль applied-mechanics transfer-компетентности

---

# Назначение

Этот слой описывает не «знание формул», а **наблюдаемое поведение learner на новом кейсе привода**, где часть исходных данных достаточна для bounded calculation, а часть намеренно требует `STOP UNSUPPORTED DERIVATION`.

D2 считается сильным только тогда, когда learner умеет сохранить цепочку доказательств:

```text
BOUNDARY / TOPOLOGY
→ INPUT STATUS
→ OBJECT / SIDE / STATE / DOMAIN IDENTITY
→ MODEL + CONVENTION
→ EQUATION
→ CROSS-CHECK
→ CALCULATED / NOT ESTABLISHED
→ DISCRIMINATING NEXT EVIDENCE
→ BOUNDED STOP / HANDOFF WHEN MODEL IS NOT CLOSED
```

Правильная арифметика сама по себе не является достаточным D2 outcome.

Ключевые границы:

```text
CALCULATED DEMAND ≠ RATED CAPACITY ≠ PERMITTED OPERATION
SKILLSVAULT STOP ≠ EQUIPMENT OPERATION COMMAND
```

---

# ER-D2-01 — Закрывает boundary / topology до применения уравнений

## Наблюдаемое поведение

Learner сначала определяет:
- какой shaft / stage / gear mesh / coupling side / support model изолирован;
- какие interfaces подтверждены;
- какие элементы topology скрыты или не доказаны;
- где модель заканчивается и начинается другой component / authority domain.

Он не использует ratio, η, torque balance или statics для topology, которой ещё нет в evidence.

## Evidence output

```text
BOUNDARY / TOPOLOGY MAP
IN MODEL: ...
CONFIRMED CONNECTIONS: ...
UNKNOWN / CLOSED SEGMENTS: ...
EXTERNAL BOUNDARIES: ...
```

## Критический guard

```text
EQUATION READY ≠ TOPOLOGY PROVEN
```

---

# ER-D2-02 — Ведёт input-status и identity ledger

## Наблюдаемое поведение

Для каждого числового входа learner фиксирует:
- object / shaft / section / side;
- operating state / timestamp / regime;
- physical domain (`electrical`, `mechanical`, `kinematic`, `catalog/rated`);
- value + unit;
- status (`documented`, `observed`, `assumed`, `calculated`, `rated`, `permitted`).

Он не смешивает данные только потому, что единицы совместимы.

## Evidence output

```text
INPUT / IDENTITY LEDGER
OBJECT / SIDE:
STATE:
DOMAIN:
VALUE + UNIT:
STATUS:
SOURCE / BASIS:
```

## Критический guard

```text
COMPATIBLE UNITS ≠ SAME OBJECT / SIDE / STATE / DOMAIN
```

---

# ER-D2-03 — Применяет P–T–ω только на доказанном shaft/state

## Наблюдаемое поведение

Learner использует `P=Tω` или `T≈9550·P_kW/n_rpm` только после доказательства:
- mechanical power;
- same shaft / section;
- same operating state;
- согласованной sign / power-flow convention;
- ненулевой/приемлемой для выбранной модели speed.

Electrical input не повышается до shaft power без отдельной conversion/loss model.

## Evidence output

```text
P–T–ω IDENTITY CHECK
P: ...
n / ω: ...
SAME SHAFT: YES / NO
SAME STATE: YES / NO
MECHANICAL DOMAIN: YES / NO
RESULT: CALCULATE / STOP
```

## Критический guard

```text
P/T/n IDENTITY BEFORE P=Tω
```

---

# ER-D2-04 — Использует ratio только с topology + convention + direction

## Наблюдаемое поведение

Learner:
- объявляет convention (`i=n_in/n_out`, magnitude-only и т.п.);
- доказывает текущую topology;
- отличает ratio одной пары от total ratio;
- перемножает stage ratios только при доказанной последовательной связи;
- отдельно ведёт direction/sign claim.

Старое число `i` без определения не становится текущим total ratio.

## Evidence output

```text
RATIO CONTRACT
TOPOLOGY: ...
CONVENTION: ...
STAGES: ...
DIRECTION / SIGN BASIS: ...
PROVEN TRANSFORMATION: ...
```

## Критический guard

```text
RATIO CONVENTION + TOPOLOGY BEFORE SPEED TRANSFORMATION
```

---

# ER-D2-05 — Ограничивает η направлением, режимом и component path

## Наблюдаемое поведение

Learner применяет supplied efficiency только к тому:
- direction of power flow;
- regime;
- stage/component path;
- boundary pair,

для которого η задана или доказана.

Он не делает forward η универсальной reverse/backdriven моделью и выполняет energy cross-check.

## Evidence output

```text
EFFICIENCY APPLICABILITY MAP
η:
DIRECTION:
REGIME:
PATH / STAGE:
APPLICABLE: YES / NO / NOT ESTABLISHED
ENERGY CHECK: ...
```

## Критический guard

```text
FORWARD η ≠ REVERSE / BACKDRIVEN η
```

---

# ER-D2-06 — Разделяет steady demand и transient / near-zero claim

## Наблюдаемое поведение

Learner понимает, что формально вычислимое `P/n` около нулевой скорости не доказывает start/brake/transient peak torque.

Он не подменяет measured near-zero speed номинальной скоростью «для красивого числа» и не изобретает reserve/service factor вместо dynamic evidence.

## Evidence output

```text
STATE / TRANSIENT STATUS
STATE TYPE: steady / transient / unknown
SPEED VALIDITY: ...
P BASIS: ...
ANGULAR ACCELERATION / HISTORY: ...
STEADY DEMAND: ...
TRANSIENT PEAK: NOT ESTABLISHED / ...
```

## Критический guard

```text
STEADY / NEAR-ZERO P/n ≠ TRANSIENT PEAK TORQUE
```

---

# ER-D2-07 — Доказывает mesh torque через torque-balance identity

## Наблюдаемое поведение

Learner отличает:
- external / boundary shaft torque;
- net shaft torque;
- individual mesh torque.

На shaft с несколькими meshes он сначала строит torque balance и проверяет число независимых relations. Один boundary torque не объявляется torque каждого mesh.

## Evidence output

```text
SHAFT TORQUE-BALANCE MAP
BOUNDARY TORQUES: ...
MESH TORQUES: ...
UNKNOWN COUNT: ...
INDEPENDENT RELATIONS: ...
IDENTIFIED T_mesh: ...
```

## Критический guard

```text
NET SHAFT TORQUE ≠ SINGLE-MESH TORQUE
```

---

# ER-D2-08 — Использует геометрию того же gear/mesh для F_t

## Наблюдаемое поведение

Перед `F_t=T/r=2T/d` learner доказывает, что:
- `T_mesh` относится к конкретному mesh;
- `d` или `r` принадлежат тому же gear;
- геометрия является текущей и применимой к выбранной модели.

Полученный `F_t` остаётся demand-side quantity и не становится gear rating.

## Evidence output

```text
MESH FORCE IDENTITY
MESH:
T_mesh:
GEAR:
d / r:
SAME-MESH IDENTITY: PASS / FAIL
F_t: ...
RATING CLAIM: NOT ESTABLISHED
```

## Критический guard

```text
T_mesh + SAME-GEAR d/r BEFORE F_t
```

---

# ER-D2-09 — Проверяет determinacy до решения реакций

## Наблюдаемое поведение

Learner:
- строит FBD;
- объявляет neglected inertia / equilibrium assumption;
- считает unknown reaction components;
- считает независимые equilibrium equations;
- решает реакции только для statically determinate model либо явно добавляет valid compatibility/stiffness relations.

External support reaction не становится автоматически bearing internal load / life result.

## Evidence output

```text
FBD / DETERMINACY PACKET
UNKNOWN REACTIONS: ...
INDEPENDENT EQUATIONS: ...
INERTIA ASSUMPTION: ...
DETERMINATE: YES / NO
REACTIONS: ...
DOWNSTREAM BEARING CLAIM: NOT ESTABLISHED
```

## Критический guard

```text
EQUILIBRIUM ≠ UNIQUE REACTIONS WITHOUT DETERMINACY
```

---

# ER-D2-10 — Ведёт interface bookkeeping без connectivity→equality

## Наблюдаемое поведение

Для coupling/interface learner держит side A и side B раздельно и не переносит численно `P/T/n` через соединение без:
- transfer model;
- same-state evidence;
- applicable loss/slip/no-slip assumptions.

Разница несинхронных measurements не превращается автоматически в slip/fault diagnosis.

## Evidence output

```text
INTERFACE LEDGER
SIDE A STATE: ...
SIDE B STATE: ...
TRANSFER MODEL: ...
SYNCHRONOUS EVIDENCE: ...
NUMERICAL EQUALITY CLAIM: ESTABLISHED / NOT ESTABLISHED
```

## Критический guard

```text
COUPLING CONNECTIVITY ≠ NUMERICAL P/T/n EQUALITY
```

---

# ER-D2-11 — Разделяет demand, capacity/rating и authority

## Наблюдаемое поведение

Learner может вычислить bounded demand, но перед сравнением с catalog/rated number проверяет:
- exact component identity;
- definition/rating basis;
- source revision/applicability;
- duty/transient/speed/alignment/environmental inputs;
- competent selection/operation workflow.

Арифметическая разница и invented factor не становятся safety margin.

## Evidence output

```text
DEMAND / CAPACITY / AUTHORITY REGISTER
CALCULATED DEMAND: ...
CANDIDATE CAPACITY NUMBER: ...
IDENTITY / APPLICABILITY: ...
RATING METHOD: ...
SELECTION / ACCEPTANCE: NOT ESTABLISHED / ...
OPERATION AUTHORITY: NOT ESTABLISHED / ...
```

## Критический guard

```text
CALCULATED DEMAND ≠ RATED CAPACITY ≠ PERMITTED OPERATION
```

---

# ER-D2-12 — Выполняет cross-check и умеет завершить модель правильным STOP

## Наблюдаемое поведение

Learner выполняет минимум один релевантный cross-check:
- units;
- sign;
- energy;
- ratio convention;
- identity;
- determinacy;
- model closure.

Если downstream вывод не закрыт, learner:
1. сохраняет уже доказанные upstream results;
2. называет конкретно заблокированный claim;
3. указывает missing evidence;
4. формулирует **discriminating** next evidence, которое реально меняет model status.

## Evidence output

```text
MODEL-CLOSURE / STOP RECORD
CROSS-CHECK: ...
CALCULATED: ...
NOT ESTABLISHED: ...
BLOCKED CLAIM: ...
NEXT DISCRIMINATING EVIDENCE: ...
STOP UNSUPPORTED DERIVATION: YES / NO
```

Правильный `STOP UNSUPPORTED DERIVATION` является **успешным D2 outcome**, если он точен и сохраняет уже доказанные результаты.

---

# ER-D2-13 — Переносит D2 reasoning на unseen U1 + evidence challenge C1

## Наблюдаемое поведение

Known Practice A–J, включая integrated Case J, **не являются достаточным transfer proof**.

Verification должен дать:
- минимум один unseen drive case `U1`;
- отдельный evidence-status challenge `C1`.

`U1` должен менять несколько переменных одновременно:
- topology presentation;
- shaft/interface identity;
- ratio convention или direction;
- state / transient status;
- достаточность FBD / determinacy;
- capacity/authority temptation.

`C1` должен предоставить новое evidence, которое закрывает часть ранее неизвестных полей, но не обязано закрывать rating/acceptance/operation authority.

Learner должен **обновить модель**, а не защищать предыдущий вывод.

## Evidence output

```text
TRANSFER / UPDATE PACKET
INITIAL MODEL STATUS: ...
NEW EVIDENCE: ...
WHAT CHANGED: ...
WHAT REMAINS UNKNOWN: ...
RECALCULATED / PRESERVED RESULTS: ...
BOUNDED FINAL HANDOFF: ...
```

---

# Transfer requirement

Verification считается валидным только если использует:
- known case evidence;
- unseen `U1`;
- evidence challenge `C1`;
- полный evidence package;
- возможность правильного bounded STOP.

Успех на U1/C1 не требует обязательного численного ответа. `MODEL NOT CLOSED / STOP` может быть сильным результатом.

---

# Candidate blocking-failure handoff в Verification Rubric

Practice Reasoning передал 12 failure families. Expected Result сохраняет их provenance и **не объявляет автоматически окончательными BF**. Rubric должен решить non-compensable / severity policy и downstream-use trigger.

### BF-CAND-D2-RF01 — mixed shaft/state/domain
`P/T/n` смешаны между разными shaft/section/state или electrical/mechanical domains.

### BF-CAND-D2-RF02 — ratio without topology/convention
Ratio применяется без доказанной topology и явной convention.

### BF-CAND-D2-RF03 — efficiency applicability leak
η переносится на другой direction/regime/path без evidence.

### BF-CAND-D2-RF04 — steady/near-zero promoted to transient peak
`P/n` повышается до start/brake/transient peak torque без valid transient model.

### BF-CAND-D2-RF05 — net shaft torque promoted to mesh torque
Boundary/net shaft torque объявляется torque конкретного mesh без identity.

### BF-CAND-D2-RF06 — cross-mesh geometry
`T_mesh` сочетается с `d/r` другого gear/mesh или неидентифицированной geometry.

### BF-CAND-D2-RF07 — reactions solved without determinacy
Equilibrium equations используются для unique reactions без determinacy/model closure.

### BF-CAND-D2-RF08 — reaction sign promoted to diagnosis/acceptance
Reaction sign/external support reaction повышается до fault/contact-loss/bearing-life/acceptance claim.

### BF-CAND-D2-RF09 — coupling connectivity promoted to numerical equality
Physical connectivity повышается до equality `P/T/n` без transfer model/same-state evidence.

### BF-CAND-D2-RF10 — demand compared with unverified capacity
Calculated demand сравнивается с неидентифицированным или неприменимым catalog/rated number как capacity proof.

### BF-CAND-D2-RF11 — invented safety/rating method
Invented service/reserve factor, rounding или arithmetic difference выдаётся за safety/rating method.

### BF-CAND-D2-RF12 — calculation/STOP promoted to selection/operation authority
Bounded D2 result или SkillsVault STOP превращается в component selection, acceptance или equipment-operation verdict.

---

# Severity-review handoff

### SR-CAND-D2-01 — evidence request exists but is not discriminating

Learner признаёт неопределённость и просит «ещё данные», но не показывает, **какой конкретный evidence закроет какой model fork**.

Это не автоматически non-compensable failure; Rubric должен определить severity по downstream consequence и способности learner self-correct.

---

# Claim / authority boundary

Expected Result **не открывает**:
- gear load-capacity / ISO 6336 rating calculations;
- reducer selection / service factor;
- coupling selection/rating;
- numeric alignment acceptance;
- bearing internal load/life/preload selection;
- lubricant selection/substitution;
- condition/root-cause/repair;
- return-to-service / permitted operation.

D2 Expected Result оценивает bounded applied mechanics, evidence discipline и model closure — не проектирование и не разрешение эксплуатации.
