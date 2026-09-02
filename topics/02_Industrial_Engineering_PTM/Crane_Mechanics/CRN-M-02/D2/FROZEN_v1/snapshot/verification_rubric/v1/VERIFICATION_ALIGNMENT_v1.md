# CRN-M-02 / D2 Verification Rubric v1 — Alignment

## ER coverage

| ER | Observable competence | Known evidence | Transfer / challenge evidence |
|---|---|---|---|
| ER-D2-01 | System/mode + path + contact nodes | A–K; A/B/H | U1 |
| ER-D2-02 | Local `Ti` bookkeeping | A/C/H | U1 |
| ER-D2-03 | Body-first FBD / force ownership | B/C/H/I | U1 + C1 |
| ER-D2-04 | Vector reaction / geometry sensitivity | C/H | U1 |
| ER-D2-05 | `r_k` kinematics + helical stop | D/E | U1 |
| ER-D2-06 | `r_m` / line-of-action moment | F | U1 when moment requested |
| ER-D2-07 | Spooling state before verdict | G | U1 |
| ER-D2-08 | Delta rebuild | C/F/H | C1; optional C2 |
| ER-D2-09 | Quasi-static/dynamic boundary | I | optional C2 |
| ER-D2-10 | Term/definition/reference geometry/source | J | U1 |
| ER-D2-11 | Duty/classification + authority boundary | G/H/J/K | U1 authority boundary |
| ER-D2-12 | Integrated model status + unseen transfer | cannot close by A–K alone | U1 + C1 required |

## Verification architecture

Required:
1. known Practice evidence sufficient to score ER-D2-01…11;
2. unseen U1;
3. challenge C1;
4. optional C2 for direct dynamic robustness evidence.

Known-case performance alone is insufficient.

## Non-compensable failures

Exactly nine BF families are operationalized from Expected Result candidates:
- BF-D2-01 one-rope-equal-T shortcut;
- BF-D2-02 FBD ownership collapse;
- BF-D2-03 universal `ωr`;
- BF-D2-04 layer-radius-as-moment-arm;
- BF-D2-05 observation-to-verdict leap;
- BF-D2-06 terminology-only numeric authority;
- BF-D2-07 quasi-static-as-dynamic authority;
- BF-D2-08 classification-factor invention;
- BF-D2-09 comprehension-to-field-authority leap.

Any BF forces `D2 NOT VERIFIED` regardless of total score.

## Mandatory minimum

`D2 VERIFIED` requires every ER-D2-01…12 >= 3. This prevents score compensation across applied-mechanics skills.

Total score:
- 36–41: VERIFIED, if all other gates pass;
- 42–48: ROBUST / TRANSFER, with ER-D2-08 = 4 and ER-D2-12 = 4 plus additional transfer evidence.

These are pedagogical assessment thresholds only.

## U1 rationale

U1 integrates several D2 skills in a new layout:
- drum → fixed redirect block → moving block → frame dead end;
- visible axial component at drum exit;
- incomplete friction/loss data;
- missing source-backed angle definition/limit;
- no OEM/passport field authority.

The case is designed so a strong learner can legitimately stop at `QUALITATIVE APPLIED`, `SOURCE / OEM REQUIRED` or `NOT YET DEMONSTRATED` rather than manufacture a number.

## C1 rationale

C1 changes the selected free body without changing the physical rope system. It directly tests whether action/reaction arrows are rebuilt rather than copied, while other evidence such as rope path can remain valid.

## Evidence outputs

The rubric evaluates the ten Expected Result evidence families plus unseen response, challenge/delta card, and scoring/BF records.

## Claim/source boundary

No new engineering numeric acceptance threshold is introduced.

Exact D/d, groove dimensions, fleet/lead/deflection limits, real efficiency, allowable stresses/contact pressures, discard/repair criteria, classification assignment and equipment-specific intervention remain locked behind the exact applicable source/OEM/passport/procedure and authority.

## Final Alignment readiness

Next stage must trace:

```text
Lesson ↔ Practice ↔ Reasoning ↔ ER-D2-01…12 ↔ Rubric ↔ BF-D2-01…09
```

and close any orphan, contradiction, or weakened guard before Source Freshness / D2 Freeze.
