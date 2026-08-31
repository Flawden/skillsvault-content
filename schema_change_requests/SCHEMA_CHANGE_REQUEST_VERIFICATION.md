# SCHEMA_CHANGE_REQUEST — Competency Verification Ledger
## Request ID: SCR-COMPETENCY-VERIFICATION-001

## Purpose

Добавить независимую ось подтверждения компетенций `V0–V5`, не смешивая её с:
- content depth `D1–D4`;
- learner mastery `R0–R6`;
- обычным progress state.

## Minimal entity

```text
verification_evidence
- id
- topic_id
- depth_level
- competency_id
- verification_level
- method
- verifier_type
- verifier_id?
- rubric_version?
- evidence_refs[]
- created_at
- expires_at?
- status
- notes?
```

## Levels

- V0 — unverified
- V1 — self-attested
- V2 — practice evidence
- V3 — AI-reviewed
- V4 — human/expert-reviewed
- V5 — real-world/formal evidence

## Requirements

- evidence ledger, not destructive overwrite;
- scope-specific verification;
- timestamps and provenance;
- stale/revoked/superseded states;
- separate UI from mastery;
- AI review must reference rubric;
- expert verification must support partial competencies;
- no implication of legal certification unless evidence itself is an official credential.

## First migration fixture

`CRN-M-01 / D1`

Use its Practice + Expected Result as first test for V2/V3.

Future D2 freeze must include `VERIFICATION_RUBRIC.md`.
