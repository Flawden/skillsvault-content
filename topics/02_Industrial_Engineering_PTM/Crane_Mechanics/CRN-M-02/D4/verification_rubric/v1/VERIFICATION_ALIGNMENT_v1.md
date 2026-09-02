# CRN-M-02 / D4 Verification Rubric v1 — Alignment

## ER traceability

| ER | Known evidence | Rubric transfer evidence | Main failure pressure |
|---|---|---|---|
| ER-D4-01 | A, J | U1 question map + C1 claim remap | BF-D4-01 |
| ER-D4-02 | A, B, E, J | U1 configuration register + C1 invalidation | BF-D4-02 |
| ER-D4-03 | A–J; strongest D/E/G/J | U1 input register + shared-workbook correction | BF-D4-03 |
| ER-D4-04 | A, D, H, J | U1 source/method card + C1 current-case mapping change | BF-D4-04 |
| ER-D4-05 | C, E, G, J | U1 model-fidelity rationale + challenge response | BF-D4-05 |
| ER-D4-06 | B, C, E, I, J | U1 parent/child record + C1 config/load invalidation | BF-D4-06 |
| ER-D4-07 | C, E, F, I, J | U1 V&V plan + C1 validation/independence downgrade | BF-D4-07 |
| ER-D4-08 | F, I, J | U1 common-mode challenge + shared workbook reveal | BF-D4-08 |
| ER-D4-09 | C, E, G, I, J | U1 uncertainty table + C1 decision-sensitive update | BF-D4-03/09 |
| ER-D4-10 | G, J | U1 robustness envelope + C1 out-of-envelope evidence | BF-D4-09 |
| ER-D4-11 | A, H, I, J | U1 role map + monitoring/inspection limits | BF-D4-10 |
| ER-D4-12 | A–J Reasoning | U1 VOI plan + C1 reprioritization | confirmatory-analysis loop |
| ER-D4-13 | A–J; strongest J | U1 bounded conclusion/handoff + C1 update | BF-D4-11/12 |
| ER-D4-14 | known J is pattern only | mandatory U1 + C1 | transfer/update failure |

## Blocking-failure lineage

All twelve BF originate in reviewed D4 Lesson / Technical Editorial / Red Team / Practice Reasoning / Expected Result guards; none is invented only at scoring time.

| BF | Prior origin / rationale |
|---|---|
| BF-D4-01 | question/claim class before method |
| BF-D4-02 | observed ≠ approved; configuration register |
| BF-D4-03 | unknown/input provenance discipline |
| BF-D4-04 | public/source existence ≠ current applicability |
| BF-D4-05 | model fidelity ≠ validation status |
| BF-D4-06 | parent→child interface / load provenance |
| BF-D4-07 | cross-check ≠ validation |
| BF-D4-08 | two models may share one wrong input/configuration |
| BF-D4-09 | robustness only inside sourced scenario envelope |
| BF-D4-10 | inspection/monitoring/proof/life/authority roles separate |
| BF-D4-11 | technical recommendation ≠ equipment authority |
| BF-D4-12 | analysis stop ≠ operation permitted |

## Scoring contract

- 14 dimensions × 0–4 = 56 maximum.
- Every dimension must be >=3 for `D4 VERIFIED`.
- Any BF is non-compensable.
- Known Practice/Reasoning A–J is required but insufficient.
- U1 and C1 are mandatory.
- 42–49 can be `D4 VERIFIED` only when every gate above passes.
- 50–56 can be `D4 ROBUST / TRANSFER` only when ER-D4-04, 07, 08, 10, 13 and 14 are Level 4 plus at least two additional Level-4 dimensions.
- Correct `STOP / REQUEST EVIDENCE` is not a low score when it is the strongest evidence-supported result.

Score thresholds are pedagogical assessment policy, not design/inspection/acceptance criteria.

## U1 non-duplication rationale

Practice J is an existing-operation mixed-evidence capstone around unstable spooling and an urgent request to continue operation. U1 is a **prospective operating-profile change** where apparently agreeing legacy/global and local models are being used to justify a new regime. Its decisive pressure is the provenance/independence of the models and whether old configuration/method evidence can be promoted to the proposed state.

## C1 rationale

C1 is not a trick reveal of a preferred answer. It authenticates two facts that directly test the method-governance claims already taught:

1. current approved configuration differs from the configuration underlying both model packages;
2. both models share a decision-driving peak-tension value from one legacy workbook.

This forces observable updates in configuration, input provenance, independence/common-mode status, parent/child applicability, V&V, robustness and bounded conclusion.

## Claim / authority boundary

The rubric introduces no normative geometry limit, dynamic factor, proof load combination, fatigue/remaining-life value, discard criterion, NDT verdict or equipment-specific permission.

`D4 VERIFIED` is an educational competence state only.

## Final-alignment readiness

Final Alignment should trace:

```text
D4 Lesson 9 parts / 45 blocks
↔ Technical Editorial + Red Team + Reader Experience guards
↔ Practice A–J
↔ Practice Reasoning A–J
↔ Expected Result ER-D4-01…14
↔ Rubric ER-D4-01…14
↔ BF-D4-01…12
↔ U1 + C1 evidence package
```

and confirm zero orphan competence, surprise BF, source/method-role drift or authority contradiction before source freshness.
