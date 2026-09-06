# CRN-M-04 — Редукторы и муфты
# D1 Practice Reasoning v1
## Несколько допустимых beginner-траекторий для кейсов A–J

---

# Как пользоваться этим документом

Это **не answer key** и не набор «правильных фраз».

D1 проверяет, способен ли ученик удержать статус каждого утверждения и не перепрыгнуть из карты привода в design/rating/diagnosis/operation authority.

Базовая reasoning-цепочка:

```text
SYSTEM BOUNDARY
→ OBSERVED / DOCUMENTED DRIVE PATH
→ FUNCTION MAP
→ EVIDENCE / UNKNOWN REGISTER
→ FAMILY / EXACT IDENTITY STATUS
→ SOURCE ROLE + EXACT-APPLICABILITY CHECK
→ DISCRIMINATING EVIDENCE
→ BOUNDED CONCLUSION
→ STOP / HANDOFF
```

Для одного кейса допустимы разные сильные пути, если они сохраняют guards:

```text
VISIBLE / FAMILIAR LAYOUT ≠ PROVEN AS-BUILT ARCHITECTURE
CONNECTIVITY MAP ≠ OPERATING-MODE / ROTATION-DIRECTION PROOF
RATIO + MOTOR NAMEPLATE ≠ ACTUAL / PERMISSIBLE OUTPUT TORQUE
FAMILY ≠ EXACT DESIGN / SIZE / RATING / INTERCHANGEABILITY
FLEXIBLE COUPLING ≠ ANY MISALIGNMENT IS ACCEPTABLE
ГОСТ Р 50895-2025 ≠ ALL COUPLINGS
ISO 12925-1 ≠ INSTALLED LUBRICANT IDENTIFIED OR SUBSTITUTION AUTHORIZED
DAMAGE NAME ≠ ROOT CAUSE / ACCEPTANCE
MULTIPLE CONSISTENT SYMPTOMS ≠ ROOT CAUSE PROVEN
CORRECT DOCUMENT TITLE ≠ EXACT APPLICABILITY
OLD DRAWING / HISTORY ≠ CURRENT CONFIGURATION PROVEN
SKILLSVAULT STOP ≠ EQUIPMENT OPERATION COMMAND
```

Разрешённые bounded statuses:

```text
D1 MAP COMPLETE — CLAIM BOUNDED
D1 MAP PARTIAL — INTERNAL ARCHITECTURE NOT CONFIRMED
D1 FAMILY RECOGNIZED — EXACT IDENTITY NOT CONFIRMED
D1 EVIDENCE DESCRIBED — CAUSE / ACCEPTANCE NOT ESTABLISHED
D1 SOURCE ROLE IDENTIFIED — EXACT APPLICABILITY NOT YET CONFIRMED
D1 STOP — EXACT DEVICE / SOURCE / OEM DATA REQUIRED
OUTSIDE D1 — DESIGN / RATING / ACCEPTANCE / OPERATION AUTHORITY REQUIRED
```

---

# Что оценивается прежде всего

Сильный D1 reasoning packet показывает минимум восемь вещей:

1. граница рассматриваемой системы названа явно;
2. observed/documented/hypothesis/unknown не смешаны;
3. topology/connectivity не повышается до operating-state claim;
4. family recognition не повышается до exact identity/selection/rating;
5. kinematic ratio отделён от actual torque и permissible/rated torque;
6. source role отделён от exact applicability;
7. следующий evidence выбирается потому, что он различает конкурирующие объяснения/статусы;
8. conclusion заканчивается там, где заканчивается D1 authority.

---

# Кейс A — «Это просто мотор с редуктором»
## Reasoning path: boundary and observed interfaces before familiar architecture

### Допустимая траектория 1 — conservative observed map

Сначала зафиксировать только то, что видно/документировано:

```text
MOTOR
→ CLOSED CONNECTION NODE #1
→ REDUCER HOUSING / CONFIRMED EXTERNAL SHAFT INTERFACES
→ CLOSED CONNECTION NODE #2
→ EXECUTIVE MECHANISM
```

Тормозной узел оставить отдельным объектом `POSITION / SHAFT RELATION UNKNOWN`, пока не подтверждена его связь с конкретным валом.

### Допустимая траектория 2 — working hypothesis with explicit status

Можно построить знакомую гипотезу `motor → coupling → reducer → output`, **если** слова `coupling` и внутренняя схема редуктора помечены как `HYPOTHESIS / TO VERIFY`, а не как as-built fact.

### Discriminating evidence

Наиболее ценно:

- актуальный drawing / passport / exploded view;
- читаемая маркировка закрытых соединительных узлов;
- подтверждение, на каком валу стоит тормоз;
- фотографии/осмотр интерфейсов с обеих сторон корпуса.

### Bounded conclusion

```text
D1 MAP PARTIAL — EXTERNAL CONNECTIVITY BOUNDED.
INTERNAL ARCHITECTURE AND BRAKE POSITION NOT CONFIRMED.
```

### Blocking failures

- `A-F1`: familiar layout → proven architecture;
- `A-F2`: closed node → exact coupling type;
- `A-F3`: nearby brake → assumed shaft placement;
- `A-F4`: good D1 map → operation verdict.

---

# Кейс B — Стрелка на схеме «доказала» направление
## Reasoning path: topology is not operating state

### Допустимая траектория 1 — reinterpret the arrow

Читать стрелку как **маршрут объяснения связности**:

```text
MOTOR — COUPLING — REDUCER — OUTPUT
```

Она не доказывает текущий знак скорости каждого вала, направление power flow при торможении/обратном ходе или отсутствие внешнего момента.

### Допустимая траектория 2 — answer the narrower question only

Если вопрос только «в какой последовательности соединены элементы?», D1 может ответить без данных о режиме. Если вопрос сменился на «куда сейчас вращается этот вал?», нужен новый evidence packet.

### Discriminating evidence

- machine operating mode / command state;
- actual rotation observation or trusted direction indication;
- brake state;
- external load/motion state;
- exact kinematic arrangement if reversal is possible.

### Bounded conclusion

```text
D1 MAP COMPLETE FOR CONNECTIVITY.
OPERATING-MODE / ROTATION-DIRECTION CLAIM NOT ESTABLISHED.
```

### Blocking failures

- `B-F1`: diagram arrow → universal power-flow direction;
- `B-F2`: connectivity → current motion state;
- `B-F3`: normal mode assumption → all possible modes.

---

# Кейс C — «20:1 и 15 кВт — момент уже известен»
## Reasoning path: ratio status before torque status

### Допустимая траектория 1 — early STOP on configuration identity

Старый `20:1` сначала получает статус:

```text
HISTORICAL / SIMILAR DRIVE DATA
CURRENT CONFIGURATION APPLICABILITY NOT CONFIRMED
```

До подтверждения связи документа с текущим редуктором даже kinematic ratio current drive не установлен.

### Допустимая траектория 2 — bounded kinematic discussion

Допустимо объяснить **качественно**, что ratio связывает угловые скорости/кинематику в выбранной convention. Но нельзя из motor nameplate + historical ratio объявлять:

- фактически передаваемый момент;
- динамический максимум;
- допустимый/rated output torque;
- пригодность конкретного редуктора.

### Discriminating evidence

- exact reducer model/nameplate;
- current drawing/passport and ratio designation;
- actual operating state/load;
- exact rating/selection method and OEM data for a rating question.

### Bounded conclusion

```text
D1 SOURCE / STATUS GAP IDENTIFIED.
CURRENT RATIO, ACTUAL TORQUE AND PERMISSIBLE TORQUE ARE SEPARATE CLAIMS.
OUTSIDE D1 — RATING / SELECTION REQUIRES EXACT METHOD AND DEVICE DATA.
```

### Blocking failures

- `C-F1`: historical ratio → current ratio;
- `C-F2`: nameplate power → actual transmitted power;
- `C-F3`: kinematic ratio → actual torque;
- `C-F4`: estimated torque → permissible/rated torque.

---

# Кейс D — Четыре редуктора по одному абзацу
## Reasoning path: recognition cues without silent design completion

### Допустимая траектория 1 — family-level classification

На уровне принципа можно предложить:

```text
D1 → CYLINDRICAL / PARALLEL-AXIS FAMILY
D2 → BEVEL / ANGLE-CHANGE FAMILY
D3 → PLANETARY FAMILY
D4 → WORM FAMILY
```

с пометкой `FAMILY RECOGNITION`, если cues достаточны.

### Допустимая траектория 2 — refuse classification where cue quality is poor

Если описание/фото не позволяет отличить family надёжно, сильный ответ — `EXACT/FAMILY IDENTITY NOT CONFIRMED`, а не угадывание.

Для планетарной схемы наличие нескольких зацеплений не доказывает равного load sharing. Для червячной family само название не доказывает efficiency, self-locking или reversibility конкретного исполнения.

### Discriminating evidence

- internal arrangement / section drawing;
- exact model designation;
- tooth/shaft arrangement data;
- OEM description for the actual assembly.

### Bounded conclusion

```text
D1 FAMILY RECOGNIZED WHERE CUES SUPPORT IT.
EXACT DESIGN / LOAD SHARING / EFFICIENCY / REVERSIBILITY / RATING NOT ESTABLISHED.
```

### Blocking failures

- `D-F1`: family → exact model;
- `D-F2`: family → rating/interface;
- `D-F3`: multiple meshes → equal load sharing;
- `D-F4`: worm family → automatic self-locking claim.

---

# Кейс E — «Муфта гибкая, значит центровка не критична»
## Reasoning path: function versus allowed movement

### Допустимая траектория 1 — function-first

D1 может сказать, что муфта соединяет валы/части привода и что **некоторые** конструкции допускают определённые relative movements within their design envelope.

Из слова `flexible` не следует конкретный допустимый angular/parallel/axial displacement.

### Допустимая траектория 2 — observation-first

Зафиксировать observed relative displacement как evidence и остановиться до acceptance:

```text
RELATIVE POSITION CHANGE OBSERVED
→ TYPE / MAGNITUDE / METHOD / LIMIT UNKNOWN
→ EXACT COUPLING + ALIGNMENT PROCEDURE REQUIRED
```

### Discriminating evidence

- exact coupling model/designation;
- OEM installation/alignment procedure;
- measured angular/parallel/axial state using applicable method;
- current mounting/maintenance records.

### Bounded conclusion

```text
D1 EVIDENCE DESCRIBED — ALIGNMENT ACCEPTANCE NOT ESTABLISHED.
D1 STOP — EXACT DEVICE LIMITS / PROCEDURE REQUIRED.
```

### Blocking failures

- `E-F1`: flexible → unlimited movement tolerance;
- `E-F2`: visible displacement → numeric misalignment result;
- `E-F3`: family → acceptance limit;
- `E-F4`: D1 observation → adjustment instruction.

---

# Кейс F — «Поставим похожую муфту»
## Reasoning path: family scope is not interchangeability

### Допустимая траектория 1 — three-status separation

Разделить:

```text
FAMILY RECOGNITION
EXACT INSTALLED IDENTITY
REPLACEMENT INTERCHANGEABILITY
```

Даже если обе детали похожи на зубчатые муфты, третья строка остаётся отдельным engineering/OEM claim.

### Допустимая траектория 2 — source-role routing

ГОСТ Р 50895-2025 может быть **family/source anchor**, если actual component действительно входит в его scope. Это не делает его универсальным стандартом всех муфт и не подтверждает посадки, интерфейсные размеры, rating или compatibility двух конкретных изделий.

### Discriminating evidence

- full designation installed and spare coupling;
- drawings/interface dimensions/shaft data;
- rating/application requirements;
- OEM/passport/BOM/substitution approval path;
- exact standard scope/edition applicability.

### Bounded conclusion

```text
D1 FAMILY / SOURCE ROLE MAY BE IDENTIFIED.
INTERCHANGEABILITY NOT DEMONSTRATED.
OUTSIDE D1 — SELECTION / REPLACEMENT AUTHORITY REQUIRED.
```

### Blocking failures

- `F-F1`: visual similarity → exact identity;
- `F-F2`: family standard → interchangeability;
- `F-F3`: spare dimensions partly match → approved substitution;
- `F-F4`: SkillsVault STOP → field replacement command.

---

# Кейс G — Утечка и неизвестное масло
## Reasoning path: evidence and specification boundary

### Допустимая траектория 1 — evidence register

Разделить:

```text
OBSERVED: oil traces near seal area
HISTORY: “oil was topped up”
UNKNOWN: exact product / viscosity / volume / source / mixing history
HYPOTHESIS: possible leakage paths or maintenance causes — NOT DIAGNOSIS
```

### Допустимая траектория 2 — source-role route

ISO 12925-1 можно использовать как anchor для lubricant-specification boundary. Но current installed lubricant и equipment-specific prescription должны прийти из exact records/OEM/passport/manual or other applicable source.

### Discriminating evidence

- lubricant tag/batch/maintenance record;
- OEM/passport lubrication table;
- fill/top-up history;
- exact reducer identity;
- inspection evidence for leak location if diagnosis is required.

### Bounded conclusion

```text
D1 EVIDENCE DESCRIBED — ROOT CAUSE NOT ESTABLISHED.
D1 SOURCE ROLE IDENTIFIED — INSTALLED LUBRICANT / SUBSTITUTION NOT ESTABLISHED.
```

### Blocking failures

- `G-F1`: leak trace → seal failure root cause;
- `G-F2`: standard found → installed oil identified;
- `G-F3`: stock oil class → authorized top-up;
- `G-F4`: general specification → exact OEM prescription.

---

# Кейс H — «Шум + вибрация + тёплый корпус = зубья разрушены»
## Reasoning path: converging symptoms still need discrimination

### Допустимая траектория 1 — evidence-family separation

Сначала держать отдельно:

```text
OPERATOR REPORT
TEMPERATURE OBSERVATION
VIBRATION TREND CHANGE
LEAKAGE OBSERVATION
```

Согласованность повышает ценность расследования, но не создаёт root-cause proof автоматически.

### Допустимая траектория 2 — competing explanations

Сильный beginner packet может перечислить **несколько** классов гипотез без выбора победителя: load/state change, lubrication issue, alignment/interface issue, gear/bearing condition, measurement/context change и т.п. Это hypothesis register, не diagnosis.

ISO 10825-1 имеет роль damage nomenclature, если повреждение реально наблюдено; название damage не доказывает cause/acceptance.

### Discriminating evidence

- trend context + operating load/state;
- exact measurement method and comparison basis;
- targeted inspection/internal evidence where authorized;
- lubrication/alignment records;
- model-specific/OEM acceptance or diagnostic criteria.

### Bounded conclusion

```text
D1 EVIDENCE DESCRIBED — CONDITION CHANGE REQUIRES HANDOFF.
ROOT CAUSE / ACCEPTANCE / REMAINING LIFE NOT ESTABLISHED.
```

### Blocking failures

- `H-F1`: multiple symptoms → one cause;
- `H-F2`: damage term → cause;
- `H-F3`: trend change → acceptance failure without criterion;
- `H-F4`: no internal evidence → internal damage asserted.

---

# Кейс I — Правильный источник для неправильного вопроса
## Reasoning path: route by question, then prove applicability

### Допустимая траектория 1 — source-role table

```text
I1 general reducer requirements → ГОСТ 31592-2012 as candidate anchor
I2 gear-coupling family question → ГОСТ Р 50895-2025 as candidate anchor
I3 gear load-capacity calculation → ISO 6336 family / exact applicable method
I4 observed gear-damage terminology → ISO 10825-1 role
I5 lubricant specification boundary → ISO 12925-1 role + exact OEM prescription
I6 continue-operation decision → competent / regulatory / equipment-specific process
```

Каждое `candidate anchor` всё ещё требует edition/scope/component/configuration applicability check.

### Допустимая траектория 2 — equipment-specific route first

Если вопрос сразу про **конкретную** муфту/редуктор/смазку, сильный ответ может первым запросить OEM/passport/drawing/manual, а общий стандарт оставить как contextual/source-role layer.

### Discriminating evidence

- exact decision question;
- component identity/configuration;
- applicable document edition/scope;
- OEM/passport/manual references;
- competent operational authority when decision is operational.

### Bounded conclusion

```text
D1 SOURCE ROLE IDENTIFIED.
EXACT APPLICABILITY AND EQUIPMENT VERDICT REMAIN SEPARATE GATES.
```

### Blocking failures

- `I-F1`: title matches noun → right method for question;
- `I-F2`: general standard → exact device authority;
- `I-F3`: source role → applicability proven;
- `I-F4`: educational lookup → operational permission.

---

# Кейс J — Интегрированный D1 capstone
## Reasoning path: map what is known, rank the next evidence, stop at authority boundary

### Допустимая траектория 1 — evidence-first packet

Собрать:

```text
CONFIRMED:
- motor identity from nameplate;
- external interfaces motor → unknown coupling → reducer → unknown output connection → mechanism;
- complaint/history of changed noise;
- oil traces on housing.

DOCUMENTED BUT CURRENT APPLICABILITY UNKNOWN:
- old two-stage drawing;
- old ratio.

UNKNOWN:
- exact coupling model;
- exact/current reducer configuration;
- alignment state/limits;
- lubricant identity/history;
- acceptance criteria;
- operational authority decision.
```

После этого не выбирать root cause, а запросить highest-value evidence.

### Допустимая траектория 2 — source/router-first packet

Можно сначала разложить вопросы:

```text
ARCHITECTURE / IDENTITY → current drawing / passport / OEM
COUPLING FAMILY/SCOPE → exact identity + applicable coupling source
GEAR DAMAGE DESCRIPTION → nomenclature source only if damage observed
LUBRICATION → exact OEM prescription + maintenance record
CONDITION / ACCEPTANCE → competent diagnostic/inspection criteria
OPERATION → separate authorized process
```

Затем вернуться к drive map и показать, какие поля остаются `UNKNOWN`.

### Status-jump audit

Минимум шесть скачков, которые надо остановить:

1. old drawing → current as-built architecture;
2. old ratio → current ratio;
3. ratio → actual torque;
4. family/visual similarity → exact coupling identity;
5. general standard → exact applicability;
6. oil trace/noise → root cause;
7. multiple symptoms → acceptance verdict;
8. SkillsVault technical STOP → equipment permission/prohibition.

### Discriminating evidence

Наиболее полезный следующий пакет обычно включает:

- current reducer/coupling identification and current drawing/passport;
- maintenance/alignment/lubrication records;
- condition evidence with context and applicable criteria;
- responsible competent process for any operational decision.

Точный порядок может различаться в зависимости от реального decision question. D1 должен **объяснить, почему** выбранный evidence уменьшает ключевую неопределённость.

### Bounded conclusion

```text
D1 DRIVE / EVIDENCE / SOURCE MAP BUILT.
CURRENT CONFIGURATION, ROOT CAUSE, RATING, ACCEPTANCE AND OPERATION VERDICT NOT ESTABLISHED.
STOP / REQUEST EXACT DEVICE + CONDITION + AUTHORITY EVIDENCE.
```

Отдельный guard:

```text
SkillsVault STOP ≠ equipment-operation permission or prohibition
```

### Blocking failures

- `J-F1`: coherent story → proven current configuration;
- `J-F2`: old data → current engineering input;
- `J-F3`: symptoms → diagnosis;
- `J-F4`: source anchors → exact applicability;
- `J-F5`: technical map → operational verdict.

---

# Cross-case blocking-failure taxonomy

Reasoning должен уметь распознать минимум эти 12 семей провалов:

| ID | Blocking failure | Что делать вместо этого |
|---|---|---|
| `R-F01` | boundary leakage | назвать system boundary и соседние authority domains |
| `R-F02` | topology → operating state | запросить mode/rotation/load-state evidence |
| `R-F03` | ratio → actual/rated torque | разделить kinematic, transmitted и permissible claims |
| `R-F04` | family → exact identity/rating | запросить exact designation/OEM data |
| `R-F05` | coupling flexibility → alignment acceptance | запросить measured state + exact limits/procedure |
| `R-F06` | family standard → interchangeability | отделить scope от device/interface/substitution proof |
| `R-F07` | lubricant standard → installed/substitution claim | запросить OEM prescription + maintenance identity/history |
| `R-F08` | symptom/damage name → root cause/acceptance | держать evidence и diagnosis separate |
| `R-F09` | document title → exact applicability | проверить edition/scope/component/configuration/question |
| `R-F10` | old drawing/history → current configuration | запросить current revision/as-built mapping |
| `R-F11` | unknown → convenient nominal assumption | оставить unknown или явно bounded hypothesis |
| `R-F12` | SkillsVault STOP → equipment command | передать вопрос компетентной operational authority |

---

# Unseen transfer expectation

Новый D1-кейс считается успешно перенесённым, если ученик без подсказки способен:

1. провести разумную границу привода;
2. отделить observed/documented path от inferred architecture;
3. не читать стрелки связности как универсальный operating-state proof;
4. не выводить actual/rated torque из ratio и nameplate;
5. распознать family без повышения до exact identity/rating;
6. выбрать source **role** по вопросу и отдельно проверить applicability;
7. разделить observation/history/hypothesis/unknown;
8. назвать evidence, который реально различает конкурирующие статусы;
9. остановить numeric design/acceptance/diagnosis jump;
10. завершить bounded technical handoff без equipment-operation verdict.

Успех — не совпадение с одной формулировкой этого документа. Успех — **воспроизводимая дисциплина статусов и границ** на новом приводе.

---

# Итог D1 Practice Reasoning

Practice A–J имеет несколько допустимых reasoning paths и не превращён в единый answer key.

Следующий этап должен зафиксировать уже не содержание рассуждений, а **наблюдаемый результат обучения**: что ученик реально делает, какие ошибки блокируют успех и какой unseen-transfer evidence считается достаточным.
