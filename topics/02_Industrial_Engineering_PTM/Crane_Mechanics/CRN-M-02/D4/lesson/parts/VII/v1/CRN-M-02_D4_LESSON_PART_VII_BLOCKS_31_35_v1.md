# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть VII. Sensitivity, uncertainty и error budget
## Блоки 31–35 — авторская версия v1

# Блок 31. Ошибки разных классов нельзя складывать словами «погрешность около 10%»

D4 различает минимум пять классов:

1. **input uncertainty** — неизвестность load, geometry, material, state;
2. **measurement uncertainty** — instrument/calibration/procedure;
3. **geometry mapping error** — реальная форма плохо перенесена в model;
4. **model-form error** — missing physics / idealization;
5. **numerical error** — discretization, solver, implementation.

Плюс отдельный класс: **source/application error** — метод вообще выбран не для той задачи.

### Error register

| ID | Class | Quantity/model | Direction | Estimate/evidence | Decision impact |
|---|---|---|---|---|---|

Необязательно иметь точное число для каждой строки. Но нельзя скрывать неизвестный dominant error под красивой общей погрешностью.

# Блок 32. Qualitative sensitivity начинается до derivatives

Сначала спроси:

> если input увеличится, output должен вырасти, уменьшиться или эффект неоднозначен?

Для simple torque `M=T·r`:

- `T↑ → M↑`;
- `r↑ → M↑`.

Это structural sensitivity.

Для vector sheave reaction влияние angle может быть нелинейным и зависит от directions/definitions.

### Guard

Directional prediction не равна identification реального causal effect. D3 уже научил нас этому; D4 переносит guard в model review.

# Блок 33. Synthetic sensitivity example: точное число может быть менее полезно, чем устойчивость решения

Учебный пример, **не нормативный proof**.

Пусть простая модель даёт

\[
M=T r
\]

и nominal pedagogical inputs:

- `T = 100 kN`;
- `r = 0.50 m`;
- значит `M = 50 kN·m`.

Теперь сценарии:

- `T +10%` → `M +10%`;
- `r +6%` → `M +6%`;
- оба одновременно → примерно `+16.6%` для произведения.

Здесь важен не сам `50`. Важен вопрос: если реальная неопределённость `T` ±25%, а `r` известен ±1%, какой input доминирует review?

### D4 lesson

Сначала улучшай evidence для dominant uncertainty, а не бесконечно уточняй secondary parameter.

# Блок 34. Robust decision и precise result — разные цели

Допустим, Method A и Method B дают outputs, различающиеся на несколько процентов, но оба ведут к одному bounded engineering conclusion во всём plausible input envelope. Decision robust.

Другой случай: outputs близки, но small change unknown boundary condition переворачивает conclusion. Decision fragile.

### Robustness record

```text
DECISION-DRIVING OUTPUT:
DOMINANT INPUTS:
PLAUSIBLE ENVELOPE:
METHOD-FORM ALTERNATIVES:
DOES CONCLUSION CHANGE?:
ROBUST / FRAGILE / NOT DEMONSTRATED:
```

# Блок 35. Competing methods нельзя усреднять, если они отвечают на разные вопросы

Плохая практика:

> Model A = 80, Model B = 110, возьмём 95.

D4 сначала выясняет, почему они различаются:

- разные boundary;
- разные output definition;
- разная physics;
- разные source criteria;
- different load cases;
- one method outside applicability;
- numerical/implementation error.

Только после harmonization можно сравнивать like-for-like.

### Comparison table

| Field | Method A | Method B |
|---|---|---|
| question | … | … |
| boundary | … | … |
| inputs | … | … |
| physics | … | … |
| source | … | … |
| output definition | … | … |
| verification | … | … |
| validation | … | … |
| uncertainty | … | … |

## Рабочий протокол VII-A. Normalized sensitivity — только когда модель и диапазон действительно позволяют

Для differentiable pedagogical model можно использовать local normalized sensitivity:

\[
S_x^y = \frac{x}{y}\frac{\partial y}{\partial x}
\]

Например для `M=T r`:

\[
S_T^M=1, \quad S_r^M=1
\]

Это показывает local proportional sensitivity. Но D4 guard:

- derivative may not exist across contact/state changes;
- local sensitivity may not describe large uncertainty;
- normative source inputs may be discrete/conditional;
- causal interpretation is not automatic.

## Рабочий протокол VII-B. Scenario envelope before probability distribution

Если probability distributions не обоснованы, не нужно рисовать Monte Carlo ради серьёзности.

Сначала scenarios:

```text
S0 nominal
S1 high load / nominal geometry
S2 nominal load / geometry extreme
S3 altered boundary stiffness
S4 transient state
S5 alternate model form
```

Если conclusion уже flips between plausible deterministic scenarios, probabilistic precision пока вторична.

## Рабочий протокол VII-C. Uncertainty propagation with provenance

Каждая uncertainty должна иметь origin:

- calibration certificate;
- measurement repeatability;
- drawing tolerance;
- field survey scatter;
- source range;
- modelling judgment.

«±5% для надёжности» без происхождения — не uncertainty estimate.

### Correlation guard

Не складывай uncertainties как независимые, если inputs связаны. Например geometry measurements from same datum may share systematic error.

## Рабочий протокол VII-D. Model-form uncertainty through competing models

Иногда важнее не менять parameter, а менять **equations/representation**.

Например:

- rigid support vs compliant support;
- equal tension vs independently varying branch tensions;
- quasi-static vs transient model;
- lumped load vs distributed contact.

Разница outputs между physically plausible model forms — evidence о model-form uncertainty.

## Рабочий протокол VII-E. Decision robustness map

Для каждого scenario/model поставь bounded status, а не только number.

| Scenario | Method | Output range | Checks | Decision status |
|---|---|---|---|---|
| S0 | A | … | pass | robust? |
| S1 | A | … | pass | … |
| S2 | B | … | partial | review |

Если all plausible rows lead same conclusion, decision more robust. Если одна credible row flips it — escalate/collect evidence.

## Рабочий протокол VII-F. Value of information

D4 sensitivity помогает решить **что измерять дальше**.

Если output insensitive to radius uncertainty ±1%, but highly sensitive to transient tension history, новый laser scan radius может почти ничего не дать. Лучше invest in synchronized tension/drive-state measurement.

Так sensitivity превращается из «графика в отчёте» в план evidence acquisition.

## Failure modes Part VII

- fake precision in uncertainty;
- treating all errors independent;
- ignoring model-form uncertainty;
- sensitivity around wrong baseline/state;
- using Monte Carlo with invented distributions;
- reporting mean while decision depends on tail/peak;
- averaging incompatible methods;
- interpreting correlation/sensitivity as cause.

### Mini-review Part VII

Назови:

1. dominant uncertainty;
2. evidence for its range;
3. model-form alternative;
4. scenario that most threatens conclusion;
5. measurement with highest value of information.

# Итог Части VII

Экспертный вопрос:

> **какой неизвестный параметр или model choice способен изменить решение?**

Если мы этого не знаем, количество знаков после запятой не делает conclusion надёжнее.

# Мост к Части VIII

Теперь разберём evidence из duty, classification, inspection и monitoring — и почему оно важно, но не превращается само по себе в life verdict.
