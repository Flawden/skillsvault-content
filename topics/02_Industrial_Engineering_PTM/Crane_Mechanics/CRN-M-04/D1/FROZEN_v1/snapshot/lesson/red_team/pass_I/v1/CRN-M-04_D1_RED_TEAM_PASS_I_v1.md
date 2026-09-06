# CRN-M-04 / D1 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`7c6702ad8931a5a614fbd7f80a2dac8d50b608d5`

Scope:

- 17 / 17 primary lesson sections;
- Technical Editorial Pass I complete;
- CRN-M-01 / CRN-M-02 / CRN-M-03 frozen topics untouched;
- `status/FROZEN_INDEX.json` untouched;
- D1 kickoff/source gate untouched;
- no numeric design, rating, alignment, lubrication or acceptance values introduced;
- no repair, inspection-acceptance, continued-operation or return-to-service authority introduced.

## Adversarial question

Assume a technically confident beginner wants to promote recognition-level evidence into equipment-specific certainty. Can the lesson be abused so that a plausible sketch, family name, standard title, nameplate, damage label or absence of symptoms becomes design/rating/diagnosis/operation authority?

Pass I attacks exactly those promotions.

# Findings and applied corrections

## RT-01 — Visible drive chain could become a “proven” complete architecture
Severity: HIGH

A photo or external layout may hide internal stages, intermediate links or operating-state details. The lesson now states explicitly that a visible/apparent chain is not a complete proven kinematic architecture.

```text
VISIBLE / ASSUMED CHAIN ≠ PROVEN COMPLETE DRIVE PATH
```

## RT-02 — Ratio plus motor nameplate could become actual/permissible torque
Severity: CRITICAL

A reader could combine ratio with motor rated power/torque and silently call the result the real transmitted or allowable reducer/coupling torque. The lesson now keeps actual load, startup/braking transients, efficiencies, dynamics and equipment ratings source-bound.

```text
RATIO + MOTOR NAMEPLATE ≠ ACTUAL TRANSMITTED TORQUE ≠ PERMISSIBLE RATING
```

## RT-03 — Visual similarity/family label could become exact coupling identity
Severity: HIGH

Recognition of an elastomeric, geared, disc-like or other family is not exact product identification. Exact type, size, design and standard applicability remain documentary questions.

## RT-04 — “Flexible/compensating” could become permission to accept misalignment
Severity: CRITICAL

A flexible-looking coupling cannot be used as a field permission to accept unknown offset. Damage, heat or vibration also cannot be promoted to “misalignment caused it” without diagnostic evidence.

## RT-05 — ISO 12925-1 could be laundered into actual lubricant prescription
Severity: CRITICAL

A lubricant specification boundary does not prove what is installed and does not authorize mixing, substitution or compatibility decisions that contradict or bypass exact reducer/OEM documentation.

## RT-06 — Gear damage terminology could become cause/severity/acceptance
Severity: HIGH

Correct nomenclature is still only description. A named damage form does not by itself prove cause, severity, rejectability, remaining life or serviceability.

## RT-07 — No observed symptom could become “healthy”
Severity: CRITICAL

No observed noise, leak, vibration or visible damage is weak negative evidence unless operating state, access, method sensitivity/coverage and baseline are sufficient.

```text
NO SYMPTOM OBSERVED ≠ HEALTH PROVEN
```

## RT-08 — Agreeing evidence lanes could hide common-mode error
Severity: HIGH

Two observations can share one operating state, one mistaken component identity, one sensor/source or one causal assumption. Agreement increases context but does not automatically create independent causal proof.

## RT-09 — Source title/category match could become exact applicability
Severity: CRITICAL

A standard mentioning reducers, couplings, gears or cranes is not automatically the governing source for the exact component/question. Source role and exact applicability remain separate gates; generic anchors do not displace equipment-specific OEM/regulatory authority where applicable.

## RT-10 — STOP/handoff/recommendation could become an equipment command
Severity: CRITICAL

SkillsVault `STOP` stops unsupported inference. A source-gap handoff or technical recommendation is neither operating permission nor a self-issued prohibition. Equipment operational decisions remain in the competent authorized process.

# Whole-lesson Red-Team verdict

`PASS WITH CORRECTIONS APPLIED`

Most important invariants:

```text
VISIBLE CHAIN ≠ PROVEN ARCHITECTURE
RATIO + NAMEPLATE ≠ ACTUAL / PERMISSIBLE TORQUE
FAMILY ≠ EXACT IDENTITY / APPLICABILITY
FLEXIBLE COUPLING ≠ MISALIGNMENT PERMISSION
LUBRICANT STANDARD ≠ ACTUAL LUBRICANT PRESCRIPTION
DAMAGE NAME ≠ CAUSE / ACCEPTANCE
NO SYMPTOM ≠ HEALTH PROVEN
AGREEING EVIDENCE ≠ INDEPENDENT CAUSAL PROOF
SOURCE MATCH ≠ EXACT APPLICABILITY
STOP / HANDOFF ≠ EQUIPMENT OPERATION COMMAND
```

## Next

`CRN-M-04 / D1 READER EXPERIENCE PASS / PASS I / v1 — improve narrative flow, retrieval cues and cognitive load without weakening Technical-Editorial/Red-Team drive-path, source-scope, evidence, design/rating and equipment-authority guards before practice`
