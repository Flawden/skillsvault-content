# CRN-M-04 — Редукторы и муфты
# D2 Source Freshness v1
## Pre-freeze revalidation of derivation sources and authority boundaries

Recheck date: **2026-09-06**.

Decision: **PASS WITH WATCHLIST**.

D2 Final Alignment is complete and requires no content correction. This pass revalidates only whether the sources and boundaries used by D2 are still current enough to freeze the existing content.

## Result

```text
SOURCE_RECORDS=10
WATCHLIST=1
DECISION=PASS_WITH_WATCHLIST
CONTENT_CONTRACT_CHANGE_REQUIRED=NO
SOURCE_GATE_CORRECTION_REQUIRED=NO
FREEZE_READY=YES
```

## 1. Frozen D1 prerequisite

`crn-m-04-d1-v1` remains the immutable prerequisite for scope, evidence discipline, source applicability and rating/acceptance/operation locks.

D2 freshness does not rewrite D1.

## 2. OpenStax rotational power

OpenStax University Physics Vol. 1 §10.8 remains publicly available and continues to support the first-principles rotational power relation.

Allowed D2 use remains bounded to a proven mechanical shaft/state:

```text
ω = 2πn/60
P = Tω
T = P/ω
T ≈ 9550·P_kW/n_rpm
```

Freshness does not convert this physics identity into component rating, efficiency, service factor or transient peak authority.

## 3. OpenStax static equilibrium

OpenStax University Physics Vol. 1 §12.1 remains publicly available for free-body and equilibrium reasoning.

D2 guard remains:

```text
ΣF = 0
ΣM = 0
```

only for an explicit model with a valid equilibrium assumption and sufficient determinacy. External reactions remain distinct from bearing internal load/life/selection.

## 4. KHK gear technical reference

The KHK calculation-of-gear-dimensions technical page remains available.

Status remains **development companion / non-normative**.

It may support simple pair geometry/ratio vocabulary for proven topology. It does not provide crane rating, OEM applicability, selection or acceptance authority.

## 5. ISO 6336-1:2019

ISO metadata still reports Edition 3 as **Published** and confirmed current in 2025.

D2 role remains a **hard rating boundary**, not an equation source.

The existing lesson distinction remains correct:

```text
DEMAND-SIDE SHAFT TORQUE / F_t
≠
GEAR LOAD CAPACITY / SAFETY / ACCEPTABLE DESIGN
```

No ISO 6336 load-capacity workflow is unlocked.

## 6. ГОСТ 31592-2012

Rosstandart continues to list ГОСТ 31592-2012 as **Действует**.

Its role remains reducer scope/documentation boundary. A D2 calculation does not prove compliance or adequate real-crane duty.

## 7. ГОСТ Р 50895-2025

Rosstandart continues to list ГОСТ Р 50895-2025 as **Действует**, effective from 2026-01-15.

Its role remains gear-coupling-family-specific. D2 does not generalize its family-specific selection/alignment/acceptance requirements to other coupling types.

## 8. ISO 14691:2008 watchlist

ISO continues to list ISO 14691:2008 as a published/confirmed standard.

The scope remains petroleum, petrochemical and natural-gas industries. Therefore the source remains **WATCHLIST / mechanism companion only** and still cannot be promoted to generic crane coupling authority.

No content correction is required because D2 already preserves that limitation.

## 9. ФНП ПС №461

The current Russian rule remains the 2026-04-16 revision, with validity extended through 2032-09-01.

D2 operation/repair guard remains correct:

```text
SKILLSVAULT CALCULATION OR STOP
≠
RETURN-TO-SERVICE / PERMITTED OPERATION
```

## 10. Exact passport / OEM / drawings

This is intentionally not a globally versioned public source.

The requirement is unchanged: real-equipment claims must use the exact installed equipment documentation/revision for topology, ratio, geometry, efficiency, duty, rating, alignment and other equipment-specific limits.

## Derivation guard revalidation

The following D2 rules remain valid and unchanged:

```text
P/T/n: same object / shaft / state / mechanical domain first
ratio: topology + convention + direction first
η: applicable direction + regime + path first
T_mesh: torque-balance identity first
F_t: same-mesh T_mesh + same-gear d/r first
reactions: FBD + equilibrium assumption + determinacy first
coupling: connectivity ≠ numerical P/T/n equality
calculated demand ≠ rated capacity ≠ permitted operation
```

## Watchlist

Only one source remains on the watchlist:

`ISO 14691:2008`.

Reason: current standard, but scope-limited and unsuitable as generic crane coupling selection/alignment/acceptance authority.

## Pre-freeze decision

No source edition/status change invalidates D2.

No D2 source-gate correction is required.

No D2 content-contract correction is required.

**D2 SOURCE FRESHNESS = COMPLETE / PASS WITH WATCHLIST.**

Next: `CRN-M-04 / D2 FREEZE / v1`.
