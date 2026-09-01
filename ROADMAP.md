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
└─ D1 Red Team / Pass I ← NEXT
```

## CRN-M-02 D1 Technical Editorial Pass I v1

Technical Editorial Pass I is complete with four corrections applied.

### Corrections now locked into Lesson v1

- `nT = W` is restricted to the simple aligned-support D1 model; angled/compound cases require force components / a force diagram.
- `W` consistently means the vertical weight load of the entire selected moving assembly included in the model.
- a fixed sheave is not treated as a universal “direction-only” statement for all complex reeving; it simply does not create mechanical advantage by its count alone.
- `s_rope = n · s_load` / `v_load = v_rope / n` are restricted to the simple rope-length constraint used by the D1 model.

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

`CRN-M-02 / D1 RED TEAM / PASS I / v1`

Adversarially challenge diagram interpretation, hidden endpoint cases, ideal-model misuse, source boundaries and field-authority traps.

## D1 production sequence

```text
Scope ✅
Source Gate ✅
Lesson Authoring ✅
Technical Editorial ✅
Red Team ← NEXT
Reader Experience Pass
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
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 D1 editorial does not alter it because CRN-M-02 content is not frozen yet.
