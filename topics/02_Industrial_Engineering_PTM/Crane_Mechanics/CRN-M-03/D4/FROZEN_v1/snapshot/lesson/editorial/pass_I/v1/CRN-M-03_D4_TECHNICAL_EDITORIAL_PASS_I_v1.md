# CRN-M-03 / D4 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`5be0db99d51d56adf35ef32f36e1280bc59a87b0`

Scope:

- 9 / 9 Lesson Parts;
- 45 / 45 Blocks;
- D1/D2/D3 FROZEN content untouched;
- `status/FROZEN_INDEX.json` untouched;
- D4 kickoff/source-gate artifacts untouched;
- no new normative numeric threshold introduced;
- no closed ISO table/coefficient/algorithm reconstructed;
- no actual hook/grab proof, remaining-life, inspection acceptance or operation authority unlocked.

## Purpose

Read the authored M-03 D4 Lesson as one expert/reference method-governance document and attack the places where apparently careful wording can still leak into a false engineering conclusion.

The editorial target is not style. It is technical boundary integrity:

```text
PUBLIC METADATA
≠
FINAL METHOD APPLICABILITY

DIRECT SCOPE
≠
CONDITIONAL EXTENSION
≠
EXCLUDED COMPONENT

MODEL FIDELITY
≠
VALIDATION STATUS

MODEL AGREEMENT
≠
REAL-SYSTEM VALIDATION

SENSITIVITY RANGE
≠
INVENTED RANGE

METHOD REVIEW
≠
EQUIPMENT AUTHORITY
```

---

# Structural QA

`1…45` remain present exactly once across nine parts.

```text
I     1–5
II    6–10
III   11–15
IV    16–20
V     21–25
VI    26–30
VII   31–35
VIII  36–40
IX    41–45
```

Frozen prerequisites and the D4 kickoff/source gate are read-only.

---

# Findings and applied corrections

## TE-M03-D4-01 — Public metadata could be over-read as final applicability

**Severity:** HIGH / source-method boundary
**Part:** I / Block 3

The authored workflow ended with `APPLICABLE = YES / NO / NOT YET DEMONSTRATED` but did not explicitly distinguish public metadata/abstract scope screening from final applicability to an actual component/configuration/method.

### Fix

Block 3 now separates:

```text
PRELIMINARY SCOPE SCREEN
from
FINAL METHOD APPLICABILITY
```

Public metadata may establish identity, edition/status and preliminary scope/exclusion screening. Final applicability requires legitimately available governing material plus the actual component/configuration and method-specific conditions.

---

## TE-M03-D4-02 — Validation-plan wording was too absolute before solver use

**Severity:** MEDIUM / V&V methodology
**Part:** III / Block 14

`Определи validation evidence до запуска solver` could imply that exploratory model runs are invalid unless validation evidence already exists.

### Fix

The block now requires an intended-use domain plus a validation **plan/evidence target** before solver results are promoted into decision evidence. Exploratory runs remain allowed but cannot be labelled validated merely because they exist or converge.

Guard:

```text
MODEL FIDELITY
≠
VALIDATION STATUS
```

---

## TE-M03-D4-03 — ISO 17440 direct scope and conditional shank extension were collapsed

**Severity:** HIGH / exact source applicability
**Part:** IV / Blocks 16 and 18

The authored `non-covered geometry stop rule` was too absolute. Public ISO metadata distinguishes directly covered forged point-hook bodies and machined thread/nut shanks, states that principles can under stated conditions be applied to other shank-hook types, and separately excludes plate hooks.

### Fix

The lesson now requires three states:

```text
DIRECTLY COVERED
CONDITIONAL EXTENSION — EXACT CONDITIONS REQUIRED
EXCLUDED / NOT COVERED
```

Plate hooks remain explicitly outside ISO 17440 coverage. No conditional extension is inferred from the public abstract alone; exact governing conditions and component mapping are required before any source-bound numeric proof.

---

## TE-M03-D4-04 — Component mapping was necessary but sounded sufficient for a steel-structure method

**Severity:** MEDIUM / method-scope
**Part:** V / Block 22

The phrase `Generic steel-structure method применим только после component/scope mapping` could be read as “mapping completed → method applicable”.

### Fix

Component mapping is now explicitly **necessary, not sufficient**. The governing method must also match load basis, material/model assumptions, limit-state/output and any method-specific conditions.

---

## TE-M03-D4-05 — OEM reference was mixed into real-system validation evidence

**Severity:** HIGH / V&V evidence role
**Part:** VI / Blocks 29–30

An OEM reference may be an authoritative input/configuration/criterion source. It is not automatically empirical validation evidence for the real system.

### Fix

Evidence is now separated into:

```text
VERIFICATION / CROSS-CHECK
VALIDATION AGAINST REAL SYSTEM / INTENDED USE
AUTHORITATIVE INPUT / REQUIREMENT
```

Two agreeing calculations remain cross-check evidence. A model is not validated merely because a second model or authoritative document agrees with it.

---

## TE-M03-D4-06 — `plausible range` allowed an invented sensitivity envelope

**Severity:** MEDIUM / uncertainty discipline
**Part:** VII / Blocks 31 and 35

A learner could choose a convenient “plausible” perturbation range without source, measurement, tolerance or scenario provenance and then report false robustness.

### Fix

Quantitative perturbation now requires a defensible provenance. If no defensible range exists, sensitivity remains qualitative or scenario-bounded and the unknown range itself is reported.

---

## TE-M03-D4-07 — ISO 12482 context could be promoted into component remaining-life method

**Severity:** MEDIUM / method/source boundary
**Part:** VIII / Block 39

The authored wording correctly locked remaining-life verdicts but did not say strongly enough that a crane design-working-period monitoring standard is not automatically the governing component-specific remaining-life method for a hook, suspension member or grab.

### Fix

The exact applicable method now owns component scope and required inputs. ISO 12482 remains monitoring/design-working-period context and watchlist material; the draft replacement remains non-normative.

---

## TE-M03-D4-08 — Handoff role list sounded universal

**Severity:** LOW / authority wording
**Part:** IX / Block 45

`designer/OEM/expert/NDT/inspection/operations` could be mistaken for a universal authority hierarchy.

### Fix

The lesson now requires the **actual authorized role/process for the organization, equipment, jurisdiction and decision**. The listed roles are examples, not a universal hierarchy.

It also distinguishes the engineer's D4 method-review record from the SkillsVault pipeline stage named `Technical Editorial`.

---

## TE-M03-D4-09 — Canonical README retained stale D4 authoring-next state

**Severity:** LOW / repository workflow coherence
**Part:** canonical topic README

The topic README still ended D4 Content Kickoff with `Next: D4 LESSON AUTHORING` after Lesson Authoring had already been committed.

### Fix

The stale workflow line is replaced with an authoring-complete note, and D4 Lesson Authoring + Technical Editorial summaries are appended with Red Team as the current next state.

---

# Whole-lesson result

## PASS WITH CORRECTIONS APPLIED

After correction, the central M-03 D4 guards are:

```text
PUBLIC ABSTRACT / METADATA ≠ FINAL APPLICABILITY
ISO 17440 DIRECT COVERAGE ≠ CONDITIONAL SHANK EXTENSION ≠ PLATE-HOOK COVERAGE
ISO 17096 C-HOOK COVERAGE ≠ CRANE HOOK-SUSPENSION PROOF
ISO 17096 ≠ GRAB / GRAB-BUCKET AUTHORITY
COMPONENT MAPPING = NECESSARY, NOT SUFFICIENT
MODEL FIDELITY ≠ VALIDATION STATUS
CROSS-CHECK ≠ REAL-SYSTEM VALIDATION
OEM AUTHORITY ≠ AUTOMATIC VALIDATION EVIDENCE
UNSOURCED RANGE ≠ QUANTITATIVE SENSITIVITY BASIS
MONITORING CONTEXT ≠ COMPONENT REMAINING-LIFE VERDICT
TECHNICAL ANALYSIS ≠ EQUIPMENT AUTHORITY
```

No correction touches frozen D1–D3, `FROZEN_INDEX`, or D4 kickoff/source-gate artifacts.

## Next

`CRN-M-03 / D4 RED TEAM / PASS I / v1 — adversarial challenge of method selection, source applicability, hook/grab scope traps, hidden inputs, V&V claims, sensitivity robustness and authority boundaries before reader-experience review`
