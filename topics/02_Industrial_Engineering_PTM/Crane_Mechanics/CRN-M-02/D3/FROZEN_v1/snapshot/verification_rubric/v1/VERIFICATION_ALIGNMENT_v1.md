# CRN-M-02 / D3 Verification Rubric v1 — Alignment

## ER traceability

| ER | Known evidence | Rubric transfer evidence | Main failure pressure |
|---|---|---|---|
| ER-D3-01 | A, B, E, F, L | U1 case boundary + C1 window/applicability update | mixed case/time boundary |
| ER-D3-02 | A, C, D, L | U1 neutral signature + corrected mapping | observation contains cause |
| ER-D3-03 | A, E, F, L | U1 causal map + C1 link rebuild | one-factor story |
| ER-D3-04 | A, B, D, L | U1 competing H + H_data when justified | BF-D3-03 / BF-D3-10 |
| ER-D3-05 | A, C, D, H, L | U1 pre-evidence predictions | post-hoc unfalsifiable story |
| ER-D3-06 | A, C, D, L | U1 matrix + mandatory C1 matrix update | BF-D3-01 / BF-D3-11 |
| ER-D3-07 | C, D, L | U1/C1 applicability + observability | BF-D3-02 |
| ER-D3-08 | A, B, C, H, L | U1 next distinguishing datum | confirmatory-data loop |
| ER-D3-09 | B, E, G, K, L | U1 history/change bundle + C1 update | BF-D3-06 |
| ER-D3-10 | F, L | U1 transient uncertainty + C1 timestamp correction | BF-D3-04 |
| ER-D3-11 | H, K, L; all reasoning | U1 unknown/status + C1 rebuild | BF-D3-05 / BF-D3-09 |
| ER-D3-12 | I, J, L | U1 authority boundary; optional C2 | BF-D3-07 / BF-D3-08 |
| ER-D3-13 | known L is pattern only | mandatory U1 + C1 | BF-D3-11 / transfer failure |

## Blocking-failure lineage

All eleven BF originate in reviewed Lesson/Editorial/Red-Team/Expected-Result guards; none is invented only at scoring time.

| BF | Prior origin / rationale |
|---|---|
| BF-D3-01 | bounded support / closed-world guard |
| BF-D3-02 | observability before negative evidence |
| BF-D3-03 | falsifiable `H_data` |
| BF-D3-04 | `not measured ≠ zero` / dynamic rebuild |
| BF-D3-05 | sensitivity ≠ causal identification |
| BF-D3-06 | before/after change bundle / confounders |
| BF-D3-07 | question-specific evidence roles |
| BF-D3-08 | source → method → data → authority separation |
| BF-D3-09 | assumptions/unknown register discipline |
| BF-D3-10 | competing-model requirement |
| BF-D3-11 | mandatory evidence-linked update after challenge |

## Scoring contract

- 13 dimensions × 0–4 = 52 maximum.
- All dimensions must be >=3 for `D3 VERIFIED`.
- Any BF is non-compensable.
- Known A–L performance is insufficient.
- U1 and C1 are mandatory.
- `39–45` = VERIFIED only when every gate above is met.
- `46–52` = ROBUST / TRANSFER only with ER-D3-06, 08 and 13 at Level 4 plus at least one additional robustness dimension.

Score thresholds are pedagogical assessment policy and are not crane design/inspection/acceptance criteria.

## U1 non-duplication rationale

U1 combines rope-section mapping uncertainty, a shared route element, multilayer-spooling possibility, changed duty profile, uncertain transient timestamps, maintenance change bundle and source/authority lock. It is not a renaming of Practice L because the mandatory C1 explicitly corrects both mapping and event applicability and forces an evidence-linked re-ranking.

## Challenge rationale

C1 is not a trick-answer reveal. It intentionally weakens some evidence while leaving multiple mechanisms alive. The learner is assessed on disciplined update, not on guessing the examiner's preferred root cause.

## Claim / authority boundary

The rubric introduces no normative geometry limit, dynamic factor, proof load combination, fatigue/remaining-life value, discard criterion or equipment-specific intervention permission.

`D3 VERIFIED` is an educational competence state only.

## Final-alignment readiness

Final Alignment should trace:

```text
Lesson §§ / guards
↔ Practice A–L
↔ Reasoning A–L
↔ Expected Result ER-D3-01…13
↔ Rubric ER-D3-01…13
↔ BF-D3-01…11
↔ U1 + C1 evidence package
```

and confirm zero orphan competence, surprise BF or guard contradiction before freshness.
