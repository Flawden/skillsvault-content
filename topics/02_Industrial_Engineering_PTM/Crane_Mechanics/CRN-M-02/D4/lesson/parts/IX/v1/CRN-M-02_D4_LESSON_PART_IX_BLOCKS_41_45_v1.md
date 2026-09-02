# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть IX. Экспертный синтез, technical review и authority handoff
## Блоки 41–45 — авторская версия v1

# Финальный кейс D4

На механизме подъёма обнаружена повторяющаяся локальная сигнатура в rope-drive zone. После изменения режима работы выросла measured reaction на одной опоре. Есть паспортная схема, но actual rope path и layer state требуют подтверждения. Команда предлагает сразу построить FEA барабана и «посмотреть запас».

D4 не принимает этот jump.

# Блок 41. Сначала строим method map, а не одну любимую модель

Кандидаты:

## Method A — global rigid-body/load-path model

Вопрос: согласованы ли ветви, направления и measured reaction на уровне global mechanics?

## Method B — transient/dynamic load model

Вопрос: может ли change in motion state объяснить reaction increase?

## Method C — rope-drive selection/proof pathway

Вопрос: относится ли configuration к governing selection/proof method и доступны ли exact inputs?

## Method D — local structural/contact model

Вопрос: какой local response создаёт уже подтверждённый load case?

## Method E — inspection/condition pathway

Вопрос: что фактически наблюдается и нужна ли specialist inspection escalation?

### Expert move

Не выбирать победителя заранее. Назначить каждому method **question, inputs, applicability и stop condition**.

# Блок 42. Method conflict разбирается через harmonization и discriminating evidence

Если A и B дают разные reactions, проверь:

- один ли state;
- одинаковы ли coordinate frames;
- одинаковый ли rope path;
- один ли output definition;
- входят ли inertia/transients;
- одинаковы ли measured inputs.

Если после harmonization конфликт остаётся, нужен distinguishing evidence: time history, geometry measurement, independent force measurement, benchmark case.

### Conflict status

- `CROSS-CHECK CONSISTENT`;
- `CROSS-CHECK CONFLICT — INPUT MISMATCH`;
- `CROSS-CHECK CONFLICT — MODEL FORM`;
- `CROSS-CHECK CONFLICT — REVIEW REQUIRED`.

Нельзя усреднить конфликт и назвать это conservatism.

# Блок 43. Technical review должен быть восстанавливаемым другим инженером

Рекомендуемая структура D4 review:

1. **Question / decision**;
2. **Scope / exclusions**;
3. **Configuration / state**;
4. **Sources / editions / status**;
5. **Method candidates**;
6. **Applicability decisions**;
7. **Inputs + provenance**;
8. **Assumptions / unknown register**;
9. **Implementation/version**;
10. **Verification**;
11. **Validation/cross-check**;
12. **Sensitivity/uncertainty/error budget**;
13. **Competing-method comparison**;
14. **Bounded conclusion**;
15. **Authority handoff / required action**.

### Review rule

Если другой инженер не может повторить method selection, это не полноценный audit trail.

# Блок 44. Stop rules — не провал анализа, а часть экспертной компетенции

## Stop 1 — exact method missing

`SOURCE-BOUND METHOD NOT AVAILABLE — FORMAL PROOF BLOCKED`.

## Stop 2 — critical input unknown

`METHOD APPLICABLE — CRITICAL INPUT MISSING`.

## Stop 3 — model outside validated domain

`MODEL FORM / VALIDATED DOMAIN INSUFFICIENT`.

## Stop 4 — uncertainty flips decision

`RESULT SENSITIVITY HIGH — DECISION NOT ROBUST`.

## Stop 5 — specialist qualification required

`NDT / SPECIALIST METHOD REQUIRED`.

## Stop 6 — equipment decision beyond role

`OEM / DESIGNER / EXPERT ORGANISATION / RESPONSIBLE AUTHORITY REQUIRED`.

### Safety override

Если применимое правило/процедура требует немедленного безопасного действия, не нужно ждать завершения красивой causal story или D4 model review. SkillsVault не заменяет обязательные safety procedures.

# Блок 45. Финальный D4 worksheet

```text
1. OBJECT / CONFIGURATION / STATE
2. QUESTION CLASS
3. REQUESTED OUTPUT
4. DECISION USING OUTPUT
5. METHOD CANDIDATES
6. APPLICABILITY OF EACH
7. EXACT SOURCES / EDITIONS
8. BOUNDARY CONDITIONS
9. INPUT REGISTER + PROVENANCE
10. ASSUMPTIONS / UNKNOWNS
11. IMPLEMENTATION / VERSION
12. VERIFICATION CHECKS
13. VALIDATION / CROSS-CHECK
14. SENSITIVITY / UNCERTAINTY / ERROR BUDGET
15. COMPETING-METHOD DIFFERENCES
16. BOUNDED CONCLUSION
17. STOP CONDITIONS
18. AUTHORITY HANDOFF
```

### Финальный тест

Эксперт D4 должен уметь сказать не только:

> «вот мой результат»,

но и:

> «вот почему этот method family применим, вот где его domain, вот происхождение inputs, вот независимые checks, вот uncertainty, вот competing method, вот что мы ещё не доказали и вот кто имеет право принять equipment decision».

## Рабочий протокол IX-A. Полный разбор финального кейса

### Stage 1 — configuration

До model run подтверждаем actual rope path, layer/zone, drive state и measurement timestamps. Если passport schematic не совпадает с field configuration, создаём two-version record.

### Stage 2 — global mechanics

Строим vector load-path benchmark. Проверяем measured reaction на уровне directions/tensions/state. Это может выявить coordinate/data error до FEA.

### Stage 3 — transient hypothesis

Если reaction increase связан с changed start/stop, строим/запрашиваем synchronized time histories. Quasi-static snapshot не считается опровержением transient mechanism.

### Stage 4 — formal source question

Если команда хочет «проверить запас барабана», question переводится в formal proof class. Определяем governing method/source family и exact missing inputs. До этого FEA может быть exploratory model, но не proof.

### Stage 5 — condition channel

Локальная rope/reeving signature рассматривается через inspection/condition route и qualified escalation where required. D3 causal model остаётся hypothesis until distinguishing evidence.

### Stage 6 — method comparison

Сравниваем outputs только после harmonization frames/state/definitions. Конфликт становится finding, а не поводом выбрать «более консервативное» число без понимания.

### Stage 7 — bounded conclusion

Возможный корректный результат:

> `GLOBAL LOAD-PATH MODEL CONSISTENT WITH MEASURED STEADY STATE; TRANSIENT CONTRIBUTION NOT YET VALIDATED; FORMAL DRUM PROOF BLOCKED BY EXACT SOURCE/INPUT DEFICIT; CONDITION INDICATION REQUIRES QUALIFIED INSPECTION REVIEW; NO MODIFICATION AUTHORITY IMPLIED.`

Это может выглядеть менее эффектно, чем stress plot, но инженерно сильнее.

## Рабочий протокол IX-B. Peer-review checklist

Reviewer не должен просто «проверить арифметику».

### Scope

- тот ли объект и configuration?
- тот ли question class?
- не изменился ли requested decision?

### Sources

- exact edition/status?
- primary vs secondary?
- roles separated?

### Model

- boundaries physical?
- omitted physics justified?
- source method implemented correctly?

### Inputs

- provenance?
- units/definitions?
- unknowns visible?

### V&V

- verification independent?
- validation domain?
- calibration leakage?

### Uncertainty

- dominant uncertainty identified?
- conclusion robust?

### Authority

- conclusion stays within role?
- required escalation named?

## Рабочий протокол IX-C. Review finding severity

Полезно классифицировать findings:

- `BLOCKING — WRONG QUESTION/METHOD`;
- `BLOCKING — CRITICAL INPUT/SOURCE MISSING`;
- `BLOCKING — VERIFICATION FAILURE`;
- `BLOCKING — OUTSIDE VALIDATED DOMAIN`;
- `BLOCKING — AUTHORITY OVERREACH`;
- `MAJOR — UNCERTAINTY NOT CHARACTERIZED`;
- `MAJOR — CROSS-CHECK CONFLICT`;
- `MINOR — TRACEABILITY/CLARITY`.

Количество minor findings не компенсирует один blocking defect.

## Рабочий протокол IX-D. Technical recommendation format

Хорошая recommendation имеет четыре части:

```text
1. WHAT IS DEMONSTRATED
2. WHAT IS NOT DEMONSTRATED
3. WHAT EVIDENCE/METHOD IS REQUIRED NEXT
4. WHO MUST OWN THE NEXT DECISION
```

Пример:

> «Подтверждено, что observed steady reaction согласуется с current geometry model в пределах measurement uncertainty. Не подтвержден transient envelope и formal component proof. Требуется synchronized transient measurement + exact applicable proof method inputs. Equipment acceptance остаётся за competent designer/expert/authorized role.»

## Рабочий протокол IX-E. Authority map

D4 не назначает юридические роли универсально, но требует их определить для конкретной организации/юрисдикции.

Possible handoff categories:

- responsible operation/safety role;
- OEM;
- designer;
- expert organisation;
- qualified inspection/NDT specialist;
- maintenance/repair authority;
- regulator-required process.

`Engineer performed analysis` не значит `engineer holds all these authorities`.

## Рабочий протокол IX-F. Freeze-readiness mindset

Перед будущим D4 Freeze lesson должен выдержать:

1. technical editorial attacks;
2. adversarial red team;
3. reader-experience simplification without weakening guards;
4. practice transfer cases;
5. verification rubric;
6. source freshness recheck.

Authoring v1 — начало испытаний, не конец.

## Финальный mental audit

Перед любым сильным выводом произнеси вслух семь вопросов:

1. Какой exact engineering question?
2. Какой exact method?
3. Почему method applicable?
4. Откуда inputs?
5. Чем implementation verified?
6. Чем model validated и насколько conclusion sensitive?
7. Кто имеет authority действовать?

Если один ответ отсутствует, conclusion должен стать слабее или перейти в stop/escalation state.

# D3 → D4: окончательная разница

## D3

`Which causal model best explains the evidence, and what data would distinguish alternatives?`

## D4

`Which method is legitimate for the engineering decision, is the model adequate and verified/validated, how fragile is the result, and where does authority stop?`

# Что D4 НЕ сделал

D4 lesson не:

- воспроизвёл закрытые ISO tables/factors;
- выполнил actual proof для конкретного крана;
- выдал remaining-life number;
- установил discard limit;
- интерпретировал specialist NDT;
- разрешил repair/rerouting/redesign;
- объявил equipment safe/fit/acceptable.

# Финал D4 Lesson Authoring v1

Главная mental model:

```text
VALID ENGINEERING RESULT
=
CORRECT QUESTION
× APPLICABLE METHOD
× TRUSTWORTHY INPUTS
× VERIFIED IMPLEMENTATION
× VALIDATED/ADEQUATE MODEL
× UNDERSTOOD UNCERTAINTY
× CORRECT AUTHORITY BOUNDARY
```

Если любой множитель фактически нулевой, длинный отчёт не превращает его в доказательство.

# Что будет дальше

Следующий pipeline gate — **D4 TECHNICAL EDITORIAL / PASS I / v1**: цель не переписать lesson красивее, а попытаться найти scope drift, method-role confusion, unsupported source claims, false validation, hidden input invention и authority leakage across all nine parts.
