# CRN-M-02 / D4 — Source Gate v1

## Decision

**PASS WITH CLAIM LIMITS**

D4 lesson authoring is unlocked for expert/reference method selection, applicability, boundary/input validation, model verification/validation logic, sensitivity/error analysis, cross-model comparison and audit-trail discipline.

Exact paid normative coefficients/tables, equipment-specific proof results, numeric fatigue/remaining-life verdicts, acceptance/discard criteria and field/design authority remain locked unless the exact applicable method, inputs and authority are demonstrably available.

Verified on: **2026-09-02**.

## 1. ISO 4306-1:2026

`Cranes — Vocabulary — Part 1: General`

- Edition 5;
- published 2026-07;
- status: Published.

D4 role: current terminology/component boundary. It prevents model-selection discussions from drifting because the object/component/question was named incorrectly.

Public metadata: https://www.iso.org/standard/78820.html

## 2. ISO 16625:2025

`Cranes and hoists — Selection of wire ropes, drums and sheaves`

- Edition 2;
- status: Published;
- public abstract states that rope-drive geometry and drum/sheave geometry are incorporated into proof of competence and selection.

D4 role: primary topic-specific proof/selection anchor.

D4 MAY teach how to recognize that a question belongs to this proof/selection family, what input/provenance discipline is required and why a D1–D3 simplified model is insufficient.

D4 MUST NOT reconstruct closed proof factors, criteria or tables from memory/public metadata.

Public metadata: https://www.iso.org/standard/77889.html

## 3. ISO 10972-1:2025

`Cranes — Requirements for mechanisms — Part 1: General`

- Edition 2;
- published 2025-02;
- status: Published;
- covers general layout/design of mechanisms and selection/design requirements of components;
- explicitly does **not** provide proof-of-competence calculations for yield, fatigue or wear limit states.

D4 role: high-value method-boundary anchor. It demonstrates that a mechanism requirement/selection document is not automatically the proof method for every strength/fatigue/wear question.

Public metadata: https://www.iso.org/standard/85884.html

## 4. ISO 8686-1:2012

`Cranes — Design principles for loads and load combinations — Part 1: General`

- Edition 2;
- status: Published;
- lifecycle currently at review stage 90.60;
- public abstract identifies rigid-body kinetic and elastostatic foundations and allows more advanced calculations/tests when equivalent competence can be demonstrated.

D4 role: load-model / load-combination / model-fidelity boundary and a direct anchor for the principle that a more advanced method needs demonstrated adequacy, not prestige.

Restriction: no dynamic factor, parameter range or load-combination value is reconstructed from public metadata.

Public metadata: https://www.iso.org/standard/59417.html

## 5. ISO 20332:2016

`Cranes — Proof of competence of steel structures`

- Edition 2;
- Published / Confirmed;
- uses the limit-state method and is intended to be used with applicable ISO 8686 loads/load combinations.

D4 role: proof-method comparison and applicability discipline.

Critical restriction: D4 MUST NOT assume that every drum, shaft, sheave, block or mechanism component automatically falls within the scope of ISO 20332. Component/scope mapping must be demonstrated before using it as the governing proof method.

Public metadata: https://www.iso.org/standard/62663.html

## 6. ISO 4301-1:2016

`Cranes — Classification — Part 1: General`

- Edition 3;
- Published / Confirmed;
- cycle-based classification uses total working cycles, load-spectrum factor and average displacements.

D4 role: duty/classification input boundary. Classification may determine which formal method or source-bound input set is relevant; it is not itself a remaining-life result.

Public metadata: https://www.iso.org/standard/63070.html

## 7. ISO 9927-1:2013

`Cranes — Inspections — Part 1: General`

- Edition 3;
- Published / Confirmed in 2023;
- remains current.

D4 role: inspection-method/evidence boundary. Inspection evidence can validate, challenge or prioritize a model, but inspection scope is not interchangeable with design proof.

Public metadata: https://www.iso.org/standard/51102.html

## 8. ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`

- Edition 5;
- current published authority;
- lifecycle stage 90.92: to be revised.

D4 role: rope-condition/inspection/discard evidence boundary, especially where drum/spooling geometry and local deterioration interact.

Restriction: no paid discard table/criterion is reconstructed.

Public metadata: https://www.iso.org/standard/66759.html

## 9. ISO/CD 4309 — Edition 6

- Committee Draft;
- under development;
- stage 30.20.

D4 role: **watchlist only**. It may flag future change risk but is not current normative authority.

Public metadata: https://www.iso.org/standard/90256.html

## 10. ISO 12482:2014

`Cranes — Monitoring for crane design working period`

- Edition 1;
- status: Published;
- stage 90.92: to be revised;
- Edition 2 is under development.

D4 role: duty-monitoring/design-working-period context and a model-input/history boundary.

Restriction: public metadata or D3 history reasoning does not unlock a numeric remaining-life or life-extension verdict.

Public metadata: https://www.iso.org/standard/57481.html

## 11. ISO/CD 12482 — Edition 2

- Committee Draft;
- under development;
- stage 30.20.

D4 role: **watchlist only**; not current authority.

Public metadata: https://www.iso.org/standard/91046.html

## 12. ФНП ПС №461

`Правила безопасности опасных производственных объектов, на которых используются подъемные сооружения`

Verified current edition: **ред. 16.04.2026**. Document validity is stated through **01.09.2032**.

D4 role: Russian regulatory/authority boundary. It reinforces that training/model review does not replace prescribed operating, examination, repair, replacement or expert procedures.

Public reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

## 13. Passport / OEM / actual equipment records

For an actual drum/sheave/block/reeving system, passport/OEM/design documentation remains the authority for equipment-specific geometry, materials, configuration, permitted alternatives, manufacturer methods and service constraints.

D4 MAY teach how to map these inputs into a formal method and how to detect missing/conflicting data.

D4 MUST NOT invent absent equipment inputs.

## Method-validation gate

D4 may teach a non-normative verification/validation workflow provided it is labelled as a SkillsVault engineering method scaffold rather than a clause copied from a paid standard:

```text
QUESTION / OUTPUT
→ METHOD CANDIDATES
→ APPLICABILITY
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

At minimum, the workflow must distinguish:

- calculation/code/implementation verification;
- model-form adequacy;
- input/measurement uncertainty;
- source applicability;
- agreement/disagreement with independent evidence;
- decision robustness.

## Gate locks

Still locked by default:

- closed paid tables, coefficients and exact normative algorithms not legitimately available;
- actual ISO proof-of-competence result from metadata alone;
- actual dynamic factor/load combination from memory;
- actual drum/flange/shaft/sheave/bearing stress or fatigue verdict without the governing method and complete inputs;
- actual D/d/groove/fleet/lead/deflection acceptance values without the exact applicable source;
- actual remaining-life/design-working-period verdict;
- actual discard/acceptance decision reconstructed from secondary fragments;
- specialist NDT/MRT interpretation outside qualified scope;
- repair/redesign/rerouting/life-extension instructions or approval;
- any claim that a numerical model/FEA is validated merely because it converges or looks detailed.

## Gate outcome

`D4 LESSON AUTHORING / v1` is **UNLOCKED**.

Authoring must preserve three layers explicitly:

1. **what the engineering question is**;
2. **which method is valid and how we know**;
3. **who has authority to act on the result**.
