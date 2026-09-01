# SkillsVault Content — ROADMAP

## Текущая точка

```text
CRN-M-01 — Канаты и цепи

D1 ✅ FROZEN v1
D2 ✅ FROZEN v1
D3 ✅ FROZEN v1
D4 ✅ FROZEN v1

D4 pipeline
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
└─ D4 Freeze ✅ v1 — immutable snapshot + manifest + tag contract

CRN-M-01 Full Topic Freeze ← NEXT
```

## D4 Freeze v1

Freeze decision:

`CONTENT FROZEN — D4 v1`

Contract:

```text
Source baseline: ff66f0a6df289ba2013747c0b3388fb8d3b5b7b8
Snapshot members: 153 D4 files
Global frozen index: status/FROZEN_INDEX.json
Immutable path: topics/02_Industrial_Engineering_PTM/Crane_Mechanics/CRN-M-01/D4/FROZEN_v1
Tag contract: crn-m-01-d4-v1
```

D4 content corrections at freeze: `0`.

Source Freshness remains `PASS WITH WATCHLIST`; the watchlist is non-blocking for v1 and must be rechecked before a future D4 v2 or a real field decision that depends on volatile OEM guidance.

## Next

`CRN-M-01 FULL TOPIC FREEZE / v1`

Purpose: aggregate D1–D4 as one immutable topic contract, verify cross-depth identity and hand the completed CRN-M-01 pilot into the next topic / pilot-standardization sequence.

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

`main` — accepted current content.  
`FROZEN_vN` — immutable versions; existing frozen paths cannot be silently edited or deleted.  
D4 v1 tag contract: `crn-m-01-d4-v1`.  
`status/CONTENT_STATUS.json` — canonical new-chat entrypoint.  
`status/FROZEN_INDEX.json` — canonical frozen-file hash index.
