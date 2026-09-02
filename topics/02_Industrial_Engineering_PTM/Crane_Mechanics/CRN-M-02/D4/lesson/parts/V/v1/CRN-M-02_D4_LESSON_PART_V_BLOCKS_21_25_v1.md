# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть V. Иерархия моделей барабана, блока и полиспаста
## Блоки 21–25 — авторская версия v1

# Блок 21. Global load path — первый этаж любой component model

Перед локальными stress plot нужно закрыть простой вопрос:

> откуда приходит сила и куда она уходит?

Для типовой ветви:

```text
load → rope branches → sheave/drum contact → axle/shaft → bearings/support → structure
```

Если на этом уровне lost reaction или неверный rope direction, local model будет уточнять неправильный load case.

### Global equilibrium gate

Для выбранной системы проверь:

\[
\sum \vec F - m\vec a = 0
\]

\[
\sum \vec M_O - \frac{d\vec H_O}{dt} = 0
\]

в той форме, которая соответствует выбранному уровню модели. Для статической учебной модели inertial terms могут быть нулём; для реального transient — только если это обосновано.

# Блок 22. Sheave reaction — результат вектора, а не магического «2T»

Для идеального блока с двумя ветвями:

\[
\vec R = -(\vec T_1 + \vec T_2)
\]

Если `T1=T2=T` и угол между направлениями известен, можно получить простой closed-form magnitude. Но D4 требует записать assumptions:

- равенство натяжений;
- quasi-static state;
- directions measured correctly;
- no additional forces included/ignored explicitly.

При реальной системе `T1≠T2`, angle varies, axle motion exists или friction/contact affects load sharing — simple formula становится benchmark, а не final proof.

### Good practice

Используй simple model как **independent cross-check** даже для complex simulation.

# Блок 23. Drum torque — `M=T·r` полезен, пока ты честно говоришь, какой `r`

Для нескольких сил:

\[
M_z = \sum_i (\vec r_i\times\vec T_i)_z
\]

Simple `M=T·r` отвечает на axis moment при соответствующей geometry idealization.

D4 вопросы:

- `r` — rope centerline radius текущего слоя?
- pitch/effective radius?
- расстояние до actual line of action?
- меняется ли `r` по обороту/слою?
- есть ли несколько simultaneous contacts?
- нужен mean torque, peak torque или torque history?

Нельзя сравнивать two models, если они используют разные definitions radius.

# Блок 24. Local contact model не должен выдавать global proof за пределами своей boundary

Contact model может дать:

- pressure/contact traction field;
- local deformation;
- relative sliding tendency;
- local reaction transfer.

Но из локального patch нельзя автоматически заключить:

- global shaft proof;
- flange fatigue life;
- bearing competence;
- rope discard status;
- equipment acceptance.

Каждый из этих вопросов требует другой model/source/authority layer.

### Submodel contract

```text
PARENT MODEL OUTPUT → SUBMODEL INPUT
SUBMODEL BOUNDARY → what is constrained/loaded
SUBMODEL OUTPUT → only local requested quantity
BACK-CHECK → resultant must reconcile with parent model
```

# Блок 25. FEA для барабана/блока — это pipeline, а не картинка напряжений

Для SkillsVault review используем **базовую внутреннюю цепочку** (не нормативный универсальный minimum и не доказательство достаточности конкретного proof method):

1. verified geometry;
2. material model + provenance;
3. load cases from applicable load model;
4. boundary/support idealization;
5. contact idealization;
6. mesh/discretization strategy;
7. solver settings/version;
8. convergence/mesh study for decision quantity;
9. equilibrium/reaction closure;
10. benchmark against simpler model;
11. result extraction defined before seeing colors;
12. applicable proof criterion from exact source;
13. uncertainty/limitations;
14. authority review.

Applicable source/OEM/designer method может требовать дополнительные checks, definitions, load cases, averaging/linearization rules или acceptance logic. Прохождение этой учебной цепочки не создаёт `FORMAL PROOF PASS` само по себе.

### FEA red flags

- stress singularity chosen as peak without interpretation;
- fixed support replacing real bearing without sensitivity check;
- pressure/contact parameters guessed;
- mesh refined only where colors looked scary;
- load from unknown dynamic factor;
- acceptance criterion copied from unrelated component/source.

## Рабочий протокол V-A. Parent–child model interfaces

Сложная система редко моделируется одной сеткой. Удобнее хранить interfaces.

### Example

`Global rope-path model` выдаёт time histories `T1(t), T2(t)` и directions.

`Sheave/axle model` принимает эти histories и выдаёт axle reaction `R(t)`.

`Bearing/support model` принимает `R(t)` и stiffness/alignment data.

`Local structural model` принимает validated load envelope и support representation.

Каждый interface имеет:

```text
quantity definition
frame
units
time characteristic
interpolation/aggregation rule
uncertainty
version
```

Без этого model chain нельзя audit. И ещё один Red-Team guard:

```text
PARENT MODEL VALIDATED / VERIFIED
≠
CHILD SUBMODEL VALIDATED AUTOMATICALLY
```

При передаче через interface нужно проверить, покрывает ли parent evidence именно передаваемую quantity/domain, не потеряны ли peaks/time ordering/correlation и не создал ли child новую physics/boundary, которой parent validation вообще не касалась. Uncertainty и limitations должны **переходить через interface**, а не исчезать на границе файлов.

## Рабочий протокол V-B. Sheave reaction benchmark family

Даже если final model dynamic, полезны три benchmarks:

1. equal-tension symmetric case;
2. unequal-tension vector sum;
3. measured-state snapshot.

Если high-fidelity result не приближается к benchmark при соответствующих limiting assumptions, сначала ищем modelling defect.

### Reaction decomposition

Полезно хранить:

- resultant magnitude;
- components in bearing/support frame;
- direction angle;
- peak/time location.

Bearing decision может быть чувствителен к component, а не resultant magnitude.

## Рабочий протокол V-C. Drum load representation

Реальная rope-on-drum load может быть представлена разными levels:

- single resultant at representative line;
- distributed line load over wrap/contact;
- discrete turns/layers;
- contact submodel.

Выбор зависит от output.

Для shaft torque single resultant may be sufficient. Для local shell/flange response distribution may matter. D4 требует доказать **load transfer equivalence** для intended output.

## Рабочий протокол V-D. Submodel equilibrium hand-check

Если parent model передаёт в local submodel resultant `F` и moment `M`, проверь, что integrated reactions submodel возвращают тот же resultant/moment в пределах numerical error.

Иначе локальная картинка не согласована с глобальной физикой.

### Typical cause of mismatch

- load applied at wrong coordinate;
- missing tangential component;
- duplicate constraint reaction;
- unit conversion;
- force distributed over wrong surface;
- coordinate transform error.

## Рабочий протокол V-E. Stress interpretation protocol

До запуска structural model напиши:

```text
DECISION QUANTITY:
STRESS/STRAIN DEFINITION:
REGION OF INTEREST:
AVERAGING/LINEARIZATION RULE:
SINGULARITIES EXPECTED?:
SOURCE CRITERION:
```

Если criterion unavailable, можно проверять mechanics/convergence, но proof conclusion остаётся locked.

### Local peak guard

Geometric notch/singularity может давать mesh-dependent peak. Нельзя автоматически сравнивать peak nodal stress с limit-state criterion неизвестной definition.

## Failure matrix Part V

| Ошибка | Симптом | Диагностика |
|---|---|---|
| wrong load path | reactions do not close | free-body balance |
| wrong lever arm | torque mismatch | hand `r×F` check |
| wrong support | local stress changes wildly | boundary sensitivity |
| wrong contact | force transfers unrealistically | resultant/contact check |
| mesh singularity | peak grows with refinement | convergence of integrated/structural quantity |
| output mismatch | models disagree | harmonize definitions |

### Mini-review Part V

Ни один local/high-fidelity model не должен существовать без parent load-path model и interface contract.

# Итог Части V

Иерархия:

```text
GLOBAL LOAD PATH
→ REACTION / TORQUE
→ COMPLIANCE / LOAD SHARING
→ LOCAL CONTACT
→ STRUCTURAL RESPONSE
→ FORMAL PROOF CRITERION
→ AUTHORITY DECISION
```

Прыжок через этажи создаёт ложную уверенность.

# Мост к Части VI

Теперь отделим verification от validation и построим набор независимых checks для любого метода.
