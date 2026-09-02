# CRN-M-02 / D4 Expected Result v1 — Alignment

## Expected Result dimensions

| ID | Observable competence | Main Practice / Reasoning evidence |
|---|---|---|
| ER-D4-01 | Decision-question / claim-class decomposition before method | A, J; all cases require a decision question |
| ER-D4-02 | As-found / approved / calculation configuration separation | A, B, E, J |
| ER-D4-03 | Decision-driving input provenance + unknown discipline | A–J; strongest D, E, G, J |
| ER-D4-04 | Source/method applicability rather than source existence/prestige | A, D, H, J |
| ER-D4-05 | Smallest adequate model / fidelity selection without status inflation | C, E, G, J |
| ER-D4-06 | Boundary-value record + auditable parent→child interface | B, C, E, I, J |
| ER-D4-07 | Verification / cross-check / validation separation | C, E, F, I, J |
| ER-D4-08 | Common-mode error challenge + harmonized competing methods | F, I, J |
| ER-D4-09 | Decision-sensitive sensitivity / uncertainty | C, E, G, I, J |
| ER-D4-10 | Provenance-bounded robustness envelope | G, J |
| ER-D4-11 | Evidence-role separation: inspection/monitoring/classification/proof/life | A, H, I, J |
| ER-D4-12 | Value-of-information evidence request | A–J; explicit in Reasoning |
| ER-D4-13 | Bounded conclusion + stop/safety/authority handoff + audit trail | A–J; strongest J |
| ER-D4-14 | Unseen integrated transfer + mandatory adversarial update | Verification stage; known A–J/J capstone provide pattern only |

## Minimum visible evidence outputs

Verification should make visible:

1. `DECISION QUESTION / CLAIM CLASS MAP`;
2. `CONFIGURATION REGISTER`;
3. `BOUNDARY-VALUE / REQUESTED OUTPUT RECORD`;
4. `INPUT PROVENANCE + UNKNOWN REGISTER`;
5. `SOURCE / METHOD APPLICABILITY CARD(S)`;
6. `MODEL FIDELITY CARD`;
7. `PARENT → CHILD INTERFACE RECORD` when relevant;
8. `VERIFICATION / CROSS-CHECK / VALIDATION PLAN`;
9. `COMMON-MODE ERROR CHALLENGE`;
10. `SENSITIVITY / UNCERTAINTY TABLE`;
11. `ROBUSTNESS ENVELOPE + PROVENANCE`;
12. `EVIDENCE-ROLE MAP`;
13. `NEXT EVIDENCE / VALUE-OF-INFORMATION REQUEST`;
14. `BOUNDED CONCLUSION`;
15. `STOP / SAFETY / AUTHORITY HANDOFF`;
16. `AUDIT TRAIL`;
17. explicit update after challenge evidence.

## Coverage rationale

- Practice A–J spans the D4 method-governance spine without embedding worked solutions.
- Practice Reasoning gives multiple defensible expert paths and preserves `STOP / REQUEST EVIDENCE` as a valid outcome.
- Case J is an integrated **known** capstone, but it remains known content and cannot alone prove transfer.
- ER-D4-01…13 are traceable to reviewed Lesson + known Practice/Reasoning evidence.
- ER-D4-14 intentionally requires a new integrated case and a meaningful evidence-status update after the learner's first conclusion.

## Unseen transfer requirement

Known-case performance is insufficient.

Verification must include at least one unseen case combining several of:

```text
configuration ambiguity
+ source/branch applicability uncertainty
+ decision-driving input gap
+ transient/model-fidelity issue
+ parent/child interface
+ competing solver/method outputs
+ incomplete validation evidence
+ decision-sensitive uncertainty
+ inspection/monitoring evidence-role conflict
+ equipment/safety authority boundary
```

The unseen case must not be a trivial renaming of Practice J.

## Mandatory adversarial evidence-status challenge

After the learner commits to an initial method status / bounded conclusion, Verification supplies a meaningful new datum or withdraws an assumption.

Accepted challenge families include:

- approved configuration differs from as-found/calculation configuration;
- an input revision/source is corrected;
- formal-method branch applicability is withdrawn;
- measurement coverage/bandwidth is insufficient for the claimed state;
- two apparently independent methods share a common input/configuration error;
- validation evidence belongs to another state/time window;
- uncertainty/scenario range expands enough to flip the decision;
- evidence independence collapses because provenance is common;
- authority/safety obligation changes the allowed handoff.

The learner must update the affected chain:

```text
CONFIGURATION / INPUT STATUS
→ METHOD APPLICABILITY
→ V&V STATUS
→ SENSITIVITY / ROBUSTNESS
→ NEXT EVIDENCE
→ BOUNDED CONCLUSION
→ AUTHORITY HANDOFF
```

## Candidate blocking failures

Verification Rubric must define severity/non-compensability for at least:

1. BF-D4-01 QUESTION COLLAPSE;
2. BF-D4-02 CONFIGURATION COLLAPSE;
3. BF-D4-03 HIDDEN INPUT INVENTION;
4. BF-D4-04 SOURCE APPLICABILITY LEAP;
5. BF-D4-05 FIDELITY STATUS ERROR;
6. BF-D4-06 PARENT-CHILD BREAK;
7. BF-D4-07 CROSS-CHECK → VALIDATION LEAP;
8. BF-D4-08 COMMON-MODE BLINDNESS;
9. BF-D4-09 UNSOURCED ROBUSTNESS;
10. BF-D4-10 EVIDENCE-ROLE COLLAPSE;
11. BF-D4-11 AUTHORITY LEAK;
12. BF-D4-12 STOP-PERMISSION CONFUSION.

## Stop/escalation success condition

A bounded `STOP / REQUEST EVIDENCE`, `NOT DEMONSTRATED`, `METHOD NOT SHOWN APPLICABLE` or `SOURCE / OEM / SPECIALIST REQUIRED` can be a successful D4 outcome when:

- the blocking gap is explicit;
- no critical input is invented;
- the next evidence request has decision value;
- any already-established safety obligation is not delayed;
- equipment permission is not inferred from analysis stop.

## Claim/source boundary

Expected Result introduces no new normative threshold, coefficient, load combination, branch-selection value, fatigue/remaining-life number, acceptance/discard criterion or equipment-specific intervention authority.

D1/D2/D3 frozen content and `FROZEN_INDEX` remain immutable prerequisites.
