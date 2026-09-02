# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть IV. Rope-drive selection и proof: где заканчивается учебная механика
## Блоки 16–20 — авторская версия v1

## Reader Navigator — formal source-bound pathway без подмены публичным summary

Главная линия:

```text
QUESTION
→ GOVERNING SOURCE / EXACT BRANCH
→ APPLICABILITY
→ REQUIRED INPUTS WITH PROVENANCE
→ FORMAL METHOD
→ VERIFICATION / REVIEW
→ BOUNDED CLAIM
```

Публичный abstract, secondary summary или знакомое число могут помочь **найти вопрос и источник**, но не перепрыгивают applicability и exact-input gates.

### К концу Части IV ты должен уметь

- отличить open-mechanics sanity check от source-bound proof;
- доказать, что выбран exact method branch, а не просто найден номер стандарта;
- вести stricter input register для formal proof;
- карантинировать secondary-source values;
- завершить анализ bounded request package, если exact source/inputs/authority отсутствуют.


# Блок 16. ISO 16625-type question — это отдельный класс, а не «ещё одна формула про канат»

Публичный abstract `ISO 16625:2025` говорит о proof of competence и критериях выбора стальных канатов для кранов; влияние геометрии rope drive, барабана и блоков включается в proof/selection framework.

Для D4 отсюда разрешён важный вывод:

> если вопрос касается формального выбора/proof каната–барабана–блоков, геометрия не является декоративным приложением — она часть governing method family.

Но публичное описание не раскрывает весь нормативный алгоритм. Поэтому SkillsVault не вводит из памяти:

- factors;
- D/d criteria;
- groove criteria;
- fleet/deflection limits;
- utilization factors;
- acceptance numbers.

# Блок 17. Open mechanics может проверить здравый смысл proof model, но не заменить его

Допустим, source-bound method дал промежуточный force result. Мы можем сделать независимые проверки:

- совпадает ли размерность;
- разумен ли знак;
- закрывается ли equilibrium;
- меняется ли output в ожидаемую сторону при росте load;
- возвращается ли модель к простому случаю при отключении усложняющего фактора.

Но если exact method содержит coefficients и criteria, неизвестные нам, нельзя «достроить» их через общую механику.

### Rule IV-17

> Sanity-check проверяет результат. Он не создаёт нормативный результат, которого у нас нет.

# Блок 18. Requirement и proof должны быть связаны traceability, но не слиты

`ISO 10972-1:2025` по публичному abstract охватывает общую компоновку/дизайн механизмов и selection/design requirements компонентов, но отдельно указывает, что не даёт proof-of-competence calculations по yield/fatigue/wear limit states.

Это прекрасный пример D4-разделения:

```text
REQUIREMENT: что должно быть обеспечено?
SELECTION RULE: как выбрать компонент?
PROOF METHOD: как доказать competence по конкретному limit state?
ACCEPTANCE/AUTHORITY: кто принимает результат?
```

Один документ может охватывать несколько слоёв, но мы обязаны показать, какой именно clause/method отвечает на наш вопрос.

# Блок 19. Input provenance для source-bound proof должен быть строже, чем для учебного примера

Для каждого input нужен status:

- `MEASURED`;
- `OEM/PASSPORT DECLARED`;
- `DRAWING/CAD DERIVED`;
- `METHOD-SPECIFIED`;
- `CALCULATED BY VALIDATED SUBMODEL`;
- `ASSUMED FOR PEDAGOGICAL SCENARIO`;
- `UNKNOWN`.

Фраза «взяли типичное значение» в реальном proof review почти всегда должна зажечь красную лампу.

### Input register

```text
ID | PARAMETER | VALUE/STATE | UNIT | SOURCE | VERSION | UNCERTAINTY | STATUS | USED BY
```

Если input source-bound и неизвестен, status может быть:

`METHOD APPLICABLE — SOURCE-BOUND INPUT MISSING`.

Это полноценный инженерный вывод.

# Блок 20. Что делать, когда exact source недоступен

Неправильная реакция — искать screenshot, форумную таблицу или «похожий» коэффициент.

Правильная реакция D4:

1. сохранить вопрос;
2. классифицировать method family;
3. перечислить exact missing source/method sections;
4. собрать подтверждаемые geometry/load/material inputs;
5. выполнить только open-mechanics checks, которые не подменяют proof;
6. сформировать request к designer/OEM/expert/source owner;
7. заблокировать formal conclusion.

### Bounded conclusion example

> `METHOD FAMILY IDENTIFIED; APPLICABILITY PLAUSIBLE; FORMAL PROOF NOT YET DEMONSTRATED — EXACT METHOD INPUTS / SOURCE ACCESS REQUIRED.`

Это сильнее, чем красивое число неизвестного происхождения.

## Рабочий протокол IV-A. Exact-source workflow

Когда задача попадает в source-bound proof family, D4 меняет режим работы.

```text
1. identify governing document family
2. verify exact edition/status/applicability
3. obtain legitimate full method access
4. map required clauses/inputs
5. build input register
6. resolve source conflicts
7. implement method exactly / traceably
8. independently verify implementation
9. apply correct criterion
10. competent review / authority handoff
```

Public metadata/abstract годится для discovery и **предварительного scope screening**. Он может подтвердить edition/status и подсказать method family, но не должен сам по себе превращаться в `METHOD APPLICABILITY CONFIRMED` для конкретного механизма. Финальная applicability может требовать полного scope, definitions/exclusions, configuration и иных method-specific условий. Для шагов 5–9 публичного abstract тем более недостаточно, если там нужны закрытые details.

## Рабочий протокол IV-B. Source-bound input classes

В rope-drive proof review часто встречаются classes:

- rope product/data;
- drum/sheave geometry;
- rope path geometry;
- load cases/combinations;
- duty/classification;
- material/component data;
- operating/configuration state;
- proof-method coefficients/criteria.

D4 lesson не утверждает конкретный состав конкретного стандарта сверх доступного source. Но учит: **не смешивай engineering measurement с normative parameter**. Они могут иметь одинаковое название и разное definition.

## Рабочий протокол IV-C. Secondary source quarantine

Если найдено число в статье, презентации, форуме или старой записке:

```text
SECONDARY VALUE FOUND
→ quarantine
→ identify claimed primary source + edition + clause
→ verify definition/units/scope
→ use only after primary confirmation
```

Пока primary confirmation нет, secondary value может использоваться только как search clue, не как proof input.

Но и `primary confirmation` нельзя понимать как «я нашёл такое же число в стандарте». Для proof input должны совпасть как минимум definition, edition, object/configuration, units, conditional logic и место этого значения в exact method.

```text
PRIMARY VALUE LOCATED
≠
CURRENT CASE INPUT APPLICABLE
```

Это защищает от особенно коварной ошибки: правильное число из правильного документа, применённое **не к той ветке метода**.

## Рабочий протокол IV-D. Proof claim ladder

Различай states:

- `METHOD FAMILY IDENTIFIED`;
- `METHOD APPLICABILITY CONFIRMED`;
- `INPUT SET COMPLETE`;
- `METHOD IMPLEMENTED AND VERIFIED`;
- `CRITERION EVALUATED`;
- `INDEPENDENT REVIEW COMPLETE`;
- `AUTHORIZED ACCEPTANCE / DECISION`.

Это помогает audit trail: инженер может находиться на четвёртой ступени и честно не делать шестой-седьмой вывод.

## Рабочий протокол IV-E. Request package к OEM/designer/expert

Вместо «пришлите данные по барабану» отправь структурированный request:

```text
Engineering question:
Configuration ID:
Method family / source:
Missing input IDs:
Required definitions/units:
Why each input is decision-driving:
Existing evidence attached:
Requested authority/review:
```

Такой пакет ускоряет работу сильнее, чем предварительный расчёт на догадках.

### Failure modes Part IV

- reconstructing closed method from memory;
- using old edition because PDF happens to exist;
- importing coefficient from another crane/component;
- treating supplier marketing data as normative proof input;
- losing units/definitions when copying tables;
- using actual equipment measurement with unknown calibration/procedure;
- interpreting method result beyond its stated scope.

### Mini-review Part IV

Формальный proof заблокирован, если не можешь ответить:

- exact method?
- exact edition?
- applicability?
- complete inputs?
- definition/provenance of every source-bound input?
- criterion?
- independent verification?
- authorized reviewer?

## Reader Checkpoint IV — где заканчивается учебная механика

1. Что public metadata может подтвердить, а чего не может?
2. Почему primary-source number всё равно может быть неприменим?
3. Какие поля нужны для source-bound input register?
4. Какой допустимый результат, если exact source недоступен?
5. Чем отличается `consistent with mechanics` от `formal proof completed`?

# Итог Части IV

D4 позволяет понять **куда относится formal question** и подготовить качественный пакет входов. Он не разрешает реконструировать закрытые нормативные числа.

# Мост к Части V

Следующий шаг — component model hierarchy: от глобального load path к локальному контакту и structural/numerical model.
