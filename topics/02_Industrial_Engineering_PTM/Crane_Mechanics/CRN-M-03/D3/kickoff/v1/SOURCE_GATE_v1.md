# CRN-M-03 / D3 — Source Gate v1

## Решение

**PASS WITH CLAIM LIMITS**

D3 Lesson Authoring разблокирован для причинно-диагностического reasoning: symptom-to-mechanism maps, competing hypotheses, falsifiable predictions, qualitative sensitivity, state/history separation, evidence discrimination и bounded model-status handoff.

Numeric proof/design/rating/remaining-life/acceptance criteria, specialist diagnostic interpretation, root-cause authority и equipment-operation decisions остаются закрыты.

Проверено: **2026-09-03**.

## 1. ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

Публичные данные ISO:

- Edition 5;
- published 2026-07;
- status: Published;
- stage 60.60.

Роль D3: терминология кранов, компонентов и общих понятий. Это не diagnostic/proof/acceptance authority.

Public metadata: https://www.iso.org/standard/78820.html

## 2. ISO 17440:2014

`Cranes — General design — Limit states and proof of competence of forged steel hooks`

Публичные данные ISO:

- Edition 1;
- status: Published / Confirmed;
- stage 90.93;
- public scope covers defined forged steel point-hook bodies and machined shanks; plate hooks are not covered;
- document belongs to formal limit-state/proof context.

Роль D3: **formal hook proof boundary**. D3 может использовать наблюдаемую геометрию/линию действия/loaded-state как competing-mechanism evidence, но не превращает это в proof-of-competence или допустимый предел.

Public metadata: https://www.iso.org/standard/59758.html

## 3. ISO 17096:2015

`Cranes — Safety — Load lifting attachments`

Публичные данные ISO:

- Edition 1;
- status: Published / Confirmed;
- stage 90.93;
- public scope lists plate clamps, vacuum lifters, lifting magnets, lifting/spreader beams, C-hooks, lifting forks and clamps;
- public scope explicitly excludes slings, buckets, grabs, grab buckets and container spreaders.

Роль D3: attachment-category/safety boundary and evidence-role anchor for covered device families.

Жёсткий guard: причинную механику grab/grab-bucket разрешено обсуждать концептуально, но ISO 17096 нельзя использовать как их acceptance/root-cause authority.

Public metadata: https://www.iso.org/standard/58103.html

## 4. ISO 8686-1:2012

`Cranes — Design principles for loads and load combinations — Part 1: General`

Публичные данные ISO:

- Edition 2;
- status: Published;
- public page currently shows stage 90.60 / under review;
- public abstract places kinetic/elastostatic analysis and load/load-combination methods in formal proof-of-competence context.

Роль D3: **formal dynamic/load-method boundary**. D3 может reason qualitatively about acceleration, inertia, sequence and transient load-path changes, но не воспроизводит standard dynamic factors/load combinations.

Watchlist: recheck before D3 Freeze.

Public metadata: https://www.iso.org/standard/59417.html

## 5. ISO 9927-1:2013

`Cranes — Inspections — Part 1: General`

Публичные данные ISO:

- Edition 3;
- status: Published / Confirmed;
- stage 90.93;
- current public page records confirmation in 2023.

Роль D3: **inspection-evidence boundary**. Inspection finding может быть входом causal analysis, но D3 не превращает его автоматически в root cause, discard/acceptance или return-to-service verdict.

Public metadata: https://www.iso.org/standard/51102.html

## 6. ISO 12480-1:2024

`Cranes — Safe use — Part 1: General`

Публичные данные ISO:

- Edition 2;
- published 2024-08;
- status: Published;
- stage 60.60;
- public abstract frames safe use through planning, selection, operation, maintenance and personnel roles.

Роль D3: **safe-use/planning authority boundary**. Diagnostic reasoning does not itself authorize a lift, continued operation, field test or modification.

Public metadata: https://www.iso.org/standard/83637.html

## 7. ISO 4301-1:2016

`Cranes — Classification — Part 1: General`

Публичные данные ISO:

- Edition 3;
- status: Published / Confirmed;
- stage 90.93;
- public abstract ties classification to service conditions including cycles, load spectrum and average displacement.

Роль D3: **history/duty evidence concept** — показывает, что накопленная эксплуатационная история является отдельным типом данных и не равна одному текущему наблюдению.

Жёсткий guard: классификацию/историю всего крана нельзя автоматически объявлять классификацией или фактической duty-history конкретного съёмного грузозахватного устройства.

Public metadata: https://www.iso.org/standard/63070.html

## 8. ISO 12482:2014

`Cranes — Monitoring for crane design working period`

Публичные данные ISO:

- Edition 1;
- status: Published;
- stage 90.92 / to be revised;
- public abstract distinguishes long-term actual duty from original design duty and links monitoring to inspection focus;
- applicability is to defined cranes and is not a generic attachment-life standard.

Роль D3: **long-term history/monitoring boundary**. Он поддерживает учебное различение present-state evidence и accumulated history, но не даёт remaining-life verdict для крюка/захвата и не переносится автоматически на съёмное устройство.

Watchlist: current published authority remains in place while revision is in development; recheck before D3 Freeze.

Public metadata: https://www.iso.org/standard/57481.html

## 9. ISO/CD 12482 — Edition 2

`Cranes — Monitoring for crane design working period`

Публичные данные ISO:

- Committee Draft;
- under development;
- stage 30.20;
- intended to replace ISO 12482:2014.

Роль D3: **watchlist only**. Не является текущей normative authority и не используется для learner verdicts.

Public metadata: https://www.iso.org/standard/91046.html

## 10. ФНП ПС №461

`Приказ Ростехнадзора от 26.11.2020 №461`.

Проверено 2026-09-03:

- current edition: 16.04.2026;
- действует до 01.09.2032;
- задаёт обязательные российские границы эксплуатации, проверки состояния/дефектации грузозахватных приспособлений, ремонта и организации работ.

Роль D3: **Russian regulatory/inspection/operational authority boundary**.

D3 причинная модель не подменяет обязательную процедуру и не разрешает самостоятельно проводить диагностический эксперимент, ремонт, испытание или продолжение работы.

Reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

## 11. Passport / OEM / actual-device / service records

Для реального изделия могут потребоваться:

- exact identity/configuration and approved interfaces;
- масса/центр тяжести, geometry and allowed orientations;
- loaded-state articulation/rotation restrictions;
- holding principle and device-specific conditions;
- event logs, fault codes, maintenance/replacement history where available;
- inspection/test records and specialist reports;
- permitted diagnostic procedures, limits and operating restrictions.

Роль D3: **equipment-specific and historical evidence authority**.

Отсутствие точной документации остаётся `UNKNOWN`; D3 не реконструирует её по похожему устройству.

## D3 authoring guards

D3 MUST NOT invent/generalize:

- root cause from one symptom or one compatible model;
- standard dynamic factors/load combinations;
- numeric hook proof/stress/fatigue/remaining-life criteria;
- numeric side/tip/eccentric or device holding limits;
- WLL/SWL/capacity derating or selection;
- attachment duty/history from crane classification alone;
- current condition from historical success or a current normal reading;
- inspection/discard/load-test thresholds;
- NDT/MRT/specialist interpretation;
- device-specific diagnostic test procedures;
- repair/adjustment/redesign/modification instructions;
- permission to intentionally reproduce a fault, overload, slip, shock, jam or bypass safety functions;
- permission to operate/continue/return to service.

D3 MAY teach dependency, competing causal models, falsifiable predictions, qualitative sensitivity, evidence discrimination, uncertainty register and bounded STOP/escalation.

## Языковой guard

Learner-facing D3 — **Russian-first**. Английские термины допустимы только после понятного русского смысла либо как необязательные labels. Русские технические эквиваленты полностью принимаются.

## Watchlist

1. `ISO 8686-1:2012` — Published, stage 90.60 / under review.
2. `ISO 12482:2014` — Published, stage 90.92 / to be revised.
3. `ISO/CD 12482` Edition 2 — under development, stage 30.20; watch only.

## Итог

Набор источников достаточен для безопасного D3 causal-diagnostic lesson при явных proof/rating/remaining-life/inspection/specialist/OEM/operation locks.

**D3 SOURCE GATE = COMPLETE / PASS WITH CLAIM LIMITS.**
