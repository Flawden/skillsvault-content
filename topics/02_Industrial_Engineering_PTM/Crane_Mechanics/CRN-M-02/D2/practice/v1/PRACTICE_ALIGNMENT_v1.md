# CRN-M-02 / D2 Practice Alignment v1

## Назначение

Practice A–K проверяет только уже введённые D2-модели и guards. Нового нормативного/расчётного слоя этот этап не вводит.

| Case | Primary D2 skill | Lesson anchors | Guard / stop condition |
|---|---|---|---|
| A | local `Ti` bookkeeping | §3, §10, §15 | RT-D2-01 |
| B | body-first FBD / action-reaction | §4 | RT-D2-02 |
| C | vector reaction sensitivity to geometry | §2, §4, §11 | TE-D2-01, geometry without numeric limit |
| D | simple circumferential drum kinematics | §6–7 | TE-D2-03, no design-speed authority |
| E | helical/axial kinematic stop | §6–7 | RT-D2-03 |
| F | axis moment and moment arm | §7 | TE-D2-04, RT-D2-04 |
| G | spooling state recognition | §8–9 | RT-D2-05 |
| H | changed route / changed load path | §4, §10–11 | field-authority guard |
| I | quasi-static versus dynamic model | §4, §12, §15 | RT-D2-07 |
| J | terminology / reference geometry / applicable source | §5, §14–15 | TE-D2-05, RT-D2-06 |
| K | duty/classification context | §13–15 | source-level classification boundary |

## Coverage invariants

Practice must make the learner demonstrate all of the following at least once:

- rope path and contact-node reconstruction;
- explicit local `Ti` rather than automatic equality;
- named free body before force arrows;
- qualitative vector reaction reasoning;
- distinction between `r_k` and `r_m`;
- spooling-state recognition before verdict;
- `SIMPLE / QUALITATIVE APPLIED / SOURCE-OEM REQUIRED` status selection;
- dynamic stop condition;
- source-definition/reference-geometry discipline;
- equipment-authority boundary.

## Claim locks

The following remain intentionally absent:

- numeric `D/d` limits;
- groove geometry limits;
- fleet/deflection numerical limits;
- real efficiency factors;
- allowable stresses/contact pressures;
- discard/repair limits;
- equipment-specific modification instructions.

## Separation from Practice Reasoning

`CRN-M-02_D2_PRACTICE_v1.md` contains prompts and traps only. Worked reasoning, acceptable alternate paths and explicit failure analysis belong to the next stage.
