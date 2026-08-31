# CRN-M-01 — Канаты и цепи
# D4 Verification Rubric v1
## Проверка устойчивого экспертного мышления и переноса

---

# Назначение

Эта рубрика отвечает на вопрос:

> **доказал ли обучающийся D4-компетентность наблюдаемым поведением на знакомых и незнакомых инженерных задачах?**

Она не оценивает:
- красоту текста;
- количество терминов;
- совпадение с reasoning document;
- способность угадать любимую root cause.

Она оценивает:
- качество постановки;
- дисциплину evidence;
- competing models;
- source/method validity;
- differentiating evidence;
- sensitivity;
- bounded conclusion;
- authority/safety boundary;
- transfer.

---

# Общая структура проверки

D4 verification состоит из трёх слоёв:

```text
LAYER 1
Known-case demonstration
↓
LAYER 2
Unseen transfer case
↓
LAYER 3
Short oral / written challenge
```

## Layer 1 — Known case

Выбирается один из Practice Cases A–H.

Цель:
проверить, умеет ли обучающийся использовать D4-архитектуру в знакомом домене.

## Layer 2 — Unseen transfer case

Новый кейс не должен повторять сюжет A–H.

Цель:
проверить перенос.

## Layer 3 — Challenge

Проверяющий меняет один ключевой input или оспаривает assumption.

Цель:
увидеть, способен ли человек:
- пересмотреть conclusion;
- сохранить audit trail;
- не защищать старый ответ из упрямства.

---

# Уровни оценки

Каждая dimension ER-01…ER-12 оценивается по шкале 0–4.

```text
0 — ABSENT / UNSAFE
1 — FORMAL / TEMPLATE-LEVEL
2 — STRONG D3
3 — D4 DEMONSTRATED
4 — D4 TRANSFER / ROBUST
```

---

# Level 0 — ABSENT / UNSAFE

Признаки:

- важный слой отсутствует;
- critical input придуман;
- вывод сильнее evidence;
- authority boundary нарушена;
- safety action задерживается из-за незавершённой diagnosis;
- точное число выдано без evidence chain.

Level 0 по одной dimension не всегда означает автоматический fail.

Но если сработал Blocking Failure — см. отдельный раздел ниже.

---

# Level 1 — FORMAL / TEMPLATE-LEVEL

Обучающийся знает форму.

Он может заполнить:

```text
FACT
ASSUMPTION
MODEL
CONCLUSION
```

но делает это механически.

Признаки:
- competing models номинальны;
- evidence не различает модели;
- source указан без applicability;
- uncertainty перечислена, но не влияет на решение;
- bounded conclusion выглядит как перефразированный бинарный ответ.

Это ещё не D4.

---

# Level 2 — STRONG D3

Обучающийся:
- хорошо строит causal models;
- предлагает testable predictions;
- умеет выбирать измерение;
- видит competing hypotheses.

Но D4-слои ещё нестабильны:

- source authority не всегда claim-specific;
- method validity может быть implicit;
- authority boundary не всегда отделена;
- sensitivity может быть слабой;
- audit trail неполный.

Это хороший экспертный анализ, но не доказанный D4.

---

# Level 3 — D4 DEMONSTRATED

Обучающийся стабильно:

```text
QUESTION
→ EVIDENCE STATUS
→ COMPETING MODELS
→ SOURCE / METHOD FIT
→ DIFFERENTIATING EVIDENCE
→ SENSITIVITY
→ BOUNDED CONCLUSION
→ AUTHORITY / SAFETY
```

И способен объяснить:
- что изменит conclusion;
- что останется unknown;
- почему output имеет именно такую силу.

---

# Level 4 — D4 TRANSFER / ROBUST

Level 3 сохраняется:
- на unseen case;
- после изменения ключевого input;
- при конфликтующем evidence;
- при необходимости отказаться от исходной hypothesis;
- при неудобном output `INSUFFICIENT DATA`.

Это устойчивый D4.

---

# ER-01 — Decision Question

## 0
Вопрос расплывчатый или подменён готовым ответом.

## 1
Формально сформулирован, но слишком широкий.

## 2
Технический вопрос хороший, но не отделяет decision from diagnosis.

## 3
Точный decision question задаёт объект, тип решения и границу задачи.

## 4
При изменении контекста обучающийся сам переформулирует question и объясняет, как это меняет нужный evidence.

---

# ER-02 — Evidence Status

## 0
Unknown выдаётся за fact или critical input выдуман.

## 1
Есть маркировка FACT/ASSUMPTION, но статусы смешиваются.

## 2
Основные статусы разделены, occasional laundering остаётся.

## 3
FACT / INFERENCE / ASSUMPTION / UNKNOWN стабильно разделены.

## 4
При challenge обучающийся отслеживает, какой статус изменился и какие downstream conclusions надо пересчитать.

---

# ER-03 — Competing Models

## 0
Одна заранее выбранная cause.

## 1
Альтернативы декоративны.

## 2
Две реальные модели есть, но predictions слабые.

## 3
Несколько живых моделей с различающими предсказаниями.

## 4
Обучающийся способен добавить новую plausible model после нового evidence и не ломает архитектуру анализа.

---

# ER-04 — Source Selection by Claim Type

## 0
Одна вечная source hierarchy.

## 1
Источники перечислены, applicability не объяснена.

## 2
Source class выбран разумно, formal applicability неполна.

## 3
Claim → needed authority → source → applicability → gap связаны явно.

## 4
На unseen case обучающийся правильно меняет source priority при изменении claim type.

---

# ER-05 — Minimum Sufficient Method

## 0
Model worship / сложность ради сложности.

## 1
Метод выбран по привычке.

## 2
Метод разумный, но transition criteria неясны.

## 3
Метод минимально достаточный; переход к следующему уровню обоснован decision value.

## 4
При ограниченных данных обучающийся сознательно понижает model depth и сохраняет validity.

---

# ER-06 — Differentiating Evidence

## 0
Предлагается «собрать больше данных» без различающей логики.

## 1
Следующий шаг полезен, но одинаково совместим со всеми моделями.

## 2
Есть различающее evidence, но приоритет не доказан.

## 3
Next evidence выбран по максимальному decision value.

## 4
Обучающийся умеет сравнить два candidate measurements по expected information gain качественно, даже без формального Bayes.

---

# ER-07 — Sensitivity / Uncertainty

## 0
Неопределённость игнорируется или скрывается.

## 1
Есть список unknowns.

## 2
Есть ranking unknowns, но без clear flip test.

## 3
Выделены inputs, способные изменить conclusion; задан приоритет.

## 4
При challenge обучающийся быстро пересобирает conclusion через sensitivity structure.

---

# ER-08 — Bounded Conclusion

## 0
Binary / overconfident conclusion без evidence.

## 1
Есть cautious wording, но status не связан с evidence.

## 2
Conclusion bounded, но часть gaps не отражена.

## 3
Сила вывода точно соответствует evidence; gaps и next step названы.

## 4
На unseen case обучающийся без сопротивления выбирает `NOT DEMONSTRATED` / `INSUFFICIENT DATA`, если это сильнейший допустимый output.

---

# ER-09 — Knowledge Status != Permission

## 0
`NOT DEMONSTRATED` или `INSUFFICIENT DATA` используется как разрешение продолжать.

## 1
Guard знает, но применяет только после подсказки.

## 2
Различает knowledge status и disposition на знакомом кейсе.

## 3
Стабильно отделяет epistemic result от operational permission.

## 4
На unseen safety-relevant case сам замечает опасную подмену до подсказки.

---

# ER-10 — Authority Boundary

## 0
Authority creep.

## 1
Handoff упомянут формально.

## 2
Основные границы понимает, но путает соседние слои.

## 3
Чётко разделяет analysis / inspection / design / NDT / formal approval / operation.

## 4
При challenge может объяснить, почему технически правильный анализ всё ещё не создаёт formal authority.

---

# ER-11 — Audit Trail

## 0
Невозможно восстановить ход анализа.

## 1
Есть notes, но assumptions/source versions теряются.

## 2
Большая часть пути восстановима.

## 3
Другой инженер может восстановить question, evidence, sources, models, method, sensitivity, conclusion.

## 4
После изменения input обучающийся оставляет versioned delta: что поменялось и почему conclusion изменился.

---

# ER-12 — Transfer

## 0
Работает только на знакомом шаблоне.

## 1
Нужны сильные подсказки.

## 2
Переносит causal reasoning, но теряет D4 source/authority layers.

## 3
Самостоятельно восстанавливает D4 architecture на unseen case.

## 4
Сохраняет D4 architecture после adversarial change одного ключевого input.

---

# Blocking Failures

Blocking Failure делает результат:

```text
D4 NOT VERIFIED
```

независимо от суммы баллов.

---

## BF-01 — Invented Critical Input

Обучающийся придумывает:
- отсутствующий коэффициент;
- нагрузку;
- geometry;
- OEM permission;
- discard threshold;
- life-curve parameter

и использует это как fact.

---

## BF-02 — Safety Delay

Есть подтверждённый applicable safety/discard criterion, но обучающийся требует сначала закончить root-cause analysis и тем самым откладывает требуемый disposition.

---

## BF-03 — Authority Creep

Обучающийся выдаёт:
- redesign approval;
- operational permission;
- formal NDT decision;
- certification-like conclusion

без соответствующей authority.

---

## BF-04 — False Legal / Formal Applicability

Ученик утверждает обязательность документа только потому, что он:
- новый;
- международный;
- OEM;
- national standard

без applicability basis.

---

## BF-05 — Unsupported Precision

Выдаётся точный:
- remaining life;
- probability;
- safe cycles;
- fatigue threshold

без evidence chain и uncertainty.

---

## BF-06 — Signal-to-Cause Shortcut

```text
SIGNAL
→ ROOT CAUSE
```

без промежуточной validated interpretation.

---

# Non-blocking Critical Errors

Эти ошибки серьёзно снижают оценку, но могут быть исправлены в challenge:

- преждевременное закрытие models;
- слабое differentiating evidence;
- неполный audit trail;
- забытый source version;
- путаница между product property и system response.

Если ученик сам замечает и исправляет ошибку после одного challenge, это может стать evidence robustness.

---

# Scoring

12 dimensions × max 4 points = 48.

Но сумма используется **только после** проверки Blocking Failures.

---

# Thresholds

## 0–23
`NOT VERIFIED`

Структура D4 нестабильна.

## 24–31
`STRONG D3 / D4 NOT YET VERIFIED`

Хорошая инженерная диагностика, но source/method/authority layers ещё неустойчивы.

## 32–38
`BORDERLINE D4`

Есть D4-поведение, но transfer или robustness недостаточны.

## 39–44
`D4 VERIFIED`

Устойчивый D4 на known + unseen case.

## 45–48
`D4 ROBUST / TRANSFER`

Редкий результат.

Требует Level 4 минимум по ER-12 и отсутствия BF.

---

# Mandatory minimums

Даже при достаточной сумме для `D4 VERIFIED` обязательны:

```text
ER-01 >= 3
ER-02 >= 3
ER-03 >= 3
ER-04 >= 3
ER-06 >= 3
ER-08 >= 3
ER-09 >= 3
ER-10 >= 3
ER-12 >= 3
```

Почему?

Потому что высокий total score не должен компенсировать провал ядра D4.

---

# Unseen Transfer Test v1

## Сценарий

На электрической цепной тали после замены цепного колеса:

- старая цепь оставлена;
- nominal dimensions нового wheel совпадают с документацией;
- noise уменьшился, но не исчез;
- через несколько недель появляется локальный polished contact band на части звеньев;
- total elongation остаётся ниже найденного in-service limit;
- alignment фактически не измерен;
- product certificate цепи есть;
- explicit pair approval chain + new wheel не найден;
- lubrication schedule выполнен;
- один inspector считает состояние приемлемым по elongation;
- другой указывает на локальную контактную картину;
- руководство спрашивает:
  > «Раз удлинение ниже лимита, можно считать проблему закрытой?»

---

## Почему это unseen case

Он не повторяет Practice F.

Здесь:
- заменён wheel, а не chain;
- chain старая;
- один criterion-looking datum выглядит благоприятно;
- локальный evidence конфликтует с общей dimensional metric;
- compatibility pair снова не доказана.

---

## Что должен сделать обучающийся

Без подсказки:

1. сформулировать decision question;
2. отделить:
   - chain condition;
   - wheel condition;
   - pair compatibility;
   - local contact evidence;
3. построить минимум 3 competing models;
4. объяснить, почему:
   ```text
   TOTAL ELONGATION BELOW LIMIT
   ≠
   ALL LOCAL FAILURE MODES EXCLUDED
   ```
5. определить applicability limits найденного elongation criterion;
6. выбрать 2–3 differentiating checks;
7. выдать bounded conclusion;
8. отделить inspection disposition от redesign / formal approval.

---

# Transfer Challenge

После ответа проверяющий сообщает один новый факт:

> Alignment measurement показывает систематическое осевое смещение, превышающее expected installation geometry по OEM documentation.

Обучающийся должен:

1. обновить evidence ledger;
2. пересмотреть competing-model weights;
3. показать, какие conclusions изменились;
4. показать, какие **не** изменились;
5. не объявлять alignment единственной root cause без достаточного evidence.

---

# Второй challenge — optional

> Wheel geometry перепроверена и полностью соответствует OEM drawing.

Сильный D4-ответ должен:
- понизить specific geometry-mismatch model;
- не отменить alignment/contact/system models автоматически;
- обновить next evidence plan.

---

# Verification Evidence Package

Для формальной фиксации результата сохраняются:

```text
01_KNOWN_CASE_RESPONSE
02_UNSEEN_CASE_RESPONSE
03_CHALLENGE_DELTA
04_SCORING_SHEET
05_BLOCKING_FAILURE_CHECK
06_FINAL_VERIFICATION_DECISION
```

---

# Scoring Sheet Template

| ER | Known Case | Unseen Case | Challenge | Final 0–4 | Evidence note |
|---|---:|---:|---:|---:|---|
| ER-01 | | | | | |
| ER-02 | | | | | |
| ER-03 | | | | | |
| ER-04 | | | | | |
| ER-05 | | | | | |
| ER-06 | | | | | |
| ER-07 | | | | | |
| ER-08 | | | | | |
| ER-09 | | | | | |
| ER-10 | | | | | |
| ER-11 | | | | | |
| ER-12 | | | | | |

---

# Blocking Failure Sheet

| BF | Triggered? | Evidence |
|---|---|---|
| BF-01 Invented Critical Input | | |
| BF-02 Safety Delay | | |
| BF-03 Authority Creep | | |
| BF-04 False Applicability | | |
| BF-05 Unsupported Precision | | |
| BF-06 Signal-to-Cause Shortcut | | |

---

# Final Verification Decision

Допустимые outputs:

```text
NOT VERIFIED
STRONG D3 / D4 NOT YET VERIFIED
BORDERLINE D4
D4 VERIFIED
D4 ROBUST / TRANSFER
```

Нельзя выдавать:

```text
D4 VERIFIED
```

если:
- сработал любой BF;
- ER-12 < 3;
- нарушен любой mandatory minimum;
- unseen case не выполнен.

---

# Что значит D4 VERIFIED на практике

Это не означает:

- formal engineering license;
- право redesign;
- право NDT certification;
- право operational approval.

Это означает только:

> **в рамках SkillsVault доказано, что человек устойчиво демонстрирует D4 reasoning architecture на знакомой и новой инженерной задаче, не завышает evidence, умеет управлять uncertainty и сохраняет authority/safety boundaries.**

---

# Следующий этап

`Final Alignment`

должен проверить сквозную непротиворечивость:

```text
Lesson
↕
Practice
↕
Practice Reasoning
↕
Expected Result
↕
Verification Rubric
```

Вопрос:

> реально ли мы учим именно тому, что практикуем, ожидаем и проверяем?

Если нет — исправлять надо не rubric score, а сам pipeline.
