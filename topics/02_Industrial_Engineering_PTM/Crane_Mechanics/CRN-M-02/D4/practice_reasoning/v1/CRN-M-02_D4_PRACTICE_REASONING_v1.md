# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 Practice Reasoning v1
## Несколько допустимых экспертных траекторий для кейсов A–J

---

# Как пользоваться этим документом

Это **не answer key**.

D4 проверяет не способность угадать одну фразу, а способность построить защищаемую цепочку:

```text
DECISION QUESTION
→ CLAIM CLASS
→ CONFIGURATION / BOUNDARY LOCK
→ INPUT PROVENANCE
→ METHOD APPLICABILITY
→ VERIFICATION / CROSS-CHECK / VALIDATION
→ SENSITIVITY / UNCERTAINTY
→ DISTINGUISHING EVIDENCE
→ BOUNDED CONCLUSION
→ AUTHORITY / SAFETY HANDOFF
```

Поэтому для одного кейса могут быть несколько сильных ответов, если они:

- решают один и тот же явно сформулированный decision question;
- не подменяют неизвестный input удобным nominal value;
- не смешивают as-found, approved/design и calculation configuration;
- не повышают статус модели только потому, что solver сошёлся;
- не называют cross-check validation'ом;
- не называют agreement двух моделей доказательством отсутствия common-mode error;
- не объявляют robustness без provenance scenario envelope;
- не превращают inspection или monitoring в remaining-life verdict;
- не превращают technical recommendation в equipment permission.

Карманные D4 guards:

```text
OBSERVED ≠ APPROVED
PLAUSIBLE ≠ APPLICABLE
SOLVER CONVERGED ≠ MODEL VALIDATED
PRIMARY VALUE LOCATED ≠ CURRENT-CASE INPUT APPLICABLE
PARENT MODEL VALIDATED ≠ CHILD SUBMODEL VALIDATED
TWO MODELS AGREE ≠ COMMON-MODE ERROR EXCLUDED
ROBUST IN CHOSEN SCENARIOS ≠ ROBUST OUTSIDE THAT ENVELOPE
NO DEFECT OBSERVED ≠ DEFECT ABSENT
ANALYSIS STOPPED ≠ OPERATION PERMITTED
TECHNICAL RECOMMENDATION ≠ AUTHORIZED EQUIPMENT DECISION
```

Допустимые bounded statuses:

```text
SUPPORTED FOR THIS CLAIM
CONDITIONALLY SUPPORTED
NOT DEMONSTRATED
METHOD NOT SHOWN APPLICABLE
INSUFFICIENT DATA
INCOMPATIBILITY / MODEL DEFECT IDENTIFIED
SOURCE / OEM / SPECIALIST REQUIRED
STOP / REQUEST EVIDENCE
```

---

# Что оценивается прежде всего

Сильный D4 reasoning packet показывает минимум девять вещей:

1. решение сформулировано **до** выбора метода;
2. объект и версия configuration зафиксированы;
3. inputs имеют provenance, а `UNKNOWN` не замаскирован;
4. выбран **минимально достаточный** метод, а не самый сложный;
5. scope/applicability метода доказаны отдельно от его prestige;
6. verification, cross-check и validation не смешаны;
7. uncertainty анализируется по способности изменить решение;
8. следующий datum выбирается по value of information;
9. conclusion ограничен evidence и передан правильной authority line.

---

# Кейс A — «Нам нужен один ответ»
## Reasoning path: decomposition before computation

### Сильная первая постановка

Исходный вопрос нельзя закрыть одним `YES/NO`, потому что в нём минимум четыре claim classes:

```text
A1 CONFIGURATION / STATE:
какая схема реально установлена и какая схема является approved design basis?

A2 LOAD-PATH / MECHANICS:
какие силы, реакции и кинематические отношения следуют из зафиксированной схемы?

A3 COMPONENT PROOF / ADEQUACY:
достаточен ли барабан для конкретного formal claim по применимому методу?

A4 CONDITION / REMAINING-LIFE / ACCEPTANCE:
что говорит inspection о наблюдаемом состоянии каната и что отдельно требуется
для discard / remaining-life / operational decision?
```

Сразу появляется пятый слой:

```text
A5 EQUIPMENT DECISION:
можно ли эксплуатировать / оставить схему без изменения?
```

Он находится вне learner authority.

### Claim → Method → Evidence → Authority → Gap

| Claim | Method / channel | Evidence | Authority line | Current gap |
|---|---|---|---|---|
| current geometry | configuration reconstruction | field inspection, photos, measurements | engineering record / equipment owner process | design status not confirmed |
| approved geometry | document/configuration control | OEM/passport/revision history | OEM/designer/authorized configuration control | supersession unknown |
| load path | rigid-body / mechanics model | locked geometry + loads + state | technical analysis | motion/configuration gaps |
| drum proof | exact applicable formal method + supporting models | exact source branch + inputs | competent designer/expert as applicable | exact proof package incomplete |
| rope condition | inspection / specialist evidence | inspection record, route/location mapping | qualified inspection/specialist process | scope and acceptance boundary |
| remaining life | separate life-assessment pathway | approved method + history + inputs | competent authorized party | method/input package absent |
| operation | safety/equipment decision process | all relevant evidence | responsible authorized person/organization | cannot be issued by analysis alone |

### Допустимая траектория 1

Остановить formal proof на configuration gate:

```text
STOP / REQUEST EVIDENCE:
approved configuration is not demonstrated.
```

При этом можно продолжить **bounded mechanics exploration** на явно помеченной `AS-FOUND MODEL`, если цель — понять чувствительность load path, а не объявить design adequacy.

### Допустимая траектория 2

Если immediate safety review требует понять, может ли observed geometry создавать qualitatively новый load path, построить два сценария:

```text
M1 = archived configuration
M2 = as-found configuration
```

и сравнить только совместимые outputs. Это не решает approval status, но повышает value of information: если outputs резко различаются, document/configuration closure становится ещё более приоритетным.

### Decision-sensitive unknowns

- какая configuration официально действующая;
- фактический rope path и support geometry;
- motion/load state для интересующего режима;
- applicability formal proof branch;
- inspection coverage / specialist interpretation;
- completeness duty history.

### Bounded conclusion example

```text
Текущие данные достаточны для разложения запроса и ограниченного as-found
mechanics review, но не демонстрируют approved configuration, formal drum proof,
remaining-life каната или operational permission. Следующий блокирующий datum —
configuration status / revision history. До его получения equipment-specific
решение должно быть передано по authority line; analysis stop не означает
permission to continue operation.
```

### Типичные провалы

- `A-F1`: один объект → один метод;
- `A-F2`: archived drawing автоматически объявлен approved/current;
- `A-F3`: FEA другого configuration используется как proof current object;
- `A-F4`: inspection + duty history превращаются в remaining-life число;
- `A-F5`: техническое письмо заканчивается эксплуатационным разрешением.

---

# Кейс B — Схема «почти та же»
## Reasoning path: configuration versions are separate evidence objects

### Три configuration records

Сильный ответ ведёт минимум три версии:

```text
B-C1 AS-FOUND:
что наблюдалось / измерялось сейчас.

B-C2 APPROVED / DESIGN:
что подтверждено как действующая design basis.

B-C3 CALCULATION:
какую геометрию реально использует модель.
```

`B-C1` может быть хорошо измерена и всё равно не быть `B-C2`.

### Почему одинаковое число supporting parts недостаточно

Даже если ideal reeeving ratio тот же, могут измениться:

- directions branch tensions;
- reaction vector на guide/sheave;
- fleet/lead angles;
- contact locations;
- drum entry geometry;
- torque path;
- support/bearing reactions;
- local stiffness/contact state;
- transient geometry during motion.

### Допустимая траектория 1 — qualitative reuse

Старая модель может остаться полезной как **qualitative limiting/cross-check model**, если явно сказано:

```text
OUTPUT REUSE ALLOWED:
ideal support count, gross kinematic relationship, rough directionality only.

OUTPUT REUSE NOT DEMONSTRATED:
current reactions, torque, local contact, proof quantities.
```

### Допустимая траектория 2 — scenario comparison

Если approved drawing status неизвестен, строится pair:

```text
Scenario OLD-DRAWING
Scenario AS-FOUND
```

с одинаково документированными внешними loads. Цель — не решить, что разрешено, а определить, **какие decision outputs чувствительны к configuration difference**.

### V&V plan

`VERIFICATION`:

- equilibrium closure;
- geometry consistency;
- rope connectivity / dead-end check;
- unit/sign convention;
- limiting cases.

`CROSS-CHECK`:

- independent vector construction;
- simplified symmetric case where applicable.

`VALIDATION / REAL-OBJECT ADEQUACY`:

- actual geometry measurements;
- confirmed motion state;
- configuration status/revision evidence;
- targeted measurement if reaction/load output is decision-driving.

### Bounded conclusion

```text
Equal supporting-part count does not demonstrate equivalence of load path.
The archived model may be retained only as a bounded qualitative cross-check.
Current proof quantities require a locked calculation geometry and evidence that
its relation to approved/as-found configuration is understood. Until motion state
and configuration provenance are resolved: CONDITIONALLY SUPPORTED for qualitative
mechanics only; formal proof claim = STOP / REQUEST EVIDENCE.
```

### Типичные провалы

- `B-F1`: same ratio → same reaction;
- `B-F2`: as-found automatically treated as approved;
- `B-F3`: model geometry never versioned;
- `B-F4`: motion state omitted from boundary conditions.

---

# Кейс C — «Квазистатика сошлась, значит всё нормально»
## Reasoning path: fidelity must follow the event time scale

### Первое разделение

Quasi-static model может быть adequate для:

- steady load distribution;
- slow-state equilibrium;
- reference/limiting checks;
- gross reaction sanity checks.

Но problem signature возникает **during short start/reversal event**. Поэтому decision question надо уточнить:

```text
C-Q1: steady-state load path?
C-Q2: transient peak / dynamic redistribution during reversal?
```

Успех на `C-Q1` не закрывает `C-Q2`.

### Что уже verified

Можно доказать, что выбранная quasi-static модель:

- закрывает equilibrium;
- корректно реализована;
- воспроизводит один steady-state datum в заданных условиях.

Это ещё не validation transient event.

### Минимальный следующий fidelity step

Не обязательно сразу строить «полный digital twin». Сильная траектория:

```text
1. оценить time scale события и sampling adequacy;
2. построить minimal transient lumped / rigid-body model;
3. включить только decision-driving inertia/compliance terms;
4. сравнить predicted timing/amplitude/order with synchronized evidence;
5. повышать fidelity только если decision remains sensitive.
```

### Discriminating evidence

Наиболее ценно не ещё одно steady-state measurement, а:

- синхронизированный high-rate transient channel;
- acceleration / velocity history;
- controller event timestamps;
- inertia provenance для dominating bodies;
- repeat event under controlled/allowed conditions, если это безопасно и разрешено.

### Alternative strong path

Если sampling rate доказан недостаточным для capture transient, допустимо **не строить сложную dynamic model до улучшения evidence**:

```text
INSUFFICIENT DATA — transient event not observable at required bandwidth.
```

Это сильнее, чем красивый transient model без возможности validation.

### Bounded conclusion

```text
Quasi-static model is verified for the modeled steady-state question and has a
steady-state cross-check. Adequacy for the reversal transient is NOT DEMONSTRATED.
Next step is a time-scale/sampling gate followed by the smallest transient model
capable of representing the decision-driving dynamics. Until then the transient
claim remains STOP / REQUEST EVIDENCE.
```

### Типичные провалы

- `C-F1`: converged equilibrium → transient adequacy;
- `C-F2`: one steady datum → universal validation;
- `C-F3`: jump straight to maximum-fidelity FEA without observability;
- `C-F4`: unknown inertia silently set to zero.

---

# Кейс D — Значение найдено в правильном стандарте
## Reasoning path: source authenticity is not applicability

### Applicability record

Номер документа и числовое значение — только начало. Для source-bound proof нужны как минимум:

```text
DOCUMENT / EDITION / STATUS
CLAUSE / TABLE / EQUATION / BRANCH
OBJECT / COMPONENT CLASS
OPERATING / CLASSIFICATION CONDITIONS
BRANCH-SELECTION INPUTS
VALUE / FACTOR PROVENANCE
UNITS / DEFINITIONS
EXCLUSIONS / LIMITS
CURRENT-CASE MAPPING
```

### Два независимых gates

```text
GATE 1 — SOURCE AUTHENTICITY:
мы действительно нашли primary source/value?

GATE 2 — CURRENT-CASE APPLICABILITY:
доказано ли, что именно этот branch/value относится к нашему configuration/use?
```

`GATE 1 = PASS` не компенсирует `GATE 2 = UNKNOWN`.

### Допустимая траектория 1 — exact-source stop

Если branch-selection inputs отсутствуют:

```text
PRIMARY SOURCE LOCATED
CURRENT-CASE APPLICABILITY = NOT DEMONSTRATED
FORMAL PROOF = STOP / REQUEST EVIDENCE
```

### Допустимая траектория 2 — open mechanics cross-check

Можно выполнить открытый mechanics sanity check:

- equilibrium;
- kinematics;
- direction/magnitude order;
- transparent dimensional reasoning.

Но его output маркируется:

```text
CROSS-CHECK ONLY — DOES NOT SUBSTITUTE FORMAL SOURCE-BOUND METHOD.
```

### Request package

Вместо угадывания отправляется запрос:

```text
- exact component/configuration identification;
- applicable document/edition/branch confirmation;
- missing classification/condition inputs;
- required OEM/design records;
- branch-dependent factors/criteria, where access/authority is needed;
- confirmation of who owns final proof decision.
```

### Sensitivity question

Если неизвестный branch может изменить criterion/method path, это не «маленькая uncertainty», а **method-selection uncertainty**. Она блокирующая.

### Bounded conclusion

```text
The primary value is authentic, but current-case branch applicability is not
shown because branch-selection inputs are incomplete. Open mechanics may be used
as a sanity cross-check only. Formal proof remains NOT DEMONSTRATED; request exact
source/application inputs from the competent source/OEM/designer instead of
reconstructing or guessing closed branch logic.
```

### Типичные провалы

- `D-F1`: screenshot primary → proof complete;
- `D-F2`: secondary note used to choose primary branch;
- `D-F3`: unknown classification replaced by typical value;
- `D-F4`: open mechanics result mislabeled formal proof.

---

# Кейс E — Красная зона на FEA
## Reasoning path: trace the load before reading the contour

### Сильный старт

До stress contour надо восстановить chain:

```text
REAL CONFIGURATION
→ GLOBAL LOAD MODEL
→ INTERFACE QUANTITIES
→ LOCAL BOUNDARY CONDITIONS
→ LOCAL FEA
→ POST-PROCESSING CRITERION
```

Если chain неполна, high-fidelity local mesh не повышает confidence автоматически.

### Parent→child interface contract

Пример полей:

| Interface item | Provenance | Uncertainty / check |
|---|---|---|
| branch tensions | global model / measured / unknown | source + equilibrium |
| resultant force/moment | derived from parent | force/moment balance |
| application location | geometry mapping | coordinate/version check |
| support stiffness | old project / current evidence | sensitivity required |
| load history / combinations | parent method | applicability / scenario |
| local geometry | CAD / scan / drawing | configuration match |

### Что mesh convergence действительно делает

Она может verify:

- discretization stability для выбранной quantity;
- numerical implementation trend;
- иногда localization behavior при корректной interpretation.

Она **не validates**:

- branch tensions;
- current support stiffness;
- current geometry;
- load scenario;
- material/criterion applicability;
- representativeness real object.

### Equilibrium transfer check

Сильный review требует:

```text
ΣF_parent-interface ↔ ΣF_child-applied
ΣM_parent-interface ↔ ΣM_child-applied
coordinate systems / signs / load directions locked
```

и объяснения, как distributed/contact representation сохраняет resultants.

### Decision sensitivity

Если variation support stiffness или rope-load distribution меняет hotspot quantity сильнее, чем mesh refinement, то next effort должен идти в **input/model-form evidence**, а не в ещё более мелкую сетку.

### Допустимый current output

Обычно при данных кейса можно оставить:

```text
HOTSPOT / RELATIVE RESPONSE IDENTIFICATION — CONDITIONALLY SUPPORTED
FORMAL PROOF RESULT — NOT DEMONSTRATED
```

Если даже load mapping не восстановлен, допустим и более жёсткий статус `INSUFFICIENT DATA`.

### Alternative strong path

Если FEA используется только для сравнения **двух вариантов внутри одного и того же parent load contract**, relative comparison может быть сильнее absolute proof claim — при условии, что comparison question не чувствителен к неизвестным boundary changes.

### Типичные провалы

- `E-F1`: red contour → unsafe/proof fail;
- `E-F2`: mesh convergence → validation;
- `E-F3`: parent uncertainty ignored;
- `E-F4`: old support stiffness treated current without sensitivity.

---

# Кейс F — Два расчёта совпали
## Reasoning path: independence has layers

### Что agreement действительно улучшает

Spreadsheet equilibrium и independent multibody implementation, если они независимо построены, снижают вероятность:

- одной и той же coding mistake;
- solver-specific bug;
- arithmetic/sign error в одной implementation;
- некоторых numerical implementation errors.

### Что agreement не проверяет

Обе команды могут совместно унаследовать:

- неправильный rope path;
- неверную geometry table;
- неправильную interpretation точки приложения;
- устаревшую configuration;
- ошибочный load assumption;
- одинаковую неверную source branch interpretation.

Это **common-mode upstream error**.

### Independence map

Сильный ответ различает:

```text
IMPLEMENTATION INDEPENDENCE
METHOD/FORMULATION INDEPENDENCE
INPUT-SOURCE INDEPENDENCE
CONFIGURATION-EVIDENCE INDEPENDENCE
VALIDATION-EVIDENCE INDEPENDENCE
```

В кейсе доказана в основном первая.

### Что проверять первым

Field photo ставит под сомнение geometry provenance. Поэтому следующий ход:

```text
VERIFY CONFIGURATION / GEOMETRY SOURCE FIRST
```

а не третья модель с тем же sketch.

### Discriminating evidence

Самый сильный datum:

- current field measurement / verified rope-path reconstruction;
- configuration/revision record после даты sketch;
- independent evidence actual guide/sheave position.

Он способен **одновременно изменить обе модели**.

### Confidence statement before/after

До photo:

```text
Independent implementations agree for the shared input/configuration set.
```

После photo:

```text
Implementation cross-check remains successful, but validation confidence for the
current equipment configuration is reduced because shared geometry provenance is
challenged. Both models require re-run or remapping after configuration closure.
```

### Alternative strong path

Если field photo itself ambiguous, не надо автоматически объявлять sketch wrong. Status:

```text
CONFIGURATION CONFLICT — DISTINGUISHING EVIDENCE REQUIRED
```

### Типичные провалы

- `F-F1`: two programs agree → validated;
- `F-F2`: photo instantly treated as approved configuration;
- `F-F3`: third solver added before source check;
- `F-F4`: confidence statement not downgraded after upstream conflict.

---

# Кейс G — Robust во всех сценариях
## Reasoning path: robustness is conditional on the envelope

### Четыре uncertainty classes

```text
U1 PARAMETER:
реальное физическое значение известно диапазоном.

U2 MEASUREMENT:
ошибка/разрешение/калибровка evidence.

U3 CONFIGURATION:
неизвестно, какая geometry/state/version соответствует объекту.

U4 MODEL-FORM:
сама структура модели может пропускать governing mechanism.
```

`LOW/NOMINAL/HIGH` без provenance не говорит, какой из этих классов покрыт.

### Что нужно до слова robust

- source/rationale каждой границы;
- coverage decision-driving states;
- correlations/dependencies;
- model-form challenge;
- criterion, что считается decision flip;
- treatment discrete configuration alternatives.

### Decision sensitivity ranking

Ранжировать надо не по derivative alone, а по сочетанию:

```text
possible range × decision influence × confidence in range
```

Если маленькая геометрическая uncertainty может переключить contact state, она может быть важнее большого, но линейного variation массы.

### Correlation trap

Независимое варьирование correlated inputs может:

- создавать physically impossible combinations;
- пропускать coupled worst case;
- искусственно расширять или сужать envelope.

Нужен dependency model / scenario logic.

### Model-form challenge

Competing method используется не для голосования, а чтобы спросить:

```text
Какая физика отсутствует в M1, но присутствует в M2,
и может ли именно она изменить decision?
```

### Highest-value information

Если transient state отсутствует в current envelope и способен перевернуть вывод, high-priority datum — evidence этого state: synchronized transient measurement / controller history / validated scenario definition, а не ещё одна цифра steady-state parameter.

### Bounded conclusion

```text
The conclusion is stable only inside the currently analyzed LOW/NOMINAL/HIGH set.
Because range provenance, correlation and transient/model-form coverage are not
demonstrated, a general robustness claim is NOT DEMONSTRATED. Next step is to
source the envelope and challenge the decision with the highest-sensitivity omitted
state/uncertainty before claiming robustness.
```

### Типичные провалы

- `G-F1`: three points → robust;
- `G-F2`: parameter uncertainty used as proxy for model-form uncertainty;
- `G-F3`: correlation ignored;
- `G-F4`: sensitivity ranked by percent change rather than decision flip.

---

# Кейс H — Осмотр хороший, история тяжёлая
## Reasoning path: evidence channels answer different questions

### Role separation

```text
INSPECTION:
что наблюдал конкретный method в конкретной coverage/window?

MONITORING / HISTORY:
какие события/режимы зарегистрированы и насколько полный record?

CLASSIFICATION / CONTEXT:
как описывается use/duty framework для соответствующего decision?

REMAINING-LIFE ANALYSIS:
отдельный formal pathway с собственным method/input/evidence contract.
```

### Meaning of `no defect observed`

Сильная формулировка:

```text
No reportable indication was observed within the stated inspection method,
coverage, access, sensitivity and time window.
```

Она не равна `defect absent`.

### Observability gate

Перед strong negative claim нужны:

- coverage relevant zone;
- access;
- method sensitivity / capability;
- qualification where required;
- mapping component/area;
- timing relative to events;
- reporting threshold semantics.

### How duty history matters

Heavy/changed duty может:

- trigger deeper review;
- change scenario set;
- change priority of inspection/modeling;
- identify missing history;
- challenge original assumptions.

Но не создаёт remaining-life number без approved/applicable method and inputs.

### Separate life-assessment request package

```text
- exact equipment/component identification;
- applicable life-assessment method/authority;
- design/material/detail data required by that method;
- validated load/duty history with completeness statement;
- inspection/NDT evidence at required quality;
- modifications/repairs/history;
- uncertainty treatment and responsible authority.
```

### Technical recommendation without permission

Допустимо:

```text
Recommend escalation / evidence closure / targeted specialist inspection / history
validation because current evidence does not demonstrate remaining life.
```

Недопустимо:

```text
Therefore operation may continue until next review.
```

### Типичные провалы

- `H-F1`: no visible defect → healthy;
- `H-F2`: partial monitoring → full duty spectrum;
- `H-F3`: generic fatigue concept → numeric life;
- `H-F4`: technical recommendation → operating permission.

---

# Кейс I — Аналитика и FEA «спорят»
## Reasoning path: harmonize outputs before comparing methods

### Claim-class harmonization

Сначала переписать outputs:

```text
M1 analytic:
global reaction / gross load transfer.

M2 FEA:
local structural/contact response under supplied interface loads/boundaries.

E3 inspection:
condition evidence at physical location.
```

После этого часть «конфликта» может исчезнуть: high local stress/response не обязана противоречить умеренной global reaction.

### Interface quantity

Нужна общая передача, например:

```text
parent/global resultant force + moment + application geometry
→ local/submodel boundary/load set
```

Именно её надо cross-check'ить по equilibrium and provenance.

### Что inspection может поддержать

Inspection может сделать local-effect hypothesis более plausible/supportive, если location/morphology/time history совместимы. Но она не доказывает:

- корректность FEA magnitude;
- formal proof criterion;
- exact causal mechanism;
- remaining life.

### Limiting/equilibrium checks

До выбора «победителя»:

- force/moment equilibrium;
- upper/lower bounds;
- simple local load estimate;
- geometry limiting cases;
- alternative boundary stiffness cases.

### Допустимые conflict statuses

```text
SCOPE MISMATCH
INPUT MISMATCH
INTERFACE DEFECT
MODEL-FORM DIFFERENCE
REAL LOCAL EFFECT COMPATIBLE WITH BOTH
MODEL DEFECT IDENTIFIED
INSUFFICIENT EVIDENCE
```

### Discriminating evidence

Сильный next datum должен разделять варианты. Например:

- measured interface reaction/load;
- current geometry/support stiffness;
- targeted local deformation/strain evidence;
- inspection mapping tied to load state.

### Alternative strong path

Если analytic output и FEA output после harmonization вообще не являются одной quantity, правильный ответ — **не сравнивать числа напрямую**. Сначала построить interface bridge.

### Bounded conclusion

```text
The apparent disagreement is not yet a demonstrated model conflict because the
methods answer different claim classes and their interface assumptions are only
partly documented. Global-to-local resultants and boundaries must be harmonized
and cross-checked before ranking models. Inspection supports a local-condition
question but does not validate FEA magnitude or formal proof.
```

### Типичные провалы

- `I-F1`: bigger FEA number wins;
- `I-F2`: inspection validates numerical stress;
- `I-F3`: unlike quantities averaged/compared directly;
- `I-F4`: model conflict declared before interface audit.

---

# Кейс J — Capstone: «Дайте заключение по механизму»
## Full D4 reasoning packet

Ниже — **одна сильная траектория**, но не единственная допустимая.

## A. DECISION QUESTIONS

Исходный management request раскладывается минимум на:

```text
J-Q1 CONFIGURATION:
what is the current as-found rope/guide configuration?

J-Q2 APPROVAL STATUS:
what configuration is the current approved/design basis?

J-Q3 STEADY MECHANICS:
is the steady load-path model adequate for steady-state claims?

J-Q4 TRANSIENT MECHANICS:
what explains/represents the unstable-spooling transient event?

J-Q5 DRUM LOCAL RESPONSE:
what can the old FEA say about current geometry/loading?

J-Q6 ROPE CONDITION:
what is actually observed and within what inspection capability?

J-Q7 FORMAL PROOF / ACCEPTANCE / LIFE:
are exact applicable source/method/inputs complete? — currently no.

J-Q8 EQUIPMENT DECISION:
can operation continue as-is? — authority/safety decision, not analytical output.
```

## B. CONFIGURATION LOCK + UNKNOWN REGISTER

### Known / observed

- current rope path has been reconstructed from inspection;
- archived OEM drawing shows different guide geometry;
- local wear pattern observed;
- one monitoring channel contains a transient spike;
- old FEA corresponds to previous guide geometry.

### Unknown / unresolved

```text
U-J1 current approved configuration / modification status
U-J2 exact timing synchronization across channels
U-J3 transient event state / acceleration / relevant inertia inputs
U-J4 provenance of old FEA loads
U-J5 current mapping of old FEA boundaries to as-found system
U-J6 exact source-bound proof branch/inputs
U-J7 specialist interpretation/NDT where required
U-J8 operational authority decision
```

Ни один `U-J*` не заменяется nominal value молча.

## C. METHOD / SOURCE MAP

### Channel M1 — configuration control

Question: what geometry/state is current and approved?

Evidence: field reconstruction + OEM drawing + modification/revision records.

Current status:

```text
AS-FOUND = PARTLY SUPPORTED
APPROVED STATUS = NOT DEMONSTRATED
```

### Channel M2 — steady global mechanics

Question: gross steady load path/reaction.

Current evidence: equilibrium closes.

Allowed output:

```text
SUPPORTED FOR MODELED STEADY CONFIGURATION — BOUNDED
```

Not allowed: transient proof/current approved design proof.

### Channel M3 — transient model/monitoring

Question: short unstable-spooling event.

Current status:

```text
NOT DEMONSTRATED
```

because transient model absent and timing synchronization unverified.

### Channel M4 — drum FEA/local response

Question: local structural response for supplied previous-geometry loads/boundaries.

Current status:

```text
HISTORICAL / CONDITIONAL REFERENCE ONLY
```

until parent load provenance and geometry mapping are restored.

### Channel M5 — condition inspection

Question: observed rope condition in inspection scope.

Current status:

```text
OBSERVATION SUPPORTED WITHIN METHOD/COVERAGE
```

No discard/life/specialist verdict inferred.

### Channel M6 — formal source/OEM pathway

Question: formal proof/applicability and equipment-specific design basis.

Current status:

```text
SOURCE / OEM / SPECIALIST REQUIRED
```

## D. INPUT PROVENANCE

Decision-driving table:

| Input | Status | Consequence |
|---|---|---|
| current rope path | MEASURED/RECONSTRUCTED | usable for bounded as-found mechanics |
| approved guide geometry | UNKNOWN | blocks approved-configuration claim |
| steady external load state | PARTLY CONFIRMED | supports only bounded steady case |
| transient acceleration/state | UNKNOWN | blocks transient adequacy |
| monitoring timestamp sync | UNKNOWN | spike causality/timing weak |
| old FEA parent loads | SECONDARY/INCOMPLETE | blocks current proof use |
| exact formal branch inputs | UNKNOWN | blocks source-bound proof |
| specialist rope condition interpretation | NOT AVAILABLE | blocks specialist/acceptance conclusions |

## E. V&V / CROSS-CHECK PLAN

### Steady mechanics

`VERIFICATION`:
- equilibrium;
- geometry/connectivity;
- sign/unit checks;
- limiting cases.

`CROSS-CHECK`:
- independent vector/free-body calculation;
- alternate implementation using same **explicitly versioned** configuration.

`VALIDATION`:
- selected field measurement/reaction if decision-driving;
- confirm current geometry/state.

### Transient channel

Before complex model:

```text
sampling/timestamp adequacy → event alignment → minimal transient model →
independent timing/amplitude cross-check → validation against synchronized data
```

### Old FEA

Before interpreting contours:

```text
restore parent loads → interface equilibrium → geometry/version mapping →
boundary sensitivity → only then assess local output/criterion
```

## F. SENSITIVITY / UNCERTAINTY

Top decision-sensitive uncertainties are likely:

1. approved/current configuration mismatch;
2. transient state and time synchronization;
3. branch/load provenance feeding FEA;
4. support/boundary representation;
5. formal method branch/applicability.

These outrank mesh refinement because they can change the **question or model path**, not just result precision.

Robustness cannot be claimed until scenario envelope includes credible configuration/transient alternatives and their provenance.

## G. EVIDENCE CONFLICTS

### OEM drawing vs field geometry

Status:

```text
CONFIGURATION CONFLICT — DOES NOT PROVE EITHER CURRENT APPROVAL OR FIELD ERROR
```

Need modification/revision control evidence.

### Steady model vs transient spike

Not necessarily conflict. They address different time scales.

### Old FEA vs current wear pattern

Spatial compatibility may increase interest in local mechanism, but:

```text
COMPATIBILITY ≠ FEA VALIDATION ≠ CAUSAL PROOF
```

### Monitoring spike alone

Without timestamp sync / independent channel:

```text
EVENT EVIDENCE = PLAUSIBLE / INCOMPLETE
```

## H. BOUNDED CONCLUSIONS

Possible strong set:

```text
J-C1 Current as-found rope path:
CONDITIONALLY SUPPORTED by field reconstruction.

J-C2 Current approved configuration:
NOT DEMONSTRATED — OEM/configuration-control evidence required.

J-C3 Steady-state load path:
SUPPORTED FOR THE EXPLICITLY MODELED AS-FOUND STEADY CASE ONLY.

J-C4 Transient unstable-spooling event:
NOT DEMONSTRATED — synchronized transient evidence/model required.

J-C5 Old drum FEA as current proof:
METHOD / INPUT / CONFIGURATION APPLICABILITY NOT DEMONSTRATED.

J-C6 Rope condition:
OBSERVATION SUPPORTED WITHIN VISUAL INSPECTION SCOPE;
discard/remaining-life/specialist conclusions not made.

J-C7 Formal proof / remaining life:
STOP / REQUEST EVIDENCE.

J-C8 Continue operation as-is:
OUTSIDE ANALYTICAL AUTHORITY; refer immediately through safety/equipment decision line.
```

## I. REQUESTED EVIDENCE — value-of-information order

A defensible priority order:

1. current approved configuration / modification history;
2. synchronization and raw transient monitoring metadata;
3. exact current geometry and event-state measurements;
4. old FEA parent-load/interface provenance;
5. exact formal proof branch/input package;
6. targeted qualified specialist inspection/NDT where the competent pathway requires it.

Order can change if immediate safety governance requires a different first action. That is an authority/safety process, not a reason to fabricate analysis inputs.

## J. AUTHORITY / SAFETY HANDOFF

Handoff packet must distinguish:

```text
ANALYSIS HAS SHOWN:
- bounded steady mechanics for an explicit model configuration;
- existence of configuration/evidence conflicts;
- locations of high-value missing evidence;
- limitations of old FEA and unsynchronized monitoring.

ANALYSIS HAS NOT SHOWN:
- approved current configuration;
- transient adequacy;
- current formal proof;
- discard / remaining-life verdict;
- permission to operate as-is.
```

Recipients may include, as applicable:

- OEM/designer/configuration authority;
- competent calculation/proof specialist;
- qualified inspection/NDT specialist;
- person/organization responsible for safe operation and operational decisions.

### Critical final guard

```text
STOP / REQUEST EVIDENCE
```

означает только, что **аналитическая цепочка не имеет права продолжать claim**.

Это не означает:

```text
CONTINUE OPERATION UNTIL DATA ARRIVES
```

Operational/safety action должен определяться отдельно компетентной authority line, особенно если observed evidence создаёт потенциально safety-relevant uncertainty.

### Alternative valid J path

Сильный эксперт может выбрать более консервативный порядок и остановить почти все calculations сразу на unresolved approved-configuration status. Это допустимо, если он объяснит, какие **bounded exploratory calculations** всё ещё имеют value and do not create false authorization.

Другой сильный путь — продолжить as-found transient evidence characterization до formal configuration closure, если цель узко сформулирована как `event characterization`, а не design acceptance. Оба пути допустимы при строгом claim labeling.

### Типичные провалы J

- `J-F1`: management urgency collapses claim classes;
- `J-F2`: current field geometry silently becomes approved design;
- `J-F3`: steady model used for transient event;
- `J-F4`: old FEA reused because mesh quality is good;
- `J-F5`: wear pattern validates FEA magnitude;
- `J-F6`: unsynchronized spike treated causal;
- `J-F7`: exact source gaps reconstructed from memory/secondary material;
- `J-F8`: no visible critical defect → life adequate;
- `J-F9`: analysis stop → operation permitted;
- `J-F10`: technical recommendation issued as equipment decision.

---

# Cross-case failure taxonomy

Эти failures должны стать будущими observable blocking behaviors для Expected Result / Verification Rubric:

```text
BF-D4-01  QUESTION COLLAPSE
           Multiple claim classes collapsed into one method/output.

BF-D4-02  CONFIGURATION COLLAPSE
           As-found / approved / calculation configurations treated as identical
           without evidence.

BF-D4-03  HIDDEN INPUT INVENTION
           Unknown decision-driving input silently replaced by nominal/typical value.

BF-D4-04  SOURCE APPLICABILITY LEAP
           Source/value authenticity treated as current-case branch applicability.

BF-D4-05  FIDELITY STATUS ERROR
           Higher fidelity or solver convergence treated as validation.

BF-D4-06  PARENT-CHILD BREAK
           Local model interpreted without auditable parent load/boundary interface.

BF-D4-07  CROSS-CHECK → VALIDATION LEAP
           Independent implementation agreement treated as real-object validation.

BF-D4-08  COMMON-MODE BLINDNESS
           Shared configuration/source/input error not challenged.

BF-D4-09  UNSOURCED ROBUSTNESS
           Robustness claimed without scenario/range/model-form provenance.

BF-D4-10  EVIDENCE-ROLE COLLAPSE
           Inspection/monitoring/classification/proof/life roles mixed.

BF-D4-11  AUTHORITY LEAK
           Technical analysis turned into operation/modification/acceptance permission.

BF-D4-12  STOP-PERMISSION CONFUSION
           Analysis stop interpreted as permission for continued operation.
```

Не каждый будущий rubric обязательно обязан использовать именно эти IDs, но blocking semantics должны сохраниться.

---

# Transfer expectations after Practice Reasoning

После A–J ученик должен быть способен на **новом, ранее не виденном кейсе**:

1. сначала разложить management question на claim classes;
2. зафиксировать configuration versions;
3. построить input provenance register;
4. выбрать smallest adequate method и доказать scope;
5. сформулировать V&V plan без status inflation;
6. назвать хотя бы один plausible common-mode error;
7. найти decision-sensitive uncertainty;
8. запросить datum с максимальным value of information;
9. harmonize competing methods before comparison;
10. выдать bounded conclusion;
11. остановить claim, если evidence chain не замкнута;
12. передать equipment/safety decision по правильной authority line.

Known-case fluency A–J сама по себе transfer не доказывает.

---

# Что этот Reasoning намеренно не делает

Он не:

- реконструирует закрытые таблицы, коэффициенты или branch logic;
- выполняет фактический proof-of-competence конкретного механизма;
- выдаёт numeric remaining-life/fatigue-life;
- задаёт discard/acceptance criteria из неполных источников;
- подменяет specialist NDT interpretation;
- разрешает эксплуатацию, ремонт, rerouting, redesign или modification реального ПС;
- объявляет единственную правильную wording/trajectory для кейсов A–J.

Следующий этап:

`CRN-M-02 / D4 EXPECTED RESULT / v1`

Он должен превратить этот reasoning layer в **наблюдаемые экспертные behaviors и evidence outputs**, включая unseen transfer и признание `STOP / REQUEST EVIDENCE` полноценным успешным результатом там, где proof chain не замкнута.
