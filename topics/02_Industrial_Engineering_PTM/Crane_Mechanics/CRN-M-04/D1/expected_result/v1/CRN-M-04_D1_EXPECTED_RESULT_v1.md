# CRN-M-04 — Редукторы и муфты
# D1 Expected Result v1
## Наблюдаемый профиль beginner-компетентности

---
# Назначение

Этот слой описывает не прочитанные страницы и не «знание правильных фраз», а **наблюдаемое поведение learner на новом кейсе привода**.

После D1 learner должен уметь построить дисциплинированную qualitative-модель без незаконного перехода в расчёт, подбор, диагностику или эксплуатационное решение.

Базовый профиль результата:

```text
SYSTEM / AUTHORITY BOUNDARY
→ OBSERVED / DOCUMENTED DRIVE PATH
→ FUNCTION + FAMILY MAP
→ CLAIM-STATUS REGISTER
→ SOURCE ROLE + EXACT APPLICABILITY
→ DISCRIMINATING EVIDENCE
→ BOUNDED CONCLUSION
→ STOP / HANDOFF WHEN THE CLAIM IS NOT CLOSED
```

Успешный D1 не обязан закончиться утверждением «узел исправен» или «можно эксплуатировать». Сильным результатом являются и такие окончания:

```text
D1 MAP COMPLETE — CLAIM BOUNDED
```

```text
D1 MAP PARTIAL — CURRENT CONFIGURATION NOT CONFIRMED
```

```text
D1 STOP — EXACT DEVICE / SOURCE / OEM / COMPETENT-PROCESS DATA REQUIRED
```

Ключевая граница остаётся неизменной:

```text
SKILLSVAULT STOP ≠ EQUIPMENT-OPERATION AUTHORITY
```

---
# Краткая формула результата

На незнакомом приводе learner способен самостоятельно:

```text
НАЗВАТЬ ГРАНИЦУ СИСТЕМЫ
↓
ОТДЕЛИТЬ ВИДИМЫЙ / ДОКУМЕНТИРОВАННЫЙ DRIVE PATH ОТ ГИПОТЕЗЫ
↓
РАЗДЕЛИТЬ TOPOLOGY / KINEMATICS / OPERATING STATE / RATING CLAIMS
↓
РАСПОЗНАТЬ REDUCER / COUPLING FAMILY ТОЛЬКО НА ДОКАЗАННОМ УРОВНЕ
↓
ВЕСТИ OBSERVATION / HISTORY / HYPOTHESIS / UNKNOWN REGISTER
↓
ВЫБРАТЬ SOURCE ROLE ПО ВОПРОСУ
↓
ПРОВЕРИТЬ EXACT APPLICABILITY
↓
ЗАПРОСИТЬ EVIDENCE, КОТОРОЕ РЕАЛЬНО МЕНЯЕТ СТАТУС ВЫВОДА
↓
СФОРМУЛИРОВАТЬ BOUNDED CONCLUSION
↓
НЕ ПРИСВАИВАТЬ СЕБЕ DESIGN / ACCEPTANCE / OPERATION AUTHORITY
```

---
# ER-D1-01 — Явно задаёт system / authority boundary

## Наблюдаемое поведение

Learner сначала определяет, **какую часть привода он реально анализирует** и какие соседние вопросы уже принадлежат другой authority domain.

Он способен отделить, где это релевантно:

- двигатель и его подтверждённый интерфейс;
- соединительный узел / муфту либо `UNKNOWN CONNECTION NODE`;
- редуктор как отдельный assembly;
- выходное соединение;
- исполнительный механизм;
- тормозной узел как отдельный объект, если его положение/связь с валом не доказаны;
- вопросы эксплуатации, ремонта, настройки и допуска — как отдельные authority gates.

## Evidence output

```text
SYSTEM / AUTHORITY MAP
IN SCOPE: ...
ADJACENT OBJECTS: ...
UNKNOWN INTERFACES: ...
OUTSIDE D1 AUTHORITY: ...
```

## Не считается достигнутым

- соседний тормоз автоматически включён в «очевидную» кинематическую схему;
- закрытый соединительный узел сразу назван конкретной муфтой;
- техническая карта SkillsVault превращена в permission/prohibition для оборудования.

---
# ER-D1-02 — Строит drive-path topology без подмены operating state

## Наблюдаемое поведение

Learner показывает последовательность подтверждённых соединений и явно помечает неподтверждённые внутренние участки.

Он различает как минимум четыре типа утверждений:

```text
CONNECTIVITY / TOPOLOGY
KINEMATIC RELATION
CURRENT OPERATING STATE
POWER / TORQUE FLOW IN A SPECIFIC MODE
```

Стрелка на учебной схеме или привычное расположение агрегатов не является универсальным доказательством текущего направления вращения, power flow или режима.

## Evidence output

```text
DRIVE-PATH MAP
CONFIRMED: ...
DOCUMENTED: ...
HYPOTHESIS: ...
UNKNOWN: ...
MODE-DEPENDENT CLAIMS: ...
```

## Критический guard

```text
CONNECTIVITY MAP ≠ OPERATING-MODE / ROTATION-DIRECTION PROOF
```

---
# ER-D1-03 — Разделяет ratio, actual torque и permissible / rated torque

## Наблюдаемое поведение

Learner способен обсуждать передаточное отношение как kinematic claim только после проверки его применимости к текущей конфигурации.

Он не превращает сочетание:

```text
OLD DRAWING / RATIO
+
MOTOR NAMEPLATE
```

в доказательство:

- current as-built ratio;
- фактически передаваемого момента;
- динамического максимума;
- допустимого / rated output torque;
- пригодности конкретного редуктора.

## Evidence output

```text
KINEMATIC / TORQUE STATUS
CURRENT RATIO: CONFIRMED / HISTORICAL / UNKNOWN
ACTUAL TRANSMITTED TORQUE: ESTABLISHED / NOT ESTABLISHED
PERMISSIBLE / RATED TORQUE: ESTABLISHED / OUTSIDE D1
```

## Критический guard

```text
RATIO + MOTOR NAMEPLATE ≠ ACTUAL / PERMISSIBLE OUTPUT TORQUE
```

---
# ER-D1-04 — Распознаёт reducer family без достройки exact design / rating

## Наблюдаемое поведение

Learner может классифицировать reducer family, когда evidence действительно поддерживает такой уровень, например на уровне:

- cylindrical / parallel-axis;
- bevel / angle-change;
- planetary;
- worm;
- `UNKNOWN / FAMILY NOT CONFIRMED`.

Он не обязан угадывать exact model по внешнему виду и не повышает family recognition до:

- количества ступеней, если оно не доказано;
- точного internal arrangement;
- rating;
- efficiency;
- self-locking / reversibility;
- equal load sharing между несколькими зацеплениями.

## Evidence output

```text
REDUCER FAMILY STATUS
FAMILY: ...
SUPPORTING CUES: ...
EXACT IDENTITY: ...
DESIGN / RATING CLAIMS: NOT ESTABLISHED / OUTSIDE D1
```

## Критические guards

```text
FAMILY ≠ EXACT DESIGN / SIZE / RATING
MULTIPLE MESHES ≠ PROVEN EQUAL LOAD SHARING
```

---
# ER-D1-05 — Разделяет coupling function, identity, alignment и interchangeability

## Наблюдаемое поведение

Learner понимает функцию муфты как соединительного элемента привода, но держит раздельно:

```text
COUPLING FAMILY
EXACT INSTALLED IDENTITY
OBSERVED RELATIVE POSITION
MEASURED ALIGNMENT STATE
ALLOWABLE LIMIT
REPLACEMENT INTERCHANGEABILITY
```

Слово `flexible` не становится универсальным разрешением любой несоосности.

При работе с `ГОСТ Р 50895-2025` learner сначала проверяет, относится ли конкретная муфта к scope документа; сам факт нахождения стандарта не доказывает interchangeability двух изделий.

## Evidence output

```text
COUPLING / ALIGNMENT STATUS
FAMILY: ...
EXACT IDENTITY: ...
OBSERVED STATE: ...
MEASURED / ACCEPTANCE STATUS: ...
INTERCHANGEABILITY: ...
```

## Критические guards

```text
FLEXIBLE COUPLING ≠ ANY MISALIGNMENT IS ACCEPTABLE
FAMILY STANDARD ≠ INTERCHANGEABILITY
```

---
# ER-D1-06 — Ведёт condition / lubrication evidence register без диагноза и назначения

## Наблюдаемое поведение

Learner разделяет:

```text
OBSERVED
REPORTED
HISTORY
HYPOTHESIS
UNKNOWN
SOURCE / OEM DEPENDENT
```

для таких признаков, как шум, изменение вибрации, нагрев, следы масла, сведения о доливке, видимое повреждение.

Несколько согласующихся признаков могут повышать приоритет дальнейшей проверки, но не превращаются автоматически в root-cause proof или acceptance verdict.

Если используется `ISO 10825-1`, learner понимает его роль как источника для описания / nomenclature damage, а не как автоматический root-cause verdict.

Если используется `ISO 12925-1`, learner не выводит из общего lubricant source точную идентичность установленного масла или разрешение на substitution / top-up для конкретного редуктора.

## Evidence output

```text
CONDITION / LUBRICATION REGISTER
OBSERVED: ...
HISTORY: ...
HYPOTHESES: ...
UNKNOWN: ...
ROOT CAUSE: NOT ESTABLISHED / ...
ACCEPTANCE: NOT ESTABLISHED / ...
LUBRICANT ID / SUBSTITUTION: NOT ESTABLISHED / ...
```

---
# ER-D1-07 — Выбирает source role по вопросу и отдельно доказывает applicability

## Наблюдаемое поведение

Learner начинает с decision question, а не с номера знакомого стандарта:

```text
WHAT CLAIM NEEDS SUPPORT?
→ WHAT SOURCE ROLE IS REQUIRED?
→ DOES THE SOURCE APPLY TO THIS COMPONENT / CONFIGURATION / QUESTION?
```

Он способен различить роли, например:

- general reducer requirements / terminology;
- gear-coupling family source;
- gear load-capacity method family;
- gear-damage nomenclature;
- lubricant specification boundary;
- exact OEM / passport / drawing / manual;
- competent inspection / diagnostic / operational process.

Само совпадение названия документа с названием детали не закрывает exact applicability.

## Evidence output

```text
SOURCE-ROLE / APPLICABILITY MAP
QUESTION: ...
SOURCE ROLE: ...
CANDIDATE SOURCE: ...
EDITION / SCOPE / COMPONENT / CONFIGURATION STATUS: ...
APPLICABILITY: CONFIRMED / NOT YET CONFIRMED / EXCLUDED
```

## Критический guard

```text
CORRECT DOCUMENT TITLE ≠ EXACT APPLICABILITY
```

---
# ER-D1-08 — Не повышает old drawing / history / nominal data до current configuration

## Наблюдаемое поведение

Learner умеет правильно статусировать старый drawing, прежний ratio, прошлую замену, запись обслуживания или знакомую конфигурацию.

Он явно различает:

```text
HISTORICAL EVIDENCE
CURRENT AS-BUILT EVIDENCE
CURRENT OPERATING EVIDENCE
CURRENT ENGINEERING INPUT
```

Исторический документ может быть полезной гипотезой или traceability clue, но не становится текущим engineering input без подтверждения.

## Evidence output

```text
CONFIGURATION / REVISION STATUS
CURRENT IDENTITY: ...
CURRENT DRAWING / REVISION: ...
HISTORICAL DATA: ...
CURRENT APPLICABILITY: ...
```

## Критический guard

```text
OLD DRAWING / HISTORY ≠ CURRENT CONFIGURATION PROVEN
```

---
# ER-D1-09 — Формирует discriminating evidence request и bounded STOP / handoff

## Наблюдаемое поведение

Learner не просит «все документы на редуктор». Он называет evidence, которое способно изменить конкретный blocked claim.

Типовые сильные запросы:

- exact model / designation / nameplate;
- current drawing / passport / BOM / revision;
- exact coupling identity and interface data;
- current ratio evidence;
- measured alignment state + applicable procedure/limits;
- lubricant identity / maintenance / fill history + OEM prescription;
- condition evidence с контекстом режима и measurement basis;
- exact source edition / scope;
- competent process, если вопрос стал inspection / diagnosis / acceptance / operation question.

Затем learner завершает кейс на доказанном уровне.

## Допустимые сильные окончания

```text
D1 MAP COMPLETE — CLAIM BOUNDED
```

```text
D1 FAMILY RECOGNIZED — EXACT IDENTITY / RATING NOT CONFIRMED
```

```text
D1 EVIDENCE DESCRIBED — ROOT CAUSE / ACCEPTANCE NOT ESTABLISHED
```

```text
D1 STOP — EXACT DEVICE / SOURCE / OEM DATA REQUIRED
```

```text
OUTSIDE D1 — DESIGN / RATING / ACCEPTANCE / OPERATION AUTHORITY REQUIRED
```

## Обязательный guard

```text
SKILLSVAULT STOP ≠ EQUIPMENT OPERATION COMMAND
```

---
# ER-D1-10 — Переносит D1 workflow на unseen drive case

## Наблюдаемое поведение

На кейсе, которого не было среди Practice A–J, learner самостоятельно проходит:

```text
system / authority boundary
→ observed / documented drive path
→ topology / operating-state separation
→ family / exact-identity separation
→ claim-status register
→ source role / exact applicability
→ discriminating evidence
→ bounded conclusion / STOP-handoff
```

U1 должен отличаться сюжетом и сочетанием ловушек. Простого узнавания Case J недостаточно.

Успешный transfer не требует закончить field verdict. Если exact device/configuration/source evidence отсутствует, **корректный bounded STOP является успехом**, когда learner точно показывает:

1. какой claim заблокирован;
2. какое evidence отсутствует;
3. почему следующий источник или измерение различает статусы;
4. кому передаётся вопрос за пределами D1.

---
# Минимальный D1 evidence package

Verification Rubric должен уметь увидеть минимум восемь выходов:

1. `SYSTEM / AUTHORITY MAP`;
2. `DRIVE-PATH / CLAIM-STATUS MAP`;
3. `KINEMATIC / TORQUE STATUS`;
4. `REDUCER / COUPLING FAMILY + EXACT-IDENTITY STATUS`;
5. `CONDITION / LUBRICATION EVIDENCE REGISTER`;
6. `SOURCE-ROLE / EXACT-APPLICABILITY MAP`;
7. `DISCRIMINATING EVIDENCE REQUEST`;
8. `BOUNDED CONCLUSION / STOP-HANDOFF`.

Не каждый кейс обязан заполнить каждую строку одинаково подробно. Но learner обязан сделать видимым, **где заканчивается evidence и где начинается unknown / outside-D1 claim**.

---
# Transfer requirement

Known Practice A–J и Practice Reasoning **не являются достаточным transfer proof сами по себе**.

Verification должен включить минимум один `U1 — unseen case`, который сочетает как минимум три из следующих traps:

- закрытый узел провоцирует догадку об exact coupling / architecture;
- стрелка / topology провоцирует operating-state claim;
- найден ratio и motor nameplate;
- reducer family легко узнать, но exact model/rating неизвестны;
- flexible coupling провоцирует alignment-acceptance shortcut;
- похожая spare coupling провоцирует interchangeability shortcut;
- general lubricant source найден, installed lubricant неизвестен;
- condition symptoms кажутся согласованными;
- документ выглядит подходящим по названию, scope не проверен;
- old drawing / history выглядит правдоподобно для текущей машины;
- неудобное unknown хочется заменить nominal assumption;
- technical STOP легко перепутать с equipment command.

U1 не должен требовать закрытых D1 numerical design, rating, alignment, lubrication, acceptance или operational criteria.

---
# Failure-policy handoff в Verification Rubric

Practice Reasoning выделил 12 cross-case failure families. Expected Result **не назначает окончательную non-compensability**, но передаёт следующему Rubric кандидатов.

## Сильные blocking-failure candidates

### BF-CAND-D1-01 — BOUNDARY LEAKAGE
`R-F01`: system boundary потеряна так, что claim/authority переносится между объектами или доменами без доказательства.

### BF-CAND-D1-02 — TOPOLOGY → OPERATING STATE
`R-F02`: карта связности повышена до текущего направления вращения, power flow или режима без evidence.

### BF-CAND-D1-03 — RATIO → ACTUAL / RATED TORQUE
`R-F03`: ratio и/или motor nameplate превращены в фактический либо допустимый момент.

### BF-CAND-D1-04 — COUPLING FLEXIBILITY → ALIGNMENT ACCEPTANCE
`R-F05`: `flexible` или видимое смещение превращены в разрешённую несоосность / adjustment verdict без exact method and limits.

### BF-CAND-D1-05 — FAMILY STANDARD → INTERCHANGEABILITY
`R-F06`: family/source match использован как доказательство совместимости или разрешённой замены конкретной муфты.

### BF-CAND-D1-06 — LUBRICANT SOURCE → INSTALLED / SUBSTITUTION CLAIM
`R-F07`: общий lubricant source использован как доказательство установленного продукта, разрешённого долива или substitution.

### BF-CAND-D1-07 — SYMPTOM / DAMAGE NAME → ROOT CAUSE / ACCEPTANCE
`R-F08`: наблюдение, trend или damage term превращены в диагноз, браковку или acceptance verdict.

### BF-CAND-D1-08 — DOCUMENT TITLE → EXACT APPLICABILITY
`R-F09`: документ выбран по названию без edition/scope/component/configuration/question applicability check.

### BF-CAND-D1-09 — OLD DATA → CURRENT CONFIGURATION
`R-F10`: old drawing/history/ratio превращены в current as-built engineering input без подтверждения.

### BF-CAND-D1-10 — EQUIPMENT-AUTHORITY LEAK
`R-F12`: SkillsVault analysis / STOP повышен до continued-operation, return-to-service, repair, adjustment или иного equipment command.

## Severity-review candidates

Следующий Rubric отдельно решает тяжесть двух families:

- `R-F04 FAMILY → EXACT IDENTITY / RATING` — может быть локальной classification error, а может стать фундаментальным провалом, если на угадывании строится rating/selection claim;
- `R-F11 UNKNOWN → CONVENIENT NOMINAL ASSUMPTION` — тяжесть зависит от того, помечена ли гипотеза честно или unknown скрыто превращён в engineering fact.

Большое количество правильной терминологии не должно автоматически компенсировать опасный authority/status jump. Окончательная scoring policy принадлежит Verification Rubric.

---
# Что Expected Result специально не открывает

Этот этап не разрешает самостоятельно выводить:

- gear load capacity / ISO 6336 numerical rating;
- reducer selection / service factor / allowable load;
- coupling selection / rating / interchangeability;
- numeric angular / parallel / axial alignment limits;
- lubricant selection, mixing, substitution или fill quantity;
- backlash / wear / damage acceptance limits;
- vibration / noise / temperature acceptance thresholds;
- root cause по видимому condition evidence;
- shaft / bearing / key / spline / fastener design;
- repair / adjustment / overhaul;
- return-to-service / continued-operation permission.

При достижении такой границы сильный learner делает:

```text
OUTSIDE D1
→ exact applicable source / OEM / competent process
→ bounded handoff
```

---
# Граница Expected Result

Expected Result не меняет Lesson, Technical Editorial, Red Team, Reader Experience, Practice или Practice Reasoning и не расширяет D1 Source Gate.

Он только переводит существующий D1-контракт в **наблюдаемые behaviors, evidence outputs, transfer conditions и failure-policy candidates**.

Следующий этап:

`CRN-M-04 / D1 VERIFICATION RUBRIC / v1`.
