# CRN-M-03 — Крюковые подвески и захваты
# D3 Verification Rubric v1
## Проверка причинно-диагностического инженерного мышления, transfer и обновления модели по evidence

---

# Назначение

Эта рубрика отвечает на вопрос:

> **доказал ли обучающийся D3-компетентность наблюдаемым причинно-диагностическим поведением на знакомом и незнакомом кейсе, включая обязательную пересборку модели после нового evidence, меняющего ключевую premise?**

Рубрика не оценивает красоту текста, совпадение слов с эталоном и способность назвать одну «истинную первопричину».

Проверяется процедура:

```text
OBSERVATION / INFERENCE / UNKNOWN
→ CAUSAL CHAIN
→ MECHANICALLY DISTINCT H
→ SHARED PREMISES
→ D2 REBUILD PER H
→ CONDITION-MATCHED PREDICTIONS
→ OBSERVABILITY / COVERAGE
→ EVIDENCE INDEPENDENCE
→ DISTINGUISHING DATA
→ STATE / TRANSIENT / HISTORY
→ MODEL-SET UPDATE
→ SOURCE ROLE / AUTHORITY
→ BOUNDED STATUS / STOP
```

Ключевой принцип:

```text
СИЛЬНЫЙ D3
≠
УВЕРЕННЫЙ ОДИН ОТВЕТ

СИЛЬНЫЙ D3
=
НАБЛЮДАЕМАЯ ДИСЦИПЛИНА РАЗЛИЧЕНИЯ МОДЕЛЕЙ
+ АДАПТИВНОЕ ОБНОВЛЕНИЕ ПО НОВОМУ ФАКТУ
+ КОРРЕКТНЫЕ ГРАНИЦЫ УВЕРЕННОСТИ И AUTHORITY
```

---

# 1. Структура проверки

Проверка состоит из трёх обязательных частей.

## K1 — Known-pattern case

Один кейс или составная задача на базе принятых Practice / Reasoning A–J.

Назначение K1:

- убедиться, что базовая процедура доступна без подсказки;
- проверить терминологическую и механическую дисциплину;
- выявить грубые blockers до transfer.

K1 **не закрывает D3 самостоятельно**.

## U1 — Unseen integrated case

Новый кейс, который не является простой заменой названий из A–J.

U1 должен содержать минимум несколько взаимодействующих неопределённостей:

- неоднозначную observable signature;
- минимум две механически различные causal families;
- хотя бы одну shared hidden premise;
- loaded-state / active-contact uncertainty;
- transient / history ambiguity;
- imperfect observability / log coverage;
- post-event finding с неопределённым causal direction;
- source-role / authority boundary.

## C1 — Mandatory premise-changing challenge

После первого bounded model status обучающийся получает новый datum, который **реально меняет хотя бы одну ключевую premise**.

Примеры допустимого C1:

- loaded constraint оказывается другим;
- timestamp меняет предполагаемую sequence;
- coverage журнала оказывается существенно слабее или сильнее;
- post-event finding получает подтверждённый pre-event timestamp;
- фактический CG/configuration отличается от принятой assumptions;
- обнаруживается второй concurrent change;
- datum, считавшийся независимым, оказывается model-derived.

После C1 обучающийся обязан обновить:

```text
REGISTER
→ SHARED PREMISES
→ D2 MODEL(S)
→ EVIDENCE STATUS
→ RELATIVE H SUPPORT
→ MODEL STATUS
→ BOUNDED CONCLUSION / STOP
```

Если ответ после C1 фактически не меняется там, где premise изменилась, transfer не подтверждён.

---

# 2. Шкала

Каждая из 13 dimensions оценивается от 0 до 4.

```text
0 — отсутствует / противоречит D3-контракту;
1 — фрагментарно, после сильной подсказки, с существенными логическими разрывами;
2 — частично работоспособно, но недостаточно надёжно для самостоятельного D3;
3 — VERIFIED behavior: самостоятельно, явно, проверяемо и в корректных границах;
4 — ROBUST behavior: устойчиво на U1/C1, с явной проверкой альтернатив, границ и последствий нового evidence.
```

Максимум:

```text
13 × 4 = 52
```

---

# 3. Итоговые статусы

## NOT VERIFIED

Любое из условий:

- есть material non-compensable BF;
- сработал S0 safety/authority gate;
- U1 не выполнен;
- C1 не выполнен;
- хотя бы одна dimension ниже 3;
- общий балл ниже 39.

## VERIFIED

Все условия одновременно:

```text
TOTAL >= 39 / 52
ALL 13 DIMENSIONS >= 3
K1 COMPLETE
U1 COMPLETE
C1 COMPLETE
NO MATERIAL BLOCKING FAILURE
S0 CLEAR
```

## ROBUST

Все условия VERIFIED плюс:

```text
TOTAL >= 46 / 52
ER-D3-03 >= 4
ER-D3-06 >= 4
ER-D3-07 >= 4
ER-D3-08 >= 4
ER-D3-12 >= 4
ER-D3-13 >= 4
```

Эти dimensions выбраны как критические для защиты от красивой, но замкнутой causal story:

- механически различимые H и shared premises;
- observability discipline;
- evidence independence;
- whole-model-set update;
- bounded STOP / authority;
- unseen adaptive transfer.

---

# 4. ER-D3-01 — Observation / Inference / Unknown и границы кейса

## 0
Причина встроена в observation; неизвестные скрыты; state/time boundary отсутствует.

## 1
Есть отдельные факты, но mixed observation/inference сохраняется.

## 2
Основное разделение выполнено, однако часть assumptions или временных границ неявна.

## 3
Явно разделены observation, measurement/record, inference, unknown, system/state/time window.

## 4
То же устойчиво на U1/C1; новый datum корректно переносится между категориями и меняет register без заднего переписывания первоначального evidence.

### Required evidence
`OBSERVATION / MEASUREMENT / INFERENCE / UNKNOWN / SYSTEM / STATE / TIME WINDOW`.

---

# 5. ER-D3-02 — Causal chain и mechanical bridge

## 0
Есть только ярлык: «перекос», «трение», «заедание», «неравномерность».

## 1
Механизм назван, но link до observable signature отсутствует.

## 2
Цепь частично построена, но есть unsupported jump.

## 3
Видна причинная последовательность `condition → mechanical bridge → response → signature`.

## 4
Цепь выдерживает comparison H, включает confounders и явно меняется после C1 там, где новый datum меняет механизм.

---

# 6. ER-D3-03 — Mechanically distinct H и shared premises

## 0
Одна история объявлена причиной.

## 1
Есть несколько названий одной и той же модели.

## 2
H частично различимы, но shared premise / hypothesis-space limit не показаны.

## 3
Есть минимум две механически различные H, явные assumptions, shared premises и граница рассмотренного пространства.

## 4
На U1 обучающийся показывает, какое evidence различает именно механизмы, и после C1 способен объединить, разделить или снять H без winner-by-elimination.

---

# 7. ER-D3-04 — D2 rebuild per H

## 0
Все H используют одну неизменную механическую схему.

## 1
Меняется один параметр при скрыто меняющейся системе.

## 2
Есть частичный rebuild, но active contacts / constraint / load path проверены не полностью.

## 3
Для каждой существенной H явно пересобраны body/FBD, contacts, constraints, CG/moments, branches/load-share и state/model status в нужном объёме.

## 4
После C1 пересборка выполняется именно в затронутых местах, а зависимые predictions/evidence status обновляются последовательно.

---

# 8. ER-D3-05 — Condition-matched falsifiable predictions

## 0
Prediction отсутствует или совместима с любым исходом.

## 1
Prediction post-hoc.

## 2
Prediction проверяема, но conditions held / unexpected outcome не определены.

## 3
До evidence указаны prediction, comparable conditions, unexpected result и what-would-change-my-mind.

## 4
На U1/C1 обучающийся корректно отделяет prediction failure от condition mismatch и перестраивает H без ретроспективного спасения.

---

# 9. ER-D3-06 — Observability / coverage gate

## 0
`не видно / нет записи → не происходило`.

## 1
Ограничение метода упомянуто, но не влияет на conclusion.

## 2
Часть sensitivity/window проверена, но negative evidence всё ещё переоценено.

## 3
Перед отрицательным evidence проверены expected state, time window, observability, sensitivity/coverage, mapping reliability и assumptions.

## 4
На C1 изменение coverage/sensitivity реально меняет evidence weight и model status; learner явно снимает прежний negative inference, если gate больше не проходит.

---

# 10. ER-D3-07 — Evidence independence и discriminating value

## 0
Output спорной модели используется как её независимое подтверждение.

## 1
Происхождение datum не отслеживается.

## 2
Есть попытка различить independent/derived evidence, но circularity остаётся возможной.

## 3
Для существенных данных видны origin, independence, discriminating value для H и next distinguishing datum.

## 4
На C1 learner обнаруживает зависимость/общий источник данных, пересчитывает относительную поддержку H и не «дублирует» один симптом как несколько подтверждений.

---

# 11. ER-D3-08 — Whole model-set update

## 0
Первый ответ защищается независимо от нового evidence.

## 1
Меняется формулировка conclusion без пересборки premises/models.

## 2
Обновляется одна H, но альтернативы не пересматриваются.

## 3
После meaningful datum обновляются premises, модели, H support, live alternatives, unknowns и next datum.

## 4
C1 демонстрирует реальную смену relative ranking/model status без автоматического `H1 слабее → H2 доказана`.

---

# 12. ER-D3-09 — Present / transient / history

## 0
Current snapshot используется как история всего срока.

## 1
Временные слои названы, но evidence coverage не сопоставлена.

## 2
Present/transient/history разделены частично.

## 3
Три слоя разделены, для каждого показано evidence coverage и явно указано `not covered`.

## 4
После нового timestamp/history datum learner корректно меняет causal interpretation, не расширяя evidence за его temporal scope.

---

# 13. ER-D3-10 — Temporal causality и sequence non-uniqueness

## 0
Post-event finding автоматически объявлен initiating cause либо endpoint объявлен уникальной sequence.

## 1
Хронология указана, но cause/consequence не разведены.

## 2
Есть альтернативные sequence, но нет различающего temporal evidence.

## 3
Видны t0/t1/t2, cause/consequence status, возможные sequences и datum, который их различит.

## 4
C1 с новым timestamp/sequence evidence корректно меняет допустимые модели и не создаёт ложной уникальности.

---

# 14. ER-D3-11 — Source role, discriminating value и authority

## 0
OEM / inspection / proof / safe-use document автоматически превращается в causal proof или operation verdict.

## 1
Источники перечислены без role separation.

## 2
Role separation есть, но discriminating value и authority смешиваются.

## 3
Для каждого ключевого source/evidence показаны role, scope/applicability, discriminating value, authority и unresolved.

## 4
Learner устойчиво обрабатывает conflicting/high-authority sources без authority stacking и умеет сказать: «сильный документ, но не отвечает на этот causal question».

---

# 15. ER-D3-12 — Bounded model status / STOP / handoff

## 0
Выдаётся неподтверждённый root-cause, acceptance/discard или operation verdict.

## 1
Есть caveat, но conclusion сильнее evidence.

## 2
Conclusion ограничен, но missing datum / handoff lane не определены.

## 3
Есть best-supported/plausible model, alternatives not excluded, unknowns, hypothesis-space limit, next datum, model status и authority boundary.

## 4
Learner выбирает корректный STOP даже под давлением «дай окончательный ответ» и точно указывает, какой evidence/authority lane нужна дальше.

---

# 16. ER-D3-13 — Unseen transfer + premise-changing rebuild

## 0
U1/C1 отсутствует либо learner повторяет known answer pattern.

## 1
U1 решается только после сильных наводящих вопросов.

## 2
U1 выполнен, но C1 приводит лишь к косметической правке ответа.

## 3
На новом интегрированном case learner самостоятельно проходит D3-процедуру и после C1 пересобирает затронутую модель.

## 4
Пересборка системна: register → shared premises → D2 models → evidence matrix → relative H support → bounded conclusion; learner может объяснить, **почему** новый datum изменил именно эти части.

---

# 17. Material blocking failures

Все 12 BF из Expected Result становятся **non-compensable**, но только при material occurrence.

`Material` означает: ошибка повлияла или могла повлиять на relative H support, bounded conclusion, STOP/handoff либо authority boundary и не была самостоятельно обнаружена и исправлена до финального ответа.

Высокий суммарный балл не компенсирует material BF.

## BF-D3-01 — COMMON-MODE PREMISE BLINDNESS

Block, если несколько H объявлены независимыми, хотя ключевая неподтверждённая premise общая, и learner строит на этом ложную уверенность.

## BF-D3-02 — CONDITION-MISMATCHED DISCRIMINATION

Block, если causal ranking строится на сравнении режимов с materially разными исходными условиями без bridge/normalization.

## BF-D3-03 — OBSERVABILITY-BLIND NEGATIVE EVIDENCE

Block, если отсутствие наблюдения/записи используется для исключения H без пройденного observability/coverage gate.

## BF-D3-04 — CIRCULAR EVIDENCE

Block, если model-derived output возвращён как независимое confirmation той же H.

## BF-D3-05 — HISTORY-COVERAGE LEAP

Block, если отсутствие события/следа в ограниченном журнале расширено за sensitivity/temporal coverage источника.

## BF-D3-06 — POST-EVENT CORRELATION → CAUSE

Block, если post-event correlation/maintenance/change используется как cause без mechanical bridge и confounder check.

## BF-D3-07 — CAUSE / CONSEQUENCE INVERSION

Block, если post-symptom state автоматически объявлен initiating cause.

## BF-D3-08 — UNIQUE-SEQUENCE INVENTION

Block, если endpoint используется как доказательство единственной engagement/contact sequence.

## BF-D3-09 — POST-EVENT CONTACT / HOLDING PROMOTION

Block, если обнаруженный после эпизода contact/holding state объявлен causal driver без temporal evidence.

## BF-D3-10 — LOCAL SENSITIVITY → GLOBAL LAW

Block, если локальная качественная тенденция превращена в универсальный закон, число, limit или authority и materially влияет на решение.

## BF-D3-11 — RELATIVE RANKING → CONFIRMATION

Block, если ослабление одной H автоматически объявляет другую доказанной без пересмотра оставшегося model set.

## BF-D3-12 — AUTHORITY STACKING

Block, если документы разных evidence lanes складываются в root-cause, acceptance/discard или operation permission вне их scope.

---

# 18. S0 — Procedural safety / authority gate

S0 не является «тринадцатым BF» и не входит в счёт 12 lineage failures.

S0 — отдельный автоматический gate.

Результат `NOT VERIFIED`, если learner предлагает или выполняет как диагностическое evidence-действие:

- намеренную перегрузку;
- воспроизведение опасного slip / jam / shock / uncontrolled motion;
- bypass protection;
- repair / adjustment / modification для «проверки гипотезы» без соответствующей authority;
- specialist NDT interpretation вне роли;
- operation / return-to-service permission;
- inspection/discard/acceptance verdict без требуемой authority;
- formal root-cause certification без отдельного процесса.

Принцип:

```text
НУЖЕН РАЗЛИЧАЮЩИЙ ФАКТ
≠
РАЗРЕШЕНО СОЗДАТЬ ОПАСНОЕ СОБЫТИЕ
```

Корректный STOP/handoff при недоступности безопасного evidence считается сильным результатом.

---

# 19. Evidence record assessor

Assessor должен сохранить как минимум:

```text
CASE_ID
K1 / U1 / C1
ER-D3-01 ... ER-D3-13 scores
TOTAL / 52

MATERIAL_BF:
none / BF-D3-..

S0:
CLEAR / TRIGGERED

KEY EVIDENCE:
...

PRE-C1 MODEL STATUS:
...

C1 DATUM:
...

POST-C1 REBUILD:
...

FINAL BOUNDED STATUS:
...

AUTHORITY BOUNDARY:
...

RESULT:
NOT VERIFIED / VERIFIED / ROBUST
```

---

# 20. Правила ассессора

Ассессор не должен:

- награждать за уверенный тон;
- требовать одну root cause там, где evidence не обеспечивает uniqueness;
- снижать балл за корректный `UNKNOWN`, если неизвестность реально не закрыта;
- считать длинный список H признаком качества;
- подсказывать C1-ответ до того, как learner зафиксировал update;
- использовать баллы для компенсации material BF;
- трактовать STOP как провал только потому, что отсутствует operation decision.

Ассессор должен:

- отличать ошибку знания от ошибки causal procedure;
- сохранять исходный pre-C1 ответ;
- делать C1 premise-changing, а не декоративным;
- проверять, что обновилась именно затронутая модель;
- отмечать, где learner самостоятельно исправил потенциальный BF до final answer.

---

# 21. Минимальный K1/U1/C1 design contract

## K1
Допускает быстрый scoring базовой процедуры по known-pattern материалу.

## U1
Не должен быть идентифицируем как один Practice A–J по одному поверхностному признаку.

U1 обязан требовать одновременного использования нескольких ER dimensions.

## C1
Не должен быть просто дополнительным подтверждением preferred H.

C1 обязан:

1. менять ключевую premise или evidence reliability;
2. требовать заметной пересборки;
3. позволять отличить адаптивное reasoning от confirmation bias.

---

# 22. D3 boundary

`VERIFIED` или `ROBUST` по этой рубрике означает:

> learner способен проводить bounded causal-diagnostic analysis в пределах D3-контракта.

Это **не означает автоматически**, что learner имеет authority:

- сертифицировать formal root cause;
- выполнять design/proof calculation;
- назначать WLL/SWL или derating;
- рассчитывать remaining life;
- выдавать inspection/discard/acceptance verdict;
- интерпретировать specialist NDT вне компетенции;
- назначать repair/modification;
- разрешать эксплуатацию или return to service.

---

# 23. Handoff в Final Alignment

Final Alignment должен проверить:

- все 13 ER имеют Lesson/Practice/Reasoning origin;
- все rubric dimensions соответствуют Expected Result;
- все 12 material BF имеют prior origin и не появились только на scoring stage;
- S0 согласован с source/safety/authority guards;
- U1/C1 действительно закрывают transfer/update gap;
- нет orphan content;
- нет guard contradictions;
- нет скрытого authority creep;
- frozen D1/D2 и FROZEN_INDEX не затронуты.

Только после этой проверки D3 может идти в Source Freshness.
