# CRN-M-01 D4 Freeze v1

## Status

**D4 CONTENT: FROZEN**  
**Freeze version:** `v1`  
**Source baseline:** `ff66f0a6df289ba2013747c0b3388fb8d3b5b7b8`  
**Tag contract:** `crn-m-01-d4-v1`

This directory is immutable. Any content change requires a new `FROZEN_vN` directory and a new tag.

## What is frozen

The complete accepted D4 tree at freeze time is copied byte-for-byte under `snapshot/`.

- Architecture and D3/D4 boundary
- Gates G1–G8 and source-gate program
- Lesson Parts I–IX (45/45 blocks)
- Technical editorial Pass I
- Red Team Pass I
- Reader Experience Pass I
- Practice A–H
- Practice Reasoning
- Expected Result ER-01…ER-12
- Verification Rubric
- Final Alignment / traceability
- Source Freshness v1

`ARTIFACT_MANIFEST.json` maps every canonical D4 source member to its frozen copy and SHA-256.

## Source freshness

Decision: `PASS WITH WATCHLIST`. The watchlist is non-blocking for v1. It must be rechecked before a future v2 and at real field decisions that depend on volatile OEM guidance.

## Integration

The content freeze does not resolve `SCR-CONTENT-DEPTH-001`; the canonical application/Vault still requires a D1–D4 depth axis before production integration.

## Next

`CRN-M-01 / FULL TOPIC FREEZE / v1 — aggregate D1-D4 immutability, topic manifest, topic tag contract and pilot handoff`
