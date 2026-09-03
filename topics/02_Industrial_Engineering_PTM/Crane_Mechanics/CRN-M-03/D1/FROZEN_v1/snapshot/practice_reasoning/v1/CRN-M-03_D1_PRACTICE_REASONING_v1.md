# CRN-M-03 — Крюковые подвески и захваты
# D1 Practice Reasoning v1
## Несколько допустимых beginner reasoning paths для Practice A–J

---

# Как пользоваться этим слоем

Это **не answer key** и не набор эксплуатационных verdict'ов.

Цель Practice Reasoning — показать, как один и тот же D1-кейс может быть разобран несколькими корректными путями, если learner сохраняет доказательную дисциплину:

```text
OBJECT MAP
→ LOAD-PATH MAP
→ HOLDING PRINCIPLE
→ OBSERVATION / UNKNOWN REGISTER
→ SOURCE ROLE + EXACT APPLICABILITY
→ BOUNDED CONCLUSION
→ STOP / EVIDENCE REQUEST, ЕСЛИ ЦЕПОЧКА НЕ ЗАМКНУТА
```

Разные ответы могут быть сильными, если они:

- не сливают разные объекты в одну деталь;
- не превращают визуальную картинку в proof;
- не придумывают равное распределение нагрузки;
- не назначают latch/keeper универсальную силовую функцию;
- не переносят правила между похожими устройствами без exact applicability;
- не подменяют device/OEM/competent process общими словами;
- не создают числовые design/discard/holding-force/acceptance критерии;
- явно маркируют неизвестное;
- умеют остановить **неподтверждённый вывод**, не притворяясь authority реального оборудования.

Сильный D1-ответ не обязан заканчивать задачу числом. Иногда лучший результат:

```text
D1 MAP COMPLETE — CLAIM BOUNDED
```

или:

```text
D1 STOP — EXACT DEVICE / SOURCE / OEM DATA REQUIRED
```

При этом всегда сохраняется guard:

```text
SKILLSVAULT STOP ≠ EQUIPMENT-OPERATION AUTHORITY
```

---

# Кейс A — Один рисунок, три разных объекта
## Reasoning: сначала разрезать систему, потом читать путь силы

### Что известно

На рисунке различимы нижняя крановая блоковая сборка, крюк с latch/keeper, отдельная траверса, два стропа и груз.

Ключевая ошибка — назвать всё «крюком с грузом» и потерять интерфейсы между самостоятельными объектами.

### Допустимая траектория 1 — boundary around suspended chain

Можно выбрать границу:

```text
крановый силовой интерфейс
→ hook suspension
→ hook / master-link interface
→ detachable spreader
→ sling branches
→ load interfaces
→ load
```

Здесь learner явно отделяет:

- crane-integral hook suspension;
- detachable below-hook attachment;
- sling system;
- load.

Это уже полезно, потому что у каждого слоя могут быть свои identification, compatibility, inspection и authority sources.

### Допустимая траектория 2 — interface-first map

Вместо «что за детали?» можно начать с интерфейсов:

```text
I1 crane ↔ hook suspension
I2 hook ↔ master link
I3 spreader ↔ sling branches
I4 sling ↔ load
```

После этого задаётся вопрос: **какое утверждение относится к какому интерфейсу?**

Например, факт «крюк виден и на нём что-то висит» не закрывает:

- совместимость master link с конкретным hook geometry;
- пригодность траверсы к конкретной работе;
- пригодность стропов;
- допустимость всей assembled configuration.

### Evidence request

Для реального compatibility/acceptance вопроса могут понадобиться:

- exact identification hook suspension / hook;
- exact attachment model/configuration;
- attachment passport/OEM documentation;
- sling identification/documentation;
- applicable crane/load-chart/operational documentation;
- компетентный процесс, если вопрос выходит за D1.

### Bounded conclusion

```text
D1 MAP COMPLETE — system boundary and interfaces identified.
Whole-system compatibility / acceptance is NOT DEMONSTRATED by the drawing alone.
```

### Типичные провалы

- `A-F1`: весь suspended chain объявлен одной деталью;
- `A-F2`: наличие физического соединения превращено в compatibility;
- `A-F3`: source одного объекта автоматически перенесён на другой;
- `A-F4`: D1 classification превратился в return-to-service verdict.

---

# Кейс B — Симметрия на рисунке
## Reasoning: topology известна, load share — нет

### Что реально видно

Можно уверенно увидеть **ветвление и последующее слияние** пути нагрузки:

```text
upper interface
        ↓
      split
     ↙     ↘
 branch L  branch R
     ↘     ↙
      merge
        ↓
 cross-member / hook path
```

Это топология load path. Она ещё не задаёт численное распределение силы.

### Допустимая траектория 1 — pure qualitative map

На D1 достаточно сказать:

```text
Two load-carrying branches are visually present.
Equal load sharing is UNKNOWN.
```

В unknown register идут:

- actual geometry;
- stiffness/compliance;
- clearances;
- contact states;
- manufacturing/assembly differences;
- load application eccentricity;
- current branch force distribution.

### Допустимая траектория 2 — question escalation

Если следующий инженерный вопрос **действительно** требует branch loads, learner не угадывает `50/50`, а формирует request:

```text
Need geometry/configuration + applicable mechanical model / measurement basis
before quantitative branch-force claim.
```

На более высоком depth это может стать расчётной задачей, но D1 должен только правильно поставить вопрос и сохранить неизвестное.

### Discriminating evidence

Полезнее всего evidence, которое меняет статус «симметрия на фото»:

- confirmed geometry/configuration drawing;
- actual dimensions/alignment where relevant;
- support/contact conditions;
- applicable design/OEM model;
- approved calculation/model if the question is quantitative.

### Bounded conclusion

```text
Branch/merge topology is identified.
Visual symmetry does not demonstrate equal load sharing.
Quantitative distribution remains outside D1 without an applicable model/evidence basis.
```

### Типичные провалы

- `B-F1`: `symmetry → 50/50`;
- `B-F2`: ветвление нарисовано как одна serial chain;
- `B-F3`: неизвестные stiffness/contact silently ignored;
- `B-F4`: qualitative map назван proof.

---

# Кейс C — Защёлка закрыта, груз лёгкий
## Reasoning: три «успокаивающих» факта не образуют acceptance

### Evidence-status split

Наблюдения:

- строп находится в крюке;
- контакт визуально смещён ближе к носку;
- latch визуально закрыт;
- груз описан как относительно лёгкий по сравнению с некоторой маркировкой крана.

Неизвестно:

- exact hook/latch model and function;
- approved seating/contact conditions;
- applicability видимой маркировки к текущей конфигурации;
- whole-system compatibility;
- device/OEM restrictions.

### Допустимая траектория 1 — contact-path question

Можно сказать:

```text
Observed contact differs from a simple centered-seat mental model.
Therefore the force-path question changes and exact applicability must be checked.
```

Это **не** означает автоматически «опасно» или «допустимо»; D1 только распознаёт, что другой контакт может означать другой load path.

### Допустимая траектория 2 — latch-role gate

Отдельно:

```text
LATCH CLOSED = observed state.
LATCH LOAD-BEARING / ACCEPTANCE ROLE = UNKNOWN until device-specific source confirms it.
```

Нельзя превращать закрытую защёлку в доказательство правильной посадки.

### Evidence request

- exact hook/hook-suspension identification;
- OEM/passport/device documentation on permitted interface/seating;
- exact role/requirements for latch/keeper;
- applicable equipment/load configuration documentation;
- competent process for field acceptance.

### Bounded conclusion

```text
Observed seating and closed latch are documented, but compatibility/acceptance is NOT DEMONSTRATED.
D1 STOP — exact device/source/OEM evidence required for the real acceptance question.
```

### Типичные провалы

- `C-F1`: closed latch = accepted seating;
- `C-F2`: low load = any contact is acceptable;
- `C-F3`: crane capacity marking = whole-system compatibility;
- `C-F4`: D1 observation becomes operational permission.

---

# Кейс D — Пять устройств, пять причин удержания
## Reasoning: classification first, capacity never by appearance

### D1 — C-shaped geometric engagement

Reasonable family:

```text
POSITIVE / GEOMETRIC ENGAGEMENT
```

Unknown examples:

- exact geometry range;
- intended load shape/orientation;
- device configuration;
- OEM applicability.

Classification does not prove capacity or acceptance.

### D2 — Clamp / friction family

Reasonable family:

```text
CLAMPING / FRICTION-DEPENDENT HOLDING
```

Critical unknowns can include exact mechanism, contact condition, required clamping state and device-specific load limitations. D1 does not invent coefficients or holding-force equations.

### D3 — Magnetic holding

Reasonable family:

```text
MAGNETIC HOLDING
```

Exact suitability may depend on device-specific conditions and load properties. «Сталь выглядит подходящей» не is enough for acceptance.

### D4 — Vacuum holding

Reasonable family:

```text
VACUUM / PRESSURE-DIFFERENCE HOLDING
```

Visible cup contact is only one observation. Required system state is exact-device specific.

### D5 — Unknown jaw device

Strong D1 answer:

```text
APPEARANCE SUGGESTS clamp-like family,
BUT exact holding principle / mechanism = NOT CONFIRMED.
```

This is deliberately weaker than copying D2 rules.

### Alternative valid path

Learner may classify D5 only as:

```text
MECHANICAL JAW DEVICE — HOLDING PRINCIPLE NOT YET CONFIRMED
```

That is also strong if evidence is insufficient.

### Evidence request

For D5 first request exact model/nameplate/passport/OEM documentation. The correct next question is identification, not an invented inspection checklist.

### Bounded conclusion

```text
Holding-principle families can be classified qualitatively.
Holding capacity, acceptance and operating limits remain device/source bound.
```

### Типичные провалы

- `D-F1`: visual category → exact mechanism;
- `D-F2`: classification → capacity claim;
- `D-F3`: one checklist transferred to magnet/vacuum/clamp alike;
- `D-F4`: D5 automatically inherits D2 rules.

---

# Кейс E — «Все индикаторы вроде нормальные»
## Reasoning: visible state is a subset of required state

### Observation register

Known:

- vacuum-type device;
- some indicators appear active;
- cups visually contact the surface.

Unknown:

- exact device model;
- required indication/state logic;
- load/surface applicability;
- maintenance/check status;
- other required device-specific conditions.

### Допустимая траектория 1 — incomplete state model

```text
Observed state = PARTIAL.
Required complete state model = UNKNOWN because exact device/source is missing.
```

Это честный D1 conclusion. Не нужно придумывать «универсальный набор признаков».

### Допустимая траектория 2 — source-first

Если exact model можно установить, следующий шаг:

```text
identify device
→ obtain OEM/passport instructions
→ determine required states/conditions
→ competent process applies them
```

D1 не выполняет поле inspection/acceptance вместо этого процесса.

### Evidence request

- readable model/nameplate/serial;
- current OEM/device instructions;
- load/surface identification relevant to those instructions;
- required device-specific state/indication evidence;
- maintenance/inspection records where the applicable process requires them.

### Bounded conclusion

```text
Vacuum holding principle is identified.
Some visible states are observed, but completeness of the required holding state is NOT DEMONSTRATED.
D1 STOP — exact device/source evidence required.
```

### Типичные провалы

- `E-F1`: visible indicator = complete verification;
- `E-F2`: cups touching surface = holding capacity proven;
- `E-F3`: universal checklist invented;
- `E-F4`: maintenance history guessed.

---

# Кейс F — «Они же одинаковые»
## Reasoning: similarity is evidence for comparison, not interchangeability

### What similarity actually proves

It supports only:

```text
THE DEVICES APPEAR SIMILAR IN SOME OBSERVED FEATURES.
```

Color, rough geometry and one matching nominal number do not prove exact model/configuration/interface equivalence.

### Допустимая траектория 1 — identification gate

For Device A exact model/serial is readable. For Device B it is not.

Strong next step:

```text
Device B exact identity = blocking unknown.
Interchangeability assessment cannot start from category similarity alone.
```

### Допустимая траектория 2 — comparison matrix after identity

If identity becomes available, compare at least:

- model/revision/configuration;
- intended load/application family;
- interface geometry;
- holding mechanism;
- device-specific operating restrictions;
- required documentation/markings;
- any OEM-defined compatibility/selection conditions.

This is a **comparison framework**, not a generic acceptance criterion.

### Evidence request

- full nameplate/model/serial of both devices;
- current OEM/passport documentation;
- current job/load/configuration data relevant to selection;
- competent confirmation where required.

### Bounded conclusion

```text
Observed similarity and one nominal marking do not demonstrate interchangeability.
D1 STOP — exact identity and device-specific applicability evidence required.
```

### Типичные провалы

- `F-F1`: same color/model family = same device;
- `F-F2`: same nominal number = same interface/holding principle;
- `F-F3`: one readable passport transferred to the unreadable device;
- `F-F4`: substitution decision issued by SkillsVault.

---

# Кейс G — Правильный документ для неправильного вопроса
## Reasoning: source role before source number

### G1 — Parts/nomenclature of a hook

Question class:

```text
VOCABULARY / NOMENCLATURE
```

Relevant D1 anchor can include `ISO 1837:2003` for lifting-hook nomenclature, with exact applicability still checked for the object/question.

No design proof or acceptance follows from correct terminology.

### G2 — Formal proof of a defined forged steel hook class

Question class:

```text
FORMAL PROOF / DESIGN METHOD
```

`ISO 17440:2014` is relevant as a **scope boundary** for certain forged steel hooks, but D1 does not perform the proof or reconstruct closed requirements. Exact object/class/method applicability must be confirmed and the task belongs outside beginner D1.

Reasonable status:

```text
OUTSIDE D1 — EXACT PROOF METHOD / COMPETENT DESIGN PROCESS REQUIRED
```

### G3 — Grab bucket with ISO 17096 proposed

This is the deliberate source-scope trap.

D1 Source Gate carries an explicit guard that `ISO 17096:2015` excludes buckets/grabs/grab buckets from its scope.

Therefore:

```text
CATEGORY WORD "lifting attachment" ≠ exact standard applicability.
ISO 17096 cannot be used as grab-bucket authority merely by analogy.
```

Next source role may be exact device/OEM, another applicable standard, regulatory/competent process, depending on the actual question.

### General source reasoning card

```text
WHAT QUESTION?
→ WHAT SOURCE ROLE?
→ WHAT DOCUMENT / EDITION?
→ DOES ITS SCOPE MATCH THIS OBJECT / CONFIGURATION / QUESTION?
→ ONLY THEN USE IT WITHIN THAT ROLE.
```

### Bounded conclusion

```text
Correct source title or category is not itself an equipment verdict.
Exact applicability is a separate evidence gate.
```

### Типичные провалы

- `G-F1`: nomenclature source → proof source;
- `G-F2`: proof scope → whole hook suspension;
- `G-F3`: ISO 17096 → grab bucket by analogy;
- `G-F4`: correct standard number → operational permission.

---

# Кейс H — Груз меньше цифры крана
## Reasoning: system mass and equipment capacity are not one generic subtraction

### System map

```text
crane hook suspension
→ spreader
→ load-gripping attachment
→ load
```

All suspended masses physically participate in the load path, but D1 does **not** invent an equipment-specific capacity equation from that observation.

### Допустимая траектория 1 — qualitative physical statement

```text
Attachment self-weight is part of the real suspended system.
```

This is a mechanics/system-boundary statement.

### Допустимая траектория 2 — capacity question handoff

Real capacity/compatibility may depend on exact equipment configuration, load chart/rating basis, attachments, operating mode, interfaces and other equipment-specific conditions.

Therefore:

```text
KNOWN load mass < one visible crane number
```

is not enough to conclude system compatibility.

### Evidence request

- exact crane/configuration and applicable load chart/rating documentation;
- exact attachment/spreader identification and masses;
- exact lifting configuration;
- device/interface documentation;
- competent process for applying equipment-specific capacity rules.

### Bounded conclusion

```text
The suspended-system boundary includes attachment self-weight.
No universal "capacity minus attachment mass" rule is asserted at D1.
Whole-system capacity/compatibility is NOT DEMONSTRATED by the given information.
```

### Типичные провалы

- `H-F1`: грузовая масса сравнивается только с одной цифрой;
- `H-F2`: invented generic subtraction formula;
- `H-F3`: attachments ignored in system boundary;
- `H-F4`: visible marking treated as universally applicable load chart.

---

# Кейс I — «Вчера же держало»
## Reasoning: history is evidence, but not current acceptance

### Status of past success

Strong wording:

```text
Historical observation: prior lifts reportedly completed without observed failure.
```

This may be useful history. It does not prove current device state, current load applicability or current acceptance.

### Допустимая траектория 1 — current-case delta

Ask what can differ today:

- exact load material/geometry/surface;
- exact device state;
- maintenance/change history;
- operating conditions;
- exact configuration;
- required OEM conditions.

Even if the device visually appears the same, current-case mapping is incomplete.

### Допустимая траектория 2 — evidence hierarchy

Past success can be retained as **supporting historical evidence**, but exact current source/OEM requirements govern applicability/acceptance questions.

So:

```text
PAST SUCCESS = HISTORY
CURRENT SUITABILITY = SEPARATE QUESTION
```

### Evidence request

- exact device identity;
- current load identification/properties relevant to the holding principle;
- current device/OEM conditions;
- current state and change/maintenance evidence as required by the applicable process.

### Bounded conclusion

```text
Magnetic holding principle is identifiable.
Past successful lifting does not demonstrate current-case suitability or acceptance.
D1 STOP — current device/load/source evidence required.
```

### Типичные провалы

- `I-F1`: history → validation;
- `I-F2`: similar load appearance → equivalent load;
- `I-F3`: no observed previous failure → no current risk;
- `I-F4`: D1 writes an operation permission.

---

# Кейс J — Интегрированный D1 capstone
## Reasoning: complete packet without overclaiming

Этот кейс важен не потому, что у него один «правильный ответ», а потому что learner должен одновременно удержать все D1 evidence-status layers.

## J1. Object map

Minimum defensible separation:

```text
OBJ-1 crane lower block / hook suspension
OBJ-2 hook body + latch/keeper interface
OBJ-3 detachable below-hook attachment
OBJ-4 attachment internal branches / mechanism
OBJ-5 load interface
OBJ-6 load
```

Можно детализировать иначе, если границы прозрачны и не скрывают отдельные authority/source objects.

## J2. Load-path map

Reasonable qualitative path:

```text
crane lower assembly
→ hook suspension
→ hook/master-link interface
→ detachable attachment frame
→ branch L / branch R (possible split)
→ gripping mechanism / contacts (merge or distributed transfer)
→ load
```

Critical guard:

```text
VISUAL BRANCH SIMILARITY ≠ PROVEN EQUAL LOAD SHARE
```

Observed slight branch offset becomes an observation/unknown prompt, not an automatic defect verdict.

## J3. Holding principle

Given «зажимной механизм», learner can classify at family level:

```text
mechanical clamping / friction-dependent holding family
```

But exact mechanism, required contact state, permissible load range and holding performance remain device-specific.

Alternative strong answer if evidence is too weak:

```text
mechanical gripping device — exact holding mechanism not yet confirmed
```

## J4. Observation / unknown register

### Observed / reported

- latch appears closed;
- master link is in hook;
- attachment has two visually similar branches;
- one branch looks slightly offset;
- some nominal marking is visible;
- history says similar loads were lifted before;
- a public standard for some attachment category was found.

### Unknown / not demonstrated

- exact attachment model/configuration;
- exact applicability of nominal marking;
- branch load distribution;
- exact holding mechanism requirements;
- device/load compatibility;
- exact scope match of the public standard;
- status/meaning of past success for the current case;
- equipment-specific operational permission.

## J5. Evidence-status audit — dangerous promotions

At least these should be caught:

```text
closed latch → accepted seating
visual symmetry → equal branch force
nominal marking → current compatibility
similar prior loads → current validation
public category standard → exact applicability
visible offset → diagnosed defect
physical connection → whole-system acceptance
SkillsVault STOP → operating command
```

## J6. Source-role map

Different questions need different source roles:

- terminology/category: vocabulary/category standards where applicable;
- actual device identity/configuration: nameplate/passport/OEM;
- holding conditions/selection: exact device/OEM documentation and applicable competent process;
- hook-specific proof/design: exact applicable proof/design source, outside D1;
- field acceptance/operation: applicable regulatory/OEM/safety/competent authority process.

A public standard discovered by title is only a candidate until exact scope is confirmed.

## J7. Two acceptable reasoning endings

### Ending A — identification available soon

```text
D1 MAP COMPLETE — CLAIM BOUNDED.
Proceed to exact attachment identification and source-scope confirmation before any compatibility/acceptance claim.
```

### Ending B — identity cannot be established

```text
D1 STOP — EXACT DEVICE / SOURCE / OEM DATA REQUIRED.
The attachment can be classified only at family level; current compatibility and holding adequacy are not demonstrated.
```

Both can be correct depending on workflow context. Neither authorizes real operation.

## J8. High-value evidence request

A strong request is short and discriminating:

1. exact attachment model/serial/nameplate data;
2. current OEM/passport documentation;
3. intended load/application data relevant to device selection;
4. confirmed configuration/interface details;
5. source-scope confirmation for the public standard;
6. applicable field/competent process for acceptance/operation.

It does **not** ask for random paperwork. It asks for evidence that changes the status of the blocked claims.

## J9. Bounded conclusion example

```text
The system can be decomposed and a qualitative load path / clamping-family holding principle can be mapped.
Observed latch closure, nominal marking, visual branch similarity and historical successful use do not establish current compatibility, equal branch load share, exact source applicability or holding adequacy.
Exact attachment identification and device/OEM/source evidence are required before any compatibility/acceptance conclusion.
SkillsVault STOP ends unsupported inference only; it is not equipment-operation authority.
```

## J10. Typical capstone failures

- `J-F1`: object boundaries collapsed;
- `J-F2`: branch symmetry promoted to equal force;
- `J-F3`: latch closure promoted to acceptance;
- `J-F4`: category standard promoted to exact applicability;
- `J-F5`: nominal marking promoted to whole-system capacity;
- `J-F6`: past success promoted to current validation;
- `J-F7`: visible offset promoted to diagnosed failure;
- `J-F8`: STOP promoted to field authority.

---

# Cross-case reasoning taxonomy

Эти failure families переходят в Expected Result как кандидаты для observable / blocking behavior.

## RF-D1-01 — OBJECT COLLAPSE

Learner не разделяет hook suspension, detachable attachment, interfaces и load system.

## RF-D1-02 — SERIAL-PATH ASSUMPTION

Learner не способен показать branch/merge topology и автоматически рисует одну serial chain.

## RF-D1-03 — VISUAL-SYMMETRY PROMOTION

Симметрия изображения превращается в равное распределение нагрузки.

## RF-D1-04 — LATCH / SEATING ACCEPTANCE LEAP

Закрытый latch или «глубокая» посадка превращаются в compatibility/acceptance.

## RF-D1-05 — HOLDING-PRINCIPLE COLLAPSE

Geometric engagement, clamp/friction, magnetic, vacuum и unknown device трактуются как одна и та же логика удержания.

## RF-D1-06 — VISIBLE-STATE COMPLETENESS

Часть видимых признаков устройства объявляется полной verification его required state.

## RF-D1-07 — INTERCHANGEABILITY BY APPEARANCE

Похожая геометрия/цвет/одна цифра объявляются взаимозаменяемостью.

## RF-D1-08 — SOURCE-SCOPE LEAP

Название категории или знакомый стандарт объявляются exact applicability без проверки scope/object/question.

## RF-D1-09 — HISTORY → CURRENT VALIDATION

Прошлый успешный подъём заменяет current-case evidence.

## RF-D1-10 — AUTHORITY LEAK

D1 conclusion/STOP превращается в equipment acceptance, continued-operation, return-to-service или иной полевой verdict.

---

# Что считается сильным D1 reasoning

Сильный learner:

1. сначала отделяет объекты и интерфейсы;
2. показывает путь силы, включая branch/merge;
3. классифицирует holding principle ровно настолько, насколько позволяет evidence;
4. ведёт observation/unknown register;
5. выбирает source role по вопросу, а не по знакомому номеру документа;
6. отдельно проверяет exact applicability;
7. формулирует bounded conclusion;
8. умеет запросить **конкретное** evidence, которое изменит статус вывода;
9. не боится остановить unsupported inference;
10. не присваивает SkillsVault или себе полевые полномочия.

Сильный ответ может быть коротким. Слабый ответ может быть длинным и технически звучащим, если он скрывает неизвестное или делает лишний verdict.

---

# Что Practice Reasoning специально не открывает

Этот слой по-прежнему не разрешает самостоятельно создавать:

- hook sizing/proof calculations;
- wear/deformation/crack/discard limits;
- numeric tip/side/eccentric limits;
- latch/keeper retrofit/design acceptance;
- clamp/magnet/vacuum/grab holding-force criteria;
- load-test acceptance values;
- specialist repair/NDT/refurbishment verdicts;
- equipment-specific capacity arithmetic;
- return-to-service / continued-operation permission.

Если reasoning доходит до такого вопроса, правильный переход:

```text
OUTSIDE D1
→ exact applicable source / OEM / competent process
→ bounded handoff
```

---

# Следующий слой

`CRN-M-03 / D1 EXPECTED RESULT / v1`

Он превратит D1 mental model и reasoning A–J в наблюдаемые learner behaviors, transfer evidence и explicit success/failure conditions. Practice A–J останется отдельным prompt-слоем без answer key.
