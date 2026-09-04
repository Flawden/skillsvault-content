# CRN-M-03 / D4 — Expected Result Alignment v1

## Purpose

Trace Practice A–J and Practice Reasoning semantics into 14 observable Expected Result dimensions.

## Matrix

| ER | Observable target | Primary Practice cases | Blocking semantics |
|---|---|---|---|
| 01 | question / claim decomposition | A, J | BF-01 |
| 02 | configuration versioning | B, J | BF-02 |
| 03 | input provenance / unknown discipline | A, B, C, D, E, J | BF-03 |
| 04 | source/component/method applicability | A, D, E, J | BF-04 |
| 05 | direct/conditional/excluded scope | D, J | BF-05 |
| 06 | C-hook/crane-hook/grab scope separation | E, J | BF-06 |
| 07 | smallest adequate fidelity / no status inflation | C, I, J | BF-07 |
| 08 | boundary-value + parent→child interface | B, E, I, J | BF-08 |
| 09 | verification/cross-check/validation | C, F, I, J | BF-09 |
| 10 | common-mode challenge / method harmonization | F, I, J | BF-10 |
| 11 | sensitivity / uncertainty / coverage | G, J | BF-11 |
| 12 | evidence roles / observability | H, I, J | BF-12 |
| 13 | value of information / bounded conclusion / authority | A, H, J | BF-13, BF-14 |
| 14 | unseen transfer + adversarial update | all prior as prerequisites | all BF semantics |

## Coverage assertions

- 10/10 Practice cases trace forward.
- 10/10 Practice Reasoning cases trace forward.
- 14/14 Practice Reasoning blocking-failure families survive as rubric candidates.
- Known-case performance is necessary but not sufficient.
- U1 unseen case is mandatory.
- C1 adversarial evidence-status challenge is mandatory.
- Correct STOP/handoff may be successful.
- No actual proof, remaining-life, inspection acceptance, NDT or operation authority is unlocked.

## M-03-specific guard trace

### ISO 17440
`Practice D/J → Reasoning D/J → ER-04/05 → future Rubric`.

### ISO 17096
`Practice E/J → Reasoning E/J → ER-06 → future Rubric`.

### Grab source gap
`Practice E/J → Reasoning E/J → ER-06/13/14`.

### Negative evidence observability
`Practice H/J → Reasoning H/J → ER-12/14`.

### Authority
`Practice A/H/J → Reasoning A/H/J → ER-13/14`.

## Verdict

`ALIGNED — READY FOR VERIFICATION RUBRIC`.
