# CRN-M-02 D4 Freeze v1

## Status

**D4 CONTENT: FROZEN**
**Freeze version:** `v1`
**Source baseline:** `a8079a9d8e9d4e4aeec361a10fd2dfbf93869210`
**Tag contract:** `crn-m-02-d4-v1`

This directory is immutable. Any D4 content change requires a new `FROZEN_vN` directory and a new tag.

## What is frozen

The complete accepted D4 tree at freeze time is copied byte-for-byte under `snapshot/`.

- D4 kickoff scope/source gate
- Lesson Parts I–IX — 45/45 blocks
- Technical Editorial Pass I
- Red Team Pass I
- Reader Experience Pass I
- Practice A–J and Practice Reasoning A–J
- Expected Result ER-D4-01…14
- Verification Rubric ER-D4-01…14
- BF-D4-01…12 provenance/traceability
- Unseen U1 + mandatory adversarial C1 contract
- Final Alignment / traceability matrix
- Source Freshness v1

`ARTIFACT_MANIFEST.json` maps every canonical D4 source member to its frozen copy and SHA-256.

## Locked engineering boundaries

The freeze preserves method/source-role separation, verification vs validation, common-mode independence checks, sourced robustness envelopes, remaining-life limits and equipment-authority handoff. A converged model, agreeing solvers or a stopped analysis do not gain higher authority by being frozen.

## Source freshness

Decision: `PASS WITH WATCHLIST`. Five watch records remain non-blocking for v1 and must be rechecked before any future D4 version or real decision that depends on a volatile source.

## Integration

`SCR-CONTENT-DEPTH-001` remains open: the canonical application/Vault still requires a D1–D4 depth axis before production integration.

## Next

`CRN-M-02 / FULL TOPIC FREEZE / v1 — aggregate D1-D4 immutability, topic manifest, topic tag contract and handoff`
