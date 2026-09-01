# CRN-M-02 / D2 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`827bcec694d541aded942d449c9f5a782bef2ba1`

Scope:

- D2 Lesson v1 — full mechanics read;
- Source Map v1 — model/source-boundary read;
- D2 Scope / Source Gate — claim-lock check;
- D1 frozen prerequisite — immutability check;
- no numeric design / acceptance limits introduced;
- no paid normative tables reconstructed;
- no equipment-specific corrective action asserted.

## Purpose

Audit the applied lesson before Red Team for:

1. force-body choice and action/reaction signs at sheaves/blocks;
2. semantic correctness of `T1`, `T2`, ... bookkeeping;
3. validity range of drum speed relation `v = ωr`;
4. correctness of torque/moment wording for oblique rope geometry;
5. fleet/lead/deflection terminology boundaries;
6. spooling/crossover and classification source claims;
7. preservation of numeric/OEM authority locks.

---

# Findings and applied corrections

## TE-D2-01 — block reaction wording mixed force magnitude labels with free-body direction

**Severity:** CRITICAL

The authoring lesson correctly required vector reasoning, but `T1 + T2` could still be read without specifying whether arrows represented forces **on the rope** or forces **on the block**. Those diagrams are action/reaction pairs with opposite directions. A learner could therefore obtain a geometrically plausible but sign-inverted reaction map.

### Fix applied

The block free-body diagram is now explicit:

```text
F_rope→block = F1 + F2
R_support→block + F_rope→block + F_other = 0
```

with `|F1| = T1`, `|F2| = T2`. The lesson also states that a rope free-body diagram reverses the contact-force directions and that the two free-body conventions must not be mixed. Other modeled forces, including block weight when inside the chosen boundary, are not silently deleted.

## TE-D2-02 — `T1/T2/...` labels could imply false piecewise-constant tension or a jump at a drawn boundary

**Severity:** HIGH

Separate branch symbols are a good D2 guard against blind equal-tension assumptions, but the original notation could be misread as saying that each labelled segment has one constant physical tension and that tension discontinuously changes at a sheave.

### Fix applied

`Ti` is now defined as a **bookkeeping/local force-state variable** used for node mapping. It does not by itself assert constancy over the whole segment or discontinuity at a contact boundary. If a distributed contact/friction/bending model is required, the tension distribution must come from that model rather than from the label.

## TE-D2-03 — `v_rope = ω · r_eff` was too broad for arbitrary helical/axial winding geometry

**Severity:** HIGH

For a rotating drum, `ωr` is the circumferential speed of a point at radius `r`. Equating that scalar directly to rope speed requires additional geometry. No-slip alone does not prove the equality when the rope path contains a material axial/helical component.

### Fix applied

The lesson now separates:

```text
v_circ = ω · r_k
```

from the deliberately simplified near-circumferential relation:

```text
v_rope ≈ ω · r_k
```

which additionally requires negligible helical/axial component for the educational model and no slip. More complex winding geometry is explicitly escalated to a full kinematic model/source/OEM.

## TE-D2-04 — `M = T · r_eff` conflated kinematic radius with moment arm

**Severity:** HIGH

Torque about the drum axis depends on the direction of the rope force as well as its position. In oblique geometry, the radius used for surface kinematics is not automatically the effective moment arm about the drum axis.

### Fix applied

The general relation is now written as:

```text
M_axis = (r × F) · e_axis
```

and only a simple tangential rope action is reduced to:

```text
|M_axis| = T · r_m
```

where `r_m` is explicitly the effective moment arm. The lesson prevents blind substitution of kinematic `r_k` for `r_m` in oblique/complex geometry.

## TE-D2-05 — `fleet/deflection geometry` wording blurred source-specific angle definitions

**Severity:** MEDIUM

`fleet angle`, `lead angle`, `deflection angle` and related terms can be defined with different reference lines and equipment contexts. Treating them as one slash-separated synonym invites accidental transfer of a definition or numeric limit from one source to another.

### Fix applied

The lesson now uses a generic qualitative concept — **entry/exit and lateral rope geometry** — and explicitly states that exact angle names, reference lines and limits must come from the applicable standard/OEM document.

---

# Retained claims that were specifically rechecked

## ISO 4309 crossover statement — RETAINED

The public ISO 4309:2017 abstract explicitly states that, for running ropes subjected to multi-layer spooling, field experience and testing show deterioration can be significantly greater at crossover zones on the drum than at other rope sections. The lesson keeps this only as an inspection/escalation context, not a discard rule.

## ISO 4301-1 classification context — RETAINED

The public ISO 4301-1:2016 abstract explicitly lists total working cycles, load spectrum factor and average displacements as principal service-condition inputs. The D2 classification paragraph remains inside public-source authority and does not reconstruct closed tables or factors.

---

# Source / claim-lock audit

## PASS — numeric design lock

No numeric values were introduced for:

- D/d ratios;
- drum/sheave diameters;
- groove geometry;
- fleet/lead/deflection-angle limits;
- efficiency/loss coefficients;
- allowable stresses/contact pressures;
- bearing life;
- discard/acceptance criteria;
- equipment-specific capacity, repair or reeving permission.

## PASS — authority boundary

The mechanics corrections remain first-principles educational guards. They do not promote public ISO metadata into closed design requirements. Exact machine geometry, angle definitions/limits, spooling instructions and interventions remain passport/OEM/applicable-source questions.

## PASS — frozen prerequisite

`CRN-M-02/D1/FROZEN_v1` and `status/FROZEN_INDEX.json` remain unchanged.

---

# Result

`PASS WITH CORRECTIONS APPLIED`

The D2 lesson now has a cleaner force-sign convention, safer segment-tension notation and correct separation between drum surface kinematics, rope-path kinematics and axis torque. The qualitative geometry/spooling lesson remains intact without acquiring unsourced numeric authority.

## Next

`CRN-M-02 / D2 RED TEAM / PASS I / v1 — adversarially challenge segment-tension bookkeeping, vector/reaction signs, drum kinematic/torque simplifications, spooling geometry and source/field-authority traps`
