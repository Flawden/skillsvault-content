# CRN-M-03 — Крюковые подвески и захваты
# D3 Source Freshness v1
## Revalidation before D3 Freeze

Date: `2026-09-04`
Baseline: `d72414c37642f4340166216c7cc17abee0ccdfb8`

---

# 1. Decision

```text
SOURCE FRESHNESS: COMPLETE
DECISION: PASS WITH WATCHLIST
CONTENT CORRECTIONS REQUIRED: NO
STALE SOURCES REQUIRING REMOVAL: NO
FREEZE CANDIDATE READY: YES
```

The D3 kickoff source gate was checked again against current public metadata immediately before freeze.

The source/claim architecture remains valid:

```text
SOURCE ROLE
≠
DIAGNOSTIC UNIQUENESS
≠
FORMAL PROOF
≠
INSPECTION ACCEPTANCE
≠
REMAINING LIFE
≠
OPERATION AUTHORITY
```

---

# 2. Revalidated source lanes

## S1 — Frozen CRN-M-03 D1 / D2

Status: `UNCHANGED / IMMUTABLE PREREQUISITES`.

Role remains mechanics/state/source-role foundation.

D3 does not modify or increase their authority.

## S2 — ISO 4306-1:2026

Current public state on 2026-09-04:

- Edition 5;
- published 2026-07;
- status Published;
- stage 60.60.

Freshness result: `PASS`.

Role remains terminology only; not diagnostic/root-cause/proof/acceptance authority.

Public metadata: https://www.iso.org/standard/78820.html

## S3 — ISO 17440:2014

Current public state:

- Edition 1;
- Published / Confirmed;
- stage 90.93;
- forged steel point-hook / machined-shank proof scope remains;
- plate hooks remain outside public scope.

Freshness result: `PASS`.

Role remains a formal hook-proof boundary. No proof tables, coefficients, numeric limits or acceptance criteria are reconstructed.

Public metadata: https://www.iso.org/standard/59758.html

## S4 — ISO 17096:2015

Current public state:

- Edition 1;
- Published / Confirmed;
- stage 90.93;
- public ISO page records confirmation in 2026;
- listed covered categories remain attachment classes such as clamps, vacuum lifters, magnets, lifting/spreader beams, C-hooks and forks;
- public scope still explicitly excludes slings, ladles, expanding mandrels, **buckets, grabs, grab buckets** and container spreaders.

Freshness result:

```text
PASS — GRAB / GRAB-BUCKET SCOPE GUARD RECONFIRMED
```

Therefore D3 may discuss general mechanics of grab/grab-bucket systems, but ISO 17096 must not be promoted into their acceptance, root-cause or operation authority.

Public metadata: https://www.iso.org/standard/58103.html

## S5 — ISO 8686-1:2012

Current public state:

- Edition 2;
- Published;
- stage 90.60 / under review.

Freshness result: `PASS WITH WATCHLIST`.

The source remains a formal loads/load-combinations/proof boundary. D3 does not reproduce standard dynamic factors or load combinations.

Public metadata: https://www.iso.org/standard/59417.html

## S6 — ISO 9927-1:2013

Current public state:

- Edition 3;
- Published / Confirmed;
- stage 90.93;
- public lifecycle shows confirmation on 2023-12-04.

Freshness result: `PASS`.

Inspection evidence remains an input lane; it is not automatically root cause, discard/acceptance or return-to-service permission.

Public metadata: https://www.iso.org/standard/51102.html

## S7 — ISO 12480-1:2024

Current public state:

- Edition 2;
- published 2024-08;
- status Published;
- stage 60.60.

Freshness result: `PASS`.

Safe-use/planning authority remains separate from learner causal diagnosis.

Public metadata: https://www.iso.org/standard/83637.html

## S8 — ISO 4301-1:2016

Current public state:

- Edition 3;
- Published / Confirmed;
- stage 90.93;
- public page states the version remains current.

Freshness result: `PASS`.

Classification remains service-history context only. Crane-level classification does not automatically define the exact duty/history/current state of a removable attachment.

Public metadata: https://www.iso.org/standard/63070.html

## S9 — ISO 12482:2014 + ISO/CD 12482 Edition 2

### Published record

ISO 12482:2014 remains:

- Edition 1;
- Published;
- stage 90.92 / to be revised.

### Development record

ISO/CD 12482 Edition 2 remains:

- Under development;
- Committee Draft;
- stage 30.20;
- stated to replace ISO 12482:2014 when/if published.

Freshness result:

```text
PASS WITH WATCHLIST
PUBLISHED ≠ DRAFT
DRAFT ≠ CURRENT REQUIREMENT
```

D3 still does not compute remaining life, fatigue verdict or probability of failure.

Public metadata:

- https://www.iso.org/standard/57481.html
- https://www.iso.org/standard/91046.html

## S10 — ФНП ПС №461

Current public legal reference on 2026-09-04:

- Приказ Ростехнадзора от 26.11.2020 №461;
- current редакция: 16.04.2026;
- amendments include Приказ Ростехнадзора №129 от 16.04.2026;
- document validity is limited through 01.09.2032.

Freshness result: `PASS`.

D3 does not replace mandatory Russian inspection/operation procedures and does not authorize field test, repair or continued operation.

Public reference: https://www.consultant.ru/document/cons_doc_LAW_373321/

## S11 — OEM / passport / actual-device / service records

Freshness status: `EQUIPMENT-SPECIFIC / NON-PUBLIC / REQUIRED WHEN APPLICABLE`.

No generic source can replace exact identity/configuration, actual history, device-specific limits or approved diagnostic/inspection procedures.

Missing exact documentation remains `UNKNOWN`.

---

# 3. Watchlist

The watchlist remains exactly:

1. `ISO 8686-1:2012` — Published, stage 90.60 / under review.
2. `ISO 12482:2014` — Published, stage 90.92 / to be revised.
3. `ISO/CD 12482` Edition 2 — Under development, stage 30.20; watch only.

No watchlist record invalidates the current bounded D3 lesson.

---

# 4. Claim-limit recheck

The completed Lesson → Practice → Reasoning → Expected Result → Rubric → Final Alignment chain was checked against source roles.

Still locked:

- formal root-cause confirmation from one symptom/model;
- numeric proof/design;
- standard dynamic factors/load combinations;
- numeric fatigue / remaining-life claims;
- device rating, WLL/SWL or derating;
- inspection/discard/acceptance thresholds;
- load-test criteria;
- specialist NDT interpretation;
- repair/adjustment/modification procedures;
- hazardous diagnostic fault reproduction;
- operation / continued operation / return-to-service permission.

Still allowed:

- observation / inference / unknown separation;
- competing causal models;
- D2 rebuild per hypothesis;
- falsifiable condition-matched predictions;
- qualitative bounded sensitivity;
- observability and evidence-independence checks;
- state / transient / history separation;
- discriminating-data requests;
- bounded model status;
- STOP / handoff.

Result: `CLAIM LIMITS = PASS`.

---

# 5. ISO 17096 grab-scope audit

This is a dedicated freeze blocker check.

```text
ISO 17096 COVERED ATTACHMENT FAMILIES
≠
GRABS / GRAB BUCKETS
```

Current public ISO scope still excludes grabs and grab buckets.

The accepted D3 lesson already says that general grab mechanics may be discussed conceptually while ISO 17096 authority is not transferred to those device classes.

Result:

`ISO_17096_GRAB_SCOPE_GUARD = PASS`.

No lesson correction required.

---

# 6. Draft / published separation

ISO/CD 12482 Edition 2 remains a development record only.

It is retained to prevent silent staleness of ISO 12482:2014, not to introduce unpublished requirements.

Result:

`DRAFT_VS_PUBLISHED = PASS`.

---

# 7. Correction audit

```text
Lesson corrections required:              NO
Practice corrections required:            NO
Reasoning corrections required:           NO
Expected Result corrections required:     NO
Verification Rubric corrections required: NO
Final Alignment corrections required:     NO
```

No stale anchor requires removal.

---

# 8. Frozen prerequisites

```text
CRN-M-03 D1 FROZEN v1: unchanged
CRN-M-03 D2 FROZEN v1: unchanged
status/FROZEN_INDEX.json: unchanged
```

Source Freshness does not modify frozen prerequisites.

---

# 9. Freeze handoff

```text
SOURCE GATE / KICKOFF     PASS
LESSON                    COMPLETE
PRACTICE                  COMPLETE
PRACTICE REASONING        COMPLETE
EXPECTED RESULT           COMPLETE
VERIFICATION RUBRIC       COMPLETE
FINAL ALIGNMENT           COMPLETE
SOURCE FRESHNESS          COMPLETE
FREEZE CANDIDATE          READY
```

Next:

`CRN-M-03 / D3 FREEZE / v1 — immutable D3 package, manifests, frozen index and tag contract`
