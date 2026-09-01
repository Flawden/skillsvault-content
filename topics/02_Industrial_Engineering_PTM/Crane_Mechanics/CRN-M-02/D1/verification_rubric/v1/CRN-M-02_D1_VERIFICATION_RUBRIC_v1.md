# CRN-M-02 — Барабаны, блоки, полиспасты
# D1 Verification Rubric v1
## Проверка базовой инженерной модели, переноса и границ полномочий

---

# Назначение

Эта рубрика отвечает на вопрос:

> **доказал ли обучающийся D1-компетентность наблюдаемым поведением на знакомой и незнакомой схеме канатной системы?**

Она не проверяет, насколько красиво ученик воспроизводит текст Lesson или Practice Reasoning.

Она проверяет, способен ли он самостоятельно пройти цепочку:

```text
MOVING ASSEMBLY
→ ENDPOINT / ATTACHMENT MAP
→ ROPE PATH
→ FORCE-TRANSFER MAP
→ MODEL STATUS
→ IDEAL MECHANICS OR STOP/ESCALATION
→ BOUNDED CONCLUSION / FIELD BOUNDARY
```

D1 Verification **не открывает** численные конструктивные нормы, D/d, радиусы канавок, fleet-angle limits, реальные коэффициенты эффективности, допустимость изменения запасовки или оборудование-специфические разрешения.

---

# Архитектура проверки

Verification состоит из трёх слоёв.

```text
LAYER 1 — KNOWN CASE
↓
LAYER 2 — UNSEEN TRANSFER CASE
↓
LAYER 3 — CHALLENGE / DELTA
```

## Layer 1 — Known Case

Проверяющий выбирает один кейс из Practice A–H.

Цель:
- убедиться, что ученик умеет выполнить D1 workflow без подсказки по форме ответа;
- получить evidence по ER-01…ER-09;
- проверить, что формула не появляется раньше model check.

Known-case performance **не может** самостоятельно подтвердить D1.

## Layer 2 — Unseen Transfer Case

Используется новый кейс, отсутствующий в Practice A–H.

Цель:
- проверить ER-10;
- исключить запоминание готового сюжета;
- увидеть, способен ли ученик сохранить stop/escalation discipline на новой геометрии.

## Layer 3 — Challenge / Delta

После первоначального решения проверяющий изменяет один существенный input.

Ученик должен:
1. явно назвать изменившийся input;
2. обновить force/model status;
3. показать, какие выводы изменились;
4. показать, какие выводы **не** изменились;
5. сохранить field-authority boundary.

---

# Шкала 0–4

Каждая ER-dimension оценивается по шкале:

```text
0 — ABSENT / UNSAFE
1 — GUIDED / FRAGILE
2 — BASIC / KNOWN-CASE
3 — D1 DEMONSTRATED
4 — D1 TRANSFER / ROBUST
```

## Level 0 — ABSENT / UNSAFE

Признаки:
- ключевой шаг пропущен;
- `n` назначено по виду схемы без force-map;
- применена формула до проверки модели;
- придумана закрытая численная норма;
- понимание рисунка превращено в разрешение изменить реальный кран.

## Level 1 — GUIDED / FRAGILE

Ученик знает отдельные термины, но workflow держится только на подсказках.

Типично:
- начинает считать ветви до выбора системы;
- путает rope path и force map;
- stop/escalation появляется только после наводящего вопроса.

## Level 2 — BASIC / KNOWN-CASE

На знакомом кейсе D1-логика в основном верна, но перенос ещё нестабилен.

Допустимы небольшие неточности, если они:
- не создают Blocking Failure;
- исправляются после одного нейтрального challenge;
- не меняют field-authority boundary.

## Level 3 — D1 DEMONSTRATED

Ученик самостоятельно и последовательно:

```text
SYSTEM
→ ENDPOINTS
→ PATH
→ FORCE MAP
→ MODEL CHECK
→ MECHANICS OR STOP
→ BOUNDED CONCLUSION
```

и способен объяснить, **почему** именно такой model status допустим.

## Level 4 — D1 TRANSFER / ROBUST

Level 3 сохраняется:
- на unseen case;
- после изменения ключевого input;
- при необходимости отказаться от первоначального `n`;
- при корректном результате без числа;
- при попытке проверяющего подтолкнуть к authority creep.

---

# ER-01 — Выбор движущейся системы

## 0
Начинает с подсчёта блоков/ветвей или смешивает несколько движущихся тел без границы системы.

## 1
Выбирает систему после подсказки, но граница неполна.

## 2
На знакомой схеме правильно называет moving assembly, однако на новом рисунке может колебаться.

## 3
До любых расчётов явно фиксирует `MOVING ASSEMBLY` и объясняет, какие элементы входят в выбранную систему.

## 4
На unseen/challenge самостоятельно пересматривает границу системы, если новый input меняет кинематику или принадлежность элемента.

---

# ER-02 — Концы каната и статус закреплений

## 0
Теряет один конец или считает dead end автоматически «нулевой силой».

## 1
Находит концы после подсказки, но не фиксирует, движется ли attachment вместе с системой.

## 2
На знакомом кейсе корректно отмечает endpoints и attachment status.

## 3
Самостоятельно выдаёт `ENDPOINT / ATTACHMENT MAP` для обоих концов и относит каждое закрепление к fixed/moving относительно выбранной системы.

## 4
После challenge сразу замечает, что перенос точки закрепления меняет force map и downstream model status.

---

# ER-03 — Rope-path tracing

## 0
Перескакивает от картинки сразу к `n` или формуле.

## 1
Путь частичный, один или несколько переходов через блоки потеряны.

## 2
На знакомой схеме восстанавливает путь каната, но смешивает его с силовыми выводами.

## 3
Чётко трассирует `END A → ... → END B` и сохраняет distinction `ROPE PATH != FORCE MAP`.

## 4
На unseen/challenge уверенно перестраивает path после изменения одного участка без сохранения старых предположений.

---

# ER-04 — Force-transfer map

## 0
Считает видимые линии или блоки вместо реальных мест передачи силы движущейся системе.

## 1
Force map строится после подсказки и может потерять moving dead end.

## 2
Основные силовые связи на знакомой схеме отмечены, но reasoning ещё опирается на визуальный shortcut.

## 3
Отдельно от rope path перечислены все канатные связи, передающие силу выбранной системе, включая terminal attachment при его движении.

## 4
На unseen/challenge force map корректно перестраивается при изменении геометрии, attachment или состава moving assembly.

---

# ER-05 — Model status / stop discipline

## 0
Сложная или недоказанная схема насильно получает скалярное `n`.

## 1
Ученик понимает необходимость проверки только после подсказки.

## 2
На знакомом кейсе обычно выбирает разумный статус, но обоснование краткое или неполное.

## 3
Самостоятельно выдаёт один из:

```text
SIMPLE n-MODEL SUPPORTED
SIMPLE n-MODEL NOT YET DEMONSTRATED
ESCALATE BEYOND D1
```

и связывает решение с force map и геометрией.

## 4
На unseen/challenge без сопротивления меняет model status, если новый input разрушает или, наоборот, подтверждает простую модель.

---

# ER-06 — Идеальная силовая модель

## 0
Использует `nT = W` до model check или на явно неподходящей схеме.

## 1
Формулу применяет только после подсказки, смысл переменных объясняет неуверенно.

## 2
На простом знакомом кейсе корректно использует `nT = W` и понимает idealized character.

## 3
Применяет идеальную силовую модель **только** после `SIMPLE n-MODEL SUPPORTED`, явно задаёт `n`, `T`, `W` и assumptions.

## 4
После challenge корректно добавляет/убирает ideal mechanics из решения при изменении model status.

---

# ER-07 — Путь, скорость и reciprocity

## 0
Выигрыш в силе трактуется как «бесплатная сила» или кинематическая формула применяется без доказанной модели.

## 1
Связь силы и пути воспроизводится как запомненная формула.

## 2
На знакомом простом кейсе корректно связывает `s_rope`, `s_load`, `v_rope`, `v_load`.

## 3
Объясняет reciprocity физически и применяет отношения только после model check.

## 4
На unseen/challenge сам решает, доступна ли простая кинематическая модель; при недоказанности корректно останавливается.

---

# ER-08 — Компоненты и claim limit

## 0
Придумывает конкретный D/d, угол, groove limit, efficiency или иной закрытый D1 numeric threshold.

## 1
Знает названия компонентов, но claim limit вспоминает только после подсказки.

## 2
На знакомом вопросе различает drum/fixed sheave/moving sheave/groove/flange и признаёт отсутствие численного лимита.

## 3
Уверенно объясняет базовую роль компонента и при запросе конкретного предела выдаёт `CLAIM LIMIT` + нужный тип документа/OEM/passport evidence.

## 4
На unseen equipment context сам замечает, что технический вопрос перешёл из D1 learning model в equipment-specific claim.

---

# ER-09 — Field conformance / authority boundary

## 0
`DIAGRAM COMPREHENSION` превращается в разрешение менять запасовку или утверждение соответствия реальной машины.

## 1
После подсказки признаёт необходимость паспорта/OEM.

## 2
На знакомом Case H отделяет понимание схемы от разрешения.

## 3
В каждом реальном/equipment-looking кейсе самостоятельно выдаёт bounded conclusion: что доказано, чего не доказано, какой документ/authority нужен дальше.

## 4
При прямом challenge «ну кратность же та же — значит можно?» сохраняет границу без подсказки и объясняет, почему идеальная эквивалентность не равна field conformance.

---

# ER-10 — Transfer на незнакомую схему

## 0
Без знакомого шаблона workflow разваливается или результат строится по внешнему виду.

## 1
На unseen case нужны пошаговые подсказки.

## 2
Большая часть workflow переносится, но один критический слой теряется или исправляется challenge.

## 3
На unseen case самостоятельно проходит весь D1 evidence package и выдаёт обоснованный mechanics result **или** stop/escalation.

## 4
После adversarial change ключевого input корректно обновляет analysis delta и сохраняет claim/authority guards.

---

# Blocking Failures

Любой Blocking Failure делает итог:

```text
D1 NOT VERIFIED
```

независимо от суммы баллов.

## BF-01 — Block-count shortcut

`n` назначено по числу блоков, шкивов или визуальных линий **до** force-transfer map.

## BF-02 — Dead-end deletion

Закреплённый конец, передающий силу движущейся сборке, исключён из force map как «просто конец каната».

## BF-03 — Formula-first

`nT = W`, `s_rope = n·s_load` или `v_load = v_rope/n` применяется до подтверждения соответствующей простой модели.

## BF-04 — Scalar-model overreach

Multi-body, equalizing, angularly incompatible или иная недоказанная схема насильно сводится к одному скалярному `n` без достаточного обоснования.

## BF-05 — Invented numeric authority

Ученик придумывает или выдаёт как допустимый конкретный:
- D/d;
- groove radius/tolerance;
- fleet-angle limit;
- efficiency;
- equipment-specific acceptance criterion;
- иной закрытый численный предел.

## BF-06 — Comprehension-to-authority leap

Понимание схемы или одинаковое идеальное `n` используется как доказательство, что реальную запасовку можно изменить/признать допустимой без применимого паспорта/OEM/authority basis.

---

# Серьёзные, но компенсируемые ошибки

Не являются автоматическим BF, если ученик сам исправляет их после одного нейтрального challenge:
- пропущенная подпись элемента при сохранённой правильной силовой модели;
- арифметическая ошибка после корректно построенного model status;
- неполный wording bounded conclusion без authority creep;
- неидеальная терминология fixed/moving при однозначно выбранной reference system.

Исправление после challenge может стать evidence robustness, но исходная ошибка всё равно фиксируется в scoring sheet.

---

# Scoring

10 dimensions × 4 = **40 points maximum**.

Сумма рассматривается **только после** Blocking Failure check.

## 0–19

`D1 NOT VERIFIED`

Базовый workflow нестабилен.

## 20–25

`D1 DEVELOPING`

Есть отдельные правильные навыки, но последовательность ещё требует поддержки.

## 26–29

`D1 BORDERLINE`

Known-case competence хорошая, но transfer/stop/authority behaviour недостаточно устойчивы.

## 30–35

`D1 VERIFIED`

Базовая инженерная модель продемонстрирована на known + unseen + challenge при соблюдении обязательных минимумов.

## 36–40

`D1 ROBUST / TRANSFER`

Устойчивый перенос и корректное обновление модели после adversarial change.

Требует ER-10 = 4 и отсутствия BF.

---

# Mandatory minimums

Даже при достаточной сумме для `D1 VERIFIED` обязательны:

```text
ER-01 >= 3
ER-02 >= 3
ER-03 >= 3
ER-04 >= 3
ER-05 >= 3
ER-08 >= 3
ER-09 >= 3
ER-10 >= 3
ER-06 >= 2
ER-07 >= 2
```

Дополнительно:
- ни одного BF;
- completed known case;
- completed unseen transfer case;
- completed challenge/delta;
- полный обязательный evidence package;
- хотя бы один кейс, где ученик демонстрирует correct stop/escalation **или** явно объясняет, почему stop не требуется.

Высокий total score не компенсирует провал force-map, model-status, transfer или authority boundary.

---

# Verification Evidence Package

Для формальной фиксации результата сохраняются:

```text
01_KNOWN_CASE_RESPONSE
02_UNSEEN_CASE_RESPONSE
03_CHALLENGE_DELTA
04_ER_SCORING_SHEET
05_BLOCKING_FAILURE_CHECK
06_EVIDENCE_PACKAGE_CHECK
07_FINAL_VERIFICATION_DECISION
```

Минимальные outputs внутри ответа ученика:

1. `MOVING ASSEMBLY`;
2. `ENDPOINT / ATTACHMENT MAP`;
3. `ROPE PATH`;
4. `FORCE-TRANSFER MAP`;
5. `MODEL STATUS`;
6. `IDEAL MECHANICS CARD` — только если model status позволяет;
7. `BOUNDED CONCLUSION / FIELD BOUNDARY`.

Отсутствие пункта 6 **не является ошибкой**, если ученик доказал `NOT YET DEMONSTRATED / ESCALATE BEYOND D1`.

---

# Unseen Transfer Test U1

## Сценарий

На новом эскизе показана канатная система, которой не было в Practice A–H:

- одна нижняя крюковая блоковая сборка движется как единое тело;
- в ней один подвижный блок;
- сверху два неподвижных направляющих блока;
- один конец каната связан с барабаном;
- второй конец закреплён на верхней неподвижной раме;
- одна из двух канатных связей, передающих силу нижней сборке, на рисунке заметно наклонена;
- точного угла и vector decomposition в условии нет;
- механик спрашивает: «Здесь же один подвижный блок — просто скажем `n = 2` и найдём `T = W/2`?»

## Требуемое поведение

Ученик должен без подсказки:

1. определить moving assembly;
2. отметить оба endpoint и status attachment;
3. восстановить rope path;
4. построить force-transfer map;
5. заметить, что визуальное число канатных связей ещё не доказывает aligned scalar model;
6. выдать bounded model status;
7. **не** применять `nT = W` как доказанную D1-модель при недостаточной directional information;
8. объяснить, какие данные/модель нужны дальше;
9. сохранить field-authority boundary.

Успешный output может быть:

```text
SIMPLE n-MODEL NOT YET DEMONSTRATED
```

с корректным обоснованием.

Число не требуется.

---

# Challenge C1 — геометрия уточнена

После ответа проверяющий сообщает:

> Обновлённый учебный эскиз показывает, что в рассматриваемом положении обе силовые ветви, действующие на нижнюю сборку, вертикальны и согласованы по направлению; других rope attachments к moving assembly нет.

Ученик должен:

1. записать `INPUT DELTA`;
2. обновить force/model status;
3. показать, что теперь simple model может стать supported;
4. только после этого получить для учебной схемы `n = 2` и идеальное `T = W/2`;
5. при необходимости связать путь/скорость через ideal kinematics;
6. сохранить формулировку, что это учебная идеализация, а не equipment approval.

Сильный ответ явно показывает:

```text
BEFORE: SIMPLE n-MODEL NOT YET DEMONSTRATED
AFTER:  SIMPLE n-MODEL SUPPORTED
```

и объясняет, **какой именно новый факт** разрешил смену статуса.

---

# Optional Challenge C2 — authority trap

Проверяющий добавляет:

> «Раз теперь `n = 2` доказано, можно переставить реальный канат на соседний верхний блок — кратность же останется 2?»

Правильный D1-ответ обязан остановить этот переход:

```text
IDEAL MODEL EQUIVALENCE
≠
FIELD CONFORMANCE / PERMISSION
```

и запросить применимую схему/паспорт/OEM/authority basis.

Срабатывание BF-06 на C2 делает D1 NOT VERIFIED.

---

# Scoring Sheet

| ER | Known case | Unseen U1 | Challenge | Final 0–4 | Evidence note |
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

---

# Blocking Failure Sheet

| BF | Triggered? | Evidence |
|---|---|---|
| BF-01 Block-count shortcut | | |
| BF-02 Dead-end deletion | | |
| BF-03 Formula-first | | |
| BF-04 Scalar-model overreach | | |
| BF-05 Invented numeric authority | | |
| BF-06 Comprehension-to-authority leap | | |

---

# Evidence Package Check

| Required output | Present? | Quality / note |
|---|---|---|
| MOVING ASSEMBLY | | |
| ENDPOINT / ATTACHMENT MAP | | |
| ROPE PATH | | |
| FORCE-TRANSFER MAP | | |
| MODEL STATUS | | |
| IDEAL MECHANICS CARD when applicable | | |
| BOUNDED CONCLUSION / FIELD BOUNDARY | | |
| UNSEEN CASE RESPONSE | | |
| CHALLENGE DELTA | | |

---

# Final Verification Decision

Допустимые outputs:

```text
D1 NOT VERIFIED
D1 DEVELOPING
D1 BORDERLINE
D1 VERIFIED
D1 ROBUST / TRANSFER
```

Нельзя выдавать `D1 VERIFIED`, если:
- сработал любой BF;
- ER-10 < 3;
- нарушен любой mandatory minimum;
- unseen case не выполнен;
- challenge/delta не выполнен;
- обязательный evidence package неполон.

`D1 VERIFIED` означает только:

> **в рамках SkillsVault обучающийся доказал базовую способность корректно читать простые канатные схемы, строить force map, дисциплинированно применять или не применять идеальную модель и сохранять границы источников/полномочий.**

Это не означает право изменять, проектировать, принимать или разрешать конкретную запасовку реального грузоподъёмного сооружения.

---

# Следующий этап

`Final Alignment` должен проверить сквозную связь:

```text
Lesson
↕
Practice
↕
Practice Reasoning
↕
Expected Result ER-01…ER-10
↕
Verification Rubric ER-01…ER-10
```

и подтвердить отсутствие orphan content, orphan assessment dimensions и скрытого ослабления source/field guards.
