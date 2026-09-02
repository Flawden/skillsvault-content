# CRN-M-03 / D1 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`de20b1ca88ca64514a605ecf786242f7a510a38b`

Scope:

- D1 Lesson v1 — full technical read;
- Source Map v1 — source/claim-role read;
- D1 Scope / Source Gate — boundary check;
- CRN-M-01 / CRN-M-02 frozen topics untouched;
- no numeric design, inspection, discard, holding-force or test limits introduced;
- no repair/NDT or equipment-operation authority unlocked.

## Purpose

Audit the beginner lesson before Red Team for:

1. mechanically misleading load-path simplification;
2. latch/keeper role over-generalization;
3. hidden acceptance language around seating/contact;
4. source-scope drift around forged-hook proof;
5. attachment-mass arithmetic shortcuts;
6. condition-dependent holding lists that could masquerade as inspection checklists;
7. observation wording that could silently become a failure diagnosis.

---

# Findings and applied corrections

## TE-01 — A serial load-path chain could hide branch/merge mechanics

**Severity:** HIGH

The original lesson used a single arrow chain as its dominant hook-block picture. That is useful for a simple mental model but can teach an unsafe shortcut: a real suspension may split force across multiple elements/interfaces and later recombine.

### Fix applied

The lesson now states explicitly:

```text
simple single path → chain is acceptable as a teaching sketch
parallel / branched path → draw branches and interfaces
unknown distribution → STOP / REQUEST DRAWING-OEM
```

The algorithm now asks for a **load-path map**, not a mandatory serial chain.

## TE-02 — Latch/keeper wording sounded like a universal default function

**Severity:** HIGH / source-role

“Typical function” wording could be over-read as source-independent authority for every keeper/latch design.

### Fix applied

D1 now says a latch/keeper **may** provide a retention/closure function, while the exact intended function, load role, condition and use remain device/OEM specific. The learner must ask what function is actually documented before judging it.

Guard:

```text
VISIBLE LATCH
≠
UNIVERSAL FUNCTION
≠
AUTOMATIC LOAD-BEARING ROLE
```

## TE-03 — “Normal/right/deep seating” could leak field acceptance

**Severity:** MEDIUM / acceptance

The anatomy and positive-engagement sections used wording close to “normal” or “correctly positioned”. Even with disclaimers, a beginner could turn a visual resemblance into an acceptance verdict.

### Fix applied

The lesson now uses **educational reference contact / assumed support region**. It states that deep/centered-looking contact is not field acceptance and that actual intended seating/interface requires applicable documentation.

## TE-04 — ISO 17440 was reduced too narrowly to “forged hook body”

**Severity:** MEDIUM / source scope

The public source role is safer when kept at the level of **defined forged steel hooks within the standard scope**. Calling it a “hook-body proof” invents an extra partition that the beginner source map does not need.

### Fix applied

Lesson and Source Map now say:

```text
DEFINED FORGED STEEL HOOKS / EXACT SCOPE
≠
UNIVERSAL HOOK RULE
≠
WHOLE HOOK-SUSPENSION PROOF
```

## TE-05 — Attachment self-weight could be misread as universal capacity subtraction

**Severity:** MEDIUM / equipment authority

The original physical statement was correct, but a reader could jump from “attachment mass matters” to “subtract it from the crane number”.

### Fix applied

The lesson preserves the physical fact while explicitly rejecting generic arithmetic. Rated-load definitions, deductions, configuration and load-chart interpretation remain crane/device/OEM specific.

## TE-06 — Clamp/magnet/vacuum factor lists could masquerade as inspection checklists

**Severity:** MEDIUM / inspection authority

The causal examples are useful, but they are not complete inspection, pre-use or acceptance procedures.

### Fix applied

Each affected section now labels the factors as **causal categories / educational dependencies**, not a universal checklist. Exact controls, alarms/interlocks, criteria and procedures remain source/device specific.

## TE-07 — “Failure families” wording could turn anomaly recognition into diagnosis

**Severity:** LOW / evidence status

A visible symptom or changed state does not prove that a named failure has occurred.

### Fix applied

The section is now framed as **dangerous states and possible failure mechanisms**. D1 identifies the question/mechanism family without diagnosing failure or issuing discard/repair/operation verdicts.

---

# Source / claim-lock audit

## PASS — locked numeric and acceptance claims

No numeric values were introduced for hook geometry, wear/deformation, side/tip/eccentric loading, holding force, proof, load testing or discard/acceptance.

## PASS — ISO 17096 grab scope guard

The explicit `grabs / grab buckets` exclusion remains unchanged and no ISO 17096 technical criterion is extended to them by analogy.

## PASS — equipment authority

The lesson still cannot issue compatibility, repair, NDT, return-to-service or continued-operation permission. `STOP ANALYSIS ≠ PERMISSION TO KEEP OPERATING` remains intact.

## PASS — immutable history

CRN-M-01 and CRN-M-02 frozen topics and `status/FROZEN_INDEX.json` remain byte-identical.

# Result

`PASS WITH CORRECTIONS APPLIED`

The D1 mental model is now mechanically safer without becoming D2 calculation, formal inspection or operational authority.

## Next

`CRN-M-03 / D1 RED TEAM / PASS I / v1 — adversarial challenge of hook-suspension load-path interpretation, latch/keeper assumptions, source-scope misuse, holding-principle shortcuts, acceptance leakage and equipment-authority traps before reader experience`
