# CRN-M-03 — Крюковые подвески и захваты
# D4 Verification Rubric v1
## Оценка экспертного управления инженерным доказательством, transfer и evidence-status update

---

# Назначение

Rubric отвечает на вопрос:

> **доказал ли learner D4-компетентность наблюдаемым поведением на known и unseen hook/suspension/grab cases, включая способность отказаться от красивого результата после нового evidence?**

Verification не награждает за сам факт использования FEA, ISO, формулы или большого отчёта. Проверяется управление всей chain:

```text
DECISION QUESTION / CLAIM CLASS
→ CONFIGURATION REGISTER
→ BOUNDARY-VALUE PROBLEM
→ INPUT PROVENANCE / UNKNOWN REGISTER
→ SOURCE / COMPONENT / METHOD APPLICABILITY
→ DIRECT / CONDITIONAL / EXCLUDED SCOPE
→ MINIMUM ADEQUATE FIDELITY
→ PARENT → CHILD INTERFACE WHEN RELEVANT
→ VERIFICATION / CROSS-CHECK / VALIDATION
→ COMMON-MODE ERROR CHALLENGE
→ SENSITIVITY / UNCERTAINTY / COVERAGE
→ EVIDENCE-ROLE / OBSERVABILITY MAP
→ VALUE OF INFORMATION
→ BOUNDED CONCLUSION / STOP
→ AUTHORITY / SAFETY HANDOFF
→ AUDIT TRAIL
→ UPDATE AFTER NEW EVIDENCE
```

`NOT DEMONSTRATED`, `METHOD APPLICABILITY NOT YET DEMONSTRATED`, `EXACT GRAB SOURCE / OEM / DESIGNER REQUIRED` и `STOP / REQUEST EVIDENCE` могут получать высокий score, если learner доказал границу и не изобрёл evidence.

Score bands ниже — **педагогическая политика**, не crane technical criteria.

---

# Архитектура проверки

```text
LAYER 1 — KNOWN PRACTICE A–J
↓
LAYER 2 — UNSEEN INTEGRATED TRANSFER U1
↓
LAYER 3 — ADVERSARIAL EVIDENCE-STATUS CHALLENGE C1
```

Known A–J необходимы, но не достаточны. Case J не закрывает transfer.

---

# Шкала 0–4

```text
0 — ABSENT / UNSAFE
1 — GUIDED / FRAGILE
2 — BASIC / KNOWN-CASE
3 — D4 DEMONSTRATED
4 — D4 TRANSFER / ROBUST
```

Level 4 требует, чтобы Level 3 сохранился на U1 и после C1.

---

# ER-D4-01 — Decision question / claim-class decomposition

## 0 — ABSENT / UNSAFE
Начинает с solver/source или смешивает configuration, proof, inspection, life и permission в один вывод.

## 1 — GUIDED / FRAGILE
После подсказки делит запрос, но claim classes/outputs остаются расплывчатыми.

## 2 — BASIC / KNOWN-CASE
На known case формулирует рабочие decision questions, но transfer under pressure нестабилен.

## 3 — D4 DEMONSTRATED
Самостоятельно до выбора method строит claim map и связывает каждый claim с допустимым evidence/output/authority.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 быстро перестраивает question map, если новый datum меняет decision, и показывает, какие прежние outputs перестали отвечать новому claim.

---

# ER-D4-02 — Configuration versioning: as-found / approved / calculation

## 0 — ABSENT / UNSAFE
Смешивает as-found, approved/design и calculation configuration либо использует одну как доказательство другой.

## 1 — GUIDED / FRAGILE
Различает версии после подсказки, но revision/status gaps и relation между ними не фиксирует.

## 2 — BASIC / KNOWN-CASE
На known case ведёт register, однако transfer/revision invalidation неполны.

## 3 — D4 DEMONSTRATED
Самостоятельно версионирует все три configurations, provenance/gaps и relation MATCH/DEVIATION/UNKNOWN.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 локализует invalidated models/inputs после нового configuration evidence и сохраняет traceability старой/новой версии.

---

# ER-D4-03 — Input provenance / unknown discipline

## 0 — ABSENT / UNSAFE
Молча подставляет nominal/typical value вместо decision-driving UNKNOWN.

## 1 — GUIDED / FRAGILE
Unknown register появляется после подсказки; provenance/decision sensitivity неполны.

## 2 — BASIC / KNOWN-CASE
На known case большинство critical inputs имеют provenance, но часть unknown не связана с claim strength.

## 3 — D4 DEMONSTRATED
Самостоятельно ведёт source/version/status всех decision-driving inputs и ставит STOP, если input блокирует claim.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 выделяет decision-flipping inputs, отличает scenario assumption от actual input и пропорционально обновляет conclusion.

---

# ER-D4-04 — Source / component / method applicability

## 0 — ABSENT / UNSAFE
Факт существования source/value объявляет current-case applicability или реконструирует закрытый branch.

## 1 — GUIDED / FRAGILE
После подсказки замечает edition/object/branch, но mapping остаётся декларативным.

## 2 — BASIC / KNOWN-CASE
На known case строит applicability card, однако exclusions/prerequisites/gaps неполны.

## 3 — D4 DEMONSTRATED
Самостоятельно доказывает source status, component/question prerequisites и current-case mapping; gap снижает method status.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 отзывает method status, когда новый evidence рушит mapping, и выбирает законный альтернативный путь без source-role leap.

---

# ER-D4-05 — Direct / conditional / excluded scope discipline

## 0 — ABSENT / UNSAFE
Conditional-extension language превращает в automatic eligibility или игнорирует explicit exclusion.

## 1 — GUIDED / FRAGILE
После подсказки различает states, но exact conditions/current evidence не связывает.

## 2 — BASIC / KNOWN-CASE
На known D/J правильно маркирует direct/conditional/excluded, но unseen transfer хрупок.

## 3 — D4 DEMONSTRATED
Самостоятельно ведёт DIRECT / CONDITIONAL / EXCLUDED / NOT YET DEMONSTRATED и не использует source-bound criterion до закрытия conditions.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 корректно меняет scope state после нового construction/branch evidence; plate/non-covered case не «лечит аналогией».

---

# ER-D4-06 — C-hook / crane-hook / grab source-scope separation

## 0 — ABSENT / UNSAFE
Переносит ISO 17096 C-hook/attachment scope на crane hook-suspension proof или grabs/grab buckets.

## 1 — GUIDED / FRAGILE
После подсказки повторяет exclusion, но general mechanics/formal authority всё ещё смешиваются.

## 2 — BASIC / KNOWN-CASE
На known E/J guard соблюдает, но transfer к новому attachment taxonomy нестабилен.

## 3 — D4 DEMONSTRATED
Самостоятельно разделяет general mechanics, C-hook scope, crane-hook proof и grab formal source gap.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 выдерживает scope pressure и явно требует exact grab/OEM/designer source вместо analogy laundering.

---

# ER-D4-07 — Minimum adequate fidelity / model-status discipline

## 0 — ABSENT / UNSAFE
Mesh/convergence/nonlinear/transient complexity выдаёт за adequacy/validation/formal proof.

## 1 — GUIDED / FRAGILE
После подсказки перечисляет omitted physics, но escalation не связан с decision capability.

## 2 — BASIC / KNOWN-CASE
На known case выбирает разумную fidelity, но escalation/stop criteria нестабильны.

## 3 — D4 DEMONSTRATED
Самостоятельно выбирает smallest adequate model и объясняет what changes if fidelity increases.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 способен и повысить, и понизить fidelity; не защищает сложную model, если question/configuration changed.

---

# ER-D4-08 — Boundary-value record / parent→child interface

## 0 — ABSENT / UNSAFE
Использует local model без auditable loads, constraints, geometry/version, transfer rule или balance.

## 1 — GUIDED / FRAGILE
После подсказки восстанавливает часть boundary record; parent→child transfer остаётся магическим.

## 2 — BASIC / KNOWN-CASE
На known case интерфейс в основном рабочий, но version/balance gaps остаются.

## 3 — D4 DEMONSTRATED
Самостоятельно фиксирует geometry/state/loads/supports/contact/outputs и parent→child provenance/balance/version mapping.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 локализует invalidated interface и ограничивает только затронутые outputs вместо бездумного принятия/отбрасывания всей model.

---

# ER-D4-09 — Verification / cross-check / validation separation

## 0 — ABSENT / UNSAFE
Solver convergence или второй расчёт объявляет validation; measurement applicability/coverage не проверяется.

## 1 — GUIDED / FRAGILE
После подсказки знает термины, но evidence roles смешиваются.

## 2 — BASIC / KNOWN-CASE
На known case различает layers, но cross-check independence/validation state mapping слабы.

## 3 — D4 DEMONSTRATED
Самостоятельно строит separate verification, cross-check and validation plans и ограничивает каждый evidence его role/domain.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 пересобирает V&V status после потери measurement applicability/independence и снижает conclusion despite pretty numbers.

---

# ER-D4-10 — Common-mode error / competing-method harmonization

## 0 — ABSENT / UNSAFE
Согласие models трактует как независимое подтверждение без shared configuration/input/source check.

## 1 — GUIDED / FRAGILE
После подсказки ищет один общий input, но harmonization outputs/definitions неполна.

## 2 — BASIC / KNOWN-CASE
На known case common-mode checklist полезен, но transfer к genuinely independent challenge нестабилен.

## 3 — D4 DEMONSTRATED
Самостоятельно harmonizes question/output/units/state и проверяет independence provenance до evidential weighting.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 распознаёт collapse independence, пересчитывает evidential weight и предлагает discriminating check вместо третьего solver.

---

# ER-D4-11 — Sensitivity / uncertainty / coverage / robustness

## 0 — ABSENT / UNSAFE
Показывает nominal result или удобные scenarios и объявляет robust без provenance/coverage.

## 1 — GUIDED / FRAGILE
После подсказки меняет параметры, но диапазоны/correlation/coverage/decision link слабы.

## 2 — BASIC / KNOWN-CASE
На known case sensitivity полезна, но model-form/coverage uncertainty неполна.

## 3 — D4 DEMONSTRATED
Самостоятельно ранжирует decision-sensitive uncertainties, provenance ranges, dependencies and coverage; robustness bounded to envelope.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 отзывает robustness when envelope/provenance narrows and identifies decision-flipping scenario/evidence.

---

# ER-D4-12 — Evidence-role separation / observability

## 0 — ABSENT / UNSAFE
Inspection/monitoring/classification/proof/life/authority используются взаимозаменяемо; no finding/log становится absence.

## 1 — GUIDED / FRAGILE
После подсказки различает часть roles, но observability/coverage остаются декларативными.

## 2 — BASIC / KNOWN-CASE
На known case role map обычно корректна, но negative-evidence discipline хрупка.

## 3 — D4 DEMONSTRATED
Самостоятельно пишет role/observability map и не повышает observation/history до proof/life/permission.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 выдерживает weakened inspection/monitoring coverage и сохраняет parallel bounded statuses.

---

# ER-D4-13 — Value of information / bounded conclusion / STOP / authority

## 0 — ABSENT / UNSAFE
Просит «больше данных» без discrimination value либо выдаёт proof/life/permission/operation verdict; STOP трактует как permission.

## 1 — GUIDED / FRAGILE
После подсказки ограничивает wording, но next evidence/stop reason/authority/audit неполны.

## 2 — BASIC / KNOWN-CASE
На known case bounded conclusion рабочий, но under-pressure phrasing может снова стать чрезмерной.

## 3 — D4 DEMONSTRATED
Самостоятельно ранжирует next evidence, формулирует claim-specific statuses, STOP/safety/authority handoff и audit trail.

## 4 — D4 TRANSFER / ROBUST
На U1/C1 сохраняет границы под management pressure и усиливает/ослабляет conclusion строго по evidence, не путая analysis status с permission.

---

# ER-D4-14 — Unseen adaptive transfer + adversarial evidence-status update

## 0 — ABSENT / UNSAFE
Не способен собрать D4 workflow на unseen case или защищает initial conclusion вопреки challenge.

## 1 — GUIDED / FRAGILE
U1 требует существенного ведения; C1 update фрагментарен.

## 2 — BASIC / KNOWN-CASE
Known A–J выполнены хорошо, но U1/C1 transfer нестабилен.

## 3 — D4 DEMONSTRATED
Самостоятельно проходит U1 от claim map до bounded handoff и после C1 evidence-linked обновляет affected layers.

## 4 — D4 TRANSFER / ROBUST
Robust adaptation: быстро локализует invalidated assumptions, пересобирает только затронутую chain, сохраняет UNKNOWN/authority и объясняет why status changed.

---


# Blocking Failures — non-compensable

Любой material BF ниже немедленно означает `D4 NOT VERIFIED` независимо от total score.

## BF-D4-M03-01 — QUESTION COLLAPSE
Multiple claim classes collapse into one method/output so evidence and authority boundaries disappear.

## BF-D4-M03-02 — CONFIGURATION COLLAPSE
As-found / approved / calculation configurations are mixed or treated equivalent without revision evidence.

## BF-D4-M03-03 — HIDDEN INPUT INVENTION
Decision-driving UNKNOWN is silently replaced by nominal/typical/zero value outside an explicitly bounded scenario study.

## BF-D4-M03-04 — SOURCE APPLICABILITY LEAP
Source existence/value is promoted to current-case applicability without edition/component/branch/input mapping or closed branch is reconstructed.

## BF-D4-M03-05 — CONDITIONAL-EXTENSION LAUNDERING
ISO 17440 conditional-extension language is treated as automatic eligibility; exact conditions are not demonstrated.

## BF-D4-M03-06 — SOURCE-SCOPE LAUNDERING
ISO 17096 C-hook/attachment scope is promoted into crane hook-suspension proof or grab/grab-bucket authority.

## BF-D4-M03-07 — FIDELITY STATUS ERROR
Model complexity, convergence or mesh refinement is promoted into adequacy/validation/formal proof status.

## BF-D4-M03-08 — PARENT-CHILD BREAK
Local/submodel result is used without auditable parent loads, transfer, configuration/version mapping or balance.

## BF-D4-M03-09 — CROSS-CHECK → VALIDATION LEAP
Agreement/internal consistency is called real-system validation without applicable validation evidence.

## BF-D4-M03-10 — COMMON-MODE BLINDNESS
Agreement gets independent evidential weight without challenging shared geometry/input/source/criterion provenance.

## BF-D4-M03-11 — UNSOURCED / UNCOVERED ROBUSTNESS
Robustness is claimed without defensible range/scenario provenance and credible state-space coverage.

## BF-D4-M03-12 — EVIDENCE-ROLE COLLAPSE
Inspection/monitoring/classification/proof/life/authority channels are used interchangeably or negative evidence ignores observability.

## BF-D4-M03-13 — AUTHORITY LEAK
Technical analysis/recommendation becomes equipment-specific permission, acceptance, repair/redesign/modification/operation authority.

## BF-D4-M03-14 — STOP-PERMISSION CONFUSION
STOP / REQUEST EVIDENCE or analysis pause is interpreted as permission to continue operation or defer an already applicable safety/authority obligation.


---

# Обязательный unseen transfer — U1

## Scenario

После ремонта предприятие хочет быстро вернуть в работу crane system с hook suspension и сменным grab.

Дано:

- as-found hook suspension documented by photos/partial measurements;
- archived approved drawing exists, but modification/revision chain is incomplete;
- hook is steel-forged, but exact body/shank construction mapping to ISO 17440 route is not fully closed;
- one legacy global suspension spreadsheet and one local traverse/pin FEA exist;
- both models use the same archived geometry table and same derived branch reaction value;
- current field pin location may differ from that archived table;
- grab geometry/kinematics are partly measured;
- grab contact/friction assumptions come from an old internal calculation;
- jaw FEA exists with good mesh documentation;
- public ISO 17096 scope information is available and explicitly excludes grabs / grab buckets;
- latest visual inspection does not report an obvious hook defect within inspected areas;
- monitoring history is partial and bandwidth/completeness for brief events are not fully demonstrated;
- no exact grab proof/holding/capacity source/OEM/designer package is provided;
- no equipment-authority decision is provided.

Management request:

> «Расчёты сходятся, осмотр нормальный, крюк кованый. Подтвердите, что подвеска и grab готовы к работе».

## Required pre-C1 visible package

1. decision/claim map;
2. configuration register;
3. boundary-value record;
4. input provenance + unknown register;
5. source/component/method applicability card;
6. direct/conditional/excluded scope state when relevant;
7. component/source scope map for grab;
8. model fidelity card;
9. parent→child interface record;
10. verification/cross-check/validation plan;
11. common-mode challenge;
12. sensitivity/uncertainty table;
13. robustness envelope + coverage;
14. evidence-role/observability map;
15. value-of-information request;
16. bounded conclusion;
17. STOP/safety/authority handoff;
18. audit trail.

A strong result may be `STOP / REQUEST EVIDENCE`.

---

# Mandatory C1 challenge

After initial conclusion, assessor releases authenticated evidence:

```text
C1-A
Current approved hook-suspension drawing differs from the archived geometry
used by both global spreadsheet and local FEA at the pin/interface geometry.

C1-B
The hook shank construction is not established as a direct-coverage case;
using ISO 17440 principles would require exact conditional-extension conditions
that are not present in the learner packet.

C1-C
Both apparently independent models imported the same derived branch-reaction
value from the same old workbook; that workbook was produced for the archived
configuration.

C1-D
Inspection remains valid only for its stated access/method/time window.
Monitoring completeness for brief transient events remains PARTIAL.
```

## Required update path

```text
NEW EVIDENCE
→ CONFIGURATION UPDATE
→ INPUT PROVENANCE UPDATE
→ ISO 17440 SCOPE/APPLICABILITY UPDATE
→ PARENT/CHILD + COMMON-MODE UPDATE
→ V&V UPDATE
→ SENSITIVITY / COVERAGE UPDATE
→ EVIDENCE PRIORITY UPDATE
→ BOUNDED CONCLUSION UPDATE
→ AUTHORITY / SAFETY HANDOFF UPDATE
```

Learner may retain the same final wording only by proving C1 does not materially change that claim.

---

# Evidence package checklist

| Evidence layer | Present? | Auditable? | Status inflation? | Notes |
|---|---|---|---|---|
| Decision/claim map | | | | |
| Configuration register | | | | |
| Boundary-value record | | | | |
| Input provenance / unknowns | | | | |
| Source/component/method applicability | | | | |
| Scope state direct/conditional/excluded | | | | |
| Grab component/source scope map | | | | |
| Fidelity rationale | | | | |
| Parent→child interface | | | | |
| Verification plan | | | | |
| Cross-check plan | | | | |
| Validation plan | | | | |
| Common-mode challenge | | | | |
| Sensitivity / uncertainty | | | | |
| Robustness envelope + coverage | | | | |
| Evidence-role / observability map | | | | |
| Value-of-information request | | | | |
| Bounded conclusion | | | | |
| Stop/safety/authority handoff | | | | |
| Audit trail | | | | |
| C1 update trace | | | | |

---

# Scoring sheet

| ER | Score 0–4 | Known evidence | U1 evidence | C1 evidence | BF triggered? | Assessor note |
|---|---:|---|---|---|---|---|
| ER-D4-01 |  |  |  |  |  |  |
| ER-D4-02 |  |  |  |  |  |  |
| ER-D4-03 |  |  |  |  |  |  |
| ER-D4-04 |  |  |  |  |  |  |
| ER-D4-05 |  |  |  |  |  |  |
| ER-D4-06 |  |  |  |  |  |  |
| ER-D4-07 |  |  |  |  |  |  |
| ER-D4-08 |  |  |  |  |  |  |
| ER-D4-09 |  |  |  |  |  |  |
| ER-D4-10 |  |  |  |  |  |  |
| ER-D4-11 |  |  |  |  |  |  |
| ER-D4-12 |  |  |  |  |  |  |
| ER-D4-13 |  |  |  |  |  |  |
| ER-D4-14 |  |  |  |  |  |  |

## Score arithmetic

```text
14 dimensions × 0–4 = 56 maximum
```

## D4 NOT VERIFIED

Любое из условий:

- любой `BF-D4-M03-01…14 = TRUE`;
- любая ER-dimension <3;
- U1 не выполнен;
- C1 не выполнен;
- learner не способен дать bounded STOP/escalation при incomplete evidence chain;
- hook/grab source-scope guard нарушен;
- equipment/safety authority boundary нарушена.

## D4 VERIFIED

Все одновременно:

```text
TOTAL >= 42/56
EVERY ER-D4-01…14 >= 3
NO BF-D4-M03-01…14
KNOWN A–J EVIDENCE PRESENT
U1 COMPLETE
C1 COMPLETE
STOP / SOURCE-SCOPE / AUTHORITY GATES PASS
```

42 — математический минимум `14 × Level 3`; total ничего не компенсирует.

## D4 ROBUST / TRANSFER

Все `D4 VERIFIED` плюс:

```text
TOTAL >= 50/56

ER-D4-04 >= 4   source/component/method applicability
ER-D4-05 >= 4   direct/conditional/excluded scope
ER-D4-06 >= 4   C-hook/crane-hook/grab scope separation
ER-D4-09 >= 4   V&V separation
ER-D4-10 >= 4   common-mode / harmonization
ER-D4-11 >= 4   sensitivity/coverage robustness
ER-D4-13 >= 4   bounded STOP / authority handoff
ER-D4-14 >= 4   unseen/challenge adaptation
```

Это ровно 8 Level-4 core dimensions; остальные шесть должны быть минимум Level 3.

---

# Blocking Failure sheet

| BF | TRUE/FALSE | Evidence / line | Immediate action |
|---|---|---|---|
| BF-D4-M03-01 QUESTION COLLAPSE |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-02 CONFIGURATION COLLAPSE |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-03 HIDDEN INPUT INVENTION |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-04 SOURCE APPLICABILITY LEAP |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-05 CONDITIONAL-EXTENSION LAUNDERING |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-06 SOURCE-SCOPE LAUNDERING |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-07 FIDELITY STATUS ERROR |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-08 PARENT-CHILD BREAK |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-09 CROSS-CHECK → VALIDATION LEAP |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-10 COMMON-MODE BLINDNESS |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-11 UNSOURCED / UNCOVERED ROBUSTNESS |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-12 EVIDENCE-ROLE COLLAPSE |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-13 AUTHORITY LEAK |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-M03-14 STOP-PERMISSION CONFUSION |  |  | `D4 NOT VERIFIED` if TRUE |

---

# Assessor pressure tests

Assessor может вводить pressure, но не trick-answer guessing:

- «Крюк кованый и ISO найден — зачем ещё applicability?»
- «Там же написано, что principles можно применить к другим shanks».
- «ISO 17096 про lifting attachments; grab тоже attachment, разве нет?»
- «Два solver совпали — значит validation есть».
- «Mesh хороший, jaw FEA выглядит отлично — почему это не capacity?»
- «Осмотр ничего не нашёл — значит дефекта нет?»
- «В monitoring нет event — значит event не было».
- «Возьми nominal friction, чтобы закончить расчёт».
- «Мы STOPнули расчёт. Тогда пока можно продолжать работать?»
- «Нужно решение к концу смены — убери UNKNOWN».

Высокий score требует спокойного evidence-linked объяснения, какой claim поддержан, какой нет и почему.

---

# Rubric boundary

Rubric не вводит:

- новые normative thresholds;
- crane-specific coefficients/load combinations;
- paid branch logic;
- actual hook/grab proof;
- grab holding/capacity/acceptance criteria;
- remaining-life numbers;
- discard/acceptance criteria;
- specialist NDT verdict;
- equipment-specific permission.

`D4 VERIFIED` и `D4 ROBUST / TRANSFER` — educational competence states.

Следующий stage — Final Alignment.
