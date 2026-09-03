# CRN-M-03 — Крюковые подвески и захваты
# D1 Final Alignment v1
## Урок → редактура / Red Team / Reader Experience → Practice → Reasoning → Expected Result → Verification Rubric

Дата: `2026-09-03`
Baseline: `a23c41664497feaf84af7ceb697bb7374521056a`

---

# 1. Решение

`PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`

Final Alignment отвечает на один вопрос:

> **учим ли мы, тренируем, объясняем, ожидаем и проверяем одну и ту же D1-компетентность при одинаковых границах source scope, acceptance и equipment authority?**

Ответ: `ДА`.

Содержательная правка Lesson / Practice / Reasoning / Expected Result / Verification Rubric не требуется.

---

# 2. Сквозная архитектура

```text
LESSON
строит beginner mental model
↓
TECHNICAL EDITORIAL / RED TEAM / READER EXPERIENCE
исправляют техническую строгость и читаемость, не расширяя полномочия
↓
PRACTICE A–J
заставляет выполнить workflow без answer key
↓
PRACTICE REASONING A–J
показывает несколько допустимых reasoning-paths и bounded STOP
↓
EXPECTED RESULT ER-D1-01…10
превращает reasoning в наблюдаемое поведение
↓
VERIFICATION RUBRIC
оценивает known case + unseen U1 + challenge C1,
блокирует 8 опасных evidence-status/authority shortcuts
и отдельно рассматривает 2 severity-review family
```

Ни одна Rubric dimension не требует способности, которой нет в reviewed Lesson/Practice/Reasoning.

Ни одна крупная D1-компетенция не исчезает до Verification.

---

# 3. ER-D1-01…10 traceability

| ER | Наблюдаемая компетенция | Lesson anchor | Practice / Reasoning | Verification | Статус |
|---|---|---|---|---|---|
| ER-D1-01 | Граница объектов и интерфейсов | §§1,4,6,13,17 | A, J | Rubric ER-D1-01; U1+C1 | PASS |
| ER-D1-02 | Qualitative load-path topology с branch/merge | §§4,5,6,13,17 | B, C, J | Rubric ER-D1-02; U1 | PASS |
| ER-D1-03 | Latch / seating без скрытой acceptance | §§3,5,10,11,15,16 | C, J | Rubric ER-D1-03; BF-D1-03 | PASS |
| ER-D1-04 | Holding principle без угадывания | §§7,8,10,13,17 | D, E, J | Rubric ER-D1-04; U1+C1; SR-D1-02 | PASS |
| ER-D1-05 | Observation / unknown register | §§10,11,13,16,17 | E, I, J | Rubric ER-D1-05; BF-D1-04 | PASS |
| ER-D1-06 | Identity / interchangeability / whole-system boundary | §§1,6,8,9,13,15,17 | F, H, J | Rubric ER-D1-06; BF-D1-05 | PASS |
| ER-D1-07 | Source role + exact applicability | §12; §13; §15; §16 | G, J | Rubric ER-D1-07; U1+C1; BF-D1-06 | PASS |
| ER-D1-08 | History / nominal marking не равны current validation | §§9,11,13,15,17 | H, I, J | Rubric ER-D1-08; BF-D1-07 | PASS |
| ER-D1-09 | Discriminating evidence request + bounded STOP / handoff | §§11–13,16,17 | A–J; особенно C,E,F,G,H,I,J | Rubric ER-D1-09; BF-D1-01/08 | PASS |
| ER-D1-10 | Перенос на незнакомый кейс | §13; §15–17 | A–J дают primitives, но не закрывают transfer | Rubric ER-D1-10; U1+C1 mandatory | PASS |

Результат: `10 / 10 Expected Result dimensions traced end-to-end`.

---

# 4. Lesson — 17/17 primary sections имеют downstream use

| Lesson section | Downstream use | Статус |
|---|---|---|
| §1 Три разных объекта | A, F, J; ER-D1-01/06 | PASS |
| §2 Базовая анатомия крюка | A, C, G; source-role vocabulary boundary | PASS |
| §3 Latch / keeper / защёлка | C, J; ER-D1-03; BF-D1-03 | PASS |
| §4 Главный load-path algorithm | A, B, C, J; ER-D1-01/02/10 | PASS |
| §5 Посадка / tip / side / eccentric path | C, J; ER-D1-02/03 | PASS |
| §6 Крюковая подвеска больше тела крюка | A, H, J; ER-D1-01/06 | PASS |
| §7 Holding-principle families | D, E, J; ER-D1-04 | PASS |
| §8 Похожий вид может скрывать разные механизмы | F, J; ER-D1-04/06 | PASS |
| §9 Масса приспособления участвует в силовой картине | H, J; ER-D1-06/08 | PASS |
| §10 Семейства опасных состояний | C, E, I, J; ER-D1-03/05 | PASS |
| §11 Наблюдение / гипотеза / решение | E, I, J; ER-D1-05/08/09 | PASS |
| §12 Source-scope router | G, J; ER-D1-07 | PASS |
| §13 Универсальный D1 алгоритм нового случая | A–J; ER-D1-01…10 | PASS |
| §14 Пять мысленных примеров | formative retrieval; нет уникальной orphan-компетенции | PASS |
| §15 Главные ошибки новичка | BF/SR provenance + A–J traps | PASS |
| §16 Когда D1 обязан остановиться | A–J evidence requests; ER-D1-09; BF-D1-08 | PASS |
| §17 Итоговый mental model / retrieval checkpoint | transfer spine; ER-D1-10 | PASS |

Результат: `17 / 17 primary Lesson sections traced`.

---

# 5. Practice / Reasoning A–J — 10/10 + 10/10

| Case | Primary competence | ER / failure lineage | Статус |
|---|---|---|---|
| A | Граница системы: один рисунок, три объекта | ER-01/09; BF-01 lineage | PASS |
| B | Branch/merge topology без load-share выдумки | ER-02; BF-02 / SR-01 lineage | PASS |
| C | Latch + seating + low-load trap | ER-02/03/09; BF-03 | PASS |
| D | Holding-principle classifier | ER-04; SR-02 guard | PASS |
| E | Visible state ≠ complete verification | ER-04/05/09; BF-04 | PASS |
| F | Similar device ≠ interchangeable | ER-01/06/09; BF-05 | PASS |
| G | Source role / exact applicability | ER-07/09; BF-06 | PASS |
| H | Whole suspended system / self-weight / nominal number | ER-06/08/09 | PASS |
| I | Past success ≠ current validation | ER-05/08/09; BF-07 | PASS |
| J | Integrated D1 capstone | ER-01…09; pattern only for ER-10 | PASS |

У всех десяти кейсов есть отдельный non-exclusive Practice Reasoning path. Practice prompts не содержат встроенного answer key.

Known A–J, включая J, **не закрывают ER-D1-10**. Это намеренно.

---

# 6. Blocking Failure provenance — 8/8

| BF | Failure | Prior origin | Practice / Reasoning exposure | ER origin | Статус |
|---|---|---|---|---|---|
| BF-D1-01 | OBJECT / AUTHORITY COLLAPSE | §§1,6,11,13,16; RT authority guard | A, J | ER-01/09 | PASS |
| BF-D1-02 | VISUAL SYMMETRY → LOAD CLAIM | §4 + RT symmetry guard | B, J | ER-02 | PASS |
| BF-D1-03 | LATCH / SEATING → ACCEPTANCE | §§3,5,10,15 + Editorial/RT | C, J | ER-03 | PASS |
| BF-D1-04 | VISIBLE STATE → COMPLETE VERIFICATION | §§10,11,15 + RT visible-state guard | E, J | ER-05 | PASS |
| BF-D1-05 | INTERCHANGEABILITY BY APPEARANCE | §§8,15 + RT interchangeability guard | F, J | ER-06 | PASS |
| BF-D1-06 | SOURCE-SCOPE LEAP | §12 + source gate / RT applicability guard | G, J | ER-07 | PASS |
| BF-D1-07 | HISTORY → CURRENT VALIDATION | §§11,15 + RT past-success guard | I, J | ER-08 | PASS |
| BF-D1-08 | EQUIPMENT-AUTHORITY LEAK | §§11,16 + source/authority lock | A–J; strongest G/H/I/J | ER-09 | PASS |

Все 8 non-compensable BF были обучены / отредактированы / атакованы / разобраны до того, как стали scoring failures.

`Surprise BF: 0`.

---

# 7. Severity Review — 2/2 остаются severity-review

| SR | Family | Почему не автоматический BF | Closure | Статус |
|---|---|---|---|---|
| SR-D1-01 | SERIAL-PATH ASSUMPTION | локальная beginner-ошибка может быть исправлена до опасного вывода | снижает ER-D1-02; BF только если рождает explicit unsafe claim | PASS |
| SR-D1-02 | HOLDING-PRINCIPLE COLLAPSE | честное `UNKNOWN — NOT YET CONFIRMED` является сильным D1-ответом | снижает ER-D1-04; BF только при уверенной неподтверждённой downstream promotion | PASS |

Rubric не скрывает третий класс санкции и не превращает SR в BF через заднюю дверь.

---

# 8. U1 + C1 closure audit

Verification содержит три разных evidence layer:

1. **Known A–J** — подтверждают работу workflow на знакомых типах ловушек.
2. **U1** — новый case с hook suspension + неизвестным detachable device, branch/merge, latch/seating, nominal marking, past-success history и source temptation.
3. **C1** — exact OEM identity показывает, что устройство является `grab`; learner обязан обновить source map и признать public ISO 17096 grab/grab-bucket exclusion вместо применения «по аналогии».

Closure остаётся:

```text
Known A–J alone → NOT SUFFICIENT FOR ER-D1-10
Case J alone     → NOT SUFFICIENT FOR ER-D1-10
U1 without C1    → NOT SUFFICIENT
U1 + C1 + every ER >=3 + no BF + evidence package complete
→ D1 VERIFIED
```

После C1 learner обновляет затронутые слои:

```text
IDENTITY / CONFIGURATION
→ HOLDING-PRINCIPLE STATUS
→ SOURCE ROLE / EXACT APPLICABILITY
→ OBSERVATION / UNKNOWN REGISTER
→ DISCRIMINATING EVIDENCE REQUEST
→ BOUNDED CONCLUSION / STOP
→ AUTHORITY HANDOFF
```

C1 не раскрывает «правильный эксплуатационный ответ». Он проверяет умение корректно изменить доказательный статус.

---

# 9. Guard consistency

Во всех слоях без ослабления сохраняются:

1. `hook body ≠ complete hook suspension`;
2. `latch closed ≠ acceptance`;
3. визуальная симметрия не доказывает равную долю нагрузки;
4. нагрузочный путь может ветвиться / сходиться;
5. внешний вид не доказывает holding principle или interchangeability;
6. visible state не равен complete verification;
7. прошлый успешный подъём не равен current validation;
8. category/title match не равен exact source applicability;
9. наличие OEM/source документа не равно current equipment acceptance;
10. attachment self-weight физически участвует в системе, но не создаёт универсальную capacity arithmetic;
11. D1 не открывает numeric design/proof, discard/inspection acceptance, holding-force calculations, repair/NDT, load-test acceptance или return-to-service;
12. `SkillsVault STOP` — остановка неподтверждённого вывода и evidence/authority handoff, а не команда эксплуатации;
13. Rubric score — pedagogical assessment, не технический допуск оборудования.

Результат: `GUARD CONSISTENCY: PASS`.

---

# 10. Языковой guard

Learner-facing слой остаётся `RUSSIAN-FIRST`.

В Lesson / Practice / Reasoning / Expected Result / Rubric допускаются устойчивые английские labels, но:

- смысл вводится по-русски;
- русская эквивалентная формулировка полностью принимается;
- английская лексика не является отдельной assessment competence;
- Internal IDs (`ER-D1`, `BF-D1`, `U1`, `C1`) являются служебными метками, а не требованием к речи ученика.

Проверены основные recurring labels:

```text
evidence → доказательная информация
source scope → границы применимости источника
exact applicability → точная применимость
holding principle → принцип удержания
branch / merge → разветвление / схождение пути силы
acceptance → приёмка / подтверждение допустимости
bounded conclusion → вывод в пределах доказанного
equipment authority → полномочия принимать решение по реальному оборудованию
```

`LANGUAGE ACCESSIBILITY: PASS`.

---

# 11. Orphan audit

```text
Orphan Lesson sections:          0
Orphan Practice cases:           0
Orphan Reasoning cases:          0
Orphan Expected dimensions:      0
Orphan Rubric dimensions:        0
Surprise Blocking Failures:      0
Severity-review contradictions:  0
Guard contradictions:            0
Language-accessibility gaps:      0
```

Контентная правка перед Source Freshness не требуется.

---

# 12. Final decision

```text
FINAL ALIGNMENT: COMPLETE
DECISION: PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS
CONTENT CORRECTIONS REQUIRED: NO
SOURCE FRESHNESS: READY
```

Следующий этап:

`CRN-M-03 / D1 SOURCE FRESHNESS / v1 — revalidate current source editions/status, explicit scope/exclusion records and D1 load-path/holding/source/acceptance/authority boundaries before D1 freeze`
