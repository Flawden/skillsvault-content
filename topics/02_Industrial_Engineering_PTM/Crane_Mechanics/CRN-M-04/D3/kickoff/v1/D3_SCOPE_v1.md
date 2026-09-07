# CRN-M-04 / D3 — Scope v1

## Mission

D3 переводит тему «Редукторы и муфты» от замороженной D2 applied-mechanics модели к **ограниченному causal-diagnostic reasoning**.

D3 не начинает с названия неисправности. Он начинает с реконструкции состояния и истории доказательств:

```text
WHAT / WHERE / WHEN / OPERATING STATE
→ DATA QUALITY + PROVENANCE
→ COMPETING HYPOTHESES
→ PREDICTED OBSERVATIONS
→ DISCRIMINATING EVIDENCE
→ UPDATE: SUPPORTED / WEAKENED / CONTRADICTED / UNRESOLVED
→ BOUNDED DIAGNOSTIC STOP / HANDOFF
```

Замороженные `crn-m-04-d1-v1` и `crn-m-04-d2-v1` являются immutable prerequisites. D3 может использовать их terminology, evidence discipline и applied-mechanics identities, но не переписывать их.

## D3 learner should be able to

1. реконструировать timeline: timestamp, режим, направление, нагрузочный контекст и последовательность наблюдений;
2. разделять raw observation, processed feature, calculated D2 result, hypothesis, diagnosis claim и authority decision;
3. оценивать measurement validity: sensor/channel, location/orientation, units, sampling/processing context, synchronization and comparability;
4. фиксировать confounders: operating-state change, load/speed change, external excitation, measurement relocation, maintenance/event history;
5. формулировать **минимум две конкурирующие гипотезы**, когда evidence не уникально;
6. для каждой гипотезы заранее указывать ожидаемые observations и возможные contradictions;
7. выбирать **discriminating evidence**, которое меняет относительный статус competing hypotheses, а не просто добавляет «ещё данных»;
8. обновлять hypothesis status при новом evidence и сохранять unaffected conclusions;
9. отличать correlation / co-occurrence / temporal order от causal mechanism;
10. отличать `absence of evidence` от `evidence of absence`;
11. использовать D1/D2 topology, shaft identity, ratio, torque/force and interface ledgers как constraints для diagnostic model;
12. выдавать bounded result: `SUPPORTED WITHIN MODEL`, `WEAKENED`, `CONTRADICTED`, `UNRESOLVED`, `STOP — NEED DISCRIMINATING EVIDENCE`;
13. не превращать diagnostic reasoning в repair instruction, component selection, alignment acceptance или permission to operate.

## In scope

### 1. State/history reconstruction

- sequence of operating states and events;
- same-state vs cross-state evidence;
- before/after maintenance or event comparison;
- synchronized vs asynchronous measurements;
- trend direction only when measurement basis is comparable.

### 2. Evidence-quality ledger

For every evidence item:

```text
SOURCE / SENSOR / DOCUMENT
OBJECT / LOCATION / ORIENTATION
TIME / STATE
RAW / PROCESSED / CALCULATED
UNITS / PROCESSING BASIS
VALIDITY / COMPARABILITY
```

A processed feature does not become a fault label merely because it has a familiar shape.

### 3. Competing-hypothesis mechanics

D3 may use bounded hypothesis classes such as:

- gear-mesh-related source;
- coupling/interface-related source;
- support/bearing-boundary-related source;
- driver/downstream/external excitation;
- measurement/processing artefact;
- operating-state/load/speed confounder.

These are **hypothesis families**, not automatic diagnoses.

### 4. Prediction / discrimination

For each hypothesis learner must state:

```text
IF H_i WERE TRUE,
THEN under stated state/model we would expect ...
AND evidence ... would weaken/contradict H_i.
```

Discriminating evidence must target a fork between hypotheses.

### 5. Qualitative hypothesis update

Allowed status vocabulary:

```text
SUPPORTED WITHIN CURRENT MODEL
WEAKENED
CONTRADICTED BY STATED EVIDENCE
UNCHANGED
UNRESOLVED
```

D3 does not require invented numeric probability, confidence percentage or severity score.

## Explicitly NOT unlocked by D3 kickoff

D3 kickoff does **not** authorize:

- root-cause certainty from a single symptom, spectrum line, temperature, noise, backlash or visual observation;
- universal vibration/temperature/noise thresholds or generic alarm limits;
- machine-specific condition acceptance without exact applicable standard/OEM/passport basis;
- gear load-capacity/rating or ISO 6336 design calculation;
- reducer selection/service factors;
- coupling selection/rating or numeric alignment acceptance;
- bearing internal load/life/preload selection;
- lubricant grade/viscosity/substitution/interval selection;
- disassembly, intrusive inspection, trial adjustment, deliberate overload or other operational intervention as a learner command;
- repair/adjustment/replacement/overhaul prescription;
- return-to-service, continue-operation or safe/unsafe verdict.

## Claim-status contract

Every D3 output must preserve these layers:

```text
OBSERVATION        = what was measured/seen/documented
FEATURE            = processed/calculated representation
HYPOTHESIS         = candidate explanation
EVIDENCE UPDATE    = supported / weakened / contradicted / unresolved
DIAGNOSIS CLAIM    = only as strong as discriminating evidence permits
AUTHORITY          = what D3 still does NOT decide
```

Critical separation:

```text
OBSERVATION ≠ HYPOTHESIS ≠ CONFIRMED ROOT CAUSE ≠ REPAIR ≠ PERMITTED OPERATION
```

## STOP conditions

STOP and request discriminating evidence when:

- timestamps or operating states are not comparable;
- topology/component identity is uncertain;
- evidence quality/processing basis is unknown;
- one observation is consistent with multiple hypotheses;
- predicted observation for a hypothesis cannot be tested from supplied data;
- apparent trend may be caused by speed/load/sensor/location change;
- machine-specific threshold/acceptance basis is missing;
- requested next step is intrusive, maintenance, repair or operational authority.

## Frozen prerequisites

D3 inherits without weakening:

- D1 terminology/source/applicability discipline;
- D2 same-object/side/state mechanics and demand-capacity-authority separation;
- ISO 6336 hard gear-rating boundary;
- coupling-family scope and alignment-acceptance locks;
- bearing-life and lubricant-selection locks;
- repair / return-to-service / equipment-operation locks.

**D3 SCOPE = LOCKED / CAUSAL-DIAGNOSTIC REASONING ONLY.**
