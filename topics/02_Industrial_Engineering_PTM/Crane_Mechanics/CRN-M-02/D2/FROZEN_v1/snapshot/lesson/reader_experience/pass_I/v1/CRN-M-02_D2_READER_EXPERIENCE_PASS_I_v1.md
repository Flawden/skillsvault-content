# CRN-M-02 / D2 — Reader Experience Pass I v1

## Decision

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

Baseline remote commit:

`be351d8cb33efea76f52fe21da58b629c181013d`

Scope:
- D2 Lesson v1 after Technical Editorial + Red Team Pass I;
- applied-mechanics reading flow;
- symbol/terminology onboarding;
- FBD diagram-reading clarity;
- drum-radius distinction;
- spooling-state recognition;
- model-status visibility;
- technical/source/field-authority guards preserved.

## Reader question

Assume the reader understands D1 but is new to applied rope-drive mechanics. Can they move through a new diagram **without having to remember all 18 sections before they know what representation to build next**?

Pass I improves that route without changing the engineering conclusions.

---

# Findings and corrections

## RX-D2-01 — The complete working algorithm arrived too late
**Severity:** HIGH

The full eight-step D2 algorithm was technically good but appeared only in §15. Added an early 45-second route that previews exactly the same sequence:

```text
SYSTEM / MODE
→ ROPE PATH
→ CONTACT NODES
→ LOCAL Ti
→ BODY + FORCES
→ GEOMETRY / SPOOLING STATE
→ MODEL STATUS
→ SOURCE / OEM BOUNDARY
```

The detailed §15 remains the authoritative expanded algorithm.

## RX-D2-02 — Too many compact symbols arrived before a shared reader legend
**Severity:** HIGH

Added a pocket legend for `Ti`, `FBD`, `r_k`, `r_m` and `spooling state`, plus one-line meanings of the three model statuses. This changes no model definition; it reduces working-memory load.

## RX-D2-03 — Correct action/reaction wording still allowed FBD arrow carry-over
**Severity:** HIGH

Added a paired “same contact, two FBDs” card. The reader is told to erase/rebuild arrows after changing the selected body rather than mentally reusing a block diagram for the rope.

## RX-D2-04 — `r_k` and `r_m` were technically separated but visually easy to merge
**Severity:** HIGH

Added a question-first comparison:

```text
movement / circumferential kinematics? → r_k
moment about axis?                   → line of action + r_m
```

Coincidence in a simple geometry remains explicitly different from identity by definition.

## RX-D2-05 — Spooling states were described before the reader had a recognition routine
**Severity:** MEDIUM

Added `STATE FIRST, VERDICT LATER`: identify layer, transition/crossover and side contact before moving to mechanism, evidence or source-backed verdict.

## RX-D2-06 — Model-status labels were visible before their reader-level meaning was compactly available
**Severity:** MEDIUM

Added early one-line definitions of `SIMPLE`, `QUALITATIVE APPLIED` and `SOURCE / OEM REQUIRED`. Full conditions remain in §15.

## RX-D2-07 — Twelve failure examples formed a flat memory list
**Severity:** MEDIUM

Grouped the existing twelve examples into four reader families without deleting or weakening any failure mode. This is presentation-only restructuring.

## RX-D2-08 — The early invariant block said “six traps” after Red Team had seven findings
**Severity:** LOW

The existing RT-D2-06 angle-definition/reference-geometry guard is now surfaced in the early invariant block. The heading now correctly says seven traps. No new normative claim was introduced.

---

# Guard preservation

Reader Experience Pass I does not weaken the reviewed invariants:

```text
ONE ROPE ≠ PROOF OF EQUAL Ti
BLOCK FBD ≠ ROPE FBD
NO SLIP ≠ UNIVERSAL v_rope = ωr
LAYER RADIUS ≠ UNIVERSAL MOMENT ARM
OBSERVATION ≠ ACCEPTANCE / DISCARD VERDICT
SAME ANGLE TERM ≠ SAME DEFINITION / REFERENCE GEOMETRY / LIMIT
QUASI-STATIC MAP ≠ DYNAMIC LOAD AUTHORITY
```

Still locked:
- numeric D/d values;
- groove dimensions;
- numeric fleet/lead/deflection-angle limits;
- efficiency/loss coefficients for a real mechanism;
- allowable stresses/contact pressures;
- discard limits;
- equipment-specific reeving/modification/repair permission.

## Whole-lesson reader verdict

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

The D2 learning spine is now easier to hold:

```text
TRACE
→ MARK CONTACTS
→ LABEL LOCAL STATES
→ CHOOSE ONE BODY
→ DRAW FORCES
→ DESCRIBE GEOMETRY / SPOOLING
→ DECLARE MODEL STATUS
→ ESCALATE ONLY WHEN THE NEXT CLAIM REQUIRES IT
```

## Next

`CRN-M-02 / D2 PRACTICE / v1 — build applied-mechanics diagram-reading, FBD, geometry/spooling and model-status exercises under locked numeric/OEM guards`
