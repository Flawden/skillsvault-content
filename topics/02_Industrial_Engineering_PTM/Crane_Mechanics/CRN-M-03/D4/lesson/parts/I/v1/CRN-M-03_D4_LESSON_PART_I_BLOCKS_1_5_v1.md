# CRN-M-03 / D4 Lesson — Part I v1
## Method governance: question/source/method/audit trail

### Reader navigator
Этот раздел — часть expert/reference D4. Читай блоки последовательно: каждый следующий предполагает, что source/scope и authority не были silently promoted на предыдущем шаге.

# Block 1 — Question class before method class

## Capability target
После блока инженер должен уметь применить `Question class before method class` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Начинай не с формулы и не с любимого solver, а с требуемого инженерного выхода. «Найти реакцию», «проверить применимость proof-method», «оценить condition evidence» и «решить, можно ли эксплуатировать» — разные классы задач и требуют разных источников и authority.

## Working sequence
1. Запиши requested output одним предложением.
2. Отнеси его к model / proof / inspection / monitoring / operation.
3. Только затем открывай candidate methods.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 1, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 2 — Requirement vs model vs proof vs inspection vs monitoring

## Capability target
После блока инженер должен уметь применить `Requirement vs model vs proof vs inspection vs monitoring` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Requirement говорит, что требуется; model объясняет/предсказывает; proof-method формально проверяет limit state; inspection получает condition evidence; monitoring описывает историю/использование. Один документ может участвовать в нескольких ролях, но роли нельзя сливать.

## Working sequence
1. Для каждого источника проставь ROLE.
2. Не используй inspection finding как proof coefficient.
3. Не используй safe-use authority как замену design proof.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 2, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 3 — Source applicability as an explicit claim

## Capability target
После блока инженер должен уметь применить `Source applicability as an explicit claim` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Применимость источника — отдельное доказуемое утверждение: объект, компонент, edition/status, scope, исключения и тип вопроса должны совпасть. Близкий по названию стандарт не становится применимым автоматически.

## Working sequence
1. COMPONENT = ?
2. QUESTION = ?
3. SOURCE SCOPE = ?
4. EXCLUSIONS = ?
5. APPLICABLE = YES / NO / NOT YET DEMONSTRATED.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 3, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 4 — Method record and provenance chain

## Capability target
После блока инженер должен уметь применить `Method record and provenance chain` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Каждая source-bound величина должна иметь provenance: откуда значение, какая версия документа/чертежа, что измерено, что принято, что рассчитано и какой uncertainty сопровождает input.

## Working sequence
1. Не смешивай measured и assumed.
2. Версионируй geometry/configuration.
3. Фиксируй единицы и преобразования.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 4, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 5 — D4 audit trail and bounded method status

## Capability target
После блока инженер должен уметь применить `D4 audit trail and bounded method status` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
D4 результат должен быть воспроизводимым review record, а не только числом. Минимальный record хранит question, component, source/version, assumptions, inputs, model version, checks, sensitivity, conflicts и handoff.

## Working sequence
1. Выбери bounded status.
2. Перечисли незакрытые prerequisites.
3. Укажи, кто должен принять следующий authority decision.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 5, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**
