# CRN-M-03 / D4 Lesson — Part II v1
## Boundary-value problem: hook suspension / grab system / state / output

### Reader navigator
Этот раздел — часть expert/reference D4. Читай блоки последовательно: каждый следующий предполагает, что source/scope и authority не были silently promoted на предыдущем шаге.

# Block 6 — System boundary and requested output

## Capability target
После блока инженер должен уметь применить `System boundary and requested output` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Граница системы определяется выходом. Для реакции подвеса может хватить rigid-body boundary; для локальной контактной зоны или proof-check нужна иная граница и иные inputs. Нельзя расширять вывод за пределы модели.

## Working sequence
1. Назови bodies inside/outside.
2. Укажи external actions.
3. Запиши output и его location/state.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 6, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 7 — Hook body, shank, traverse, pins, bearings and branches

## Capability target
После блока инженер должен уметь применить `Hook body, shank, traverse, pins, bearings and branches` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Крюковая подвеска — не один «крюк». Hook body, shank, nut/thread suspension, traverse/crosshead, pins, bearings, cheeks/links и rope branches имеют разные load paths, failure modes и возможные proof-method families.

## Working sequence
1. Разбей assembly на components.
2. Проследи load path.
3. Не переноси criterion одного компонента на другой.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 7, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 8 — Grab jaws, linkages, ropes/drives and active contacts

## Capability target
После блока инженер должен уметь применить `Grab jaws, linkages, ropes/drives and active contacts` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Для grab model сначала фиксируют kinematic state и active contacts: jaw geometry, linkage configuration, rope/drive branches, payload contact, friction/holding assumptions. Без этого structural calculation может быть численно точным для неверной системы.

## Working sequence
1. State = open/closing/holding/etc.
2. Active contacts = ?
3. Drive/rope constraints = ?
4. Holding assumption = source-bound or hypothetical?

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 8, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 9 — Constraint / DOF / CG / motion-state reconstruction

## Capability target
После блока инженер должен уметь применить `Constraint / DOF / CG / motion-state reconstruction` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Constraint set, degrees of freedom, CG and motion state — часть boundary-value problem. D3 causal states здесь становятся D4 inputs, но должны быть заново подтверждены для выбранного method.

## Working sequence
1. Зафиксируй DOF.
2. Покажи CG/configuration source.
3. Отдели quasi-static assumption от observed slow motion.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 9, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 10 — Boundary-input freeze before calculation

## Capability target
После блока инженер должен уметь применить `Boundary-input freeze before calculation` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Перед calculation freeze фиксирует geometry revision, material declaration, load/state, constraints, contact assumptions, source versions и requested outputs. Иначе модель меняется во время доказательства. Но INPUT FREEZE фиксирует то, что принято для конкретной model revision; он не превращает observed/as-found geometry или state в approved/design-conforming configuration.

## Working sequence
1. Создай INPUT FREEZE record.
2. Отдельно пометь `OBSERVED / AS-FOUND` и `APPROVED / DESIGN-CONFORMING`; если они не совпадают, сохрани discrepancy как uncertainty/escalation item.
3. Любое изменение — новая model revision.
4. Не сравнивай результаты разных revisions как один method run.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 10, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**
