# CRN-M-03 / D4 — Practice Alignment v1

## Назначение

Показать, что 10 кейсов A–J покрывают весь D4 Lesson, Technical Editorial, Red Team и Reader Experience contract без answer key.

## Alignment matrix

| Case | Primary D4 target | Lesson Parts | Key guard |
|---|---|---|---|
| A | question / claim / method governance | I, IX | one assembly ≠ one question/method/authority |
| B | boundary-value / configuration provenance | II | as-found ≠ approved |
| C | model fidelity / adequacy | III, VI | verified quasi-static ≠ transient adequacy/formal proof |
| D | forged-hook source applicability | IV | primary value ≠ correct branch/applicability |
| E | grab hierarchy / source gap | V, IV | ISO 17096 ≠ grab authority |
| F | V&V / common-mode error | VI | two models agree ≠ shared inputs correct |
| G | sensitivity / uncertainty / coverage | VII | tested envelope ≠ global robustness |
| H | inspection / monitoring / life boundary | VIII | no defect observed ≠ remaining life |
| I | competing methods / harmonization | V, VI, VIII, IX | disagreement ≠ one method wrong |
| J | full D4 synthesis / authority handoff | I–IX | technical review ≠ authorized equipment decision |

## Contract coverage

### Question / method governance
Cases A, D, J.

### Configuration / boundary lock
Cases B, C, E, J.

### Hook proof applicability
Cases D, J.

### Grab source-gap governance
Cases E, G, J.

### Parent / child / component model hierarchy
Cases E, I, J.

### Verification / cross-check / validation
Cases C, F, I, J.

### Sensitivity / uncertainty / coverage
Cases G, J.

### Inspection / monitoring / remaining-life boundary
Cases H, I, J.

### Source / method conflict and harmonization
Cases A, I, J.

### Bounded authority handoff
Cases A, H, J.

## Red-Team guard coverage

- `PRELIMINARY MATCH ≠ FINAL APPLICABILITY` — A, D, J
- `OBSERVED ≠ APPROVED` — B, J
- `MODEL FORM SUFFICIENT ≠ GOVERNING METHOD SATISFIED` — C, J
- `CONDITIONAL EXTENSION ≠ AUTOMATIC APPLICABILITY` — D
- `ISO 17096 C-HOOK COVERAGE ≠ CRANE HOOK-SUSPENSION PROOF` — E
- `ISO 17096 ≠ GRAB / GRAB-BUCKET AUTHORITY` — E, J
- `TWO MODELS AGREE ≠ COMMON-MODE ERROR EXCLUDED` — F
- `ROBUST IN ENVELOPE ≠ GLOBALLY ROBUST` — G
- `NO DEFECT OBSERVED ≠ DEFECT ABSENT` — H
- `NO EVENT LOGGED ≠ EVENT DID NOT OCCUR` — H
- `ANALYSIS STOPPED ≠ OPERATION PERMITTED` — H, J
- `TECHNICAL RECOMMENDATION ≠ AUTHORIZED EQUIPMENT DECISION` — A, J

## Answer-key separation

Practice intentionally contains:
- problem statements;
- required artifacts;
- traps / guard statements;
- review packet contract.

Practice intentionally does **not** contain:
- worked solution;
- canonical reasoning path;
- case-by-case correct final status;
- scoring rubric.

Those belong to later D4 stages:
`PRACTICE REASONING → EXPECTED RESULT → VERIFICATION RUBRIC`.

## Verdict

`ALIGNED — 10/10 CASES`

All 9 lesson Parts are exercised.

D1/D2/D3 frozen boundaries remain unchanged.
