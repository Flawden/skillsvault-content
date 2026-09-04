# CRN-M-03 / D3 Verification Rubric v1 — Alignment

## Назначение

Этот документ связывает 13 Expected Result dimensions, K1/U1/C1 verification protocol, 12 material blocking failures и отдельный S0 safety/authority gate.

## ER traceability

| ER | Known-pattern evidence | U1/C1 verification pressure | Main blocking pressure |
|---|---|---|---|
| ER-D3-01 | A, J | neutral register + C1 recategorization | BF-01 / BF-06 |
| ER-D3-02 | A, J | causal chain rebuilt after new premise | BF-06 / BF-07 |
| ER-D3-03 | B, J | distinct H + shared-premise exposure | BF-01 / BF-11 |
| ER-D3-04 | B, H, J | D2 rebuild per H and after C1 | BF-08 / BF-09 |
| ER-D3-05 | C, J | pre-evidence matched predictions | BF-02 |
| ER-D3-06 | D, F, J | observability/coverage challenge | BF-03 / BF-05 |
| ER-D3-07 | C, E, J | independence/discriminating-value challenge | BF-04 |
| ER-D3-08 | B, C, E, J | whole model-set update | BF-11 |
| ER-D3-09 | F, J | present/transient/history + coverage | BF-05 / BF-06 |
| ER-D3-10 | G, H, J | timestamp/sequence challenge | BF-07 / BF-08 / BF-09 |
| ER-D3-11 | I, J | role/value/authority conflict | BF-12 |
| ER-D3-12 | I, J | bounded conclusion under pressure | BF-10 / BF-12 / S0 |
| ER-D3-13 | known J is pattern only | mandatory U1 + premise-changing C1 | transfer failure / confirmation lock |

## Score contract

- dimensions: 13;
- levels: 0–4;
- max score: 52;
- VERIFIED minimum: 39;
- all dimensions minimum 3;
- ROBUST minimum: 46;
- ROBUST critical level-4 set: ER-D3-03, 06, 07, 08, 12, 13;
- K1, U1 and C1 required;
- material BF non-compensable;
- S0 automatic gate.

## Blocking-failure lineage

The rubric does not invent new causal failure families.

It promotes the 12 Expected Result candidate families to material non-compensable blockers:

`BF-D3-01 … BF-D3-12`.

A blocker is material only when it affects or can affect model ranking, bounded conclusion, STOP/handoff or authority boundary and is not independently repaired before final response.

## S0 lineage

S0 is not a new causal taxonomy item. It operationalizes the cross-cutting Expected Result safety rule:

`need for distinguishing evidence != authority to create hazardous evidence`.

## U1/C1 transfer contract

Known A–J performance is necessary but insufficient.

Verification requires:

```text
K1
+
U1 unseen integrated case
+
C1 premise-changing datum
+
observable adaptive rebuild
```

C1 must not be merely confirmatory.

## Boundary contract

The rubric preserves locks on:

- formal root-cause certification;
- numeric design/proof;
- WLL/SWL/derating;
- remaining life;
- inspection/discard/acceptance;
- specialist NDT interpretation;
- repair/adjustment/modification;
- operation/return-to-service authority.

Correct STOP/handoff can satisfy ER-D3-12 and contribute to a VERIFIED/ROBUST result.

## Final Alignment handoff

Final Alignment must trace:

Lesson → Practice → Reasoning → Expected Result → Verification Rubric,

including all 13 ER, all 12 BF, S0, K1/U1/C1, score thresholds and authority locks, before Source Freshness.
