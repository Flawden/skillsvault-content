# CRN-M-04 / D1 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`499a3221ef07af26b8164fb84d24c22a1a6b0817`

Scope:

- D1 Lesson v1 — full technical read;
- Source Map v1 — source/claim-role read;
- D1 Scope / Source Gate — boundary check;
- CRN-M-01 / CRN-M-02 / CRN-M-03 frozen topics untouched;
- no numeric gear design, coupling rating, alignment, lubrication, condition or acceptance limits introduced;
- no repair, NDT, return-to-service or equipment-operation authority unlocked.

## Purpose

Audit the beginner lesson before Red Team for:

1. drive-path diagrams that could masquerade as proof of rotation direction or one-way power flow;
2. ratio-to-torque shortcuts that could silently become rating calculations;
3. coupling-family wording that could invent generic compensation capability;
4. planetary descriptions that could imply equal load sharing;
5. lubrication evidence wording that could turn into diagnosis or prescription;
6. misalignment language that could collapse different relative-motion phenomena;
7. condition words that could smuggle undocumented acceptance thresholds into observation.

---

# Findings and applied corrections

## TE-01 — Drive-path arrows could be mistaken for operating-direction proof

Severity: HIGH

The authored lesson correctly warned that the simple motor → coupling → reducer → output chain is not a universal drawing. But a beginner could still read the arrow direction as proof of shaft rotation direction, one-way power flow, backdrivability or braking behavior.

### Fix applied

The lesson now states that the arrows are a **connectivity / chosen-analysis-path map**. Actual rotation direction, reverse transfer, braking mode and power-flow direction require the exact architecture and operating state.

Guard:

```text
TEACHING DRIVE-PATH ARROW
≠ ROTATION-DIRECTION PROOF
≠ ONE-WAY POWER-FLOW PROOF
```

## TE-02 — Ratio wording could become a deterministic real-torque shortcut

Severity: HIGH

The original qualitative phrase “greater reduction → usually greater output-side torque” was physically useful but too easy to promote into “ratio tells me the actual output torque”. That ignores load, losses/efficiency, dynamics, controls and equipment rating.

### Fix applied

The lesson now separates:

```text
KINEMATIC RATIO
→ speed relationship

IDEAL POWER RELATIONSHIP
→ qualitative torque-level intuition

REAL TRANSMITTED TORQUE / PERMISSIBLE RATING
→ load + mode + efficiency/losses + dynamics + controls + exact source
```

No formula, service factor or rating procedure is introduced.

## TE-03 — Coupling wording could imply generic compensation capability

Severity: MEDIUM

“Connects shafts and transmits torque” is correct at beginner level, but combined with the later family list it could encourage the reader to infer that any non-rigid-looking coupling necessarily compensates a known set of movements.

### Fix applied

The lesson now describes a designed torque-transmission interface between the shaft sides and states explicitly that an elastic, geared or movable element does **not** prove what relative movements are allowed.

## TE-04 — Planetary multiple meshes could imply equal load sharing

Severity: MEDIUM

“Power flow is distributed through several meshes” can be read as “the load is divided equally”. A real planetary set may have several simultaneous mesh/load paths, but actual load sharing is architecture-, geometry-, stiffness-, assembly- and regime-dependent.

### Fix applied

Equal sharing is now explicitly forbidden as a D1 assumption.

Guard:

```text
MULTIPLE PLANETARY MESHES
≠ EQUAL LOAD SHARE BY DEFAULT
```

## TE-05 — Lubrication observations could drift into diagnosis or prescription

Severity: MEDIUM

The lesson correctly locked lubricant selection, but “incorrect or insufficient lubrication may be a factor” could still invite a field diagnosis from level/leak/appearance alone.

### Fix applied

Level, condition, leak and contamination remain evidence lanes. They do not by themselves prove a specific lubrication failure or its cause. Lubrication method, grade, viscosity, compatibility, quantity and interval remain exact reducer/OEM/specification questions.

## TE-06 — “Misalignment” could collapse distinct relative-motion phenomena

Severity: MEDIUM

Installation offset, axial movement, thermal positional change, elastic deflection and design-allowed movement are not automatically the same engineering category.

### Fix applied

The lesson now uses “change in relative position” first and explicitly says that classification as misalignment and its acceptability are source/design-bound. Numeric limits remain locked.

## TE-07 — Condition adjectives could smuggle undocumented thresholds

Severity: LOW / MEDIUM

Words such as “unusual noise”, “overheating” or “excessive vibration” may look like neutral observations but can imply a hidden baseline or acceptance threshold.

### Fix applied

The evidence section now asks for the observed/reported change, measurement or documented baseline where available. Terms such as “excessive”, “overheating”, “unacceptable vibration” or “dangerous misalignment” require an applicable criterion before they can be promoted beyond observation.

---

# Source / claim-lock audit

## PASS — design and rating locks

No ISO 6336 procedure, coefficients, gear sizing, shaft/bearing sizing, service factor, coupling selection/rating or actual torque calculation was introduced.

## PASS — coupling scope

ГОСТ Р 50895-2025 remains a **gear-coupling** scope anchor only. No requirement is transferred to elastomeric, rigid/flange, disc, chain or other coupling families by analogy.

## PASS — lubrication / alignment authority

ISO 12925-1:2024 remains a lubricant-specification boundary, not an actual-reducer lubricant prescription. Alignment/displacement numbers remain exact design/OEM/documentation questions.

## PASS — evidence status

Noise, temperature behavior, vibration, leakage, contamination, visible damage and positional change remain observations/evidence. They are not promoted to cause, acceptance, repair or serviceability verdicts.

## PASS — equipment authority

The lesson still cannot issue repair, adjustment, NDT, continued-operation or return-to-service permission. SkillsVault `STOP` remains an unsupported-inference/source-handoff instruction, not an equipment-operation command.

## PASS — immutable history

CRN-M-01, CRN-M-02, CRN-M-03 frozen topics and `status/FROZEN_INDEX.json` remain byte-identical.

# Result

`PASS WITH CORRECTIONS APPLIED`

The D1 mental model remains beginner-level, but the boundary between topology, kinematics, transmitted load, design rating, condition evidence and equipment authority is now sharper.

## Next

`CRN-M-04 / D1 RED TEAM / PASS I / v1 — adversarial challenge of drive-path assumptions, ratio-to-torque shortcuts, reducer/coupling family overreach, alignment/lubrication source misuse, condition-to-diagnosis escalation and equipment-authority leakage before reader experience`
