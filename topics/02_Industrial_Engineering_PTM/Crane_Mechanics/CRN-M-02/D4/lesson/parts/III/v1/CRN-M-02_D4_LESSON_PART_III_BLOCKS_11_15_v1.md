# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть III. Выбор load/model fidelity: от rigid-body до advanced model
## Блоки 11–15 — авторская версия v1

# Блок 11. Самая простая адекватная модель обычно сильнее самой сложной непроверенной

`ISO 8686-1:2012` по публичному abstract строит общий load/load-combination framework на rigid-body kinetic analysis и elastostatic analysis и допускает более advanced methods, если можно продемонстрировать по меньшей мере эквивалентную состоятельность. Для D4 это важный методологический урок: усложнение требует **больше доказательств**, а не меньше.

Мы используем это только как boundary principle. Мы не реконструируем динамические коэффициенты или load combinations.

### Model ladder

1. geometry-only;
2. rigid-body statics;
3. quasi-static sequence;
4. rigid-body dynamics;
5. elastostatic/compliance model;
6. nonlinear/contact/multibody/FE model;
7. test-assisted or validated high-fidelity model.

Каждая ступень добавляет новые inputs и новые failure modes.

# Блок 12. Quasi-static — это допущение о времени, а не синоним «медленно выглядит»

Quasi-static model предполагает, что inertia effects несущественны для requested output или уже корректно учтены отдельным методом.

Нельзя обосновать это словами:

- «механизм тяжёлый»;
- «скорость небольшая»;
- «видео выглядит плавно».

Нужно доказательство масштаба: сравнение характерного времени, acceleration effect, benchmark against transient calculation/test или governing source method.

### Pedagogical order-of-magnitude check

Если для выбранного тела доступны масса `m`, оценка acceleration `a` и характерная static force `F_s`, можно посмотреть отношение

\[
\epsilon_a = \frac{m|a|}{F_s}
\]

как **учебный индикатор** значимости inertia для данной постановки. Это не нормативный предел и не crane dynamic factor. Он только заставляет увидеть порядок величины.

# Блок 13. Elastostatic model нужен, когда деформация меняет load path

Rigid-body idealization предполагает, что геометрия не меняется под нагрузкой так, чтобы это существенно перераспределяло силы.

Но для реальных механизмов compliance может влиять на:

- sharing между опорами;
- misalignment;
- contact patch;
- rope position;
- shaft/bearing reaction;
- local load concentration.

Если requested output чувствителен к deformation, rigid-body reaction может быть только input для следующего уровня.

### Важная граница

`deformation present` не означает автоматически «нужна FEA». Сначала нужно доказать, какая deformation mode влияет на decision и можно ли её надёжно представить более простой моделью.

# Блок 14. Advanced model обязан пройти verification и validation — «solver converged» недостаточно

У high-fidelity model минимум пять новых рисков:

1. wrong geometry mapping;
2. wrong boundary conditions;
3. wrong material/contact law;
4. numerical/discretization error;
5. false interpretation of a visually impressive field plot.

Convergence — лишь один implementation signal. Модель может прекрасно сходиться к неверно поставленной задаче.

### Mandatory questions before trusting advanced output

```text
Does simple equilibrium close?
Does the model reproduce a known limiting case?
Does refinement change the decision-driving quantity?
Do reactions balance applied loads/inertia within expected tolerance?
Is contact/load path physically plausible?
Is there independent benchmark or test evidence?
```

# Блок 15. Adequacy matrix: модель должна быть достаточна именно для решения

Используем matrix, а не «чувство сложности».

| Criterion | Model A simple | Model B intermediate | Model C advanced |
|---|---|---|---|
| required output exists | yes/no | yes/no | yes/no |
| dominant physics represented | … | … | … |
| inputs available | … | … | … |
| source applicability | … | … | … |
| verification possible | … | … | … |
| validation evidence | … | … | … |
| uncertainty understood | … | … | … |
| auditability | … | … | … |

Выбор может закончиться неожиданно: Model B выигрывает у C, потому что C требует неизвестные friction/contact/material inputs, которые доминируют над результатом.

### Status vocabulary

- `MODEL FORM ADEQUATE FOR REQUESTED OUTPUT`;
- `MODEL FORM INSUFFICIENT`;
- `HIGHER FIDELITY JUSTIFIED`;
- `HIGHER FIDELITY NOT VALIDATED`;
- `INPUT DEFICIT DOMINATES MODEL CHOICE`.

## Рабочий протокол III-A. Model-selection decision tree

```text
Is output purely geometric/kinematic?
  yes → geometry/kinematic model
  no ↓

Can rigid-body equilibrium/kinetics represent dominant physics?
  yes → rigid-body model + checks
  uncertain ↓

Does deformation materially change load path/output?
  yes → compliant/elastostatic model
  no/uncertain ↓

Are transients/inertia decision-driving?
  yes → dynamic model with validated inputs
  no ↓

Is local field/contact required?
  yes → local analytical/FE/contact submodel

Is formal proof requested?
  → exact governing proof method + source-bound inputs + authority
```

Это не автоматический алгоритм, а forcing function: каждый переход требует evidence.

## Рабочий протокол III-B. Time-scale reasoning

Quasi-static adequacy можно исследовать через characteristic scales. Не обязательно иметь нормативный threshold, чтобы задавать правильные вопросы.

Например:

- `τ_load` — характерное время изменения нагрузки;
- `τ_system` — характерное время механического response mode.

Если `τ_load >> τ_system`, quasi-static representation может быть plausible для некоторых outputs. Если сравнимы — transient effects likely matter. Но численное решение о применимости зависит от actual system/source/validation.

### Guard

D4 не превращает эту идею в universal criterion. Она служит **методом постановки вопроса**.

## Рабочий протокол III-C. Compliance relevance test

Спроси: если stiffness увеличить в 10 раз, изменится ли decision-driving output существенно?

- если почти нет — rigid-body model may be adequate;
- если сильно — stiffness/load sharing must be represented;
- если неизвестно — sensitivity run полезнее спорa «нужна ли FEA».

Это можно делать даже на simplified spring model до full FE.

## Рабочий протокол III-D. Advanced model readiness gate

Перед high-fidelity model должны быть доступны:

| Category | Minimum evidence |
|---|---|
| geometry | verified configuration + relevant dimensions |
| loads | traceable load cases/state histories |
| boundaries | physical justification |
| materials | source + applicable properties |
| contacts | justified contact pairs/laws |
| numerics | mesh/time step/solver strategy |
| benchmark | simpler model or test |
| output | definition + extraction rule |
| criterion | exact applicable source if formal proof |

Если половина таблицы `UNKNOWN`, high-fidelity model превращается в parameterized illustration, а не proof.

## Рабочий протокол III-E. Model hierarchy as evidence ladder

Хорошая практика — сохранять lineage:

```text
M0 geometry
→ M1 rigid-body benchmark
→ M2 compliant/global model
→ M3 local submodel
→ M4 high-fidelity validation model
```

Каждая модель должна объяснить, что она добавляет относительно предыдущей. Если M3 не меняет decision и M1 уже validated, сложность может быть unnecessary.

### Failure modes Part III

- `complexity bias`: сложнее = лучше;
- `solver authority`: software output воспринимается как независимый источник;
- `hidden dynamics`: transient load encoded unknown coefficient;
- `stiffness blindness`: load sharing assumed rigid;
- `validation leakage`: benchmark outside current domain;
- `model creep`: pedagogical model постепенно называется proof model.

### Mini-review Part III

Укажи для выбранной model family:

1. dominant physics;
2. omitted physics;
3. evidence that omissions are acceptable;
4. inputs newly introduced by increased fidelity;
5. independent check;
6. stop condition.

# Итог Части III

D4 не награждает сложность. Он награждает **адекватность, проверяемость и доказанную применимость**.

# Мост к Части IV

Теперь отделим открытые механические модели от source-bound selection/proof для каната, барабана и блоков.
