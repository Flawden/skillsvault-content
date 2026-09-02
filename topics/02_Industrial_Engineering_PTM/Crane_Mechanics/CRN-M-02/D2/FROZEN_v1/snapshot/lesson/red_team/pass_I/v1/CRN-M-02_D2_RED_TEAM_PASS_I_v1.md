# CRN-M-02 / D2 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`5dfbe665755ec2ca2c635b8d3bded15e1c9b3e25`

Scope:

- D2 Lesson v1 after Technical Editorial Pass I;
- `T1/T2/...` bookkeeping and equal-tension overreach;
- block/rope free-body action-reaction traps;
- drum no-slip/helical kinematics misuse;
- kinematic radius vs axis moment-arm substitution;
- side-geometry/crossover/source terminology traps;
- quasi-static vs dynamic-load overreach;
- D1 frozen prerequisite untouched;
- no numeric design/acceptance limits introduced.

## Adversarial question

Assume a technically confident reader can repeat every formula in the lesson. Can they still misuse it by:

1. setting every local `Ti` equal because the rope is physically continuous;
2. mixing block-FBD arrows with rope-FBD arrows and still getting a plausible-looking resultant;
3. using `no slip` as universal proof of `v_rope = ωr` in helical/multilayer winding;
4. replacing the moment arm by the visible layer radius without checking the force line of action;
5. converting a visible crossover/side-contact observation into an automatic acceptance or discard verdict;
6. transferring a numeric angle limit because the source uses a familiar term such as `fleet angle`;
7. using quasi-static equilibrium as the actual node load during material acceleration?

Pass I attacks those routes.

---

# Findings and corrections

## RT-D2-01 — Physical rope continuity could be mistaken for proof of equal local tensions

**Severity:** CRITICAL

The lesson already used separate `T1/T2/...`, but a reader could still reason: “same continuous rope → one tension everywhere.” That silently erases the very distributed contact/friction/dynamic effects D2 was introduced to preserve.

### Fix applied

Equality of local `Ti` now requires an explicit model **and an explicit domain of validity**. The lesson states:

```text
НЕПРЕРЫВНОСТЬ КАНАТА
≠
ДОКАЗАТЕЛЬСТВО T1 = T2 = T3
```

## RT-D2-02 — Correct equations could still be built from arrows belonging to different free-body diagrams

**Severity:** CRITICAL

A learner can draw a rope contact force in one direction, mentally switch from `BLOCK` to `ROPE`, and reuse the same arrow in the equilibrium sum. The resulting diagram may look geometrically credible while being mechanically inconsistent.

### Fix applied

Added the invariant:

```text
BODY FIRST
ARROWS SECOND
EQUATION THIRD
```

Changing the selected body requires rebuilding the contact-force arrows. The lesson also hardens the quasi-static boundary: material acceleration requires a dynamic balance rather than silent reuse of `ΣF = 0`.

## RT-D2-03 — `no slip` could be promoted into a universal rope-speed formula

**Severity:** HIGH

No-slip is not sufficient to prove that the rope tangent is circumferential. In a materially helical/axial path the geometry of the local tangent still matters.

### Fix applied

The lesson now explicitly distinguishes the local contact compatibility condition from the geometric condition needed for the scalar approximation `v_rope ≈ ω·r_k`. If that geometry is not demonstrated, the model remains qualitative or escalates.

## RT-D2-04 — Current layer radius could be substituted for the axis moment arm by visual intuition

**Severity:** HIGH

A visible winding radius is easy to reuse in `T·r`, even though moment about the drum axis depends on the force line of action.

### Fix applied

Before the scalar torque form is used, the learner must identify the line of action and perpendicular moment arm. “It is the current layer radius” is no longer an accepted argument by itself.

## RT-D2-05 — Crossover / side contact could become an automatic field verdict

**Severity:** HIGH

The public ISO 4309 context supports heightened deterioration concern at multilayer crossover zones, but does not turn the word `crossover` into a machine-specific discard/acceptance rule.

### Fix applied

The lesson labels crossover as a **risk/inspection-context claim** and explicitly blocks automatic rejection, continued-operation approval or geometry verdict without applicable criteria and actual condition evidence.

## RT-D2-06 — Familiar angle terminology could smuggle in a limit from the wrong geometry

**Severity:** HIGH

Even after Editorial separated `fleet`, `lead` and `deflection` terminology, a learner could still find a numeric “fleet angle” elsewhere and transfer it by name alone.

### Fix applied

A numeric angle claim now requires matching document applicability, component/node context, definition and reference geometry. Term-name equality is not treated as normative equivalence.

## RT-D2-07 — Quasi-static reaction reasoning could be over-applied to accelerated motion

**Severity:** HIGH

The lesson’s equilibrium equation is intentionally quasi-static. Without a stronger guard, it could still be presented as the actual dynamic support load during acceleration.

### Fix applied

The algorithm now marks quasi-static validity explicitly. If acceleration/dynamics are material to the question, the learner must use an appropriate dynamic model or escalate; visual intuition such as “acceleration seems small” is not sufficient authority.

---

# Claim-lock verdict

No Red-Team correction unlocks:

- numeric `D/d` values;
- drum/sheave diameters or groove geometry;
- fleet/lead/deflection-angle limits;
- loss/efficiency coefficients;
- allowable stresses/contact pressures;
- bearing-life or fatigue-life calculations;
- discard/acceptance limits;
- equipment-specific reeving, repair or modification approval.

No paid normative table is reconstructed.

# Whole-Lesson Red-Team verdict

`PASS WITH CORRECTIONS APPLIED`

Most important invariant:

```text
ONE PHYSICAL ROPE
is not
PROOF OF ONE T EVERYWHERE

A FORCE ARROW
has meaning only
ON A NAMED FREE BODY

NO SLIP
is not
UNIVERSAL v = ωr

LAYER RADIUS
is not
UNIVERSAL MOMENT ARM

OBSERVATION
is not
ACCEPTANCE / DISCARD AUTHORITY

QUASI-STATIC MODEL
is not
DYNAMIC LOAD AUTHORITY
```

## Next

`CRN-M-02 / D2 READER EXPERIENCE PASS / PASS I / v1 — improve applied-mechanics flow and diagram-reading clarity without weakening Red-Team, source or field-authority guards`
