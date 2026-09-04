# CRN-M-03 — Крюковые подвески и захваты
# D3 Expected Result v1
## Наблюдаемый профиль причинно-диагностического инженерного мышления

---

# Назначение

Expected Result фиксирует не способность пересказать D3-термины, а **наблюдаемое поведение на новом неоднозначном случае**, где одна и та же сигнатура допускает несколько механических объяснений, часть состояния/истории неизвестна, а источники имеют разные роли и полномочия.

D3 считается сильным не тогда, когда учащийся любой ценой называет одну «первопричину», а когда он способен:

```text
НАБЛЮДАТЬ БЕЗ ВСТРОЕННОЙ ПРИЧИНЫ
→ ПОСТРОИТЬ РЕАЛЬНО РАЗЛИЧНЫЕ МЕХАНИЧЕСКИЕ H
→ ПЕРЕСОБРАТЬ D2-МОДЕЛЬ ДЛЯ КАЖДОЙ H
→ СФОРМУЛИРОВАТЬ ПРОВЕРЯЕМЫЕ ПРЕДСКАЗАНИЯ
→ ПРОВЕРИТЬ НАБЛЮДАЕМОСТЬ И НЕЗАВИСИМОСТЬ EVIDENCE
→ ИСКАТЬ ДАННЫЕ, МЕНЯЮЩИЕ ОТНОСИТЕЛЬНУЮ СИЛУ H
→ ВОССТАНОВИТЬ STATE / TRANSIENT / HISTORY
→ ОБНОВИТЬ MODEL SET ПОСЛЕ НОВОГО ФАКТА
→ ОТДЕЛИТЬ DISCRIMINATING VALUE ОТ AUTHORITY
→ ЗАКОНЧИТЬ BOUNDED STATUS / STOP
```

Успешными D3-результатами могут быть, например:

```text
ПОДДЕРЖИВАЕМАЯ ПРИЧИННАЯ МОДЕЛЬ — ОГРАНИЧЕННО
ПРАВДОПОДОБНО — НУЖНЫ РАЗЛИЧАЮЩИЕ ДАННЫЕ
АЛЬТЕРНАТИВА НЕ ИСКЛЮЧЕНА
МОДЕЛЬ ОСЛАБЛЕНА / ПРОТИВОРЕЧИТ ДАННЫМ
ТРЕБУЕТСЯ ТОЧНЫЙ OEM / INSPECTION / SPECIALIST SOURCE
НЕ ДОКАЗАНО
```

`ROOT CAUSE CONFIRMED`, `FIT FOR SERVICE`, `DISCARD`, `SAFE TO OPERATE`, `PERMITTED` не являются обычными D3-выходами и не могут появляться без отдельной доказательной и authority-основы.

---

# Что D3 Expected Result НЕ открывает

Этот этап не вводит и не разрешает:

- formal root-cause certification;
- numeric design/proof calculation;
- reconstruction of paid-standard coefficients, load combinations or dynamic factors;
- remaining-life / fatigue-life / failure-probability calculation;
- WLL/SWL/capacity derating or equipment selection;
- inspection/discard/acceptance verdicts;
- load-test criteria;
- specialist NDT interpretation;
- repair / adjustment / modification / bypass / redesign instructions;
- intentional fault reproduction, overload, slip, shock, jam or other hazardous diagnostic experiment;
- return-to-service or operation permission.

Если причинное различение упирается в одну из этих областей, **корректный STOP / handoff является успешным D3-поведением**, а не «незавершённым ответом».

---

# ER-D3-01 — Ведёт чистый Observation / Inference / Unknown register и границы кейса

## Наблюдаемое поведение

До причинного вывода учащийся отделяет:

- непосредственно наблюдаемое;
- измеренное / документально зафиксированное;
- вывод / интерпретацию;
- неизвестное;
- систему и operating state;
- релевантное временное окно.

Он не прячет причинный вывод внутрь описания симптома.

## Evidence output

```text
CASE / QUESTION:
...

OBSERVATION:
...

MEASUREMENT / RECORD:
...

INFERENCE:
...

UNKNOWN:
...

SYSTEM / STATE / TIME WINDOW:
...
```

## Не считается достигнутым

- «захват повернулся из-за перекоса» записано как observation;
- неизвестный loaded-state молча принят известным;
- данные разных режимов/моментов времени смешаны без bridge evidence.

---

# ER-D3-02 — Строит причинную цепочку, а не ярлык причины

## Наблюдаемое поведение

Учащийся умеет разложить гипотезу по механической цепи:

```text
условие / событие
→ изменение контакта / связи / геометрии / load path
→ механическое следствие
→ наблюдаемая сигнатура
```

Для крюковых подвесок и захватов он связывает causal reasoning с релевантными D2-объектами: ЦТ, реакции, моменты, active contacts, сочленения, ветви, удерживающее состояние, transient.

## Evidence output

```text
CAUSE / CONDITION CANDIDATE:
...

MECHANICAL BRIDGE:
...

LOCAL / SYSTEM RESPONSE:
...

OBSERVED SIGNATURE:
...
```

## Не считается достигнутым

- «перекос», «трение», «заедание», «неравномерность» без механического bridge;
- downstream symptom просто переименован в cause.

---

# ER-D3-03 — Строит механически различные competing hypotheses и выносит shared premises

## Наблюдаемое поведение

Если case остаётся причинно неуникальным, учащийся формирует минимум две H, которые различаются **механизмом и/или предсказаниями**, а не названием.

Он отдельно показывает общие предпосылки, на которых одновременно держатся несколько H.

## Evidence output

```text
H1:
MECHANISM:
ASSUMPTIONS:

H2:
MECHANISM:
ASSUMPTIONS:

SHARED PREMISES:
1. ...
2. ...

HYPOTHESIS-SPACE LIMIT:
considered ...
not evaluated ...
```

## Не считается достигнутым

- H2 — перефразированная H1;
- несколько H выглядят независимыми, хотя все требуют одной неподтверждённой contact/constraint premise;
- «одна правдоподобная история» автоматически объявляется уникальной.

---

# ER-D3-04 — Пересобирает D2 mechanical model отдельно для каждой H

## Наблюдаемое поведение

Для каждой существенной H учащийся заново проверяет релевантные D2-модели:

- body / system boundary;
- external effects / FBD;
- moment arms / centre of gravity;
- active contacts / reactions;
- loaded articulation / constraint state;
- branch engagement / load-share state;
- holding-state dependencies;
- quasistatic / transient model status.

Он не меняет один параметр, оставляя остальные предпосылки «как раньше», если сама H меняет систему.

## Evidence output

```text
H1 — D2 REBUILD:
body ...
contacts ...
constraints ...
CG / moments ...
branch / load-share ...
state/model status ...

H2 — D2 REBUILD:
...
```

## Не считается достигнутым

- одна общая схема используется для H, которые требуют разных active contacts;
- unloaded freedom переносится в loaded-state;
- endpoint автоматически используется как начальное engagement state.

---

# ER-D3-05 — Формулирует condition-matched falsifiable predictions

## Наблюдаемое поведение

До причинного закрытия учащийся пишет, что каждая H должна предсказывать **при одинаковых релевантных исходных условиях**.

Для каждой серьёзной H видны:

- ожидаемый признак;
- состояние/окно, где он ожидается;
- что было бы неожиданно;
- какой результат реально изменил бы мнение.

## Evidence output

```text
H1 PREDICTS:
...

CONDITIONS HELD:
...

H1 WOULD BE UNEXPECTED:
...

WHAT WOULD CHANGE MY MIND:
...
```

## Не считается достигнутым

- сравниваются два режима, где одновременно изменились ЦТ, contact state и скорость, а различие приписывается одной H;
- prediction дописывается после результата так, чтобы совпасть с любым evidence;
- `H → X` и наблюдаемое `X` превращаются в подтверждение H без альтернатив.

---

# ER-D3-06 — Применяет observability gate перед negative evidence

## Наблюдаемое поведение

Перед выводом «признака нет → H ослаблена/исключена» учащийся проверяет:

```text
EXPECTED?
SAME STATE / TIME WINDOW?
OBSERVABLE BY THIS METHOD?
COVERAGE / SENSITIVITY SUFFICIENT?
MAPPING RELIABLE?
ASSUMPTIONS STILL VALID?
```

Отсутствие записи оценивается только в пределах реальной чувствительности и temporal coverage журнала/метода.

## Evidence output

```text
NEGATIVE-EVIDENCE GATE:
expected? ...
state/window matched? ...
observable? ...
coverage/sensitivity? ...
mapping reliable? ...

RESULT:
NEGATIVE EVIDENCE / UNKNOWN / MODEL NEEDS REBUILD
```

## Не считается достигнутым

- «на видео не видно → не происходило»;
- «журнал пуст → transient events отсутствовали»;
- текущий normal snapshot используется как доказательство всей service history.

---

# ER-D3-07 — Проверяет независимость evidence и выбирает реально различающие данные

## Наблюдаемое поведение

Учащийся различает:

- evidence, вычисленное из спорной H;
- evidence, которое совместимо почти со всеми H;
- независимый datum, способный изменить relative support.

Derived quantity может быть **prediction generator**, но не становится независимым подтверждением той же модели.

## Evidence output

```text
DATUM:
...

ORIGIN:
observed / measured / record / model-derived

INDEPENDENT OF H?:
YES / NO / PARTLY

DISCRIMINATING VALUE:
H1 ...
H2 ...

NEXT DISTINGUISHING DATA:
...
```

## Не считается достигнутым

- output спорной модели возвращается как её confirmation;
- один симптом используется дважды: сначала как input, потом как «подтверждение»;
- «измерить всё» заменяет evidence plan.

---

# ER-D3-08 — Обновляет весь model set после нового факта без winner-by-elimination

## Наблюдаемое поведение

После meaningful evidence учащийся явно пересматривает:

- какие premises закрыты/изменены;
- какие D2 states больше недопустимы;
- какие H усилились;
- какие H ослабли;
- какие альтернативы остались;
- какой следующий datum теперь наиболее полезен.

Ослабление H1 не означает автоматического доказательства H2.

## Evidence output

```text
NEW DATUM:
...

PREMISE CHANGED:
...

MODEL-SET UPDATE:
H1 ...
H2 ...
H3 ...

ALTERNATIVES STILL LIVE:
...

NEW MODEL STATUS:
...

NEXT DISTINGUISHING DATA:
...
```

## Не считается достигнутым

- новый факт противоречит первоначальной H, но conclusion не меняется;
- H3 исключена → H1 объявлена root cause без пересмотра оставшегося пространства.

---

# ER-D3-09 — Разделяет present state, transient event, accumulated history и coverage

## Наблюдаемое поведение

Учащийся ведёт минимум три временных слоя:

```text
PRESENT STATE
TRANSIENT / EVENT WINDOW
ACCUMULATED HISTORY
```

и отдельно указывает, насколько evidence реально покрывает каждый слой.

Текущий след, отсутствие записи, факт прошлой работоспособности или текущая нормальная проверка не получают более широкий временной смысл, чем позволяют данные.

## Evidence output

```text
PRESENT STATE:
...

TRANSIENT:
...

HISTORY:
...

HISTORY / LOG COVERAGE:
...

WHAT IS NOT COVERED:
...
```

## Не считается достигнутым

- «раньше работало → механизм исключён»;
- «след найден сейчас → он возник в последнем эпизоде»;
- crane-level history автоматически становится exact attachment history.

---

# ER-D3-10 — Сохраняет временную причинность и не выдумывает engagement sequence

## Наблюдаемое поведение

Учащийся различает:

- pre-event condition;
- during-event state;
- post-event finding;
- cause;
- consequence;
- common effect / confounder.

Конечная фотография/положение не восстанавливает уникальную последовательность включения ветвей, контактов или ограничений.

## Evidence output

```text
TIMELINE:
t0 ...
t1 ...
t2 ...

CAUSE / CONSEQUENCE STATUS:
...

POSSIBLE SEQUENCES:
SEQ-1 ...
SEQ-2 ...

WHAT TEMPORAL EVIDENCE WOULD DISTINGUISH:
...
```

## Не считается достигнутым

- post-symptom тугое сочленение автоматически объявлено initiating cause;
- новый post-event contact mark автоматически объявлен драйвером;
- endpoint → unique engagement history.

---

# ER-D3-11 — Разделяет discriminating value источника и его authority

## Наблюдаемое поведение

Учащийся ведёт параллельные evidence lanes.

Например:

```text
OEM / PASSPORT
FORMAL PROOF / METHOD
INSPECTION
MONITORING / EVENT HISTORY
SAFE-USE / OPERATIONAL DOCUMENT
SPECIALIST EVIDENCE
```

Он спрашивает отдельно:

1. что этот источник реально сообщает по текущему causal question;
2. насколько он различает H;
3. применим ли его scope/method;
4. даёт ли он authority для нужного решения.

Сильный документ в одной lane не становится автоматически causal evidence или operation permission в другой.

## Evidence output

```text
QUESTION:
...

SOURCE / EVIDENCE:
...

ROLE:
...

DISCRIMINATING VALUE:
...

SCOPE / APPLICABILITY:
...

AUTHORITY:
...

UNRESOLVED:
...
```

## Не считается достигнутым

- OEM identity → current root cause;
- formal proof → current condition;
- inspection finding → initiating cause;
- safe-use plan → causal proof;
- несколько сильных документов «складываются» в permission to operate.

---

# ER-D3-12 — Формулирует bounded model status и корректный STOP / handoff

## Наблюдаемое поведение

Финальный вывод соответствует реальной доказательной силе и показывает границы рассмотренного model set.

Минимальная структура:

```text
CURRENTLY BEST-SUPPORTED / PLAUSIBLE:
...

WHY:
...

ALTERNATIVE NOT EXCLUDED:
...

UNKNOWN / ASSUMPTIONS:
...

HYPOTHESIS-SPACE LIMIT:
...

NEXT DISTINGUISHING DATA:
...

MODEL STATUS:
...

AUTHORITY BOUNDARY:
...

STOP / HANDOFF:
...
```

## STOP считается успешным D3-результатом, если

- доступное evidence не различает существенные H;
- нужный datum безопасно не доступен в текущей учебной/рабочей роли;
- различение требует inspection/specialist procedure или точного OEM/device method;
- продолжение потребовало бы опасного воспроизведения отказа, перегрузки, скольжения, заклинивания, bypass/adjustment/repair/modification;
- следующий вопрос уже является acceptance/discard, remaining life, formal proof, repair, return-to-service или operation authority.

STOP должен объяснять **что именно не закрыто и какая evidence/authority lane нужна**. Он не выдаёт разрешение продолжать эксплуатацию.

---

# ER-D3-13 — Показывает unseen transfer и rebuild после premise-changing challenge

## Почему known A–J недостаточно

Practice A–J и Practice Reasoning дают паттерны, но знакомый паттерн можно воспроизвести по памяти.

D3 transfer подтверждается только на **новом интегрированном case**, который не является простой заменой названий/номеров из A–J.

## Unseen case должен включать несколько элементов

Как минимум несколько из:

```text
ambiguous observed signature
+ mechanically distinct causal families
+ shared hidden premise
+ loaded-state / active-contact uncertainty
+ transient / history ambiguity
+ imperfect observability / log coverage
+ post-event finding with uncertain causal direction
+ source-role / authority boundary
```

## Mandatory challenge

После первого model status учащийся получает meaningful new evidence, которое меняет хотя бы одну ключевую premise, например:

- loaded-state constraint оказывается другим;
- предполагаемая engagement sequence опровергается time-stamped evidence;
- coverage журнала оказывается слабее/сильнее;
- post-event finding получает pre-event timestamp;
- exact CG/configuration отличается от принятой assumption;
- обнаруживается второй concurrent change;
- datum, считавшийся независимым, оказывается model-derived.

После challenge учащийся обязан обновить:

```text
OBSERVATION / UNKNOWN REGISTER
→ SHARED PREMISES
→ D2 MODEL(S)
→ EVIDENCE MATRIX
→ RELATIVE H SUPPORT
→ MODEL STATUS
→ BOUNDED CONCLUSION / STOP
```

Защита первоначального ответа несмотря на premise-changing evidence не демонстрирует D3.

---

# Минимальный evidence package для Verification

Для одного интегрированного case assessor должен увидеть как минимум:

1. `CASE / CAUSAL QUESTION`;
2. `OBSERVATION / INFERENCE / UNKNOWN`;
3. `SYSTEM / STATE / TIME WINDOW`;
4. `CAUSAL CHAIN MAP`;
5. минимум две mechanically distinct `HYPOTHESIS CARD`;
6. `SHARED PREMISES / HYPOTHESIS-SPACE LIMIT`;
7. `D2 REBUILD` для существенных H;
8. `CONDITION-MATCHED PREDICTIONS`;
9. `WOULD BE UNEXPECTED / WHAT WOULD CHANGE MY MIND`;
10. `OBSERVABILITY / COVERAGE CHECK`;
11. `EVIDENCE INDEPENDENCE CHECK`;
12. `DISTINGUISHING DATA PLAN`;
13. `PRESENT / TRANSIENT / HISTORY` reconstruction;
14. `CAUSE / CONSEQUENCE / SEQUENCE` timing check;
15. `SOURCE ROLE / DISCRIMINATING VALUE / AUTHORITY` separation;
16. `BOUNDED MODEL STATUS / STOP`;
17. обновлённые register/model/evidence/status/conclusion после mandatory challenge.

Не каждый пункт обязан быть отдельным длинным документом. Но операция мышления должна быть видна проверяющему.

---

# Candidate blocking failures для Verification Rubric

Practice Reasoning передал 12 failure families. Expected Result сохраняет их как **кандидатов**; следующий Verification Rubric должен отдельно решить severity, non-compensability и условия блокировки.

## BF-D3-01 — COMMON-MODE PREMISE BLINDNESS

Несколько H выглядят независимыми, хотя делят одну неподтверждённую основу.

## BF-D3-02 — CONDITION-MISMATCHED DISCRIMINATION

Различие приписывается механизму, хотя изменились релевантные исходные условия.

## BF-D3-03 — OBSERVABILITY-BLIND NEGATIVE EVIDENCE

`Не видно / нет записи → не происходило` без observability/coverage gate.

## BF-D3-04 — CIRCULAR EVIDENCE

Output спорной модели возвращается как независимое подтверждение этой же модели.

## BF-D3-05 — HISTORY-COVERAGE LEAP

Отсутствие записи расширяется за пределы sensitivity / temporal coverage источника.

## BF-D3-06 — POST-EVENT CORRELATION → CAUSE

Хронология, обслуживание или изменение «после» подменяет causal bridge и проверку confounders.

## BF-D3-07 — CAUSE / CONSEQUENCE INVERSION

Post-symptom state автоматически объявляется initiating cause.

## BF-D3-08 — UNIQUE-SEQUENCE INVENTION

Endpoint используется как доказательство единственной engagement/contact history.

## BF-D3-09 — POST-EVENT CONTACT / HOLDING PROMOTION

Обнаруженный после эпизода contact/holding state автоматически объявляется causal driver.

## BF-D3-10 — LOCAL SENSITIVITY → GLOBAL LAW

Локальная качественная тенденция превращается в универсальный монотонный закон или численную authority.

## BF-D3-11 — RELATIVE RANKING → CONFIRMATION

Ослабление одной H используется как доказательство другой без пересмотра оставшегося model set.

## BF-D3-12 — AUTHORITY STACKING

OEM / formal proof / inspection / safe-use / specialist evidence складываются в root-cause, acceptance или operation verdict вне своей роли.

## Cross-cutting safety / authority gate candidate

Во всех BF действует отдельный принцип:

```text
НУЖЕН РАЗЛИЧАЮЩИЙ ФАКТ
≠
РАЗРЕШЕНО СОЗДАТЬ ОПАСНОЕ СОБЫТИЕ ДЛЯ ЕГО ПОЛУЧЕНИЯ
```

Verification Rubric должен отдельно формализовать тяжесть попытки получить evidence через опасное воспроизведение отказа, перегрузку, намеренное скольжение/заклинивание, bypass защиты, adjustment/repair/modification либо через несуществующую operation/inspection/specialist authority.

Expected Result **не объявляет автоматически все BF non-compensable**: именно следующий Rubric назначает severity и пороги.

---

# Known-case evidence не закрывает D3

Practice/Reasoning A–J являются обязательным учебным основанием, но сами по себе не доказывают transfer.

Для D3 Verification требуется:

```text
KNOWN PATTERNS A–J
+
UNSEEN INTEGRATED CASE
+
MANDATORY PREMISE-CHANGING EVIDENCE UPDATE
```

---

# D3 → D4 boundary

D3 отвечает на вопрос:

> Какая причинная модель лучше поддержана имеющимися данными, какие альтернативы и premises остаются, какой безопасно доступный факт способен изменить относительную силу моделей и где нужно остановиться?

Если следующий вопрос требует формального выбора/валидации модели, численной sensitivity/error analysis, proof method, remaining-life model, acceptance/discard criteria или design verification, это уже D4 / specialist / equipment-authority workflow.

---

# Claim / authority boundary

D3 Expected Result не создаёт новый технический норматив и не переносит числа между областями применения.

Точный применимый source/method, exact device identity/configuration, OEM/passport data, inspection/specialist procedure и competent authority остаются обязательными там, где задача выходит за bounded causal-diagnostic analysis.

Frozen `CRN-M-01`, `CRN-M-02`, `CRN-M-03/D1` и `CRN-M-03/D2` остаются неизменяемыми prerequisites.

---

# Итоговая формула компетенции

```text
НАБЛЮДАЙ НЕЙТРАЛЬНО
→ РАЗВОДИ ФАКТ / ВЫВОД / НЕИЗВЕСТНОЕ
→ ДЕРЖИ МЕХАНИЧЕСКИ РАЗНЫЕ H
→ ВЫНОСИ ОБЩИЕ PREMISES
→ ПЕРЕСОБИРАЙ D2 ДЛЯ КАЖДОЙ H
→ ПРЕДСКАЗЫВАЙ ПРИ СОПОСТАВИМЫХ УСЛОВИЯХ
→ ПРОВЕРЯЙ НАБЛЮДАЕМОСТЬ И НЕЗАВИСИМОСТЬ
→ ИЩИ РАЗЛИЧАЮЩИЕ ДАННЫЕ
→ НЕ СМЕШИВАЙ STATE / TRANSIENT / HISTORY
→ ОБНОВЛЯЙ ВСЁ ПРОСТРАНСТВО МОДЕЛЕЙ
→ НЕ СКЛАДЫВАЙ AUTHORITY
→ STOP ДО НЕПОДТВЕРЖДЁННОГО РЕШЕНИЯ
```

Именно устойчивость этой процедуры на новом case и после нового evidence является Expected Result D3.
