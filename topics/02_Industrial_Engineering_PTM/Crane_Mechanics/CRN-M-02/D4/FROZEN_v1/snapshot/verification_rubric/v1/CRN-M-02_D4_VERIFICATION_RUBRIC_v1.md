# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 Verification Rubric v1
## Оценка экспертного управления инженерным доказательством, transfer и evidence-status update

---

# Назначение

Эта рубрика отвечает на вопрос:

> **доказал ли обучающийся D4-компетентность наблюдаемым поведением на знакомых и незнакомых задачах, включая способность отказаться от красивого, но недоказанного результата после нового evidence?**

Verification не награждает за сам факт использования FEA, стандарта, сложной формулы или большого отчёта. Проверяется управление всей цепочкой:

```text
DECISION QUESTION / CLAIM CLASS
→ CONFIGURATION LOCK
→ BOUNDARY-VALUE PROBLEM
→ INPUT PROVENANCE / UNKNOWN REGISTER
→ SOURCE / METHOD APPLICABILITY
→ MINIMUM ADEQUATE FIDELITY
→ PARENT → CHILD INTERFACE WHEN RELEVANT
→ VERIFICATION / CROSS-CHECK / VALIDATION
→ COMMON-MODE ERROR CHALLENGE
→ SENSITIVITY / UNCERTAINTY
→ ROBUSTNESS ENVELOPE + PROVENANCE
→ EVIDENCE-ROLE MAP
→ VALUE OF INFORMATION
→ BOUNDED CONCLUSION / STOP
→ AUTHORITY / SAFETY HANDOFF
→ AUDIT TRAIL
→ UPDATE AFTER NEW EVIDENCE
```

Корректные результаты `NOT DEMONSTRATED`, `METHOD NOT SHOWN APPLICABLE`, `INSUFFICIENT DATA`, `SOURCE / OEM / SPECIALIST REQUIRED` и `STOP / REQUEST EVIDENCE` могут получить высокий балл, если ученик доказал границу и не изобрёл недостающий evidence.

D4 Verification не является actual proof-of-competence реального механизма, design approval, remaining-life/fatigue-life assessment, discard/acceptance decision, specialist NDT interpretation или разрешением на эксплуатацию/ремонт/redesign/field modification. Score bands ниже — **педагогическая политика оценки**, а не технические критерии крана.

---

# Архитектура проверки

Verification состоит из трёх обязательных слоёв:

```text
LAYER 1 — KNOWN CASE EVIDENCE A–J
↓
LAYER 2 — UNSEEN INTEGRATED TRANSFER U1
↓
LAYER 3 — ADVERSARIAL EVIDENCE-STATUS CHALLENGE C1
```

## Layer 1 — Known Case Evidence

Проверяющий выбирает Practice A–J так, чтобы увидеть все ER-D4-01…13. Case J полезен как известный capstone, но **не закрывает transfer**.

## Layer 2 — Unseen Integrated Transfer U1

U1 отсутствует в Practice A–J и должен одновременно требовать method-governance, configuration/input provenance, V&V/common-mode review, uncertainty/robustness и bounded authority handoff.

## Layer 3 — Adversarial Evidence-Status Challenge C1

После того как ученик зафиксировал initial method status и bounded conclusion, проверяющий выдаёт новый datum, который materially меняет хотя бы один из layers configuration/input/applicability/V&V/robustness. Ученик обязан показать evidence-linked update, а не просто переписать финальную строку.

---

# Шкала 0–4

Каждая ER-D4-dimension оценивается:

```text
0 — ABSENT / UNSAFE
1 — GUIDED / FRAGILE
2 — BASIC / KNOWN-CASE
3 — D4 DEMONSTRATED
4 — D4 TRANSFER / ROBUST
```

## Level 0 — ABSENT / UNSAFE

Ключевой step отсутствует или возникает status inflation: source exists→applicable, converged→validated, two models agree→independent confirmation, observed→approved, analysis stop→permission, technical recommendation→equipment authority.

## Level 1 — GUIDED / FRAGILE

Элементы workflow появляются только после подсказки и не удерживаются при conflicting evidence.

## Level 2 — BASIC / KNOWN-CASE

На знакомом case reasoning в основном рабочий; Blocking Failure отсутствует, но unseen/challenge transfer неустойчив.

## Level 3 — D4 DEMONSTRATED

Ученик самостоятельно строит auditable evidence chain, ограничивает claims и выдаёт bounded conclusion/stop/handoff без скрытых inputs и authority leak.

## Level 4 — D4 TRANSFER / ROBUST

Level 3 устойчиво сохраняется на U1 и после C1; learner корректно меняет model/method/conclusion status при новом evidence и может объяснить, **что именно стало invalid и почему**.

---
# ER-D4-01 — Decision question / claim-class decomposition

## 0 — ABSENT / UNSAFE

Начинает с solver/стандарта или смешивает proof, condition, life и operational permission в один неразделимый вывод.

## 1 — GUIDED / FRAGILE

После подсказки делит запрос на часть подзадач, но claim classes и decision outputs остаются расплывчатыми.

## 2 — BASIC / KNOWN-CASE

На знакомом кейсе формулирует рабочие decision questions и большинство claim classes, но на transfer снова склонен схлопывать запрос.

## 3 — D4 DEMONSTRATED

Самостоятельно до выбора метода разлагает management request на decision questions/claim classes и связывает каждый с допустимым evidence/output.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge быстро пересобирает question map при изменении задачи и явно показывает, какие прежние methods/outputs перестали отвечать новому claim.

---
# ER-D4-02 — Configuration versioning: as-found / approved / calculation

## 0 — ABSENT / UNSAFE

Смешивает as-found, archived/design и calculation configuration либо использует одну как доказательство другой.

## 1 — GUIDED / FRAGILE

После подсказки различает версии, но revision/status gaps или relation между ними не фиксирует.

## 2 — BASIC / KNOWN-CASE

На known case ведёт configuration register, но transfer/revision control нестабилен.

## 3 — D4 DEMONSTRATED

Самостоятельно версионирует as-found, approved/design и calculation configuration, фиксирует provenance/gaps и не повышает UNKNOWN до approved.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge корректно invalidates затронутые модели/inputs после нового configuration evidence и сохраняет traceability старой и новой версии.

---
# ER-D4-03 — Input provenance / unknown discipline

## 0 — ABSENT / UNSAFE

Изобретает, усредняет или молча подставляет decision-driving input, чтобы расчёт продолжился.

## 1 — GUIDED / FRAGILE

Unknown register появляется после подсказки; provenance и decision sensitivity неполны.

## 2 — BASIC / KNOWN-CASE

На known case большинство критичных inputs имеют provenance, но часть неизвестных не связана с силой вывода.

## 3 — D4 DEMONSTRATED

Самостоятельно ведёт provenance/version/status всех decision-driving inputs, сохраняет UNKNOWN и ставит stop/request evidence, когда input блокирует claim.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge выделяет именно decision-flipping inputs, различает scenario assumption и actual input и перестраивает вывод после correction.

---
# ER-D4-04 — Source / method applicability

## 0 — ABSENT / UNSAFE

Факт существования стандарта/OEM/формулы/значения объявляет доказательством current-case applicability или реконструирует закрытый branch.

## 1 — GUIDED / FRAGILE

После подсказки замечает edition/object/branch, но current-case mapping остаётся декларативным.

## 2 — BASIC / KNOWN-CASE

На known case делает applicability card, однако exclusions/prerequisites или unresolved gap проработаны неполно.

## 3 — D4 DEMONSTRATED

Самостоятельно доказывает source status, object/branch prerequisites и current-case mapping; честно ставит CONDITIONALLY APPLICABLE / NOT DEMONSTRATED при gap.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge оперативно отзывает method status, если новый datum рушит branch mapping, и выбирает законный альтернативный путь без source-role leap.

---
# ER-D4-05 — Minimum adequate fidelity / model-status discipline

## 0 — ABSENT / UNSAFE

Сложность, mesh density, nonlinear/transient solver или convergence автоматически превращаются в adequacy/validation.

## 1 — GUIDED / FRAGILE

После подсказки объясняет часть omitted physics, но fidelity escalation не привязана к decision capability.

## 2 — BASIC / KNOWN-CASE

На known case выбирает разумный уровень модели, но escalation criteria/required evidence нестабильны.

## 3 — D4 DEMONSTRATED

Самостоятельно выбирает smallest adequate model, перечисляет omitted physics и объясняет, какое новое decision capability и evidence оправдают escalation.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge способен как повысить, так и понизить fidelity; не защищает сложную модель, если новый evidence показывает, что решается другой вопрос.

---
# ER-D4-06 — Boundary-value record / parent→child interface

## 0 — ABSENT / UNSAFE

Интерпретирует локальную модель без auditable loads, constraints, geometry/version, interfaces или requested outputs.

## 1 — GUIDED / FRAGILE

После подсказки восстанавливает часть boundary record, но parent→child transfer остаётся «магическим».

## 2 — BASIC / KNOWN-CASE

На known case проверяет основные boundaries/interface, но balance/version mapping неполны.

## 3 — D4 DEMONSTRATED

Самостоятельно фиксирует geometry/state, loads, supports/contact, outputs, excluded physics и при child model проверяет parent-load provenance/interface balance/version.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge локализует, какой interface invalidated, и ограничивает только затронутые outputs вместо бездумного принятия/отбрасывания всей модели.

---
# ER-D4-07 — Verification / cross-check / validation separation

## 0 — ABSENT / UNSAFE

Solver convergence или второй расчёт объявляет validation; measurement applicability/coverage не проверяется.

## 1 — GUIDED / FRAGILE

После подсказки называет V&V термины, но evidence roles смешиваются.

## 2 — BASIC / KNOWN-CASE

На known case различает verification и validation, однако cross-check/common provenance или validation state mapping слабы.

## 3 — D4 DEMONSTRATED

Самостоятельно строит отдельные verification, cross-check и validation plans и ограничивает каждый evidence его реальной ролью/state/window.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge пересобирает V&V status после потери measurement applicability или independence и явно понижает conclusion, даже если численные результаты красивы.

---
# ER-D4-08 — Common-mode error / competing-method harmonization

## 0 — ABSENT / UNSAFE

Согласие двух моделей трактует как независимое подтверждение без проверки общей геометрии, input, source branch, code path или criterion definition.

## 1 — GUIDED / FRAGILE

После подсказки ищет общий input, но harmonization outputs/definitions неполна.

## 2 — BASIC / KNOWN-CASE

На known case делает common-mode checklist, однако transfer к genuinely independent challenge нестабилен.

## 3 — D4 DEMONSTRATED

Самостоятельно harmonizes question/output/units/state, проверяет independence provenance и перечисляет common-mode channels до использования agreement как evidence.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge распознаёт collapse независимости, пересчитывает evidential weight и предлагает независимый discriminating check, а не третий solver с тем же input.

---
# ER-D4-09 — Decision-sensitive sensitivity / uncertainty

## 0 — ABSENT / UNSAFE

Показывает одну nominal цифру без decision-sensitive unknowns или выдаёт arbitrary perturbation за uncertainty proof.

## 1 — GUIDED / FRAGILE

После подсказки меняет несколько параметров, но диапазоны/provenance и decision link слабые.

## 2 — BASIC / KNOWN-CASE

На known case строит полезную sensitivity table, однако не всегда отделяет numerical precision от epistemic/configuration uncertainty.

## 3 — D4 DEMONSTRATED

Самостоятельно ранжирует decision-sensitive uncertainties, задаёт provenance/status диапазонов и показывает, какие изменения могут сменить method/conclusion.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge обновляет uncertainty budget и decision status при изменении диапазона, не пряча flip за nominal best estimate.

---
# ER-D4-10 — Provenance-bounded robustness envelope

## 0 — ABSENT / UNSAFE

Объявляет решение robust по нескольким удобным сценариям без доказательства, что envelope покрывает credible states.

## 1 — GUIDED / FRAGILE

После подсказки добавляет scenarios, но envelope ownership/provenance не установлен.

## 2 — BASIC / KNOWN-CASE

На known case проверяет несколько credible scenarios, однако missing-state и out-of-envelope logic неполны.

## 3 — D4 DEMONSTRATED

Самостоятельно документирует envelope, provenance/coverage/omissions и формулирует robustness только внутри него.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge корректно отзывает robustness, если envelope расширяется/теряет provenance, и показывает, какой новый scenario реально меняет decision.

---
# ER-D4-11 — Evidence-role separation

## 0 — ABSENT / UNSAFE

Inspection, monitoring, classification, design proof, life assessment и authority evidence используются взаимозаменяемо.

## 1 — GUIDED / FRAGILE

После подсказки различает часть ролей, но один сильный источник продолжает «закрывать всё».

## 2 — BASIC / KNOWN-CASE

На known case role map в целом корректна, но applicability/capability boundaries нестабильны.

## 3 — D4 DEMONSTRATED

Самостоятельно пишет question-specific evidence-role map и не повышает observation/history до proof/life/permission.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge выдерживает конфликт evidence: сохраняет параллельные bounded statuses вместо принудительного единого verdict.

---
# ER-D4-12 — Value of information / discriminating evidence

## 0 — ABSENT / UNSAFE

Просит «больше данных» без объяснения, что изменит decision, либо выбирает дорогое/красивое evidence с низкой discrimination value.

## 1 — GUIDED / FRAGILE

После подсказки называет useful datum, но predicted decision branches не показаны.

## 2 — BASIC / KNOWN-CASE

На known case выбирает разумное evidence request, однако priority/authority/feasibility неполны.

## 3 — D4 DEMONSTRATED

Самостоятельно ранжирует next evidence по decision value, discrimination, feasibility/authority и заранее пишет, как разные outcomes изменят method/conclusion.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge отказывается от низкоценного анализа, когда новый datum делает другой evidence path доминирующим, и явно объясняет reorder.

---
# ER-D4-13 — Bounded conclusion / stop / authority / audit trail

## 0 — ABSENT / UNSAFE

Выдаёт equipment permission, proof/life/discard verdict или скрывает blocking gap; analysis stop трактуется как разрешение продолжать эксплуатацию.

## 1 — GUIDED / FRAGILE

После подсказки ограничивает формулировку, но stop reason, next evidence, authority handoff или audit trail неполны.

## 2 — BASIC / KNOWN-CASE

На known case выдаёт bounded conclusion и handoff, однако under-pressure phrasing может снова стать чрезмерной.

## 3 — D4 DEMONSTRATED

Самостоятельно формулирует claim-specific statuses, blocking gaps, stop/safety/authority handoff и reproducible audit trail; не присваивает себе equipment authority.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge сохраняет границы под срочным management pressure и умеет усиливать/ослаблять conclusion строго по evidence, не путая analysis status с permission.

---
# ER-D4-14 — Unseen adaptive transfer + adversarial evidence-status update

## 0 — ABSENT / UNSAFE

Не способен самостоятельно собрать D4 workflow на новом кейсе или защищает initial conclusion вопреки challenge.

## 1 — GUIDED / FRAGILE

На unseen case работает только с существенным ведением; challenge update фрагментарен.

## 2 — BASIC / KNOWN-CASE

Known A–J/J capstone выполнены хорошо, но U1/C1 transfer нестабилен или update не проходит по всей затронутой цепочке.

## 3 — D4 DEMONSTRATED

Самостоятельно проходит U1 от question map до bounded handoff, затем после C1 evidence-linked обновляет configuration/input/method/V&V/robustness/conclusion layers.

## 4 — D4 TRANSFER / ROBUST

На unseen/challenge демонстрирует robust adaptation: быстро локализует invalidated assumptions, пересобирает только затронутую chain, сохраняет UNKNOWN/authority и объясняет why status changed.

---
# Blocking Failures — non-compensable

Любой BF ниже немедленно означает `D4 NOT VERIFIED` независимо от total score. BF оценивает не отсутствие красоты отчёта, а разрушение фундаментальной evidence/authority discipline.

## BF-D4-01 — QUESTION COLLAPSE

Разные claim classes — например design proof, inspection condition, remaining life и permission — сведены в один метод/ответ так, что границы evidence исчезли.

## BF-D4-02 — CONFIGURATION COLLAPSE

As-found, approved/design и calculation configuration смешаны или одна версия объявлена эквивалентной другой без revision/configuration evidence.

## BF-D4-03 — HIDDEN INPUT INVENTION

Decision-driving UNKNOWN молча заменён типичным/номинальным/нулевым/«паспортным» значением вне явно ограниченного scenario study.

## BF-D4-04 — SOURCE APPLICABILITY LEAP

Наличие источника, формулы, значения или документа объявлено current-case applicability без доказанного object/edition/branch/input mapping; закрытый branch реконструируется по памяти/snippets.

## BF-D4-05 — FIDELITY STATUS ERROR

Сложность модели, mesh refinement, nonlinear/transient solver или convergence выданы за validation/adequacy/proof status.

## BF-D4-06 — PARENT-CHILD BREAK

Локальный/submodel result используется как evidence без auditable parent loads, interface transfer, configuration/version mapping или boundary balance.

## BF-D4-07 — CROSS-CHECK → VALIDATION LEAP

Согласие независимого расчёта/solver или internal consistency объявлены validation относительно реального объекта без applicable measurement/test evidence.

## BF-D4-08 — COMMON-MODE BLINDNESS

Согласие методов получает независимый evidential weight без проверки общей geometry/input/source branch/criterion/code provenance.

## BF-D4-09 — UNSOURCED ROBUSTNESS

Решение объявлено robust по сценарию/envelope, происхождение и полнота которого не доказаны или который исключает credible decision-flipping states.

## BF-D4-10 — EVIDENCE-ROLE COLLAPSE

Inspection/monitoring/history/classification/design proof/life/authority evidence используются взаимозаменяемо и один тип evidence незаконно закрывает другой claim.

## BF-D4-11 — AUTHORITY LEAK

Технический анализ/рекомендация превращены в equipment-specific permission, acceptance, repair/redesign/rerouting/field-modification authority без компетентного процесса.

## BF-D4-12 — STOP-PERMISSION CONFUSION

`STOP / REQUEST EVIDENCE` или остановка расчёта интерпретированы как разрешение продолжать эксплуатацию; уже возникший safety/authority obligation отложен под видом ожидания данных.

---

# Обязательный unseen transfer — U1

## Сценарий

Предприятие рассматривает **увеличение производительности подъёмного механизма** за счёт нового operating profile. Руководитель просит быстро подтвердить, что существующий инженерный пакет уже показывает допустимость нового режима.

В U1 предоставляется:

- фактически наблюдаемый current reeving/guide arrangement;
- архивный approved drawing, revision history которого не замкнут;
- legacy spreadsheet global-load model для прежнего operating profile;
- отдельная FEA барабанного узла, геометрически аккуратная и хорошо задокументированная;
- spreadsheet и FEA показывают согласующиеся margins в своих nominal cases;
- обе модели получают peak rope tension из существующей engineering workbook, но происхождение этой derived value в исходном пакете явно не раскрыто;
- trial monitoring нового режима содержит несколько пиков, однако calibration/bandwidth/time-alignment evidence предоставлены частично;
- текущий визуальный осмотр не показывает очевидной уникальной повреждённости;
- действующий публичный source inventory известен, но exact paid branch logic/coefficients/input requirements, необходимые для source-bound proof, в U1 не предоставлены;
- OEM/designer/equipment-authority response по новому operating profile отсутствует.

Management request:

> «Оба расчёта сходятся и осмотр нормальный. Подтвердите, что новый режим можно принять и начать применять».

## Что обязан выдать learner до C1

Минимальный visible package:

1. `DECISION QUESTION / CLAIM CLASS MAP`;
2. `CONFIGURATION REGISTER`;
3. `BOUNDARY-VALUE / REQUESTED OUTPUT RECORD`;
4. `INPUT PROVENANCE + UNKNOWN REGISTER`;
5. `SOURCE / METHOD APPLICABILITY CARD(S)`;
6. `MODEL FIDELITY CARD`;
7. `PARENT → CHILD INTERFACE RECORD` where relevant;
8. `VERIFICATION / CROSS-CHECK / VALIDATION PLAN`;
9. `COMMON-MODE ERROR CHALLENGE`;
10. `SENSITIVITY / UNCERTAINTY TABLE`;
11. `ROBUSTNESS ENVELOPE + PROVENANCE`;
12. `EVIDENCE-ROLE MAP`;
13. `NEXT EVIDENCE / VALUE-OF-INFORMATION REQUEST`;
14. `BOUNDED CONCLUSION`;
15. `STOP / SAFETY / AUTHORITY HANDOFF`;
16. `AUDIT TRAIL`.

U1 не требует actual numerical proof. Сильный pre-C1 result вполне может быть `NOT DEMONSTRATED / STOP / REQUEST EVIDENCE`.

---

# Mandatory challenge — C1

После initial conclusion проверяющий выдаёт authenticated configuration-control / engineering-provenance packet:

```text
C1-A:
current approved reeving/guide configuration differs from the configuration used by the legacy spreadsheet and the FEA parent-load package.

C1-B:
both apparently independent models imported the same peak-rope-tension value from one shared workbook; that workbook was generated for the earlier reeving/operating profile and its conversion assumptions were not revalidated for the proposed profile.
```

Одновременно сообщается, что monitoring data остаются доступными, но их bandwidth/calibration applicability к brief transient peaks всё ещё `PARTIAL / NOT DEMONSTRATED`.

## Обязательный update path

Learner должен явно пройти:

```text
NEW EVIDENCE
→ CONFIGURATION REGISTER UPDATE
→ INPUT PROVENANCE UPDATE
→ SOURCE / METHOD APPLICABILITY UPDATE
→ PARENT / CHILD + COMMON-MODE STATUS UPDATE
→ V&V STATUS UPDATE
→ SENSITIVITY / ROBUSTNESS UPDATE
→ NEXT EVIDENCE RE-PRIORITIZATION
→ BOUNDED CONCLUSION UPDATE
→ AUTHORITY / SAFETY HANDOFF UPDATE
```

Допустимо, что итоговая формулировка остаётся такой же сильной/слабой, **только если learner показывает, почему C1 не меняет соответствующий claim**. Защищать прежние margins просто потому, что «два расчёта совпали», нельзя.

---

# Evidence package checklist

Проверяющий отмечает наличие и качество каждого output:

| Evidence layer | Present? | Auditable? | Status inflation? | Notes |
|---|---|---|---|---|
| Decision/claim map | | | | |
| Configuration register | | | | |
| Boundary-value record | | | | |
| Input provenance / unknowns | | | | |
| Source/method applicability | | | | |
| Fidelity rationale | | | | |
| Parent→child interface | | | | |
| Verification plan | | | | |
| Cross-check plan | | | | |
| Validation plan | | | | |
| Common-mode challenge | | | | |
| Sensitivity / uncertainty | | | | |
| Robustness envelope | | | | |
| Evidence-role map | | | | |
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

## Decision states

### D4 NOT VERIFIED

Любое из условий:

- любой `BF-D4-01…12 = TRUE`;
- любая ER-dimension <3;
- U1 не выполнен;
- C1 не выполнен;
- learner не способен дать bounded stop/escalation, когда evidence chain incomplete;
- equipment/safety authority boundary нарушена.

### D4 VERIFIED

Все условия одновременно:

```text
TOTAL >= 42/56
EVERY ER-D4-01…14 >= 3
NO BF-D4-01…12
KNOWN A–J EVIDENCE PRESENT
U1 COMPLETE
C1 COMPLETE
STOP / AUTHORITY GATES PASS
```

Порог 42 — математический минимум при `14 × Level 3`; total score сам по себе ничего не компенсирует.

### D4 ROBUST / TRANSFER

Все условия `D4 VERIFIED` плюс:

```text
TOTAL >= 50/56
ER-D4-04 >= 4   source/method applicability
ER-D4-07 >= 4   V&V separation
ER-D4-08 >= 4   common-mode challenge
ER-D4-10 >= 4   robustness envelope
ER-D4-13 >= 4   bounded authority handoff
ER-D4-14 >= 4   unseen/challenge adaptation
```

и минимум ещё две из ER-D4-01…03,05…06,09,11…12 должны быть Level 4, чтобы robust status не строился на одном удачном challenge.

---

# Blocking Failure sheet

| BF | TRUE/FALSE | Evidence / line | Immediate action |
|---|---|---|---|
| BF-D4-01 QUESTION COLLAPSE |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-02 CONFIGURATION COLLAPSE |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-03 HIDDEN INPUT INVENTION |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-04 SOURCE APPLICABILITY LEAP |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-05 FIDELITY STATUS ERROR |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-06 PARENT-CHILD BREAK |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-07 CROSS-CHECK → VALIDATION LEAP |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-08 COMMON-MODE BLINDNESS |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-09 UNSOURCED ROBUSTNESS |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-10 EVIDENCE-ROLE COLLAPSE |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-11 AUTHORITY LEAK |  |  | `D4 NOT VERIFIED` if TRUE |
| BF-D4-12 STOP-PERMISSION CONFUSION |  |  | `D4 NOT VERIFIED` if TRUE |

---

# Assessor pressure tests

Проверяющий имеет право вводить pressure, но не trick-answer guessing. Полезные вопросы:

- «Раз оба solver совпали, зачем ещё что-то?»
- «Осмотр ничего не нашёл — можно считать дефект отсутствующим?»
- «Вот ISO/OEM документ. Значит метод точно применим?»
- «Если параметр неизвестен, возьми nominal, чтобы закончить расчёт».
- «FEA nonlinear и mesh-converged — почему это не validation?»
- «Мы остановили анализ. Значит пока можно продолжать эксплуатацию?»
- «Нужно решение к концу смены — убери из отчёта все UNKNOWN».

Высокий D4 score требует не конфликтности с проверяющим, а спокойного evidence-linked объяснения, **какой вывод поддержан и какой ещё нет**.

---

# Rubric boundary

Rubric не вводит:

- новые normative thresholds;
- crane-specific coefficients/load combinations;
- paid branch logic;
- fatigue/remaining-life numbers;
- discard/acceptance criteria;
- specialist NDT verdict;
- equipment-specific permission.

`D4 VERIFIED` и `D4 ROBUST / TRANSFER` — образовательные competence states.

Следующий stage — Final Alignment, который обязан доказать end-to-end traceability и отсутствие orphan competence, surprise BF и guard contradictions.
