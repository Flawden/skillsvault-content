# CRN-M-03 / D4 — Source Gate v1

## Decision

**PASS WITH CLAIM LIMITS**

D4 lesson authoring is unlocked for expert/reference method selection, exact component/scope applicability, boundary/input validation, model verification/validation, sensitivity/error analysis, competing-method comparison and audit-trail discipline.

Closed normative coefficients/tables, equipment-specific proof results, grab holding/proof values, numeric remaining-life verdicts, acceptance/discard criteria and design/inspection/operation authority remain locked unless the exact applicable source, inputs and authority are demonstrably available.

Verified on: **2026-09-04**.

## Primary source roles

### 1. ISO 4306-1:2026
Current terminology and component/question boundary. Edition 5, Published.

### 2. ISO 17440:2014
Primary topic-specific formal proof-method boundary for forged steel point hooks and relevant shanks.
It uses the limit-state framework associated with ISO 8686-1.
D4 MAY teach applicability, input/provenance needs, model/check architecture and why D1–D3 mechanics is not itself proof.
D4 MUST NOT reconstruct closed proof coefficients/tables/limits.

### 3. ISO 17096:2015
Attachment safety scope boundary.
Critical D4 rule:

```text
C-HOOK LISTED IN ISO 17096
!=
CRANE HOOK SUSPENSION PROOF AUTHORITY

ISO 17096
EXPLICITLY EXCLUDES
BUCKETS / GRABS / GRAB BUCKETS
```

Therefore this source is partly a **negative applicability anchor** for M-03.

### 4. ISO 10972-1:2025
Mechanism requirements/layout/component-selection boundary.
Public scope explicitly distinguishes such requirements from proof-of-competence calculations for yield/fatigue/wear.

### 5. ISO 8686-1:2012
Load/load-combination/model-fidelity boundary.
Published, currently under review at stage 90.60.
No source-bound load factor or combination is reconstructed from metadata.

### 6. ISO 20332:2016
General steel-structure limit-state proof boundary.
Component mapping is mandatory.
It is not automatically substituted for ISO 17440 on forged hook bodies and does not automatically govern every grab component.

### 7. ISO 9927-1:2013
Inspection-method/evidence boundary.
Inspection evidence may validate/challenge/prioritize a model; inspection scope is not design proof.

### 8. ISO 12480-1:2024
General safe-use/operation authority boundary.

### 9. ISO 12480-5:2026
Bridge/gantry safe-use context when the actual crane belongs to that class.
Not a universal hook/grab proof source.

### 10. ISO 4301-1:2016
Duty/classification input boundary.
Classification context does not itself become remaining-life proof.

### 11–12. ISO 12482:2014 + ISO/CD 12482 Edition 2
Published design-working-period monitoring source plus development watchlist record.
Draft Edition 2 is not current normative authority.

### 13. ФНП ПС №461
Russian mandatory authority boundary.
Current public reference is редакция 16.04.2026, validity through 01.09.2032.

### 14. Passport / OEM / designer / actual-device records
Required for actual geometry, materials, configuration, permitted alternatives, service history, equipment-specific methods/limits and authority.

## Method-validation gate

SkillsVault may teach this **non-normative engineering scaffold**:

```text
QUESTION / OUTPUT
→ COMPONENT + SYSTEM BOUNDARY
→ METHOD CANDIDATES
→ SOURCE / SCOPE APPLICABILITY
→ BOUNDARY CONDITIONS
→ INPUTS + PROVENANCE
→ IMPLEMENTATION / CALCULATION
→ VERIFICATION CHECKS
→ VALIDATION / CROSS-CHECK EVIDENCE
→ SENSITIVITY + UNCERTAINTY
→ COMPETING METHOD COMPARISON
→ BOUNDED REVIEW
→ AUTHORITY / HANDOFF
```

It must distinguish:

- implementation/calculation verification;
- model-form adequacy;
- source applicability;
- input/measurement uncertainty;
- geometry/configuration mapping;
- independent validation/cross-check evidence;
- decision robustness.

## Grab-source gap gate

For grabs/grab buckets:

```text
GENERAL MECHANICS MODEL = ALLOWED
NEARBY STANDARD = NOT AUTOMATICALLY APPLICABLE
ISO 17096 = EXPLICITLY NOT GRAB AUTHORITY
```

If no exact applicable proof/holding/acceptance method is legitimately available, the correct D4 outcome is a bounded source gap + OEM/designer/expert handoff, not a reconstructed criterion.

## Gate locks

Still locked by default:

- closed paid tables/coefficient sets/exact normative algorithms not legitimately available;
- actual ISO hook proof result from public metadata alone;
- actual dynamic factors/load combinations from memory;
- actual hook/traverse/pin/bearing/grab stress/fatigue verdict without governing method and complete inputs;
- actual grab holding/capacity/acceptance values without exact applicable source;
- actual remaining-life/design-working-period verdict;
- actual inspection/discard/acceptance decision reconstructed from fragments;
- specialist NDT interpretation outside qualified scope;
- repair/redesign/adjustment/modification approval;
- operation/continued-operation/return-to-service permission;
- any claim that FEA is validated merely because it converges or looks detailed.

## Gate outcome

`CRN-M-03 / D4 LESSON AUTHORING / v1` is **UNLOCKED**.

Authoring must preserve three layers:

1. **what engineering question/component is being evaluated**;
2. **which method is applicable and how adequacy is demonstrated**;
3. **who has authority to act on the result**.

Next:

`CRN-M-03 / D4 LESSON AUTHORING / v1 — build expert/reference lesson around question-class identification, method applicability, boundary/input validation, hook proof-method scope, grab source gaps, model verification/validation, sensitivity/error and bounded authority handoff`
