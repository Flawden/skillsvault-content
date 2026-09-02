# CRN-M-02 / D3 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`80a217f0f987956d778ca9c4fd279247dd996d7f`

Scope:

- D3 Lesson v1 after Technical Editorial Pass I;
- bounded causal support vs closed-world/root-cause overclaim;
- observability, negative evidence and model-invalidation traps;
- data-quality hypothesis misuse;
- Newton–Euler unknown/zero and state-rebuild traps;
- directional sensitivity vs causal identification;
- historical before/after and intervention-bundle inference;
- evidence-role/source-method/remaining-life/field-authority substitution;
- D1/D2 frozen prerequisites untouched.

## Adversarial question

Assume a technically confident reader can repeat every D3 guard. Can they still misuse the lesson by:

1. calling the best-supported model a proven root cause because the current hypothesis list looks complete;
2. treating non-detection or one mismatch as falsification when the measurement was blind or the model assumptions do not match the state;
3. using `H_data` as an unfalsifiable trash bin for inconvenient evidence;
4. setting unknown acceleration/rotation to zero and reusing an old free-body/state model;
5. converting a directional prediction into an identified causal effect;
6. attributing a before/after improvement to one cause although maintenance changed a bundle of variables;
7. treating the evidence hierarchy as a universal source-ranking rather than question-specific roles;
8. seeing ISO/OEM context and silently upgrading D3 into formal proof, remaining-life, acceptance or field authority?

Pass I attacks those routes.

---

# Findings and corrections

## RT-D3-01 — Best-supported current model could still become a closed-world root-cause claim

**Severity:** CRITICAL

Technical Editorial bounded the status, but a reader could still assume the hypothesis set is complete and read “best supported” as “the cause”.

### Fix applied

The lesson now requires a `HYPOTHESIS-SPACE LIMIT`: what classes were evaluated, what remains outside the current model set, and whether an unknown mechanism could produce the same signature.

```text
BEST SUPPORTED AMONG CURRENT MODELS
≠
FORMAL ROOT CAUSE
```

## RT-D3-02 — Non-detection / single mismatch could still be over-promoted into falsification

**Severity:** CRITICAL

A negative result is only informative if the prediction belongs to the same state/time window and the method could actually have observed it.

### Fix applied

Before `MODEL INVALIDATED BY EVIDENCE`, the lesson now requires an explicit applicability + detectability + coverage + mapping + assumptions gate. If any item is unknown, the result stays `UNKNOWN` or triggers model rebuild.

## RT-D3-03 — `H_data` could become an unfalsifiable escape hatch

**Severity:** HIGH

“Sensor/log/mapping error” can explain away anything unless it is treated as a real competing model.

### Fix applied

`H0/H_data` must now produce its own predictions, discriminating evidence and falsification route. It is not an allowed garbage bin for inconvenient observations.

## RT-D3-04 — Unknown kinematics could be silently replaced by zero

**Severity:** HIGH

Even with correctly scoped Newton–Euler notation, a learner could set `a_G=0` or `α=0` merely because those quantities were not measured, then reuse the previous quasi-static result.

### Fix applied

The lesson now states `NOT MEASURED ≠ ZERO`; unknown kinematics remain in the unknown register unless justified by state/data. Body, state and time-window changes require a rebuilt model.

## RT-D3-05 — Directional sensitivity could be mistaken for causal identification

**Severity:** HIGH

`x ↑ → predicted Y ↑` is a model prediction. Observing x and Y move together does not prove x caused Y; x may be proxy, mediator or co-vary with a confounder.

### Fix applied

The lesson now separates `PREDICTED DIRECTION` from `IDENTIFIED CAUSAL EFFECT` and uses sensitivity only to discriminate models.

## RT-D3-06 — Before/after improvement could still be attributed to one cause after a multi-change maintenance event

**Severity:** HIGH

Maintenance often changes geometry, adjustment, lubrication, control, rope identity, inspection method and duty simultaneously.

### Fix applied

A `CHANGE BUNDLE REGISTER` is now required. Improvement after intervention supports the bundle unless evidence separates the individual causal mechanism.

## RT-D3-07 — Evidence hierarchy could be read as a universal ranking

**Severity:** HIGH

Inspection, monitoring, OEM/design and specialist evidence answer different questions. A more authoritative document in one domain is not automatically evidence for another.

### Fix applied

The lesson now requires question-first source selection: define the question, then choose evidence by role. `MORE AUTHORITATIVE SOURCE ≠ EVIDENCE FOR EVERY QUESTION`.

## RT-D3-08 — Existence of an ISO/OEM source could silently unlock formal method, remaining-life or field authority

**Severity:** CRITICAL

A reader could see ISO 12482 or another relevant source title and assume D3 may perform its formal calculation or certify life/acceptance.

### Fix applied

Added the explicit authority chain:

```text
SOURCE EXISTS
≠
METHOD APPLICABLE
≠
DATA SUFFICIENT
≠
AUTHORITY GRANTED
```

D3 may identify the formal boundary and hand off. It does not manufacture proof, remaining life, acceptance criteria or permission to modify equipment.

---

# Claim-lock verdict

No Red-Team correction unlocks:

- ISO 8686 dynamic factors/load combinations;
- ISO 16625 proof/selection factors;
- numeric D/d, geometry or stress/contact limits;
- fatigue-life or remaining-life numbers;
- actual design-working-period verdict;
- discard/acceptance criteria;
- specialist NDT interpretation;
- equipment-specific repair, redesign, rerouting or life-extension authority.

No paid normative table is reconstructed.

# Whole-Lesson Red-Team verdict

`PASS WITH CORRECTIONS APPLIED`

Most important invariants:

```text
BEST SUPPORTED MODEL
is not
FORMAL ROOT CAUSE

H_data
is not
A TRASH BIN FOR BAD EVIDENCE

NON-DETECTION
is not
FALSIFICATION WITHOUT OBSERVABILITY

NOT MEASURED
is not
ZERO

PREDICTED DIRECTION
is not
IDENTIFIED CAUSAL EFFECT

BEFORE / AFTER IMPROVEMENT
is not
ONE CAUSE PROVEN

SOURCE EXISTS
is not
FORMAL METHOD / REMAINING-LIFE / FIELD AUTHORITY
```

## Next

`CRN-M-02 / D3 READER EXPERIENCE PASS / PASS I / v1 — improve causal-analysis flow, hypothesis/evidence readability and model-status clarity without weakening Red-Team, source or proof/design/remaining-life authority guards`
