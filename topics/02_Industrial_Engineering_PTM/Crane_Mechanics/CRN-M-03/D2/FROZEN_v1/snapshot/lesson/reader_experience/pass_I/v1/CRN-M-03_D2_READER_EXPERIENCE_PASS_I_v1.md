# CRN-M-03 / D2 — Reader Experience Pass I v1

## Decision

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

Baseline remote commit:

`ddd7bf71bb40099ea968c6cde7181b5141931211`

## Reader question

Может ли технически грамотный learner пройти D2 applied-mechanics route без необходимости одновременно удерживать в памяти 22 раздела, 10 рабочих шагов, пять holding families, семь уровней статуса и одиннадцать Red-Team traps?

Pass I улучшает retrieval и порядок чтения, не снижая механический/evidence стандарт. Learner-facing язык остаётся Russian-first; английские labels объяснены или необязательны.

---

# Findings and corrections

## RX-D2-01 — 22 раздела перегружали рабочую память
**Severity:** HIGH

Добавлена шестипунктовая карточка D2: тело → силы/моменты → линии действия/ЦТ → связи/load-share → holding/dynamics → статус/источник.

## RX-D2-02 — Механическая модель и evidence-status приходилось держать одновременно
**Severity:** HIGH

Добавлен двухпроходный способ: Pass A строит механику; Pass B проверяет holding/dynamics/source/authority. Это запрещает ранний прыжок от правдоподобной схемы к capacity/acceptance.

## RX-D2-03 — Разделы 8–9 по распределению реакций были трудны для быстрого выбора метода
**Severity:** HIGH

Добавлена карта трёх состояний: реакции определяются равновесием; нужна совместность/жёсткость/зазоры; неизвестен сам contact/engagement state. Карта не создаёт численного load-share.

## RX-D2-04 — Пять holding families читались как длинный список факторов
**Severity:** MEDIUM

Добавлен router по физическому условию удержания: геометрическое зацепление, трение/клещи, магнит, вакуум, grab. Он явно помечен как classifier, а не inspection/acceptance checklist.

## RX-D2-05 — Лестница статусов 1/2/3/4A/4B/4C/5 была точной, но тяжёлой для retrieval
**Severity:** HIGH

Добавлена трёхэтажная reader-map: observation/model → внешний proof/inspection/safe-use process → equipment decision. Никакой authority promotion не разрешён.

## RX-D2-06 — Десятишаговый рабочий алгоритм трудно воспроизвести без подсказки
**Severity:** MEDIUM

Добавлен шестистрочный карманный алгоритм, который разворачивается обратно в полный десятишаговый workflow.

## RX-D2-07 — Двенадцать типовых ошибок выглядели как двенадцать отдельных запретов
**Severity:** MEDIUM

Они сгруппированы в пять promotion traps: картинка→факт, удобная модель→доказанная модель, общая физика→capacity/acceptance, история/видимое состояние→current verification, один authority layer→другой.

## RX-D2-08 — Карта памяти завершала урок без retrieval-test
**Severity:** MEDIUM

Добавлен восьмивопросный retrieval checkpoint перед formal Practice. Он не содержит answer key и не считается Practice.

---

# Guard preservation

Reader Experience Pass I не ослабляет:

```text
ИНТЕРФЕЙС ИСЧЕЗ С БОЛЬШОЙ ССТ ≠ ИНТЕРФЕЙС НЕ НАГРУЖЕН
УРАВНЕНИЯ СХОДЯТСЯ ≠ МОДЕЛЬ СВЯЗИ ДОКАЗАНА
ЦЕНТРАЛЬНО ВЫГЛЯДИТ ≠ ЦЕНТРАЛЬНАЯ РЕЗУЛЬТИРУЮЩАЯ ДОКАЗАНА
ГЕОМЕТРИЧЕСКИЙ ЦЕНТР ≠ ЦЕНТР ТЯЖЕСТИ
РУЧНАЯ ПОДВИЖНОСТЬ ≠ LOADED DOF PROOF
ГЕОМЕТРИЧЕСКАЯ СИММЕТРИЯ ≠ РАВНЫЙ LOAD SHARE
N УРАВНЕНИЙ = N НЕИЗВЕСТНЫХ ≠ CONTACT-STATE CLOSURE
МАССА ПРИСПОСОБЛЕНИЯ + ОДНА CAPACITY-ЦИФРА ≠ ДОПУСТИМЫЙ ГРУЗ
ВСЕ D2 HOLDING-ФАКТОРЫ ПРОВЕРЕНЫ ≠ COMPLETE HOLDING VERIFICATION
«МЕДЛЕННО» ≠ КВАЗИСТАТИКА ДОКАЗАНА
PROOF ≠ INSPECTION ≠ SAFE USE ≠ EQUIPMENT DECISION
```

По-прежнему закрыты standard-derived numeric factors, WLL/SWL/capacity selection, holding-force ratings, inspection/discard/load-test criteria, repair/NDT и operation permission. ISO 17096 grab/grab-bucket exclusion сохранён.

## Whole-lesson reader verdict

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

Reader spine:

```text
ТЕЛО
→ СИЛЫ / МОМЕНТЫ / ЦТ
→ СВЯЗИ / LOAD SHARE
→ HOLDING / DYNAMICS
→ СТАТУС / ТОЧНЫЙ ИСТОЧНИК
→ BOUNDED CONCLUSION ИЛИ STOP
```

## Next

`CRN-M-03 / D2 PRACTICE / v1 — build applied-mechanics transfer cases for body/FBD selection, force/moment/CG reasoning, articulation/load-share, holding-state, dynamics and bounded source/authority handoff`
