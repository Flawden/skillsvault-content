# SkillsVault Content — ROADMAP

## Текущая точка

```text
CRN-M-01 — Канаты и цепи ✅ FULL TOPIC FROZEN v1
└─ tag: crn-m-01-v1

CRN-M-02 — Барабаны, блоки, полиспасты ← ACTIVE
├─ Content Kickoff ✅ v1
├─ D1 Scope ✅ LOCKED v1
├─ D1 Source Gate ✅ PASS WITH CLAIM LIMITS v1
└─ D1 Lesson Authoring ← NEXT
```

## CRN-M-02 Content Kickoff v1

CRN-M-01 supplies the production contract, not the technical answer.

The CRN-M-02 D1 scope is deliberately beginner-facing: component roles, rope path / reeving, ideal mechanical advantage, basic winding and contact vocabulary, schematic reading and documentation boundaries.

### D1 claim boundary

Authoring may use current public source scope and general mechanics to explain concepts, but it must not invent or memorize unsourced numeric design or acceptance limits.

Blocked until exact applicable source text / equipment documentation is available:

- numeric drum/sheave diameter ratios;
- groove radius / pitch / depth tolerances;
- fleet-angle or deflection-angle numeric limits;
- drum shell/flange stress or redesign calculations;
- equipment-specific reeving, capacities and service limits;
- field acceptance / discard / repair decisions beyond the cited applicable documentation.

## Source Gate v1

Decision: `PASS WITH CLAIM LIMITS`.

Current source anchors verified 2026-09-01:

1. `ISO 4306-1:2026` — current crane vocabulary; terminology/component-role anchor.
2. `ISO 16625:2025` — current selection standard for wire ropes, drums and sheaves; engineering-geometry boundary anchor.
3. `ФНП ПС №461`, приказ Ростехнадзора от 26.11.2020 №461, редакция от 16.04.2026 — Russian regulatory/operational boundary.
4. `ISO 4309:2017` — published wire-rope care/inspection/discard standard; supporting interface source, revision is under development and remains on watchlist.
5. Passport / OEM manual of the actual lifting appliance — required source for equipment-specific reeving, dimensions, limits and field decisions.

Public ISO metadata is sufficient for scope qualification, not for reproducing paid normative tables or exact numeric requirements.

## Next

`CRN-M-02 / D1 LESSON AUTHORING / v1`

Build the first beginner lesson against `D1_SCOPE_v1.md` and `SOURCE_GATE_v1.md`. The lesson must distinguish ideal mechanical models from real-system efficiency and must label every numeric engineering limit as unavailable unless supported by an accessible applicable source.

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
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 kickoff does not alter it because no CRN-M-02 content is frozen yet.
