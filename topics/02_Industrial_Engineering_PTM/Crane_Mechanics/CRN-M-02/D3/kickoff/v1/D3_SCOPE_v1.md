# CRN-M-02 / D3 — Scope v1

## Mission

Move from D2 applied-state reasoning to advanced causal analysis of drum, sheave and reeving systems: explain *why* a behavior, load pattern or degradation signature can arise, construct competing mechanical models, and specify what evidence would discriminate between them.

D3 is not a design-calculation chapter and not a remaining-life authority.

## Immutable prerequisites

- `CRN-M-02 / D1 FROZEN v1`, tag `crn-m-02-d1-v1`;
- `CRN-M-02 / D2 FROZEN v1`, tag `crn-m-02-d2-v1`.

D3 MAY reference frozen concepts. D3 MUST NOT silently modify or weaken either frozen depth.

## D3 learner should be able to

1. reconstruct a causal chain from duty/load history, geometry, contact and motion to a local mechanical response;
2. build at least two competing explanations for a non-trivial symptom instead of declaring the first plausible cause;
3. predict different observable signatures for competing models;
4. identify measurements/history records that would distinguish those models;
5. reason about how transient acceleration/deceleration and changing load path can alter reactions without inventing dynamic factors;
6. connect spooling state, crossover/side contact, repeated bending and service history to localized degradation mechanisms qualitatively;
7. separate present-state measurement from accumulated duty/history;
8. analyze sensitivity direction: which variable increasing/decreasing would strengthen or weaken a candidate mechanism, without fabricating numeric limits;
9. distinguish inspection evidence, monitoring evidence and design/OEM evidence;
10. produce a bounded technical conclusion with explicit unknowns, rejected alternatives and escalation path.

## In scope

- causal maps linking load, geometry, contact, motion, duty/history and local response;
- competing-model analysis and falsifiable predictions;
- vector/FBD rebuilds when geometry or motion changes;
- qualitative/symbolic dynamic reasoning (acceleration, inertia, transient load-path changes) without standard dynamic factors;
- qualitative interaction of repeated bending, rope/sheave/drum contact, multilayer spooling and local deterioration;
- distinction between instantaneous state and accumulated operating history;
- duty/classification and monitoring context as evidence inputs;
- inspection-history localization and pattern comparison;
- qualitative sensitivity analysis and uncertainty/unknown registers;
- evidence plans: what to measure, observe, retrieve from logs/passport/OEM or escalate for specialist assessment;
- causal analysis of changes after rerouting/replacement/maintenance only as documented historical evidence, not as instructions to perform changes.

## Explicitly out of D3

- reproducing or applying paid ISO proof-of-competence tables/factors from memory;
- numeric dynamic factors or actual load combinations from ISO 8686 or equipment standards without exact applicable text;
- structural proof, drum/flange stress design, shaft/bearing proof or finite-element analysis as an authoritative equipment result;
- exact contact-pressure/Hertz calculations presented as acceptance authority;
- numerical fatigue-life or remaining-life prediction;
- numerical design working period calculation for the actual crane unless the complete applicable method/data/authority are available;
- bearing-life calculation as an equipment verdict;
- discard/acceptance criteria reconstructed from paid standards;
- NDT/MRT signal interpretation beyond method-boundary awareness unless performed by qualified/specialist authority;
- root-cause declaration where evidence does not discriminate competing mechanisms;
- repair/redesign/reeving-change instructions or equipment-specific modification approval;
- D4-level method selection/review, uncertainty quantification or critique of competing formal calculation methods.

## D3 → D4 boundary

D3 asks:

> **Which causal mechanism best explains the evidence, and what data could falsify it?**

D4 will ask:

> **Which formal method/model is valid for this boundary-value problem, what are its limitations/sensitivities, and why would another method mislead?**

## Model-status discipline

D3 conclusions should use bounded labels such as:

- `SUPPORTED CAUSAL MODEL`;
- `PLAUSIBLE — DISTINGUISHING DATA REQUIRED`;
- `ALTERNATIVE NOT EXCLUDED`;
- `MODEL INVALIDATED BY EVIDENCE`;
- `SOURCE / OEM / SPECIALIST REQUIRED`;
- `NOT YET DEMONSTRATED`.

A confident number is not automatically a higher-level answer.

## Safety / authority boundary

D3 authorizes analysis, hypothesis comparison, evidence planning and escalation. It does not authorize field modification, acceptance/discard, life extension, redesign or overriding mandatory/passport/OEM requirements.
