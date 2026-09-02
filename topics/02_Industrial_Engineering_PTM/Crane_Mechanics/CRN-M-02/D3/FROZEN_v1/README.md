# CRN-M-02 / D3 — FROZEN v1

Status: **CONTENT FROZEN**

Freeze date: `2026-09-02`

Source baseline: `3fae8b5266e56b26318a20f3590209a3f51ba795`

Immutable tag: `crn-m-02-d3-v1`

This directory is the immutable D3 acceptance package for **CRN-M-02 — Барабаны, блоки, полиспасты**.

## What is frozen

The `snapshot/` directory contains byte-for-byte copies of all **52** accepted D3 source/status artifacts present at the freshness-cleared baseline. `ARTIFACT_MANIFEST.json` maps every source path to its snapshot path and SHA-256.

The accepted chain is:

`Scope → Source Gate → Lesson → Technical Editorial → Red Team → Reader Experience → Practice → Practice Reasoning → Expected Result → Verification Rubric → Final Alignment → Source Freshness → Freeze`.

D1 and D2 remain independently immutable under `crn-m-02-d1-v1` and `crn-m-02-d2-v1`; neither package is duplicated or modified by this freeze.

## D3 acceptance boundary

D3 freezes the causal-analysis layer: competing hypotheses, falsifiable predictions, evidence-matrix updates, observability gates, history/state separation, unknown/confounder discipline and bounded conclusions. It does **not** turn bounded causal support into formal root-cause certification and does not unlock proof-of-competence calculations, numeric design/acceptance criteria, remaining-life calculations, specialist NDT authority or equipment-specific field intervention.

## Immutability rule

Do not edit any file under `FROZEN_v1`. A D3 content change requires a new review/freshness cycle, `FROZEN_v2`, a new frozen-index entry and a new immutable tag.

## Non-blocking watchlist

ISO 8686-1:2012 remains under review. ISO 4309:2017 and ISO 12482:2014 remain current published editions with active revision projects; their Committee Draft successors remain watch-only. The full watchlist is preserved in the frozen source-freshness artifacts.

## Next

`CRN-M-02 / D4 CONTENT KICKOFF / v1 — define expert/reference formal-method selection and model-validation scope/source gate while preserving D1/D2/D3 frozen boundaries`
