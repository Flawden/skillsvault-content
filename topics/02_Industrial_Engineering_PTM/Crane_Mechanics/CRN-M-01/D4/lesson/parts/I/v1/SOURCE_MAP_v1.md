# CRN-M-01 / D4 Lesson
# Part I — Source Map v1

## Назначение

Этот файл связывает авторский текст Part I с уже завершёнными D4 source gates.

Part I не вводит новые нормативные числа и не реконструирует закрытые таблицы.

---

## Блок 1 — Тип инженерного утверждения

Опоры:
- `D4/architecture/v1/CRN-M-01_D4_ARCHITECTURE_v1.md`
  - типы утверждений;
  - D4 Competency Contract;
  - границы полномочий.
- `D4/gates/G4/v1/CRN-M-01_D4_G4_ROTATIONAL_PROPERTIES_v1.md`
  - torque vs rotation;
  - граничное условие как часть результата.
- `D4/gates/G7/v1/CRN-M-01_D4_G7_SPECIALIZED_INSPECTION_v1.md`
  - signal != defect != criterion != cause.

Новых формальных полномочий не создаётся.

---

## Блок 2 — Иерархия применимости

Опоры:
- `D4/gates/G1/v1/CRN-M-01_D4_G1_CURRENT_BASELINE_v1.md`
  - параллельные российская / международная рамки;
  - current national document != automatically latest international generation;
  - newer != automatically more applicable.
- `D4/architecture/v1/CRN-M-01_D4_ARCHITECTURE_v1.md`
  - проверка scope источника;
  - конфликтующие источники;
  - authority boundary.

---

## Блок 3 — Конфликт источников

Опоры:
- `D4/gates/G5/v1/CRN-M-01_D4_G5_MULTILAYER_DRUM_v1.md`
  - пример различающихся знаменателей для pretension percentages;
  - запрет прямого сравнения процентов без полного адреса числа.
- `D4/gates/G1/v1/CRN-M-01_D4_G1_CURRENT_BASELINE_v1.md`
  - revision / parallel-framework conflict.
- `D4/gates/G2/v1/CRN-M-01_D4_G2_ROPE_SELECTION_COMPATIBILITY_v1.md`
  - OEM / standard / system compatibility guards.

Числа `~10%` и `2.5–5%` используются только как пример denominator trap из G5.
Универсальное значение pretension не вводится.

---

## Блок 4 — Метод и область валидности

Опоры:
- `D4/gates/G3/v1/CRN-M-01_D4_G3_ADVANCED_MECHANICS_v1.md`
  - M0–M4 model ladder;
  - simplest sufficient model;
  - sensitivity;
  - model/input uncertainty;
  - lab-to-field transfer guard.
- `D4/architecture/v1/CRN-M-01_D4_ARCHITECTURE_v1.md`
  - method card contract;
  - Q4 quantitative policy;
  - source-bound calculations.

---

## Блок 5 — Expert audit trail

Опоры:
- `D4/architecture/v1/CRN-M-01_D4_ARCHITECTURE_v1.md`
  - Block 5 contract;
  - expert review structure;
  - assumptions / uncertainty / authority boundary.
- `D4/gates/G7/v1/CRN-M-01_D4_G7_SPECIALIZED_INSPECTION_v1.md`
  - evidence fusion and qualification boundary.
- `D4/gates/G8/v1/CRN-M-01_D4_G8_DUTY_LIFE_CONTEXT_v1.md`
  - evidence layers;
  - insufficient-data formulation;
  - global-to-local history.

---

## Reader Experience

Опора:
- `system/reader_experience/v1/ROADMAP_READER_EXPERIENCE_PASS_v1.md`

Авторинг использует:
- инженерную загадку на входе;
- единый сквозной вопрос;
- guards внутри потока только там, где они меняют решение;
- ощущение открытия;
- явный D3 → D4 capability jump;
- мост к Part II.

Формальный Reader Experience Pass будет выполнен после полного D4 Lesson, Technical Editorial и Red Team согласно roadmap.
