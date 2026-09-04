# CRN-M-03 / D4 — Scope v1

## Mission

Перейти от D3 causal-model discrimination к expert/reference governance методов для крюковых подвесок и захватных устройств.

D4 спрашивает уже не только:

> **какая causal model лучше объясняет evidence?**

а:

> **какой formal method легитимен для конкретного инженерного вопроса, какие inputs/assumptions делают его применимым, как мы проверили adequacy модели, насколько результат чувствителен/неопределён и где заканчивается наша authority?**

D4 — не «ещё больше формул после D3». Это дисциплина выбора, проверки, сравнения и review инженерных методов.

## Immutable prerequisites

- `CRN-M-03 / D1 FROZEN v1`, tag `crn-m-03-d1-v1`;
- `CRN-M-03 / D2 FROZEN v1`, tag `crn-m-03-d2-v1`;
- `CRN-M-03 / D3 FROZEN v1`, tag `crn-m-03-d3-v1`.

D4 MAY reuse frozen definitions, mechanics and causal-analysis patterns.
D4 MUST NOT edit, reinterpret away or silently weaken any D1/D2/D3 frozen guard.

## D4 learner should be able to

1. classify the engineering question before choosing a method: terminology/configuration, load/reaction, forged-hook proof, suspension/member proof, grab/holding mechanism, inspection/condition, duty/history, remaining-life context or equipment decision;
2. state the boundary-value problem explicitly: bodies, frames, hook body/shank, crosshead/traverse, bearings/pins, branches, contacts, articulation/DOF, grab jaws/linkages/ropes/drives, CG, motion state, load history and requested output;
3. separate regulatory/OEM requirement, mechanism requirement, proof-of-competence method, inspection method, monitoring method and pedagogical model;
4. select a method family by scope match rather than by complexity/prestige;
5. prove source applicability to the exact component and question before using source-bound coefficients/criteria;
6. identify mandatory inputs, provenance, version and uncertainty for each source-bound quantity;
7. separate model-form assumptions from measured/declared inputs and from acceptance/authority criteria;
8. verify calculations/models by dimensions, equilibrium, moments/energy where applicable, limiting cases, invariants, independent calculation and implementation checks;
9. distinguish calculation verification, model validation, model-form error, input uncertainty, geometry mapping error, measurement uncertainty and numerical/discretization error;
10. perform qualitative sensitivity and source-bound quantitative sensitivity only where governing method and legitimate inputs are available;
11. compare plausible method/proof paths without averaging incompatible standards/models;
12. maintain an audit trail: question, component/scope, source/version, assumptions, inputs, model version, checks, sensitivity, uncertainty, conflicts, conclusion and handoff;
13. STOP when exact source, component mapping, inputs, competence or equipment authority is insufficient.

## In scope

- question-class → method-class selection;
- source applicability by exact component/scope/question match;
- hook body vs hook shank vs suspension/traverse/pin/bearing/member boundary;
- forged-hook proof-method recognition through ISO 17440 scope;
- ISO 8686 load-model/load-combination boundary;
- mechanism requirement vs proof-calculation boundary;
- grab mechanical model hierarchy: geometry/kinematics → branch/linkage reactions → contact/holding model → structural/local model;
- explicit treatment of **source gap** for grabs where a nearby standard excludes them;
- rigid-body / quasi-static / elastostatic / higher-fidelity model comparison at method-selection level;
- verification versus validation;
- sensitivity / uncertainty / error-budget reasoning;
- inspection, history and monitoring as evidence/input lanes rather than automatic proof;
- bounded expert technical review and designer/OEM/expert/NDT handoff.

## D4 authoring spine

### I — Method governance and engineering-question class
Requirement vs model vs proof vs inspection vs monitoring; scope hierarchy; audit trail.

### II — Boundary-value problem for hook suspensions and grabs
Bodies, branches, contacts, joints, DOF, CG, motion state, actual geometry and requested output.

### III — Load-model and fidelity selection
When frozen D2 mechanics is enough for screening, when ISO 8686-type source-bound load methods are required, and when a higher-fidelity calculation is justified.

### IV — Forged hook proof-method scope
ISO 17440 applicability to forged point-hook bodies/shanks, its boundary with ISO 8686 loads and the prohibition on inventing closed coefficients/criteria.

### V — Suspension / traverse / pin / bearing / member model hierarchy
Global load path → local reactions → member idealization → contact/bearing/local response → structural/numerical method where justified.

### VI — Grab method governance under source gaps
General mechanics may be modelled, but ISO 17096 authority is not transferred to grabs/grab buckets. Exact grab proof/holding/acceptance inputs require an actually applicable source/OEM/designer basis.

### VII — Verification and validation
Units, equilibrium, limiting cases, implementation checks, benchmark/cross-model/test/OEM comparison and model-form limitation.

### VIII — Sensitivity, uncertainty and robustness
Dominant inputs, scenario envelopes, model-form uncertainty, source applicability uncertainty and decision robustness.

### IX — Inspection / duty / monitoring / life-context boundaries
Inspection/history may change model selection or review priority; they do not unlock remaining-life or return-to-service authority.

### X — Expert synthesis and handoff
Conflicting sources/methods, bounded technical review, evidence gaps and explicit authority transfer.

## Quantitative policy

### Allowed

- generic mechanics derived transparently from frozen D1–D3;
- symbolic/local equations where assumptions are explicit;
- dimensional/order-of-magnitude checks;
- synthetic pedagogical sensitivity examples;
- exact-source calculations only when the governing method, version, scope and required inputs are legitimately available.

### Source-bound only

- proof factors / load combinations / dynamic factors;
- hook proof coefficients, material/geometry limits and acceptance criteria;
- member/bearing/pin/traverse proof parameters;
- grab holding/proof/capacity criteria;
- allowable/limit stresses and fatigue curves;
- discard/inspection acceptance thresholds;
- design-working-period and remaining-life methods;
- actual load-test criteria.

### Not unlocked by D4

- reconstructing paid/closed ISO tables or algorithms from memory/secondary fragments;
- declaring an actual hook suspension or grab `proved`, `safe`, `acceptable` or `fit for service` from training work;
- treating ISO 17096 C-hook coverage as authority for crane hook suspension proof;
- transferring ISO 17096 to grabs or grab buckets;
- equipment-specific FEA/contact/bearing/fatigue result without validated geometry/material/load/boundary inputs and competent authority;
- numeric remaining-life/life-extension verdict without complete method/history/inspection/authority;
- specialist NDT interpretation outside qualified scope;
- repair/modification/adjustment instructions or approval;
- operation / continued operation / return-to-service permission.

## D3 → D4 boundary

D3 asks:

> **Which causal mechanism best explains the evidence, and what observation would distinguish alternatives?**

D4 asks:

> **Which method is legitimate for the engineering decision, how do we know the model is adequate, how fragile is the result, and what authority is required to act?**

A D3 causal model may become a D4 hypothesis/input.
It does not become formal proof merely because D4 begins.

## Method-status discipline

Preferred bounded states:

- `METHOD APPLICABLE — INPUTS COMPLETE`;
- `METHOD APPLICABLE — SOURCE-BOUND INPUT MISSING`;
- `METHOD NOT APPLICABLE TO THIS COMPONENT / QUESTION`;
- `COMPONENT SCOPE MAPPING NOT DEMONSTRATED`;
- `MODEL FORM INSUFFICIENT`;
- `CROSS-CHECK CONSISTENT`;
- `CROSS-CHECK CONFLICT — REVIEW REQUIRED`;
- `RESULT SENSITIVITY HIGH — DECISION NOT ROBUST`;
- `EXACT GRAB SOURCE / OEM / DESIGNER REQUIRED`;
- `OEM / DESIGNER / EXPERT / NDT REQUIRED`;
- `NOT YET DEMONSTRATED`.

A more detailed model is not automatically a more valid model.
A more precise number is not automatically a more trustworthy result.

## Safety / authority boundary

D4 authorizes expert **reasoning about methods**: method selection, applicability, validation logic, sensitivity/error review, source comparison and bounded escalation.

D4 does not itself grant professional certification, design/proof approval, inspection qualification, remaining-life authority, modification authority or permission to operate equipment.
