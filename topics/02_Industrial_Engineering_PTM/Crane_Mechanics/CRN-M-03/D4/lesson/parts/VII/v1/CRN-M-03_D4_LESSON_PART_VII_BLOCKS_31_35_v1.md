# CRN-M-03 / D4 Lesson — Part VII v1
## Sensitivity, uncertainty, error budget and competing methods

### Reader Navigator — robustness начинается с provenance и заканчивается coverage

Положительная линия части:

```text
DECISION-DRIVING OUTPUT
→ DOMINANT INPUTS / MODEL FORMS
→ DEFENSIBLE RANGES / SCENARIOS
→ SENSITIVITY
→ UNCERTAINTY TYPES
→ COVERAGE
→ ROBUST / NOT ROBUST / UNKNOWN
```

```text
ROBUST IN TESTED / SOURCED ENVELOPE
≠
GLOBALLY ROBUST
```

### К концу Части VII ты должен уметь

- ранжировать sensitivity до красивой precision;
- отделить input uncertainty от model-form uncertainty;
- включить geometry/configuration mapping error;
- сравнить competing methods без усреднения несовместимых результатов;
- связать robustness с provenance **и** coverage, сохраняя unknown/unmodeled states явными.

# Block 31 — Sensitivity map before precision

## Capability target
После блока инженер должен уметь применить `Sensitivity map before precision` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
До публикации красивых digits составь sensitivity map: какие inputs способны materially изменить output/status. Высокая sensitivity при слабом input provenance должна снижать confidence.

## Working sequence
1. Rank inputs.
2. Perturb only a defensible range with source / measurement / tolerance / scenario provenance; if no range is defensible, keep sensitivity qualitative and report the range as UNKNOWN.
3. Track status changes, not only percentage changes.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 31, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 32 — Input uncertainty vs model-form uncertainty

## Capability target
После блока инженер должен уметь применить `Input uncertainty vs model-form uncertainty` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Input uncertainty — неизвестность значения внутри выбранной модели; model-form uncertainty — сомнение в самой структуре модели. Их нельзя складывать как будто это один standard deviation без valid basis.

## Working sequence
1. Label uncertainty type.
2. Propagation method justified?
3. Separate unknown unknown/model alternatives.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 32, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 33 — Geometry/configuration mapping error

## Capability target
После блока инженер должен уметь применить `Geometry/configuration mapping error` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Wrong drawing revision, nominal-vs-actual geometry, wrong articulation/contact state могут доминировать над numerical error. Configuration provenance — часть error budget.

## Working sequence
1. Drawing/revision.
2. As-built/actual state.
3. Tolerance/contact mapping.
4. Change-control record.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 33, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 34 — Competing-method comparison without averaging

## Capability target
После блока инженер должен уметь применить `Competing-method comparison without averaging` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Если два legitimate methods дают разные результаты, сначала сравни scope, assumptions, inputs and outputs. Среднее двух несовместимых методов не является reconciliation.

## Working sequence
1. Normalize question/output.
2. Compare applicability.
3. Locate source of divergence.
4. Escalate conflict if unresolved.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 34, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 35 — Robustness and decision sensitivity

## Capability target
После блока инженер должен уметь применить `Robustness and decision sensitivity` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Результат robust, если bounded conclusion сохраняется по defensible input/model/source scenarios with stated provenance. Но `ROBUST ACROSS TESTED / SOURCED ENVELOPE` не означает robustness вне envelope и не исключает unknown/unmodeled states. Поэтому robustness record должен фиксировать не только provenance, но и coverage. Если небольшой admissible change переворачивает status, честный outcome — decision not robust. Unsourced scenario width cannot be used to manufacture robustness.

## Working sequence
1. Scenario envelope.
2. Status stability.
3. Dominant uncertainty.
4. Next evidence by value-of-information.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 35, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

## Reader Checkpoint VII — атакуй robustness

1. Откуда берётся defensible sensitivity range?
2. Чем input uncertainty отличается от model-form uncertainty?
3. Почему mapping wrong revision может доминировать над numerical error?
4. Что делать, если два legitimate methods расходятся?
5. Почему robustness всегда должна указывать envelope coverage?

## Мост к Части VIII

Теперь добавим field evidence и history — но только в тех ролях, которые они действительно выполняют.
