# CRN-M-04 / D2 Verification Rubric v1 — Alignment

## ER coverage

Все `ER-D2-01…13` имеют явные descriptors `0–4`.

| ER | Competence | Known evidence | U1 / C1 |
|---|---|---|---|
| ER-D2-01 | Boundary / topology | A, B, C, E, J | U1 + C1 |
| ER-D2-02 | Input / identity ledger | A, D, H, I, J | U1 + C1 |
| ER-D2-03 | Same-shaft P–T–ω | A, C, H, J | U1 + C1 |
| ER-D2-04 | Ratio convention/topology | B, C, J | U1 + C1 |
| ER-D2-05 | η applicability | C, H, J | U1 + C1 |
| ER-D2-06 | steady vs transient | D | U1 + C1 |
| ER-D2-07 | mesh-torque identity | E, J | U1 + C1 |
| ER-D2-08 | same-mesh geometry / F_t | E, J | U1 + C1 |
| ER-D2-09 | FBD / determinacy / reactions | F, G, J | U1 + C1 |
| ER-D2-10 | interface bookkeeping | H, J | U1 + C1 |
| ER-D2-11 | demand/capacity/authority | I, J | U1 + C1 |
| ER-D2-12 | cross-check / bounded STOP | A–J | U1 + C1 |
| ER-D2-13 | unseen transfer/update | known insufficient | U1 + C1 required |

## Verification architecture

Обязательны:
1. один known Practice A–J;
2. U1 unseen applied-mechanics case;
3. C1 evidence-status challenge.

Known A–J, включая J, не закрывают ER-D2-13.

## BF decision

Expected Result передал 12 candidate families + 1 severity-review candidate.

Rubric принимает все 12 как **non-compensable only after downstream-use trigger**:
- BF-D2-01 mixed shaft/state/domain;
- BF-D2-02 ratio without topology/convention;
- BF-D2-03 η applicability leak;
- BF-D2-04 steady/near-zero → transient peak;
- BF-D2-05 net shaft → mesh torque;
- BF-D2-06 cross-mesh geometry;
- BF-D2-07 reactions without determinacy;
- BF-D2-08 reaction sign/load → diagnosis/acceptance;
- BF-D2-09 coupling connectivity → numerical equality;
- BF-D2-10 demand → unverified capacity/suitability;
- BF-D2-11 invented safety/rating method;
- BF-D2-12 bounded result/STOP → selection/operation authority.

Self-corrected error before downstream use lowers dimension score but need not trigger BF.

`SR-D2-01` — vague/non-discriminating evidence request — remains severity-reviewed. It becomes a concrete BF only if learner proceeds through one of the 12 forbidden downstream jumps.

## Scoring

- Levels: 0–4;
- dimensions: 13;
- max: 52;
- VERIFIED min: 39;
- ROBUST min: 47;
- all dimensions >=3 required for VERIFIED;
- robust core at level 4: ER-D2-02,07,09,11,12,13.

## U1 rationale

U1 deliberately combines:
- exact same-shaft P/n data;
- multi-stage ratio;
- supplied forward η;
- output mesh geometry;
- three-support indeterminate reaction model;
- asynchronous coupling-side measurements;
- tempting but initially unverified catalog capacity;
- request for operational verdict.

It requires both valid calculations and valid STOPs.

## C1 rationale

C1 confirms exact coupling identity, catalog rating role and synchronous side measurements, while still withholding:
- duty/transient/service-factor selection inputs;
- support stiffness/compatibility data;
- numeric alignment acceptance evidence;
- equipment-operation authority.

A strong learner updates only the claims actually affected.

## Evidence outputs

Minimum 10-part package is inherited exactly from Expected Result.

## Locked authority

No new normative thresholds are introduced. Gear rating, reducer/coupling selection, numeric alignment acceptance, bearing life, repair and equipment-operation authority remain locked.

## Final Alignment readiness

Next stage must prove:

```text
Lesson ↔ Practice ↔ Practice Reasoning ↔ ER-D2-01…13 ↔ Rubric
       ↔ BF-D2-01…12 / SR-D2-01 ↔ U1 / C1
```

with no orphan competence, surprise BF or guard contradiction.
