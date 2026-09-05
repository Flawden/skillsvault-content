# CRN-M-04 — Редукторы и муфты
# D1 Final Alignment v1
## Lesson → Practice → Reasoning → Expected Result → Verification Rubric

Date: `2026-09-05`
Baseline: `63baa98bcd5b8a92d63129e75b0c8421afc2c7dc`

---

# 1. Purpose

Final Alignment проверяет полный принятый D1 contract перед Source Freshness.

Он **не переписывает** Lesson, Practice, Practice Reasoning, Expected Result или Verification Rubric. Его задача — доказать:

- что каждая проверяемая D1 competence имеет prior instructional/practice/reasoning origin;
- что каждый non-compensable BF происходит из ранее обучавшейся failure family, а не появляется только на Rubric stage;
- что `SR-D1-01/02` остаются severity-review families и не маскируются под дополнительные BF;
- что known A–J, включая integrated Case J, намеренно недостаточны для `ER-D1-10`;
- что U1 + C1 закрывают ровно unseen-transfer / evidence-update gap;
- что score thresholds являются педагогической политикой SkillsVault, а не engineering acceptance criteria;
- что source/equipment-authority locks и `status/FROZEN_INDEX.json` не затрагиваются.

D1 spine:

```text
SYSTEM / AUTHORITY BOUNDARY
→ DRIVE-PATH / CLAIM-STATUS MAP
→ TOPOLOGY ≠ OPERATING STATE
→ RATIO ≠ ACTUAL / RATED TORQUE
→ FAMILY ≠ EXACT IDENTITY / RATING
→ CONDITION / LUBRICATION EVIDENCE
→ SOURCE ROLE → EXACT APPLICABILITY
→ DISCRIMINATING EVIDENCE
→ BOUNDED CONCLUSION / STOP-HANDOFF
→ UNSEEN U1
→ C1 STATUS / SOURCE-MAP UPDATE
```

---

# 2. Alignment result

```text
Lesson numbered sections:          17 / 17 traced
Practice cases:                    10 / 10 traced
Practice Reasoning cases:          10 / 10 traced
Expected Result dimensions:        10 / 10 traced
Verification Rubric dimensions:    10 / 10 traced
Blocking Failures with origin:     10 / 10
Severity-review families traced:    2 / 2
Orphan Lesson sections:             0
Orphan Practice cases:              0
Orphan Reasoning cases:             0
Orphan Expected dimensions:         0
Orphan Rubric dimensions:           0
Surprise Blocking Failures:         0
Guard contradictions:               0
Language accessibility gaps:        0
Content corrections required:      NO
Source Freshness ready:            YES
```

Decision: `PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

---

# 3. Lesson coverage — 17/17

| Lesson | Primary role | ER coverage | Downstream evidence | Result |
|---|---|---|---|---|
| §1 | Separate drive elements: motor / coupling / reducer / brake and their interfaces | ER-D1-01,04,05 | A,D,E,F,J; U1/C1 | PASS |
| §2 | Choose system boundary, input/output and build drive-path interfaces before inference | ER-D1-01,02,09 | A,B,J; BF-D1-01/02 | PASS |
| §3 | Explain reducer ratio without power-creation or rating shortcut | ER-D1-03 | C,J; BF-D1-03 | PASS |
| §4 | Recognize reducer internals without collapsing them into one generic gear | ER-D1-04 | D,J; U1/C1 | PASS |
| §5 | Recognize reducer families without selection/rating promotion | ER-D1-04 | D,J; SR-D1-01 | PASS |
| §6 | Separate topology / stage structure from direction, mode and load-flow claims | ER-D1-02,03,04 | B,C,D,J; BF-D1-02/03 | PASS |
| §7 | Treat bearings, housing and seals as functional support elements, not diagnostic verdicts | ER-D1-06 | G,H,J | PASS |
| §8 | Treat lubrication as evidence/source-bound; D1 does not prescribe product/substitution | ER-D1-06,07 | G,I,J; BF-D1-06 | PASS |
| §9 | Recognize coupling function/family without universal misalignment forgiveness | ER-D1-05 | E,F,J; BF-D1-04 | PASS |
| §10 | Preserve ГОСТ Р 50895-2025 gear-coupling scope; family scope is not interchangeability | ER-D1-05,07 | F,I,J; BF-D1-05 | PASS |
| §11 | Keep alignment/interface geometry important but numeric acceptance source-bound | ER-D1-05,09 | E,J; BF-D1-04 | PASS |
| §12 | Separate visible condition evidence from diagnosis / acceptance | ER-D1-06,09 | G,H,J; BF-D1-07 | PASS |
| §13 | Use gear-damage nomenclature without promoting a damage name to root cause | ER-D1-06,07 | H,I,J; BF-D1-07 | PASS |
| §14 | Route question → source role → exact applicability; title/category alone is insufficient | ER-D1-07,08,09 | F,G,H,I,J; BF-D1-08/09 | PASS |
| §15 | Integrated D1 workflow: identity/history/unknown status → evidence → bounded conclusion | ER-D1-01…09 | A–J; U1/C1; SR-D1-02 | PASS |
| §16 | Beginner traps + STOP-card; unsupported inference stops without equipment command | ER-D1-01…09 | A–J; BF-D1-01…10; SR-D1-01/02 | PASS |
| §17 | Consolidated mental model for transfer; exact data/OEM/qualified process at boundary | ER-D1-01…10 | J pattern; U1 + C1 closure | PASS |

`17 / 17 numbered Lesson sections traced.`

Onboarding, micro-case, retrieval checkpoints and STOP-card fragments are support structure inside the numbered lesson, not orphan competencies.

---

# 4. Practice / Practice Reasoning coverage — 10/10

| Case | Primary competence | ER coverage | Main guard | Result |
|---|---|---|---|---|
| A | system boundary + apparent interfaces vs proven architecture | ER-D1-01,02,09 | BF-D1-01/02 | PASS |
| B | connectivity map vs operating mode / direction | ER-D1-02,09 | BF-D1-02 | PASS |
| C | ratio vs actual/rated torque + current-configuration status | ER-D1-03,08,09 | BF-D1-03/09 | PASS |
| D | reducer-family recognition without exact model/rating/load-share invention | ER-D1-04,09 | SR-D1-01; BF-D1-03 if downstream | PASS |
| E | coupling function/flexibility vs alignment acceptance | ER-D1-05,09 | BF-D1-04 | PASS |
| F | gear-coupling source scope vs exact identity/interchangeability | ER-D1-05,07,09 | BF-D1-05/08; SR-D1-01 | PASS |
| G | leak/lubrication evidence vs installed product/substitution/root cause | ER-D1-06,07,09 | BF-D1-06/07 | PASS |
| H | noise/vibration/temperature/damage evidence vs diagnosis/acceptance | ER-D1-06,07,09 | BF-D1-07 | PASS |
| I | source-role routing and exact applicability across question families | ER-D1-07,09 | BF-D1-08/10 | PASS |
| J | integrated known D1 drive packet + bounded authority handoff | ER-D1-01…09; ER-D1-10 pattern only | BF-D1-01…10; SR-D1-01/02 | PASS |

Practice Reasoning provides non-exclusive trajectories for every A–J case and explicitly rejects a single answer key.

Result:

`10 / 10 Practice cases aligned; 10 / 10 Reasoning cases aligned.`

Case J is an integrated **known** case. It rehearses the whole D1 packet but does not close unseen transfer.

---

# 5. ER-D1-01…10 traceability

| ER | Observable competence | Lesson origin | Known evidence | Verification closure | Result |
|---|---|---|---|---|---|
| ER-D1-01 | System / authority boundary | §§1–2,15–17 | A,J | U1 + C1 boundary/status update | PASS |
| ER-D1-02 | Drive-path topology separated from operating state | §§2,6,15–17 | A,B,J | U1 + C1 connectivity/state update | PASS |
| ER-D1-03 | Ratio / actual torque / permissible torque separation | §§3,6,15–17 | C,J | U1 + C1 current-ratio update without rating leap | PASS |
| ER-D1-04 | Reducer family recognition without exact design/rating completion | §§1,4–6,15–17 | D,J | U1 + C1 family/exact-identity update | PASS |
| ER-D1-05 | Coupling function / identity / alignment / interchangeability separation | §§1,9–11,15–17 | E,F,J | U1 + C1 exact coupling/OEM update | PASS |
| ER-D1-06 | Condition + lubrication evidence discipline without diagnosis/acceptance | §§7–8,12–13,15–17 | G,H,J | U1 + C1 evidence-state update | PASS |
| ER-D1-07 | Source role + exact applicability | §§8,10,13–17 | F,G,H,I,J | U1 + C1 source-map update | PASS |
| ER-D1-08 | Historical / old-document status separated from current configuration | §§14–17 | C,I,J | U1 + C1 old-drawing/current-as-built update | PASS |
| ER-D1-09 | Discriminating evidence + bounded STOP / authority handoff | §§2,11–17 | A–J | U1 + C1 selective STOP release | PASS |
| ER-D1-10 | Unseen transfer of complete D1 workflow | integrated §§1–17 | J is known pattern only | mandatory unseen U1 + material C1 update | PASS |

`10 / 10 Expected Result dimensions are represented by the Rubric on the same ER-D1 IDs.`

The intentionally verification-only closure is `ER-D1-10`:

```text
KNOWN A–J = necessary pattern evidence
CASE J = integrated known pattern, still not unseen transfer
U1 = unseen transfer
C1 = evidence/configuration-status update after material new evidence
```

Known-case success alone is intentionally insufficient.

---

# 6. Blocking-failure provenance — 10/10

| BF | Failure | Reasoning origin | Lesson origin | Practice / Reasoning exposure | ER origin | Result |
|---|---|---|---|---|---|---|
| BF-D1-01 | BOUNDARY / AUTHORITY LEAKAGE | `R-F01` | §§1–2,15–17 | A,J | ER-D1-01/09 | PASS |
| BF-D1-02 | TOPOLOGY → OPERATING STATE | `R-F02` | §§2,6,15–16 | A,B,J | ER-D1-02 | PASS |
| BF-D1-03 | RATIO → ACTUAL / RATED TORQUE | `R-F03` | §§3,6,15–16 | C,J | ER-D1-03 | PASS |
| BF-D1-04 | COUPLING FLEXIBILITY → ALIGNMENT ACCEPTANCE | `R-F05` | §§9,11,16 | E,J | ER-D1-05/09 | PASS |
| BF-D1-05 | FAMILY STANDARD → INTERCHANGEABILITY | `R-F06` | §§9–10,14–16 | F,I,J | ER-D1-05/07 | PASS |
| BF-D1-06 | LUBRICANT SOURCE → INSTALLED / SUBSTITUTION CLAIM | `R-F07` | §§8,14–16 | G,I,J | ER-D1-06/07 | PASS |
| BF-D1-07 | CONDITION / DAMAGE → ROOT CAUSE / ACCEPTANCE | `R-F08` | §§7,12–13,16 | G,H,J | ER-D1-06 | PASS |
| BF-D1-08 | DOCUMENT TITLE → EXACT APPLICABILITY | `R-F09` | §§10,14–16 | F,I,J | ER-D1-07 | PASS |
| BF-D1-09 | HISTORICAL DATA → CURRENT CONFIGURATION | `R-F10` | §§14–16 | C,I,J | ER-D1-08 | PASS |
| BF-D1-10 | EQUIPMENT-AUTHORITY LEAK | `R-F12` | §§14–17 | A–J; explicit J | ER-D1-01/09 | PASS |

`10 / 10 non-compensable BF have prior origin.`

The mapping is exact across the Practice Reasoning taxonomy:

```text
R-F01 → BF-D1-01
R-F02 → BF-D1-02
R-F03 → BF-D1-03
R-F05 → BF-D1-04
R-F06 → BF-D1-05
R-F07 → BF-D1-06
R-F08 → BF-D1-07
R-F09 → BF-D1-08
R-F10 → BF-D1-09
R-F12 → BF-D1-10
```

Rubric adds the **downstream-use trigger**, not a new technical prohibition. A self-corrected, explicitly bounded draft hypothesis is scored through ER dimensions; a dangerous status jump becomes non-compensable only under the Rubric trigger.

---

# 7. Severity-review provenance — 2/2

| SR | Failure family | Reasoning origin | Prior exposure | Rubric decision | Result |
|---|---|---|---|---|---|
| SR-D1-01 | FAMILY → EXACT IDENTITY / RATING | `R-F04` | §§4–6,9–10,14–16; D,F,J | severity review; escalates only through concrete BF if used downstream | PASS |
| SR-D1-02 | UNKNOWN → CONVENIENT NOMINAL ASSUMPTION | `R-F11` | §§2,14–16; A,C,D,J | severity review; escalates only when unknown is promoted into a concrete BF status jump | PASS |

`SR-D1-01/02` are therefore not orphan penalties and are **not** hidden `BF-D1-11/12`.

---

# 8. U1 + C1 closure

## Known layer

A–J and Case J establish that the learner has seen the D1 workflow and trap families.

They do **not** prove transfer.

## U1

U1 combines multiple unfamiliar status traps: uncertain current reducer/coupling identity, old ratio versus current configuration, torque/rating temptation, spare-coupling interchangeability temptation, lubricant/condition evidence, source-title applicability and equipment-authority pressure.

A strong response may end at bounded STOP if the learner names the blocked claim and discriminating evidence.

## C1

C1 supplies exact current identity/OEM evidence and forces an update:

- old drawing may lose current applicability;
- spare-coupling mismatch becomes explicit;
- exact OEM source roles can open;
- measured alignment, installed lubricant, condition acceptance and operational authority can remain unresolved.

Therefore C1 tests selective evidence-status update, not field-verdict guessing.

`U1 + C1 closure: INTENTIONAL / NON-REDUNDANT`.

---

# 9. Guard consistency

## Source-role guards

- `ГОСТ Р 50895-2025` remains a gear-coupling scope anchor, not a universal coupling/interchangeability authority.
- `ISO 6336` remains a formal gear-design/rating boundary; D1 does not reconstruct rating calculations.
- `ISO 10825-1` remains damage-nomenclature support; damage name is not root-cause proof.
- `ISO 12925-1` remains lubricant-specification boundary; it does not prove the installed lubricant or authorize substitution.
- `ISO 14691:2008` remains a scope-limited development companion/watchlist item and is not promoted to crane-specific selection/alignment authority.
- exact OEM/passport/drawing/manual evidence remains mandatory for equipment-specific identity, interfaces, limits and procedures.

## Authority guards

Locked remain:

- numerical gear rating / reducer selection / service factors;
- coupling selection, rating and interchangeability decisions;
- numeric angular/parallel/axial alignment acceptance;
- lubricant selection, mixing, substitution and fill quantity;
- wear/backlash/vibration/noise/temperature acceptance;
- root-cause verdict from visible condition evidence;
- shaft/bearing/key/spline/fastener design;
- repair/adjustment/overhaul;
- continued operation, stop-operation or return-to-service authority.

```text
SKILLSVAULT STOP ≠ EQUIPMENT OPERATION COMMAND
```

Rubric score thresholds remain **pedagogical verification thresholds only**.

`GUARD CONSISTENCY: PASS`.

---

# 10. Language / accessibility

Learner-facing D1 remains Russian-first.

English engineering labels remain optional/explained; Russian equivalents are accepted. Final Alignment adds no new learner-facing terminology requirement.

`LANGUAGE ACCESSIBILITY: PASS`.

---

# 11. Orphan / contradiction audit

```text
ORPHAN LESSON COMPETENCE:        0
ORPHAN PRACTICE CASE:            0
ORPHAN REASONING CASE:           0
ORPHAN ER DIMENSION:             0
ORPHAN RUBRIC DIMENSION:         0
SURPRISE BF:                     0
HIDDEN SR→BF PROMOTION:          0
SOURCE-SCOPE CONTRADICTION:      0
EQUIPMENT-AUTHORITY CONTRADICTION: 0
LANGUAGE GAP:                    0
```

No content correction is required before freshness verification.

---

# 12. Immutability

Final Alignment must not modify:

- reviewed Lesson content;
- Technical Editorial / Red Team / Reader Experience reports;
- Practice / Practice Reasoning content;
- Expected Result / Verification Rubric content;
- CRN-M-01 / CRN-M-02 / CRN-M-03 frozen topics;
- `status/FROZEN_INDEX.json`.

This stage adds traceability artifacts and propagates downstream status only.

---

# 13. Final decision

```text
FINAL ALIGNMENT = COMPLETE
TRACEABILITY = COMPLETE
LESSON = 17 / 17
PRACTICE = 10 / 10
REASONING = 10 / 10
EXPECTED = 10 / 10
RUBRIC = 10 / 10
BF ORIGIN = 10 / 10
SR ORIGIN = 2 / 2
ORPHANS = 0
SURPRISE BF = 0
GUARD CONTRADICTIONS = 0
CONTENT CORRECTIONS = NO
SOURCE FRESHNESS = READY
```

Decision:

`PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

Next:

`CRN-M-04 / D1 SOURCE FRESHNESS / v1 — revalidate current source editions/status, the ISO 14691 watchlist, reducer/coupling scope and exact-applicability guards, and design/rating/alignment/lubrication/condition/operation-authority boundaries before D1 freeze`.
