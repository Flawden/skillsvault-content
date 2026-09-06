# CRN-M-04 / D1 Expected Result v1 — Alignment

## Expected Result dimensions

| ID | Observable competence | Main known-case evidence |
|---|---|---|
| ER-D1-01 | System / authority boundary | A, J |
| ER-D1-02 | Drive-path topology separated from operating state | A, B, J |
| ER-D1-03 | Ratio / actual torque / permissible torque separation | C, J |
| ER-D1-04 | Reducer family recognition without exact design/rating completion | D, J |
| ER-D1-05 | Coupling function / identity / alignment / interchangeability separation | E, F, J |
| ER-D1-06 | Condition + lubrication evidence discipline without diagnosis/acceptance | G, H, J |
| ER-D1-07 | Source role + exact applicability | F, G, H, I, J |
| ER-D1-08 | Historical / old-document status separated from current configuration | C, I, J |
| ER-D1-09 | Discriminating evidence + bounded STOP / authority handoff | A–J |
| ER-D1-10 | Unseen transfer | Verification stage only |

## Evidence outputs

Минимальный D1 evidence package:

1. `SYSTEM / AUTHORITY MAP`;
2. `DRIVE-PATH / CLAIM-STATUS MAP`;
3. `KINEMATIC / TORQUE STATUS`;
4. `REDUCER / COUPLING FAMILY + EXACT-IDENTITY STATUS`;
5. `CONDITION / LUBRICATION EVIDENCE REGISTER`;
6. `SOURCE-ROLE / EXACT-APPLICABILITY MAP`;
7. `DISCRIMINATING EVIDENCE REQUEST`;
8. `BOUNDED CONCLUSION / STOP-HANDOFF`.

## Known-case coverage

- Practice A–J создаёт deliberate traps, но не является transfer proof.
- Practice Reasoning показывает multiple-valid-path reasoning и не является единым answer key.
- Case J — known integrated capstone, но он **не закрывает ER-D1-10**.
- Bounded STOP / evidence request может быть успешным outcome, если learner показывает blocked claim и discriminating evidence.

## Transfer requirement

Verification должен дать минимум один unseen case U1, который сочетает не менее трёх M-04 D1 trap families и заставляет learner самостоятельно пройти:

```text
system / authority boundary
→ drive-path + claim-status map
→ topology / operating-state separation
→ family / exact-identity separation
→ source role / exact applicability
→ discriminating evidence
→ bounded conclusion / STOP-handoff
```

U1 не обязан иметь field acceptance answer.

## Candidate blocking-failure policy

Expected Result передаёт Rubric десять сильных BF candidates:

1. boundary leakage;
2. topology promoted to operating state;
3. ratio promoted to actual/rated torque;
4. coupling flexibility promoted to alignment acceptance;
5. family standard promoted to interchangeability;
6. lubricant source promoted to installed/substitution claim;
7. symptom/damage term promoted to root cause/acceptance;
8. document title promoted to exact applicability;
9. old data promoted to current configuration;
10. equipment-authority leak.

`FAMILY → EXACT IDENTITY / RATING` и `UNKNOWN → CONVENIENT NOMINAL ASSUMPTION` остаются severity-review candidates; Rubric должен определить, когда это scoring defect, а когда non-compensable failure.

## Claim / source boundary

Expected Result не открывает numerical gear rating, reducer/coupling selection, alignment limits, lubricant substitution, condition acceptance, diagnosis, repair или operational authority.

General standards, exact OEM/device records и competent equipment decisions остаются разными source / authority roles.
