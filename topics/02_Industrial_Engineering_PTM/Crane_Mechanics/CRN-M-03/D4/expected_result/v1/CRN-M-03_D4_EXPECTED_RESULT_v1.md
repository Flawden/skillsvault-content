# CRN-M-03 — Крюковые подвески и захваты
# D4 Expected Result v1
## Наблюдаемый профиль экспертного управления инженерным методом и доказательством

---

# Назначение

Expected Result фиксирует не то, что ученик умеет пересказать Lesson, назвать ISO или запустить solver.

Он отвечает на вопрос:

> **что человек способен наблюдаемо и воспроизводимо сделать на новой задаче по hook suspension / grab, когда configuration, source applicability, inputs, validation evidence, uncertainty и authority неполны или конфликтуют?**

D4 считается достигнутым, когда learner умеет **управлять силой инженерного вывода**.

Сильный результат не обязан заканчиваться числом или `PASS`.

Допустимыми успешными D4 outcomes являются:

```text
SUPPORTED FOR THIS CLAIM
CONDITIONALLY SUPPORTED
NOT DEMONSTRATED
METHOD APPLICABILITY NOT YET DEMONSTRATED
METHOD NOT APPLICABLE TO THIS COMPONENT / QUESTION
COMPONENT SCOPE MAPPING NOT DEMONSTRATED
MODEL FORM INSUFFICIENT
CROSS-CHECK CONSISTENT
CROSS-CHECK CONFLICT — REVIEW REQUIRED
RESULT SENSITIVITY HIGH — DECISION NOT ROBUST
EXACT GRAB SOURCE / OEM / DESIGNER REQUIRED
SOURCE / OEM / SPECIALIST REQUIRED
STOP / REQUEST EVIDENCE
```

если learner показывает:

- почему более сильный claim сейчас недопустим;
- какое evidence способно изменить decision;
- какие layers затронет новый datum;
- кому должен быть передан следующий authority/safety step.

D4 Expected Result не является:

- actual proof-of-competence конкретного hook / suspension / grab;
- design verification / approval;
- reconstruction closed/paid normative tables, coefficients or branch logic;
- formal grab holding / proof / capacity verdict without exact applicable source;
- remaining-life verdict;
- discard / acceptance decision;
- specialist NDT interpretation;
- permission to operate, repair, redesign or modify actual equipment.

D1/D2/D3 остаются immutable prerequisites.

---

# Краткая формула результата D4

```text
MANAGEMENT QUESTION
→ DECISION QUESTION + CLAIM CLASSES
→ AS-FOUND / APPROVED / CALCULATION CONFIGURATION
→ BOUNDARY-VALUE PROBLEM + REQUESTED OUTPUT
→ INPUT PROVENANCE + UNKNOWN REGISTER
→ SOURCE / COMPONENT / METHOD APPLICABILITY
→ DIRECT / CONDITIONAL / EXCLUDED SCOPE WHEN RELEVANT
→ SMALLEST ADEQUATE MODEL
→ PARENT → CHILD INTERFACE WHEN RELEVANT
→ VERIFICATION / CROSS-CHECK / VALIDATION
→ COMMON-MODE ERROR CHALLENGE
→ SENSITIVITY / UNCERTAINTY / COVERAGE
→ EVIDENCE-ROLE MAP + VALUE OF INFORMATION
→ BOUNDED CONCLUSION / STOP
→ AUTHORITY / SAFETY HANDOFF
→ AUDIT TRAIL
```

Если новый datum меняет configuration status, source applicability, input provenance, model validity, observability или decision-sensitive uncertainty, learner перестраивает затронутую часть цепочки.

---

# ER-D4-01 — Разлагает management question на decision questions и claim classes

## Наблюдаемое поведение

До выбора method learner явно разделяет:

- configuration/state;
- mechanics/load path;
- method applicability;
- formal proof;
- inspection/condition;
- monitoring/history;
- remaining-life;
- technical recommendation;
- equipment/operation decision.

Он не закрывает всё одним solver, source или conclusion.

## Evidence output

```text
MANAGEMENT QUESTION
DECISION QUESTIONS Q1...Qn
CLAIM CLASS FOR EACH Q
REQUIRED DECISION OWNER / AUTHORITY
```

## Не считается достигнутым

- один смешанный вопрос;
- FEA/source выбран до claim class;
- analytical output назван equipment decision.

## Blocking candidate

`BF-D4-M03-01 QUESTION COLLAPSE`.

---

# ER-D4-02 — Версионирует configuration и не смешивает as-found / approved / calculation

## Наблюдаемое поведение

Learner ведёт отдельно:

```text
AS-FOUND CONFIGURATION
APPROVED / DESIGN CONFIGURATION
CALCULATION CONFIGURATION
```

и показывает relation между ними как `MATCH / DEVIATION / UNKNOWN`.

Input freeze не превращает observed state в approved state.

## Evidence output

```text
CONFIGURATION REGISTER
source / revision / date / confidence / gap / relation
```

## Blocking candidate

`BF-D4-M03-02 CONFIGURATION COLLAPSE`.

---

# ER-D4-03 — Ведёт provenance decision-driving inputs и не изобретает unknown

## Наблюдаемое поведение

Для каждого critical input learner фиксирует:

- value/state;
- unit/definition;
- source/provenance;
- revision/time window;
- confidence;
- decision sensitivity;
- action if unresolved.

`UNKNOWN` не заменяется nominal/typical value иначе чем в явно маркированном scenario/sensitivity exercise.

## Evidence output

| Input | Value/state | Provenance | Status | Decision sensitivity | Action if unresolved |
|---|---|---|---|---|---|

## Сильный outcome

```text
STOP / REQUEST EVIDENCE
```

если source-bound claim нельзя защитить.

## Blocking candidate

`BF-D4-M03-03 HIDDEN INPUT INVENTION`.

---

# ER-D4-04 — Доказывает source/component/method applicability отдельно от source existence

## Наблюдаемое поведение

Learner различает:

```text
SOURCE LOCATED / AUTHENTIC
≠
CURRENT COMPONENT / QUESTION / BRANCH APPLICABLE
```

Он фиксирует:

- document/edition/status;
- component/construction;
- definitions;
- branch-selection conditions;
- exclusions;
- required inputs;
- current-case mapping;
- unresolved gap.

Не реконструирует closed paid content из memory/snippets.

## Evidence output

```text
SOURCE / METHOD APPLICABILITY CARD
CLAIM
COMPONENT
SOURCE / EDITION / STATUS
APPLICABILITY FACTS
CURRENT-CASE EVIDENCE
GAPS
METHOD STATUS
```

## Blocking candidate

`BF-D4-M03-04 SOURCE APPLICABILITY LEAP`.

---

# ER-D4-05 — Различает direct / conditional / excluded scope и не отмывает conditional applicability

## Наблюдаемое поведение

Для ISO 17440-like route learner способен установить:

```text
DIRECTLY COVERED
CONDITIONAL EXTENSION — EXACT CONDITIONS REQUIRED
EXCLUDED / NOT COVERED
NOT YET DEMONSTRATED
```

Он не считает наличие conditional-extension language доказательством eligibility конкретного shank/component.

Plate-hook exclusion не обходится аналогией.

## Evidence output

```text
SCOPE STATE
DIRECT / CONDITIONAL / EXCLUDED / UNKNOWN
EXACT CONDITION REQUIRED
CURRENT EVIDENCE
MISSING EVIDENCE
CLAIM LIMIT
```

## Blocking candidate

`BF-D4-M03-05 CONDITIONAL-EXTENSION LAUNDERING`.

---

# ER-D4-06 — Не переносит authority между C-hook / crane hook / grab component families

## Наблюдаемое поведение

Learner устойчиво сохраняет:

```text
ISO 17096 C-HOOK COVERAGE
≠
CRANE HOOK-SUSPENSION PROOF

ISO 17096
≠
GRAB / GRAB-BUCKET AUTHORITY
```

General grab mechanics допускается отдельно от formal grab proof/holding/capacity criterion.

## Evidence output

```text
COMPONENT / SOURCE SCOPE MAP
ALLOWED GENERAL MECHANICS
FORMAL SOURCE GAP
REQUIRED OEM / DESIGNER / EXACT SOURCE
```

## Blocking candidate

`BF-D4-M03-06 SOURCE-SCOPE LAUNDERING`.

---

# ER-D4-07 — Выбирает smallest adequate model и не повышает status из-за fidelity/convergence

## Наблюдаемое поведение

Learner объясняет:

- requested output;
- physics required;
- physics omitted;
- why current level adequate/insufficient;
- what next fidelity adds;
- what evidence next fidelity requires.

Он понимает:

```text
MODEL FORM SUFFICIENT
≠
GOVERNING FORMAL METHOD SATISFIED
```

и:

```text
SOLVER CONVERGED
≠
MODEL VALIDATED
```

## Evidence output

```text
MODEL FIDELITY CARD
```

## Blocking candidate

`BF-D4-M03-07 FIDELITY STATUS ERROR`.

---

# ER-D4-08 — Фиксирует boundary-value problem и parent→child interface

## Наблюдаемое поведение

Learner показывает:

- geometry/configuration basis;
- load/state/motion;
- constraints/support/contact;
- requested outputs;
- omitted physics;
- units/sign conventions.

Для local component model:

```text
PARENT OUTPUT
→ TRANSFER RULE
→ CHILD INPUT
→ EQUILIBRIUM / COMPATIBILITY CHECK
```

Correct parent reaction не создаёт child source applicability.

## Evidence output

```text
BOUNDARY-VALUE RECORD
PARENT → CHILD INTERFACE RECORD
```

## Blocking candidate

`BF-D4-M03-08 PARENT-CHILD BREAK`.

---

# ER-D4-09 — Разделяет verification, cross-check и validation

## Наблюдаемое поведение

Learner отдельно отвечает:

```text
VERIFICATION:
правильно ли решена stated model?

CROSS-CHECK:
согласуется ли independent reasoning/model route?

VALIDATION:
достаточно ли real-system evidence для intended-use domain?
```

OEM/input authority не автоматически validation evidence.

## Evidence output

| Evidence item | Verification | Cross-check | Validation | Limits |
|---|---|---|---|---|

## Blocking candidate

`BF-D4-M03-09 CROSS-CHECK → VALIDATION LEAP`.

---

# ER-D4-10 — Активно ищет common-mode error и harmonize competing methods

## Наблюдаемое поведение

При agreement learner проверяет shared:

- configuration;
- input provenance;
- geometry mapping;
- source interpretation;
- boundary assumptions;
- measurement origin.

При disagreement сначала harmonize:

- configuration;
- state/time window;
- output quantity;
- units/signs;
- model-form differences.

## Evidence output

```text
COMMON-MODE CHALLENGE
METHOD HARMONIZATION TABLE
```

## Blocking candidate

`BF-D4-M03-10 COMMON-MODE BLINDNESS`.

---

# ER-D4-11 — Связывает sensitivity/uncertainty/robustness с decision и coverage

## Наблюдаемое поведение

Learner различает:

- parameter/input uncertainty;
- measurement uncertainty;
- configuration uncertainty;
- model-form uncertainty;
- scenario/state-space uncertainty;
- coverage uncertainty.

Перед словом `ROBUST` он показывает:

- provenance range/scenario;
- correlations/dependencies;
- model-form alternatives;
- coverage;
- outside-envelope unknowns;
- whether decision can flip.

## Evidence output

```text
SENSITIVITY / UNCERTAINTY TABLE
ROBUSTNESS ENVELOPE
```

## Blocking candidate

`BF-D4-M03-11 UNSOURCED / UNCOVERED ROBUSTNESS`.

---

# ER-D4-12 — Разводит evidence roles и применяет observability gate к negative evidence

## Наблюдаемое поведение

Learner различает:

```text
INSPECTION
MONITORING
CLASSIFICATION
FORMAL PROOF
REMAINING-LIFE PATHWAY
SAFE-USE / REGULATORY AUTHORITY
```

Он не превращает:

```text
NO DEFECT OBSERVED → DEFECT ABSENT
NO EVENT LOGGED → EVENT DID NOT OCCUR
```

без coverage/method capability/resolution/data completeness.

## Evidence output

| Evidence channel | Supports | Does not establish | Observability / coverage | Authority / gap |
|---|---|---|---|---|

## Blocking candidate

`BF-D4-M03-12 EVIDENCE-ROLE COLLAPSE`.

---

# ER-D4-13 — Выбирает next evidence по value of information и выдаёт bounded conclusion

## Наблюдаемое поведение

Learner выбирает datum/document/measurement, который:

- закрывает blocking applicability/configuration/input gap;
- discriminates models/methods;
- уменьшает decision-sensitive uncertainty;
- способен изменить bounded conclusion.

Финальный output разделяет:

1. supported;
2. conditionally supported;
3. not demonstrated;
4. critical unknowns;
5. next evidence;
6. STOP rule;
7. learner authority limit;
8. handoff.

`STOP / REQUEST EVIDENCE` считается успешным outcome, если blocking gap конкретен и safety obligation не скрыта.

## Evidence output

```text
NEXT EVIDENCE / VALUE-OF-INFORMATION REQUEST
BOUNDED CONCLUSION
STOP RULE
AUTHORITY HANDOFF
AUDIT TRAIL
```

## Blocking candidates

- `BF-D4-M03-13 AUTHORITY LEAK`;
- `BF-D4-M03-14 STOP-PERMISSION CONFUSION`.

---

# ER-D4-14 — Переносит D4-process на unseen case и обновляет chain после adversarial challenge

Это главный transfer criterion.

Known Practice A–J сами по себе не доказывают D4 transfer.

Verification должна дать новый integrated case с несколькими конфликтующими layers, например:

```text
configuration ambiguity
+ source/component applicability gap
+ decision-driving unknown
+ competing models
+ incomplete validation evidence
+ uncertainty capable of flipping decision
+ safety/authority boundary
```

## Phase U1 — independent unseen review

Без подсказки learner восстанавливает:

```text
QUESTION / CLAIM CLASSES
→ CONFIGURATION
→ INPUT PROVENANCE
→ SOURCE / COMPONENT / METHOD APPLICABILITY
→ SCOPE STATE
→ BOUNDARY / FIDELITY
→ V&V
→ COMMON-MODE CHALLENGE
→ SENSITIVITY / COVERAGE
→ EVIDENCE REQUEST
→ BOUNDED CONCLUSION
→ AUTHORITY HANDOFF
```

## Phase C1 — mandatory adversarial challenge

После первой conclusion Verification сообщает значимый datum или withdrawal of assumption.

Challenge families:

- approved configuration differs;
- hook construction/component mapping changes;
- ISO 17440 conditional condition is not met;
- source thought applicable explicitly excludes component;
- monitoring/inspection observability is weaker than assumed;
- two solvers share same geometry/source error;
- validation evidence belongs to different state/time window;
- robustness envelope proves narrower than assumed;
- grab criterion source is unavailable/inapplicable;
- authority/safety obligation changes handoff.

Learner должен обновить только затронутые layers и не защищать прежний result по инерции.

## Transfer success

- new datum affects correct layers;
- unaffected layers remain unless justified;
- conclusion strength changes proportionally;
- STOP is accepted when chain breaks;
- no equipment permission emerges from learner analysis.

---

# Минимальный наблюдаемый D4 packet

Для Verification должно быть наблюдаемо минимум:

1. `DECISION QUESTION / CLAIM CLASS MAP`;
2. `CONFIGURATION REGISTER`;
3. `BOUNDARY-VALUE / REQUESTED OUTPUT RECORD`;
4. `INPUT PROVENANCE + UNKNOWN REGISTER`;
5. `SOURCE / METHOD APPLICABILITY CARD`;
6. `SCOPE STATE: DIRECT / CONDITIONAL / EXCLUDED / UNKNOWN` when relevant;
7. `COMPONENT / SOURCE SCOPE MAP`, including grab guard when relevant;
8. `MODEL FIDELITY CARD`;
9. `PARENT → CHILD INTERFACE RECORD` when relevant;
10. `VERIFICATION / CROSS-CHECK / VALIDATION PLAN`;
11. `COMMON-MODE ERROR CHALLENGE`;
12. `SENSITIVITY / UNCERTAINTY TABLE`;
13. `ROBUSTNESS ENVELOPE + COVERAGE`;
14. `EVIDENCE-ROLE / OBSERVABILITY MAP`;
15. `NEXT EVIDENCE / VALUE-OF-INFORMATION REQUEST`;
16. `BOUNDED CONCLUSION`;
17. `STOP / SAFETY / AUTHORITY HANDOFF`;
18. `AUDIT TRAIL`;
19. update record after adversarial challenge.

Не каждый item обязан быть отдельным файлом, но каждый layer должен быть восстанавливаем другим инженером.

---

# Candidate blocking failures для Verification Rubric

```text
BF-D4-M03-01 QUESTION COLLAPSE
BF-D4-M03-02 CONFIGURATION COLLAPSE
BF-D4-M03-03 HIDDEN INPUT INVENTION
BF-D4-M03-04 SOURCE APPLICABILITY LEAP
BF-D4-M03-05 CONDITIONAL-EXTENSION LAUNDERING
BF-D4-M03-06 SOURCE-SCOPE LAUNDERING
BF-D4-M03-07 FIDELITY STATUS ERROR
BF-D4-M03-08 PARENT-CHILD BREAK
BF-D4-M03-09 CROSS-CHECK → VALIDATION LEAP
BF-D4-M03-10 COMMON-MODE BLINDNESS
BF-D4-M03-11 UNSOURCED / UNCOVERED ROBUSTNESS
BF-D4-M03-12 EVIDENCE-ROLE COLLAPSE
BF-D4-M03-13 AUTHORITY LEAK
BF-D4-M03-14 STOP-PERMISSION CONFUSION
```

Материальные failures должны быть non-compensable candidates: красивый solver, численная точность или сильные другие dimensions не компенсируют фундаментальный evidence/scope/authority breach.

---

# Что НЕ является достаточным D4 evidence

Недостаточно:

- назвать ISO/OEM document;
- найти real value в source;
- построить красивую FEA;
- показать convergence;
- получить agreement двух models;
- перечислить uncertainty;
- написать `STOP` без blocking gap;
- решить known Case J по образцу;
- повторить фразу об ISO 17096 grab exclusion без правильного применения на новом case.

---

# D3 → D4 observable jump

Сильный D3:

```text
OBSERVATION
→ COMPETING CAUSAL MODELS
→ PREDICTIONS
→ DISTINGUISHING EVIDENCE
→ BOUNDED CAUSAL STATUS
```

Доказанный D4:

```text
DECISION QUESTION
→ CLAIM CLASS
→ CONFIGURATION / INPUT PROVENANCE
→ SOURCE / COMPONENT / METHOD APPLICABILITY
→ BOUNDARY / MODEL FIDELITY
→ V&V
→ COMMON-MODE ERROR
→ UNCERTAINTY / COVERAGE
→ VALUE OF INFORMATION
→ BOUNDED OUTPUT
→ AUTHORITY / SAFETY
→ AUDIT TRAIL
```

D4 не отменяет D3. Он добавляет вопрос:

> **имеет ли выбранный способ анализа право поддерживать именно этот claim?**

---

# Expected Result — итоговая формулировка

После успешного D4 learner способен:

> **на новом кейсе по крюковым подвескам, forged hooks, suspension components и grabs самостоятельно построить воспроизводимый expert review: разложить management question на claim classes, разделить as-found/approved/calculation configuration, вести provenance critical inputs, доказать source/component/method applicability, различить direct/conditional/excluded scope, не переносить C-hook/attachment authority на crane hooks or grabs, выбрать smallest adequate model, трассировать parent→child interfaces, развести verification/cross-check/validation, оспорить common-mode error, проверить decision-sensitive uncertainty и coverage, применить observability gate к negative evidence, выбрать next evidence по value of information, выдать bounded conclusion и выполнить authority/safety handoff без invention, scope laundering, status inflation и equipment permission.**

---

# Что должен сделать следующий этап

`D4 VERIFICATION RUBRIC / v1` должен:

1. превратить `ER-D4-01…14` в scoreable levels;
2. оценивать reasoning quality, не заполненность шаблона;
3. сделать material `BF-D4-M03-01…14` non-compensable;
4. требовать known-case evidence, но не считать его достаточным;
5. требовать unseen integrated case;
6. требовать mandatory adversarial evidence-status challenge;
7. считать корректный `STOP / REQUEST EVIDENCE` сильным outcome;
8. сохранить ISO 17440 / ISO 17096 source-scope guards;
9. сохранить remaining-life / inspection / NDT / equipment-authority locks.
