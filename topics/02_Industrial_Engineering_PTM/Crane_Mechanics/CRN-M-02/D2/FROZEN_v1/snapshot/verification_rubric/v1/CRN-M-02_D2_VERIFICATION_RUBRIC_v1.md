# CRN-M-02 — Барабаны, блоки, полиспасты
# D2 Verification Rubric v1
## Проверка прикладной механики канатной системы, переноса модели и границ полномочий

---

# Назначение

Эта рубрика отвечает на вопрос:

> **доказал ли обучающийся D2-компетентность наблюдаемым поведением на знакомой и незнакомой прикладной схеме канатной системы?**

Она не проверяет способность пересказать Lesson или запомнить решения A–K. Она проверяет, способен ли ученик самостоятельно пройти рабочую цепочку D2:

```text
SYSTEM / MODE
→ ROPE PATH
→ CONTACT NODES
→ LOCAL T1 / T2 / T3 ...
→ CHOOSE FREE BODY
→ FORCE OWNERSHIP / REACTION LOGIC
→ GEOMETRY + SPOOLING STATE
→ r_k OR r_m ONLY IF THE QUESTION SUPPORTS IT
→ MODEL STATUS
→ SOURCE / REFERENCE-GEOMETRY CHECK WHEN REQUIRED
→ BOUNDED CONCLUSION / FIELD AUTHORITY BOUNDARY
```

Если входные данные меняются, ученик обязан перестроить затронутую часть модели, а не защищать старый ответ по инерции.

D2 Verification **не открывает** численные D/d, размеры канавок, fleet/lead/deflection limits, реальные коэффициенты эффективности, допустимые напряжения/контактные давления, критерии браковки/ремонта, конкретные классификационные коэффициенты или право изменять реальный ПС без точного применимого источника, OEM/паспорта, процедуры и полномочий.

---

# Архитектура проверки

Verification состоит из трёх обязательных слоёв:

```text
LAYER 1 — KNOWN CASE
↓
LAYER 2 — UNSEEN APPLIED TRANSFER
↓
LAYER 3 — CHALLENGE / DELTA
```

## Layer 1 — Known Case

Проверяющий выбирает один или несколько кейсов из Practice A–K так, чтобы суммарно получить evidence по ER-D2-01…11.

Цель:
- проверить самостоятельный D2 workflow;
- увидеть local-T bookkeeping и body-first FBD;
- проверить, что `r_k` и `r_m` не используются как взаимозаменяемые радиусы;
- проверить model-status discipline;
- выявить source/OEM/field-authority creep.

Known-case performance **никогда не подтверждает D2 само по себе**.

## Layer 2 — Unseen Applied Transfer

Используется новый кейс U1, отсутствующий в Practice A–K.

Цель:
- закрыть ER-D2-12;
- проверить интеграцию нескольких D2-компетенций одновременно;
- исключить механическое узнавание сюжета;
- проверить способность закончить ответ без числа, если модель или authority не доказаны.

## Layer 3 — Challenge / Delta

После первоначального ответа проверяющий меняет один существенный input.

Ученик обязан показать:

```text
WHAT CHANGED
→ WHAT MUST BE REBUILT
→ WHAT MAY REMAIN
→ NEW MODEL STATUS
→ NEW BOUNDED CONCLUSION
```

Сильный D2-признак — способность **изменить собственный предыдущий вывод**, когда изменились исходные данные.

---

# Шкала 0–4

Каждая ER-D2-dimension оценивается по шкале:

```text
0 — ABSENT / UNSAFE
1 — GUIDED / FRAGILE
2 — BASIC / KNOWN-CASE
3 — D2 DEMONSTRATED
4 — D2 TRANSFER / ROBUST
```

## Level 0 — ABSENT / UNSAFE

Ключевой шаг отсутствует или результат создаёт инженерно опасное overreach-поведение: смешанная FBD, выдуманное равенство `Ti`, универсальная формула без геометрии, нормативный verdict без источника или field action без authority.

## Level 1 — GUIDED / FRAGILE

Ученик узнаёт отдельные понятия, но удерживает workflow только после подсказки. Stop/escalation появляется только после вмешательства проверяющего.

## Level 2 — BASIC / KNOWN-CASE

На знакомом кейсе reasoning в основном корректен, но перенос нестабилен. Допустимы небольшие неточности, если они не являются Blocking Failure и исправляются после нейтрального challenge.

## Level 3 — D2 DEMONSTRATED

Ученик самостоятельно выполняет соответствующую компетенцию, объясняет границы модели и выдаёт доказанный bounded conclusion.

## Level 4 — D2 TRANSFER / ROBUST

Level 3 сохраняется на unseen case и после meaningful delta, включая необходимость отказаться от первоначального вывода или перейти между `SIMPLE`, `QUALITATIVE APPLIED`, `SOURCE / OEM REQUIRED` и `NOT YET DEMONSTRATED`.

---
# ER-D2-01 — Восстанавливает систему, режим, rope path и contact nodes

## 0
Начинает с формулы/одной детали, не восстанавливая систему и путь.

## 1
Систему и путь восстанавливает только после подсказки; контактные узлы неполны.

## 2
На знакомом кейсе строит рабочий path/contact map, но transfer нестабилен.

## 3
До расчётов самостоятельно фиксирует SYSTEM/MODE, полный доступный rope path и все значимые contact nodes.

## 4
На unseen/delta быстро перестраивает system/path/contact map и явно отмечает, что осталось неизменным.

---

# ER-D2-02 — Ведёт local `Ti` bookkeeping без автоматического равенства

## 0
Объявляет `T1=T2=T3...` только потому, что это один физический канат.

## 1
Ставит локальные `Ti` после подсказки, но равенства остаются неявными.

## 2
На знакомом кейсе разделяет `Ti`, однако не всегда называет допущение для equality.

## 3
Самостоятельно строит LOCAL-TENSION MAP и допускает equality только через явно названную модель/assumption.

## 4
На transfer/delta пересматривает локальные состояния и отказывается от прежних equality, если условия изменились.

---

# ER-D2-03 — Выбирает free body до стрелок и сохраняет force ownership

## 0
Смешивает силы разных FBD или action/reaction в одной диаграмме.

## 1
Называет free body только после подсказки; стрелки partially inherited.

## 2
На знакомом кейсе FBD в основном корректна, но смена тела вызывает ошибки.

## 3
До стрелок явно называет free body и строит только силы, действующие на это тело.

## 4
На challenge со сменой free body полностью перестраивает arrows/ownership без переноса старой FBD.

---

# ER-D2-04 — Объясняет реакцию через векторную геометрию

## 0
Считает реакцию неизменной при изменении направлений ветвей или использует случайную angle-formula без определения.

## 1
После подсказки признаёт роль направлений, но reasoning неполон.

## 2
На знакомом кейсе качественно объясняет изменение реакции.

## 3
Самостоятельно связывает реакцию с vector sum конкретных сил на named FBD и сохраняет claim limit.

## 4
На unseen/delta перестраивает reaction logic после изменения геометрии и не импортирует численный limit без source proof.

---

# ER-D2-05 — Использует `r_k` только в доказанной кинематической модели

## 0
Применяет `v_rope=ωr` к произвольной винтовой/пространственной траектории.

## 1
Знает про `r_k`, но условия применимости формулирует только после подсказки.

## 2
На простом known case правильно считает окружную скорость; helical stop ещё нестабилен.

## 3
Самостоятельно проверяет near-circumferential/no-slip/model conditions и использует `r_k` только когда это доказано.

## 4
На transfer/delta корректно переключается между SIMPLE и STOP/QUALITATIVE при изменении траектории.

---

# ER-D2-06 — Отличает `r_m` от `r_k` и строит момент через line of action

## 0
Подставляет видимый радиус слоя как универсальное плечо момента.

## 1
Различает `r_k/r_m` после подсказки, но line of action reasoning слабый.

## 2
На знакомом tangential case получает корректный момент, но transfer нестабилен.

## 3
Для момента сначала фиксирует force + line of action, затем `r_m` или vector moment basis.

## 4
На unseen/delta отказывается от старого плеча при изменении line of action и сохраняет distinction `r_k != r_m unless proven`.

---

# ER-D2-07 — Распознаёт spooling state до механизма и verdict

## 0
По crossover/side contact сразу выдаёт ACCEPT/DISCARD/REPAIR или численный verdict.

## 1
Наблюдение описывает, но механизм и verdict всё ещё смешиваются.

## 2
На known case различает state и qualitative significance.

## 3
Самостоятельно выдаёт OBSERVED STATE → possible mechanical significance → what is not proved → next evidence.

## 4
На unseen/delta меняет state/mechanism conclusion при изменении winding condition, сохраняя source boundary.

---

# ER-D2-08 — Перестраивает load-path модель после route/geometry delta

## 0
Переносит старые реакции/`Ti`/model status после существенного изменения пути.

## 1
Перестраивает только после прямой подсказки.

## 2
На знакомом delta замечает часть stale assumptions.

## 3
Самостоятельно определяет MUST REBUILD / MAY REMAIN для path, nodes, `Ti`, FBD, directions, reactions и status.

## 4
На незнакомом challenge быстро перестраивает только затронутую часть и объясняет downstream consequences.

---

# ER-D2-09 — Отделяет quasi-static модель от dynamic load question

## 0
Выдаёт `ΣF=0` за фактическую dynamic load при значимом acceleration/transient.

## 1
Распознаёт динамику только после подсказки.

## 2
На known case умеет остановиться, но не всегда называет missing model/evidence.

## 3
Самостоятельно фиксирует quasi-static assumption, наличие/неизвестность acceleration и корректный next step.

## 4
На transfer/delta корректно меняет status при появлении/исчезновении transient input.

---

# ER-D2-10 — Проверяет term + definition + reference geometry до numeric limit

## 0
Переносит limit только по похожему названию fleet/lead/deflection angle.

## 1
Просит источник после подсказки, но reference geometry проверяет неполно.

## 2
На знакомом source trap обычно замечает проблему.

## 3
Самостоятельно требует точное определение, линии/плоскости отсчёта, applicability и source status до numeric authority.

## 4
На unseen/challenge способен изменить SUPPORTED/NOT SUPPORTED после появления точного определения/reference geometry.

---

# ER-D2-11 — Использует duty/classification как context, а не выдуманный коэффициент/authority

## 0
Из слов “тяжёлый режим” придумывает коэффициент, selection result или equipment verdict.

## 1
Понимает необходимость source только после подсказки.

## 2
На known case разделяет context и конкретное правило, но формулировка границы неполна.

## 3
Самостоятельно пишет WHAT IT MAY AFFECT / WHAT IS NOT DERIVED / SOURCE-OEM needed for.

## 4
На transfer выдерживает pressure-trap и не превращает classification context в permission или численный коэффициент.

---

# ER-D2-12 — Выбирает честный model status, bounded conclusion и переносит D2 на unseen case

## 0
Стремится обязательно получить число или field verdict независимо от данных.

## 1
Выбирает status только после подсказки.

## 2
На известных A–K status обычно корректен, но unseen chain неполна.

## 3
На unseen case самостоятельно проходит полный D2 workflow и выдаёт доказанный bounded conclusion/next evidence.

## 4
После challenge меняет собственный прошлый вывод, когда delta действительно меняет модель, сохраняя source/authority boundary.

---

# Blocking Failures — non-compensable

Любой BF ниже немедленно означает `D2 NOT VERIFIED` независимо от total score.

## BF-D2-01 — One-rope-equal-T shortcut

Все локальные `Ti` объявлены равными только потому, что это один физический канат, без явно доказанной модели.

## BF-D2-02 — FBD ownership collapse

В одной силовой сумме смешаны действие/противодействие или силы, принадлежащие разным free-body diagrams.

## BF-D2-03 — Universal `ωr`

`v_rope = ωr` применено к произвольной винтовой/пространственной траектории без доказанной near-circumferential geometry/model.

## BF-D2-04 — Layer-radius-as-moment-arm

Видимый радиус слоя подставлен как `r_m` без line-of-action proof или equivalent vector-moment reasoning.

## BF-D2-05 — Observation-to-verdict leap

Crossover, side contact или другое наблюдение автоматически превращено в ACCEPT/DISCARD/REPAIR/“неправильно” без применимого критерия.

## BF-D2-06 — Terminology-only numeric authority

Численный limit импортирован только по совпадению/сходству термина без определения, reference geometry и applicability.

## BF-D2-07 — Quasi-static-as-dynamic authority

Квазистатическая модель выдана за фактическую динамическую нагрузку при наличии существенного acceleration/transient input.

## BF-D2-08 — Classification-factor invention

Из duty/classification context придуман конкретный коэффициент, selection result или equipment verdict без source-backed rule.

## BF-D2-09 — Comprehension-to-field-authority leap

Понимание механики схемы превращено в разрешение менять реальную запасовку, блок, барабан, режим или принимать оборудование без требуемого OEM/паспорта/процедуры/полномочий.

---

# Обязательный unseen transfer — U1

## Исходные данные

Дана новая схематическая канатная система, которой не было в Practice A–K:

- барабан работает при установившейся низкой скорости;
- канат с барабана идёт к неподвижному направляющему блоку `P`, затем к подвижному блоку `Q`, после чего закрепляется на раме;
- на представленном фрагменте навивки видно, что канат имеет осевую составляющую движения относительно барабана;
- точные friction/loss parameters отсутствуют;
- точное определение и допустимый limit для показанного на рисунке “угла набегания” не предоставлены;
- OEM/паспортная схема реальной машины не предоставлена;
- ускорение на первичном U1 считается несущественным только как явно заявленное учебное допущение.

Ученик должен без готовой формы ответа:

1. восстановить SYSTEM/MODE, rope path и contact nodes;
2. построить local-Tension map без автоматического equality;
3. выбрать один named free body и построить force ownership/reaction logic;
4. классифицировать geometry/spooling state по доступным данным;
5. решить, допустима ли простая `r_k` kinematic relation для requested rope-speed conclusion;
6. если ставится вопрос о моменте, отдельно доказать или остановить `r_m`;
7. выбрать MODEL STATUS;
8. выполнить source/reference-geometry check для любого numeric-angle claim;
9. выдать bounded conclusion и field-authority boundary.

## Ожидаемый discriminating pattern

U1 специально содержит осевую составляющую траектории и неполный source context. Поэтому хороший ответ **не обязан** давать численное rope-speed/angle verdict.

Корректные outcomes могут включать:

```text
QUALITATIVE APPLIED
SOURCE / OEM REQUIRED
NOT YET DEMONSTRATED
```

если ученик точно объясняет, что именно не доказано.

---

# Required Challenge C1 — смена free body

После первичного U1 проверяющий говорит:

> «Теперь не анализируй блок `P`. Изолируй участок каната, взаимодействующий с `P`, и перестрой FBD».

Ученик должен:

- назвать новый FREE BODY;
- перестроить direction/ownership сил;
- не переносить старые arrows как есть;
- объяснить, какие части rope path/local-T map остаются валидными;
- показать, меняется ли bounded conclusion.

Неизменность физической системы **не означает** неизменность FBD-arrow ownership.

---

# Optional Challenge C2 — появление transient

Для дополнительного robustness-check проверяющий добавляет:

> «Теперь система находится в фазе существенного разгона; численное ускорение и dynamic model не даны».

Ожидается переход от прежней quasi-static applicability к честному stop/escalation для actual dynamic load claim.

---

# Mandatory evidence package

Для `D2 VERIFIED` должны быть представлены и оценены минимум:

1. `SYSTEM / MODE`;
2. `ROPE PATH`;
3. `CONTACT-NODE MAP`;
4. `LOCAL-TENSION MAP`;
5. `FREE BODY + FORCE OWNERSHIP`;
6. `REACTION LOGIC` когда применимо;
7. `GEOMETRY / SPOOLING STATE`;
8. `KINEMATIC CARD` или `MOMENT CARD`, когда вопрос этого требует;
9. `MODEL STATUS`;
10. `SOURCE / REFERENCE-GEOMETRY CHECK` при нормативном/equipment claim;
11. `BOUNDED CONCLUSION / FIELD AUTHORITY BOUNDARY`;
12. `UNSEEN U1 RESPONSE`;
13. `CHALLENGE / DELTA CARD`;
14. `SCORING SHEET + BF CHECK`.

Отсутствие числа не является дефектом, если модель честно остановлена и missing evidence указано корректно.

---

# Scoring sheet

| Dimension | Score 0–4 | Evidence pointer | Notes |
|---|---:|---|---|
| ER-D2-01 |  |  |  |
| ER-D2-02 |  |  |  |
| ER-D2-03 |  |  |  |
| ER-D2-04 |  |  |  |
| ER-D2-05 |  |  |  |
| ER-D2-06 |  |  |  |
| ER-D2-07 |  |  |  |
| ER-D2-08 |  |  |  |
| ER-D2-09 |  |  |  |
| ER-D2-10 |  |  |  |
| ER-D2-11 |  |  |  |
| ER-D2-12 |  |  |  |
| **TOTAL** | **/48** |  |  |

---

# Blocking-failure sheet

| BF | Triggered? | Evidence |
|---|---|---|
| BF-D2-01 One-rope-equal-T |  |  |
| BF-D2-02 FBD ownership collapse |  |  |
| BF-D2-03 Universal ωr |  |  |
| BF-D2-04 Layer radius as moment arm |  |  |
| BF-D2-05 Observation→verdict |  |  |
| BF-D2-06 Terminology-only numeric authority |  |  |
| BF-D2-07 Quasi-static→dynamic authority |  |  |
| BF-D2-08 Classification-factor invention |  |  |
| BF-D2-09 Comprehension→field authority |  |  |

---

# Решение Verification

## D2 NOT VERIFIED

Любое из условий:
- сработал хотя бы один BF;
- любой ER-D2-01…12 < 3;
- unseen U1 не выполнен;
- required C1 не выполнен;
- mandatory evidence package неполон.

## D2 VERIFIED

Все условия одновременно:
- BF count = 0;
- ER-D2-01…12 >= 3;
- total score 36–41;
- U1 выполнен;
- C1 выполнен;
- evidence package complete;
- source/OEM/field-authority boundary сохранена.

## D2 ROBUST / TRANSFER

Все условия `D2 VERIFIED` плюс:
- total score 42–48;
- ER-D2-08 = 4;
- ER-D2-12 = 4;
- хотя бы одна из ER-D2-02/03/05/06/09/10 = 4 на transfer/challenge evidence;
- нет BF.

Педагогические значения `36–41`, `42–48` и шкала `0–4` являются **assessment-policy values**, а не инженерными нормативами оборудования.

---

# Что означает D2 VERIFIED

`D2 VERIFIED` означает только:

> **в рамках SkillsVault обучающийся доказал способность строить и перестраивать прикладную модель канатной системы, дисциплинированно обращаться с локальными натяжениями/FBD/геометрией/нави́вкой, корректно выбирать model status и останавливаться у границы источника и полномочий.**

Это не означает право проектировать, изменять, принимать или разрешать конкретную систему реального грузоподъёмного сооружения.

---

# Следующий этап

`Final Alignment` должен проверить сквозную трассировку:

```text
Lesson
↕
Practice A–K
↕
Practice Reasoning A–K
↕
Expected Result ER-D2-01…12
↕
Verification Rubric ER-D2-01…12 + BF-D2-01…09
```

и подтвердить отсутствие orphan content, orphan assessment dimensions, surprise blocking failures и ослабления source/OEM/field-authority guards.
