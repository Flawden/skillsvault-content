# SkillsVault Content — ROADMAP

## Текущая точка

```text
CRN-M-01 — Канаты и цепи

D1 ✅ FROZEN v1
D2 ✅ FROZEN v1
D3 ✅ FROZEN v1

D4
├─ Architecture ✅
├─ G1–G8 ✅
├─ SOURCE-GATE PROGRAM ✅
└─ Lesson ✅ AUTHORING COMPLETE — 45/45

D4 post-authoring pipeline
├─ Technical Editorial ✅ Pass I
├─ Red Team ✅ Pass I
├─ Reader Experience Pass ✅ Pass I
├─ Practice ✅ v1 — Cases A–H
├─ Practice Reasoning ✅ v1
├─ Expected Result ✅ v1 — ER-01…ER-12
├─ Verification Rubric ✅ v1
├─ Final Alignment ← NEXT
├─ Source Freshness
└─ D4 Freeze

Then:
CRN-M-01 Full Topic Freeze
```

## Verification Rubric v1

Architecture:

```text
KNOWN CASE
↓
UNSEEN TRANSFER CASE
↓
ADVERSARIAL CHALLENGE
```

Scoring:
- 12 ER dimensions;
- 0–4 each;
- max 48.

Blocking failures:
- invented critical input;
- safety delay;
- authority creep;
- false applicability;
- unsupported precision;
- signal-to-cause shortcut.

`D4 VERIFIED` requires:
- no blocking failure;
- unseen transfer completed;
- ER-12 >= 3;
- mandatory D4 core >= 3;
- sufficient total score.

## После CRN-M-01

```text
CRN-M-02 — Барабаны, блоки, полиспасты
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

`main` — принятое состояние контента.
`FROZEN_vN` — неизменяемые версии.
Новый чат начинает с `status/CONTENT_STATUS.json`.
