# CRN-M-02 / D4 — Scope v1

## Mission

Move from D3 causal-model discrimination to expert/reference method governance for drum, sheave, block and reeving systems.

D4 asks not only *what model explains the case*, but:

> **Which formal method or model is applicable to this exact engineering question, what inputs and assumptions make it valid, how sensitive/uncertain is the result, what competing method says, and where does technical authority stop?**

D4 is not “more formulas after D3”. It is disciplined selection, validation, comparison and review of engineering methods.

## Immutable prerequisites

- `CRN-M-02 / D1 FROZEN v1`, tag `crn-m-02-d1-v1`;
- `CRN-M-02 / D2 FROZEN v1`, tag `crn-m-02-d2-v1`;
- `CRN-M-02 / D3 FROZEN v1`, tag `crn-m-02-d3-v1`.

D4 MAY reuse frozen definitions, applied mechanics and causal-analysis patterns. D4 MUST NOT edit, reinterpret away or silently weaken any frozen guard.

## D4 learner should be able to

1. classify the engineering question before selecting a method: kinematic, load/reaction, rope-drive selection, component proof, inspection/condition, duty/history, remaining-life context or equipment decision;
2. state the boundary-value problem explicitly: body/system, frames, rope path, contacts, supports, drum/sheave/block geometry, motion state, load history and requested output;
3. distinguish a regulatory/OEM requirement, a selection rule, a proof-of-competence method, an inspection method, a monitoring method and a pedagogical model;
4. select a method family and justify its applicability rather than choosing the most complicated model by default;
5. identify mandatory inputs, provenance and version for every source-bound quantity;
6. separate model-form assumptions from measured/declared input data and from authority/acceptance criteria;
7. verify a calculation/model with dimensional checks, force/moment/energy sanity checks where applicable, limiting cases, order-of-magnitude checks and cross-model comparison;
8. identify model-form error, input uncertainty, geometry-mapping error, measurement uncertainty and numerical/discretization error as different error classes;
9. perform qualitative sensitivity analysis and source-bound quantitative sensitivity where the governing method and inputs are actually available;
10. compare two plausible proof/model paths and explain why their outputs differ without averaging incompatible methods into one answer;
11. maintain an audit trail: source/version, question, boundary, assumptions, inputs, calculation/model version, sensitivity, uncertainty, conflicts, conclusion and handoff;
12. stop and escalate when the method, inputs, source access, competence or equipment authority is insufficient.

## In scope

- question-class → method-class selection;
- source applicability and hierarchy by *scope match*, not prestige alone;
- boundary-condition and input-provenance discipline;
- rigid-body / quasi-static / elastostatic / more-advanced-model comparison at the level needed to decide applicability;
- rope-drive selection/proof boundary for ropes, drums and sheaves;
- mechanism layout/design-requirement versus proof-calculation boundary;
- drum/sheave/block model hierarchy: geometry, reactions, axis moment, contact representation, local versus global response and when a simple model is inadequate;
- model verification: dimensions, equilibrium, limiting cases, invariants, independent calculation/cross-check and implementation checks;
- validation evidence: measured behavior, test/OEM/reference data and the difference between verification and validation;
- sensitivity/uncertainty/error-budget reasoning;
- duty/classification/history and inspection/monitoring evidence as inputs to method selection, not automatic proof outputs;
- comparison of formal proof pathways when applicability is demonstrable;
- technical review and explicit designer/OEM/expert/NDT handoff.

## D4 authoring spine

### I — Method governance and question class
Requirement vs model vs proof vs inspection vs monitoring; applicability hierarchy; source conflict; audit trail.

### II — Boundary-value problem for rope-drive mechanisms
Bodies, rope branches, contacts, supports, frames, motion state, actual geometry and requested output.

### III — Load-model and dynamics method selection
When quasi-static/rigid-body treatment is enough, when load combinations/dynamics require exact source methods, and when a higher-fidelity calculation is justified.

### IV — Rope / drum / sheave selection and proof boundary
How ISO 16625-type proof/selection questions differ from D1–D3 pedagogical mechanics and from OEM/equipment acceptance.

### V — Drum, sheave and block component model hierarchy
Global load path → local reactions → component idealization → contact/local stress model → structural/numerical model; no universal one-formula shortcut.

### VI — Verification and validation of the chosen model
Units, equilibrium, limiting cases, mesh/solver or implementation checks where relevant, benchmark/cross-model/test comparison and model-form limitations.

### VII — Sensitivity, uncertainty and error
Dominant inputs, scenario envelopes, robustness of the decision and the difference between precise output and trustworthy output.

### VIII — Duty, monitoring, inspection and life-context boundaries
Classification/history/inspection information may change which method or inspection priority is appropriate; they do not create an unauthorised remaining-life verdict.

### IX — Expert synthesis and handoff
Conflicting sources/methods, audit trail, bounded technical review and explicit authority transfer.

## Quantitative policy

### Allowed in D4 lesson

- generic mechanics derived openly from frozen D1–D3 foundations;
- dimensional/order-of-magnitude checks;
- symbolic comparisons;
- synthetic-data sensitivity examples whose numbers are clearly pedagogical;
- calculations from an exact method/source that is legitimately available and whose applicability/inputs are demonstrated.

### Source-bound only

- proof-of-competence factors and load combinations;
- dynamic factors;
- D/d, groove, fleet/lead/deflection or similar geometry criteria;
- allowable/limit stresses, fatigue curves or component design coefficients;
- bearing/shaft/drum/sheave proof parameters;
- discard/acceptance thresholds;
- design-working-period and remaining-life methods.

### Not unlocked by D4

- reproducing closed/paid ISO tables or coefficients from memory or secondary fragments;
- declaring an actual crane/drum/sheave/block “proved”, “safe”, “acceptable” or “fit for continued service” from a training calculation;
- equipment-specific FEA/contact/bearing/fatigue result without validated geometry/material/load/boundary inputs and competent authority;
- numeric remaining-life or life-extension verdict without the complete applicable method, history, inspection data and authority;
- NDT/MRT interpretation outside qualified specialist scope;
- repair, redesign, rerouting, modification or acceptance approval;
- substituting SkillsVault material for passport/OEM, mandatory regulation, designer or expert-organisation authority.

## D3 → D4 boundary

D3 asks:

> **Which causal mechanism best explains the evidence, and what observation would distinguish alternatives?**

D4 asks:

> **Which method is legitimate for the decision we need, how do we know the model is adequate, how fragile is the result, and what authority is required to act on it?**

A D3 causal model may become an input/hypothesis for D4. It never becomes a formal proof merely because D4 starts.

## Method-status discipline

D4 conclusions should use bounded states such as:

- `METHOD APPLICABLE — INPUTS COMPLETE`;
- `METHOD APPLICABLE — SOURCE-BOUND INPUT MISSING`;
- `METHOD NOT APPLICABLE TO THIS QUESTION`;
- `MODEL FORM INSUFFICIENT`;
- `CROSS-CHECK CONSISTENT`;
- `CROSS-CHECK CONFLICT — REVIEW REQUIRED`;
- `RESULT SENSITIVITY HIGH — DECISION NOT ROBUST`;
- `OEM / DESIGNER / EXPERT / NDT REQUIRED`;
- `NOT YET DEMONSTRATED`.

A more complex model is not automatically a better model. A more precise number is not automatically a more valid result.

## Safety / authority boundary

D4 authorizes expert *reasoning about methods*: selection, applicability checking, validation logic, sensitivity/error review, source comparison and escalation.

D4 does not itself grant professional certification, inspection qualification, design authority, approval authority, remaining-life authority or permission to alter equipment.
