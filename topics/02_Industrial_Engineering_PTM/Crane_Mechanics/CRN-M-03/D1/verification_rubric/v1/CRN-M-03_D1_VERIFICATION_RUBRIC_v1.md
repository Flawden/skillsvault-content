# CRN-M-03 — Крюковые подвески и захваты
# D1 Verification Rubric v1
## Проверка beginner-компетентности, переноса и границ доказанного

---

# Назначение

Эта рубрика отвечает на вопрос:

> **может ли обучающийся самостоятельно разобрать незнакомую крюковую подвеску / грузозахватное устройство на D1-уровне, не повышая наблюдение до acceptance, source-category до exact applicability и учебный STOP до полномочия по эксплуатации?**

Проверяется не знание формулировок наизусть, а наблюдаемое действие:

```text
ОБЪЕКТЫ / ИНТЕРФЕЙСЫ
→ ПУТЬ СИЛЫ
→ ПРИНЦИП УДЕРЖАНИЯ
→ НАБЛЮДЕНИЕ / НЕИЗВЕСТНОЕ
→ ИДЕНТИЧНОСТЬ / КОНФИГУРАЦИЯ
→ РОЛЬ ИСТОЧНИКА / ТОЧНАЯ ПРИМЕНИМОСТЬ
→ ВЫВОД В ПРЕДЕЛАХ ДОКАЗАННОГО
→ ЗАПРОС РЕШАЮЩИХ ДАННЫХ / STOP
→ ПЕРЕДАЧА В НУЖНЫЙ OEM / КОМПЕТЕНТНЫЙ ПРОЦЕСС
```

D1 Verification не открывает численные расчёты крюка, критерии браковки, holding-force расчёты, load-test acceptance, ремонт/NDT, equipment-specific capacity или разрешение эксплуатации.

---

# Языковое правило

Часть проверки, которую видит обучающийся, ведётся **по-русски**.

Английские термины допускаются только там, где они являются устойчивыми отраслевыми/стандартными обозначениями или именами внутренних артефактов. При первом появлении они расшифровываются:

- `evidence` — доказательная информация / данные, на которых держится вывод;
- `source scope` — границы применимости источника;
- `exact applicability` — доказанная применимость именно к этому объекту, конфигурации и вопросу;
- `bounded conclusion` — вывод только в пределах доказанного;
- `STOP / REQUEST EVIDENCE` — остановить неподтверждённый вывод и запросить данные, которые реально могут изменить его статус;
- `equipment authority` — полномочие принимать эксплуатационное решение по реальному оборудованию.
- `latch / keeper` — защёлка / удерживающий элемент; конкретная функция зависит от устройства и источника;
- `holding principle` — принцип, за счёт которого устройство удерживает груз;
- `branch / merge` — разветвление / последующее схождение силового пути;
- `acceptance` — приёмка / подтверждение допустимости в применимом процессе;
- `validation` — подтверждение состоятельности или применимости для конкретного вопроса;
- `nominal marking` — номинальная маркировка на устройстве;
- `interchangeability` — взаимозаменяемость.

**Ученик не обязан использовать английские слова**, если русская формулировка однозначно передаёт тот же смысл. Балл ставится за инженерное действие, а не за англоязычный словарь.

---

# Архитектура проверки

Verification состоит из трёх обязательных слоёв:

```text
LAYER 1 — ЗНАКОМЫЙ КЕЙС A–J
↓
LAYER 2 — U1: НЕЗНАКОМЫЙ КЕЙС
↓
LAYER 3 — C1: ИЗМЕНЕНИЕ ДОКАЗАТЕЛЬНОГО СТАТУСА
```

## Layer 1 — знакомый кейс

Проверяющий выбирает один Practice case A–J без выдачи готового шаблона ответа.

Цель:
- проверить, что обучающийся способен воспроизвести D1 рабочий алгоритм самостоятельно;
- получить базовое evidence по ER-D1-01…09;
- убедиться, что знакомый сюжет не превращается в memorized answer key.

Известный кейс **не может сам по себе подтвердить ER-D1-10**.

## Layer 2 — U1: unseen transfer

Используется новый кейс, которого нет в Practice A–J.

Цель:
- проверить перенос ER-D1-01…10;
- проверить, что обучающийся сохраняет source/evidence/authority discipline на незнакомой конфигурации;
- разрешить корректный `STOP / REQUEST EVIDENCE` как сильный результат, если цепочка доказательств не замкнута.

## Layer 3 — C1: evidence-status challenge

После первого ответа по U1 проверяющий добавляет существенное новое evidence.

Обучающийся обязан:
1. назвать, **что именно изменилось**;
2. обновить только затронутые статусы;
3. не сохранять старый вывод по инерции;
4. не повышать новое evidence выше его реальной роли;
5. сформулировать новый bounded conclusion / STOP-handoff.

---

# Шкала 0–4

Каждая ER-dimension оценивается по шкале:

```text
0 — ОТСУТСТВУЕТ / ОПАСНЫЙ ВЫВОД
1 — ТОЛЬКО С ПОДСКАЗКОЙ
2 — БАЗОВО НА ЗНАКОМОМ КЕЙСЕ
3 — D1 ПРОДЕМОНСТРИРОВАН
4 — УСТОЙЧИВЫЙ ПЕРЕНОС / ОБНОВЛЕНИЕ ПО НОВЫМ ДАННЫМ
```

## Level 0 — отсутствует / опасный вывод

Ключевой шаг пропущен или обучающийся делает запрещённое повышение статуса, например:
- визуальная симметрия → численное распределение нагрузки;
- закрытый latch → acceptance;
- похожий вид → взаимозаменяемость;
- найденный по названию стандарт → exact applicability;
- прошлый успешный подъём → current validation;
- SkillsVault STOP → эксплуатационное решение.

## Level 1 — только с подсказкой

Отдельные понятия знакомы, но цепочка держится на наводящих вопросах. Обучающийся не выбирает самостоятельно, какое evidence нужно дальше.

## Level 2 — базово на знакомом кейсе

На Practice case логика в основном верна, но на новом объекте обучающийся теряет один существенный слой либо исправляет его только после нейтрального challenge.

## Level 3 — D1 продемонстрирован

Обучающийся самостоятельно:

```text
разделяет объекты
→ строит qualitative load path
→ классифицирует holding principle только на доказанном уровне
→ отделяет observed / unknown / source-dependent
→ проверяет source role + exact applicability
→ выдаёт bounded conclusion или обоснованный STOP
```

## Level 4 — устойчивый перенос

Level 3 сохраняется:
- на U1;
- после C1;
- при изменении identity/source status;
- при попытке подтолкнуть к acceptance/authority creep;
- при корректном результате без технического «вердикта пригодности».

---

# ER-D1-01 — Object / interface boundary
## Граница объектов и интерфейсов

### 0
Hook suspension, detachable attachment, load interface и load слиты в один «захват», после чего source/compatibility claim переносится между объектами.

### 1
Разделение появляется после подсказки.

### 2
На знакомом кейсе основные объекты названы, но один важный interface теряется.

### 3
До технического вывода обучающийся выдаёт понятный `OBJECT / INTERFACE MAP` и объясняет, почему соседние элементы могут иметь разные source/compatibility requirements.

### 4
На U1/C1 самостоятельно меняет object/configuration status при появлении exact identification и не переносит выводы автоматически между соседними объектами.

---

# ER-D1-02 — Load-path topology
## Качественная топология пути силы

### 0
Любая система рисуется как одна serial chain либо визуальная симметрия превращается в количественное распределение нагрузки.

### 1
Branch/merge появляется только после подсказки.

### 2
На знакомом кейсе topology в целом верна, но визуальные shortcut ещё влияют на объяснение.

### 3
Обучающийся строит qualitative `LOAD-PATH MAP`, явно показывает branch/merge, если они есть, и сохраняет guard:

```text
ВИЗУАЛЬНАЯ СИММЕТРИЯ ≠ ДОКАЗАННО РАВНАЯ ДОЛЯ НАГРУЗКИ
```

### 4
На U1/C1 корректно перестраивает карту после уточнения конфигурации, не придумывая branch forces.

---

# ER-D1-03 — Latch / seating evidence discipline
## Защёлка, посадка и контакт без скрытой приёмки

### 0
Закрытый latch, «глубокая» посадка, малый груз или привычный контакт объявлены compatibility/acceptance verdict.

### 1
После подсказки обучающийся признаёт, что этого недостаточно.

### 2
На знакомом кейсе отделяет observation от acceptance, но формулировка остаётся неустойчивой.

### 3
Отдельно фиксирует наблюдаемое состояние latch/contact, неизвестную device-specific функцию и отсутствие права сделать acceptance claim без exact applicable basis.

### 4
На U1/C1 сохраняет границу даже при внешне «успокаивающих» новых признаках и не превращает их в разрешение.

---

# ER-D1-04 — Holding principle
## Принцип удержания без угадывания

### 0
Неверный holding principle уверенно используется как основание для source, compatibility или acceptance claim.

### 1
Семья механизма определяется только после подсказки.

### 2
На знакомом кейсе обучающийся различает основные families, но пытается угадать exact mechanism по внешнему виду.

### 3
Классифицирует только до доказанного уровня: positive engagement / friction-clamp dependent / magnetic / vacuum / device-specific / `UNKNOWN — NOT YET CONFIRMED`.

### 4
На U1/C1 без потери качества меняет classification после появления exact OEM identity; честное `UNKNOWN` до этого считается сильным, а не слабым ответом.

---

# ER-D1-05 — Observation / unknown register
## Что наблюдалось, а что ещё не доказано

### 0
Часть видимых «нормальных» признаков объявлена полной verification или доказательством исправности/пригодности.

### 1
Unknowns появляются только после вопроса проверяющего.

### 2
На знакомом кейсе register есть, но observed и source-dependent иногда смешиваются.

### 3
Обучающийся разделяет минимум:

```text
НАБЛЮДАЕТСЯ / СООБЩЕНО
НЕИЗВЕСТНО / НЕ ДОКАЗАНО
ЗАВИСИТ ОТ EXACT SOURCE / OEM / КОМПЕТЕНТНОГО ПРОЦЕССА
```

### 4
После C1 обновляет конкретные статусы, не объявляя все остальные unknowns автоматически закрытыми.

---

# ER-D1-06 — Identity / interchangeability / whole-system boundary
## Идентичность устройства и граница всей системы

### 0
Похожая форма, цвет, одна совпавшая цифра или широкая категория используются как доказательство взаимозаменяемости / совместимости.

### 1
Exact identity запрашивается после подсказки.

### 2
На знакомом кейсе обучающийся знает про model/serial/configuration, но whole-system boundary описывает неполно.

### 3
Явно выдаёт `IDENTITY / CONFIGURATION STATUS`, не переносит nominal marking на assembled-system acceptance и не создаёт универсальную arithmetic из attachment self-weight и crane capacity.

### 4
На U1/C1 корректно повышает identity status только после exact OEM evidence, сохраняя остальные compatibility locks.

---

# ER-D1-07 — Source role / exact applicability
## Роль источника и точная применимость

### 0
Знакомый стандарт или совпадение названия категории объявлены применимыми без проверки object/configuration/question scope.

### 1
Source role выбирается после подсказки.

### 2
На знакомом кейсе обучающийся различает vocabulary / design-proof / attachment / OEM / field process, но exact applicability проверяет нестабильно.

### 3
Использует цепочку:

```text
КАКОЙ ВЫВОД НУЖНО ПОДДЕРЖАТЬ?
→ КАКАЯ РОЛЬ ИСТОЧНИКА НУЖНА?
→ ПРИМЕНИМ ЛИ ИМЕННО ЭТОТ ИСТОЧНИК К ЭТОМУ ОБЪЕКТУ / КОНФИГУРАЦИИ / ВОПРОСУ?
```

и умеет выдать `APPLIES / NOT SHOWN APPLICABLE / EXCLUDED / NEED EXACT SOURCE`.

### 4
На C1 корректно меняет source map при появлении exact device classification, включая признание explicit exclusion вместо попытки «всё равно применить по аналогии».

---

# ER-D1-08 — History / nominal marking evidence status
## Прошлый успех и маркировка без ложной current validation

### 0
Прошлый успешный подъём, отсутствие известного отказа или видимая nominal marking превращаются в current compatibility/validation/acceptance.

### 1
После подсказки обучающийся признаёт ограниченность history evidence.

### 2
На знакомом кейсе статус history сформулирован верно, но missing current-case evidence названо общо.

### 3
Пишет, что prior success = history evidence, nominal marking = claim, а current applicability/whole-system status требуют отдельного evidence.

### 4
На U1/C1 сохраняет эту границу даже после подтверждения exact model/marking.

---

# ER-D1-09 — Evidence request / bounded STOP / authority handoff
## Решающий запрос данных и остановка неподтверждённого вывода

### 0
Обучающийся либо выдаёт equipment verdict без authority basis, либо говорит «STOP» без указания, какой claim заблокирован и что нужно получить дальше.

### 1
После подсказки просит «документы вообще».

### 2
На знакомом кейсе bounded conclusion в основном корректен, но запрос evidence слишком широкий.

### 3
Называет конкретный blocked claim, конкретное discriminating evidence и выдаёт вывод только в пределах доказанного. При необходимости корректно использует:

```text
D1 STOP — НУЖНЫ ТОЧНЫЕ ДАННЫЕ ОБ УСТРОЙСТВЕ / ИСТОЧНИКЕ / OEM
```

при сохранении:

```text
SKILLSVAULT STOP ≠ РЕШЕНИЕ О РЕЖИМЕ ЭКСПЛУАТАЦИИ
```

### 4
На U1/C1 умеет как сохранить STOP, так и снять только ту его часть, которую действительно закрыло новое evidence, не присваивая себе equipment authority.

---

# ER-D1-10 — Unseen transfer
## Перенос всей цепочки на незнакомый кейс

### 0
Без знакомого сюжета рабочий алгоритм разваливается или обучающийся выбирает verdict по внешнему виду.

### 1
U1 выполняется только пошагово с подсказками.

### 2
Большая часть D1 рабочий алгоритм переносится, но один критический слой теряется и восстанавливается только после challenge.

### 3
На U1 обучающийся самостоятельно формирует полный D1 evidence package и приходит к обоснованному bounded conclusion или STOP/evidence handoff.

### 4
После C1 корректно обновляет затронутые layers, показывает `до / после`, сохраняет source/authority guards и не цепляется за первый ответ.

---

# Политика Blocking Failures

Любой Blocking Failure делает итог:

```text
D1 NOT VERIFIED
```

независимо от суммы баллов.

## BF-D1-01 — OBJECT / AUTHORITY COLLAPSE

Разные объекты/interfaces слиты так, что source, compatibility или authority claim переносится между ними без доказательства.

## BF-D1-02 — VISUAL SYMMETRY → LOAD CLAIM

Визуальная симметрия используется для численного/equal load-share claim без модели/evidence.

## BF-D1-03 — LATCH / SEATING → ACCEPTANCE

Закрытый latch, визуально «хорошая» посадка, малый груз или привычный контакт объявлены достаточными для acceptance/compatibility.

## BF-D1-04 — VISIBLE STATE → COMPLETE VERIFICATION

Неполный набор видимых признаков объявлен доказательством полной пригодности, исправности или всех условий удержания.

## BF-D1-05 — INTERCHANGEABILITY BY APPEARANCE

Похожий вид / одна маркировочная цифра / общая категория используются как достаточное доказательство взаимозаменяемости или current compatibility.

## BF-D1-06 — SOURCE-SCOPE LEAP

Source/category title используется как exact applicability без проверки объекта, конфигурации и вопроса; explicit exclusion игнорируется или обходится «по аналогии».

## BF-D1-07 — HISTORY → CURRENT VALIDATION

Прошлый успешный подъём, отсутствие известного отказа или historical use повышаются до current validation / compatibility / acceptance.

## BF-D1-08 — EQUIPMENT-AUTHORITY LEAK

Учебный D1 analysis / STOP превращён в разрешение, запрет, return-to-service, continued-operation, repair/acceptance verdict по реальному оборудованию без применимого authority process.

---

# Два severity-review failure family

Они **не являются автоматическим BF сами по себе**.

## SR-D1-01 — SERIAL-PATH ASSUMPTION

Если обучающийся сначала нарисовал branch/merge систему как serial path, но сам исправил topology без опасного downstream claim, это scoring error по ER-D1-02, а не автоматический BF.

Если из этой ошибки появился явный BF-D1-01 или BF-D1-02, срабатывает соответствующий BF.

## SR-D1-02 — HOLDING-PRINCIPLE COLLAPSE

Если exact mechanism неизвестен и обучающийся честно пишет `UNKNOWN / NOT YET CONFIRMED`, ошибки нет.

Если он не может классифицировать family на знакомом кейсе — снижается ER-D1-04.

Если неверная уверенная classification затем используется для source/acceptance claim, срабатывает BF-D1-06 и/или BF-D1-03.

Таким образом Rubric не наказывает beginner за честное незнание, но не позволяет компенсировать опасную уверенную выдумку.

---

# Scoring

10 dimensions × 4 = **40 points maximum**.

Сумма рассматривается только после BF-check.

## 0–19

`D1 NOT VERIFIED`

Базовый evidence рабочий алгоритм нестабилен.

## 20–24

`D1 DEVELOPING`

Есть отдельные правильные навыки, но обучающийся ещё зависит от подсказок.

## 25–29

`D1 BORDERLINE`

Known-case competence заметна, но перенос / source discipline / bounded handoff недостаточно устойчивы.

## 30–35

`D1 VERIFIED` **только при выполнении всех mandatory gates ниже**.

## 36–40

`D1 ROBUST / TRANSFER` **только при выполнении robust gates ниже**.

---

# Mandatory gates для D1 VERIFIED

Обязательны одновременно:

```text
ER-D1-01 >= 3
ER-D1-02 >= 3
ER-D1-03 >= 3
ER-D1-04 >= 3
ER-D1-05 >= 3
ER-D1-06 >= 3
ER-D1-07 >= 3
ER-D1-08 >= 3
ER-D1-09 >= 3
ER-D1-10 >= 3
```

Дополнительно:
- total >= 30;
- **0 из 8 BF**;
- completed known case;
- completed U1;
- completed C1;
- полный обязательный evidence package;
- хотя бы один корректно обоснованный `STOP / REQUEST EVIDENCE` **или** явное объяснение, почему evidence chain в данном кейсе уже достаточно замкнута для bounded D1 conclusion.

Высокий total score не компенсирует ни один ER < 3 и ни один BF.

---

# Robust gates для D1 ROBUST / TRANSFER

Требуются:
- total >= 36;
- все условия `D1 VERIFIED`;
- `ER-D1-07 = 4` — source applicability устойчиво обновляется;
- `ER-D1-09 = 4` — STOP/handoff корректно пересматривается по новым данным;
- `ER-D1-10 = 4` — unseen transfer + C1 выполнены без подсказок;
- 0 BF.

---

# Обязательный evidence package

Для формальной фиксации результата сохраняются:

```text
01_KNOWN_CASE_RESPONSE
02_UNSEEN_U1_RESPONSE
03_CHALLENGE_C1_DELTA
04_ER_SCORING_SHEET
05_BLOCKING_FAILURE_CHECK
06_EVIDENCE_PACKAGE_CHECK
07_FINAL_VERIFICATION_DECISION
```

В обучающийся response должны быть видимы минимум восемь outputs:

1. `OBJECT / INTERFACE MAP`;
2. `LOAD-PATH MAP`;
3. `HOLDING PRINCIPLE`;
4. `OBSERVATION / UNKNOWN REGISTER`;
5. `IDENTITY / CONFIGURATION STATUS`;
6. `SOURCE-ROLE / EXACT-APPLICABILITY MAP`;
7. `DISCRIMINATING EVIDENCE REQUEST`;
8. `BOUNDED CONCLUSION / STOP-HANDOFF`.

Русские эквиваленты этих названий полностью допустимы.

---

# U1 — незнакомый кейс

## Сценарий

На крюке крана висит съёмное механическое грузозахватное устройство с двумя боковыми тягами, которые на фотографии выглядят симметрично и сходятся к корпусу захвата.

Дано:
- защёлка крюка закрыта;
- контакт на крюке визуально выглядит глубоким и устойчивым;
- на корпусе устройства читается `2,0 t`, но exact model/serial с фотографии определить нельзя;
- оператор говорит, что «вчера почти таким же захватом этот груз уже поднимали»;
- челюсти сейчас закрыты вокруг груза;
- внутренний holding mechanism и его device-specific условия из фотографии не видны;
- коллега нашёл `ISO 17096` по названию load-lifting attachments и предлагает считать, что «стандарт подходит»;
- текущий вопрос: **можно ли по этим данным заключить, что собранная система подходит для данного подъёма?**

Численные load-share, hook proof, holding-force, discard или acceptance limits в условии отсутствуют и на D1 не требуются.

## Требуемое поведение

Обучающийся должен самостоятельно:
1. разделить hook suspension, detachable attachment, load interface и load;
2. построить qualitative branch/merge load path без `50/50` claim;
3. отдельно статусировать latch/seating observations;
4. классифицировать holding principle не выше доказанного family level либо написать `UNKNOWN`;
5. выписать observed / unknown / source-dependent states;
6. отметить, что `2,0 t` без exact identity/configuration не является whole-system acceptance;
7. не превращать вчерашний подъём в current validation;
8. выбрать source role и проверить, что exact applicability `ISO 17096` пока **не доказана**;
9. выдать bounded conclusion;
10. запросить конкретное evidence, способное изменить статус вывода.

Сильный ответ может закончиться:

```text
D1 STOP — ТОЧНАЯ ИДЕНТИФИКАЦИЯ УСТРОЙСТВА / OEM / ПРИМЕНИМОСТЬ ИСТОЧНИКА НЕ ПОДТВЕРЖДЕНЫ
```

Это успешный outcome, если обучающийся объяснил, что именно заблокировано.

---

# C1 — точная идентификация получена

После ответа проверяющий сообщает:

> Получена читаемая nameplate и страница OEM manual. Exact model/serial текущего устройства подтверждены. Производитель классифицирует его именно как `grab`. Публичный scope ISO 17096 прямо исключает grabs / grab buckets. OEM manual для exact model найден, но из текущего кейса всё ещё не видно, что выполнены все device-specific условия применения и применимый field acceptance / operation process.

Обучающийся должен:
1. записать `INPUT / EVIDENCE DELTA`;
2. повысить identity status до confirmed;
3. обновить holding/source map только в пределах новых данных;
4. явно изменить статус `ISO 17096` с `NOT SHOWN APPLICABLE` на `EXCLUDED FOR THIS DEVICE CATEGORY`;
5. перенести next-source role к exact OEM / применимому device-specific / competent process;
6. **не** превращать exact nameplate `2,0 t`, прошлый успешный подъём, закрытый latch или найденный OEM manual в автоматический current acceptance;
7. обновить bounded conclusion / evidence request;
8. сохранить `SkillsVault STOP ≠ equipment-operation authority`.

Сильный ответ показывает `до / после` и объясняет, **какой именно новый факт** изменил source map, а какие claims всё ещё остаются недоказанными.

---

# Scoring Sheet

| ER | Known case | U1 | C1 | Final 0–4 | Evidence note |
|---|---:|---:|---:|---:|---|
| ER-D1-01 | | | | | |
| ER-D1-02 | | | | | |
| ER-D1-03 | | | | | |
| ER-D1-04 | | | | | |
| ER-D1-05 | | | | | |
| ER-D1-06 | | | | | |
| ER-D1-07 | | | | | |
| ER-D1-08 | | | | | |
| ER-D1-09 | | | | | |
| ER-D1-10 | | | | | |

---

# Blocking Failure Sheet

| BF | Triggered? | Evidence |
|---|---|---|
| BF-D1-01 Object / authority collapse | | |
| BF-D1-02 Visual symmetry → load claim | | |
| BF-D1-03 Latch / seating → acceptance | | |
| BF-D1-04 Visible state → complete verification | | |
| BF-D1-05 Interchangeability by appearance | | |
| BF-D1-06 Source-scope leap | | |
| BF-D1-07 History → current validation | | |
| BF-D1-08 Equipment-authority leak | | |

---

# Severity Review Sheet

| Candidate | Ошибка есть? | Сам исправил? | Downstream dangerous claim? | Решение |
|---|---|---|---|---|
| SR-D1-01 Serial-path assumption | | | | ER-D1-02 score / related BF if triggered |
| SR-D1-02 Holding-principle collapse | | | | ER-D1-04 score / related BF if triggered |

---

# Evidence Package Check

| Required output | Present? | Quality / note |
|---|---|---|
| Object / interface map | | |
| Load-path map | | |
| Holding principle | | |
| Observation / unknown register | | |
| Identity / configuration status | | |
| Source-role / exact-applicability map | | |
| Discriminating evidence request | | |
| Bounded conclusion / STOP-handoff | | |
| U1 response | | |
| C1 delta | | |

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
- любой ER-D1-01…10 < 3;
- U1 не выполнен;
- C1 не выполнен;
- evidence package неполон.

`D1 VERIFIED` означает только:

> **в рамках SkillsVault обучающийся доказал beginner-способность корректно разделять объекты, строить качественный путь силы, ограниченно классифицировать удержание, управлять неизвестным/source applicability и останавливать неподтверждённый вывод без присвоения equipment authority.**

Это не является расчётным proof, inspection verdict, acceptance или разрешением эксплуатации конкретного грузоподъёмного оборудования.

---

# Следующий этап

`CRN-M-03 / D1 FINAL ALIGNMENT / v1` должен проверить сквозную трассировку:

```text
Lesson
↕
Practice A–J
↕
Practice Reasoning A–J
↕
Expected Result ER-D1-01…10
↕
Verification Rubric ER-D1-01…10
↕
BF-D1-01…08 + SR-D1-01…02 + U1 + C1
```

и подтвердить отсутствие orphan content, surprise BF и скрытого ослабления source/acceptance/authority guards.
