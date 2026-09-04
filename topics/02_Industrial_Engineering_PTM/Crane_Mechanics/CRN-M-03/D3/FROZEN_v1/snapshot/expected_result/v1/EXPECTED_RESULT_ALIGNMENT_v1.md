# CRN-M-03 / D3 Expected Result v1 — Alignment

## Назначение

Alignment связывает наблюдаемые Expected Result dimensions с уже принятыми Lesson / Practice / Practice Reasoning и Red-Team guards. Он не добавляет новый норматив и не превращает known cases в достаточное transfer evidence.

## Expected Result dimensions

| ID | Observable competence | Main known evidence | Lesson anchors | Main guard origins |
|---|---|---|---|---|
| ER-D3-01 | Observation / Inference / Unknown + case/state/time boundary | A, J | §§1–2, 23–25 | RT-D3-06/07/11 |
| ER-D3-02 | Causal chain with mechanical bridge | A, J | §§2, 10–15 | RT-D3-06/07 |
| ER-D3-03 | Mechanically distinct H + shared premises / hypothesis-space limit | B, J | §§3, 13, 20 | RT-D3-01/08 |
| ER-D3-04 | D2 model rebuild per H | B, H, J | §§4, 11–17 | RT-D3-01/08/10 |
| ER-D3-05 | Condition-matched falsifiable predictions | C, J | §§5–6, 20 | RT-D3-02/03 |
| ER-D3-06 | Observability / coverage before negative evidence | D, F, J | §§5–8, 18 | RT-D3-03/05 |
| ER-D3-07 | Evidence independence + discriminating-data plan | C, E, J | §§7, 19–20 | RT-D3-04 |
| ER-D3-08 | Whole model-set update without winner-by-elimination | B, C, E, J | §§20–21 | RT-D3-11 |
| ER-D3-09 | Present / transient / history + coverage discipline | F, J | §§8–9, 18 | RT-D3-05/06 |
| ER-D3-10 | Cause/consequence timing + engagement-sequence non-uniqueness | G, H, J | §§9, 12–13, 17 | RT-D3-07/08/09 |
| ER-D3-11 | Discriminating value separated from source authority | I, J | §§19, 22–23 | RT-D3-11/12 |
| ER-D3-12 | Bounded model status + safe STOP / handoff | I, J | §§21–23, 26 | RT-D3-12 + procedural safety lock |
| ER-D3-13 | Unseen transfer + rebuild after premise-changing challenge | Verification only; J is pattern, not closure | integrated §§1–26 | RT-D3-01…12 |

## Minimum visible evidence

Verification should make visible:

1. case / causal question;
2. Observation / Inference / Unknown;
3. system / state / time window;
4. causal chain;
5. mechanically distinct hypothesis cards;
6. shared premises + hypothesis-space limit;
7. D2 rebuild per significant H;
8. condition-matched predictions;
9. unexpected/change-my-mind criteria;
10. observability / history-coverage gate;
11. evidence-independence check;
12. distinguishing-data plan;
13. state / transient / history reconstruction;
14. cause/consequence/sequence timing check;
15. source role + discriminating value + authority;
16. bounded model status / STOP;
17. explicit rebuild after challenge evidence.

## Known-case mapping

- A closes observation/inference, post-service causation and unloaded-vs-loaded traps.
- B closes mechanical distinctness and common-mode premise visibility.
- C closes condition-matched prediction discipline.
- D closes observability-aware negative evidence.
- E closes circular evidence / independence.
- F closes current-state / transient / history and logger-coverage discipline.
- G closes cause-versus-consequence timing.
- H closes endpoint-versus-engagement-sequence non-uniqueness.
- I closes source-role / authority separation.
- J integrates the complete causal-diagnostic workflow but remains a known case.

## Unseen transfer requirement

Known A–J performance is insufficient for ER-D3-13.

Verification must supply at least one unseen integrated case containing several interacting trap families and then a **meaningful new datum that changes a key premise**.

The learner must update:

```text
REGISTER
→ SHARED PREMISES
→ D2 MODEL(S)
→ EVIDENCE STATUS
→ RELATIVE H RANKING
→ BOUNDED CONCLUSION / STOP
```

A memorized A–J structure without adaptive rebuild does not close transfer.

## Candidate blocking-failure lineage

Expected Result carries forward the 12 Practice Reasoning failure families as candidates:

1. BF-D3-01 common-mode premise blindness;
2. BF-D3-02 condition-mismatched discrimination;
3. BF-D3-03 observability-blind negative evidence;
4. BF-D3-04 circular evidence;
5. BF-D3-05 history-coverage leap;
6. BF-D3-06 post-event correlation → cause;
7. BF-D3-07 cause / consequence inversion;
8. BF-D3-08 unique-sequence invention;
9. BF-D3-09 post-event contact / holding promotion;
10. BF-D3-10 local sensitivity → global law;
11. BF-D3-11 relative ranking → confirmation;
12. BF-D3-12 authority stacking.

The next Verification Rubric, not this file, decides severity/non-compensability and scoring consequences.

A cross-cutting procedural safety gate remains mandatory: need for discriminating evidence never authorizes hazardous fault reproduction, overload, slip/jam, bypass, repair/adjustment/modification, specialist interpretation or operation permission.

## D3 / D4 boundary

D3 verifies causal discrimination, reconstruction and bounded model-status discipline.

Formal method selection/validation, quantitative error/sensitivity analysis, design/proof calculation, remaining-life modeling and equipment decision authority remain outside D3 when required by the case.

## Frozen / source boundary

No new numeric threshold, standard coefficient, equipment-specific limit or acceptance rule is introduced.

`CRN-M-01`, `CRN-M-02`, `CRN-M-03/D1`, `CRN-M-03/D2` and `status/FROZEN_INDEX.json` remain immutable.
