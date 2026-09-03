# SkillsVault Content — ROADMAP

## Текущая точка

```text
CRN-M-01 — Канаты и цепи ✅ FULL TOPIC FROZEN v1
└─ tag: crn-m-01-v1

CRN-M-02 — Барабаны, блоки, полиспасты ✅ FULL TOPIC FROZEN v1
└─ tag: crn-m-02-v1

CRN-M-03 — Крюковые подвески и захваты ← ACTIVE / D1 FROZEN v1 / D2 LESSON COMPLETE
```














## CRN-M-03 D2 Lesson Authoring v1

Status: `AUTHORING COMPLETE`.

- Russian-first applied-mechanics lesson authored around body-first free-body diagrams, vector forces/reactions, line of action, moments/eccentricity and centre of gravity;
- ideal versus real articulation/DOF is explicit, including friction/clearance/misalignment/binding as model-changing states;
- branch/merge load sharing does not inherit equality from visual symmetry; stiffness/contact/gap dependence is explicit where statics alone is insufficient;
- attachment self-weight and combined centre of gravity are included physically without a generic capacity-subtraction rule;
- positive-engagement, friction/clamp, magnetic, vacuum and grab/grab-bucket holding states are treated qualitatively without device-rating calculations;
- grab/grab-bucket mechanics remain conceptual and ISO 17096 is not extended across its explicit public-scope exclusion;
- quasistatic `ΣF/ΣM` is kept separate from dynamic modes; no standard load factors/combinations are reconstructed;
- mechanics → formal proof → inspection → safe use/regulation → OEM/equipment authority separation is explicit;
- learner-facing language remains Russian-first; English labels are explained or optional and Russian equivalents are fully accepted;
- formal Practice is not embedded in Lesson;
- CRN-M-01 / CRN-M-02 frozen topics, CRN-M-03 D1 frozen content and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D2 TECHNICAL EDITORIAL / PASS I / v1 — audit applied mechanics lesson for body/force-map consistency, eccentricity/centre-of-gravity reasoning, articulation/load-share assumptions, holding-state shortcuts, source-role drift and equipment-authority leakage before red team`.

## CRN-M-03 D2 Content Kickoff v1

Decision: `PASS WITH CLAIM LIMITS`.

- prerequisite `CRN-M-03 / D1 FROZEN v1`, tag `crn-m-03-d1-v1`;
- D2 scope locked around applied force/reaction paths, moments/eccentricity, centre of gravity, articulation/DOF, branch-load assumptions, qualitative dynamics and holding-state dependencies;
- generic symbolic mechanics is unlocked as an educational model; standard load factors/combinations and formal proof remain locked;
- ISO 17440:2014 anchors the forged-hook formal-proof boundary;
- ISO 17096:2015 anchors included non-fixed lifting-attachment categories and keeps grabs/grab buckets explicitly outside its scope;
- ISO 8686-1:2012 anchors the formal load/load-combination proof boundary and is watchlisted at ISO stage 90.60 / under review;
- ISO 9927-1:2013 anchors inspection separation; ISO 12480-1:2024 anchors safe-use/planning separation;
- ФНП ПС №461 (ред. 16.04.2026) anchors Russian operational/inspection authority without turning D2 into an operational manual;
- exact passport/OEM/device documentation remains mandatory for real geometry, capacity, permitted directions, holding-state limits, inspection/test/repair and operation claims;
- WLL/capacity selection, hook proof, numeric side/tip/eccentric limits, holding-force ratings, inspection/discard/load-test criteria, sling design/rigging-plan authority, repair/NDT and return-to-service remain locked;
- learner-facing D2 is Russian-first; English labels are explained or optional;
- CRN-M-01 / CRN-M-02 frozen topics, CRN-M-03 D1 frozen content and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D2 LESSON AUTHORING / v1 — build Russian-first applied mechanics for hook suspensions and load-gripping devices around force/moment paths, eccentricity, articulation, load sharing, holding-state dependencies and bounded evidence/authority handoff`.

## CRN-M-03 D1 Freeze v1

Status: `CONTENT FROZEN`. Tag contract: `crn-m-03-d1-v1`.

- 52/52 accepted D1 source/status artifacts snapshotted byte-for-byte;
- 61/61 immutable freeze-bundle files registered in `status/FROZEN_INDEX.json`;
- Lesson 17/17, Practice/Reasoning 10/10 + 10/10, ER/Rubric 10/10 + 10/10;
- 8/8 non-compensable BF have prior origin; 2/2 severity-review families remain non-blocking unless they create an explicit BF;
- unseen U1 + C1 requirement preserved;
- Source Freshness = PASS, watchlist = 0, content corrections = 0;
- Russian-first learner-language guard preserved;
- numeric design/proof, inspection/discard/acceptance, holding-force, repair/NDT and equipment-authority locks remain closed;
- CRN-M-01 / CRN-M-02 frozen topics remain byte-immutable.

Next: `CRN-M-03 / D2 CONTENT KICKOFF / v1 — define D2 scope/source gate for applied hook-suspension and load-gripping-device mechanics while preserving D1 source/acceptance/authority boundaries`.

## CRN-M-03 D1 Source Freshness v1

Decision: `PASS — FREEZE CANDIDATE READY`.

- ISO 4306-1:2026 remains Published / stage 60.60;
- ISO 1837:2003 remains Published / Confirmed / stage 90.93;
- ISO 17440:2014 remains Published / Confirmed / stage 90.93 and plate hooks remain outside the public scope;
- ISO 17096:2015 remains Published / Confirmed / stage 90.93, with ISO lifecycle showing confirmation on 2026-03-20; buckets, grabs, grab buckets and container spreaders remain explicitly excluded;
- ФНП ПС №461 remains current in the edition of 16.04.2026 and valid through 01.09.2032;
- exact passport/OEM/device documentation remains mandatory for equipment-specific configuration, compatibility, inspection/test/maintenance and authority claims;
- numeric design/proof, inspection/discard/acceptance, holding-force, repair/NDT and operation-permission locks remain closed;
- Russian-first learner-facing language guard remains intact;
- watchlist = 0; content corrections required = NO;
- CRN-M-01 / CRN-M-02 frozen topics and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-03 / D1 FREEZE / v1 — immutable D1 package, manifests, frozen index and tag contract`.

## CRN-M-03 D1 Final Alignment v1

Decision: `PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

- 17/17 primary Lesson sections traced;
- Practice A–J 10/10 and Reasoning A–J 10/10 aligned;
- ER-D1-01…10 and Rubric dimensions 10/10 aligned;
- 8/8 non-compensable BF have prior Lesson/review/practice/reasoning origin;
- SR-D1-01/02 remain severity-review families and are not hidden BF;
- Known A–J and J remain insufficient for ER-D1-10; U1 + C1 mandatory;
- C1 exact `grab` identification must update ISO 17096 applicability because grabs/grab buckets are excluded from its public scope;
- Russian-first learner-facing language preserved; English labels are explained or optional;
- orphan competence / surprise BF / guard contradiction / language gap = 0 / 0 / 0 / 0;
- content corrections required: NO; Source Freshness: READY;
- CRN-M-01 / CRN-M-02 frozen topics and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-03 / D1 SOURCE FRESHNESS / v1 — revalidate current source editions/status, explicit scope/exclusion records and D1 load-path/holding/source/acceptance/authority boundaries before D1 freeze`.

## CRN-M-03 D1 Verification Rubric v1

Status: `COMPLETE`.

- 10 ER-D1 dimensions scored 0–4; max = 40;
- every ER-D1-01…10 must be >=3 for `D1 VERIFIED`; total >=30;
- 8 dangerous evidence-status / authority failures are non-compensable;
- serial-path assumption and holding-principle collapse remain severity-review errors unless they trigger an explicit BF;
- known A–J evidence is required but insufficient; unseen U1 and challenge C1 are mandatory;
- U1 combines object-boundary, branch/merge, latch/seating, nominal-marking, history and source-applicability traps;
- C1 confirms exact OEM identity as a `grab` and requires the learner to recognize the ISO 17096 grab/grab-bucket exclusion rather than force applicability;
- correct bounded `STOP / REQUEST EVIDENCE` is a successful D1 outcome when the blocked claim and discriminating evidence are explicit;
- learner-facing language is Russian-first; English terms are explained or optional and Russian equivalents are fully accepted;
- numeric design/proof, discard/acceptance, holding-force and equipment-authority locks remain closed;
- CRN-M-01 / CRN-M-02 frozen topics and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-03 / D1 FINAL ALIGNMENT / v1 — trace Lesson, Practice, Reasoning, Expected Result and Verification Rubric end-to-end; close orphan competencies, blocking-failure provenance and guard contradictions before source freshness`.

## CRN-M-03 D1 Practice Reasoning v1

Status: `COMPLETE`.

- non-exclusive reasoning paths are complete for all ten Practice cases A–J;
- system boundaries and interfaces stay explicit before any technical claim;
- branch/merge load paths are preserved without visual-symmetry load-share invention;
- latch/seating observations stay separate from compatibility/acceptance;
- holding-principle classification remains qualitative and device/source bound;
- visible device state is not promoted to complete holding verification;
- similar devices are not promoted to interchangeability without exact identity/configuration;
- source role is selected before document number and exact applicability remains a separate gate;
- attachment self-weight is recognized physically without invented capacity arithmetic;
- past successful lifting stays historical evidence, not current validation;
- bounded STOP/evidence requests are explicit and SkillsVault STOP remains separate from equipment-operation authority;
- ten cross-case reasoning failure families are carried forward as Expected Result / blocking-failure candidates;
- Practice prompts, reviewed D1 lesson/source gate and CRN-M-01/02 frozen topics remain immutable.

Next: `CRN-M-03 / D1 EXPECTED RESULT / v1 — define observable beginner behaviors, transfer evidence, bounded STOP success conditions and candidate blocking failures for system boundary, load path, holding principle and source-scope discipline`.

## CRN-M-03 D1 Practice v1

Status: `COMPLETE`.

- ten transfer cases A–J added with no worked answer key;
- system boundary / hook-suspension / detachable-attachment separation is exercised explicitly;
- branch/merge load paths are required; visual symmetry cannot become equal load sharing;
- latch/seating, low-load/history, visible-state, interchangeability and whole-system capacity shortcuts are challenged;
- holding principles are classified causally without unlocking holding-force calculations;
- source-role selection and exact-applicability discipline are exercised, including the ISO 17096 grab/grab-bucket exclusion;
- bounded `STOP / REQUEST EVIDENCE` is a successful D1 behavior where evidence is incomplete;
- SkillsVault STOP remains separate from equipment-operation authority;
- CRN-M-01 / CRN-M-02 frozen topics and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D1 PRACTICE REASONING / v1` — completed; see Practice Reasoning section above.

## CRN-M-03 D1 Red Team Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- nine findings corrected;
- branch symmetry cannot be promoted to equal load sharing;
- latch closure + visually reassuring seating cannot become compatibility/acceptance;
- low load and historical survival cannot legalize an unverified tip/side/eccentric force path;
- visible clamp/magnet/vacuum condition checks cannot become complete holding validation;
- visual similarity / one matching marking cannot establish interchangeability;
- a crane capacity number cannot establish whole-system compatibility;
- prior successful lifting cannot become current validation/acceptance;
- source-category match cannot become exact construction/configuration applicability;
- SkillsVault `STOP` is an evidence/authority handoff, not an equipment-operation command;
- all numeric design/proof, inspection/discard, holding-force, repair/NDT, load-test and equipment-authority locks remain unchanged;
- CRN-M-01 / CRN-M-02 frozen topics and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D1 READER EXPERIENCE PASS / PASS I / v1 — improve beginner flow, cognitive load and retrieval without weakening Red-Team load-path/source/holding/acceptance/authority guards before practice`.

## CRN-M-03 D1 Technical Editorial Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- seven findings corrected;
- load path now supports branch/merge maps instead of assuming one serial chain;
- latch/keeper function/load role is explicitly device-source bound;
- educational seating geometry is separated from field acceptance;
- ISO 17440 remains a defined forged-steel-hook proof-scope boundary, not a whole-suspension or invented hook-body-only rule;
- attachment mass does not create universal capacity subtraction arithmetic;
- clamp/magnet/vacuum dependency examples cannot be used as inspection checklists;
- visible abnormal state is not automatically a diagnosed failure;
- numeric design/proof, inspection/discard, holding-force, repair/NDT and equipment-authority locks remain unchanged;
- CRN-M-01 / CRN-M-02 frozen topics and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D1 RED TEAM / PASS I / v1` — completed; see Red Team section above.

## CRN-M-03 D1 Lesson Authoring v1

Status: `COMPLETE / PASS_AUTHORING_COMPLETE`.

Beginner lesson v1 now teaches a single executable mental model:

```text
system boundary
→ load path
→ holding principle
→ device state / unknowns
→ exact source scope
→ bounded conclusion or STOP / REQUEST SOURCE-OEM
```

- hook body is separated from the complete hook suspension/load path;
- latch/keeper function is not silently upgraded to a load-bearing role;
- centered/simple seating is separated from tip/side/eccentric force paths without numeric limits;
- positive engagement is separated from clamp/friction, magnetic, vacuum and grab/grab-bucket holding principles;
- attachment self-weight is recognized as part of the suspended system, while equipment-specific capacity treatment remains locked to OEM/load-chart/device documentation;
- observation, hypothesis and normative/equipment decision are explicit evidence-status layers;
- ISO 17096 grab/grab-bucket scope exclusion remains a hard guard;
- numeric design/proof, inspection/discard, holding-force, repair/NDT and operation-permission claims remain locked;
- CRN-M-01 / CRN-M-02 frozen topics and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D1 TECHNICAL EDITORIAL / PASS I / v1` — completed; see Technical Editorial section above.

## CRN-M-03 D1 Content Kickoff v1

Status: `COMPLETE / PASS WITH CLAIM LIMITS`.

- D1 scope is locked around beginner hook-suspension / load-gripping-device recognition and load-path reasoning;
- crane-integral hook suspension versus detachable below-hook attachment is explicit;
- hook nomenclature and latch/keeper role are separated from design/acceptance claims;
- ISO 4306-1:2026 and ISO 1837:2003 anchor vocabulary;
- ISO 17440:2014 is used only as a forged-hook proof scope boundary, not as a universal hook-block or inspection rule;
- ISO 17096:2015 anchors several load-lifting attachment categories and its explicit exclusion of grabs/grab buckets is carried as a hard source-scope guard;
- ФНП ПС №461 (ред. 16.04.2026) anchors the Russian regulatory/authority boundary;
- passport/OEM/device documentation is mandatory for actual configuration, capacity, inspection, maintenance, repair and permission decisions;
- numeric design/proof, discard/acceptance, holding-force, test, repair/NDT and return-to-service claims remain locked;
- CRN-M-01 and CRN-M-02 frozen content and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D1 LESSON AUTHORING / v1`.

## CRN-M-02 D3 Verification Rubric v1

Status: `COMPLETE`.

- ER-D3-01…13 are scored 0–4; max = 52;
- every dimension must be >=3 for D3 VERIFIED;
- 11 BF-D3 rules are non-compensable;
- known A–L evidence is required but insufficient; unseen U1 and mandatory C1 evidence update are required;
- D3 VERIFIED = 39–45 only with all gates complete; ROBUST / TRANSFER = 46–52 with ER-D3-06, 08 and 13 at Level 4 plus another transfer-strength dimension;
- correct bounded uncertainty/stop/escalation remains a successful outcome;
- score bands are pedagogical and do not unlock root-cause certification, proof/design, remaining-life, acceptance or field authority;
- D1/D2 frozen prerequisites and `FROZEN_INDEX` remain immutable.

## CRN-M-02 D3 Expected Result v1

Status: `COMPLETE`.

- 13 observable dimensions ER-D3-01…ER-D3-13 translate the reviewed D3 causal-analysis contract into assessable behavior;
- required evidence includes neutral observation, case boundary, causal map, competing hypotheses, falsifiable predictions, evidence matrix, observability, distinguishing data, history/confounders, dynamic rebuild, unknown/model-status discipline and source/method/authority separation;
- known Practice/Reasoning A–L performance is insufficient: Verification must include an unseen causal case;
- Verification must also supply a meaningful adversarial evidence update after the first conclusion and require matrix/status/conclusion rebuild;
- `PLAUSIBLE — DISTINGUISHING DATA REQUIRED`, `SOURCE / OEM / SPECIALIST REQUIRED` and `NOT YET DEMONSTRATED` remain valid successful bounded outcomes;
- 11 candidate blocking failures are carried forward for severity/non-compensability decisions;
- no formal root-cause certification, numeric proof/design/remaining-life output, acceptance/discard threshold or equipment-specific authority is introduced;
- D1/D2 frozen prerequisites and `FROZEN_INDEX` remain immutable.

## CRN-M-02 D3 Practice Reasoning v1

Status: `COMPLETE`.

Worked reasoning paths are complete for all 12 cases A–L. They preserve multiple valid causal-analysis paths while requiring explicit competing hypotheses, falsifiable predictions, distinguishing evidence, observability gates, `H_data` discipline, snapshot/history separation, dynamic-state rebuilds, confounder handling, question-specific evidence roles, model-status updates, unknown registers and bounded conclusions.

The Practice artifact remains unchanged; no formal root-cause, proof/design, remaining-life, acceptance/discard or field-authority conclusion is introduced. D1/D2 frozen prerequisites and `FROZEN_INDEX` remain immutable.

## CRN-M-02 D3 Practice v1

Status: `COMPLETE`.

- 12 cases A–L exercise competing hypotheses, falsifiable predictions, evidence-matrix discrimination, observability, `H_data`, snapshot/history separation, dynamic-state rebuilds, before/after confounders, qualitative sensitivity, question-specific evidence roles, formal-method authority boundaries and integrated bounded conclusions;
- every case requires explicit model-status/unknown discipline rather than root-cause storytelling;
- worked reasoning remains intentionally separate;
- proof/design/remaining-life and field-authority guards remain locked;
- D1/D2 frozen prerequisites remain immutable.

## CRN-M-02 D3 Reader Experience Pass I v1

Decision: `PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`.

Eight reader-level refinements expose one executable D3 causal workflow without weakening the reviewed mechanics: early case-file/status onboarding, a uniform hypothesis card, operational evidence-matrix reading, an explicit observability gate, question-first evidence-role mapping and grouped failure families.

Technical Editorial + Red-Team causal/observability/model-scope guards and all proof/design/remaining-life/equipment-authority locks remain unchanged.

## CRN-M-02 D3 Red Team Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

Eight adversarial hardenings close the remaining D3 misuse routes: bounded support stays relative to the evaluated hypothesis set; non-detection/single mismatch cannot falsify a model without applicability and observability; `H_data` must itself be falsifiable; unmeasured kinematics are not zero; directional sensitivity is not causal identification; maintenance before/after evidence is treated as a change bundle rather than one-cause proof; evidence hierarchy is question-specific rather than a universal source ranking; and source existence does not unlock formal proof, remaining-life, acceptance or field authority.

No proof/design/remaining-life, acceptance/discard or field-authority lock was weakened.

## CRN-M-02 D3 Technical Editorial Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

Seven corrections tighten D3 without changing its scope: bounded causal support is not formal root-cause certification; Newton–Euler equations now require named body/frame/axis assumptions; negative evidence requires detectability; qualitative sensitivity no longer borrows derivative notation without a mathematical model; data/mapping artifact is an explicit candidate when relevant; historical before/after evidence is not automatically a natural experiment; and the causal `f(...)` scaffold is not a regression/independent-effect model.

No proof/design/remaining-life, acceptance/discard or field-authority lock was weakened.

## CRN-M-02 D3 Lesson Authoring v1

D3 Lesson v1 is complete under the locked `PASS WITH CLAIM LIMITS` source gate.

### Advanced-analysis learning spine

```text
observed signature
→ system + state + history
→ causal variables
→ competing H1/H2/H3
→ predicted signatures
→ discriminating data
→ model update / falsification
→ bounded conclusion
→ source/OEM/specialist or D4 handoff
```

### Core authored concepts

- symptom is not automatically cause;
- a non-trivial case should preserve competing causal models until evidence discriminates them;
- confirming evidence is weaker than genuinely distinguishing evidence when multiple models predict the same observation;
- free-body/dynamic models must be rebuilt when geometry, state or acceleration changes;
- generic `ΣF = m·a` / `ΣM = I·α` mechanics do not import crane-specific dynamic factors or load combinations;
- present state and accumulated duty/history are separate evidence layers;
- crossover/spooling/degradation relationships are causal candidates and evidence cues, not automatic discard authority;
- qualitative sensitivity, unknown registers, negative evidence and confounders are part of the analysis;
- bounded conclusions must preserve alternatives, unknowns and authority boundaries;
- D3 hands formal method-selection/validation problems to D4 rather than pretending to solve them.

No proof-of-competence factors, remaining-life numbers, numeric acceptance limits or equipment-specific interventions were introduced.

## CRN-M-02 D3 Content Kickoff v1

D3 starts only after immutable prerequisites `crn-m-02-d1-v1` and `crn-m-02-d2-v1`. It does not reopen either frozen depth.

### D3 question

D2 asks: **what is the applied mechanical state and where does the simple model stop?**

D3 asks: **why is the system behaving or degrading this way, which causal models compete, and what observation/measurement would distinguish them?**

### Advanced-analysis spine

```text
LOAD / DUTY HISTORY
+ GEOMETRY
+ CONTACT
+ KINEMATICS / DYNAMICS
+ SPOOLING STATE
+ LOCAL COMPONENT RESPONSE
↓
CANDIDATE MECHANISMS
↓
PREDICTED SIGNATURES
↓
DISTINGUISHING DATA
↓
APPLICABLE SOURCE / OEM
↓
BOUNDED TECHNICAL CONCLUSION
```

### Source-gate decision

`PASS WITH CLAIM LIMITS`.

D3 may use causal diagrams, symbolic mechanics, competing hypotheses, sensitivity directions and evidence plans. It may not invent proof-of-competence factors, dynamic coefficients/load combinations, fatigue or remaining-life results, numeric design/acceptance limits, or equipment-specific field authority.

Current external anchors include ISO 16625:2025, ISO 4301-1:2016, ISO 8686-1:2012, ISO 4309:2017, ISO 9927-1:2013, ISO 12482:2014, ФНП ПС №461 and actual passport/OEM documentation. ISO/CD 4309 Edition 6 and ISO/CD 12482 Edition 2 are watch-only development companions.

## CRN-M-02 D2 Lesson Authoring v1

D2 Lesson v1 is complete under the locked `PASS WITH CLAIM LIMITS` source gate.

### Applied learning spine

```text
rope path
→ contact nodes
→ T1/T2/T3... unless equality is justified
→ force directions / reactions
→ spooling + geometry state
→ model status
→ source/OEM boundary
```

### Core authored concepts

- geometry affects node reactions through force direction, not only force magnitude;
- equal branch tension is an explicit idealization/assumption in applied analysis, not a free default;
- effective winding radius links drum angular motion to rope speed and torque arm in simple symbolic models;
- multilayer spooling introduces a different contact state, including transition/crossover context;
- side tracking/contact is an observation/escalation cue, not an invented numeric acceptance criterion;
- duty/classification context matters to selection but does not unlock paid selection factors;
- understanding load path does not authorize field rerouting, repair or redesign.

No numeric design/acceptance values were introduced.

## CRN-M-02 D2 Content Kickoff v1

D2 reuses the frozen D1 mental model as a prerequisite, not as permission to copy D1 simplifications into applied mechanics.

### D2 scope

- applied drum/sheave/reeving mechanics;
- rope-drive geometry as a system variable;
- qualitative fleet/deflection-angle effects without unsourced limits;
- single-layer and multilayer spooling states, layer transitions and crossover zones;
- qualitative tension inequality / reaction-load reasoning when the D1 equal-tension scalar model is insufficient;
- component-condition clues that require inspection/OEM escalation rather than field redesign.

### Source-gate decision

`PASS WITH CLAIM LIMITS`.

Current anchors checked for kickoff:

1. `ISO 4306-1:2026` — vocabulary/components;
2. `ISO 16625:2025` — primary rope/drum/sheave selection and geometry boundary;
3. `ISO 4301-1:2016` — current cycle-based classification context;
4. `ISO 4309:2017` — current published rope care/inspection/discard interface, including multilayer crossover deterioration;
5. `ISO/CD 4309`, Edition 6 — development watch only, not current normative authority;
6. `ФНП ПС №461`, ред. 16.04.2026 — Russian regulatory/operation boundary;
7. actual passport/OEM documentation — mandatory for equipment-specific geometry, reeving, limits and interventions.

Numeric design/acceptance values remain locked unless the exact applicable source text or equipment documentation is available.

## CRN-M-02 D1 Final Alignment v1

The full D1 chain is now traced bidirectionally.

### Alignment result

- Lesson primary sections: 12/12 traced;
- Practice cases: 8/8 aligned;
- Practice Reasoning cases: 8/8 aligned;
- Expected Result: ER-01…ER-10 all traced;
- Verification Rubric: 10/10 dimensions traced;
- Blocking Failures: 6/6 have prior lesson/practice/reasoning origin;
- orphan lesson/practice/ER/rubric items: 0;
- surprise blocking failures: 0;
- guard contradictions: 0;
- content corrections required: NO.

Decision: `PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

## CRN-M-02 D1 Source Freshness v1

Decision: `PASS WITH WATCHLIST — FREEZE CANDIDATE READY`.

- 5 primary source/equipment-authority anchors revalidated;
- 1 active development companion checked;
- ISO 4306-1:2026 remains current Published Edition 5;
- ISO 16625:2025 remains current Published Edition 2; ISO 16625:2013 remains withdrawn;
- ФНП ПС №461 remains current in the 16.04.2026 edition, valid through 01.09.2032;
- ISO 4309:2017 remains the current published Edition 5 but is marked to be revised;
- ISO/CD 4309 Edition 6 is under development at Committee Draft stage and remains watch-only;
- numeric design/acceptance locks and passport/OEM field-authority boundary remain intact;
- content corrections required: NO;
- D1 Freeze candidate: READY.

## Source anchors

1. `ISO 4306-1:2026` — current crane vocabulary/component terminology.
2. `ISO 16625:2025` — current selection standard for wire ropes, drums and sheaves; geometry compatibility boundary.
3. `ФНП ПС №461`, ред. 16.04.2026 — Russian regulatory/operational boundary.
4. `ISO 4309:2017` — wire-rope care/inspection/discard interface; sixth edition under development, freshness watchlist remains active.
5. Passport / OEM manual — required for actual reeving, dimensions, limits and field decisions.

## CRN-M-02 D2 Technical Editorial Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- TE-D2-01 CRITICAL — block free-body/action-reaction sign convention made explicit;
- TE-D2-02 HIGH — `T1/T2/...` clarified as local bookkeeping, not piecewise-constant/discontinuous tension;
- TE-D2-03 HIGH — drum `ωr` relation limited to circumferential speed and simple near-circumferential rope-speed model;
- TE-D2-04 HIGH — axis torque corrected to vector moment with kinematic radius separated from moment arm;
- TE-D2-05 MEDIUM — fleet/lead/deflection terminology made source-specific rather than slash-synonymous;
- ISO 4309 crossover and ISO 4301-1 classification public claims rechecked and retained;
- numeric design/OEM claim locks remain intact;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Red Team Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- RT-D2-01 CRITICAL — one physical rope no longer implies equal local `Ti` without an explicit model;
- RT-D2-02 CRITICAL — body-first FBD discipline prevents block/rope action-reaction arrow mixing;
- RT-D2-03 HIGH — no-slip cannot prove arbitrary helical/axial `v_rope = ωr`;
- RT-D2-04 HIGH — visible layer radius cannot replace the axis moment arm without line-of-action proof;
- RT-D2-05 HIGH — crossover/side-contact observation is not an automatic accept/discard/geometry verdict;
- RT-D2-06 HIGH — numeric angle limits cannot transfer on terminology alone;
- RT-D2-07 HIGH — quasi-static reaction reasoning cannot be presented as actual dynamic load during material acceleration;
- numeric design/OEM claim locks remain intact;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Reader Experience Pass I v1

Decision: `PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`.

- RX-D2-01 HIGH — complete working route is previewed before the technical detail stack;
- RX-D2-02 HIGH — compact `Ti` / FBD / `r_k` / `r_m` / spooling legend reduces symbol load;
- RX-D2-03 HIGH — paired same-contact FBD card prevents action/reaction arrow carry-over;
- RX-D2-04 HIGH — `r_k` and `r_m` are framed by different engineering questions;
- RX-D2-05 MEDIUM — spooling state is identified before mechanism or verdict;
- RX-D2-06 MEDIUM — model-status meanings are onboarded early;
- RX-D2-07 MEDIUM — twelve failure examples are grouped into reader families;
- RX-D2-08 LOW — all seven Red-Team invariants are now visible in the early trap block;
- technical conclusions, numeric-design locks, source authority and OEM/field boundaries are unchanged;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Practice v1

Status: `COMPLETE`.

- 11 cases A–K exercise local `Ti`, body-first FBD, vector reactions, `r_k`/`r_m`, spooling state, dynamic stop conditions, source/reference-geometry discipline and duty context;
- every case requires model-status and bounded conclusion rather than formula-first answering;
- worked reasoning is intentionally deferred to a separate Practice Reasoning stage;
- numeric design/OEM claim locks remain intact;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Practice Reasoning v1

Status: `COMPLETE`.

- 11 worked reasoning paths A–K preserve the original Practice as a separate assessment artifact;
- local `Ti` remain bookkeeping variables until equality is demonstrated;
- body-first FBD rebuilds and action/reaction ownership are explicit;
- `r_k` circumferential kinematics and `r_m` moment-arm reasoning remain separated;
- spooling observations remain observation/mechanism inputs, not automatic accept/discard verdicts;
- dynamic, source/reference-geometry and duty/classification stop conditions are explicit;
- `SIMPLE`, `QUALITATIVE APPLIED`, `SOURCE / OEM REQUIRED` and `NOT YET DEMONSTRATED` outcomes are treated as legitimate bounded model states;
- numeric design/OEM claim locks remain intact;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Expected Result v1

Status: `COMPLETE`.

- 12 observable dimensions ER-D2-01…ER-D2-12 translate the reviewed D2 contract into assessable behavior;
- required evidence covers system/mode, rope path, contact nodes, local `Ti`, named FBD, geometry/spooling state, model status and bounded conclusion;
- `r_k` kinematics and `r_m` moment reasoning remain separate competencies with explicit applicability checks;
- correct `SOURCE / OEM REQUIRED` or `NOT YET DEMONSTRATED` can be successful outcomes;
- known Practice A–K performance is insufficient: Verification must include an unseen applied case;
- Verification must also include a meaningful delta/challenge and require rebuilding stale parts of the model;
- nine candidate blocking failures are carried forward for severity/non-compensability decisions;
- no numeric design/acceptance threshold or equipment-specific authority is introduced;
- D1 frozen prerequisite remains immutable.

## CRN-M-02 D2 Final Alignment v1

Decision: `PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

- Lesson primary sections: 18/18 traced;
- Practice cases: 11/11 aligned;
- Practice Reasoning cases: 11/11 aligned;
- Expected Result: ER-D2-01…12 all traced;
- Verification Rubric: 12/12 dimensions traced;
- Blocking Failures: 9/9 have prior lesson/practice/reasoning origin;
- orphan lesson/practice/reasoning/ER/rubric items: 0;
- surprise blocking failures: 0;
- guard contradictions: 0;
- content corrections required: NO;
- D1 frozen prerequisite remains immutable.

Source Freshness candidate: `READY`.

## CRN-M-02 D2 Source Freshness v1

Decision: `PASS WITH WATCHLIST — FREEZE CANDIDATE READY`.

- 6 primary external/source-boundary anchors revalidated;
- 1 active development companion checked;
- ISO 4306-1:2026 remains current Published Edition 5;
- ISO 16625:2025 remains current Published Edition 2; ISO 16625:2013 remains withdrawn;
- ISO 4301-1:2016 remains current/confirmed and is retained only as classification/service-condition context;
- ISO 4309:2017 remains current published Edition 5 but is marked to be revised;
- ISO/CD 4309 Edition 6 remains under development at Committee Draft stage 30.20 and is watch-only;
- ФНП ПС №461 remains current in the 16.04.2026 edition, valid through 01.09.2032;
- D2 geometry/spooling/classification boundaries rechecked with no content correction required;
- numeric design/acceptance locks and passport/OEM field-authority boundary remain intact;
- D1 frozen prerequisite remains immutable;
- D2 Freeze candidate: READY.

## CRN-M-02 D3 Source Freshness v1

Decision: `PASS WITH WATCHLIST — FREEZE CANDIDATE READY`.

- 10 external/source-boundary anchors revalidated: 8 current published/regulatory records + 2 active draft companions;
- ISO 8686-1:2012 remains the published Part 1 at review stage 90.60 and stays on watch;
- ISO 4309:2017 and ISO 12482:2014 remain current published editions but are marked `to be revised`; their Edition 6 / Edition 2 Committee Drafts remain watch-only;
- ISO 4306-1:2026, ISO 16625:2025, ISO 4301-1:2016 and ISO 9927-1:2013 remain usable within their bounded roles;
- ФНП ПС №461 remains current in the 16.04.2026 edition and valid through 01.09.2032;
- causal support/root-cause, source/method/data/authority, dynamics/proof, inspection/NDT, design-working-period/remaining-life and equipment/OEM boundaries were rechecked with no correction required;
- D1/D2 frozen prerequisites and `FROZEN_INDEX` remain immutable;
- D3 Freeze candidate: READY.

## CRN-M-02 D3 Final Alignment v1

Decision: `PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

- Lesson primary sections: 33/33 traced;
- Practice cases: 12/12 aligned;
- Practice Reasoning cases: 12/12 aligned;
- Expected Result: ER-D3-01…13 all traced;
- Verification Rubric: 13/13 dimensions traced;
- Blocking Failures: 11/11 have prior lesson/practice/reasoning origin;
- known Practice L is pattern-only for ER-D3-13; unseen U1 + mandatory C1 remain required;
- orphan lesson/practice/reasoning/ER/rubric items: 0;
- surprise blocking failures: 0;
- guard contradictions: 0;
- content corrections required: NO;
- proof/design/remaining-life/equipment-authority locks remain intact;
- D1 and D2 frozen prerequisites remain immutable.

Source Freshness candidate: `READY`.

## CRN-M-02 D3 Freeze v1

Decision: `CONTENT FROZEN`.

- baseline: `3fae8b5266e56b26318a20f3590209a3f51ba795`;
- immutable snapshot: 52/52 accepted D3 artifacts SHA-matched;
- freeze bundle: 61 files;
- canonical frozen-index entry appended with exact hashes;
- immutable annotated tag contract: `crn-m-02-d3-v1`;
- Lesson 33/33, Practice/Reasoning 12/12, Expected Result/Rubric 13/13 and BF 11/11 alignment remain accepted;
- Source Freshness remains `PASS WITH WATCHLIST` with five non-blocking watch records;
- causal-support/root-cause, proof/design, remaining-life, inspection/evidence-role and equipment/OEM authority guards remain locked;
- D1/D2 frozen packages remain byte-immutable.

D3 must not be edited in place after this point. Any accepted D3 change requires a new review/freshness cycle and `FROZEN_v2`.

## CRN-M-02 D4 Content Kickoff v1

Status: `COMPLETE`.

- D1/D2/D3 remain immutable prerequisites under tags `crn-m-02-d1-v1`, `crn-m-02-d2-v1`, `crn-m-02-d3-v1`;
- D4 scope is locked around expert/reference method selection, applicability, boundary conditions, input provenance, verification/validation, sensitivity/uncertainty/error, competing-method comparison and audit trail;
- Source Gate = `PASS WITH CLAIM LIMITS`;
- current topic-specific anchors include ISO 16625:2025 and ISO 10972-1:2025, with ISO 8686-1:2012 and ISO 20332:2016 used to teach load/proof method boundaries rather than to invent closed inputs;
- ISO 4309:2017 / Edition 6 draft and ISO 12482:2014 / Edition 2 draft stay on the watchlist;
- inspection/monitoring/requirement/selection/proof roles are explicitly non-interchangeable;
- a numerical/FE model is not treated as validated merely because it converges or is detailed;
- paid normative tables/coefficients, actual component proof, remaining-life, discard/acceptance, NDT-specialist and equipment-authority claims remain locked unless exact method, inputs and authority exist;
- D4 Lesson Authoring is unlocked.

## CRN-M-02 D4 Lesson Authoring v1

Status: `COMPLETE — 9 PARTS / 45 BLOCKS`.

- Part I: question class, source role, method applicability and audit trail;
- Part II: boundary-value problem, rope path, frames, states and requested output;
- Part III: rigid-body/quasi-static/dynamic/elastostatic/advanced-model adequacy;
- Part IV: ISO 16625-type rope-drive selection/proof boundary and exact-source input discipline;
- Part V: global load path → reactions/torque → compliance → local contact → structural/numerical model;
- Part VI: verification separated from validation/cross-check;
- Part VII: input/model-form/measurement/geometry/numerical uncertainty and competing-method comparison;
- Part VIII: classification, inspection, rope-condition and monitoring evidence kept separate from proof/remaining-life authority;
- Part IX: technical review, stop rules and OEM/designer/expert/NDT authority handoff;
- D1/D2/D3 frozen prerequisites and `FROZEN_INDEX` remain immutable;
- closed coefficients/tables, actual proof, discard/acceptance, remaining-life and equipment modification authority remain locked.


## CRN-M-02 D4 Technical Editorial Pass I v1

Status: `COMPLETE — PASS WITH CORRECTIONS APPLIED`.

- 9/9 parts and 45/45 blocks audited;
- seven findings closed;
- model fidelity is separated from validation status;
- public metadata is limited to discovery/preliminary scope screening, not final applicability;
- internal FEA checklist is explicitly non-normative/non-sufficient for formal proof;
- cross-check evidence is separated from real-system validation evidence;
- remaining-life required inputs are owned by the exact applicable method;
- technical review terminology and equipment-authority wording are bounded;
- D1/D2/D3 frozen artifacts and `FROZEN_INDEX` remain immutable.

## CRN-M-02 D4 Red Team Pass I v1

Status: `COMPLETE — PASS WITH CORRECTIONS APPLIED`.

- 9/9 parts and 45/45 blocks adversarially challenged;
- ten findings closed across Parts I–IX;
- UNKNOWN/PARTIAL applicability cannot become proof/decision permission;
- as-found configuration cannot become approved/design-conforming configuration;
- simplified-model plausibility cannot override governing source requirements;
- parent-model status does not automatically validate child interfaces/submodels;
- agreement of two models does not exclude common-mode input/interpretation error;
- robustness claims require scenario-envelope provenance and coverage;
- negative inspection evidence is bounded by observability/capability;
- analysis/proof stop is separated from operational permission and required safety action;
- technical recommendation is separated from authorized equipment decision;
- D1/D2/D3 frozen artifacts, `FROZEN_INDEX` and D4 kickoff/source gate remain immutable.

## Next

CRN-M-02 / D4 READER EXPERIENCE PASS / PASS I / v1 — improve narrative flow, cognitive load and comprehension without weakening Red-Team/source/method/authority guards before practice

## D1 production sequence

```text
Scope ✅
Source Gate ✅
Lesson Authoring ✅
Technical Editorial ✅
Red Team ✅
Reader Experience Pass ✅
Practice ✅
Practice Reasoning ✅
Expected Result ✅
Verification Rubric ✅
Final Alignment ✅
Source Freshness ✅
D1 Freeze ✅
D2 Content Kickoff ✅
D2 Lesson Authoring ✅
D2 Technical Editorial ✅
D2 Red Team ✅
D2 Reader Experience ✅
D2 Practice ✅
D2 Practice Reasoning ✅
D2 Expected Result ✅
D2 Verification Rubric ✅
D2 Final Alignment ✅
D2 Source Freshness ✅
D2 Freeze ✅ FROZEN v1 / tag crn-m-02-d2-v1
D3 Content Kickoff ✅
D3 Lesson Authoring ✅
D3 Technical Editorial ✅
D3 Red Team ✅
D3 Reader Experience ✅
D3 Practice ✅
D3 Practice Reasoning ✅
D3 Expected Result ✅
D3 Verification Rubric ✅
D3 Final Alignment ✅
D3 Source Freshness ✅
D3 Freeze ✅ FROZEN v1 / tag crn-m-02-d3-v1
D4 Content Kickoff ✅
D4 Lesson Authoring ✅
D4 Technical Editorial ✅ PASS WITH CORRECTIONS APPLIED
D4 Red Team ✅ PASS WITH CORRECTIONS APPLIED
D4 Reader Experience ✅ PASS WITH READER-LAYER IMPROVEMENTS APPLIED
D4 Practice ✅ v1
D4 Practice Reasoning ✅ v1
D4 Expected Result ✅ v1
D4 Verification Rubric ✅ v1
D4 Final Alignment ✅ v1
D4 Source Freshness ✅ PASS WITH WATCHLIST v1
D4 Freeze ✅ FROZEN v1 / tag crn-m-02-d4-v1
CRN-M-02 FULL TOPIC FREEZE ✅ v1 / tag crn-m-02-v1
CRN-M-03 CONTENT KICKOFF ← NEXT
```

## CQ-B001 pilot sequence

```text
CRN-M-01 ✅ FULL TOPIC FROZEN v1
CRN-M-02 ✅ FULL TOPIC FROZEN v1
CRN-M-03 ← ACTIVE / CONTENT KICKOFF NEXT — Крюковые подвески и захваты
CRN-M-04 — Редукторы и муфты
CRN-M-05 — Тормоза
CRN-M-06 — Колёса и подкрановые пути
↓
CQ-B001 Pilot Complete
↓
Content Standard v2
↓
Audit 1079 Topics / prerequisite graph
↓
Industrial Engineering Core
↓
Digital Engineering Core
↓
Aviation Engineering
↓
Cross-domain synthesis
↓
Pedagogical Red Team
↓
Golden Set
↓
ZERO → LEGEND
```

## GitHub

`main` — accepted current content.
`FROZEN_vN` — immutable versions; existing frozen paths cannot be silently edited or deleted.
CRN-M-01 topic tag: `crn-m-01-v1`.
`status/CONTENT_STATUS.json` — canonical new-chat entrypoint.
`status/FROZEN_INDEX.json` — canonical frozen-file hash index; CRN-M-02 D1, D2, D3 and D4 are frozen as v1 under tags `crn-m-02-d1-v1`, `crn-m-02-d2-v1`, `crn-m-02-d3-v1` and `crn-m-02-d4-v1`. Full-topic aggregate tag: `crn-m-02-v1`.


## CRN-M-02 D4 Reader Experience Pass I v1

Decision: `PASS WITH READER-LAYER IMPROVEMENTS APPLIED`.

- 9 / 9 Parts and 45 / 45 Blocks retain their technical content;
- every Part now has a Reader Navigator, capability target and retrieval checkpoint;
- Part I exposes the whole-D4 progression;
- Parts II–VIII lead with a positive causal/execution route before guard-dense detail;
- Part VI makes verification / cross-check / validation explicitly distinct in one memory map;
- Part VIII maps duty / condition / monitoring / proof / authority as separate evidence roles;
- Part IX is capstone synthesis and now routes to Practice;
- no normative claim, Red-Team guard, frozen D1/D2/D3 artifact or equipment-authority boundary was weakened.

Next: `CRN-M-02 / D4 EXPECTED RESULT / v1 — define observable expert behaviors, evidence outputs, transfer criteria and stop/escalation success conditions for method selection, V&V, robustness and bounded authority handoff`


## CRN-M-02 D4 Practice v1

Status: `COMPLETE`.

- 10 integrated cases A–J exercise question/method selection, configuration and input provenance, exact-source applicability, model fidelity, parent–child interfaces, V&V, common-mode error, sensitivity/robustness, evidence-role separation and authority handoff;
- Case J is the full D4 transfer case;
- worked reasoning is intentionally separate;
- proof/remaining-life/discard/NDT/equipment-authority locks remain unchanged;
- D1/D2/D3 frozen prerequisites and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-02 / D4 EXPECTED RESULT / v1 — define observable expert behaviors, evidence outputs, transfer criteria and stop/escalation success conditions for method selection, V&V, robustness and bounded authority handoff`

## CRN-M-02 D4 Practice Reasoning v1

Status: `COMPLETE`.

- cases A–J now have non-exclusive expert reasoning paths rather than a single answer key;
- configuration/input provenance, method applicability, V&V, parent-child interfaces, common-mode error, sensitivity/robustness and value-of-information are explicit;
- Case J provides a full bounded expert review/handoff packet;
- cross-case failure taxonomy preserves source/proof/remaining-life/NDT/equipment-authority locks;
- D1/D2/D3 frozen prerequisites and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-02 / D4 EXPECTED RESULT / v1 — define observable expert behaviors, evidence outputs, transfer criteria and stop/escalation success conditions for method selection, V&V, robustness and bounded authority handoff`

## CRN-M-02 D4 Expected Result v1

Status: `COMPLETE`.

- 14 observable ER-D4 dimensions convert the reviewed D4 method-governance contract into assessable expert behavior;
- evidence must expose decision/claim decomposition, configuration, boundary-value problem, input provenance, source/method applicability, fidelity, V&V, common-mode challenge, uncertainty/robustness, evidence roles, value of information, bounded conclusion and authority/audit trail;
- known Practice/Reasoning A–J performance is required but insufficient; Verification must include an unseen integrated case;
- Verification must also deliver a meaningful adversarial evidence-status update after the learner's first conclusion and require affected layers to be rebuilt;
- correct `STOP / REQUEST EVIDENCE`, `NOT DEMONSTRATED` and `METHOD NOT SHOWN APPLICABLE` remain successful bounded outcomes when proof chain is incomplete;
- 12 candidate BF-D4 failures are carried forward for non-compensability decisions;
- no actual proof, remaining-life, discard/NDT or equipment-specific authority is introduced;
- D1/D2/D3 frozen prerequisites and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-02 / D4 VERIFICATION RUBRIC / v1 — score observable expert method-governance behaviors, 12 non-compensable blocking failures, unseen transfer and adversarial evidence-status challenge`

## CRN-M-02 D4 Verification Rubric v1

Status: `COMPLETE`.

- 14 ER-D4 dimensions are scored on a 0–4 behavioral scale; maximum 56;
- every dimension must be >=3 for `D4 VERIFIED`; total score cannot compensate for a weak dimension;
- all 12 BF-D4 failures are non-compensable;
- known A–J is required but insufficient; unseen U1 plus mandatory challenge C1 are required;
- U1 tests a prospective operating-profile change with apparently agreeing model packages;
- C1 exposes a configuration mismatch and shared decision-driving workbook, forcing common-mode/V&V/robustness re-evaluation;
- correct bounded `STOP / REQUEST EVIDENCE` remains a successful result where the evidence chain is incomplete;
- actual proof, remaining-life, NDT, acceptance/discard and equipment-authority locks remain closed;
- D1/D2/D3 frozen prerequisites and `FROZEN_INDEX` remain immutable.

## CRN-M-02 D4 Final Alignment v1

Status: `COMPLETE / PASS — TRACEABILITY COMPLETE / NO BLOCKING GAPS`.

- 9 / 9 Lesson Parts and 45 / 45 Blocks traced;
- Practice A–J and Practice Reasoning A–J: 10 / 10 each;
- ER-D4-01…14 ↔ Rubric ER-D4-01…14: 14 / 14;
- BF-D4-01…12: 12 / 12 with prior instructional/review origin;
- orphan competence, surprise BF and guard contradictions: 0;
- known J remains insufficient for ER-D4-14; unseen U1 + mandatory C1 remain required;
- source/method applicability, V&V/common-mode, robustness-envelope, STOP/permission and equipment-authority guards remain closed;
- D1/D2/D3 frozen prerequisites and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-02 / D4 SOURCE FRESHNESS / v1 — revalidate current source editions/status, development/watchlist records and D4 method-selection/V&V/robustness/authority claim boundaries before D4 freeze`


## CRN-M-02 D4 Source Freshness v1

Status: `COMPLETE / PASS WITH WATCHLIST`.

Ten published/regulatory anchors plus two development companions were revalidated on 2026-09-02. The five-item watchlist remains ISO 8686-1:2012; ISO 4309:2017 + ISO/CD 4309 Edition 6; ISO 12482:2014 + ISO/CD 12482 Edition 2. No D4 content correction is required. Method-role, V&V, common-mode, robustness-envelope, remaining-life and equipment-authority guards remain intact.

Next: `CRN-M-02 / D4 FREEZE / v1 — immutable D4 package, manifests, frozen index and tag contract`.

## CRN-M-02 D4 Freeze v1

Decision: `CONTENT FROZEN`.

- baseline: `a8079a9d8e9d4e4aeec361a10fd2dfbf93869210`;
- immutable snapshot: 85/85 accepted D4 artifacts SHA-matched;
- freeze bundle: 94 files;
- canonical frozen-index entry appended with exact hashes;
- immutable annotated tag contract: `crn-m-02-d4-v1`;
- Lesson 9/9 Parts / 45/45 blocks, Practice/Reasoning 10/10, Expected Result/Rubric 14/14 and BF 12/12 alignment remain accepted;
- unseen U1 + mandatory C1 transfer/update contract remains required;
- Source Freshness remains `PASS WITH WATCHLIST` with five non-blocking watch records;
- method-role, V&V/common-mode, robustness-envelope, remaining-life and equipment-authority guards remain locked;
- D1/D2/D3 frozen packages remain byte-immutable.

D4 must not be edited in place after this point. Any accepted D4 change requires a new review/freshness cycle and `FROZEN_v2`.

Next: `CRN-M-02 / FULL TOPIC FREEZE / v1 — aggregate D1-D4 immutability, topic manifest, topic tag contract and handoff`.

## CRN-M-02 Full Topic Freeze v1

Decision: `FULL TOPIC FROZEN`.

- baseline: `339395040df55a35d7b771e52fc86d8756ddc249`;
- D1/D2/D3/D4 are independently frozen as v1;
- depth frozen-file counts: D1=61, D2=61, D3=61, D4=94;
- 277 / 277 indexed depth members were re-hashed and matched;
- topic aggregate bundle: 11 immutable contract files under `CRN-M-02/FROZEN_v1`;
- topic-level `ARTIFACT_MANIFEST.json`, `DEPTH_LOCKS.json`, QA, handoff and review boundaries created;
- canonical frozen-index TOPIC entry appended with exact hashes;
- annotated immutable topic tag contract: `crn-m-02-v1`;
- D1–D4 source freshness watchlists remain non-blocking for v1;
- no D1–D4 frozen content was rewritten;
- `CQ-B001` remains in progress and continues through CRN-M-03…CRN-M-06.

Next: `CRN-M-03 / CONTENT KICKOFF / v1 — Крюковые подвески и захваты; define D1 scope/source gate and reuse the CRN-M-02 topic contract`.


## CRN-M-03 D1 Reader Experience Pass I v1

Decision: `PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`.

- seven reader findings are fixed without lowering the D1 evidence standard;
- a four-question working-memory card anchors object / force path / holding principle / claim status;
- the load-path algorithm now has one immediate worked representation without acceptance verdict;
- holding-principle and source-role routers reduce list memorization;
- eight novice errors are grouped as evidence-status promotion traps;
- STOP semantics are compressed into an epistemic/authority handoff card;
- a seven-question retrieval checkpoint prepares the learner for formal Practice;
- Red-Team guards, ISO 17096 grab/grab-bucket exclusion, numeric-design/inspection/holding-force locks and equipment-authority boundaries remain unchanged;
- CRN-M-01 / CRN-M-02 frozen topics and `status/FROZEN_INDEX.json` remain immutable.

Next: `CRN-M-03 / D1 PRACTICE / v1 — build beginner transfer cases for system boundary, load-path mapping, holding-principle classification, source-scope discipline and bounded STOP / evidence handoff`.

## CRN-M-03 D1 Expected Result v1

Status: `COMPLETE`.

- 10 observable ER-D1 dimensions cover object/interface boundary, branch/merge load path, latch/seating evidence discipline, holding-principle classification, observation/unknown status, identity/interchangeability, exact source applicability, history/current evidence separation, bounded STOP/handoff and unseen transfer;
- minimum evidence package contains 8 visible outputs;
- known A–J performance and Case J capstone are required background but insufficient for ER-D1-10 transfer;
- Verification must include at least one unseen U1 case combining at least two D1 trap families;
- correct bounded `STOP / REQUEST EVIDENCE` is a successful outcome when exact device/source/OEM evidence is missing;
- 8 strong BF candidates are carried forward; serial-path assumption and holding-principle collapse remain explicit severity-review candidates;
- numeric hook proof/discard/holding-force/acceptance and equipment-authority locks remain closed;
- CRN-M-01 / CRN-M-02 frozen topics and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-03 / D1 VERIFICATION RUBRIC / v1 — score observable beginner behaviors, decide non-compensable blocking failures, require unseen transfer and preserve bounded STOP / equipment-authority separation`


## CRN-M-03 D2 Technical Editorial Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- 10/10 technical-editorial findings corrected;
- FBD external-effect completeness, force+moment equilibrium, distributed-contact resultant assumptions and CG/orientation model boundaries hardened;
- articulation and multi-support load-share logic no longer infer reaction paths or static indeterminacy from component names / support count;
- holding-state factor lists are explicitly non-exhaustive causal categories, not inspection/acceptance checklists;
- translational dynamics is separated from rotational rigid-body dynamics;
- formal proof, inspection/acceptance and safe-use/planning remain distinct source/authority layers;
- Russian-first learner language is preserved and the glossary is expanded;
- no numeric design/proof/holding/inspection/operation authority is unlocked;
- CRN-M-01 / CRN-M-02 / CRN-M-03 D1 frozen prerequisites and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-03 / D2 RED TEAM / PASS I / v1 — adversarial challenge of body selection, force/moment maps, articulation/load-sharing assumptions, holding-state reasoning, dynamic-model status, source-role and equipment-authority traps before reader experience`.


## CRN-M-03 D2 Red Team Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

- 11/11 adversarial findings corrected;
- system-boundary laundering and invented reaction directions are blocked;
- visual contact/geometry cannot promote central resultants or centre-of-gravity claims;
- unloaded articulation behavior cannot prove loaded DOF state;
- symmetry cannot promote stiffness/engagement/load-share equality;
- equation count cannot substitute for contact/constraint-state closure;
- attachment mass plus one capacity number cannot create a universal payload calculation;
- D2 holding-factor coverage cannot become complete device verification;
- slow motion cannot become automatic quasistatic proof;
- formal proof / inspection / safe-use layers cannot promote one another automatically;
- Russian-first learner language and all numeric/proof/acceptance/equipment-authority locks remain preserved;
- CRN-M-01 / CRN-M-02 / CRN-M-03 D1 frozen prerequisites and `FROZEN_INDEX` remain immutable.

Next: `CRN-M-03 / D2 READER EXPERIENCE PASS / PASS I / v1 — improve Russian-first applied-mechanics flow, cognitive load and retrieval without weakening Red-Team body/force/moment/load-share/holding/dynamics/source/authority guards before practice`.
