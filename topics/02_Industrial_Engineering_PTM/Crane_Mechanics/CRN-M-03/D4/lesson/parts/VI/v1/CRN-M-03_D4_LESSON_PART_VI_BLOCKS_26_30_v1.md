# CRN-M-03 / D4 Lesson — Part VI v1
## Verification versus validation and independent checks

### Reader navigator
Этот раздел — часть expert/reference D4. Читай блоки последовательно: каждый следующий предполагает, что source/scope и authority не были silently promoted на предыдущем шаге.

# Block 26 — Verification is not validation

## Capability target
После блока инженер должен уметь применить `Verification is not validation` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Verification отвечает «правильно ли решена заданная модель?». Validation — «достаточно ли сама модель представляет реальную систему для данного purpose?». Solver convergence относится максимум к verification/numerics.

## Working sequence
1. VERIFICATION evidence.
2. VALIDATION evidence.
3. Не использовать одно вместо другого.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 26, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 27 — Equilibrium / dimensions / limiting-case checks

## Capability target
После блока инженер должен уметь применить `Equilibrium / dimensions / limiting-case checks` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
До сложного comparison проверь units, signs, force/moment equilibrium, symmetry/asymmetry expectations, zero/infinite limit cases и order of magnitude. Эти checks ловят implementation errors дёшево.

## Working sequence
1. Unit check.
2. ΣF/ΣM.
3. Limit case.
4. Order-of-magnitude.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 27, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 28 — Independent calculation and benchmark checks

## Capability target
После блока инженер должен уметь применить `Independent calculation and benchmark checks` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Independent check должен отличаться достаточно, чтобы не наследовать тот же bug: hand calc, alternative formulation, benchmark, simplified model или separately implemented script. Independence проверяется не только по implementation, но и по input provenance, geometry/configuration mapping, model form, measurement/validation evidence и source/criterion interpretation.

## Working sequence
1. Опиши independence.
2. Сравни key outputs.
3. Расхождение расследуй, не усредняй.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 28, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 29 — Validation evidence and common-mode error

## Capability target
После блока инженер должен уметь применить `Validation evidence and common-mode error` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Два numerical models могут совпасть из-за общего неверного input/boundary. `TWO MODELS AGREE` не означает `COMMON-MODE ERROR EXCLUDED`. Их согласие — verification/cross-check evidence, но не автоматическая validation. Validation должна связывать model с real system и intended-use domain. OEM/document reference может быть authoritative input/requirement; он становится validation evidence только если реально предоставляет независимое evidence поведения системы для нужного domain.

## Working sequence
1. VERIFICATION / CROSS-CHECK: независима ли реализация/формулировка?
2. VALIDATION: есть ли independent real-system evidence для intended-use domain?
3. AUTHORITATIVE INPUT / REQUIREMENT: не выдан ли он ошибочно за validation?
4. Common inputs / geometry / assumptions and coverage limitations?

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 29, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 30 — FEA convergence is not model validity

## Capability target
После блока инженер должен уметь применить `FEA convergence is not model validity` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Mesh convergence показывает numerical stability относительно discretization, но не доказывает правильность loads, contacts, material model, boundary conditions или component scope.

## Working sequence
1. Mesh study.
2. Boundary sensitivity.
3. Contact/model-form sensitivity.
4. Validation plan / real-system evidence lane, если она требуется для intended use.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 30, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**
