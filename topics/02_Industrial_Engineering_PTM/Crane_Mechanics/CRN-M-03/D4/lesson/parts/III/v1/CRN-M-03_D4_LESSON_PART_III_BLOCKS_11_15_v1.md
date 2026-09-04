# CRN-M-03 / D4 Lesson — Part III v1
## Load/model fidelity and adequacy

### Reader Navigator — fidelity отвечает на вопрос, а не заменяет governing method

Положительная линия части:

```text
REQUESTED OUTPUT
→ SIMPLE SCREENING MODEL
→ CHECK WHAT PHYSICS IS MISSING
→ ESCALATE FIDELITY ONLY IF MATERIAL
→ DEFINE V&V PLAN
→ MODEL-FORM STATUS
```

Держи две независимые оси:

```text
MODEL FIDELITY
≠
VALIDATION STATUS
```

### К концу Части III ты должен уметь

- выбрать smallest adequate model;
- использовать frozen D2 mechanics как screening/cross-check layer;
- распознать момент, когда нужен source-bound load model;
- обосновать повышение fidelity до local/contact/FEA;
- сказать `MODEL FORM SUFFICIENT / INSUFFICIENT` без заявления, что governing proof method автоматически satisfied.

# Block 11 — Smallest adequate model

## Capability target
После блока инженер должен уметь применить `Smallest adequate model` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Самая сложная модель не является автоматически лучшей. Выбирай минимальную fidelity, которая различает существенные effects для текущего output и позволяет проверить assumptions.

## Working sequence
1. Перечисли ignored effects.
2. Объясни, почему они вторичны.
3. Определи trigger для повышения fidelity.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 11, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 12 — Frozen D2 mechanics as screening model

## Capability target
После блока инженер должен уметь применить `Frozen D2 mechanics as screening model` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Frozen D2 equilibrium, moments, load paths and branch reactions остаются сильным screening layer. Они проверяют порядок величин и интерфейсы, но сами по себе не заменяют source-bound proof.

## Working sequence
1. Сделай equilibrium baseline.
2. Сравни high-fidelity result с baseline.
3. Большое расхождение требует объяснения, не усреднения.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 12, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 13 — When source-bound load models are required

## Capability target
После блока инженер должен уметь применить `When source-bound load models are required` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Если вывод зависит от formal proof, design load combination или source-defined dynamic action, generic D2 load недостаточен. Нужен применимый load-model source и complete inputs.

## Working sequence
1. Определи, какая load quantity нужна.
2. Проверь applicability ISO 8686-type method.
3. Если factor/combination недоступны — STOP, не reconstruct.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 13, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 14 — When higher fidelity is justified

## Capability target
После блока инженер должен уметь применить `When higher fidelity is justified` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Elastostatic/contact/FEA model оправдан, когда rigid-body/member idealization не отвечает на локальный output или нарушает ключевую assumption. Fidelity выбирается по question, а не по престижу ПО. Повышение fidelity не является повышением validation status.

## Working sequence
1. Назови missing physics.
2. Покажи expected effect on output.
3. До того как solver-result станет decision evidence, определи intended-use domain и validation plan / target evidence. Exploratory runs допустимы раньше, но не получают status VALIDATED только из-за выполнения или convergence.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 14, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

# Block 15 — Model-form adequacy and stopping criteria

## Capability target
После блока инженер должен уметь применить `Model-form adequacy and stopping criteria` как наблюдаемую D4-процедуру, а не как лозунг.

## Core
Adequacy — достаточность model form для decision, а не абсолютная «истина». `MODEL FORM SUFFICIENT FOR THIS OUTPUT` не означает `GOVERNING LOAD / PROOF METHOD SATISFIED`: model-form reasoning не отменяет source-required cases, factors, combinations или proof branches. Stop escalation, когда дополнительная fidelity не меняет bounded conclusion сильнее, чем оставшаяся uncertainty или когда отсутствуют валидные inputs.

## Working sequence
1. Сравни model hierarchy.
2. Оцени dominant uncertainty.
3. Зафиксируй MODEL FORM SUFFICIENT / INSUFFICIENT.

## Guard
Не повышай model/evidence/source role до proof, acceptance, remaining-life или operation authority без отдельного применимого метода, complete inputs и компетентного decision owner.

## Retrieval checkpoint
Сформулируй за 60 секунд: **какой вопрос решает Block 15, какой source/applicability check обязателен и какой STOP condition не позволяет превратить анализ в несанкционированное решение?**

## Reader Checkpoint III — выбери model fidelity

1. Когда frozen D2 model достаточен как screening layer?
2. Какой trigger оправдывает higher fidelity?
3. Почему FEA detail не повышает validation status?
4. Когда нужен source-bound load model?
5. Что означает `MODEL FORM SUFFICIENT`, а чего эта фраза не означает?

## Мост к Части IV

Теперь нужно доказать, что formal method вообще относится к нужному hook component и question.
