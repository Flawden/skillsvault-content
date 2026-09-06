# CRN-M-04 / D2 Practice v1 — Alignment Map

## Purpose

Practice A–J проверяет перенос reviewed D2 applied-mechanics lesson на новые расчётные ситуации без ослабления identity, derivation, rating и equipment-authority guards.

Practice не является дополнительным lesson и не добавляет новых source authorities. Она заставляет ученика выбирать модель, вычислять только доказанное и останавливаться до неподдержанного rating/selection/operation шага.

## Case alignment

| Case | Lesson anchors | Main competence |
|---|---|---|
| A | §§2–5, 15–16 | input status; same-shaft/state identity; mechanical vs electrical power boundary |
| B | §§1, 6–7, 15–16 | ratio convention; partial topology; bounded kinematics and direction proof |
| C | §§7–10, 15–16 | sequential ratios; supplied forward η; energy check; reverse-mode STOP |
| D | §§4–5, 10, 15–16 | near-zero `P/n`; steady vs transient demand; no invented reserve factor |
| E | §§11–12, 15–16 | torque balance before single-mesh `T`; same-mesh diameter identity; `F_t` boundary |
| F | §§12–13, 15–16 | determinate external statics; reactions; no bearing-life promotion |
| G | §§12–13, 16 | determinacy gate; compatibility/stiffness evidence; bounded STOP |
| H | §§4, 8–9, 14–16 | interface-side identity; connectivity vs equality; no-slip/loss model requirement |
| I | §§5, 10, 14–16 | calculated demand vs catalog/rated capacity vs permitted operation |
| J | §§1–16 | integrated D2 chain: ratio → power/torque → η → mesh force → reactions → bounded handoff |

## Required D2 capabilities

Across A–J the learner must demonstrate:

1. explicit system boundary and topology proof;
2. input provenance/status labelling before calculation;
3. same-shaft/section/state/sign discipline for `P=Tω`;
4. ratio-convention proof before multiplying/dividing speed;
5. separation of ratio and efficiency roles;
6. supplied/applicable efficiency direction/regime discipline;
7. refusal to infer transient/start/brake peak from steady or near-zero `P/n` alone;
8. torque balance before assigning a net shaft torque to one mesh;
9. same gear/mesh identity for `T_mesh` and `d/r` before `F_t`;
10. explicit FBD and determinacy check before solving reactions;
11. sign-convention interpretation of negative reactions without condition verdict;
12. side-by-side interface bookkeeping without automatic cross-coupling equality;
13. unit/sign/energy/model cross-checks;
14. calculated demand / rated capacity / permitted operation separation;
15. bounded STOP with exact next-evidence request;
16. preservation of D1 frozen rating/acceptance/equipment-authority boundaries.

## Guard coverage

| Guard | Cases |
|---|---|
| mixed shaft/state variables cannot enter one `P=Tω` state | A, H, J |
| ratio number without convention/current topology is insufficient | B, C, J |
| ratio and η are separate contracts | B, C, J |
| forward η is not automatically reverse/backdriven η | C |
| near-zero/steady `P/n` does not establish transient peak | D, I |
| invented reserve/service factors are forbidden | D, I, J |
| net shaft torque != single-mesh torque by default | E, J |
| `T_mesh` and `d/r` must belong to the same gear/mesh | E, J |
| equilibrium equations require a determinate model for unique reactions | F, G, J |
| negative reaction sign is not a fault verdict | F, G |
| interface connectivity does not prove `P/T/n` equality | H, J |
| external reaction != bearing internal load/life | F, J |
| calculated demand != rated/allowable capacity | I, J |
| calculated/rated values do not grant operation authority | A–J, explicit in I/J |

## Numerical-work policy

D2 Practice intentionally contains numerical work. A correct number is accepted only when the answer packet also preserves:

```text
identity + model + units + cross-check + authority boundary
```

A numerically correct result obtained from mixed shafts, undefined ratio convention, borrowed efficiency, wrong mesh diameter or indeterminate FBD is not a successful D2 transfer.

## Answer-key separation

Practice contains problem statements, input datasets, required packet structure, adversarial traps and guard boundaries.

Practice intentionally **does not contain**:

- worked case solutions;
- final numeric answers;
- preferred single reasoning path;
- scoring rubric;
- component-selection tables;
- service-factor or rating workflows;
- equipment-operation decisions.

Next:

`CRN-M-04 / D2 PRACTICE REASONING / v1 — build non-exclusive applied-mechanics reasoning paths, discriminating identity/topology/model checks, bounded calculations and STOP decisions for Practice A–J without turning Practice into a single answer key`

## Verdict

`ALIGNED — 10/10 CASES`

The 16-section Lesson, Technical Editorial, Red Team and Reader Experience guards remain preserved.
