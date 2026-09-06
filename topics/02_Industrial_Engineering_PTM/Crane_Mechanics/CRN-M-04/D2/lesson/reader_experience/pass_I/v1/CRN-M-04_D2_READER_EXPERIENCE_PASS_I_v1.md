# CRN-M-04 / D2 — Reader Experience Pass I v1

## Decision

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

Baseline remote commit:

`6be8434a38be3ab21c7b45f536f7a06b91f314e4`

Scope:

- 16-section D2 applied-mechanics lesson after Technical Editorial + Red Team Pass I;
- narrative route and working-memory load;
- identity and input-status retrieval;
- ratio/efficiency retrieval;
- force/reaction workflow retrieval;
- interface/result-boundary retrieval;
- end-of-lesson recall and Practice handoff;
- all derivation/rating/acceptance/equipment-authority guards preserved;
- Source Map unchanged.

## Reader question

Can a learner reconstruct the calculation route without memorizing every guard at the same time, while still stopping whenever topology, identity, model or authority is unsupported?

Pass I improves retrieval **without simplifying away the proof obligations**.

---

# Findings and corrections

## RX-D2-01 — The lesson had all guards but no single reusable route
**Severity:** HIGH

Added a 60-second spine:

```text
BOUNDARY / TOPOLOGY → INPUT STATUS → SAME OBJECT / SIDE / STATE
→ MODEL + EQUATION → CROSS-CHECK → BOUNDED CONCLUSION OR STOP
```

Also added the five-word reader map `MODEL / IDENTITY / EQUATION / CHECK / AUTHORITY`.

## RX-D2-02 — Input provenance and identity were distributed across sections
**Severity:** HIGH

Added a five-field input card: `OBJECT/SIDE`, `STATE`, `VALUE+UNIT`, `STATUS`, `SOURCE/BASIS`. This keeps documented/observed/assumed/calculated/rated/permitted roles visible before algebra.

## RX-D2-03 — Same-shaft `P–T–ω` prerequisites were correct but prose-heavy
**Severity:** HIGH

Added a four-question card for same shaft/section, same operating state, same sign/power-flow convention and mechanical power at the chosen boundary.

## RX-D2-04 — Ratio and efficiency guards competed for working memory
**Severity:** HIGH

Added separate compact routers. Ratio retrieves sides → convention → topology → magnitude/direction. Efficiency retrieves boundary → flow direction → regime → supplied/applicable value. No new relation or source authority was added.

## RX-D2-05 — Mesh force and reaction logic looked like adjacent formulas rather than one model chain
**Severity:** HIGH

Added a single workflow: isolate body → identify `T_mesh` → prove same-mesh lever → derive `F_t` → FBD → determinacy check → solve.

## RX-D2-06 — Interface ledger needed a stronger conclusion/handoff cue
**Severity:** MEDIUM_HIGH

Added three result columns: `CALCULATED`, `NOT ESTABLISHED`, `NEXT EVIDENCE`. This preserves demand-vs-capacity separation and makes missing authority explicit.

## RX-D2-07 — The ending needed a compact reconstruction and direct Practice handoff
**Severity:** MEDIUM

Added a seven-step reconstruction spine and seven-question retrieval checkpoint, explicitly marked as **not formal Practice**, then corrected the handoff to D2 Practice.

---

# Guard preservation

Reader Experience Pass I does not weaken or remove:

```text
P=Tω requires same shaft/section + same state + one sign/power-flow convention
near-zero/zero n cannot become a trustworthy P/n torque claim by algebra alone
ratio convention/topology must be proven before reciprocal or direction inference
η is boundary/direction/regime-specific and cannot be borrowed
steady demand cannot become transient demand through invented reserve/service factors
net shaft torque is not automatically one T_mesh
equilibrium does not guarantee unique reactions for an indeterminate model
negative reaction sign is not a fault/contact-loss verdict by itself
connectivity across coupling does not prove equal P/T/n
rounding/margin/catalog proximity does not create rating, selection or equipment authority
calculated demand != rated capacity != permitted operation
```

Still locked: gear rating, reducer/coupling selection, numeric alignment acceptance, bearing life/selection, unknown efficiency inference, repair/return-to-service and equipment authority.

Source Map: `UNCHANGED`.

## Whole-lesson reader verdict

`PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`

Reader spine:

```text
PROVE → LABEL → IDENTIFY → MODEL → CALCULATE → CHECK → BOUND / STOP
```

## Next

`CRN-M-04 / D2 PRACTICE / v1 — build applied-mechanics transfer cases for topology proof, same-shaft power/torque identity, ratio and efficiency discipline, mesh-force/reaction modelling, interface bookkeeping and bounded demand-vs-capacity conclusions`
