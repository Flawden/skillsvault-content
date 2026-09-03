# CRN-M-03 / D2 Expected Result v1 — Alignment

## Expected Result dimensions

| ID | Наблюдаемая компетенция | Основные known-case origins |
|---|---|---|
| ER-D2-01 | Граница системы по вопросу; локальный интерфейс не «отмывается» большой ССТ | A, J |
| ER-D2-02 | Полная ССТ: силы + реакции + materially relevant моменты | A, B, J |
| ER-D2-03 | Величина силы отделена от линии действия / статуса контактной результирующей | B, J |
| ER-D2-04 | ЦТ относится к выбранной системе, а не к геометрической догадке | C, J |
| ER-D2-05 | Loaded-state связи не наследуется из unloaded observation | D, J |
| ER-D2-06 | Задача load-share классифицируется до вычисления реакций | E, J |
| ER-D2-07 | Масса учитывается механически без универсальной capacity-арифметики | F, J |
| ER-D2-08 | Holding physics отделена от device rating / acceptance | G, J |
| ER-D2-09 | Установившаяся квазистатика отделена от переходного процесса | H, J |
| ER-D2-10 | Mechanics / formal proof / inspection / safe use / authority разделены | I, J |
| ER-D2-11 | Запрашиваются данные, реально различающие competing models | A–J |
| ER-D2-12 | Ограниченный model-status conclusion / корректный STOP | A–J |
| ER-D2-13 | Unseen transfer + пересборка после challenge | Verification stage only |

## Минимальный evidence package

1. `DECISION QUESTION / BODY MAP`;
2. `ССТ / FORCE-MOMENT MAP`;
3. `LINE-OF-ACTION / CONTACT-RESULTANT STATUS`;
4. `CG REGISTER`;
5. `CONSTRAINT / ACTIVE-CONTACT HYPOTHESES`;
6. `LOAD-SHARE STATUS`;
7. `HOLDING / MOTION MODEL STATUS`;
8. `EVIDENCE-ROLE / AUTHORITY MAP`;
9. `DISCRIMINATING EVIDENCE REQUEST`;
10. `BOUNDED CONCLUSION / STOP-HANDOFF`.

Русские названия артефактов полностью допустимы.

## Known-case policy

- Practice A–J обязательна для обучения, но не является transfer evidence.
- Practice Reasoning показывает non-exclusive reasoning paths, а не answer key.
- Case J является known integrated capstone, но **не закрывает ER-D2-13**.
- Verification обязан добавить U1 + C1.

## U1 + C1 transfer contract

U1 должен смешивать минимум три D2 uncertainty families: body/interface, line-of-action/CG, loaded articulation/contact, load share, holding-state, transition dynamics, evidence-role.

После первой модели C1 должен materially изменить минимум один evidence-status. Learner обязан показать, что сохраняется, а что пересобирается.

## Candidate Blocking-Failure policy

Сильные BF candidates (10): RF-D2-01…RF-D2-10.

Severity-review candidate (1): `RF-D2-11 — NON-DISCRIMINATING EVIDENCE REQUEST`.

Rubric принимает финальное решение о non-compensable статусе.

## Claim boundary

Expected Result не открывает numeric proof/load factors, WLL/SWL selection, holding ratings, inspection/discard/load-test criteria, rigging authority, repair/NDT или operation permission.
