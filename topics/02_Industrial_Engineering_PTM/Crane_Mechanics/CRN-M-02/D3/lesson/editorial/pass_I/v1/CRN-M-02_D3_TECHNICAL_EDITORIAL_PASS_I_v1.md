# CRN-M-02 / D3 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit: `ca91576aecd14267688fbdb24ab63baa71a02a50`.

The pass audited causal-model logic, Newton–Euler wording, hypothesis discrimination, history/degradation claims and proof/design/remaining-life authority boundaries.

## Findings and fixes

### TE-D3-01 — causal status could be read as formal root-cause certification
**Severity:** CRITICAL

`SUPPORTED CAUSAL MODEL` is now explicitly bounded to the evaluated alternatives and current evidence set. It does not certify formal root cause, exclude all conceivable mechanisms, or grant design/field/remaining-life authority.

### TE-D3-02 — Newton–Euler notation was too broad
**Severity:** HIGH

Force balance now names the body, inertial frame and center-of-mass acceleration: `ΣF_ext = m·a_G`. The scalar `ΣM_axis = I_axis·α` is restricted to an explicitly defined planar/fixed-axis rigid-body model rather than being presented as a universal 3-D rotational equation.

### TE-D3-03 — absence of an expected sign was too easily treated as negative evidence
**Severity:** HIGH

Non-observation counts against a model only when the sign should have been detectable with adequate method, timing, coverage and sensitivity. Otherwise the result remains `UNKNOWN`.

### TE-D3-04 — derivative notation could imply a quantitative model that does not exist
**Severity:** HIGH

D3 now defaults to directional-sensitivity hypotheses (`x ↑ → predicted effect ↑/↓/ambiguous`). `∂Y/∂x` is allowed only after a mathematical model, held variables and differentiability assumptions are actually defined.

### TE-D3-05 — hypothesis space omitted data/mapping artifact as a competing explanation
**Severity:** HIGH

A conditional `H0 / H_data` candidate was added for rope-section mapping, timing, reference-point, log or measurement error when data reliability can itself generate the apparent signature.

### TE-D3-06 — “natural experiment” wording overclaimed ordinary maintenance before/after evidence
**Severity:** MEDIUM

The lesson now calls this historical before/after evidence by default. `Natural experiment` is reserved for cases where the change is independent of the analyst and creates sufficiently discriminating conditions. Concurrent changes and regression-to-the-mean remain explicit confounders.

### TE-D3-07 — `Y=f(...)` could be mistaken for regression or independent-effect decomposition
**Severity:** MEDIUM

The expression is now explicitly a causal scaffold only. Variables may be upstream causes, mediators or states; the notation does not permit coefficients, additive effects or causal attribution by itself.

## Claim/source audit

No ISO 8686 dynamic factors/load combinations, proof-of-competence values, remaining-life numbers, acceptance/discard criteria, or field modification authority were introduced. ISO 8686-1 remains a formal load/method boundary; ISO 12482 remains duty/design-working-period context rather than a shortcut to remaining-life certification.

## Result

`PASS WITH CORRECTIONS APPLIED`

Next: `CRN-M-02 / D3 RED TEAM / PASS I / v1`.
