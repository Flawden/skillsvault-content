# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть I. Method governance: сначала вопрос, потом метод
## Блоки 1–5 — авторская версия v1

## Перед началом

D1 научил читать идеализированную силовую схему. D2 добавил реальную геометрию, навивку и состояние механизма. D3 научил держать несколько причинных моделей и искать различающие данные. D4 меняет сам тип работы: теперь недостаточно построить правдоподобную модель — нужно доказать, что **именно этот метод имеет право отвечать на поставленный вопрос**.

Короткая формула D4:

> `QUESTION → METHOD → APPLICABILITY → INPUTS → IMPLEMENTATION → VERIFICATION → VALIDATION/CROSS-CHECK → SENSITIVITY/UNCERTAINTY → BOUNDED CONCLUSION → AUTHORITY HANDOFF`

В этой части не будет нормативных коэффициентов и «секретных формул из ISO». Мы учимся управлять методом, а не реконструировать закрытый документ.

# Блок 1. Один объект может породить восемь разных инженерных вопросов

Фраза «надо проверить барабан» неполна. Проверить **что именно**?

1. **Kinematics** — какой путь, скорость, перемещение, кратность или связь вращения и линейного движения?
2. **Load / reaction** — какие силы и реакции возникают в заданном состоянии?
3. **Rope-drive selection / proof** — соответствует ли подбор каната, барабана и блоков применимому методу?
4. **Component proof** — выдерживает ли конкретный элемент заданные limit states по применимому proof method?
5. **Inspection / condition** — каково наблюдаемое состояние и какие действия предусмотрены применимым inspection/discard method?
6. **Duty / history** — как режим и накопленная история описываются в классификации или мониторинге?
7. **Remaining-life context** — достаточно ли данных и полномочий для метода оценки design working period / остаточного ресурса?
8. **Equipment decision** — можно ли эксплуатировать, ремонтировать, изменять, принимать или продлевать работу оборудования?

Один и тот же факт — например, «канат идёт по блоку под заметно изменившимся направлением» — может быть входом сразу в несколько классов, но ответы у них разные.

### Red-Team guard

Если вопрос не классифицирован, любая последующая точность подозрительна. Можно идеально решить **не тот** вопрос.

### Карточка вопроса D4

Перед расчётом запиши:

```text
OBJECT:
QUESTION CLASS:
REQUESTED OUTPUT:
DECISION THAT WILL USE OUTPUT:
REQUIRED AUTHORITY:
```

Если последняя строка вызывает вопрос — это уже полезный результат.

# Блок 2. Источник применим не потому, что он «самый авторитетный», а потому что его scope совпадает с задачей

Экспертная ошибка — строить «пирамиду источников», где верхний автоматически отменяет нижние. На практике applicability многомерна.

Для любого источника проверь минимум:

- объект: кран вообще, конкретный тип крана, канат, механизм, стальная конструкция, inspection и т.д.;
- вопрос: терминология, design requirement, selection, load model, proof, inspection, monitoring;
- условия: режим, конфигурация, материал, метод измерения;
- редакцию и статус;
- доступность полного метода, а не только публичного abstract;
- полномочие вывода: чему источник даёт основание, а чему нет.

Например, `ISO 10972-1:2025` по публичному scope относится к требованиям к механизмам, общей компоновке и выбору/проектированию компонентов, но прямо отделяет это от proof-of-competence расчётов по limit states. Это не «конфликт» с proof standard — это разные вопросы.

А `ISO 16625:2025` публично позиционируется как proof/selection для стальных канатов, барабанов и блоков, то есть находится ближе к rope-drive proof question. Но наличие названия и abstract всё равно не даёт нам закрытых коэффициентов, таблиц или права объявить конкретный механизм доказанным.

### Applicability record

```text
SOURCE:
OBJECT MATCH:
QUESTION MATCH:
CONDITION MATCH:
EDITION/STATUS:
FULL METHOD AVAILABLE?:
INPUTS AVAILABLE?:
AUTHORITY OF RESULT:
APPLICABLE / NOT APPLICABLE / PARTIAL / UNKNOWN:
```

### Red-Team guard: UNKNOWN/PARTIAL не являются «почти применимо»

```text
APPLICABILITY UNKNOWN / PARTIAL
≠
PERMISSION TO USE THE METHOD AS FORMAL PROOF
≠
PERMISSION TO MAKE THE EQUIPMENT DECISION
```

`UNKNOWN` и `PARTIAL` — самостоятельные инженерные statuses. Их нельзя повышать до `APPLICABLE` потому, что результат модели выглядит разумно, source familiar или дедлайн близко. Следующий шаг — закрыть недостающий scope/condition/edition/configuration evidence либо ослабить conclusion.

# Блок 3. Requirement, selection, proof, inspection и monitoring нельзя смешивать в один «стандарт говорит»

В D4 полезно маркировать роль каждого документа.

## Requirement

Задаёт требование к устройству, компоновке или характеристике. Требование может сказать, **что должно быть обеспечено**, но не обязательно даёт proof algorithm.

## Selection / proof

Задаёт метод выбора или доказательства соответствия заданному criterion. Здесь особенно важны exact edition, inputs, coefficients, combinations и область применимости.

## Inspection

Определяет требования к осмотрам/инспекциям и evidence о состоянии. Inspection evidence может обнаружить проблему, но не автоматически является structural proof.

## Monitoring / duty history

Описывает историю работы, классификацию или design working period context. Это может изменить выбор метода или приоритет проверки, но не создаёт оставшийся ресурс одним фактом наличия счётчика.

## Pedagogical mechanics

Наши `ΣF`, `ΣM`, `M=T·r`, векторные реакции и простые модели — это открытая физическая база. Они нужны для понимания и sanity-check, но не заменяют нормативный proof method.

### Проверка

Если в отчёте есть фраза «по стандарту», D4 требует дописать:

> по какому стандарту, какой редакции, для какого объекта, какого вопроса, какого метода и с какими исходными данными.

# Блок 4. Метод — это контракт с областью валидности

Формула без паспорта метода — всего лишь выражение.

Минимальный **method passport**:

```text
METHOD ID / VERSION:
QUESTION ANSWERED:
OUTPUT:
REQUIRED INPUTS:
BOUNDARY CONDITIONS:
ASSUMPTIONS:
APPLICABILITY LIMITS:
SOURCE/DERIVATION:
VERIFICATION CHECKS:
VALIDATION/CROSS-CHECK:
KNOWN FAILURE MODES:
AUTHORITY LIMIT:
```

Рассмотрим три модели реакции на блоке:

- модель A: идеализированные равные натяжения и известный угол между ветвями;
- модель B: разные `T1` и `T2`, измеренные/полученные из отдельной модели;
- модель C: динамическая модель, где натяжения и направление меняются во времени.

Модель C сложнее, но она не «лучше всегда». Если вопрос — грубый order-of-magnitude sanity-check в стационарном учебном состоянии, модель A может быть полностью достаточной. Если вопрос — transient peak reaction, A уже не отвечает на вопрос.

### Rule D4-04

> Fidelity выбирается по **решению, которое надо принять**, и по evidence, которое реально доступно, а не по желанию получить красивый график.

# Блок 5. Audit trail начинается до расчёта

Экспертный результат должен быть воспроизводимым. Через месяц другой инженер должен понять не только итог, но и путь.

Минимальный audit trail D4:

1. вопрос и requested output;
2. scope и исключения;
3. источники с редакциями/датами;
4. выбранный метод и отвергнутые кандидаты;
5. boundary conditions;
6. inputs и provenance;
7. assumptions;
8. версия модели/таблицы/скрипта;
9. verification checks;
10. validation/cross-check evidence;
11. sensitivity/uncertainty;
12. конфликты и unresolved unknowns;
13. bounded conclusion;
14. authority handoff.

### Плохой audit trail

> «Сделали расчёт барабана, всё нормально».

### Хороший audit trail

> «Для вопроса X выбран method family Y; applicability подтверждена по A/B/C. Входы P и Q — из паспорта редакции …; параметр R не подтверждён, поэтому proof conclusion заблокирован. Учебная модель показывает направление влияния R, но не заменяет normative proof. Требуется OEM/designer input.»

## Рабочий протокол I-A. Как классифицировать вопрос, когда заказчик сам сформулировал его плохо

Реальная заявка часто звучит так: «проверьте, почему барабан так работает» или «скажите, нормальна ли реакция». D4 не спорит с формулировкой — он **декомпозирует её**.

### Шаг A — выпиши наблюдаемое без объяснений

Например:

- reaction sensor показывает новый диапазон;
- канат находится на определённом слое;
- есть локальная сигнатура у crossover zone;
- режим start/stop изменился после настройки привода.

### Шаг B — выпиши решения, которые кто-то хочет принять

- продолжить эксплуатацию;
- понять причину;
- проверить расчёт;
- выбрать другой канат;
- изменить routing;
- назначить inspection;
- обосновать ремонт.

Эти решения требуют **разных уровней authority**. Если запрос «понять причину» незаметно превращается в «разрешить изменение запасовки», scope уже утёк.

### Шаг C — разложи на engineering questions

```text
Q1: geometry / configuration correct?
Q2: load path/reaction consistent with measured state?
Q3: transient dynamics material to reaction?
Q4: rope-drive selection/proof method applicable?
Q5: condition/inspection escalation required?
Q6: equipment decision within our authority?
```

Только после этого выбирай methods.

## Рабочий протокол I-B. Source conflict matrix

Когда два источника «дают разное», заполни matrix:

| Проверка | Source A | Source B | Конфликт? |
|---|---|---|---|
| объект | | | |
| question class | | | |
| edition/status | | | |
| crane/type scope | | | |
| load state | | | |
| definition output | | | |
| authority | | | |

Большая часть конфликтов исчезает на первых строках: документы отвечают на разные вопросы.

### Пять типов ложного конфликта

1. **Term conflict** — одинаковое слово имеет different definition.
2. **Scope conflict** — один документ general, другой type-specific.
3. **Edition conflict** — цитируется withdrawn/superseded edition.
4. **Method conflict** — сравниваются selection rule и proof result.
5. **Authority conflict** — инженерная рекомендация сравнивается с обязательным field decision.

Настоящий конфликт фиксируется только после harmonization.

## Рабочий протокол I-C. Пример method passport

Предположим, нужно проверить, может ли изменение угла между ветвями объяснить изменение resultant на оси блока.

```text
METHOD: vector rigid-body reaction model
QUESTION: resultant reaction direction/magnitude sensitivity to branch directions
OUTPUT: R vector in frame S
INPUTS: T1, T2, unit vectors e1, e2
BOUNDARY: block isolated as rigid body; axle reaction closes external rope forces
ASSUMPTIONS: rope-force resultants represented by branch tensions at tangent directions
NOT INCLUDED: bearing compliance, local contact stress, transient T histories unless supplied
VERIFICATION: vector sum, limiting cases, unit check
VALIDATION: compare with calibrated reaction measurement or independent model
AUTHORITY: explanatory/cross-check only; not component proof or acceptance
```

Это уже полноценный инженерный объект. Формула здесь — самая короткая часть.

## Рабочий протокол I-D. Claim ladder

Переход от слабого утверждения к сильному должен быть видимым:

```text
OBSERVED
→ CONSISTENT WITH MODEL
→ MODEL APPLICABLE TO QUESTION
→ CROSS-CHECKED / VALIDATED IN DOMAIN
→ FORMAL METHOD COMPLETED WITH EXACT INPUTS
→ COMPETENT REVIEW ACCEPTED
→ EQUIPMENT DECISION BY AUTHORIZED ROLE
```

Перескакивать ступени нельзя.

### Пример запрещённого скачка

`FEA shows low stress → drum is safe`.

Между ними отсутствуют как минимум governing load cases, model validation, source criterion, uncertainty, component scope и authority review.

## Рабочий протокол I-E. Audit trail как защита от ретроспективной подгонки

Если assumptions записываются только после результата, они начинают бессознательно подстраиваться под желаемый conclusion. Поэтому D4 требует pre-result record:

```text
Before run:
- intended output
- model choice
- expected dominant inputs
- acceptance of unknowns
- planned verification checks

After run:
- actual result
- failed checks
- model changes
- reason for every change
```

Особенно важно сохранять **отвергнутые** methods. Если Model A был отброшен из-за missing physics, это часть review; иначе спустя месяц его могут снова использовать как будто отказа не было.

### Mini-review Part I

Перед переходом дальше ответь:

- могу ли я назвать question class одним предложением?
- знаю ли я, почему этот source относится именно к этому question?
- могу ли я написать method passport без результата?
- вижу ли я различие между technical conclusion и field authority?
- будет ли мой путь воспроизводим другим инженером?

Если нет — ещё рано считать.

# Итог Части I

D4 начинается не с формулы. Он начинается с четырёх проверок:

```text
Я отвечаю на правильный вопрос?
Этот метод отвечает именно на него?
У меня есть законные/валидные входы?
Кто имеет право действовать по результату?
```

# Мост к Части II

Теперь нужно превратить реальный механизм в однозначную boundary-value problem: выбрать систему, состояние, frames, контакты, supports, rope path и конкретный output.
