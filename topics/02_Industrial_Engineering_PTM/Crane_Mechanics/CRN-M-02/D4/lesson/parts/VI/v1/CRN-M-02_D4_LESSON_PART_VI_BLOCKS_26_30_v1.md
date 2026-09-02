# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть VI. Verification и validation: как проверять выбранную модель
## Блоки 26–30 — авторская версия v1

# Блок 26. Verification и validation — разные вопросы

**Verification:** решили ли мы выбранную математическую/численную задачу правильно?

**Validation:** достаточна ли сама модель реальной системе и intended use?

Можно иметь:

- verified calculation of wrong physical model;
- physically good model implemented with code error;
- validated range that не включает наш current case.

D4 требует писать эти слова раздельно.

### Minimal record

```text
VERIFICATION EVIDENCE:
VALIDATION / CROSS-CHECK EVIDENCE:
INTENDED USE:
VALIDATED DOMAIN:
CURRENT CASE INSIDE DOMAIN?:
```

# Блок 27. Dimensional, sign и order-of-magnitude checks — дешёвые и обязательные

Даже advanced model должен пройти базовые проверки.

## Dimensions

Если torque ожидается в `N·m`, expression не должен закончиться в `N` или `N/m`.

## Sign

Если load direction поменялся, меняется ли соответствующий reaction component ожидаемо?

## Order of magnitude

Если tension вырос в два раза, а simple linear regime предполагает proportional reaction, результат, выросший в 100 раз, требует объяснения.

### D4 principle

Чем дороже simulation, тем меньше оправданий пропустить дешёвый sanity-check.

# Блок 28. Equilibrium и limiting cases — универсальные тесты

Примеры limiting cases:

- угол между ветвями стремится к нулю;
- одна ветвь разгружается;
- radius стремится к constant single-layer value;
- compliance → очень большая stiffness;
- friction/contact parameter → zero, если такая граница физически допустима;
- acceleration → zero for dynamic model.

Модель должна переходить к физически ожидаемому упрощённому случаю.

### Invariant idea

Если из модели выделить closed system, resultant external forces и reactions должны быть согласованы с mass/inertia state. Нарушение — либо bug, либо неверно определённая boundary.

# Блок 29. Numerical verification должен следить за decision-driving quantity, а не только global residual

Для discretized model спрашивай:

- что меняется при mesh/time-step refinement?
- стабилизируется ли **нужный output**, а не только solver residual?
- чувствителен ли результат к contact stiffness/penalty choice?
- не сидит ли peak на singularity?
- сохранены ли reactions/resultants?

### Example protocol

```text
Mesh M1 → Q = …
Mesh M2 → Q = …
Mesh M3 → Q = …
Change M2→M3 = …
Decision threshold/source criterion = locked or available
Conclusion: numerical convergence of Q demonstrated / not demonstrated
```

Если criterion locked, convergence всё равно можно проверить, но нельзя объявить formal pass.

# Блок 30. Validation evidence и cross-check evidence нельзя сливать в одно слово

**Validation evidence** связывает model output с реальной системой / intended use в записанном domain. Примеры, если они действительно соответствуют нужному output и state:

- measurement/test under controlled state;
- documented OEM/reference benchmark tied to a real/accepted reference configuration;
- historical measured case with sufficiently matched conditions;
- geometry/reaction measurement.

**Cross-check / verification evidence** проверяет implementation, consistency или model-form behavior, но само по себе может не валидировать модель относительно реальности:

- independent analytical model;
- alternative numerical implementation;
- limiting-case benchmark;
- independently implemented equilibrium check.

Слабый вариант для обоих классов:

> Model B подтверждает Model A, потому что использует те же inputs, тот же code path и те же assumptions.

Это не независимый cross-check и тем более не validation.

Даже разные программы и разные инженеры могут иметь **common-mode failure**, если оба получили один неверный rope path, один и тот же ошибочный passport input, одинаково неверно поняли criterion или сверяются с одной ошибочной таблицей. Поэтому independence нужно раскладывать по dimensions:

```text
IMPLEMENTATION INDEPENDENT?
INPUT PROVENANCE INDEPENDENT?
MODEL FORM INDEPENDENT?
DATA / MEASUREMENT INDEPENDENT?
CRITERION INTERPRETATION INDEPENDENT?
```

```text
TWO MODELS AGREE
≠
COMMON INPUT / COMMON INTERPRETATION ERROR EXCLUDED
```

### Evidence strength is question-specific

Test evidence может быть сильным для reaction, но слабым для fatigue history. Inspection evidence может быть сильным для observed condition, но не доказывать design proof. Independent analytical agreement может сильно поддержать verification/model-form confidence и при этом почти ничего не сказать о fidelity к реальной системе. Нет универсального «самого сильного источника».

## Рабочий протокол VI-A. Verification plan до расчёта

Verification лучше планировать до получения результата.

```text
V1 units/dimensions
V2 sign/frame
V3 global force balance
V4 moment balance
V5 limiting case
V6 independent hand model
V7 numerical refinement / regression
V8 result extraction repeatability
```

Если check придуман после того, как result понравился, возрастает confirmation bias.

## Рабочий протокол VI-B. Implementation verification для spreadsheets/scripts

Не только FEA ошибается. Таблица с 20 columns может содержать hidden defect.

Минимум:

- protected/raw input separation;
- explicit units;
- formula inspection;
- test cases with known answers;
- edge cases;
- version hash/commit;
- independent recalculation of sample rows;
- no manual hidden overrides.

### Regression test

Если method implementation меняется, старые known cases должны автоматически пересчитываться. Неожиданное изменение — investigation, не «новая версия умнее».

## Рабочий протокол VI-C. Validation evidence map

Validation evidence нужно привязывать к output/domain.

| Evidence | May support | Does NOT by itself establish |
|---|---|---|
| load-cell reaction | global reaction in tested state | fatigue criterion |
| displacement survey | stiffness/deformation mode | material fatigue law |
| OEM benchmark | configuration within documented domain | altered configuration |
| full-scale test | tested state | every transient/duty history |
| historical agreement | repeated operating envelope | future modified geometry |

Это защищает от validation overreach. Для каждого row нужно отдельно записать, используется ли evidence как `VERIFICATION/CROSS-CHECK` или как `VALIDATION`, и почему.

## Рабочий протокол VI-D. Calibration is not validation

Если parameter был tuned, чтобы model совпал с measurement, same measurement нельзя считать независимой validation.

Нужно разделение:

```text
CALIBRATION DATASET
≠ VALIDATION DATASET
```

Или хотя бы честно маркировать `CALIBRATED — INDEPENDENT VALIDATION PENDING`.

## Рабочий протокол VI-E. Validation domain

Model может быть validated only within envelope:

- load range;
- speed/state;
- layer/configuration;
- temperature/environment;
- geometry version;
- measurement range.

Экстраполяция за domain требует отдельного justification.

### Example

Model validated for single-layer steady hoisting нельзя автоматически переносить на multilayer crossover transient.

## Review checklist Part VI

- [ ] verification plan pre-defined;
- [ ] independent check exists;
- [ ] calibration separated from validation;
- [ ] validation output matches intended output;
- [ ] validation domain recorded;
- [ ] current case inside domain;
- [ ] numerical convergence of decision quantity shown;
- [ ] solver convergence not called validation;
- [ ] unresolved check failure blocks conclusion.

### Status vocabulary extension

- `VERIFICATION PASS — VALIDATION PENDING`;
- `VALIDATED WITHIN RECORDED DOMAIN`;
- `OUTSIDE VALIDATED DOMAIN — REVIEW REQUIRED`;
- `CALIBRATED ONLY — INDEPENDENT VALIDATION MISSING`;
- `IMPLEMENTATION CHECK FAILED`.

# Итог Части VI

Проверяй две вещи отдельно:

```text
VERIFICATION: мы правильно решили выбранную модель?
VALIDATION: выбранная модель достаточно хорошо представляет реальность для этого решения?
```

# Мост к Части VII

Даже verified/validated model может дать fragile conclusion. Следующая часть — sensitivity, uncertainty и error budget.
