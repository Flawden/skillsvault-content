# CRN-M-01 — D4
# Source-Gate Program v1

## Решение

D4 нельзя писать одной непрерывной пачкой источников.

Нужно 8 gate-потоков.

---

# GATE D4-G1 — Current terminology / standard baseline

Цель:
зафиксировать текущую терминологию и версии.

Обязательные текущие опоры:
- ISO 4306-1:2026;
- ISO 4309:2017 + статус ISO/CD 4309;
- ISO 16625:2025;
- ISO 21669:2005;
- ISO 2408:2017;
- ФНП №461.

Результат:
`PASS` до начала Lesson.

---

# GATE D4-G2 — Rope construction / selection / compatibility

Главная опора:
- ISO 16625:2025;
- ISO 2408;
- OEM technical documentation.

Разрешить:
- архитектуру выбора;
- proof/check concept;
- влияние геометрии.

Заблокировать:
- реконструкцию закрытых таблиц;
- универсальный подбор без OEM / design inputs.

---

# GATE D4-G3 — Advanced bending / contact / tribology / fatigue

Источники:
- peer-reviewed research;
- authoritative technical literature;
- ISO/OEM where applicable.

Разрешить:
- model hierarchy;
- sensitivity;
- comparative calculation.

Заблокировать:
- universal contact stress formula for full rope;
- universal S–N curve;
- remaining-life shortcut.

---

# GATE D4-G4 — Rotational properties / installation

Опоры:
- ISO 21669:2005;
- current manufacturer data;
- installation instructions.

Разрешить:
- interpretation of test boundary conditions;
- comparison of constructions;
- source-bound rotational data.

Заблокировать:
- universal torque law;
- universal swivel rule.

---

# GATE D4-G5 — Multi-layer drum / radial stability / spooling

Опоры:
- ISO 4309:2017;
- ISO 16625:2025;
- current OEM technical sources;
- qualified research.

Разрешить:
- model selection;
- sensitivity;
- package-state analysis.

Заблокировать:
- universal pretension;
- universal fleet angle;
- universal crushing pressure;
- universal layer count.

---

# GATE D4-G6 — Advanced chain mechanics

Опоры:
- ISO 7592;
- ISO 3077;
- ISO 3076;
- ISO 16872;
- ISO 1834;
- ГОСТ 30188;
- ГОСТ EN 818-7;
- OEM;
- research.

Разрешить:
- compatibility review;
- contact/fatigue model comparison;
- measurement method critique.

Заблокировать:
- cross-family numeric transfer;
- sprocket design without design standard/method.

---

# GATE D4-G7 — Specialized inspection / NDT

Отдельный gate обязателен.

Нужно определить:
- какие методы реально применимы к steel wire rope / chain;
- что каждый метод измеряет;
- квалификационные требования;
- sensitivity / limitations;
- интерпретацию результатов;
- стандарты метода.

До gate:
- не писать учебные процедуры НК;
- не писать универсальные thresholds;
- не делать competency claim «умеет выполнять НК».

---

# GATE D4-G8 — Duty / design-life / inspection context

Внешняя межтемная опора:

- ISO 4301-1:2016;
- ISO 4301-5:2025;
- ISO 12482:2014;
- ISO/CD 12482 — только как developing edition;
- ISO 9927-1:2013;
- ISO 9927-5:2017.

Назначение:
дать D4 контекст:
- spectrum;
- duty;
- monitoring;
- inspection architecture.

Ограничение:
не превращать CRN-M-01 в полноценный Topic по классификации и ресурсу всего крана.

---

# Порядок gate

```text
G1
↓
G2 + G3 + G4
↓
G5
↓
G6
↓
G7
↓
G8
↓
D4 AUTHORING
```

G2/G3/G4 можно вести параллельно после G1.

---

# Stop conditions

Авторинг D4 должен остановиться, если:

1. метод требует закрытой таблицы, которой нет;
2. найден конфликт действующих стандартов, который не разрешён;
3. расчёт зависит от OEM-proprietary параметра;
4. метод требует квалификации, которой SkillsVault не может симулировать;
5. нельзя провести чёткую границу D4 / formal authority.

Тогда создаётся:
`REVIEW_REQUIRED` или `METHOD_BLOCKED`.
