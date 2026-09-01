# CRN-M-02 / D1 — Reader Experience Pass I v1

## Decision

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

Baseline remote commit:

`c646ca27426c436632d9c8ead9eb17b34cda3c8f`

Scope:
- Lesson v1 after Red Team Pass I;
- narrative order and cognitive load;
- diagram-reading clarity;
- terminology onboarding;
- worked-example continuity;
- technical/source/claim guards preserved.

## Reader question

Assume the reader is technically capable but new to reeving analysis. Can they follow the lesson **without already knowing which intermediate representation to build first**?

Pass I improves that path without changing the engineering conclusions.

---

# Findings and corrections

## RX-01 — The lesson lacked an early map of the learning sequence
**Severity:** HIGH

The correct Red-Team structure existed, but the reader met components, endpoints, force mapping and formulas before seeing the four-layer relationship between them.

Added a 30-second route:

```text
ROPE PATH
→ FORCE MAP
→ SIMPLE MODEL
→ FIELD AUTHORITY
```

This gives every later section a visible place in the mental model.

## RX-02 — `dead end` arrived as jargon before a plain-language anchor
**Severity:** MEDIUM

The first occurrence now uses **«закреплённый конец каната (dead end)»**. Later occurrences may use the shorter term because the concept has already been anchored.

## RX-03 — The five-step algorithm remained abstract too long
**Severity:** HIGH

Added one deliberately simple worked example from drawing to `n`:

```text
moving assembly
→ rope endpoints
→ rope path
→ force-transfer points
→ simple-model check
→ n
```

The example stops before real-equipment claims and exists only to teach sequence.

## RX-04 — Steps 2 and 4 carried too much logic in prose paragraphs
**Severity:** MEDIUM

Converted them into short checklists/questions. The technical content is unchanged; the reader now separates:
- endpoint location;
- endpoint motion;
- rope path;
- force transfer.

## RX-05 — Red-Team complexity needed an explicit stop card
**Severity:** MEDIUM

Added `Стоп-сигналы D1`. The purpose is not to label a real system invalid; it prevents the reader from forcing a complex system into the simple `n` shortcut.

## RX-06 — The heading said “five traps” after Red Team had created seven
**Severity:** LOW

Corrected the heading to `Семь ловушек`. No technical content changed.

---

# Guard preservation

Reader Experience Pass I does **not** alter the locked Red-Team invariants:

```text
ROPE PATH ≠ FORCE MODEL
DEAD END ≠ ZERO FORCE
SIMPLE n-MODEL ≠ UNIVERSAL REEVING MODEL
DIAGRAM COMPREHENSION ≠ FIELD CONFORMANCE AUTHORITY
```

No new numeric design/acceptance claims were introduced.

Still locked:
- D/d criteria;
- groove geometry limits;
- fleet-angle limits;
- drum strength calculations;
- real efficiency factors;
- equipment-specific capacities/reeving permissions;
- field acceptance/discard/repair decisions.

## Whole-Lesson reader verdict

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

The lesson now has a clearer learning spine:

```text
SEE THE SYSTEM
→ TRACE THE ROPE
→ MAP FORCE TRANSFER
→ DECIDE WHETHER SIMPLE n IS VALID
→ USE IDEAL MODEL
→ ESCALATE REAL EQUIPMENT TO DOCUMENTS
```

## Next

`CRN-M-02 / D1 PRACTICE / v1 — build diagram-reading and ideal-model exercises under the locked reader, source and field-authority guards`
