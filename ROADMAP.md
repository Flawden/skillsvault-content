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
└─ D1 Expected Result ← NEXT
```

## CRN-M-02 D1 Practice Reasoning v1

Worked reasoning for Practice A–H is complete as a separate artifact.

### Reasoning contract

- Practice remains reusable and contains no embedded answer key;
- reasoning evaluates the chain `moving assembly → endpoints → rope path → force map → simple-model check`;
- moving dead-end attachments are included in force-transfer analysis;
- compound/multi-body schemes may correctly end in `ESCALATE BEYOND D1`;
- ideal force/travel/speed calculations are allowed only after model applicability is demonstrated;
- diagram comprehension remains separate from field conformance and authority.

The reasoning artifact explicitly allows more than one bounded path where geometry/model evidence is insufficient for a unique scalar conclusion.

## Source anchors

1. `ISO 4306-1:2026` — current crane vocabulary/component terminology.
2. `ISO 16625:2025` — current selection standard for wire ropes, drums and sheaves; geometry compatibility boundary.
3. `ФНП ПС №461`, ред. 16.04.2026 — Russian regulatory/operational boundary.
4. `ISO 4309:2017` — wire-rope care/inspection/discard interface; sixth edition under development, freshness watchlist remains active.
5. Passport / OEM manual — required for actual reeving, dimensions, limits and field decisions.

## Next

`CRN-M-02 / D1 EXPECTED RESULT / v1 — define observable beginner behaviors, required evidence outputs and transfer criteria before verification rubric`

Translate the reviewed lesson + Practice + Practice Reasoning into observable beginner behaviors and required evidence outputs.

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
Expected Result ← NEXT
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
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 D1 Practice Reasoning does not alter it because CRN-M-02 content is not frozen yet.
