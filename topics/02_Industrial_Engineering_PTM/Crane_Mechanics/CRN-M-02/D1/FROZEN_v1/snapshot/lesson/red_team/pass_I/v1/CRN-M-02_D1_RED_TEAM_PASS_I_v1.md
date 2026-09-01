# CRN-M-02 / D1 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`c774cea0b16d600b72fe482676cf95dbc9068d2f`

Scope:
- D1 Lesson v1 after Technical Editorial Pass I;
- reeving interpretation and endpoint cases;
- ideal force/kinematic model misuse;
- source/claim boundaries;
- field-authority traps;
- CRN-M-01 frozen content untouched;
- no numeric design limits introduced.

## Adversarial question

Assume a smart reader understands the formulas but wants to over-apply them.

Can the lesson be read in a way that:
- loses a rope-end force because the segment is labelled `dead end`;
- calls a block “fixed” using the wrong frame of reference;
- forces a multi-body/equalizing system into a one-body `nT = W` shortcut;
- treats counted rope parts as real mechanical advantage despite unequal/complex force paths;
- turns diagram comprehension into proof that the actual crane is correctly reeved?

Pass I attacks those failure modes.

---

# Findings and corrections

## RT-01 — Moving dead-end attachment could disappear from the force model
**Severity:** CRITICAL

A rope path endpoint was easy to mentally discard after it had been found. If that endpoint is attached directly to the selected moving assembly, rope tension is transmitted through the attachment itself.

Added:

```text
DEAD END НА ДВИЖУЩЕЙСЯ СБОРКЕ
≠
«СИЛА ТУТ ИСЧЕЗЛА»
```

The algorithm now records where each rope end is attached before any `n` is assigned.

## RT-02 — “Fixed block” could be read as earth-fixed
**Severity:** MEDIUM

Clarified the frame of reference. A block may travel with a trolley relative to the building and still be fixed relative to the hook/load assembly for the hoisting reeving being analysed.

## RT-03 — Compound or multi-body reeving could be forced into the simple `n` model
**Severity:** HIGH

Added an explicit stop condition for:
- several moving bodies;
- equalizing / compensating arrangements;
- several traction lines;
- other non-obvious force/kinematic couplings.

These require a separate force and rope-length model before any simple ratio is asserted.

## RT-04 — Supporting-rope counting needed a force-transfer map, not a visual-segment count
**Severity:** HIGH

Step 4 now asks where the rope **transmits force to the selected moving assembly**, including terminal attachments. This prevents a visually tidy but mechanically incomplete count.

## RT-05 — Understanding a diagram could be mistaken for field-conformance authority
**Severity:** CRITICAL

Added:

```text
Я ПОНЯЛ, КАК СХЕМА РАБОТАЕТ
≠
Я ДОКАЗАЛ, ЧТО ФАКТИЧЕСКАЯ ЗАПАСОВКА ЭТОГО КРАНА ПРАВИЛЬНА
```

Actual conformance still requires the approved reeving diagram / passport / OEM documentation and applicable requirements.

---

# Claim-lock verdict

No Red-Team correction unlocks:
- D/d values;
- groove dimensions/tolerances;
- fleet-angle limits;
- drum-strength calculations;
- real efficiency factors;
- actual capacity values;
- field modification approval;
- acceptance/discard/repair criteria.

No paid normative table is reconstructed.

# Whole-Lesson Red-Team verdict

`PASS WITH CORRECTIONS APPLIED`

Most important invariant:

```text
ROPE PATH
is not yet
FORCE MODEL

DEAD END
is not
ZERO FORCE

SIMPLE n-MODEL
is not
UNIVERSAL REEVING MODEL

DIAGRAM COMPREHENSION
is not
FIELD CONFORMANCE AUTHORITY
```

## Next

`CRN-M-02 / D1 READER EXPERIENCE PASS / PASS I / v1 — improve narrative flow, cognitive load and diagram-reading clarity without weakening technical guards`
