# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 Expected Result v1
## Наблюдаемый профиль экспертного управления инженерным доказательством

---

# Назначение

Expected Result фиксирует не то, что ученик способен пересказать D4 Lesson, и не то, что он умеет запустить более сложный solver.

Он отвечает на один вопрос:

> **что человек способен наблюдаемо и воспроизводимо сделать на новой инженерной задаче, где method applicability, configuration, inputs, validation evidence, uncertainty и authority неполны или конфликтуют?**

D4 считается достигнутым, когда обучающийся умеет **управлять силой инженерного вывода**.

Сильный результат не обязан заканчиваться числом или `PASS`.

Полноценными успешными D4-результатами могут быть:

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

если ученик показывает, **почему более сильный вывод сейчас недопустим, какое evidence способно изменить решение и кому должен быть передан следующий authority step**.

D4 Expected Result не является:

- actual proof-of-competence конкретного реального барабана/блока/полиспаста;
- design verification или redesign approval;
- восстановлением закрытых платных коэффициентов, таблиц, branch logic или load combinations;
- remaining-life / fatigue-life verdict;
- equipment-specific acceptance/discard decision;
- specialist NDT interpretation;
- разрешением на эксплуатацию, ремонт, rerouting, redesign или field modification.

D1/D2/D3 остаются immutable prerequisites. D4 не отменяет их и не превращает их учебные численные примеры в автоматически применимые design inputs.

---

# Краткая формула результата D4

После D4 обучающийся способен пройти цепочку:

```text
MANAGEMENT QUESTION
↓
DECISION QUESTION + CLAIM CLASSES
↓
AS-FOUND / APPROVED / CALCULATION CONFIGURATION LOCK
↓
BOUNDARY-VALUE PROBLEM + REQUESTED OUTPUT
↓
INPUT PROVENANCE + UNKNOWN REGISTER
↓
SOURCE / METHOD APPLICABILITY
↓
SMALLEST ADEQUATE MODEL + FIDELITY ESCALATION LOGIC
↓
PARENT → CHILD MODEL INTERFACE WHEN RELEVANT
↓
VERIFICATION / CROSS-CHECK / VALIDATION PLAN
↓
COMMON-MODE ERROR CHALLENGE
↓
SENSITIVITY / UNCERTAINTY / ROBUSTNESS ENVELOPE
↓
EVIDENCE-ROLE MAP + VALUE OF INFORMATION
↓
BOUNDED CONCLUSION / STOP RULE
↓
AUTHORITY / SAFETY HANDOFF
↓
AUDIT TRAIL
```

Если новый datum меняет configuration status, input provenance, source applicability, model validity или decision-sensitive uncertainty, ученик **перестраивает вывод**, а не защищает прежнее число.

---

# ER-D4-01 — Разлагает management question на decision questions и claim classes

## Наблюдаемое поведение

До выбора метода ученик явно разделяет, какой именно claim требуется поддержать.

Для сложного запроса он различает, когда речь идёт о:

- configuration/state;
- load path / mechanics;
- formal proof / adequacy;
- inspection / condition;
- monitoring/history;
- remaining-life / discard;
- equipment/operational decision.

Он не пытается закрыть всё одним solver output или одним документом.

## Evidence output

```text
MANAGEMENT QUESTION:
...

DECISION QUESTIONS:
Q1 ...
Q2 ...

CLAIM CLASS FOR EACH Q:
...
```

## Не считается достигнутым

- «нужно проверить барабан» без формулировки decision output;
- один вопрос, в котором смешаны design proof, inspection и permission to operate;
- выбор FEA/стандарта до определения claim class.

## Blocking candidate

`BF-D4-01 QUESTION COLLAPSE` — несколько разных claim classes сведены в один метод/вывод так, что границы доказательства исчезают.

---

# ER-D4-02 — Версионирует configuration и не смешивает as-found / approved / calculation geometry

## Наблюдаемое поведение

Ученик ведёт минимум три различимых объекта evidence, когда это применимо:

```text
AS-FOUND CONFIGURATION
APPROVED / DESIGN CONFIGURATION
CALCULATION CONFIGURATION
```

Он способен указать relation между ними и честно оставить её `UNKNOWN`, если revision/configuration control не закрыт.

## Evidence output

```text
CONFIGURATION REGISTER

AS-FOUND:
source / date / confidence / gaps

APPROVED / DESIGN:
source / revision / status / gaps

CALCULATION MODEL:
version / geometry basis / deviations

RELATION BETWEEN THEM:
...
```

## Не считается достигнутым

- хорошо измеренное as-found состояние автоматически объявлено approved;
- архивный drawing автоматически объявлен current;
- модель другого rope path/configuration используется как current proof без interface statement.

## Blocking candidate

`BF-D4-02 CONFIGURATION COLLAPSE`.

---

# ER-D4-03 — Ведёт provenance decision-driving inputs и не изобретает неизвестные значения

## Наблюдаемое поведение

Для каждого input, способного изменить decision output, ученик указывает:

- значение/состояние;
- единицы и definition;
- source/provenance;
- version/time window;
- confidence/status;
- что произойдёт, если input неверен или неизвестен.

`UNKNOWN` не заменяется на «типичное», «обычное», «примерно паспортное» без явного scenario/sensitivity purpose.

## Evidence output

| Input | Value/state | Provenance | Status | Decision sensitivity | Action if unresolved |
|---|---|---|---|---|---|

## Сильный результат

Если critical input отсутствует, ученик способен остановить source-bound claim:

```text
STOP / REQUEST EVIDENCE
```

а не дорисовать число.

## Blocking candidate

`BF-D4-03 HIDDEN INPUT INVENTION`.

---

# ER-D4-04 — Доказывает applicability источника и метода отдельно от факта их существования

## Наблюдаемое поведение

Ученик различает:

```text
SOURCE LOCATED / AUTHENTIC
≠
EXACT BRANCH APPLICABLE TO CURRENT CASE
```

Для source-bound method он фиксирует по доступным законным данным:

- document / edition / status;
- object/component class;
- branch-selection conditions;
- input prerequisites;
- exclusions/limits;
- current-case mapping;
- unresolved gap.

Он не реконструирует закрытый paid content из памяти, snippets или secondary material.

## Evidence output

```text
SOURCE / METHOD APPLICABILITY CARD
CLAIM:
SOURCE:
EDITION / STATUS:
REQUIRED APPLICABILITY FACTS:
CURRENT-CASE EVIDENCE:
UNRESOLVED GAP:
METHOD STATUS:
APPLICABLE / CONDITIONALLY APPLICABLE / NOT DEMONSTRATED
```

## Blocking candidate

`BF-D4-04 SOURCE APPLICABILITY LEAP` — найденное значение/документ объявлены применимыми без доказанного current-case branch mapping.

---

# ER-D4-05 — Выбирает минимально достаточную fidelity и не повышает статус модели из-за сложности/сходимости

## Наблюдаемое поведение

Ученик объясняет:

- какой phenomenon/output должен быть представлен;
- почему текущая fidelity достаточна или недостаточна;
- какое **новое decision capability** даст следующий уровень модели;
- какое evidence потребуется для проверки более сложной модели.

Он не считает 3D nonlinear/transient FEA автоматически лучше простого rigid-body или lumped model.

## Evidence output

```text
MODEL FIDELITY CARD
QUESTION / OUTPUT:
PHYSICS REQUIRED:
PHYSICS OMITTED:
WHY CURRENT LEVEL IS ADEQUATE / INADEQUATE:
NEXT FIDELITY STEP IF NEEDED:
WHAT NEW EVIDENCE IT REQUIRES:
```

## Blocking candidate

`BF-D4-05 FIDELITY STATUS ERROR` — higher fidelity, mesh density или solver convergence объявлены validation/adequacy proof.

---

# ER-D4-06 — Фиксирует boundary-value problem и parent→child interface

## Наблюдаемое поведение

Перед интерпретацией результата ученик показывает:

- geometry/configuration basis;
- loads/motion/state;
- supports/constraints/contact idealizations;
- interfaces;
- requested outputs;
- excluded physics;
- sign/unit conventions.

Если локальная submodel/FEA получает boundary/load из parent model, learner обеспечивает auditable transfer:

```text
PARENT OUTPUT
→ TRANSFER RULE
→ CHILD INPUT
→ EQUILIBRIUM / COMPATIBILITY CHECK
```

## Evidence output

```text
BOUNDARY-VALUE RECORD
...

PARENT → CHILD INTERFACE RECORD
...
```

## Blocking candidate

`BF-D4-06 PARENT-CHILD BREAK` — локальный результат интерпретируется без трассируемой load/boundary interface.

---

# ER-D4-07 — Разделяет verification, cross-check и validation

## Наблюдаемое поведение

Ученик способен для конкретной модели отдельно ответить:

```text
VERIFICATION:
правильно ли решена заявленная математическая/численная модель?

CROSS-CHECK:
согласуется ли результат с независимым расчётом/лимитным случаем/другой реализацией?

VALIDATION:
достаточно ли evidence, что модель адекватно представляет реальный объект/режим для данного decision use?
```

## Evidence output

| Evidence item | Verification | Cross-check | Validation | Limits |
|---|---|---|---|---|

## Не считается достигнутым

- mesh convergence названа validation;
- совпадение двух программ названо real-object validation;
- один steady-state datum валидирует transient event.

## Blocking candidate

`BF-D4-07 CROSS-CHECK → VALIDATION LEAP`.

---

# ER-D4-08 — Активно ищет common-mode error и harmonize competing methods

## Наблюдаемое поведение

Если два метода/solver/инженера согласны, ученик не завершает review на слове «совпало».

Он спрашивает, могут ли они разделять:

- одинаковую ошибочную configuration;
- один source/branch interpretation;
- один hidden input;
- один sign/unit convention;
- одну boundary assumption;
- один calibration/measurement bias.

При расхождении методов он сначала приводит к сопоставимому виду:

- один configuration;
- один state/time window;
- совместимые outputs;
- согласованные units/signs;
- явные model-form differences.

## Evidence output

```text
COMMON-MODE CHALLENGE:
...

METHOD HARMONIZATION TABLE:
...
```

## Blocking candidate

`BF-D4-08 COMMON-MODE BLINDNESS`.

---

# ER-D4-09 — Связывает sensitivity/uncertainty с возможностью перевернуть решение

## Наблюдаемое поведение

Ученик не добавляет uncertainty как декоративный абзац.

Он выясняет:

> какой input, boundary, model-form choice или scenario способен изменить decision class?

Он разделяет минимум:

- input uncertainty;
- boundary/configuration uncertainty;
- measurement uncertainty;
- model-form uncertainty;
- scenario uncertainty.

## Evidence output

| Uncertain item | Proven range/scenarios | Output effect | Can flip decision? | Priority |
|---|---|---|---|---|

## Сильный результат

Если decision меняется внутри доказанного plausible range, learner не выдаёт single precise conclusion, а повышает приоритет discriminating evidence.

---

# ER-D4-10 — Доказывает provenance robustness envelope

## Наблюдаемое поведение

Перед словом `ROBUST` ученик показывает:

- откуда взяты scenario/range bounds;
- какие dimensions варьировались;
- какие не варьировались;
- какие model-form alternatives рассмотрены;
- что находится **за пределами** проверенного envelope.

## Evidence output

```text
ROBUSTNESS ENVELOPE
PARAMETER / SCENARIO:
LOW / HIGH / ALTERNATIVE:
PROVENANCE:
COVERAGE:
OUTSIDE-ENVELOPE UNKNOWN:
DECISION RESULT:
```

## Blocking candidate

`BF-D4-09 UNSOURCED ROBUSTNESS` — «результат устойчив» без происхождения диапазонов/scenarios и границ claim.

---

# ER-D4-11 — Разводит evidence roles: inspection, monitoring, classification, proof, remaining-life

## Наблюдаемое поведение

Ученик способен сказать, **что именно** каждый evidence channel может и не может поддержать.

Он не превращает:

- inspection finding в design proof;
- monitoring trend в формальный remaining-life number;
- classification/duty record в универсальную нагрузку;
- отсутствие observed defect в доказательство defect absence;
- source existence в право принять equipment decision.

## Evidence output

| Evidence channel | Supports | Does not establish | Authority / specialist line | Gap |
|---|---|---|---|---|

## Blocking candidate

`BF-D4-10 EVIDENCE-ROLE COLLAPSE`.

---

# ER-D4-12 — Выбирает следующий datum по value of information

## Наблюдаемое поведение

Когда evidence chain не замкнута, learner не просит «ещё данных вообще».

Он выбирает datum/document/measurement, который:

- закрывает blocking applicability/configuration/input gap;
- различает competing methods/models;
- уменьшает decision-sensitive uncertainty;
- способен изменить bounded conclusion.

## Evidence output

```text
NEXT EVIDENCE REQUEST
ITEM:
WHY THIS ITEM:
CURRENT DECISION BLOCK:
IF RESULT A:
IF RESULT B:
EXPECTED DECISION VALUE:
HIGH / MEDIUM / LOW
```

## Сильный результат

`STOP / REQUEST EVIDENCE` считается успешным, если request конкретен, decision-relevant и не маскирует уже установленный safety obligation.

---

# ER-D4-13 — Выдаёт bounded conclusion, stop rule, authority/safety handoff и audit trail

## Наблюдаемое поведение

Финальный technical output явно разделяет:

1. что доказано;
2. что conditionally supported;
3. что не доказано;
4. какие critical unknowns остаются;
5. какой datum может изменить вывод;
6. где analysis должен остановиться;
7. что learner **не уполномочен** разрешать;
8. кому/по какому процессу передаётся следующий decision.

Ключевая граница:

```text
ANALYSIS STOPPED
≠
OPERATION PERMITTED
```

и одновременно:

```text
TECHNICAL RECOMMENDATION
≠
AUTHORIZED EQUIPMENT DECISION
```

## Evidence output

```text
BOUNDED CONCLUSION
...

STOP RULE / REQUEST EVIDENCE
...

SAFETY / DISPOSITION BOUNDARY
...

AUTHORITY HANDOFF
...

AUDIT TRAIL POINTERS
configuration / inputs / sources / methods / V&V / uncertainty / conclusion
```

## Blocking candidates

- `BF-D4-11 AUTHORITY LEAK`;
- `BF-D4-12 STOP-PERMISSION CONFUSION`.

---

# ER-D4-14 — Переносит D4-process на unseen case и обновляет вывод после adversarial challenge

Это главный transfer criterion.

Known Practice A–J и даже сильное решение Case J **не доказывают D4 transfer сами по себе**.

Verification должна дать новый кейс, который не является переименованием A–J и содержит несколько одновременно конфликтующих слоёв, например:

```text
configuration ambiguity
+ source applicability gap
+ decision-driving unknown
+ competing model/method outputs
+ incomplete validation evidence
+ uncertainty capable of flipping decision
+ safety/authority boundary
```

## Первая фаза — independent unseen review

Без подсказки learner должен восстановить D4-process:

```text
QUESTION / CLAIM CLASSES
→ CONFIGURATION
→ INPUT PROVENANCE
→ METHOD / APPLICABILITY
→ BOUNDARY / FIDELITY
→ V&V
→ COMMON-MODE CHALLENGE
→ UNCERTAINTY / ROBUSTNESS
→ EVIDENCE REQUEST
→ BOUNDED CONCLUSION
→ AUTHORITY HANDOFF
```

## Вторая фаза — mandatory adversarial challenge

После первой conclusion Verification сообщает **значимый новый datum или withdrawal of assumption**.

Допустимые challenge families:

- approved configuration оказывается другой;
- ключевой input имеет другую revision/source;
- branch applicability condition не выполнено;
- measurement bandwidth/coverage недостаточны;
- два solver делят один и тот же geometry/source error;
- validation datum относится к другому state/time window;
- plausible uncertainty range шире первоначально принятого;
- supposedly independent evidence имеет общий origin;
- equipment authority/safety obligation изменяет допустимый handoff.

Learner должен обновить не только финальную фразу, а всю затронутую цепочку:

```text
CONFIGURATION / INPUT STATUS
→ METHOD APPLICABILITY
→ V&V STATUS
→ SENSITIVITY / ROBUSTNESS
→ EVIDENCE REQUEST
→ BOUNDED CONCLUSION
→ AUTHORITY HANDOFF
```

## Transfer считается успешным, если

- человек не цепляется за первоначальный solver result;
- new datum меняет ровно те layers, которых он касается;
- unaffected layers не переписываются без причины;
- conclusion strength уменьшается или усиливается пропорционально evidence;
- `STOP / REQUEST EVIDENCE` принимается как валидный outcome;
- equipment permission не возникает из learner analysis.

---

# Минимальный наблюдаемый пакет D4

Для Verification должен быть виден минимум следующий пакет:

1. `DECISION QUESTION / CLAIM CLASS MAP`;
2. `CONFIGURATION REGISTER`;
3. `BOUNDARY-VALUE / REQUESTED OUTPUT RECORD`;
4. `INPUT PROVENANCE + UNKNOWN REGISTER`;
5. `SOURCE / METHOD APPLICABILITY CARD(S)`;
6. `MODEL FIDELITY CARD`;
7. `PARENT → CHILD INTERFACE RECORD`, если применимо;
8. `VERIFICATION / CROSS-CHECK / VALIDATION PLAN`;
9. `COMMON-MODE ERROR CHALLENGE`;
10. `SENSITIVITY / UNCERTAINTY TABLE`;
11. `ROBUSTNESS ENVELOPE + PROVENANCE`;
12. `EVIDENCE-ROLE MAP`;
13. `NEXT EVIDENCE / VALUE-OF-INFORMATION REQUEST`;
14. `BOUNDED CONCLUSION`;
15. `STOP / SAFETY / AUTHORITY HANDOFF`;
16. `AUDIT TRAIL`;
17. update record after mandatory adversarial challenge.

Не каждый item обязан быть отдельным файлом. Но каждый слой должен быть **наблюдаем и восстанавливаем другим инженером**.

---

# Candidate blocking failures для Verification Rubric

Следующий этап должен определить severity/non-compensability как минимум для этих 12 semantics:

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

Эти failures должны оставаться non-compensable candidates: хороший стиль, высокая numerical accuracy или сильные другие dimensions не должны автоматически компенсировать фундаментальный evidence/authority breach.

---

# Что НЕ является достаточным D4 evidence

Недостаточно:

- правильно назвать ISO/ГОСТ/OEM документ;
- найти «правильное» число в известном Practice case;
- построить красивую FEA;
- показать mesh convergence;
- получить одинаковый результат в двух solver;
- объяснить, что такое verification/validation;
- перечислить uncertainty sources;
- написать `STOP`, не объяснив blocking gap;
- совпасть с авторским conclusion Case J.

Это может быть полезным частичным evidence.

Но D4 требует **управления валидностью, применимостью, неопределённостью и полномочиями самого вывода**.

---

# D3 → D4 observable jump

Сильный D3 способен построить и обновить causal model:

```text
OBSERVED SIGNATURE
→ COMPETING MECHANISMS
→ PREDICTIONS
→ DISTINGUISHING EVIDENCE
→ BOUNDED CAUSAL MODEL STATUS
```

Доказанный D4 способен управлять уже **доказательным методом**:

```text
DECISION QUESTION
→ CLAIM CLASS
→ CONFIGURATION / INPUT PROVENANCE
→ SOURCE / METHOD APPLICABILITY
→ BOUNDARY / MODEL FIDELITY
→ V&V
→ COMMON-MODE ERROR
→ UNCERTAINTY / ROBUSTNESS
→ VALUE OF INFORMATION
→ BOUNDED OUTPUT
→ AUTHORITY / SAFETY
→ AUDIT TRAIL
```

D4 не делает D3 ненужным: causal uncertainty остаётся одним из возможных model/input uncertainties. Но D4 спрашивает дополнительно, **имеет ли выбранный способ анализа право поддерживать именно этот claim**.

---

# Expected Result — итоговая формулировка

После успешного D4 обучающийся способен:

> **на новом кейсе по барабанам, блокам, полиспастам и связанным rope-drive mechanisms самостоятельно построить воспроизводимый expert review: разложить management question на claim classes, зафиксировать configuration и boundary-value problem, вести provenance критичных inputs, доказать source/method applicability, выбрать минимально достаточную fidelity, корректно передать parent→child interfaces, развести verification/cross-check/validation, оспорить common-mode error, проверить decision-sensitive uncertainty и provenance robustness envelope, выбрать следующий datum по value of information, выдать bounded conclusion и выполнить authority/safety handoff без выдумывания отсутствующих данных, без status inflation и без превращения анализа в equipment permission.**

---

# Что должен сделать следующий этап

`D4 VERIFICATION RUBRIC / v1` должен:

1. превратить ER-D4-01…14 в scoreable levels;
2. не путать заполненность формы с качеством reasoning;
3. сделать 12 BF-D4 semantics non-compensable там, где фундаментальная доказательная/authority ошибка сохраняется;
4. требовать known-case evidence, но не считать его достаточным;
5. требовать unseen integrated case;
6. требовать mandatory adversarial evidence-status challenge после первой conclusion;
7. считать корректный `STOP / REQUEST EVIDENCE` сильным outcome, если chain действительно не замкнута;
8. не открывать actual proof, remaining-life, discard/NDT или equipment authority.
