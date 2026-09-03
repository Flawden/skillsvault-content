# CRN-M-03 / D2 Lesson v1 — Source Map

## Назначение

Этот файл фиксирует, откуда берутся **границы утверждений** D2 и какие части урока являются общей учебной механикой, а не воспроизведением закрытых нормативных методик.

Learner-facing урок остаётся Russian-first. Английские термины в source metadata не являются обязательным словарём для ученика.

## S1 — ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

Роль:

- общий терминологический якорь для кранов и компонентов;
- не используется как источник расчётных, inspection или acceptance критериев.

Публичная ссылка: https://www.iso.org/standard/78820.html

## S2 — ISO 17440:2014

`Cranes — General design — Limit states and proof of competence of forged steel hooks`

Роль:

- граница formal proof определённых кованых стальных крюков;
- показывает, что общая механика эксцентриситета/линий действия D2 не равна proof-of-competence;
- таблицы, коэффициенты, пределы и закрытая методика не реконструируются.

Публичная ссылка: https://www.iso.org/standard/59758.html

## S3 — ISO 17096:2015

`Cranes — Safety — Load lifting attachments`

Роль:

- категориальная/safety boundary для attachment types, входящих в public scope;
- публичный scope явно исключает slings, buckets, grabs, grab buckets и container spreaders;
- Lesson может обсуждать механику grab/grab-bucket как общую физику, но **не переносит** на них ISO 17096.

Публичная ссылка: https://www.iso.org/standard/58103.html

## S4 — ISO 8686-1:2012

`Cranes — Design principles for loads and load combinations — Part 1: General`

Роль:

- boundary между общей механикой D2 и formal load/load-combination proof;
- стандартные коэффициенты и load combinations в Lesson не воспроизводятся;
- kickoff source gate держит документ в watchlist из-за stage 90.60 / under review.

Публичная ссылка: https://www.iso.org/standard/59417.html

## S5 — ISO 9927-1:2013

`Cranes — Inspections — Part 1: General`

Роль:

- inspection authority boundary;
- механическое наблюдение/модель D2 не становится inspection acceptance или discard verdict.

Публичная ссылка: https://www.iso.org/standard/51102.html

## S6 — ISO 12480-1:2024

`Cranes — Safe use — Part 1: General`

Роль:

- safe-use/planning authority boundary;
- D2 не превращает механическую модель в lift plan, equipment selection или operation permission.

Публичная ссылка: https://www.iso.org/standard/83637.html

## S7 — ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Роль:

- российская regulatory/operational boundary;
- действующая на kickoff редакция: 16.04.2026, срок действия до 01.09.2032;
- Lesson не воспроизводит численные inspection/test/rigging/capacity правила и не выдаёт operational decision.

Публичная справочная ссылка: https://www.consultant.ru/document/cons_doc_LAW_373321/

## S8 — Passport / OEM / exact device documentation

Роль:

- точная геометрия и конфигурация;
- разрешённые направления приложения нагрузки;
- rating/capacity/holding-state limits;
- реальные функции latch/keeper/сочленений;
- inspection/test/maintenance/repair и operational claims конкретного изделия.

Lesson не публикует proprietary OEM content и не угадывает отсутствующие значения.

---

## M1 — Схема свободного тела и векторное равновесие

Общая учебная механика:

```text
ΣF = 0
```

для явно квазистатической модели.

Guard:

- сначала выбирается тело;
- внешние силы относятся только к этому телу;
- materially relevant external effects не исчезают без явной предпосылки;
- укрупнение системы может сделать критический интерфейс внутренним, но не доказывает его несущественность;
- action/reaction пары на разных телах не складываются в одну ССТ;
- направление реакции должно следовать из модели связи, а не из удобства решения уравнений;
- квазистатическое равновесие требует проверки и сил, и моментов.

Используется в разделах 1–2, 8–10, 19–20.

## M2 — Момент и линия действия

Общая механика:

```text
M_O = r × F
```

или плоская идея `|M| = F·e`.

Guard:

- `e` — геометрическое плечо, не допустимый нормативный эксцентриситет;
- распределённый контакт нельзя бездумно заменять заранее заданной центральной результирующей;
- визуально центральный контакт не доказывает центральную линию результирующей;
- Lesson не назначает allowable side/tip/eccentric limits.

Используется в разделах 3–6, 10, 19–20.

## M3 — Центр тяжести полной выбранной системы

Общая механика:

- в обычном приближении однородного поля тяжести результирующий вес представляется действующим через ЦТ;
- масса приспособления может менять общий ЦТ;
- свободная ориентация зависит от модели связей/контакта/ограничителей и не выводится только из рисунка.

Guard:

- геометрический центр не принимается за ЦТ без mass-distribution evidence;
- это не capacity-selection формула, даже если масса приспособления известна.

Используется в разделах 5–6, 8–10, 19–20.

## M4 — Сочленения и степени свободы

Общая механика:

- идеальный шарнир/вертлюг — модель связи с явно заданными освобождёнными/ограниченными движениями;
- реальная связь может отличаться из-за трения, зазора, упора, перекоса или заклинивания;
- факт блокировки движения не определяет автоматически путь/величину новых реакций без модели соседних связей.

Guard:

- название детали не доказывает фактическую свободу движения;
- ручная/ненагруженная подвижность не доказывает ту же DOF под рабочей нагрузкой;
- отсутствие движения не равно доказанной идеальной жёсткой связи.

Используется в разделах 7, 10, 19–20.

## M5 — Ветвление и распределение реакций

Общая механика:

- равные реакции допустимы только при доказанных предпосылках модели;
- число неизвестных компонентов реакций сопоставляется с независимыми уравнениями и условиями связи;
- при недостатке условий распределение может зависеть от stiffness/жёсткости, зазоров, контакта, совместности деформаций и последовательности включения;
- три опоры не объявляются автоматически ни равнодолевыми, ни статически неопределимыми.

Guard:

- visual symmetry ≠ equal load share;
- равная геометрия ≠ равная stiffness/engagement;
- количество уравнений ≠ доказанный contact status / model closure;
- количество ветвей ≠ автоматическое деление нагрузки.

Используется в разделах 8–10, 19–21.

## M6 — Карта физических состояний удержания

Общая механика/физика без rating. Перечни — неполные причинные категории, не inspection/acceptance checklist:

- положительное геометрическое зацепление;
- фрикционное/клещевое удержание;
- магнитная цепь;
- вакуум/герметичность;
- grab/grab-bucket geometry/material interaction.

Guard:

- qualitative dependency ≠ holding-force calculation;
- проверены все факторы из урока ≠ complete holding verification;
- OEM/device-specific criteria остаются закрыты.

Используется в разделах 11–15, 19–21.

## M7 — Квазистатика и качественная динамика

Общая механика:

```text
ΣF = 0, ΣM = 0
```

только для объявленной квазистатической модели; при ускорении общая модель переходит к `ΣF = m·a`.

Guard:

- Lesson не вводит стандартные dynamic factors/load combinations;
- наличие динамики не даёт права выбирать коэффициент «по памяти»;
- малая/визуально спокойная скорость не доказывает пренебрежимость ускорений, удара, выборки слабины или вращательной динамики.

Используется в разделе 16 и алгоритме 19.

## M8 — Статус evidence и authority

Учебная дисциплина:

```text
наблюдение
→ учебная механическая модель
→ гипотеза конкретного объекта
→ formal proof / inspection / safe-use source
→ equipment decision
```

Guard:

```text
mechanically plausible
≠ formally proven
≠ inspection accepted
≠ operation authorized
```

И ни один положительный authority layer не «проталкивает» автоматически соседний: component proof ≠ whole-system proof; inspection ≠ safe-use plan; safe-use plan ≠ component/holding proof.

Используется в разделах 17–22.

---

## Claim-lock audit

Lesson v1 не вводит:

- численные hook proof/design limits;
- стандартные load factors/load combinations;
- WLL/SWL/capacity selection;
- численные side/tip/eccentric limits;
- holding-force/device-rating calculations;
- inspection/discard/load-test acceptance criteria;
- sling-design/rigging-plan authority;
- repair/NDT/return-to-service instructions;
- equipment-operation permission;
- reconstruction of paid normative tables.

## Language guard

Learner-facing текст:

- Russian-first;
- английские labels объясняются при первом появлении или являются необязательными;
- корректный русский технический эквивалент полностью принимается;
- source titles могут сохраняться в официальном английском названии как metadata.
