# CRN-M-04 / D3 — Source Gate v1

Decision: **PASS WITH DIAGNOSTIC GUARDS AND WATCHLIST**.

D3 may teach bounded diagnostic reasoning only when evidence provenance, operating state, measurement comparability, competing hypotheses and discriminating evidence are explicit.

The gate does not unlock machine-specific acceptance thresholds, fault certainty, repair or operational permission.

## 1. `crn-m-04-d1-v1` — immutable prerequisite

Role: terminology, component-family applicability, evidence discipline and authority locks.

## 2. `crn-m-04-d2-v1` — immutable prerequisite

Role: applied-mechanics identity/topology constraints and the frozen separation:

```text
CALCULATED DEMAND ≠ RATED CAPACITY ≠ PERMITTED OPERATION
```

D3 may reason over D2 results; it may not alter D2 or promote a bounded calculation into diagnosis/acceptance.

## 3. ISO 17359:2018 — general condition-monitoring framework

Status checked 2026-09-06: Published, Edition 3; reviewed and confirmed in 2023.

Role: programme-level condition-monitoring structure and need for planned, contextual evidence.

D3 restriction: this source does not by itself provide a crane-specific fault threshold, acceptance limit or repair action.

## 4. ISO 13379-1:2025 — core diagnostics/data-interpretation anchor

Status checked 2026-09-06: Published, Edition 2, 2025-10.

Role: common concepts for condition monitoring/diagnostics, technical characteristics, data interpretation and selection of a diagnostic approach.

D3 use: supports explicit diagnostic model, evidence interpretation, competing explanations and bounded diagnostic approach.

D3 restriction: general diagnostic guidance does not establish a specific real-machine root cause without sufficient equipment-specific evidence.

## 5. ISO 13373-2:2016 — vibration analysis companion / watchlist

Status checked 2026-09-06: Published and still current; 2026 systematic review has just closed and revision activity is possible.

Role: processing, presentation and analysis of vibration data in time/frequency domains, including the importance of analysis basis and operating-condition changes.

D3 restriction:
- processing method and measurement basis must be explicit;
- a spectral feature is evidence, not a fault label;
- source remains on watchlist for edition/revision status.

## 6. ISO 20816-1:2016 — measurement/evaluation companion / watchlist

Status checked 2026-09-06: Published/current, but ISO indicates replacement by ISO/FDIS 20816-1 is expected.

Role: general vocabulary around vibration measurement, magnitude/change and operational monitoring.

D3 restriction:
- no generic crane acceptance threshold is imported;
- no current machine limit is inferred from this general part alone;
- replacement status must be rechecked at Source Freshness.

## 7. ISO 6336-1:2019 — hard gear-rating boundary

Inherited D1/D2 boundary. D3 diagnostic evidence does not unlock tooth load-capacity/safety-factor calculation or design acceptance.

## 8. ГОСТ 31592-2012 — reducer scope/documentation boundary

Rosstandart status: active.

Role: reducer family/documentation applicability boundary, not a generic causal-diagnosis table.

## 9. ГОСТ Р 50895-2025 — gear-coupling family boundary

Rosstandart status: active; effective 2026-01-15.

Role: exact gear-coupling-family applicability. D3 may not transfer family-specific limits to another coupling type.

## 10. ISO 14691:2008 — inherited scope-limited watchlist companion

Role: coupling mechanism/terminology companion only.

Its petroleum/petrochemical/natural-gas scope remains unsuitable as generic crane coupling diagnostic/acceptance authority.

## 11. ФНП ПС №461 — repair/operation authority boundary

Current revision: 2026-04-16; document validity through 2032-09-01.

Role: prevents D3 from converting a diagnostic hypothesis into maintenance, repair or operation permission.

## 12. Passport / OEM / drawings / maintenance and event history for the actual drive

Required for real-equipment claims, especially:

- exact reducer/coupling identity and topology;
- measurement point/orientation/sensor chain;
- baseline/previous comparable measurements;
- speed/load/direction/duty during each observation;
- maintenance, adjustment, collision/overload or component-change history;
- machine-specific alarm/acceptance limits;
- exact diagnostic/repair/operation authority.

## Diagnostic guards

D3 MAY teach:

```text
state/history reconstruction
measurement/evidence validity checks
competing hypotheses
prediction tables
qualitative hypothesis update
confounder tracking
discriminating-evidence selection
bounded diagnostic STOP / handoff
```

D3 MUST NOT infer:

```text
fault certainty from one symptom
causation from correlation or temporal order alone
machine-specific severity from generic magnitude
alignment acceptance from non-acceptance evidence
repair action from hypothesis status
continue-operation / return-to-service permission
```

## Result

The source set is sufficient to unlock D3 lesson authoring **only inside a bounded causal-diagnostic lane**.

**D3 SOURCE GATE = COMPLETE / PASS WITH DIAGNOSTIC GUARDS AND WATCHLIST.**
