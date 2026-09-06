# CRN-M-04 — Редукторы и муфты
# D2 Verification Rubric v1
## Формальная проверка applied-mechanics transfer, model closure и границ инженерного вывода

---

# Назначение

Rubric проверяет не память формул, а способность самостоятельно построить и ограничить applied-mechanics модель:

```text
BOUNDARY / TOPOLOGY
→ INPUT STATUS + OBJECT / SIDE / STATE / DOMAIN IDENTITY
→ P–T–ω / RATIO / η CONTRACT
→ SHAFT / MESH TORQUE-BALANCE
→ SAME-MESH FORCE IDENTITY
→ FBD / DETERMINACY
→ INTERFACE BOOKKEEPING
→ DEMAND / CAPACITY / AUTHORITY REGISTER
→ CROSS-CHECK
→ BOUNDED CALCULATION OR STOP
→ U1 TRANSFER
→ C1 EVIDENCE-STATUS UPDATE
```

D2 Verification **не открывает** gear load-capacity/rating, reducer/coupling selection, service factors, numeric alignment acceptance, bearing life/preload selection, lubricant selection, repair или equipment-operation authority.

# Языковое правило

Learner-facing verification — Russian-first. Английские labels допустимы, русские эквиваленты засчитываются полностью. Оценивается инженерное действие.

# Архитектура проверки

Обязательны три слоя:

1. **Known** — один Practice case A–J без выдачи Practice Reasoning как answer key.
2. **U1** — новый unseen applied-mechanics case.
3. **C1** — существенное evidence-status изменение после первоначального ответа на U1.

Known A–J, включая J, **не закрывает ER-D2-13**.

# Шкала 0–4

```text
0 — ОТСУТСТВУЕТ / ОПАСНАЯ МОДЕЛЬ ИЛИ STATUS JUMP
1 — ТОЛЬКО С ПОДСКАЗКОЙ
2 — БАЗОВО НА ЗНАКОМОМ КЕЙСЕ
3 — D2 VERIFIED BEHAVIOR
4 — УСТОЙЧИВЫЙ UNSEEN TRANSFER / КОРРЕКТНОЕ C1 UPDATE
```

BF-check выполняется **до** суммы баллов.

## Downstream-use trigger

Candidate family становится non-compensable BF, когда learner не просто допускает ошибку, а:
- переносит её значение/status в следующий расчёт;
- использует её для model closure;
- использует её для capacity/rating/selection/acceptance;
- использует её для diagnosis/repair/operation;
- либо после C1 продолжает опираться на уже опровергнутую модель.

Ошибка, которую learner **сам обнаружил и исправил до downstream use**, снижает соответствующий ER score, но не обязана становиться BF.

---
# ER-D2-01 — Boundary / topology before equations

### 0
Использует уравнения на незафиксированной или неверной topology; boundary leak остаётся в выводе.

### 1
Boundary/topology появляется только после подсказки.

### 2
На знакомом кейсе карта в основном верна, но один существенный interface/model boundary теряется.

### 3
Самостоятельно фиксирует in-model objects/interfaces/unknowns до вычислений и останавливает неподдержанную topology.

### 4
На U1/C1 корректно перестраивает boundary при новом evidence и сохраняет unaffected results.

# ER-D2-02 — Input-status + object/side/state/domain identity

### 0
Смешивает совместимые по единицам данные разных shaft/side/state/domain и использует смесь downstream.

### 1
Identity ledger появляется после наводящего вопроса.

### 2
На known case различает основные источники, но один identity/status field остаётся неявным.

### 3
Самостоятельно ведёт object/side/state/domain/status ledger и не смешивает incompatible evidence.

### 4
На U1/C1 точно обновляет только затронутые identity/status fields и отвергает tempting cross-object substitution.

# ER-D2-03 — Same-shaft/state P–T–ω discipline

### 0
Применяет P=Tω к разным shaft/state или к electrical power как mechanical shaft power.

### 1
После подсказки проверяет same-shaft/state.

### 2
На known case формула применена верно, но domain/sign/state contract сформулирован неполно.

### 3
До P=Tω доказывает mechanical domain, same shaft/state и sign/power-flow convention.

### 4
На U1/C1 устойчиво сохраняет identity и корректно STOP, если mechanical P или state не закрыты.

# ER-D2-04 — Ratio topology / convention / direction

### 0
Использует ratio без topology/convention либо reciprocal/old ratio как current value downstream.

### 1
Convention появляется после подсказки.

### 2
На known case ratio вычислен верно, но total/stage/direction distinction неустойчив.

### 3
Явно объявляет convention, stage chain и direction; total ratio строит только по proven topology.

### 4
На U1/C1 корректно меняет ratio-status при evidence delta и не защищает старый результат.

# ER-D2-05 — Efficiency applicability

### 0
Переносит η на другой direction/regime/path и использует её в downstream demand.

### 1
Applicability η проверяется только после подсказки.

### 2
На known case η применена в нужную сторону, но path/regime contract неявен.

### 3
Явно фиксирует η direction/regime/path и выполняет energy sanity check.

### 4
На U1/C1 отказывается от reverse/backdriven inference без applicable evidence.

# ER-D2-06 — Steady vs transient / near-zero model validity

### 0
Повышает steady или near-zero P/n до start/brake/transient peak torque.

### 1
После подсказки признаёт, что transient model отсутствует.

### 2
На known trap останавливается, но не формулирует какие dynamic inputs нужны.

### 3
Разделяет steady/transient, сохраняет bounded steady result и точно называет missing transient evidence.

### 4
На U1/C1 не заменяет missing dynamics invented service/reserve factor и корректно обновляет model status.

# ER-D2-07 — Shaft torque balance → mesh-torque identity

### 0
Net/boundary shaft torque объявляет torque конкретного mesh без независимого balance/identity.

### 1
После подсказки разделяет net и mesh torque.

### 2
На known case видит несколько mesh unknowns, но relation-count/model closure объясняет неполно.

### 3
Строит shaft torque-balance, считает unknowns/relations и использует T_mesh только после идентификации.

### 4
На U1/C1 устойчиво различает boundary, net и individual mesh torque при новой topology.

# ER-D2-08 — Same-mesh geometry → tangential force

### 0
Сочетает T_mesh с d/r другого gear/mesh или неизвестной geometry.

### 1
Same-mesh identity проверяется после подсказки.

### 2
На known case F_t верен, но gear/mesh identity не доказана явно.

### 3
Перед F_t=T/r=2T/d фиксирует same-mesh T_mesh + gear geometry и оставляет F_t demand-side.

### 4
На U1/C1 корректно принимает/отклоняет новую geometry и не превращает F_t в rating.

# ER-D2-09 — FBD / determinacy / bounded reactions

### 0
Решает unique reactions для statically indeterminate model либо повышает external reaction до bearing-life/acceptance.

### 1
Determinacy проверяется после подсказки.

### 2
На known determinate case реакции верны, но unknown/equation count или inertia assumption неявны.

### 3
Строит FBD, объявляет inertia assumption, считает unknowns/equations и решает только закрытую statics model.

### 4
На U1/C1 уверенно STOP на indeterminate support model и сохраняет вычислимые upstream loads.

# ER-D2-10 — Interface bookkeeping without connectivity→equality

### 0
Connectivity через coupling превращает несинхронные P/T/n в численное равенство или fault diagnosis.

### 1
После подсказки разделяет side A/B.

### 2
На known case интерфейс ведётся раздельно, но transfer model/synchrony field неполны.

### 3
Ведёт side-specific ledger и требует transfer model + same-state evidence для numerical equality.

### 4
На U1/C1 корректно обновляет equality/slip status по синхронному evidence без alignment/condition escalation.

# ER-D2-11 — Demand / capacity / rating / authority separation

### 0
Calculated demand сравнивает с неподтверждённым catalog number и объявляет suitability/safety/operation.

### 1
После подсказки различает demand и rating.

### 2
На known case не делает operation verdict, но exact identity/rating applicability проверяет неполно.

### 3
Ведёт demand/capacity/authority register и не повышает arithmetic difference до rating/selection evidence.

### 4
На U1/C1 даже при exact component/catalog evidence сохраняет missing duty/selection/acceptance/operation gates.

# ER-D2-12 — Cross-check + bounded STOP + discriminating evidence

### 0
Продолжает расчёт после незакрытой модели или выдаёт vague 'нужно больше данных' и затем предполагает удобное значение.

### 1
STOP появляется только после подсказки.

### 2
На known case умеет остановиться, но blocked claim / discriminating evidence формулирует неполно.

### 3
Выполняет релевантный cross-check, сохраняет proven results и формулирует точный STOP + next discriminating evidence.

### 4
На U1/C1 самостоятельно выбирает минимальный evidence, который реально различает model forks, и не стирает уже доказанное.

# ER-D2-13 — Unseen transfer + C1 model update

### 0
Known-case шаблон механически переносится на U1; C1 игнорируется либо learner защищает старый вывод.

### 1
U1/C1 решаются только пошаговыми подсказками.

### 2
На U1 часть reasoning переносится, но evidence delta или один guard требует существенной помощи.

### 3
Самостоятельно завершает U1 полным evidence packet и корректно обновляет модель после C1.

### 4
Устойчиво переносит D2 workflow, пересчитывает только затронутое, сохраняет unknowns/locks и корректный STOP при неполном closure.

# U1 — Unseen applied-mechanics case

## Evidence package

Привод:

```text
MOTOR SHAFT → STAGE 1 → INTERMEDIATE SHAFT → STAGE 2 → OUTPUT SHAFT → COUPLING → DRUM INPUT
```

Документировано для одного steady forward режима:
- mechanical shaft power на motor shaft: `18.0 kW`;
- motor-shaft speed: `1460 rpm`, тот же timestamp;
- Stage 1 teeth: `22 / 66`;
- Stage 2 teeth: `25 / 100`;
- learner должен сам объявить ratio convention;
- supplied forward efficiencies: `η1=0.97`, `η2=0.95` только для этого режима/direction;
- output gear pitch diameter: `300 mm`, gear identity подтверждена;
- output shaft несёт output gear и coupling;
- output shaft поддерживается **тремя** радиальными опорами; stiffness/compatibility relations не даны;
- coupling-side A speed: `121.5 rpm` в `t1`;
- drum-side B speed: `118.0 rpm` в `t2`; measurements не синхронны;
- рядом с машиной найден catalog sheet coupling family с `1800 N·m`, exact installed designation пока не подтверждён;
- supervisor спрашивает: «запаса хватает, можно продолжать работу?».

## Требование

Learner должен:
1. построить boundary/topology и input/identity ledger;
2. выполнить только доказанные ratio / P–T–ω / supplied-η transformations;
3. при необходимости построить output-shaft torque balance до mesh force;
4. явно решить, можно ли получить unique support reactions;
5. вести coupling sides раздельно;
6. не превращать catalog number в proven capacity;
7. завершить `CALCULATED / NOT ESTABLISHED / NEXT EVIDENCE`;
8. не давать equipment-operation verdict.

Reference arithmetic используется проверяющим только как sanity check:
- `i1=3`, `i2=4`, `i_total=12`;
- `n_out≈121.67 rpm`;
- `P_out≈16.587 kW`;
- bounded steady output torque `≈1.30 kN·m`, если identity/model chain закрыта;
- same-gear tangential force `≈8.68 kN`, если T_mesh действительно идентифицирован;
- три support reactions **не** имеют unique solution только из planar equilibrium без compatibility/stiffness model.

Правильный STOP на reactions/capacity/operation является положительным evidence.

# C1 — Evidence-status challenge

После первоначального ответа U1 проверяющий выдаёт:

- exact installed coupling designation подтверждён и совпадает с catalog sheet;
- catalog `1800 N·m` подтверждён как continuous rating для указанной базовой catalog condition;
- duty/transient/start-frequency/service-factor/temperature selection inputs **не предоставлены**;
- synchronous measurement теперь показывает side A `121.4 rpm`, side B `121.3 rpm` в одном timestamp;
- три-support bearing arrangement подтверждён as-built, но stiffness/compatibility data всё ещё отсутствуют;
- numeric alignment measurements и acceptance criteria отсутствуют;
- competent equipment-operation decision отсутствует.

Learner должен:
1. записать evidence delta;
2. обновить coupling identity и synchronous-side status;
3. **не** повышать catalog rating до suitability без missing selection/duty inputs;
4. сохранить three-support reaction model как indeterminate;
5. не повышать synchronous speed evidence до alignment/condition acceptance;
6. пересчитать только затронутые статусы;
7. выдать новый bounded conclusion / STOP.

# Blocking Failure Classification

Все 12 Practice-Reasoning candidate families принимаются как **non-compensable BF при downstream-use trigger**.

## BF-D2-01 — Mixed shaft/state/domain

**Provenance:** `R-F01 / ER-D2-02,03`

**BF trigger:** Данные разных shaft/side/state/domain смешаны и смесь использована в следующем расчёте или техническом выводе.

## BF-D2-02 — Ratio without topology/convention

**Provenance:** `R-F02 / ER-D2-04`

**BF trigger:** Неопределённый/неприменимый ratio используется для speed/torque/power transformation downstream.

## BF-D2-03 — Efficiency applicability leak

**Provenance:** `R-F03 / ER-D2-05`

**BF trigger:** η переносится на другой direction/regime/path и используется для вычисленного demand или следующего вывода.

## BF-D2-04 — Steady/near-zero → transient peak

**Provenance:** `R-F04 / ER-D2-06`

**BF trigger:** Steady/near-zero P/n объявляется start/brake/transient peak либо используется как такой downstream.

## BF-D2-05 — Net shaft torque → mesh torque

**Provenance:** `R-F05 / ER-D2-07`

**BF trigger:** Boundary/net torque без identity используется как T_mesh в force/reaction chain.

## BF-D2-06 — Cross-mesh geometry

**Provenance:** `R-F06 / ER-D2-08`

**BF trigger:** T_mesh сочетается с d/r другого или неидентифицированного gear/mesh и результат используется downstream.

## BF-D2-07 — Unique reactions without determinacy

**Provenance:** `R-F07 / ER-D2-09`

**BF trigger:** Indeterminate statics model получает придуманные unique reactions, которые затем используются.

## BF-D2-08 — Reaction sign/load → diagnosis/acceptance

**Provenance:** `R-F08 / ER-D2-09,11`

**BF trigger:** Знак/внешняя reaction повышается до contact-loss, bearing-life, fault или acceptance claim без соответствующей модели/authority.

## BF-D2-09 — Coupling connectivity → numerical equality

**Provenance:** `R-F09 / ER-D2-10`

**BF trigger:** Несинхронные/неподтверждённые side values объявляются равными или используются для slip/fault claim.

## BF-D2-10 — Demand → unverified capacity/suitability

**Provenance:** `R-F10 / ER-D2-11`

**BF trigger:** Calculated demand сравнивается с неподтверждённым catalog/rated number как proof of capacity/suitability.

## BF-D2-11 — Invented safety/rating method

**Provenance:** `R-F11 / ER-D2-11`

**BF trigger:** Самодельный service/reserve factor, rounding или arithmetic margin выдаётся за engineering rating/safety method.

## BF-D2-12 — Bounded result/STOP → selection or operation authority

**Provenance:** `R-F12 / ER-D2-11,12`

**BF trigger:** D2 result или SkillsVault STOP превращается в component selection, acceptance, repair или permitted-operation verdict.

# Severity review

## SR-D2-01 — Evidence request exists but is not discriminating

Learner останавливается и говорит «нужно больше данных», но не указывает, какой evidence различит model forks.

Это **не automatic BF**, если learner действительно не продолжает unsupported derivation.

Scoring effect:
- обычно снижает ER-D2-12;
- на U1/C1 может снижать ER-D2-13;
- если затем learner подставляет convenient assumption и продолжает, срабатывает соответствующий конкретный BF-D2-01…12.

# Scoring Sheet

| ER | Known | U1 | C1 | Final 0–4 | Evidence note |
|---|---:|---:|---:|---:|---|
| ER-D2-01 | | | | | |
| ER-D2-02 | | | | | |
| ER-D2-03 | | | | | |
| ER-D2-04 | | | | | |
| ER-D2-05 | | | | | |
| ER-D2-06 | | | | | |
| ER-D2-07 | | | | | |
| ER-D2-08 | | | | | |
| ER-D2-09 | | | | | |
| ER-D2-10 | | | | | |
| ER-D2-11 | | | | | |
| ER-D2-12 | | | | | |
| ER-D2-13 | | | | | |

# BF Check

| BF | Triggered? | Evidence / downstream use |
|---|---|---|
| BF-D2-01 | | |
| BF-D2-02 | | |
| BF-D2-03 | | |
| BF-D2-04 | | |
| BF-D2-05 | | |
| BF-D2-06 | | |
| BF-D2-07 | | |
| BF-D2-08 | | |
| BF-D2-09 | | |
| BF-D2-10 | | |
| BF-D2-11 | | |
| BF-D2-12 | | |

# Итоговые gates

## D2 VERIFIED

Обязательны одновременно:
- `0 BF`;
- каждый `ER-D2-01…13 >= 3`;
- total score `>= 39 / 52`;
- known case completed;
- U1 completed;
- C1 completed;
- 10-part minimum evidence package complete;
- bounded STOP засчитывается как успех, если модель действительно не закрыта и next evidence discriminating.

## D2 ROBUST / TRANSFER

Обязательны все условия VERIFIED плюс:
- total score `>= 47 / 52`;
- `ER-D2-02 = 4`;
- `ER-D2-07 = 4`;
- `ER-D2-09 = 4`;
- `ER-D2-11 = 4`;
- `ER-D2-12 = 4`;
- `ER-D2-13 = 4`;
- `0 BF`.

# Final decision order

```text
1. BF CHECK
2. ALL ER >= 3 CHECK
3. KNOWN + U1 + C1 CHECK
4. EVIDENCE PACKAGE CHECK
5. TOTAL SCORE
6. ROBUST CORE GATES
```

Если есть BF — итог `D2 NOT VERIFIED` независимо от суммы.

Если BF нет, но любой ER < 3 — `D2 NOT VERIFIED / DEVELOPING / BORDERLINE`; сумма не может компенсировать провал dimension.

# Минимальный evidence package

1. Boundary / topology map;
2. Input / identity ledger;
3. P–T–ω / ratio / η model contract;
4. Shaft / mesh torque-balance record;
5. Mesh-force identity packet;
6. FBD / determinacy / reaction packet;
7. Interface ledger;
8. Demand / capacity / authority register;
9. Cross-check record;
10. Bounded conclusion / STOP + discriminating next evidence.

# Что Rubric специально не открывает

Rubric не разрешает самостоятельно выводить:
- ISO 6336 numerical gear load capacity / coefficients;
- reducer selection / service factor / rating;
- coupling selection/rating/suitability;
- numeric alignment limits or acceptance;
- bearing internal load/life/preload selection;
- lubricant selection/substitution;
- root cause, repair or adjustment;
- continued operation / return-to-service permission.

Следующий этап:
`CRN-M-04 / D2 FINAL ALIGNMENT / v1`.
