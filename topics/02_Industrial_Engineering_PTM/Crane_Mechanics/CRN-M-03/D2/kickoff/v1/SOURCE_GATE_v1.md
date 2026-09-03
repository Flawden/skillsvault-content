# CRN-M-03 / D2 — Source Gate v1

## Решение

**PASS WITH CLAIM LIMITS**

D2 Lesson Authoring разблокирован для прикладной качественной/символьной механики: силы, реакции, моменты, эксцентриситет, центр тяжести, степени свободы, ветвление нагрузок, качественная динамика и физические зависимости принципа удержания.

Численные design/proof/holding-force/acceptance критерии, стандартные коэффициенты, оборудование-специфические ограничения и эксплуатационные решения остаются закрыты.

Проверено: **2026-09-03**.

## 1. ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

Публичные данные ISO:

- Edition 5;
- published 2026-07;
- status: Published;
- stage 60.60.

Роль D2: терминология кранов и компонентов. Это не источник расчётных или приёмочных критериев.

Public metadata: https://www.iso.org/standard/78820.html

## 2. ISO 17440:2014

`Cranes — General design — Limit states and proof of competence of forged steel hooks`

Публичные данные ISO:

- Edition 1;
- status: Published / Confirmed;
- stage 90.93;
- охватывает определённые кованые стальные point hooks и machined shanks; plate hooks не входят в публичный scope;
- formal proof связан с limit-state method и ISO 8686-1.

Роль D2: **граница formal hook proof**. D2 может объяснять, почему эксцентриситет/линия действия/сочленение физически важны, но не воспроизводит proof-методику, таблицы, коэффициенты или допустимые значения ISO 17440.

Public metadata: https://www.iso.org/standard/59758.html

## 3. ISO 17096:2015

`Cranes — Safety — Load lifting attachments`

Публичные данные ISO:

- Edition 1;
- status: Published / Confirmed;
- stage 90.93;
- last reviewed and confirmed in 2026;
- публичный scope перечисляет plate clamps, vacuum lifters, lifting magnets, lifting/spreader beams, C-hooks, lifting forks и clamps;
- публичный scope **явно исключает** slings, buckets, grabs, grab buckets и container spreaders.

Роль D2: граница категорий и safety requirements для тех attachment-types, которые реально входят в scope.

Жёсткий guard: общая механика grab/grab-bucket может изучаться концептуально, но ISO 17096 нельзя растянуть на grab/grab-bucket «по аналогии».

Public metadata: https://www.iso.org/standard/58103.html

## 4. ISO 8686-1:2012

`Cranes — Design principles for loads and load combinations — Part 1: General`

Публичные данные ISO:

- Edition 2;
- status: Published;
- ISO page currently shows stage 90.60 / under review;
- public abstract places load/load-combination methods in formal proof-of-competence context.

Роль D2: **граница между общей механикой D2 и formal design-load/proof layer**.

D2 не воспроизводит standard dynamic factors, load combinations, parameter ranges или proof coefficients. Статус 90.60 заносится в watchlist на Source Freshness.

Public metadata: https://www.iso.org/standard/59417.html

## 5. ISO 9927-1:2013

`Cranes — Inspections — Part 1: General`

Публичные данные ISO:

- Edition 3;
- status: Published / Confirmed;
- stage 90.93;
- last reviewed and confirmed in 2023;
- public abstract defines general crane-inspection requirements.

Роль D2: **inspection boundary**. Механическая модель или наблюдение D2 не превращаются в inspection acceptance/discard conclusion.

Public metadata: https://www.iso.org/standard/51102.html

## 6. ISO 12480-1:2024

`Cranes — Safe use — Part 1: General`

Публичные данные ISO:

- Edition 2;
- published 2024-08;
- status: Published;
- stage 60.60;
- public abstract frames safe use through a safe system of work including task planning, selection, operation, maintenance and personnel roles.

Роль D2: **safe-use / planning authority boundary**. D2 mechanics does not itself create a lift plan, choose authorized equipment or permit an operation.

Public metadata: https://www.iso.org/standard/83637.html

## 7. ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Проверено 2026-09-03:

- current edition: 16.04.2026;
- действует до 01.09.2032;
- содержит обязательные российские границы эксплуатации, осмотра/дефектации грузозахватных приспособлений, ремонта, испытаний и организации работ.

Роль D2: российская regulatory/operational boundary.

D2 **не переносит** из ФНП численные inspection/test/rigging/capacity rules в общий учебный вывод и не использует их вне точной ситуации применения. Для operational decisions требуется актуальный применимый текст и организационная процедура.

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

## 8. Passport / OEM / device documentation

Обязательный источник для реального изделия:

- точная конструкция крюковой подвески/захвата;
- допустимые направления и точки приложения нагрузки;
- WLL/capacity и сочетание с конкретным ПС;
- допустимая ориентация, сочленения, поворот/вертлюг и ограничения side/tip/eccentric loading;
- требования к магнитному/вакуумному/клещевому/захватному состоянию;
- inspection, test, maintenance, replacement, repair и modification;
- operating limitations и разрешённые сценарии применения.

## D2 authoring guards

D2 MUST NOT invent/generalize:

- numeric hook stress/proof criteria;
- standard load-combination/dynamic factors;
- numeric side/tip/eccentric limits;
- holding-force formulas as equipment ratings;
- WLL/SWL/capacity conversion rules;
- inspection/discard/load-test thresholds;
- sling-design/rigging-plan authority;
- equipment-specific compatibility or operation permission.

Допускаются generic symbolic mechanics и причинные зависимости только с явной меткой `учебная модель / не proof / не acceptance`.

## Языковой guard

Learner-facing контент D2 — **Russian-first**. Английская метка стандарта или устоявшийся термин может сохраняться рядом, но смысл сначала должен быть доступно объяснён по-русски; русский эквивалент полностью принимается.

## Watchlist

- `ISO 8686-1:2012` — published, ISO page stage 90.60 / under review. Проверить снова перед D2 Freeze.

## Итог

Набор источников достаточен для безопасного D2 applied-mechanics lesson при явных numeric/source/OEM/inspection/authority locks.

**D2 SOURCE GATE = COMPLETE / PASS WITH CLAIM LIMITS.**
