# SCHEMA_CHANGE_REQUEST — Multi-depth Topics D1–D4

## Request ID

`SCR-CONTENT-DEPTH-001`

## Причина

Новая педагогическая модель SkillsVault требует, чтобы один стабильный Topic ID содержал несколько уровней глубины:

- D1 — базовый;
- D2 — средний;
- D3 — продвинутый;
- D4 — экспертный / reference.

Текущая canonical структура хранит для Topic ровно:

- один Lesson;
- один TASK;
- один EXPECTED_RESULT.

Если положить D1 поверх текущего Lesson, приложение будет воспринимать базовый слой как весь Topic, а будущие D2–D4 не получат самостоятельных Lesson/Practice/Expected Result и собственного прогресса.

По CONTENT Contract это нельзя решать скрытой перестройкой путей.

---

# Требования

## 1. Стабильный Topic ID не менять

`CRN-M-01` остаётся `CRN-M-01`.

Все существующие Topic IDs должны остаться стабильными.

## 2. Стабильные текущие entrypoint paths сохранить

Существующий:

`17_Learning_Library/02_OFFLINE_LESSONS/<domain>/<TOPIC>.md`

не удалять и не перемещать.

Он может стать обратно совместимым entrypoint/index для уровней.

## 3. Предлагаемая структура Lesson

```text
17_Learning_Library/
└── 02_OFFLINE_LESSONS/
    └── <domain>/
        ├── CRN-M-01.md        # стабильный entrypoint/index
        └── CRN-M-01/
            ├── D1.md
            ├── D2.md
            ├── D3.md
            └── D4.md
```

Файл и каталог с одинаковой базовой частью имени могут сосуществовать.

## 4. Предлагаемая структура Practice

Существующий каталог уже есть:

```text
03_PRACTICE/<domain>/CRN-M-01/
```

Сохранить существующие:
- `TASK.md`;
- `EXPECTED_RESULT.md`.

Использовать их как обратно совместимый entrypoint/default view.

Добавить:

```text
CRN-M-01/
├── TASK.md
├── EXPECTED_RESULT.md
├── D1/
│   ├── TASK.md
│   ├── REASONING.md
│   └── EXPECTED_RESULT.md
├── D2/
│   ├── TASK.md
│   ├── REASONING.md
│   └── EXPECTED_RESULT.md
├── D3/
└── D4/
```

## 5. Depth metadata

У level-файла добавить machine-readable поле:

```yaml
topic_id: CRN-M-01
depth_level: D1
status: CONTENT_READY
source_ids: [...]
```

Не переиспользовать `lesson_level: L3` как depth level: это legacy/quality dimension с другой семантикой.

## 6. Progress model

Personal state должен различать:

```text
topic_id + depth_level
```

Минимально:
- not_started;
- learning;
- practice_ready;
- mastered.

Прогресс D1 не должен автоматически означать mastery всего Topic.

## 7. Gate model

D2 должен уметь ссылаться на mastery D1.

Рекомендуемая логика:
- читать/preview следующего уровня можно;
- mastery следующего уровня не засчитывается как нормальный маршрут без prerequisites;
- приложение показывает, какие знания отсутствуют.

## 8. Topic Card

Topic Card должен показывать:

```text
CRN-M-01

D1  Базовый       mastered
D2  Средний       learning
D3  Продвинутый   locked/recommended prerequisite
D4  Expert        not_started
```

При этом текущий stable Topic Card path сохраняется.

## 9. Sources

Поддержать:
- aggregate topic sources;
- per-depth source_ids.

Это позволит D1 использовать ФНП/ISO 4309/ISO 7592, а D3–D4 добавлять специализированные стандарты без перегрузки D1.

## 10. AUTO navigation

Генератор должен:
- давать русские отображаемые подписи;
- сохранять stable link targets;
- показывать переходы между D1/D2/D3/D4;
- не возвращать старые англоязычные `Practice Task`, `Expected Result`, `Offline Lesson`, `unlocks`.

---

# Backward compatibility

До миграции:
- старые ссылки продолжают работать;
- старые entrypoint files остаются;
- Topic IDs не меняются;
- существующие personal state records не удаляются.

После миграции legacy topic mastery можно трактовать только через явное migration rule; нельзя молча считать старое «QA_PASS/зачёт» mastery D4.

---

# Acceptance Criteria

Schema change считается готовым, если:

1. CRN-M-01 может одновременно содержать D1 и пустые D2–D4 slots.
2. D1 имеет отдельные Lesson/Practice/Expected Result.
3. App показывает отдельный D1 progress.
4. Старые ссылки на CRN-M-01 Lesson/Practice не ломаются.
5. Source mapping поддерживает depth-level.
6. IDs/legacy paths сохранены.
7. AUTO navigation генерируется на русском.
8. Production SQLite/personal state мигрируются без потери данных.

---

# CONTENT-side status

CRN-M-01 D1 уже подготовлен и может стать первым migration fixture.

Он должен использоваться как тестовый эталон для реализации новой схемы.
