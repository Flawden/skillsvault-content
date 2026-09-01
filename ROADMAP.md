# SkillsVault Content — ROADMAP

## Текущая точка

```text
CRN-M-01 — Канаты и цепи ✅ FULL TOPIC FROZEN v1

├─ D1 ✅ FROZEN v1
├─ D2 ✅ FROZEN v1
├─ D3 ✅ FROZEN v1
└─ D4 ✅ FROZEN v1
   ├─ Architecture ✅
   ├─ G1–G8 ✅
   ├─ SOURCE-GATE PROGRAM ✅
   ├─ Lesson ✅ 45/45
   ├─ Technical Editorial ✅ Pass I
   ├─ Red Team ✅ Pass I
   ├─ Reader Experience Pass ✅ Pass I
   ├─ Practice ✅ v1
   ├─ Practice Reasoning ✅ v1
   ├─ Expected Result ✅ v1
   ├─ Verification Rubric ✅ v1
   ├─ Final Alignment ✅ v1
   ├─ Source Freshness ✅ v1 — PASS WITH WATCHLIST
   └─ D4 Freeze ✅ v1

Full Topic Freeze ✅ v1
├─ 215 frozen files cross-depth verified
├─ D1–D4 immutable paths locked
├─ Depth tag prerequisites locked
├─ Topic manifest + QA + handoff ✅
└─ Topic tag contract: crn-m-01-v1

NEXT → CRN-M-02 — Барабаны, блоки, полиспасты
```

## CRN-M-01 Full Topic Freeze v1

Decision: `FULL TOPIC FROZEN — CRN-M-01 v1`.

Contract:

```text
Baseline commit: 729f3410d5251862974472022fbd4ec976772a40
D1 frozen-index files: 16
D2 frozen-index files: 19
D3 frozen-index files: 18
D4 frozen-index files: 162
Total locked depth files: 215
Aggregate immutable path: topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/FROZEN_v1
Topic tag contract: crn-m-01-v1
```

D4 Source Freshness remains `PASS WITH WATCHLIST`. The watchlist is non-blocking for v1 and must be rechecked before a future D4/topic v2 or a real field decision that depends on volatile guidance.

`SCR-CONTENT-DEPTH-001` remains open for canonical Vault/app integration and does not invalidate the frozen content package.

## Next

`CRN-M-02 / CONTENT KICKOFF / v1`

Topic: **Барабаны, блоки, полиспасты**.

Start the next Crane Mechanics topic using the CRN-M-01 frozen topic contract as the structural pilot. Establish CRN-M-02's own D1 scope and source gate; do not blindly inherit technical rules or source boundaries.

## CQ-B001 pilot sequence

```text
CRN-M-01 ✅ FULL TOPIC FROZEN v1
CRN-M-02 ← NEXT
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
Depth tags: `crn-m-01-d1-v1`, `crn-m-01-d2-v1`, `crn-m-01-d3-v1`, `crn-m-01-d4-v1`.
Topic tag contract: `crn-m-01-v1`.
`status/CONTENT_STATUS.json` — canonical new-chat entrypoint.
`status/FROZEN_INDEX.json` — canonical frozen-file hash index.
