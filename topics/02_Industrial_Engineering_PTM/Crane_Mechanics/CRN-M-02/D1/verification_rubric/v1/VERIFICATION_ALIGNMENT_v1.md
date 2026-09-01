# CRN-M-02 / D1 Verification Rubric v1 — Alignment

## ER coverage

All ER-01…ER-10 have explicit 0–4 descriptors.

| ER | Observable competence | Known evidence | Unseen/Challenge evidence |
|---|---|---|---|
| ER-01 | Moving assembly | Practice A–H | U1 + C1 |
| ER-02 | Endpoints / attachment status | A, C, E, F, H | U1 + C1 |
| ER-03 | Rope path | A–C, E, F, H | U1 |
| ER-04 | Force-transfer map | B, C, E, F, H | U1 + C1 |
| ER-05 | Model status / stop | A, C, E, F, H | U1 + C1 |
| ER-06 | Ideal force model | C, D | C1 |
| ER-07 | Ideal kinematics / reciprocity | D, G | C1 when applicable |
| ER-08 | Components + claim limit | Lesson + A | U1 equipment-context prompts |
| ER-09 | Field boundary | C, D, G, H | U1 + optional C2 |
| ER-10 | Transfer | not closable by known cases | U1 + C1 required |

## Verification architecture

Required layers:

1. one known Practice case;
2. Unseen Transfer Test U1;
3. Challenge C1;
4. optional authority trap C2 for robustness / direct BF-06 test.

Known-case performance alone is insufficient.

## Non-compensable failures

Six blocking failures are explicit:

- BF-01 Block-count shortcut;
- BF-02 Dead-end deletion;
- BF-03 Formula-first;
- BF-04 Scalar-model overreach;
- BF-05 Invented numeric authority;
- BF-06 Comprehension-to-authority leap.

Any BF forces `D1 NOT VERIFIED` regardless of total score.

## Mandatory D1 core

For `D1 VERIFIED`:

- no BF;
- total score 30–35 or higher;
- ER-01…ER-05 >= 3;
- ER-08 >= 3;
- ER-09 >= 3;
- ER-10 >= 3;
- ER-06 >= 2;
- ER-07 >= 2;
- unseen U1 completed;
- Challenge C1 completed;
- required evidence package complete.

For `D1 ROBUST / TRANSFER`:

- total 36–40;
- ER-10 = 4;
- no BF.

## Unseen design rationale

U1 is not a duplicate of Practice A–H.

Its discriminating feature is an **inclined force-transferring rope leg with insufficient directional data**. A superficial `one moving block → n=2` shortcut must be rejected until the geometry is clarified.

Challenge C1 then supplies exactly the missing directional fact and tests whether the learner can legitimately move from:

```text
NOT YET DEMONSTRATED
```

to:

```text
SUPPORTED
```

without clinging to the previous answer.

## Evidence outputs

Minimum D1 evidence package remains:

1. `MOVING ASSEMBLY`;
2. `ENDPOINT / ATTACHMENT MAP`;
3. `ROPE PATH`;
4. `FORCE-TRANSFER MAP`;
5. `MODEL STATUS`;
6. `IDEAL MECHANICS CARD` only when supported;
7. `BOUNDED CONCLUSION / FIELD BOUNDARY`.

Verification adds:

8. `UNSEEN CASE RESPONSE`;
9. `CHALLENGE DELTA`;
10. scoring and BF sheets.

## Claim/source boundary

No new engineering acceptance number is introduced by the rubric.

Pedagogical score thresholds are assessment-policy values, not equipment criteria.

D/d, groove geometry, fleet-angle limits, real efficiency, equipment-specific reeving approval and acceptance criteria remain locked behind applicable standards/OEM/passport evidence.

## Final Alignment readiness

The next stage must verify exact traceability among:

```text
Lesson ↔ Practice ↔ Practice Reasoning ↔ ER-01…ER-10 ↔ Rubric ER-01…ER-10
```

and close any orphan or contradiction before Source Freshness / D1 Freeze.
