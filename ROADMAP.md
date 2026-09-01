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
└─ D1 Practice Reasoning ← NEXT
```

## CRN-M-02 D1 Practice v1

Practice A–H is complete. It tests the reviewed D1 reasoning spine rather than recall.

### Practice contract

- trace rope path before formulas;
- build a force-transfer map before assigning `n`;
- handle moving dead-end attachments explicitly;
- stop/escalate compound or multi-body schemes instead of forcing a simple model;
- use only idealized force/travel/speed relations after the simple model is demonstrated;
- preserve the boundary between diagram comprehension and real-equipment authority.

Practice has no embedded worked answer key. Practice Reasoning is a separate stage so the cases remain reusable for verification.

## Source anchors

1. `ISO 4306-1:2026` — current crane vocabulary/component terminology.
2. `ISO 16625:2025` — current selection standard for wire ropes, drums and sheaves; geometry compatibility boundary.
3. `ФНП ПС №461`, ред. 16.04.2026 — Russian regulatory/operational boundary.
4. `ISO 4309:2017` — wire-rope care/inspection/discard interface; sixth edition under development, freshness watchlist remains active.
5. Passport / OEM manual — required for actual reeving, dimensions, limits and field decisions.

## Next

`CRN-M-02 / D1 PRACTICE REASONING / v1 — provide worked reasoning paths, force-map checks, model-stop decisions and common failure modes without turning Practice into a single answer key`

Build worked reasoning separately from the exercise set; preserve multiple valid reasoning paths where the evidence/model permits them.

## D1 production sequence

```text
Scope ✅
Source Gate ✅
Lesson Authoring ✅
Technical Editorial ✅
Red Team ✅
Reader Experience Pass ✅
Practice ✅
Practice Reasoning ← NEXT
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
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 D1 Practice does not alter it because CRN-M-02 content is not frozen yet.
