# CRN-M-04 / D2 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`6ab0042fd3fc9941772b9e75a5c89df34f0ea6dc`

Scope:
- D2 Lesson v1 after Technical Editorial Pass I;
- Source Map v1 and D2 source/derivation guards;
- adversarial attempts to obtain plausible numbers from wrong identity, topology, state or authority assumptions;
- immutable D1 prerequisite, `crn-m-04-d1-v1`, CRN-M-01/02/03 and `FROZEN_INDEX` remain untouched.

## Purpose

Attack the corrected lesson as a hostile but numerate learner would: keep the elementary algebra looking reasonable while quietly changing ratio convention, shaft/mesh identity, operating state, efficiency scope, support model or the meaning of a calculated result.

# Findings and applied corrections

## RT-D2-01 — positive P=Tω could be misread as proof of forward power flow
Severity: HIGH

A positive numerical product can arise under more than one sign combination. Without one axis, boundary and power-flow convention, the sign of `P` can be over-read as proof of physical forward flow.

### Fix applied
Added an explicit sign-cancellation trap: positive `P` is interpreted only after axis, boundary and flow-direction identity.

## RT-D2-02 — near-zero or poorly resolved speed could produce an unstable P/n torque claim
Severity: HIGH

The algebraic `9550·P/n` form becomes extremely sensitive as measured speed approaches zero. Merely checking `n != 0` is insufficient for a trustworthy low-speed/transient inference.

### Fix applied
Added a near-zero/measurement-resolution STOP guard; low-speed or transient torque needs an applicable state/model.

## RT-D2-03 — ratio value could be silently inverted by an unstated input/output convention
Severity: HIGH

A source may define ratio as input/output or output/input. A naked `i=5` can therefore generate a perfectly tidy but reciprocal speed result.

### Fix applied
Added a mandatory numerator/denominator convention before using any supplied ratio.

## RT-D2-04 — plausible efficiency could be borrowed across flow direction, regime or boundary
Severity: HIGH

An efficiency value can look plausible yet belong to the wrong flow direction, regime or system boundary.

### Fix applied
Added a borrowed/reversed-efficiency trap and passive-forward model bounds; incompatible regimes require a different source/model contract.

## RT-D2-05 — arbitrary reserve or service multiplier could be invented to mimic transient demand or rating
Severity: HIGH

A learner can multiply steady torque by an arbitrary 'reserve' and present it as peak demand or capacity.

### Fix applied
Explicitly blocks invented reserve/service multipliers unless they are supplied by an applicable model/source with a known role.

## RT-D2-06 — same-shaft identity could still be promoted to single-mesh torque identity
Severity: HIGH

Even on one shaft, multiple meshes/external torques can coexist. Same shaft does not identify the torque carried by one mesh.

### Fix applied
Added a same-shaft≠same-mesh-torque guard; a full torque balance must isolate each `T_mesh`.

## RT-D2-07 — equilibrium equations could be treated as a unique solution for a statically indeterminate support model
Severity: HIGH

Equilibrium equations can hold while reactions remain non-unique in a statically indeterminate model.

### Fix applied
Added a determinacy guard: extra compatibility/stiffness relations are required when unknown reactions exceed independent equilibrium equations.

## RT-D2-08 — negative reaction sign could be over-interpreted as contact loss or equipment fault
Severity: MEDIUM_HIGH

A negative solved reaction may simply be opposite to the assumed coordinate direction.

### Fix applied
Added a guard against promoting sign to contact loss, fault or physical separation without an explicit support/contact model.

## RT-D2-09 — mechanical connectivity could be promoted to equal P/T/n across a real coupling
Severity: HIGH

Physical connection across a coupling can tempt the learner to copy `P`, `T` or `n` from one side to the other.

### Fix applied
Added a connectivity≠equality guard; cross-boundary equality must come from the declared ideal/no-slip/loss model or evidence.

## RT-D2-10 — rounding or margin could leak calculated demand into rated capacity, selection or operation authority
Severity: HIGH

Rounding upward or choosing a nearby catalog number can be mistaken for a safety factor or rating decision.

### Fix applied
Added a final authority guard: rounding/margin/catalog proximity never promotes demand to capacity, selection, acceptance or permission to operate.

# Authority / immutability audit

- gear rating / ISO 6336 workflow remains locked;
- reducer/coupling selection, service factors and alignment acceptance remain locked;
- bearing internal load/life/selection remains locked;
- unknown/reverse efficiency is not inferred;
- no calculated reaction or torque becomes diagnosis, repair, return-to-service or permission to operate;
- D1 frozen tree, `crn-m-04-d1-v1`, CRN-M-01/02/03 and `status/FROZEN_INDEX.json` remain immutable.

# Result

`PASS WITH CORRECTIONS APPLIED`

The red-team-safe chain is now:

```text
evidence -> topology + convention -> exact side/shaft/mesh/state identity
-> bounded model -> derivation -> determinacy/cross-check
-> calculated demand only -> explicit authority lock
```

## Next

`CRN-M-04 / D2 READER EXPERIENCE PASS / PASS I / v1 — improve narrative flow, retrieval cues and cognitive load without weakening D2 topology/identity/derivation, steady-vs-transient, force/reaction, demand-capacity and equipment-authority guards before practice`
