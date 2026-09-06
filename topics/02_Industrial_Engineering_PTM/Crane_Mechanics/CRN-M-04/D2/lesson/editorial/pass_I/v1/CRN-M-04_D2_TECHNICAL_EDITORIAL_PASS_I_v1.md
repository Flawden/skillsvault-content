# CRN-M-04 / D2 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`3653950efec958cb7a00da6e31f971a791877c3d`

Scope:

- D2 Lesson v1 — full technical read;
- Source Map v1 — source/claim-role and derivation-guard read;
- D2 Scope / Source Gate — boundary check;
- immutable D1 frozen prerequisite and `crn-m-04-d1-v1` untouched;
- CRN-M-01/02/03 frozen history and `FROZEN_INDEX` untouched;
- no gear rating, reducer/coupling selection, alignment acceptance, bearing life, repair or equipment-operation authority unlocked.

## Purpose

Audit the 16-section applied-mechanics lesson before Red Team for places where a correct elementary equation could be combined with the wrong shaft, sign, operating state, component identity or equilibrium assumption and thereby create a technically false result.

# Findings and applied corrections

## TE-D2-01 — `P = T·ω` needed an explicit sign/power-flow convention
Severity: HIGH

Same-shaft identity was already present, but a reader could still combine torque and angular-speed signs from different conventions and over-interpret the sign of power.

### Fix applied
The lesson now requires same shaft/section, same state and the same declared sign/power-flow convention before using the relation.

## TE-D2-02 — the `9550` shortcut could be over-read at zero speed or during transients
Severity: HIGH

The algebraic conversion is valid only with non-zero speed and the stated mechanical shaft state. A nominal or instantaneous `P/n` value is not automatically start/brake/shock peak torque.

### Fix applied
The lesson now states `n != 0`, mechanical-power identity and steady/quasi-steady scope explicitly.

## TE-D2-03 — ratio magnitude could leak rotation sign across a different topology
Severity: MEDIUM

The simple external-pair example was sound, but sign propagation needed an explicit guard against internal meshes, idlers, common shafts and planetary branches.

### Fix applied
Direction proof is now topology-specific and separate from ratio magnitude.

## TE-D2-04 — efficiency needed direction/regime/boundary identity
Severity: HIGH

A supplied efficiency can be applicable in one flow direction or operating regime without proving reverse/backdriven efficiency or compatible per-stage efficiencies.

### Fix applied
The lesson now binds `η` to flow direction, regime and system boundary and blocks unsupported stage multiplication/reverse reuse.

## TE-D2-05 — steady demand could be mistaken for transient/peak demand
Severity: HIGH

Demand-versus-capacity separation was strong, but the calculated demand column did not explicitly distinguish steady/quasi-steady state from start, brake, shock or other transient peaks.

### Fix applied
The demand section now carries an explicit state qualifier and a transient-demand lock.

## TE-D2-06 — tangential mesh force required exact gear/mesh identity
Severity: HIGH

`F_t = T/r` is safe only when the torque and pitch/reference radius belong to the same isolated gear/mesh side. A shaft can carry multiple external torques or meshes.

### Fix applied
The relation is now written with `T_mesh`, and a torque balance is required before assigning net shaft torque to one mesh.

## TE-D2-07 — “quasi-static” could hide omitted inertia
Severity: HIGH

`ΣF=0` and `ΣM=0` are equilibrium equations. Calling a changing state quasi-static does not itself make inertial terms vanish.

### Fix applied
The lesson requires an explicit negligible-inertia assumption; otherwise equations of motion are required and the bounded statics derivation stops.

## TE-D2-08 — one-plane support reactions could be over-read as full bearing reactions
Severity: MEDIUM

The symmetric two-support example is planar. It could be promoted incorrectly to a 3D resultant or bearing internal load.

### Fix applied
The example now states its plane/component scope and blocks transfer to other planes or internal bearing load/life.

## TE-D2-09 — interface bookkeeping could imply equality across a coupling
Severity: MEDIUM/HIGH

The ledger kept component boundaries visible, but “same-shaft state” at the motor/coupling row could look like proof that `P`, `T` and `n` are identical across the entire coupling.

### Fix applied
Rows are now side-specific. Equality across the coupling requires the declared transfer/ideal-loss model rather than connectivity alone.

## TE-D2-10 — energy cross-check needed absolute-power and identity guards
Severity: MEDIUM

The passive-efficiency check was correct in intent but needed one selected flow direction and absolute-power language to avoid sign-convention contradictions.

### Fix applied
The cross-check now uses `|P_out| <= |P_in|` for the declared passive flow direction and repeats mesh identity, equilibrium and transient-demand guards.

# Source / authority audit

## PASS — educational mechanics sources stay educational
OpenStax continues to support rotational power and equilibrium mechanics only. It does not become reducer/coupling rating or operational authority.

## PASS — gear reference stays non-normative
KHK remains a development companion for simple gear geometry/terminology; it does not become crane rating or acceptance authority.

## PASS — ISO 6336 boundary stays hard
ISO 6336 remains the formal gear load-capacity boundary; D2 does not recreate its rating workflow or promote demand-side calculations to capacity.

## PASS — D1 locks stay closed
Reducer/coupling selection, service factors, alignment limits, bearing life/preload, lubricant selection, repair, return-to-service and permission to operate remain locked.

## PASS — immutable history
D1 frozen tree, `crn-m-04-d1-v1`, CRN-M-01/02/03 frozen history and `status/FROZEN_INDEX.json` remain unchanged.

# Result

`PASS WITH CORRECTIONS APPLIED`

The D2 lesson now has a stronger identity chain:

```text
evidence -> topology -> component/shaft identity -> state/sign convention
-> bounded equation -> cross-check -> demand-only conclusion -> authority lock
```

## Next

`CRN-M-04 / D2 RED TEAM / PASS I / v1 — adversarial challenge of shaft/power identity, ratio/sign topology, efficiency direction, steady-vs-transient demand, mesh-force identity, equilibrium/reaction assumptions, interface bookkeeping and demand-to-capacity or equipment-authority leakage before reader experience`
