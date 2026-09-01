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
└─ D1 Technical Editorial / Pass I ← NEXT
```

## CRN-M-02 D1 Lesson Authoring v1

The first beginner lesson is complete against the locked D1 scope/source gate.

### Core learner algorithm

```text
identify moving assembly
→ trace the complete rope path
→ count only supporting rope parts
→ apply the idealized ratio model
→ separate ideal mechanics from real equipment authority
```

The lesson covers drum, sheave/block, fixed vs moving blocks, reeving, supporting-parts counting, ideal mechanical advantage, ideal speed/distance reciprocity, single/multilayer winding recognition and documentation boundaries.

### Idealized formula boundary

Allowed and explicitly labelled as idealized:

```text
nT = W
T_ideal = W / n
s_rope = n · s_load
v_load = v_rope / n
```

These are teaching models, not equipment-specific force/drive calculations.

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

`CRN-M-02 / D1 TECHNICAL EDITORIAL / PASS I / v1`

Audit the authored lesson for mechanical correctness, wording, model boundaries, source authority and claim-lock compliance before Red Team.

## D1 production sequence

```text
Scope ✅
Source Gate ✅
Lesson Authoring ✅
Technical Editorial ← NEXT
Red Team
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
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 D1 authoring does not alter it because CRN-M-02 content is not frozen yet.
