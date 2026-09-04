# CRN-M-03 / D4 Lesson — Part IX v1
## Expert synthesis, review, stop rules and authority handoff

### Reader Navigator — capstone: собери D4 в один review

```text
QUESTION / DECISION
→ CONFIGURATION / STATE / OUTPUT
→ METHOD CANDIDATES
→ SOURCE + COMPONENT APPLICABILITY
→ BOUNDARY / INPUT PROVENANCE
→ IMPLEMENTATION
→ VERIFICATION / CROSS-CHECK / VALIDATION
→ SENSITIVITY / UNCERTAINTY / COVERAGE
→ CONFLICTS / SOURCE GAPS
→ BOUNDED TECHNICAL STATUS
→ STOP / ACTUAL AUTHORIZED HANDOFF
```

Главная финальная граница:

```text
ANALYSIS STOPPED ≠ OPERATION PERMITTED
TECHNICAL RECOMMENDATION ≠ AUTHORIZED EQUIPMENT DECISION
```

### К концу Части IX ты должен уметь

- разобрать конфликт источников по scope/edition/question role;
- оформить grab source gap как корректный engineering outcome;
- выбрать next evidence по value of information;
- написать bounded conclusion с явным `NOT AUTHORIZING`, когда authority не принадлежит review;
- передать complete D4 trace в фактически authorized role/process.

# Block 41 — Conflicting sources and applicability conflicts

## Capability target
После блока инженер должен уметь применить `Conflicting sources and applicability conflicts` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Конфликт источников часто является конфликтом scope/edition/question role. Сначала resolve applicability, а не выбирать более строгий/удобный документ на глаз.

## Working sequence
1. Edition/status.
2. Jurisdiction/contract/OEM hierarchy.
3. Component scope.
4. Question role.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 41, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 42 — Grab source-gap synthesis

## Capability target
После блока инженер должен уметь применить `Grab source-gap synthesis` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Для grab задачи сильный D4 ответ может закончиться source gap: механика понятна, но formal criterion отсутствует в legitimately available applicable source. Это не провал; это корректный boundary.

## Working sequence
1. What is demonstrated?
2. What is not demonstrated?
3. Exact source/OEM/designer request.
4. No ISO 17096 substitution.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 42, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 43 — Evidence/value-of-information ordering

## Capability target
После блока инженер должен уметь применить `Evidence/value-of-information ordering` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Следующий шаг выбирай по value of information: какой datum/source/configuration check сильнее всего уменьшит decision uncertainty или различит competing methods при минимальном риске и стоимости.

## Working sequence
1. Rank unknowns.
2. Estimate decision impact.
3. Prefer safe/non-destructive evidence.
4. Stop hazardous diagnostic invention.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 43, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 44 — Bounded expert conclusion and STOP

## Capability target
После блока инженер должен уметь применить `Bounded expert conclusion and STOP` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Заключение должно быть сильнее простого caveat: clearly state method applicability, model adequacy, input confidence, sensitivity, unresolved conflicts and what is intentionally not concluded. `ANALYSIS / PROOF STOPPED` не означает `OPERATION PERMITTED UNTIL ANALYSIS FINISHES`; method/cause unknown также не разрешает откладывать отдельно применимое safety action.

## Working sequence
1. METHOD STATUS.
2. MODEL STATUS.
3. UNCERTAINTY.
4. NOT DEMONSTRATED.
5. STOP / NEXT EVIDENCE.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 44, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 45 — Authority handoff and complete D4 review record

## Capability target
После блока инженер должен уметь применить `Authority handoff and complete D4 review record` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Финальный handoff передаёт не только number, но complete trace: source/version, scope map, model revision, inputs, checks, validation, sensitivity, conflicts и explicit authority requested from the actual authorized role/process for this organization, equipment, jurisdiction and decision. Designer/OEM/expert/NDT/inspection/operations — возможные примеры, а не универсальная hierarchy. D4 method-review record также не следует путать со стадией SkillsVault `Technical Editorial`.

## Working sequence
1. Package evidence.
2. Name the actually authorized receiving role/process and its basis.
3. Запиши technical recommendation/status и явно `NOT AUTHORIZING`, если соответствующая authority не принадлежит автору review.
4. Для фактического equipment decision запиши authorized decision owner/process и, когда decision существует, его status/basis/date.
5. No silent promotion from analysis to approval; source-gap handoff is not permission to continue by default.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 45, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

## Reader Checkpoint IX — capstone reconstruction

Закрой текст и восстанови полный маршрут:

1. QUESTION / DECISION
2. CONFIGURATION / STATE / OUTPUT
3. METHOD + SOURCE / COMPONENT APPLICABILITY
4. BOUNDARY + INPUT PROVENANCE
5. VERIFICATION / CROSS-CHECK / VALIDATION
6. SENSITIVITY / UNCERTAINTY / COVERAGE
7. INSPECTION / DUTY / MONITORING ROLES
8. CONFLICTS / SOURCE GAPS
9. BOUNDED TECHNICAL STATUS
10. STOP / AUTHORIZED HANDOFF

После этого объясни своими словами три запрета:
- conditional applicability не является permission;
- analysis STOP не является operation permission;
- technical recommendation не является authorized equipment decision.

## Переход к Practice

Reader layer завершён. Следующий этап — интегрированные D4 cases, где весь маршрут придётся выполнить без подсказки структуры.
