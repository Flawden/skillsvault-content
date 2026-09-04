# CRN-M-03 / D4 Lesson — Part V v1
## Suspension / traverse / pin / bearing / grab component-model hierarchy

### Reader navigator
Этот раздел — часть expert/reference D4. Читай блоки последовательно: каждый следующий предполагает, что source/scope и authority не были silently promoted на предыдущем шаге.

# Block 21 — Global load path to component reactions

## Capability target
После блока инженер должен уметь применить `Global load path to component reactions` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Начинай component analysis с global equilibrium и интерфейсных reactions. Это предотвращает локальные модели, которые получают удобную, но несогласованную нагрузку.

## Working sequence
1. Global FBD.
2. Interface reactions.
3. Reaction sign/frame convention.
4. Cross-check to D2 load path.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 21, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 22 — Traverse and member idealization

## Capability target
После блока инженер должен уметь применить `Traverse and member idealization` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Traverse/crosshead/links требуют отдельного member idealization с собственными supports, load introduction и possible bending/shear/axial interactions. Component/scope mapping — необходимое, но не достаточное условие formal steel-structure method: отдельно должны совпасть governing scope, load basis, material/model assumptions, limit-state/output и method-specific conditions.

## Working sequence
1. Member boundary.
2. Load introduction.
3. Section/geometry provenance.
4. Applicable proof family?

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 22, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 23 — Pin / bearing / contact model escalation

## Capability target
После блока инженер должен уметь применить `Pin / bearing / contact model escalation` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Pin/bearing/contact response зависит от local geometry, clearances, fit/contact state и load distribution. Нельзя превращать nominal reaction в equipment verdict без validated local model и applicable criterion.

## Working sequence
1. Nominal reaction first.
2. Local contact assumptions.
3. Geometry/tolerance source.
4. Escalation trigger.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 23, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 24 — Grab model hierarchy under source gaps

## Capability target
После блока инженер должен уметь применить `Grab model hierarchy under source gaps` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Для grabs допустима hierarchy general mechanics: geometry/kinematics → reactions → contact/holding hypothesis → local structural model. Но ISO 17096 прямо не даёт grab authority; exact proof/holding/capacity criterion должен прийти из реально применимого источника/OEM/designer. Наличие в ISO 17096 иных attachment families, включая C-hooks, не создаёт crane hook-suspension proof authority и не отменяет явное исключение grabs/grab buckets.

## Working sequence
1. GENERAL MECHANICS = OK.
2. ISO 17096 GRAB AUTHORITY = NO.
3. Exact grab criterion source = ?
4. Если нет — EXACT GRAB SOURCE REQUIRED.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 24, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 25 — Parent-child model interface and data handoff

## Capability target
После блока инженер должен уметь применить `Parent-child model interface and data handoff` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Каждая child model должна получать boundary conditions из parent model с явной provenance. Parent validation не автоматически валидирует child, а совпадение child result с ожиданием не доказывает parent. Корректная parent reaction также не делает применимым source/method, который не покрывает child component или question.

## Working sequence
1. Interface quantity + units.
2. Revision IDs.
3. Mapping/transformation.
4. Independent check at interface.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 25, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**
