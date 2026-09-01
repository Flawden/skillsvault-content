# SkillsVault Content — ROADMAP

## Текущая точка

```text
CRN-M-01 — Канаты и цепи ✅ FULL TOPIC FROZEN v1
└─ tag: crn-m-01-v1

CRN-M-02 — Барабаны, блоки, полиспасты ← ACTIVE
├─ Content Kickoff ✅ v1
├─ D1 Scope ✅ LOCKED v1
├─ D1 Source Gate ✅ PASS WITH CLAIM LIMITS v1
├─ D1 Lesson Authoring ✅ v1
├─ D1 Technical Editorial / Pass I ✅ v1
├─ D1 Red Team / Pass I ✅ v1
├─ D1 Reader Experience / Pass I ✅ v1
├─ D1 Practice ✅ v1
├─ D1 Practice Reasoning ✅ v1
├─ D1 Expected Result ✅ v1
├─ D1 Verification Rubric ✅ v1
├─ D1 Final Alignment ✅ v1
├─ D1 Source Freshness ✅ PASS WITH WATCHLIST v1
├─ D1 Freeze ✅ FROZEN v1 / tag crn-m-02-d1-v1
├─ D2 Content Kickoff ✅ v1
├─ D2 Scope ✅ LOCKED v1
├─ D2 Source Gate ✅ PASS WITH CLAIM LIMITS v1
├─ D2 Lesson Authoring ✅ v1
└─ D2 Technical Editorial / Pass I ← NEXT
```



## CRN-M-02 D2 Lesson Authoring v1

D2 Lesson v1 is complete under the locked `PASS WITH CLAIM LIMITS` source gate.

### Applied learning spine

```text
rope path
→ contact nodes
→ T1/T2/T3... unless equality is justified
→ force directions / reactions
→ spooling + geometry state
→ model status
→ source/OEM boundary
```

### Core authored concepts

- geometry affects node reactions through force direction, not only force magnitude;
- equal branch tension is an explicit idealization/assumption in applied analysis, not a free default;
- effective winding radius links drum angular motion to rope speed and torque arm in simple symbolic models;
- multilayer spooling introduces a different contact state, including transition/crossover context;
- side tracking/contact is an observation/escalation cue, not an invented numeric acceptance criterion;
- duty/classification context matters to selection but does not unlock paid selection factors;
- understanding load path does not authorize field rerouting, repair or redesign.

No numeric design/acceptance values were introduced.

## CRN-M-02 D2 Content Kickoff v1

D2 reuses the frozen D1 mental model as a prerequisite, not as permission to copy D1 simplifications into applied mechanics.

### D2 scope

- applied drum/sheave/reeving mechanics;
- rope-drive geometry as a system variable;
- qualitative fleet/deflection-angle effects without unsourced limits;
- single-layer and multilayer spooling states, layer transitions and crossover zones;
- qualitative tension inequality / reaction-load reasoning when the D1 equal-tension scalar model is insufficient;
- component-condition clues that require inspection/OEM escalation rather than field redesign.

### Source-gate decision

`PASS WITH CLAIM LIMITS`.

Current anchors checked for kickoff:

1. `ISO 4306-1:2026` — vocabulary/components;
2. `ISO 16625:2025` — primary rope/drum/sheave selection and geometry boundary;
3. `ISO 4301-1:2016` — current cycle-based classification context;
4. `ISO 4309:2017` — current published rope care/inspection/discard interface, including multilayer crossover deterioration;
5. `ISO/CD 4309`, Edition 6 — development watch only, not current normative authority;
6. `ФНП ПС №461`, ред. 16.04.2026 — Russian regulatory/operation boundary;
7. actual passport/OEM documentation — mandatory for equipment-specific geometry, reeving, limits and interventions.

Numeric design/acceptance values remain locked unless the exact applicable source text or equipment documentation is available.

## CRN-M-02 D1 Final Alignment v1

The full D1 chain is now traced bidirectionally.

### Alignment result

- Lesson primary sections: 12/12 traced;
- Practice cases: 8/8 aligned;
- Practice Reasoning cases: 8/8 aligned;
- Expected Result: ER-01…ER-10 all traced;
- Verification Rubric: 10/10 dimensions traced;
- Blocking Failures: 6/6 have prior lesson/practice/reasoning origin;
- orphan lesson/practice/ER/rubric items: 0;
- surprise blocking failures: 0;
- guard contradictions: 0;
- content corrections required: NO.

Decision: `PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

## CRN-M-02 D1 Source Freshness v1

Decision: `PASS WITH WATCHLIST — FREEZE CANDIDATE READY`.

- 5 primary source/equipment-authority anchors revalidated;
- 1 active development companion checked;
- ISO 4306-1:2026 remains current Published Edition 5;
- ISO 16625:2025 remains current Published Edition 2; ISO 16625:2013 remains withdrawn;
- ФНП ПС №461 remains current in the 16.04.2026 edition, valid through 01.09.2032;
- ISO 4309:2017 remains the current published Edition 5 but is marked to be revised;
- ISO/CD 4309 Edition 6 is under development at Committee Draft stage and remains watch-only;
- numeric design/acceptance locks and passport/OEM field-authority boundary remain intact;
- content corrections required: NO;
- D1 Freeze candidate: READY.

## Source anchors

1. `ISO 4306-1:2026` — current crane vocabulary/component terminology.
2. `ISO 16625:2025` — current selection standard for wire ropes, drums and sheaves; geometry compatibility boundary.
3. `ФНП ПС №461`, ред. 16.04.2026 — Russian regulatory/operational boundary.
4. `ISO 4309:2017` — wire-rope care/inspection/discard interface; sixth edition under development, freshness watchlist remains active.
5. Passport / OEM manual — required for actual reeving, dimensions, limits and field decisions.

## CRN-M-02 D2 Technical Editorial Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- TE-D2-01 CRITICAL — block free-body/action-reaction sign convention made explicit;
- TE-D2-02 HIGH — `T1/T2/...` clarified as local bookkeeping, not piecewise-constant/discontinuous tension;
- TE-D2-03 HIGH — drum `ωr` relation limited to circumferential speed and simple near-circumferential rope-speed model;
- TE-D2-04 HIGH — axis torque corrected to vector moment with kinematic radius separated from moment arm;
- TE-D2-05 MEDIUM — fleet/lead/deflection terminology made source-specific rather than slash-synonymous;
- ISO 4309 crossover and ISO 4301-1 classification public claims rechecked and retained;
- numeric design/OEM claim locks remain intact;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Red Team Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- RT-D2-01 CRITICAL — one physical rope no longer implies equal local `Ti` without an explicit model;
- RT-D2-02 CRITICAL — body-first FBD discipline prevents block/rope action-reaction arrow mixing;
- RT-D2-03 HIGH — no-slip cannot prove arbitrary helical/axial `v_rope = ωr`;
- RT-D2-04 HIGH — visible layer radius cannot replace the axis moment arm without line-of-action proof;
- RT-D2-05 HIGH — crossover/side-contact observation is not an automatic accept/discard/geometry verdict;
- RT-D2-06 HIGH — numeric angle limits cannot transfer on terminology alone;
- RT-D2-07 HIGH — quasi-static reaction reasoning cannot be presented as actual dynamic load during material acceleration;
- numeric design/OEM claim locks remain intact;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Reader Experience Pass I v1

Decision: `PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`.

- RX-D2-01 HIGH — complete working route is previewed before the technical detail stack;
- RX-D2-02 HIGH — compact `Ti` / FBD / `r_k` / `r_m` / spooling legend reduces symbol load;
- RX-D2-03 HIGH — paired same-contact FBD card prevents action/reaction arrow carry-over;
- RX-D2-04 HIGH — `r_k` and `r_m` are framed by different engineering questions;
- RX-D2-05 MEDIUM — spooling state is identified before mechanism or verdict;
- RX-D2-06 MEDIUM — model-status meanings are onboarded early;
- RX-D2-07 MEDIUM — twelve failure examples are grouped into reader families;
- RX-D2-08 LOW — all seven Red-Team invariants are now visible in the early trap block;
- technical conclusions, numeric-design locks, source authority and OEM/field boundaries are unchanged;
- D1 frozen prerequisite remains immutable.

## Next

CRN-M-02 / D2 PRACTICE / v1 — build applied-mechanics diagram-reading, FBD, geometry/spooling and model-status exercises under locked numeric/OEM guards

D1 is immutable. Continue D2 practice production under the reviewed Reader Experience, Red-Team, numeric-design and equipment-authority guards.

## D1 production sequence

```text
Scope ✅
Source Gate ✅
Lesson Authoring ✅
Technical Editorial ✅
Red Team ✅
Reader Experience Pass ✅
Practice ✅
Practice Reasoning ✅
Expected Result ✅
Verification Rubric ✅
Final Alignment ✅
Source Freshness ✅
D1 Freeze ✅
D2 Content Kickoff ✅
D2 Lesson Authoring ✅
D2 Technical Editorial ✅
D2 Red Team ✅
D2 Reader Experience ✅
D2 Practice ← NEXT
```

## CQ-B001 pilot sequence

```text
CRN-M-01 ✅ FULL TOPIC FROZEN v1
CRN-M-02 ← ACTIVE / D2 PRACTICE NEXT
CRN-M-03 — Крюковые подвески и захваты
CRN-M-04 — Редукторы и муфты
CRN-M-05 — Тормоза
CRN-M-06 — Колёса и подкрановые пути
↓
CQ-B001 Pilot Complete
↓
Content Standard v2
↓
Audit 1079 Topics / prerequisite graph
↓
Industrial Engineering Core
↓
Digital Engineering Core
↓
Aviation Engineering
↓
Cross-domain synthesis
↓
Pedagogical Red Team
↓
Golden Set
↓
ZERO → LEGEND
```

## GitHub

`main` — accepted current content.
`FROZEN_vN` — immutable versions; existing frozen paths cannot be silently edited or deleted.
CRN-M-01 topic tag: `crn-m-01-v1`.
`status/CONTENT_STATUS.json` — canonical new-chat entrypoint.
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 D1 is frozen as v1 under tag `crn-m-02-d1-v1`.
