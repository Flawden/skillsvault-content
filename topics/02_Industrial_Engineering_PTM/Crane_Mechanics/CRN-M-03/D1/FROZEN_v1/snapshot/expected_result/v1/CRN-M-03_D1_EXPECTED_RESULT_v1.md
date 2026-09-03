# CRN-M-03 — Крюковые подвески и захваты
# D1 Expected Result v1
## Наблюдаемый профиль beginner-компетентности

---

# Назначение

Expected Result фиксирует не то, что learner прочитал или повторил из Lesson, а то, **что он способен показать на незнакомом hook-suspension / load-gripping-device кейсе после D1**.

D1 здесь не является уровнем расчёта крюка, браковки, проверки удерживающей способности или эксплуатационного допуска. Зрелый результат D1 — это дисциплинированная качественная карта:

```text
OBJECT / INTERFACE BOUNDARY
→ LOAD-PATH TOPOLOGY
→ HOLDING PRINCIPLE
→ OBSERVATION / UNKNOWN STATUS
→ SOURCE ROLE + EXACT APPLICABILITY
→ BOUNDED CONCLUSION
→ EVIDENCE REQUEST / STOP, ЕСЛИ ЦЕПОЧКА НЕ ЗАМКНУТА
```

Сильный learner не обязан закончить кейс словом «допустимо». Наоборот, полноценным успешным результатом может быть:

```text
D1 MAP COMPLETE — CLAIM BOUNDED
```

или:

```text
D1 STOP — EXACT DEVICE / SOURCE / OEM DATA REQUIRED
```

если он точно показывает, **какой вывод заблокирован, почему evidence недостаточно и что именно должно изменить статус вывода**.

Всегда сохраняется граница:

```text
SKILLSVAULT STOP ≠ EQUIPMENT-OPERATION AUTHORITY
```

---

# Краткая формула результата

После D1 learner способен самостоятельно выполнить цепочку:

```text
РАЗДЕЛИТЬ ОБЪЕКТЫ И ИНТЕРФЕЙСЫ
↓
ПОКАЗАТЬ ПУТЬ СИЛЫ, ВКЛЮЧАЯ BRANCH / MERGE
↓
КЛАССИФИЦИРОВАТЬ ПРИНЦИП УДЕРЖАНИЯ РОВНО НА ДОКАЗАННОМ УРОВНЕ
↓
ОТДЕЛИТЬ НАБЛЮДЕНИЕ ОТ НЕИЗВЕСТНОГО И ОТ ACCEPTANCE
↓
ВЫБРАТЬ РОЛЬ ИСТОЧНИКА ПО ВОПРОСУ
↓
ПРОВЕРИТЬ EXACT APPLICABILITY К OBJECT / CONFIGURATION / QUESTION
↓
СФОРМУЛИРОВАТЬ BOUNDED CONCLUSION
↓
ЗАПРОСИТЬ DISCRIMINATING EVIDENCE ИЛИ ОСТАНОВИТЬ UNSUPPORTED INFERENCE
↓
НЕ ПРИСВАИВАТЬ СЕБЕ FIELD / EQUIPMENT AUTHORITY
```

---

# ER-D1-01 — Разделяет систему на объекты и интерфейсы

## Наблюдаемое поведение

Learner не называет весь suspended chain «крюком» или «захватом» одной строкой. Он способен отделить как минимум релевантные для текущего вопроса:

- crane-integral lower assembly / hook suspension;
- hook / latch-keeper interface;
- detachable below-hook attachment, если он есть;
- sling / intermediate interface, если он есть;
- load interface;
- load.

Допускается другая детализация, если границы прозрачны и не скрывают разные source / compatibility / authority objects.

## Evidence output

```text
OBJECT MAP
OBJ-1: ...
OBJ-2: ...
INTERFACE I1: ... ↔ ...
...
```

## Не считается достигнутым

- физически соединённые части автоматически объявлены одним объектом;
- source одного объекта переносится на соседний объект без проверки;
- совместимость всей assembled system выводится из факта физического соединения.

---

# ER-D1-02 — Строит качественную load-path topology, включая branch / merge

## Наблюдаемое поведение

Learner показывает, через какие элементы и интерфейсы проходит сила от crane-side к load-side.

Если путь ветвится или снова сходится, это отражается явно. Он не обязан вычислять branch forces на D1.

Критическая граница:

```text
VISUAL SYMMETRY ≠ PROVEN EQUAL LOAD SHARE
```

## Evidence output

```text
LOAD-PATH MAP
upper interface
→ split
↙       ↘
branch A  branch B
↘       ↙
→ merge / distributed transfer
→ load
```

или эквивалентная понятная схема.

## Не считается достигнутым

- любая система автоматически рисуется как одна serial chain;
- симметрия изображения превращается в `50/50` или иной количественный claim;
- qualitative topology называется расчётным proof.

---

# ER-D1-03 — Не превращает latch / seating / low-load cues в acceptance

## Наблюдаемое поведение

Learner умеет разделить:

```text
OBSERVED LATCH STATE
OBSERVED CONTACT / SEATING
DEVICE-SPECIFIC FUNCTION
COMPATIBILITY / ACCEPTANCE
```

Он не назначает latch/keeper универсальную силовую функцию и не считает закрытый latch доказательством правильной посадки.

Если контакт выглядит tip/side/eccentric или просто отличается от простой mental model, learner отмечает **изменившийся вопрос о пути силы и exact applicability**, но не придумывает числовой допустимый предел и не ставит диагноз.

## Evidence output

`OBSERVATION / CLAIM STATUS` минимум для latch и contact/seating.

## Критические guards

```text
LATCH CLOSED ≠ ACCEPTED SEATING
GOOD-LOOKING SEATING ≠ FIELD ACCEPTANCE
LOW LOAD / PAST SURVIVAL ≠ PERMISSION FOR UNCONFIRMED LOAD PATH
```

---

# ER-D1-04 — Классифицирует holding principle без ложной универсальности

## Наблюдаемое поведение

Learner способен отличить, когда evidence позволяет говорить о семье принципа удержания, например:

- positive / geometric engagement;
- friction / clamping dependent;
- magnetic;
- vacuum;
- иной device-specific mechanism;
- `UNKNOWN / NOT YET CONFIRMED`.

Он не обязан угадывать точный mechanism по внешнему виду.

## Evidence output

```text
HOLDING PRINCIPLE: ...
EVIDENCE: ...
UNKNOWN / DEVICE-SPECIFIC CONDITIONS: ...
```

## Сильный D1-признак

Если данных недостаточно, ответ `mechanical gripping family — exact holding mechanism not confirmed` сильнее, чем уверенная выдуманная классификация.

---

# ER-D1-05 — Ведёт observation / unknown register и не объявляет видимое состояние полной verification

## Наблюдаемое поведение

Learner разделяет минимум три статуса:

```text
OBSERVED / REPORTED
UNKNOWN / NOT DEMONSTRATED
SOURCE / OEM / COMPETENT-PROCESS DEPENDENT
```

Видимые «нормальные» признаки не превращаются в утверждение, что все критические условия удержания, совместимости или текущего состояния проверены.

## Evidence output

Короткий `OBSERVATION / UNKNOWN REGISTER`.

## Не считается достигнутым

- отсутствие видимого дефекта трактуется как доказательство исправности;
- часть видимых device states объявляется полной verification;
- неизвестное молча подменяется «обычно так».

---

# ER-D1-06 — Не объявляет похожие устройства взаимозаменяемыми и удерживает whole-system boundary

## Наблюдаемое поведение

Learner не выводит interchangeability из:

- похожей формы;
- цвета;
- одной совпавшей цифры маркировки;
- принадлежности к одной широкой категории.

Он способен сказать, что exact device identification / configuration / interface / documentation могут быть самостоятельными требованиями evidence.

Отдельно он понимает: масса detachable attachment — часть реальной подвешенной системы, но D1 **не создаёт универсальную формулу вычитания этой массы из числа грузоподъёмности крана**.

## Evidence output

```text
IDENTITY / CONFIGURATION STATUS: ...
WHOLE-SYSTEM CLAIM LIMIT: ...
```

---

# ER-D1-07 — Выбирает source role по вопросу и проверяет exact applicability

## Наблюдаемое поведение

Learner начинает не с номера знакомого стандарта, а с вопроса:

```text
WHAT CLAIM NEEDS SUPPORT?
→ WHAT SOURCE ROLE IS NEEDED?
→ DOES THIS EXACT SOURCE APPLY TO THIS OBJECT / CONFIGURATION / QUESTION?
```

Он различает как минимум роли:

- vocabulary / nomenclature;
- hook-specific design/proof source;
- detachable attachment category/source;
- exact device passport/OEM documentation;
- field inspection/acceptance/operation authority process.

Критический guard:

```text
CATEGORY MATCH ≠ EXACT APPLICABILITY
```

В частности, learner не использует `ISO 17096` как универсальную authority для grabs / grab buckets только потому, что документ относится к load-lifting attachments.

## Evidence output

`SOURCE-ROLE / APPLICABILITY MAP` с минимум одним явным `APPLIES / NOT SHOWN APPLICABLE / EXCLUDED / NEED EXACT SOURCE` статусом.

---

# ER-D1-08 — Не превращает прошлый успех или nominal marking в current validation

## Наблюдаемое поведение

Learner умеет правильно статусировать исторический факт:

```text
PRIOR SUCCESSFUL USE = HISTORY EVIDENCE
```

но не повышает его до:

```text
CURRENT COMPATIBILITY / VALIDATION / ACCEPTANCE
```

Аналогично видимая nominal marking остаётся claim, applicability которого к текущей whole-system configuration должна быть доказана отдельно.

## Evidence output

`EVIDENCE STATUS NOTE` для history / nominal marking + список недостающих current-case evidence.

---

# ER-D1-09 — Формирует discriminating evidence request, bounded conclusion и корректный STOP / handoff

## Наблюдаемое поведение

Learner не просит «все документы». Он называет evidence, которое реально может изменить статус заблокированного вывода, например:

- exact model / serial / nameplate;
- current OEM/passport documentation;
- confirmed configuration / interface data;
- exact source applicability;
- intended load/application data, если это вопрос selection/compatibility;
- applicable competent field process, если вопрос вышел за D1.

Затем learner пишет conclusion только в пределах доказанного.

Допустимые сильные окончания:

```text
D1 MAP COMPLETE — CLAIM BOUNDED
```

или:

```text
D1 STOP — EXACT DEVICE / SOURCE / OEM DATA REQUIRED
```

## Обязательная граница

```text
SKILLSVAULT STOP ≠ EQUIPMENT-OPERATION AUTHORITY
```

Expected Result не позволяет превращать учебный STOP в самостоятельное решение о continued operation, return-to-service, запрете/разрешении эксплуатации или ремонте.

---

# ER-D1-10 — Переносит весь D1 workflow на незнакомый кейс

## Наблюдаемое поведение

На кейсе, которого не было в Practice A–J, learner самостоятельно проходит:

```text
object / interface map
→ load-path topology
→ holding principle
→ observation / unknown register
→ source role / exact applicability
→ bounded conclusion
→ evidence request / STOP-handoff
```

Unseen case должен отличаться поверхностным сюжетом и комбинацией traps; успех не должен зависеть от узнавания Case J.

## Evidence output

Полный D1 evidence package на unseen case.

## Критический признак transfer

Transfer подтверждается не обязательным field verdict, а сохранением evidence discipline на новом объекте.

Если exact device / configuration / source evidence недостаточно, корректный bounded STOP является **успешным transfer outcome**, если learner точно объясняет, что заблокировано и какое evidence нужно дальше.

---

# Минимальный D1 evidence package

Verification Rubric должен уметь проверить минимум восемь видимых выходов:

1. `OBJECT / INTERFACE MAP`;
2. `LOAD-PATH MAP`;
3. `HOLDING PRINCIPLE`;
4. `OBSERVATION / UNKNOWN REGISTER`;
5. `IDENTITY / CONFIGURATION STATUS`;
6. `SOURCE-ROLE / EXACT-APPLICABILITY MAP`;
7. `DISCRIMINATING EVIDENCE REQUEST`;
8. `BOUNDED CONCLUSION / STOP-HANDOFF`.

Не каждый кейс обязан закончиться полным набором device-specific evidence. Но learner обязан показать, **что именно отсутствует и почему это ограничивает claim**.

---

# Transfer requirement

Известных Practice / Reasoning A–J **недостаточно** для подтверждения D1.

Verification должен включать минимум один `U1 — unseen case`, где одновременно присутствуют не менее двух из следующих traps:

- объектная граница между hook suspension и detachable attachment не подписана заранее;
- путь силы имеет branch / merge или иной неочевидный интерфейс;
- latch/contact выглядит успокаивающе, но acceptance не доказан;
- holding principle можно классифицировать только на family level;
- visible state неполон;
- два похожих устройства создают interchangeability temptation;
- найден source по названию категории, но exact applicability не доказана;
- есть история прошлой успешной работы;
- есть nominal marking, но whole-system applicability не доказана.

U1 не должен требовать численных hook proof/discard/holding-force или equipment-specific acceptance criteria, закрытых D1 Source Gate.

---

# Failure policy handoff в Verification Rubric

Practice Reasoning сформировал 10 failure families `RF-D1-01…10`. Expected Result не обязан автоматически объявлять все десять non-compensable.

## Сильные кандидаты в blocking failures

Следующий Rubric должен отдельно решить non-compensability минимум для восьми ошибок:

### BF-CAND-D1-01 — OBJECT / AUTHORITY COLLAPSE

Разные system objects/interfaces слиты так, что source или compatibility claim переносится между ними без доказательства.

Происхождение: `RF-D1-01`.

### BF-CAND-D1-02 — VISUAL SYMMETRY → LOAD CLAIM

Визуальная симметрия превращена в равное/численное распределение нагрузки без модели/evidence.

Происхождение: `RF-D1-03`.

### BF-CAND-D1-03 — LATCH / SEATING → ACCEPTANCE

Закрытый latch, «глубокая» посадка, малый груз или привычный контакт превращены в compatibility/acceptance verdict.

Происхождение: `RF-D1-04`.

### BF-CAND-D1-04 — VISIBLE STATE → COMPLETE VERIFICATION

Часть видимых нормальных признаков объявлена доказательством полной пригодности/удерживающего состояния.

Происхождение: `RF-D1-06`.

### BF-CAND-D1-05 — INTERCHANGEABILITY BY APPEARANCE

Похожий вид / одна цифра / общая категория объявлены достаточными для interchangeability.

Происхождение: `RF-D1-07`.

### BF-CAND-D1-06 — SOURCE-SCOPE LEAP

Знакомый стандарт или category match объявлены exact applicability без проверки object/configuration/question scope.

Происхождение: `RF-D1-08`.

### BF-CAND-D1-07 — HISTORY → CURRENT VALIDATION

Прошлый успешный подъём или отсутствие известного прошлого отказа превращены в current compatibility/validation/acceptance.

Происхождение: `RF-D1-09`.

### BF-CAND-D1-08 — EQUIPMENT-AUTHORITY LEAK

D1 analysis / SkillsVault STOP превращён в equipment acceptance, continued-operation, return-to-service, repair или другой field verdict.

Происхождение: `RF-D1-10`.

## Severity-review candidates, не предрешённые Expected Result

Два failure family должны оставаться у Rubric на отдельное severity-решение:

- `RF-D1-02 SERIAL-PATH ASSUMPTION` — может быть локальной conceptual error либо фундаментальным провалом, если branch/merge case из-за неё искажён;
- `RF-D1-05 HOLDING-PRINCIPLE COLLAPSE` — тяжесть зависит от того, learner просто не смог классифицировать механизм и честно остановился или уверенно перенёс неподходящую holding logic/source на реальное устройство.

Expected Result **не разрешает** компенсировать опасный verdict большим количеством правильной терминологии; окончательная политика — следующий Rubric.

---

# Что Expected Result специально не открывает

Этот слой не создаёт и не разрешает самостоятельно выводить:

- hook sizing / proof calculations;
- wear / deformation / crack / discard limits;
- numeric tip / side / eccentric limits;
- latch / keeper retrofit or design acceptance;
- clamp / magnet / vacuum / grab holding-force criteria;
- load-test acceptance values;
- specialist repair / NDT / refurbishment verdicts;
- equipment-specific capacity arithmetic;
- current equipment compatibility/acceptance без exact applicable evidence;
- return-to-service / continued-operation permission.

При достижении такой границы сильный learner выполняет:

```text
OUTSIDE D1
→ exact applicable source / OEM / competent process
→ bounded handoff
```

---

# Граница Expected Result

Expected Result не добавляет новый технический scope и не изменяет Lesson, Technical Editorial, Red Team, Reader Experience, Practice или Practice Reasoning.

Он только переводит уже построенный D1-контракт в **наблюдаемые learner behaviors, evidence outputs и transfer conditions**.

Следующий этап:

`CRN-M-03 / D1 VERIFICATION RUBRIC / v1`.
