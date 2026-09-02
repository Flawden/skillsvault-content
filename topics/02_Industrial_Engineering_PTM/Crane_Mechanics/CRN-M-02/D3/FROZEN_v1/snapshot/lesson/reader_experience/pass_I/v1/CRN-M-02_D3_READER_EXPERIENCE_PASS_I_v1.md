# CRN-M-02 / D3 — Reader Experience Pass I v1

## Decision

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

Baseline remote commit:

`180a23ce68ee136e9d66385b92a33215f3d17fa5`

Scope:
- D3 Lesson v1 after Technical Editorial + Red Team Pass I;
- causal-analysis flow;
- hypothesis/evidence readability;
- early model-status onboarding;
- observability/negative-evidence comprehension;
- authority-boundary visibility;
- all reviewed technical/source/proof/design/remaining-life guards preserved.

## Reader question

Assume the reader understands D1/D2 mechanics but is new to advanced causal analysis. Can they work through a case **without having to remember the entire 33-section lesson before they know what to write down next**?

Pass I improves that route without changing the engineering conclusions.

---

# Findings and corrections

## RX-D3-01 — The lesson had a route, but no compact early case file
**Severity:** HIGH

The eight-step D3 map was correct, while the full worksheet arrived only in §31. Added a six-line causal case card near the start so the reader can externalize observation, competing hypotheses, discriminating question, unknowns and current status immediately.

## RX-D3-02 — Evidence vocabulary created unnecessary working-memory load
**Severity:** HIGH

Added a pocket legend for `OBSERVED`, hypotheses, predictions, discriminating data, unknowns, model status and boundary. No definition is broadened.

## RX-D3-03 — Model statuses were used long before their full vocabulary section
**Severity:** HIGH

Added an early status map from `NOT YET DEMONSTRATED` through `PLAUSIBLE` to `SUPPORTED ... BOUNDED`, while retaining §24 as the authoritative detailed definition.

## RX-D3-04 — Competing hypotheses lacked one uniform reader template
**Severity:** HIGH

Added a hypothesis card with mechanism, predictions, unexpected observations, distinguishing data, assumptions/unknowns and `WHAT WOULD CHANGE MY MIND`. This reduces asymmetric treatment of a favorite hypothesis versus alternatives.

## RX-D3-05 — Evidence matrix could be mistaken for a score table
**Severity:** MEDIUM

Added a one-datum-at-a-time reading routine and an explicit prohibition on summing `EXPECTED` cells as points or probabilities.

## RX-D3-06 — Negative evidence needed a compact observability gate
**Severity:** HIGH

The Red-Team logic was correct but prose-heavy. Added a visible `EXPECTED → APPLICABLE → OBSERVABLE → COVERED → negative evidence` gate before non-detection can weaken a model.

## RX-D3-07 — “Evidence hierarchy” still visually suggested a universal ranking
**Severity:** MEDIUM

Added a role map that begins with the question and routes to observation, monitoring/history, design/OEM or specialist evidence. This reinforces the existing Red-Team rule that evidence strength is question-specific.

## RX-D3-08 — Seventeen failure modes formed a flat memory list
**Severity:** MEDIUM

Grouped all existing errors into four reader families: causal overclaim, state/model scope, history/data/observability, and authority/formal-method boundary. No failure mode was deleted or weakened.

---

# Guard preservation

Reader Experience Pass I does not weaken the reviewed invariants:

```text
PLAUSIBLE ≠ SUPPORTED ≠ FORMAL ROOT CAUSE
NON-DETECTION ≠ FALSIFICATION WITHOUT OBSERVABILITY
NOT MEASURED ≠ ZERO
PREDICTED DIRECTION ≠ IDENTIFIED CAUSAL EFFECT
BEFORE / AFTER ≠ ONE CAUSE PROVEN
SOURCE EXISTS ≠ METHOD APPLICABLE ≠ DATA SUFFICIENT ≠ AUTHORITY GRANTED
```

Still locked:
- proof-of-competence factors and formal crane load combinations;
- numeric D/d / geometry / acceptance limits not present in exact applicable sources;
- fatigue-life / remaining-life results;
- equipment-specific acceptance/discard/repair/redesign conclusions;
- specialist NDT/MRT interpretation;
- field modification or life-extension authority.

## Whole-lesson reader verdict

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

The D3 learning spine is now easier to execute:

```text
OBSERVE
→ BUILD COMPETING MODELS
→ WRITE PREDICTIONS
→ SEEK DISCRIMINATING DATA
→ CHECK OBSERVABILITY
→ UPDATE MODEL STATUS
→ KEEP UNKNOWNS VISIBLE
→ END WITH A BOUNDED CONCLUSION
```

## Next

`CRN-M-02 / D3 PRACTICE / v1 — build competing-hypothesis, evidence-discrimination, dynamic/history and bounded-conclusion exercises under locked proof/design/remaining-life authority guards`
