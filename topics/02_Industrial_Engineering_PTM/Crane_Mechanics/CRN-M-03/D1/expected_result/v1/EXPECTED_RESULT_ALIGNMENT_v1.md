# CRN-M-03 / D1 Expected Result v1 — Alignment

## Expected Result dimensions

| ID | Observable competence | Main known-case evidence |
|---|---|---|
| ER-D1-01 | Object / interface boundary | A, F, H, J |
| ER-D1-02 | Qualitative load-path topology incl. branch / merge | A, B, C, J |
| ER-D1-03 | Latch / seating / low-load evidence discipline | C, J |
| ER-D1-04 | Holding-principle classification at supported level | D, E, J |
| ER-D1-05 | Observation / unknown register; visible-state completeness guard | E, I, J |
| ER-D1-06 | Identity / interchangeability + whole-system boundary | F, H, J |
| ER-D1-07 | Source role + exact applicability | G, J |
| ER-D1-08 | History / nominal marking not promoted to current validation | H, I, J |
| ER-D1-09 | Discriminating evidence request + bounded STOP / authority handoff | A–J |
| ER-D1-10 | Unseen transfer | Verification stage only |

## Evidence outputs

Минимальный D1 evidence package:

1. `OBJECT / INTERFACE MAP`;
2. `LOAD-PATH MAP`;
3. `HOLDING PRINCIPLE`;
4. `OBSERVATION / UNKNOWN REGISTER`;
5. `IDENTITY / CONFIGURATION STATUS`;
6. `SOURCE-ROLE / EXACT-APPLICABILITY MAP`;
7. `DISCRIMINATING EVIDENCE REQUEST`;
8. `BOUNDED CONCLUSION / STOP-HANDOFF`.

## Known-case coverage

- Practice A–J даёт deliberate traps, но не считается transfer evidence само по себе.
- Practice Reasoning показывает multiple-valid-path handling и не является answer key, который можно воспроизвести по памяти.
- Case J — integrated known capstone, но **не закрывает ER-D1-10**.
- `STOP / REQUEST EVIDENCE` считается сильным outcome, если blocked claim и discriminating evidence сформулированы явно.

## Transfer requirement

Verification обязан дать минимум один unseen case U1, который комбинирует как минимум два D1 trap family и заставляет learner самостоятельно пройти:

```text
object / interface map
→ load-path topology
→ holding principle
→ observation / unknown register
→ source role / exact applicability
→ bounded conclusion
→ evidence request / STOP-handoff
```

U1 может корректно завершиться без field acceptance verdict.

## Candidate blocking-failure policy

Expected Result передаёт Rubric восемь сильных BF candidates:

1. object/authority collapse;
2. visual symmetry promoted to load claim;
3. latch/seating promoted to acceptance;
4. visible state promoted to complete verification;
5. interchangeability by appearance;
6. source-scope leap;
7. history promoted to current validation;
8. equipment-authority leak.

`SERIAL-PATH ASSUMPTION` и `HOLDING-PRINCIPLE COLLAPSE` остаются severity-review candidates: Rubric должен решить, когда они являются scoring defect, а когда non-compensable failure.

## Claim / source boundary

Expected Result не открывает численные hook proof/discard/holding-force/acceptance criteria и не создаёт equipment-operation authority.

Nomenclature, hook-specific proof, attachment-category scope, exact device OEM documentation и field authority остаются разными source roles.
