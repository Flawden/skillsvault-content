# CRN-M-01 / D4 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`d12a3ba22cf9b6cfe6dfd0f633301d445dca7615`

Scope:
- 9 / 9 Parts
- 45 / 45 Blocks
- Technical Editorial Pass I complete
- D1/D2/D3 FROZEN untouched
- D4 source gates untouched
- no new normative thresholds
- no closed tables reconstructed

## Adversarial question

Assume a smart reader wants to misuse D4.

Can the text be read in a way that:
- turns currentness into legal applicability;
- turns an internal ladder into approval;
- turns a teaching equation into an operational method;
- turns temporal sequence into causality;
- turns a general NDT method into acceptance authority;
- delays safety action until root cause is known?

Pass I specifically attacks those failure modes.

---

# Findings and corrections

## RT-01 — `CURRENT` could be misread as `LEGALLY APPLICABLE`
**Severity:** HIGH

Added:

```text
CURRENT STANDARD
≠
AUTOMATIC LEGAL / CONTRACTUAL AUTHORITY
```

Formal applicability must be sourced separately.

## RT-02 — `INSUFFICIENT DATA` could be abused as operational permission
**Severity:** CRITICAL

Added:

```text
INSUFFICIENT DATA
≠
PERMISSION TO CONTINUE OPERATION
```

## RT-03 — C2 could sound like a positive compatibility verdict
**Severity:** HIGH

Renamed C2 to `system compatibility review` and added:

```text
REACHED C2
≠
COMPATIBLE
```

## RT-04 — `NOT DEMONSTRATED` could be treated as “probably okay”
**Severity:** CRITICAL

Added:

```text
NOT DEMONSTRATED
≠
PERMISSION TO INSTALL / CONTINUE
```

## RT-05 — M4 could be mistaken for sufficient remaining-life authority
**Severity:** HIGH

Added:

```text
M4
≠
REMAINING-LIFE PERMISSION
```

## RT-06 — Miner equation could be mistaken for an approved rope-life method
**Severity:** HIGH

Explicitly marked the equation as a teaching model of linear cumulative damage unless an applicable source-defined method authorizes its use for the actual assessment.

## RT-07 — Part V examples could be mistaken for ISO 21669 clauses
**Severity:** MEDIUM

Test A / Test B are now explicitly conceptual boundary-condition illustrations, not a verbatim reconstruction of ISO 21669.

## RT-08 — Fine-tolerance chain family could be mistaken for specific wheel compatibility
**Severity:** HIGH

Added:

```text
FINE-TOLERANCE / CALIBRATED PRODUCT FAMILY
≠
SPECIFIC WHEEL COMPATIBILITY PROVED
```

## RT-09 — Generic MT/PT standards could be mistaken for chain disposition authority
**Severity:** CRITICAL

Added explicit requirements for procedure, product/OEM basis, acceptance basis and qualified personnel.

## RT-10 — `CAUSE UNKNOWN` could delay an already-required safety action
**Severity:** CRITICAL

Added:

```text
CAUSE NOT KNOWN
≠
NO ACTION REQUIRED
```

and a Part IX Safety Override.

## RT-11 — “after replacement” could become post hoc causality
**Severity:** MEDIUM

Added:

```text
AFTER REPLACEMENT
≠
CAUSED BY REPLACEMENT
```

## RT-12 — Evidence-matrix `SUPPORTS` could be mistaken for probability
**Severity:** MEDIUM

`SUPPORTS` is now explicitly qualitative consistency unless a formal inference model is built.

---

# Public-source spot-check — 2026-08-31

- ISO 21669:2005 remains published/confirmed and publicly states that it specifies a method for determining rotational properties; the public card does not expose enough detail to justify reconstructing exact clauses from memory.
- ISO 4309:2017 remains the current published Edition 5; Edition 6 is Committee Draft.
- ISO 3452-1:2021 explicitly says it is not intended for acceptance criteria.
- ISO 9712:2021 defines qualification/certification requirements for NDT personnel.
- ISO 7592:1983 remains current and covers use/inspection/testing/maintenance of chains operating over chain wheels; national/local rules may also govern lifting chains.

---

# Whole-Lesson Red-Team verdict

`PASS WITH CORRECTIONS APPLIED`

Most important invariant:

```text
UNCERTAINTY
does not create
PERMISSION

CAUSE UNCERTAINTY
does not cancel
APPLICABLE SAFETY ACTION

MODEL DEPTH
does not create
AUTHORITY

SOURCE CURRENTNESS
does not create
LEGAL APPLICABILITY
```

## Next

`CRN-M-01 / D4 READER EXPERIENCE PASS / Pass I — narrative flow, cognitive load, motivation and comprehension without reducing technical depth`
