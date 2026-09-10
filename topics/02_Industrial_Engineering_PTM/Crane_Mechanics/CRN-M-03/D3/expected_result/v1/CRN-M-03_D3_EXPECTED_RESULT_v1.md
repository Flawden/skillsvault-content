# CRN-M-03 — Крюковые подвески и захваты
# D3 Expected Result v1

## Назначение

Expected Result фиксирует наблюдаемый профиль причинно-диагностического анализа.

D3 проверяет не способность назвать единственную причину, а способность:
- отделять observation от inference;
- строить конкурирующие механические гипотезы;
- использовать D2-модель как ограничение;
- выбирать различающее evidence;
- обновлять статус гипотез при новых данных;
- завершать анализ ограниченным выводом.

Успешные результаты могут включать:

- SUPPORTED CAUSAL MODEL — BOUNDED
- PLAUSIBLE — DISTINGUISHING DATA REQUIRED
- ALTERNATIVE NOT EXCLUDED
- MODEL INVALIDATED BY EVIDENCE
- SOURCE / OEM / SPECIALIST REQUIRED
- NOT YET DEMONSTRATED

D3 не является:
- root-cause certification;
- разрешением эксплуатации;
- решением ремонта;
- инспекционным заключением;
- design verification.

## Формула результата

OBSERVATION
→ INFERENCE / UNKNOWN
→ COMPETING HYPOTHESES
→ D2 MODEL CONSTRAINT
→ PREDICTION
→ EVIDENCE CHECK
→ UPDATE
→ BOUNDED CONCLUSION

## ER-D3-01

Ученик фиксирует causal question, system boundary, mode/state и time window до выбора причины.

Evidence output:

CAUSAL QUESTION:
...

SYSTEM:
...

MODE / STATE:
...

TIME WINDOW:
...

PRESENT SNAPSHOT:
...

RELEVANT HISTORY:
...

## ER-D3-02 — ER-D3-13

Ожидаемые результаты должны демонстрировать:
- нейтральное описание признака;
- карту причинных переменных;
- независимые гипотезы;
- проверяемые predictions;
- evidence matrix;
- observability check;
- distinguishing data;
- unknown register;
- source/authority boundary;
- перенос на unseen case;
- обновление после challenge evidence.

## Claim boundary

OBSERVATION ≠ HYPOTHESIS ≠ CONFIRMED ROOT CAUSE ≠ REPAIR ≠ OPERATION PERMISSION
