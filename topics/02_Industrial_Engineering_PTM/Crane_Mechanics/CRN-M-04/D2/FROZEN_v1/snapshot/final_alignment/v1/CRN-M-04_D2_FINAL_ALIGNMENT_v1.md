# CRN-M-04 — Редукторы и муфты
# D2 Final Alignment v1
## Lesson → Practice → Reasoning → Expected Result → Verification Rubric

Date: `2026-09-06`
Baseline: `e3c2dca95d6465584cd7a782b98fb11eb29a77ed`

---

# 1. Purpose

Final Alignment не переписывает D2 content. Он доказывает end-to-end происхождение каждой проверяемой applied-mechanics competence и каждого failure guard перед Source Freshness.

Проверяются:

- 16 numbered Lesson sections;
- 10 Practice A–J;
- 10 Practice Reasoning A–J;
- ER-D2-01…13;
- те же ER-D2-01…13 в Rubric;
- BF-D2-01…12 с точным prior origin;
- SR-D2-01 без скрытого превращения в BF-D2-13;
- intentional known → U1 → C1 transfer closure;
- отсутствие contradiction между bounded calculation, STOP и authority locks;
- педагогическая природа 39/52 и 47/52 thresholds;
- неизменность D1 frozen tree и `status/FROZEN_INDEX.json`.

D2 spine:

```text
BOUNDARY / TOPOLOGY
→ INPUT STATUS + OBJECT / SIDE / STATE / DOMAIN IDENTITY
→ P–T–ω / RATIO / η CONTRACT
→ SHAFT / MESH TORQUE-BALANCE
→ SAME-MESH FORCE IDENTITY
→ FBD / DETERMINACY
→ INTERFACE BOOKKEEPING
→ DEMAND / CAPACITY / AUTHORITY REGISTER
→ CROSS-CHECK
→ BOUNDED CALCULATION OR STOP
→ U1 UNSEEN TRANSFER
→ C1 SELECTIVE EVIDENCE-STATUS UPDATE
```

---

# 2. Alignment result

```text
Lesson numbered sections:          16 / 16 traced
Practice cases:                    10 / 10 traced
Practice Reasoning cases:          10 / 10 traced
Expected Result dimensions:        13 / 13 traced
Verification Rubric dimensions:    13 / 13 traced
Blocking Failures with origin:     12 / 12
Severity-review families traced:    1 / 1
U1 coverage:                        PASS
C1 coverage:                        PASS
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

# 3. Lesson coverage — 16/16

| Lesson | Primary role | ER coverage | Downstream evidence | Main guard |
|---|---|---|---|---|
| §1 | Model boundary before formula | ER-D2-01,02,12 | A–J; U1/C1 | boundary/topology before equations |
| §2 | Input status before arithmetic | ER-D2-02,03,04,05,06,10,11,12 | A,D,H,I,J; U1/C1 | object/side/state/domain identity |
| §3 | rpm ↔ angular speed with units/state | ER-D2-03 | A,C,J; U1 | unit/state discipline |
| §4 | P=Tω on same mechanical shaft/state | ER-D2-03 | A,C,H,J; U1 | BF-D2-01 boundary |
| §5 | 9550 form plus low-speed/transient guard | ER-D2-03,06 | A,D,J; U1/C1 | BF-D2-04 |
| §6 | Simple gear ratio with explicit convention | ER-D2-04 | B,C,J; U1 | BF-D2-02 |
| §7 | Multistage ratio only after topology proof | ER-D2-01,04 | C,J; U1/C1 | BF-D2-02 |
| §8 | Ideal versus supplied-efficiency model | ER-D2-05 | C,J; U1/C1 | BF-D2-03 |
| §9 | Ratio does not create power / energy sanity | ER-D2-03,04,05,11 | C,J; U1 | energy cross-check |
| §10 | Calculated demand ≠ rated capacity | ER-D2-11,12 | I,J; U1/C1 | BF-D2-10/11/12 |
| §11 | Torque → tangential force only with same-mesh lever | ER-D2-07,08 | E,J; U1 | BF-D2-05/06 |
| §12 | FBD and isolated-body modelling | ER-D2-07,08,09 | E,F,G,J; U1 | BF-D2-07/08 |
| §13 | Bounded external reactions / determinacy | ER-D2-09,12 | F,G,J; U1/C1 | BF-D2-07/08 |
| §14 | Interface ledger across components/coupling | ER-D2-02,10 | H,J; U1/C1 | BF-D2-09 |
| §15 | Unit/identity/sign/energy cross-checks | ER-D2-02…12 | A–J; U1/C1 | model-closure guard |
| §16 | Integrated bounded example + STOP protocol | ER-D2-01…13 | A–J pattern; U1+C1 closure | BF-D2-01…12; SR-D2-01 |

`16 / 16 numbered Lesson sections traced.`

Subsections under §15 and reader-retrieval cards are support structure, not orphan competencies.

---

# 4. Practice / Practice Reasoning coverage — 10/10

| Case | Primary competence | ER coverage | Reasoning failure exposure |
|---|---|---|---|
| A | same-shaft P–T–ω identity | ER-D2-02,03,12 | R-F01 |
| B | ratio convention + topology | ER-D2-01,04,12 | R-F02 |
| C | multistage ratio + forward η | ER-D2-01,03,04,05,12 | R-F02/R-F03 |
| D | near-zero/transient STOP | ER-D2-02,03,06,12 | R-F04 |
| E | net shaft vs mesh torque / same-mesh geometry | ER-D2-07,08,12 | R-F05/R-F06 |
| F | determinate external statics | ER-D2-09,12 | R-F07/R-F08 guard |
| G | three-support indeterminate STOP | ER-D2-09,12 | R-F07/R-F08 |
| H | coupling side bookkeeping + transfer model | ER-D2-02,03,05,10,12 | R-F03/R-F09 |
| I | demand vs catalog capacity/authority | ER-D2-11,12 | R-F10/R-F11/R-F12 |
| J | integrated known D2 packet | ER-D2-01…12; ER-D2-13 pattern only | R-F01…R-F12 |

Practice Reasoning provides at least two valid reasoning trajectories, discriminating evidence and bounded conclusion for every A–J case.

Case J is an integrated **known** D2 capstone. It rehearses the complete packet but is intentionally insufficient for ER-D2-13.

---

# 5. ER-D2-01…13 traceability

| ER | Observable competence | Lesson origin | Known evidence | Verification closure |
|---|---|---|---|---|
| ER-D2-01 | Boundary/topology before equations | §§1,7,16 | A,B,C,E,J | U1+C1 |
| ER-D2-02 | Input-status + object/side/state/domain identity | §§1–2,14–16 | A,D,H,I,J | U1+C1 |
| ER-D2-03 | Same-shaft/state P–T–ω | §§2–5,9,15–16 | A,C,H,J | U1+C1 |
| ER-D2-04 | Ratio topology/convention/direction | §§2,6–7,9,15–16 | B,C,J | U1+C1 |
| ER-D2-05 | η direction/regime/path applicability | §§2,8–9,15–16 | C,H,J | U1+C1 |
| ER-D2-06 | Steady vs transient / near-zero validity | §§2,5,15–16 | D,J | U1+C1 |
| ER-D2-07 | Shaft torque balance → mesh torque | §§11–12,15–16 | E,J | U1+C1 |
| ER-D2-08 | Same-mesh geometry → F_t | §§11–12,15–16 | E,J | U1+C1 |
| ER-D2-09 | FBD/determinacy/bounded reactions | §§12–13,15–16 | F,G,J | U1+C1 |
| ER-D2-10 | Interface bookkeeping without equality leap | §§2,14–16 | H,J | U1+C1 |
| ER-D2-11 | Demand/capacity/rating/authority separation | §§2,9–10,15–16 | I,J | U1+C1 |
| ER-D2-12 | Cross-check + bounded STOP + discriminating evidence | §§1–2,10,13,15–16 | A–J | U1+C1 |
| ER-D2-13 | Unseen transfer + C1 model update | §16 integrated pattern | J known pattern only | mandatory U1+C1 |

`13 / 13 Expected Result dimensions are represented by the Rubric on the same ER-D2 IDs.`

The intentional verification-only gap is `ER-D2-13`:

```text
KNOWN A–J = supporting / rehearsal evidence
CASE J = integrated known pattern, still not unseen
U1 = unseen combination of identity/topology/model traps
C1 = material evidence-status update after the initial U1 answer
```

Known-case arithmetic alone is therefore deliberately insufficient.

---

# 6. Blocking-failure provenance — 12/12

| BF | Reasoning origin | Failure | Lesson origin | Practice exposure | ER origin |
|---|---|---|---|---|---|
| BF-D2-01 | `R-F01` | mixed shaft/state/domain | §§2,4,15–16 | A,H,J | ER-D2-02/03 |
| BF-D2-02 | `R-F02` | ratio without topology/convention | §§6–7,15–16 | B,C,J | ER-D2-04 |
| BF-D2-03 | `R-F03` | η applicability leak | §§8–9,15–16 | C,H,J | ER-D2-05 |
| BF-D2-04 | `R-F04` | steady/near-zero → transient peak | §§5,15–16 | D,J | ER-D2-06 |
| BF-D2-05 | `R-F05` | net shaft torque → mesh torque | §§11–12,16 | E,J | ER-D2-07 |
| BF-D2-06 | `R-F06` | cross-mesh geometry | §§11–12,16 | E,J | ER-D2-08 |
| BF-D2-07 | `R-F07` | unique reactions without determinacy | §§12–13,15–16 | F,G,J | ER-D2-09 |
| BF-D2-08 | `R-F08` | reaction sign/load → diagnosis/acceptance | §§12–13,15–16 | F,G,J | ER-D2-09/11 |
| BF-D2-09 | `R-F09` | coupling connectivity → numerical equality | §§14–16 | H,J | ER-D2-10 |
| BF-D2-10 | `R-F10` | demand → unverified capacity/suitability | §§10,15–16 | I,J | ER-D2-11 |
| BF-D2-11 | `R-F11` | invented safety/rating method | §§10,15–16 | I,J | ER-D2-11 |
| BF-D2-12 | `R-F12` | bounded result/STOP → selection/operation authority | §§1,10,15–16 | I,J; A–J authority handoff | ER-D2-11/12 |

`12 / 12 non-compensable BF have exact prior origin.`

Exact Reasoning → Rubric mapping:

```text
R-F01 → BF-D2-01
R-F02 → BF-D2-02
R-F03 → BF-D2-03
R-F04 → BF-D2-04
R-F05 → BF-D2-05
R-F06 → BF-D2-06
R-F07 → BF-D2-07
R-F08 → BF-D2-08
R-F09 → BF-D2-09
R-F10 → BF-D2-10
R-F11 → BF-D2-11
R-F12 → BF-D2-12
```

Rubric добавляет **downstream-use trigger**, а не новый технический запрет. Ошибка, которую learner сам исправил до downstream use, снижает ER score, но не обязана становиться BF.

---

# 7. Severity-review provenance — 1/1

| SR | Family | Prior origin | Rubric decision |
|---|---|---|---|
| SR-D2-01 | Evidence request exists but is not discriminating | Lesson §16 STOP protocol; Practice calculation packet; `Discriminating evidence` in all A–J Reasoning paths; ER-D2-12 | severity review; concrete BF only if learner then makes one of BF-D2-01…12 downstream jumps |

`SR-D2-01` is not orphan content and is not a hidden `BF-D2-13`.

---

# 8. U1 + C1 closure

## Known layer

A–J establish trained patterns. J integrates the entire known D2 packet.

They do **not** prove transfer.

## U1

U1 deliberately combines:
- same-shaft mechanical P/n;
- two-stage ratio and supplied forward η;
- mesh-force opportunity;
- a three-support indeterminate reaction model;
- asynchronous coupling-side measurements;
- tempting unverified catalog capacity;
- pressure for an operational verdict.

A strong response must calculate what is closed and STOP what is not.

## C1

C1 confirms exact coupling identity, catalog rating role and synchronous side measurements but intentionally leaves:
- duty/transient/service-factor selection inputs;
- three-support stiffness/compatibility;
- alignment acceptance evidence;
- equipment-operation authority

unresolved.

Therefore C1 tests **selective model update**, not answer persistence and not field permission.

`U1 + C1 closure: INTENTIONAL / NON-REDUNDANT`.

---

# 9. Guard consistency

The complete D2 stack preserves all of the following:

- `P=Tω` requires same mechanical shaft/state and a declared power-flow/sign convention.
- ratio requires proven topology + explicit convention/direction.
- supplied η is direction/regime/path specific.
- steady/near-zero `P/n` does not establish transient peak torque.
- net/boundary shaft torque does not establish individual mesh torque.
- `F_t=T/r=2T/d` requires same-mesh torque + same-gear geometry.
- equilibrium equations do not produce unique reactions without determinacy/model closure.
- external reaction or reaction sign is not bearing-life/fault/acceptance evidence.
- coupling connectivity is not numerical P/T/n equality without transfer/same-state evidence.
- calculated demand is not rated capacity, suitability or permitted operation.
- invented service/reserve factors and arithmetic margins are not rating methods.
- a SkillsVault STOP is not an equipment command.
- gear rating, reducer/coupling selection, numeric alignment acceptance, bearing life, repair and equipment authority remain locked.

No layer reverses or weakens a prior guard.

`Guard contradictions: 0`.

---

# 10. Scoring-policy consistency

Rubric thresholds:

```text
VERIFIED >= 39 / 52
ROBUST   >= 47 / 52
```

are **pedagogical verification thresholds** only.

They are not:
- torque safety factors;
- gear/coupling ratings;
- acceptance limits;
- reliability margins;
- operation permissions.

BF-check and minimum-dimension gates run before the sum; score cannot compensate for a downstream-use BF.

---

# 11. Language / reader accessibility

- lesson/practice remain Russian-first;
- English labels are retrieval aids, not required answer wording;
- Rubric explicitly accepts Russian equivalents;
- reader-experience layer improves retrieval without changing source authority;
- U1/C1 assess engineering action rather than English vocabulary.

`Language accessibility gaps: 0`.

---

# 12. Immutability / no-rewrite proof

Final Alignment is administrative traceability only.

Read-only during this stage:
- D2 Lesson content and SOURCE_MAP;
- D2 Practice content/alignment/QA;
- D2 Practice Reasoning content/QA;
- D2 Expected Result content/alignment/QA;
- D2 Verification Rubric content/alignment/QA;
- complete D1 frozen tree;
- CRN-M-01/02/03 frozen history;
- `status/FROZEN_INDEX.json`.

Allowed writes are limited to status/navigation + new `D2/final_alignment/v1` artifacts.

---

# 13. Decision

```text
TRACEABILITY=COMPLETE
LESSON_TRACE=16/16
PRACTICE_TRACE=10/10
REASONING_TRACE=10/10
EXPECTED_TRACE=13/13
RUBRIC_TRACE=13/13
BF_ORIGIN=12/12
SR_ORIGIN=1/1
U1_COVERAGE=PASS
C1_COVERAGE=PASS
ORPHANS=0
SURPRISE_BF=0
GUARD_CONTRADICTIONS=0
CONTENT_CORRECTIONS_REQUIRED=NO
SOURCE_FRESHNESS_READY=YES
```

Next:

`{NEW_NEXT}`
