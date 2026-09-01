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
└─ D2 Content Kickoff ← NEXT
```

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

## Next

CRN-M-02 / D2 CONTENT KICKOFF / v1 — define D2 scope/source gate for applied drum, sheave and reeving mechanics while preserving D1 claim and field-authority boundaries

D1 is immutable. Start D2 by defining its own scope/source gate; do not mechanically inherit D1 technical or numeric assumptions.

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
D2 Content Kickoff ← NEXT
```

## CQ-B001 pilot sequence

```text
CRN-M-01 ✅ FULL TOPIC FROZEN v1
CRN-M-02 ← ACTIVE / D2 NEXT
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
