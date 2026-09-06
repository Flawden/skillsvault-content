# CRN-M-04 / D2 — Scope v1

## Mission

D2 переводит тему «Редукторы и муфты» от D1 recognition/mental-model уровня к **ограниченной прикладной механике**, где ученик умеет строить проверяемую расчётную модель заданного привода, считать простые кинематические и силовые величины и явно отделять вычисленный результат от рейтинга, допуска, выбора оборудования и эксплуатационного решения.

D2 работает только с **заданной моделью и заданными исходными данными**. Если геометрия, направление передачи, КПД, нагрузочный случай, точки приложения сил или тип компонента не заданы и не доказаны, ученик не имеет права «достраивать» их по внешнему виду, типовой схеме или моторному шильдику.

D2 не размораживает D1. Замороженный `crn-m-04-d1-v1` остаётся immutable prerequisite и authority boundary.

## D2 learner should be able to

1. фиксировать расчётную границу: какие валы, ступени, зацепления, муфты и опоры входят в модель, а какие остаются внешними;
2. различать **observed / documented / assumed / calculated / rated / permitted** значения и не смешивать эти статусы;
3. переводить частоту вращения `n` в угловую скорость `ω` и обратно с явными единицами;
4. применять `P = T·ω` только когда `P`, `T` и `ω` относятся к одному и тому же валу/сечению и одному согласованному режиму;
5. использовать производную форму `T ≈ 9550·P_kW/n_rpm` как единично-проверяемое преобразование, а не как рейтинг редуктора или муфты;
6. рассчитывать модуль простого передаточного отношения по известным частотам вращения или числам зубьев для **явно идентифицированной** простой пары;
7. для нескольких последовательных ступеней перемножать отношения только после доказательства топологии и направления каждой ступени;
8. различать идеальную кинематическую связь и энергетическую модель с КПД; не назначать неизвестный `η` и не переносить паспортный КПД одного изделия на другое;
9. при заданном моменте и заданном эффективном плече/делительном диаметре получать тангенциальную силу как моментную связь (`F_t = T/r = 2T/d`) без превращения этого шага в расчёт прочности зубьев;
10. строить free-body diagram заданного вала/элемента и находить внешние реакции из `ΣF = 0`, `ΣM = 0` в явно ограниченной 2D/3D модели;
11. вести interface ledger: для каждого соединения указывать, какие величины переходят через границу модели (rotation, torque, force/reaction, position constraint), а какие не доказаны;
12. проверять размерности, знак/направление, порядок величины и энергетическую согласованность результата;
13. различать **calculated demand** и **allowable/rated capacity**: вычисленная нагрузка не доказывает, что компонент подходит;
14. STOP, если для следующего шага требуется gear rating, service factor, coupling rating, допустимая несоосность, bearing life, допуск состояния, выбор смазки, ремонт или operational authority.

## In scope

### 1. Kinematics

- `ω = 2πn/60` для `n` в rpm;
- простая gear-pair speed ratio при известной топологии;
- знак/направление вращения как отдельная часть модели, а не скрытое следствие положительного `i`;
- произведение ступенчатых отношений для доказанной последовательной цепочки;
- обратная проверка результата по скорости входа/выхода.

### 2. Shaft power and torque bookkeeping

- `P = T·ω`;
- единично-проверяемая форма `T = P/ω` и её rpm/kW conversion;
- различие input/output shaft values;
- идеальная модель `P_out = P_in` только как явно помеченная идеализация;
- модель `P_out = η·P_in` только при **заданном** и применимом `η`;
- расчётный torque demand не является permissible torque/rating.

### 3. Bounded force/reaction mechanics

- `T = F_t·r` / `F_t = 2T/d` при заданном `r` или pitch/reference diameter;
- внешние силы и реакции на free-body diagram;
- `ΣF = 0`, `ΣM = 0` для заданной статической/квазистатической модели;
- расстояния до опор и точек приложения сил должны быть входными данными, а не догадкой;
- отдельное хранение направлений/знаков и модулей.

### 4. Component interfaces

- motor/shaft ↔ coupling;
- coupling ↔ reducer input shaft;
- gear mesh ↔ shaft;
- shaft ↔ bearing/support reaction boundary;
- reducer output ↔ downstream coupling/mechanism;
- interface ledger distinguishes transmitted demand from component capacity and permission.

## Explicitly NOT unlocked by D2 kickoff

D2 kickoff **не разрешает**:

- ISO 6336 load-capacity calculation, reconstruction of paid formulae, coefficients or influence factors;
- выбор module, tooth count, helix angle, material, heat treatment, face width or gear geometry for a real design;
- service-factor selection or duty correction;
- reducer selection or confirmation that a reducer is adequate;
- coupling type/size selection, torque rating or allowable speed determination;
- numeric radial/angular/axial misalignment limits or alignment acceptance;
- transfer of ГОСТ Р 50895-2025 gear-coupling limits to another coupling family;
- detailed helical/bevel/worm/planetary force distribution unless the exact geometry/model is explicitly supplied and a later source gate permits the calculation;
- planetary load-sharing assumption;
- bearing internal load distribution, equivalent dynamic load, life, preload or selection;
- shaft/key/spline/bolt stress design or strength acceptance;
- backlash, wear, pitting, vibration, temperature, noise or damage acceptance limits;
- lubricant grade/viscosity/substitution/interval selection;
- diagnosis or root cause from a calculated or observed value alone;
- repair, adjustment, overhaul, return-to-service or permission to operate.

## Equation-status contract

Every D2 calculation must carry four labels:

```text
INPUTS      = documented / observed / explicitly-assumed
MODEL       = topology + boundary + equations + efficiency treatment
CALCULATED  = derived demand/result with units and sign convention
AUTHORITY   = what this result does NOT prove
```

Example of a valid bounded statement:

> For the stated shaft power and speed, the calculated shaft torque is X N·m. This is a demand value for the stated model; it is not a reducer/coupling rating or acceptance verdict.

Invalid promotion:

```text
calculated torque < remembered/catalog-like number
→ therefore reducer/coupling is safe
```

That requires exact component identity, applicable rating method/documentation, duty/service factors and qualified acceptance authority.

## D2 STOP conditions

STOP and request missing evidence when any of the following is absent:

- actual topology needed to choose the ratio/sign relation;
- shaft identity for `P`, `T` or `n`;
- whether power is mechanical shaft power or another power value;
- efficiency when a non-ideal power transfer is being calculated;
- reference/pitch diameter or lever arm for force conversion;
- force application points/support positions for reaction calculation;
- coupling family/identity when a family-specific statement is attempted;
- exact OEM/passport/drawing/standard when a calculated demand is being compared with capacity or tolerance;
- qualified authority when the requested conclusion is maintenance, repair, acceptance or operation.

## D1 immutable boundary

D2 inherits without weakening:

- D1 source-scope discipline;
- ISO 6336 expert-design boundary;
- ГОСТ Р 50895-2025 family-specific applicability guard;
- ISO 14691 scope-limited watchlist status;
- observation ≠ diagnosis ≠ acceptance;
- lubricant-selection lock;
- repair / return-to-service / operational-authority lock.

**D2 SCOPE = LOCKED / APPLIED MECHANICS ONLY.**
