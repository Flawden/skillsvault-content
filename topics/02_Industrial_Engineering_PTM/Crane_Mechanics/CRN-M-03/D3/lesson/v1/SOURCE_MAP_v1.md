# CRN-M-03 / D3 Lesson v1 — Source Map

## Назначение

Этот файл фиксирует source-role и claim boundaries причинно-диагностического урока. Основной learner-facing текст — Russian-first. Lesson использует общую механику D1/D2 и публично проверенные роли источников из D3 kickoff; закрытые нормативные методики не реконструируются.

## S1 — Frozen D1 / D2

`CRN-M-03 D1 FROZEN v1` и `CRN-M-03 D2 FROZEN v1`.

Роль:

- граница системы, интерфейс, силовой путь;
- ССТ, силы, моменты, ЦТ;
- loaded-state связей;
- load-share classification;
- holding-state physics;
- quasistatic/transient model status;
- source-role / bounded STOP.

D3 не изменяет frozen content и не повышает его authority.

## S2 — ISO 4306-1:2026

Роль: терминологический якорь. Не diagnostic/root-cause/acceptance authority.

Public metadata: https://www.iso.org/standard/78820.html

## S3 — ISO 17440:2014

Роль: formal-proof boundary для определённых forged steel hooks. Lesson не реконструирует proof tables, coefficients или limits. Plate hooks не переносятся в scope.

Public metadata: https://www.iso.org/standard/59758.html

## S4 — ISO 17096:2015

Роль: attachment safety/scope boundary. Public scope исключает slings, buckets, grabs, grab buckets и container spreaders. Поэтому причинная механика grab/grab-bucket в Lesson не получает ISO 17096 authority.

Public metadata: https://www.iso.org/standard/58103.html

## S5 — ISO 8686-1:2012

Роль: boundary к formal load/load-combination method. На kickoff находится в watchlist как Published / stage 90.60 / under review. Standard-derived factors не воспроизводятся.

Public metadata: https://www.iso.org/standard/59417.html

## S6 — ISO 9927-1:2013

Роль: inspection evidence boundary. Observation/causal model не становится inspection acceptance/discard verdict.

Public metadata: https://www.iso.org/standard/51102.html

## S7 — ISO 12480-1:2024

Роль: safe-use/planning boundary. D3 не превращает гипотезу в lift plan или permission to operate.

Public metadata: https://www.iso.org/standard/83637.html

## S8 — ISO 4301-1:2016

Роль: service-history/classification context. Используется только для дисциплины `history is a distinct evidence layer`. Classification всего крана не переносится автоматически на duty конкретного съёмного attachment.

Public metadata: https://www.iso.org/standard/63070.html

## S9 — ISO 12482:2014 + ISO/CD 12482 Ed2

Роль: long-term monitoring/history context и watchlist boundary. D3 не выводит remaining life, fatigue verdict или probability of failure.

Public metadata:

- https://www.iso.org/standard/57481.html
- https://www.iso.org/standard/91046.html

## S10 — ФНП ПС №461

Роль: российская regulatory/inspection/operational boundary. Lesson не воспроизводит закрытые/численные criteria и не выдаёт эксплуатационный verdict.

Public reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

## S11 — OEM / passport / actual-device / service records

Роль:

- exact configuration;
- loaded-state claims конкретного изделия, если это документировано;
- history/service records;
- device-specific ratings, procedures и limits;
- equipment-specific diagnostic/inspection/maintenance authority.

Lesson не угадывает отсутствующие OEM данные и не публикует proprietary content.

---

## M1 — Observation / inference / unknown separation

Учебная causal discipline. Наблюдение фиксируется до механической причины. Используется в разделах 1–3, 20–25.

Guard: `symptom ≠ cause`.

## M2 — Competing mechanisms

Общая диагностическая логика: при неуникальности строятся несколько механически совместимых гипотез. Каждая должна иметь отдельную D2-модель. Используется в разделах 3–6, 10–17.

Guard: `one plausible model ≠ unique model`.

## M3 — Falsifiable / discriminating predictions

Гипотеза должна давать признаки, которые отличают её от альтернативы. Используется в разделах 5–7, 19–20.

Guard: hazardous fault reproduction forbidden.

## M4 — State / transient / history separation

Текущее состояние, переходное событие и накопленная история не смешиваются. Используется в разделах 8–9, 17–18.

Guard: `normal now ≠ no transient event`; history ≠ remaining life.

## M5 — D2 model rebuild per hypothesis

Для конкурирующих причин заново проверяются body, ССТ, contact state, line of action, ЦТ, loaded DOF и load-share class. Используется в разделах 4, 10–14.

Guard: equations closing ≠ causal model proven.

## M6 — Holding-state causal families

Qualitative dependencies only for geometric, friction/clamp, magnet, vacuum, grab/grab-bucket mechanisms. Используется в разделе 15.

Guard: causal dependency ≠ rating/inspection acceptance.

## M7 — Qualitative sensitivity

Разрешено говорить о направлении изменения механического эффекта без численного допуска. Используется в разделе 16.

Guard: sensitivity direction ≠ allowable limit.

## M8 — Evidence update and model status

Новое evidence требует пересборки затронутой модели и явного изменения статуса. Используется в разделах 19–23.

Guard: OEM fact / inspection finding / formal proof do not cross-promote authority roles.

---

## Claim-lock audit

Lesson v1 не вводит:

- numeric hook proof/design values;
- standard dynamic/load-combination factors;
- WLL/SWL/capacity selection or derating;
- numeric side/tip/eccentric limits;
- fatigue/remaining-life/probability verdicts;
- holding-force/device-rating calculations;
- inspection/discard/load-test acceptance criteria;
- specialist NDT interpretation;
- hazardous diagnostic experiments;
- repair/adjustment/redesign/return-to-service instructions;
- root-cause confirmation from one symptom;
- equipment-operation permission;
- paid normative table reconstruction.
