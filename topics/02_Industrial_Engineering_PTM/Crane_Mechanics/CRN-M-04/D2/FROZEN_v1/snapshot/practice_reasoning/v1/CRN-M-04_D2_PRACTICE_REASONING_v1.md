# CRN-M-04 — Редукторы и муфты
# D2 Practice Reasoning v1
## Неэксклюзивные applied-mechanics reasoning paths для Practice A–J

---

# Как читать этот слой

Этот документ не является единым «ключом ответов». Он показывает несколько допустимых способов доказать или остановить вывод в D2.

Для любого кейса разрешён другой порядок промежуточных проверок, если сохраняются инварианты:

```text
BOUNDARY / TOPOLOGY
→ INPUT STATUS
→ IDENTITY / MODEL
→ CALCULATION OR STOP
→ CROSS-CHECK
→ CALCULATED / NOT ESTABLISHED / NEXT EVIDENCE
```

Число считается успешным D2 результатом только внутри объявленной модели. Корректный `STOP UNSUPPORTED DERIVATION` также является успешным результатом, если ученик:

1. называет конкретный заблокированный вывод;
2. показывает, какой gate не пройден;
3. запрашивает discriminating evidence;
4. не превращает SkillsVault STOP в разрешение или запрет эксплуатации.

Ни одна траектория ниже не открывает gear/reducer/coupling rating, service-factor selection, alignment acceptance, bearing life, repair или equipment-operation authority.

Критическая downstream-граница остаётся явной:

```text
CALCULATED DEMAND
≠
RATED / ALLOWABLE CAPACITY
≠
PERMITTED OPERATION
```

---

# Кейс A — Красивые числа с разных валов
## Same-shaft identity before P–T–ω

### Допустимая траектория 1

1. Разделить четыре значения по физической identity:
   - `18.5 kW` — electrical input;
   - `16.8 kW` — mechanical power motor shaft, nominal state;
   - `1470 rpm` — motor shaft, nominal state;
   - `294 rpm` — reducer output, другое испытание.
2. Same-shaft/same-state gate проходит только пара `16.8 kW + 1470 rpm`.
3. Для неё:
   `T ≈ 9550 × 16.8 / 1470 ≈ 109 N·m`.
4. `18.5 kW + 1470 rpm` не проходит domain gate: electrical power не стала mechanical shaft power.
5. `16.8 kW + 294 rpm` не проходит shaft/state gate.
6. Итог: рассчитан только nominal motor-shaft torque demand около `109 N·m`.

### Допустимая траектория 2

Начать не с формулы, а с запрета «смешать строку таблицы»:

- составить два возможных candidate states;
- отбросить candidate с `18.5 kW` как требующий motor efficiency/loss conversion model;
- отбросить candidate с `294 rpm` как другой shaft/state;
- только после этого применить `P=Tω` к оставшейся паре;
- проверить единицы через `ω=2πn/60`.

Такой маршрут эквивалентен по доказательной силе, хотя порядок действий другой.

### Discriminating evidence

Для output torque нужны одновременно:
- mechanical power на reducer-output side или доказанная loss/efficiency model от входа;
- output speed в том же operating state;
- доказанная topology/side identity;
- единая sign/power-flow convention.

### Bounded conclusion

```text
CALCULATED:
motor-shaft nominal torque demand ≈ 109 N·m

NOT ESTABLISHED:
reducer-output torque; coupling capacity; operation permission

NEXT EVIDENCE:
same-state output mechanical P/n or bounded transfer/loss model + exact interface identity
```

### Blocking failures

- electrical input подставлен как mechanical shaft power без conversion model;
- power и speed смешаны между разными shaft/state;
- рассчитанный demand сразу сравнен с capacity без rating applicability.

---

# Кейс B — `i = 4.5`: делить или умножать?
## Ratio convention + topology proof

### Допустимая траектория 1

1. Для доказанной внешней пары `z_driver=24`, `z_driven=72`.
2. При объявленной magnitude convention `i_pair = n_driver/n_driven = z_driven/z_driver = 72/24 = 3`.
3. Тогда скорость после **этой пары**:
   `n_after_pair = 1350/3 = 450 rpm`.
4. Одна внешняя пара меняет направление вращения между этими двумя gears.
5. Закрытая ступень неизвестна, поэтому total reducer ratio, final direction и full output speed не установлены.
6. Старое `i=4.5` остаётся недоопределённым числом до восстановления convention и topology.

### Допустимая траектория 2

Начать с convention test:

- записать две гипотезы: `i=n_in/n_out` и `i=n_out/n_in`;
- показать, что ни одна из них не может быть привязана к **всему редуктору**, пока закрытая ступень неизвестна;
- использовать tooth-count relation только на доказанной паре;
- выдать bounded local result `i_pair=3`, `n=450 rpm`;
- STOP перед total output.

### Discriminating evidence

- current as-built stage topology;
- tooth counts/ratio каждой скрытой ступени или надёжный current reducer ratio record;
- явное определение `i`;
- количество external/internal meshes для direction claim.

### Bounded conclusion

```text
CALCULATED:
for proven pair only: |i_pair|=3; n_after_pair=450 rpm

NOT ESTABLISHED:
total ratio; final n_out; final rotation direction; meaning/applicability of old i=4.5

NEXT EVIDENCE:
closed-stage topology + ratio convention
```

### Blocking failures

- reciprocal ratio выбран по привычке, а не по definition;
- local pair ratio объявлен total reducer ratio;
- direction одной пары распространён через неизвестную ступень.

---

# Кейс C — Две ступени, КПД есть только вперёд
## Sequential ratio + efficiency-direction discipline

### Допустимая траектория 1

Для доказанной последовательной forward topology и convention `|i|=n_in/n_out`:

- `|i_total|=3×4=12`;
- `n_out=1440/12=120 rpm`;
- `η_total=0.96×0.94=0.9024`;
- `P_out=11.0×0.9024=9.9264 kW`;
- `T_out≈9550×9.9264/120≈790 N·m`.

Energy check:
`P_out/P_in=0.9024<1`, что согласуется с supplied forward efficiencies.

### Допустимая траектория 2

Можно идти stage-by-stage:

1. получить `n_1=480 rpm`;
2. применить `η1_forward` к power;
3. затем `n_2=120 rpm`;
4. применить `η2_forward`;
5. вычислить output torque на **той же output side/state**.

Промежуточные значения служат cross-check произведения `i1*i2` и `η1*η2`.

Для reverse/backdriven вопроса обе траектории обязаны остановиться: forward η не является reverse loss model.

### Discriminating evidence

Для reverse нужны:
- явно применимые reverse/backdriven efficiency/loss data;
- reverse power-flow boundary;
- regime/state applicability;
- topology и side identities для обратного режима.

### Bounded conclusion

```text
CALCULATED FOR FORWARD MODEL:
|i_total|=12
n_out=120 rpm
P_out≈9.93 kW
T_out≈790 N·m

NOT ESTABLISHED:
reverse/backdriven losses or torque; gear/coupling rating

NEXT EVIDENCE:
source-bound reverse loss/efficiency model for the relevant regime
```

### Blocking failures

- forward η молча перенесён в reverse;
- ratio и efficiency смешаны в один «коэффициент»;
- steady output demand назван rated/allowable torque.

---

# Кейс D — 12 rpm во время торможения
## Near-zero and transient-demand trap

### Допустимая траектория 1

Формально арифметика даёт:

`9550×4/12 ≈ 3183 N·m`.

Но это лишь **algebraic quotient under a steady same-shaft interpretation**. Условие не доказывает, что reported power и `12 rpm` образуют валидный instantaneous `P=Tω` state для торможения. Near-zero denominator резко усиливает чувствительность к фильтрации/синхронизации.

Следовательно число нельзя повышать до «peak braking torque».

### Допустимая траектория 2

Вообще не публиковать torque как model-valid result:

1. отметить units-compatible inputs;
2. проверить transient model gate;
3. увидеть отсутствие angular acceleration, torque history и provenance reported power;
4. дать `STOP UNSUPPORTED DERIVATION`;
5. записать `3183 N·m` только как optional arithmetic diagnostic, не как established torque.

Nominal `980 rpm` подменять нельзя: это другой state и такая подмена не чинит модель.

### Discriminating evidence

- time-synchronised mechanical shaft power and speed;
- torque sensor/history или применимая dynamic model;
- angular acceleration/inertia, если torque восстанавливается динамически;
- signal filtering/provenance;
- braking regime boundary and sign convention.

### Bounded conclusion

```text
CALCULATED:
optional arithmetic quotient 9550×4/12≈3.18 kN·m, explicitly NOT model-validated transient torque

NOT ESTABLISHED:
peak braking torque; transient demand envelope

NEXT EVIDENCE:
synchronised transient torque/power/speed history or validated dynamic model
```

### Blocking failures

- near-zero quotient назван измеренным/доказанным peak torque;
- nominal speed подставлена вместо measured state для «правильного» числа;
- invented service/reserve factor используется вместо transient evidence.

---

# Кейс E — Один вал, два зацепления
## Net shaft torque versus single-mesh torque

### Допустимая траектория 1

1. Изолировать intermediate shaft.
2. Выбрать sign convention.
3. В torque balance включить четыре terms:
   `+360 N·m`, `-120 N·m`, `T_mesh,G1`, `T_mesh,G2`.
4. Equilibrium даёт только **одно** независимое scalar torque equation для двух неизвестных mesh torques.
5. Следовательно отдельные `T_mesh,G1` и `T_mesh,G2` не идентифицируются из данных кейса.
6. Без них нельзя корректно получить отдельные `F_t,G1` и `F_t,G2`.

### Допустимая траектория 2

Проверить proposed shortcut непосредственно:

- `360 N·m` является boundary torque, а не автоматически torque каждого mesh;
- даже если вычислить `2×360/0.18` и `2×360/0.30`, это будут числа из **не доказанной identity**;
- отвергнуть shortcut до арифметики;
- запросить один дополнительный независимый mesh/shaft relation.

### Discriminating evidence

Подойдёт, например:
- torque/power на соседнем shaft, однозначно связанный с конкретным mesh;
- отдельный measured/calculated mesh torque;
- доказанная no-other-path topology + состояние соседней ступени, создающее второе независимое relation.

Диаметр всегда должен принадлежать тому же gear/mesh, что и `T_mesh`.

### Bounded conclusion

```text
CALCULATED:
only a combined torque-balance relation, convention-dependent

NOT ESTABLISHED:
individual T_mesh,G1; T_mesh,G2; F_t,G1; F_t,G2; gear capacity

NEXT EVIDENCE:
one independent relation identifying at least one mesh torque
```

### Blocking failures

- boundary/net shaft torque объявлен torque каждого mesh;
- torque одного mesh смешан с diameter другого gear;
- полученный F_t превращён в gear rating.

---

# Кейс F — Вал на двух опорах: здесь реакции считать можно
## Determinate external statics

### Допустимая траектория 1

Для upward positive:

- `R_A + R_B - 5.4 = 0 kN`;
- moments about A: `R_B×0.90 - 5.4×0.30 = 0`;
- `R_B=1.8 kN`;
- `R_A=3.6 kN`.

Cross-check:
`3.6+1.8=5.4 kN`, а moments about B также сходятся.

### Допустимая траектория 2

Начать с determinacy:

- две vertical reaction unknowns;
- две независимые planar equations для заданного loading plane;
- acceleration terms explicitly neglected;
- система determinate;
- затем решить любым эквивалентным moment origin.

### Discriminating evidence

Если результат хотят перенести в bearing life/selection, нужны уже другие модели и данные:
- bearing arrangement/internal geometry;
- load components in all relevant planes;
- equivalent load/life method and applicable source;
- speed/duty/reliability/lubrication inputs.

### Bounded conclusion

```text
CALCULATED:
R_A=3.6 kN upward
R_B=1.8 kN upward

NOT ESTABLISHED:
bearing internal load; equivalent dynamic load; bearing life/selection

NEXT EVIDENCE:
bearing-specific geometry/load/life model if that downstream claim is required
```

### Blocking failures

- external support reaction назван bearing-life result;
- inertia neglected без объявления model assumption;
- знак/компонента реакции перенесены в другой plane без FBD.

---

# Кейс G — Три опоры и одна сила
## Determinacy gate before algebra

### Допустимая траектория 1

В выбранной planar rigid-body model:

- unknown vertical reactions = 3;
- independent equilibrium equations for this loading plane = 2 (`ΣF_y=0`, `ΣM=0`);
- поэтому model statically indeterminate by one reaction degree.

Итог: `STOP UNSUPPORTED DERIVATION`.

### Допустимая траектория 2

Можно начать с гипотезы равных реакций и попытаться её доказать. Она сразу требует symmetry **geometry + loading + support stiffness/contact/compatibility**. Эти данные не заданы, значит гипотеза не проходит evidence gate и должна быть отброшена.

### Discriminating evidence

Нужна более богатая model, например:
- shaft/support stiffness;
- compatibility/deformation equations;
- bearing/support clearances/contact conditions;
- validated elastic model или measured load distribution.

### Bounded conclusion

```text
CALCULATED:
unknowns=3; independent equilibrium equations=2

NOT ESTABLISHED:
unique R_A/R_B/R_C

NEXT EVIDENCE:
compatibility/stiffness/contact relations or measured distribution

STOP UNSUPPORTED DERIVATION
```

### Blocking failures

- число координат принято за число независимых equations;
- равные реакции придуманы из визуальной симметрии;
- STOP превращён в equipment-operation prohibition.

---

# Кейс H — Через муфту «всё одинаково»
## Interface bookkeeping and no-slip/loss assumptions

### Допустимая траектория 1

Сторона A:

`T_A≈9550×9.2/1480≈59.4 N·m`

при условии same-state mechanical `P_A` + `n_A`.

Сторона B остаётся отдельной identity. `n_B=1472 rpm` получена в другом измерении; exact coupling transfer model и loss/slip state отсутствуют. Поэтому нельзя автоматически записать `P_B=P_A`, `T_B=T_A` или даже объяснить разницу speed.

### Допустимая траектория 2

Сначала построить interface ledger A/B и перечислить возможные transfer models:

- ideal rigid/no-slip, lossless;
- no-slip with loss;
- flexible/torsional transient;
- slip-capable or asynchronous observations.

Поскольку ни одна не доказана, connectivity подтверждает только связь компонентов, но не numerical equality state variables. Затем вычислить только side-A torque.

### Discriminating evidence

- exact coupling type/configuration;
- synchronous A/B speed measurements;
- applicable slip/no-slip and efficiency/loss model;
- torsional state/regime;
- same-time P or T evidence on B side.

### Bounded conclusion

```text
CALCULATED:
T_A≈59.4 N·m for documented side-A state

NOT ESTABLISHED:
P_B; T_B; equality A/B; cause of 1480 vs 1472 rpm; coupling rating/alignment acceptance

NEXT EVIDENCE:
coupling transfer model + synchronous side-B state evidence
```

### Blocking failures

- connectivity превращена в equality P/T/n;
- несинхронные measurements трактуются как slip/fault diagnosis;
- side-A demand превращён в coupling rating.

---

# Кейс I — `230 N·m < 300 N·m, значит подходит`
## Demand-to-capacity leakage

### Допустимая траектория 1

Классифицировать статусы:

- `230 N·m` = calculated steady demand для identified output shaft;
- `300 N·m` = catalog number рядом с похожим designation; пока `rated? / applicability unknown`;
- `70 N·m` = арифметическая разница, не safety margin.

Без exact component identity, rating method/duty/speed/transient/misalignment applicability сравнение не имеет selection authority.

### Допустимая траектория 2

Можно задать вопрос «что должно быть доказано, чтобы знак `<` вообще стал инженерно значимым?»:

1. exact installed coupling;
2. applicable catalog row/revision;
3. definition/rating basis `300 N·m`;
4. duty/service/transient factors по применимому source;
5. speed/alignment/environmental limits;
6. competent selection/operation workflow.

До этого D2 вправе сохранить только demand `230 N·m`.

### Discriminating evidence

- exact designation and configuration;
- applicable manufacturer/OEM rating method;
- duty/transient/speed/alignment inputs;
- source revision and applicability;
- competent authority for selection/operation decision.

### Bounded conclusion

```text
CALCULATED:
steady shaft torque demand=230 N·m
arithmetic difference to unverified catalog number=70 N·m

NOT ESTABLISHED:
applicable rated capacity; safety margin; coupling suitability; permission to operate

NEXT EVIDENCE:
exact identity + applicable rating workflow and authority
```

### Blocking failures

- catalog proximity принята за applicability;
- invented `1.2/1.5` factor назван safety method;
- demand-below-number превращён в selection/operation verdict.

---

# Кейс J — Integrated D2 capstone
## From topology proof to reactions without crossing rating authority

### Допустимая траектория 1

Объявить magnitude convention `|i|=n_in/n_out` и forward model.

1. `|i_total|=3.5×2.0=7`.
2. `n_C=1470/7=210 rpm`.
3. `η_total=0.97×0.95=0.9215`.
4. `P_C=8.4×0.9215=7.7406 kW`.
5. `T_A≈9550×8.4/1470≈54.6 N·m`.
6. `T_C≈9550×7.7406/210≈352 N·m`.
7. При declared model, где output-shaft torque передаётся output gear G как `T_mesh,G`, и same gear diameter `d_G=0.24 m`:
   `F_t=2T/d≈2×352/0.24≈2933 N≈2.93 kN`.
8. Для FBD:
   `R_L+R_R=2.933 kN`;
   `R_R×0.70=2.933×0.20`;
   `R_R≈0.838 kN`, `R_L≈2.095 kN`.

### Допустимая траектория 2

Идти по conservation/cross-check spine:

- kinematics: verify ratio chain and `n_C`;
- energy: verify `P_C/P_A=0.9215<1`;
- same-shaft torque: independently compute `T_A`, `T_C`;
- mesh identity: prove `T_C` belongs to output gear G in selected isolated model;
- statics: count two unknown reactions and two independent equations;
- solve reactions;
- only после этого оформить result handoff.

Если хоть один identity/model gate не доказан, соответствующая downstream часть цепочки останавливается, но upstream bounded results сохраняются.

### Discriminating evidence

Для того, что **не** открыто этим capstone:
- gear rating: ISO/OEM rating inputs, geometry/material/quality/load spectra и applicable method;
- coupling rating: exact coupling identity, duty/transient/misalignment and manufacturer method;
- bearing life: internal arrangement, load components, life inputs and method;
- transient demand: time history/dynamic model;
- operation verdict: competent equipment authority and governing documentation.

### Bounded conclusion

```text
CALCULATED:
|i_total|=7
n_C=210 rpm
P_C≈7.741 kW
T_A≈54.6 N·m
T_C≈352 N·m
F_t,G≈2.93 kN
R_L≈2.10 kN
R_R≈0.84 kN

NOT ESTABLISHED:
gear/coupling capacity; bearing life; transient/start/brake demand; alignment acceptance; permitted operation

NEXT EVIDENCE:
claim-specific rating/life/transient/authority package
```

### Blocking failures

- расчётная цепочка названа complete design verification;
- `T_C` используется как mesh torque без declared isolated-model identity;
- external support reactions становятся bearing-life result;
- correct arithmetic используется как operation authority.

---

# Cross-case blocking-failure taxonomy

Ниже — reasoning failure families для передачи в Expected Result / Verification Rubric. На этом этапе они являются **кандидатами downstream non-compensable failures**, а не окончательным scoring contract.

- `R-F01` — смешение `P/T/n` между разными shaft/section/state или electrical/mechanical domains.
- `R-F02` — ratio применяется без доказанной topology и явной numerator/denominator/sign convention.
- `R-F03` — supplied efficiency переносится на другой flow direction, regime, boundary или component path без evidence.
- `R-F04` — near-zero/steady `P/n` повышается до transient/start/brake peak torque без валидной transient model.
- `R-F05` — net/boundary shaft torque объявляется torque конкретного mesh без torque-balance identity.
- `R-F06` — `T_mesh` сочетается с `d/r` другого gear/mesh или неидентифицированной geometry.
- `R-F07` — equilibrium equations используются для unique reactions без determinacy и declared negligible-inertia/model assumptions.
- `R-F08` — знак/внешняя support reaction повышается до fault, contact-loss, bearing-life или acceptance diagnosis.
- `R-F09` — physical connectivity через coupling повышается до numerical equality `P/T/n` без transfer model и same-state evidence.
- `R-F10` — calculated demand сравнивается с неидентифицированным/неприменимым catalog/rated number как доказанная capacity.
- `R-F11` — invented service/reserve factor, rounding или арифметическая разница выдаётся за safety/rating method.
- `R-F12` — bounded D2 calculation или SkillsVault STOP превращается в component selection, acceptance или equipment-operation verdict.

---

# Unseen transfer expectation

Ученик должен перенести reasoning не только на A–J. Следующий Expected Result должен потребовать минимум один unseen drive case, где одновременно меняются:

- topology presentation;
- shaft/interface identity;
- ratio convention или direction;
- state status;
- достаточность FBD/determinacy;
- downstream capacity/authority temptation.

Успех на unseen case означает не обязательное получение числа. Полный успех возможен через `STOP UNSUPPORTED DERIVATION`, если ученик точно локализует missing evidence и сохраняет уже доказанные upstream results.

---

# Handoff в Expected Result

Practice Reasoning считается COMPLETE, когда downstream assessment может наблюдать:

1. topology до ratio;
2. same-object/same-state identity до `P=Tω`;
3. direction/regime applicability до η;
4. model-validity до near-zero/transient torque claim;
5. torque-balance identity до mesh force;
6. same-mesh geometry до `F_t`;
7. determinacy до reaction solve;
8. interface-side bookkeeping без connectivity→equality;
9. demand/capacity/authority separation;
10. bounded STOP как полноценный технический результат;
11. cross-checks по units/sign/energy/model;
12. explicit next evidence для заблокированного вывода.

Следующий слой:

`CRN-M-04 / D2 EXPECTED RESULT / v1 — define observable applied-mechanics transfer behaviors, evidence outputs, bounded calculation/STOP success conditions and candidate blocking failures for topology, identity, ratio/efficiency, mesh-force/reaction and demand-capacity discipline`
