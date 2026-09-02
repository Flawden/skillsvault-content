# CRN-M-02 / D4 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`ea6eb5a1caaf1b24223bbb51adc26e0f1f52efd0`

Scope:
- 9 / 9 Parts
- 45 / 45 Blocks
- Technical Editorial Pass I complete
- D1/D2/D3 FROZEN untouched
- D4 kickoff/source gate untouched
- no closed normative tables reconstructed
- no actual component proof or equipment permission introduced

## Adversarial question

Assume a technically strong reader wants to obtain more certainty or authority than the evidence supports.

Can the lesson be abused so that:
- `UNKNOWN/PARTIAL` applicability becomes permission to calculate;
- an as-found rope path becomes approved configuration;
- a plausible simplified model overrides a governing source method;
- a correct value from a primary source is applied to the wrong method branch;
- parent-model credibility is inherited automatically by a child submodel;
- agreement of two models hides a shared wrong input;
- a hand-picked scenario envelope manufactures robustness;
- “no defect observed” becomes “defect absent”;
- an analytical stop becomes operational permission;
- a technical recommendation quietly becomes an equipment decision?

Pass I attacks exactly those promotions of evidence/status.

---

# Findings and corrections

## RT-D4-01 — `UNKNOWN / PARTIAL` applicability could be treated as “probably applicable”
**Severity:** HIGH
**Part:** I

Added:

```text
APPLICABILITY UNKNOWN / PARTIAL
≠
PERMISSION TO USE THE METHOD AS FORMAL PROOF
≠
PERMISSION TO MAKE THE EQUIPMENT DECISION
```

Applicability is a gate, not a confidence slider.

## RT-D4-02 — Field-observed configuration could be mistaken for approved configuration
**Severity:** CRITICAL
**Part:** II

Added explicit separation:

```text
OBSERVED / AS-FOUND CONFIGURATION
≠
APPROVED / DESIGN-CONFORMING CONFIGURATION
```

A discrepancy must stay visible and be escalated rather than silently selecting the convenient geometry.

## RT-D4-03 — Time-scale plausibility could override governing source load/proof requirements
**Severity:** HIGH
**Part:** III

Added:

```text
QUASI-STATIC PLAUSIBLE FOR A CHOSEN OUTPUT
≠
GOVERNING LOAD / PROOF METHOD SATISFIED
```

Model-form reasoning cannot delete source-required cases/combinations/factors.

## RT-D4-04 — A real primary-source value could still be used in the wrong branch
**Severity:** HIGH
**Part:** IV

Primary confirmation now requires matching definition, edition, object/configuration, units and conditional logic; “found the number in the standard” is not enough.

## RT-D4-05 — Parent-model status could be inherited automatically by a child submodel
**Severity:** HIGH
**Part:** V

Added:

```text
PARENT MODEL VALIDATED / VERIFIED
≠
CHILD SUBMODEL VALIDATED AUTOMATICALLY
```

Interface transforms must preserve domain, peaks/time ordering, uncertainty and limitations.

## RT-D4-06 — Two apparently independent models can share one common-mode failure
**Severity:** CRITICAL
**Part:** VI

Independence is now decomposed into implementation, input provenance, model form, data/measurement and criterion interpretation.

```text
TWO MODELS AGREE
≠
COMMON INPUT / COMMON INTERPRETATION ERROR EXCLUDED
```

## RT-D4-07 — A hand-picked scenario envelope could manufacture “robustness”
**Severity:** CRITICAL
**Part:** VII

The robustness record now requires envelope provenance/coverage.

```text
ROBUST ACROSS CHOSEN SCENARIOS
≠
ROBUST TO REAL-WORLD UNKNOWN UNMODELED STATES
```

## RT-D4-08 — “No defect observed” could become “defect absent”
**Severity:** CRITICAL
**Part:** VIII

Added explicit observability guard covering inspection scope/access, method capability, procedure, state, uncertainty and competence.

## RT-D4-09 — Analysis stop could be misread as permission to continue operation
**Severity:** CRITICAL
**Part:** IX

Added:

```text
ANALYSIS / PROOF STOPPED
≠
OPERATION PERMITTED UNTIL ANALYSIS FINISHES

CAUSE UNKNOWN
≠
APPLICABLE SAFETY ACTION MAY BE DELAYED
```

Analysis status and operational status are separate channels.

## RT-D4-10 — Technical recommendation could quietly become an equipment decision
**Severity:** HIGH
**Part:** IX

The final worksheet now requires decision owner and explicit decision status/basis/date. Technical recommendation remains non-authorizing until the applicable competent role records the decision.

---

# Whole-lesson Red-Team verdict

`PASS WITH CORRECTIONS APPLIED`

Most important invariant:

```text
OBSERVED ≠ APPROVED
PLAUSIBLE ≠ APPLICABLE
CONVERGED ≠ VERIFIED
TWO-MODEL AGREEMENT ≠ VALIDATED
ROBUST IN TESTED ENVELOPE ≠ ROBUST OUTSIDE IT
NO FINDING ≠ NO DEFECT
ANALYSIS STOP ≠ OPERATION PERMISSION
TECHNICAL RECOMMENDATION ≠ AUTHORIZED EQUIPMENT DECISION
```

## Frozen / source-boundary guards

- D1/D2/D3 FROZEN remain byte-identical.
- `FROZEN_INDEX` remains unchanged.
- D4 kickoff/source gate remains unchanged.
- No paid/closed normative table or coefficient was reconstructed.
- No actual source-bound proof, remaining-life verdict, discard/acceptance criterion, specialist NDT interpretation or equipment-specific intervention authority was introduced.

## Next

`CRN-M-02 / D4 READER EXPERIENCE PASS / PASS I / v1 — improve narrative flow, cognitive load and comprehension without weakening Red-Team/source/method/authority guards before practice`
