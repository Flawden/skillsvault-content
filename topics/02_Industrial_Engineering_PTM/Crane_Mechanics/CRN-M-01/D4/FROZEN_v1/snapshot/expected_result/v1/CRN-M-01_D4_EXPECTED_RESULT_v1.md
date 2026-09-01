# CRN-M-01 — Канаты и цепи
# D4 Expected Result v1
## Наблюдаемый профиль экспертной компетентности

---

# Назначение

Expected Result отвечает не на вопрос:

> «Что обучающийся прочитал?»

и не на вопрос:

> «Какие термины он помнит?»

Он отвечает:

> **Что человек теперь способен сделать на незнакомой инженерной задаче — наблюдаемо, воспроизводимо и в пределах полномочий?**

D4 считается достигнутым не тогда, когда ученик знает больше фактов о канатах и цепях.

D4 достигается, когда человек способен **управлять качеством инженерного вывода**.

---

# Краткая формула результата

После D4 обучающийся способен:

```text
ПОЛУЧИТЬ НЕЗНАКОМУЮ ЗАДАЧУ
↓
СФОРМУЛИРОВАТЬ DECISION QUESTION
↓
РАЗДЕЛИТЬ FACT / INFERENCE / ASSUMPTION / UNKNOWN
↓
ПОСТРОИТЬ COMPETING MODELS
↓
ВЫБРАТЬ SOURCE / METHOD ПО ТИПУ УТВЕРЖДЕНИЯ
↓
НАЙТИ DIFFERENTIATING EVIDENCE
↓
ОЦЕНИТЬ SENSITIVITY / UNCERTAINTY
↓
ВЫДАТЬ BOUNDED CONCLUSION
↓
СОХРАНИТЬ SAFETY / AUTHORITY BOUNDARY
↓
ОСТАВИТЬ AUDIT TRAIL
```

---

# ER-01 — Формулирует правильный инженерный вопрос

## Наблюдаемое поведение

Получив расплывчатую задачу вроде:

> «Этот канат нормальный?»

человек не начинает сразу считать или искать одну таблицу.

Он переводит её в конкретный decision question.

Например:

> Достаточно ли имеющегося evidence, чтобы подтвердить replacement compatibility candidate rope с существующим rope drive без перехода в redesign?

или:

> Какие competing mechanisms лучше объясняют локальную деградацию в crossover zone, и какое measurement имеет максимальную различающую ценность?

---

## Evidence output

В результате существует отдельная строка:

```text
DECISION QUESTION:
...
```

которую другой инженер может оспорить до начала анализа.

---

## Не считается D4

```text
"Нужно разобраться"
"Нужно проверить канат"
"Посмотрим, что покажет расчёт"
```

---

# ER-02 — Разделяет статус каждого утверждения

## Наблюдаемое поведение

Ученик маркирует данные как:

```text
FACT
INFERENCE
ASSUMPTION
UNKNOWN
```

и не позволяет этим статусам незаметно перетекать друг в друга.

Например:

### FACT
MRT-индикация повторяется в координате x.

### INFERENCE
В зоне x вероятна локальная структурная неоднородность / повреждение определённого класса.

### ASSUMPTION
Текущие условия прохода достаточно сопоставимы с baseline.

### UNKNOWN
Root cause.

---

## Evidence output

Таблица или ledger минимум с четырьмя статусами.

---

## Критический D4-признак

Если ученик обнаруживает, что ключевой input неизвестен, он способен **остановить усиление вывода**, а не закрыть пробел догадкой.

---

# ER-03 — Строит несколько живых competing models

## Наблюдаемое поведение

Для сложной проблемы ученик формулирует минимум две правдоподобные модели, если evidence не исключает альтернативы.

Он не создаёт фиктивную альтернативу только «для галочки».

Каждая модель должна:

- объяснять часть наблюдений;
- иметь предсказания;
- потенциально проиграть другой модели после нового evidence.

---

## Evidence output

Таблица:

| Model | Explains | Does not explain | Prediction | Differentiating evidence |
|---|---|---|---|---|

---

## Не считается D4

```text
"Основная причина — X"
```

если X выбрана до проверки альтернатив.

---

# ER-04 — Выбирает источник по типу утверждения

## Наблюдаемое поведение

Ученик не строит одну универсальную лестницу:

```text
ISO > ГОСТ > OEM > research
```

Он сначала спрашивает:

> какой claim нужно поддержать?

И затем выбирает source class.

---

## Evidence output

Claim-source matrix:

| Claim | Needed authority | Source used | Applicability basis | Gap |
|---|---|---|---|---|

---

## Наблюдаемый D4-признак

Человек умеет сказать:

```text
этот источник технически полезен
НО
его formal applicability здесь не доказана
```

без отказа от технического анализа целиком.

---

# ER-05 — Выбирает минимально достаточный метод

## Наблюдаемое поведение

Ученик не считает M4 лучше M2 только потому, что M4 сложнее.

Он задаёт вопрос:

> какую новую различающую способность купит переход к более сложной модели?

Если ответ:

> никакую,

он остаётся на более простом уровне.

---

## Evidence output

Method card:

```text
QUESTION
INPUTS
ASSUMPTIONS
DOMAIN
OUTPUT
LIMITATIONS
WHY THIS LEVEL
```

---

## Не считается D4

- FEA без измеренных входов;
- resource model без endpoint;
- точный расчёт из придуманных параметров;
- сложность ради впечатления.

---

# ER-06 — Находит evidence с максимальной различающей ценностью

## Наблюдаемое поведение

Из нескольких возможных измерений ученик предпочитает не самое удобное и не самое привычное, а то, которое даст **разные предсказания для competing models**.

---

## Evidence output

Для каждого next step:

```text
MEASUREMENT / DOCUMENT:
...

MODEL A IF TRUE:
...

MODEL B IF TRUE:
...

DECISION VALUE:
HIGH / MEDIUM / LOW
```

---

## Критический признак

Человек понимает:

```text
MORE DATA
≠
MORE DECISION VALUE
```

---

# ER-07 — Управляет неопределённостью через sensitivity

## Наблюдаемое поведение

Ученик не пишет неопределённость отдельным абзацем в конце «для приличия».

Он спрашивает:

> какой unknown способен поменять conclusion?

---

## Evidence output

Sensitivity table:

| Unknown | Plausible low state | Plausible high state | Can flip conclusion? | Priority |
|---|---|---|---|---|

---

## Достаточно сильный результат

Если один неизвестный параметр меняет вывод на противоположный, ученик:

- не выдаёт single precise number;
- повышает приоритет измерения этого параметра.

---

# ER-08 — Выдаёт bounded conclusion, не сильнее evidence

## Наблюдаемое поведение

Ученик использует ограниченные статусы:

```text
SUPPORTED
CONDITIONALLY SUPPORTED
NOT DEMONSTRATED
INSUFFICIENT DATA
INCOMPATIBILITY / FAILURE MODE IDENTIFIED
```

и объясняет, почему выбран именно этот уровень силы.

---

## Evidence output

Финальный conclusion содержит:

1. что установлено;
2. что не установлено;
3. какие модели остаются;
4. какой следующий evidence нужен;
5. что способно изменить conclusion.

---

## Критический D4-признак

Человек способен закончить:

`INSUFFICIENT DATA`

и при этом показать **высококачественную инженерную работу**.

---

# ER-09 — Не превращает статус знания в эксплуатационное разрешение

## Наблюдаемое поведение

Ученик понимает:

```text
NOT DEMONSTRATED
≠
PERMISSION

INSUFFICIENT DATA
≠
PERMISSION

CAUSE UNKNOWN
≠
NO ACTION REQUIRED
```

---

## Evidence output

В каждом safety-relevant review есть отдельный раздел:

```text
SAFETY / DISPOSITION BOUNDARY
```

---

## Наблюдаемый D4-признак

Если applicable criterion уже требует action, ученик способен написать:

> требуемое safety disposition не должно ждать завершения root-cause analysis.

---

# ER-10 — Сохраняет границу authority

## Наблюдаемое поведение

Человек различает:

```text
ANALYSIS
INSPECTION
COMPATIBILITY REVIEW
DESIGN CHECK
REDESIGN
NDT QUALIFICATION
FORMAL APPROVAL
OPERATIONAL DECISION
```

и не присваивает себе следующий уровень полномочий только потому, что умеет его описать.

---

## Evidence output

Authority table:

| Output | Can produce analytically? | Requires specialist/authority? | Handoff |
|---|---|---|---|

---

## Не считается D4

- «расчёт показал — значит можно эксплуатировать»;
- «я понимаю MRT — значит могу выполнить formal NDT»;
- «compatibility review выявил gap — значит я перепроектировал систему».

---

# ER-11 — Создаёт audit trail

## Наблюдаемое поведение

Другой инженер способен восстановить:

- вопрос;
- исходные данные;
- версии источников;
- assumptions;
- методы;
- competing models;
- ключевые evidence;
- sensitivity;
- conclusion;
- handoff.

---

## Evidence output

Минимальный audit package:

```text
01_DECISION_QUESTION
02_EVIDENCE_LEDGER
03_SOURCE_MAP
04_METHOD_CARDS
05_COMPETING_MODELS
06_EVIDENCE_MATRIX
07_SENSITIVITY
08_BOUNDED_CONCLUSION
09_AUTHORITY_HANDOFF
```

---

# ER-12 — Переносит D4-мышление на новую задачу

Это главный transfer criterion.

Ученик не считается D4 только потому, что хорошо решает знакомые Cases A–H.

Нужно показать перенос на **новый кейс**, где изменены:

- объект;
- набор evidence;
- источник конфликта;
- ведущая неопределённость.

---

## Пример transfer task

Не давать снова:

> «канат вращается после замены».

Можно дать:

> новая цепь тали быстро изнашивается после замены колеса, часть размеров совпадает, часть OEM-документации отсутствует, визуальная и dimensional inspection дают разные уровни тревоги.

Или наоборот:

> канат имеет нормальную visual picture, но изменился drum package и появился новый noise signature без MRT.

---

## Transfer считается успешным, если

человек без подсказки восстанавливает общий D4-процесс:

```text
QUESTION
→ STATUS OF EVIDENCE
→ MODELS
→ SOURCE / METHOD
→ DIFFERENTIATING EVIDENCE
→ UNCERTAINTY
→ BOUNDED OUTPUT
→ AUTHORITY
```

---

# Минимальный наблюдаемый пакет D4

Чтобы считать результат проверяемым, обучающийся должен оставить минимум:

1. Decision Question.
2. Evidence Ledger.
3. Competing Models table.
4. Source/Method Map.
5. Differentiating Evidence Plan.
6. Sensitivity / Uncertainty note.
7. Bounded Conclusion.
8. Authority / Safety Boundary.

Если одного из этих слоёв нет, D4 ещё нельзя считать доказанным независимо от красоты финального текста.

---

# Что НЕ является достаточным evidence D4

## Не достаточно

- пересказать Lesson;
- назвать стандарты;
- объяснить D/d;
- правильно определить LF/LMA;
- получить верное число по заранее заданной формуле;
- совпасть с conclusion автора;
- выбрать «правильную» root cause в знакомом кейсе.

Это может быть сильным D2/D3 evidence.

Но D4 требует управления **валидностью самого вывода**.

---

# D3 → D4 observable jump

## Сильный D3

```text
OBSERVATION
→ COMPETING MECHANISMS
→ TESTABLE PREDICTIONS
→ MEASUREMENT
→ CAUSAL CONCLUSION
```

## Доказанный D4

```text
DECISION QUESTION
→ CLAIM TYPE
→ SOURCE APPLICABILITY
→ METHOD VALIDITY
→ INPUT STATUS
→ COMPETING MODELS
→ DIFFERENTIATING EVIDENCE
→ SENSITIVITY
→ UNCERTAINTY
→ BOUNDED CONCLUSION
→ AUTHORITY / SAFETY
→ AUDIT TRAIL
```

---

# Expected Result — итоговая формулировка

После успешного прохождения D4 обучающийся способен:

> **на незнакомой задаче по канатам, цепям и связанным механизмам самостоятельно построить воспроизводимый инженерный review: сформулировать decision question, разделить статусы evidence, выбрать применимые источники и минимально достаточные методы, сохранить конкурирующие модели, выбрать различающие проверки, оценить sensitivity/uncertainty, выдать bounded conclusion и корректно выполнить safety/authority handoff без выдумывания отсутствующих данных и без превращения анализа в несанкционированное эксплуатационное или проектное решение.**

---

# Что должен проверить следующий этап

`Verification Rubric` должен ответить:

> насколько хорошо и на каком уровне человек демонстрирует ER-01…ER-12?

Он не должен оценивать стиль письма как самоцель.

Он должен различать:

- поверхностное выполнение формы;
- сильный D3;
- пограничный D4;
- устойчивый D4;
- экспертный transfer.

И отдельно:

> какие ошибки являются блокирующими независимо от остальных баллов?

Например:

- invented critical input;
- authority creep;
- safety delay;
- false precision;
- source applicability laundering.
