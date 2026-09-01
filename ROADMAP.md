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
└─ D1 Reader Experience / Pass I ← NEXT
```

## CRN-M-02 D1 Red Team Pass I v1

Red Team Pass I is complete with five adversarial corrections applied.

### Corrections now locked into Lesson v1

- rope endpoints are mapped to their attachment point before `n`; a dead end attached to the moving assembly is a force-transfer point, not a zero-force endpoint;
- “fixed block” is explicitly relative to the selected hoisting/moving assembly, not necessarily fixed to the building;
- multi-body, equalizing/compensating and other compound reeving must not be forced into the simple D1 `n` shortcut;
- Step 4 is now a force-transfer map, not a visual rope-segment count;
- understanding a diagram is explicitly separated from proving actual field conformance.

### Claim lock preserved

Still blocked until exact applicable source text / equipment documentation is available:

- numeric drum/sheave diameter ratios;
- groove radius / pitch / depth tolerances;
- fleet-angle or deflection-angle numeric limits;
- drum shell/flange stress or redesign calculations;
- detailed efficiency factors presented as real-system results;
- equipment-specific reeving, capacities and service limits;
- field acceptance / discard / repair decisions beyond applicable documentation.

## Source anchors

1. `ISO 4306-1:2026` — current crane vocabulary/component terminology.
2. `ISO 16625:2025` — current selection standard for wire ropes, drums and sheaves; geometry compatibility boundary.
3. `ФНП ПС №461`, ред. 16.04.2026 — Russian regulatory/operational boundary.
4. `ISO 4309:2017` — wire-rope care/inspection/discard interface; sixth edition under development, freshness watchlist remains active.
5. Passport / OEM manual — required for actual reeving, dimensions, limits and field decisions.

## Next

`CRN-M-02 / D1 READER EXPERIENCE PASS / PASS I / v1`

Improve narrative flow, cognitive load and diagram-reading clarity without weakening the Red-Team guards.

## D1 production sequence

```text
Scope ✅
Source Gate ✅
Lesson Authoring ✅
Technical Editorial ✅
Red Team ✅
Reader Experience Pass ← NEXT
Practice
Practice Reasoning
Expected Result
Verification Rubric
Final Alignment
Source Freshness
D1 Freeze
```

## CQ-B001 pilot sequence

```text
CRN-M-01 ✅ FULL TOPIC FROZEN v1
CRN-M-02 ← ACTIVE / D1
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
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 D1 Red Team does not alter it because CRN-M-02 content is not frozen yet.
