# SkillsVault — Canonical Content Quality Roadmap

Version: 2.0  
Date: 2026-08-31  
Workstream: CONTENT QUALITY  
Status: ACTIVE  
Base canonical Vault: `Topchiy_Skills_Vault_v0.51 (2).zip`  
Base SHA-256: `711DCB4D3B9742A91C1CEE69EE3366295025ADA9B466DE29CFFBE0595FCC0512`

---

# 0. Mission

SkillsVault is not a document archive and not a collection of isolated lessons.

It is a personal learning and competency system whose content must let a learner:

1. choose an interesting discipline;
2. enter it from a level they can actually understand;
3. move through small, meaningful steps;
4. understand *why* things work, not only memorize facts;
5. apply knowledge in realistic engineering/professional tasks;
6. see a growing map of knowledge and competence;
7. unlock new knowledge because prerequisites have genuinely been learned;
8. combine knowledge from different branches into stronger professional judgement;
9. become increasingly capable of independent learning and problem solving.

The target user feeling is:

> I understand where I am, what I am learning now, why it matters, what I can do after it, and what this knowledge opens next.

The end goal is not “read the whole Vault”.

The end goal is improved thinking, judgement, practical capability, and the ability to learn increasingly complex material independently.

---

# 1. Learning doctrine

## 1.1 Understandability before sophistication

Complexity may increase only when the learner has enough prerequisite knowledge to understand it.

A text must not become harder merely to sound professional.

Core rule:

```text
meaning
  ↓
intuitive model
  ↓
correct terminology
  ↓
mechanism / causality
  ↓
quantitative model
  ↓
engineering application
  ↓
system-level reasoning
```

A technical term may be relied upon only when it is:

- ordinary/common enough for the target learner;
- already established by prerequisites; or
- explicitly explained where it first appears.

## 1.2 Simple language without loss of technical truth

Simple does not mean shallow.

Prefer explanations that let the learner mentally picture:

- what moves;
- what carries force/energy/information;
- what changes when a parameter changes;
- what limits the system;
- what can fail;
- what observations distinguish competing causes.

## 1.3 Motivation must appear early

Every Topic should quickly answer:

> Why would I want to know this?

The answer should connect the topic to a real capability, decision, failure, risk, diagnosis, design task, production process, or future branch of learning.

## 1.4 Build mental models, not vocabulary lists

A production lesson should help the learner explain the subject in their own words and reason about unfamiliar cases.

Definitions are necessary but insufficient.

## 1.5 From intuition to engineering depth

Where appropriate, content progresses through these layers:

1. intuitive understanding;
2. physical/technical mechanism;
3. professional terminology;
4. quantitative relationships, units, formulas and assumptions;
5. engineering application;
6. system-level and cross-disciplinary consequences.

Not every Topic needs every layer. No Topic should jump to a later layer without supporting the earlier ones needed for comprehension.

## 1.6 Practice is part of learning, not a formality

Practice should require use of the knowledge, for example:

- diagnosis from symptoms;
- comparison of hypotheses;
- calculation with stated assumptions;
- interpretation of measurements;
- drawing or reading a scheme;
- selecting the next justified check;
- analysing a production case;
- explaining why a plausible wrong answer is wrong;
- linking a failure to upstream/downstream systems.

Text recall alone is not sufficient practice.

## 1.7 Expected Result must be observable

Expected Result defines what a learner can demonstrably do after the Topic.

Avoid vague statements such as “understands brakes”.

Prefer observable capabilities such as:

- identify components;
- explain the causal chain;
- calculate a quantity under explicit assumptions;
- distinguish likely failure modes;
- select and justify checks;
- recognize critical errors;
- connect the Topic to related systems.

## 1.8 Knowledge is a graph

Every Topic belongs to a network:

```text
prerequisites
     ↓
current Topic
     ↓
newly usable concepts / competencies
     ↓
next Topics / adjacent disciplines / routes
```

The learner should gradually see this graph become their personal competency map.

## 1.9 Competence is more than “I read it”

Content must support progression from:

```text
recognize
→ explain
→ apply with guidance
→ apply independently
→ diagnose / decide
→ review / teach / integrate
```

The application may represent mastery separately, but the content must make those levels assessable.

## 1.10 Spiral learning

Important concepts should reappear at increasing depth across the Vault.

Examples include friction, energy, force, feedback, risk, reliability, uncertainty, measurement, verification and causality.

Re-use should strengthen the learner’s model rather than repeat the same paragraph.

## 1.11 Cross-disciplinary synthesis

High-value Topics should expose useful connections to other branches.

Example:

```text
mechanical brake
  ↔ friction / tribology
  ↔ electric drive
  ↔ control logic
  ↔ safety devices
  ↔ inspection
  ↔ reliability
  ↔ risk
```

The mature SkillsVault experience should make the user see a plant, machine, software system, or engineering problem as an interacting system rather than isolated subjects.

## 1.12 Curiosity is a navigation mechanism

A good Topic naturally creates useful next questions.

Those questions should map to real linked Topics where possible.

The system should support both:

- structured route progression; and
- curiosity-driven exploration with honest prerequisite guidance.

## 1.13 Teach ways of thinking

SkillsVault should deliberately develop reusable reasoning patterns, such as:

```text
What changed?
→ What mechanisms could cause it?
→ What observations distinguish the hypotheses?
→ What should be checked first and why?
→ What evidence would change the conclusion?
```

Other reusable patterns include:

- system boundary identification;
- assumptions and validity limits;
- failure-chain reasoning;
- risk-based prioritization;
- comparison of alternatives;
- uncertainty handling;
- evidence quality assessment.

## 1.14 The next step should feel achievable

Progress should be psychologically legible.

Avoid the feeling:

> 1,078 lessons remain.

Prefer:

> You now understand A. B is one step away. Completing C and D unlocks diagnosis of E.

Content structure should therefore support small completed steps, explicit prerequisites, useful milestones and visible unlocks.

## 1.15 Depth has no arbitrary length limit

Content may be long if length improves understanding.

The constraint is not brevity. The constraint is cognitive usefulness.

Long material should be structured into meaningful sections and steps rather than compressed into dense prose.

## 1.16 Source honesty and safety

Important claims must preserve provenance, especially:

- numerical limits;
- rejection criteria;
- safety requirements;
- inspection intervals;
- legal/normative requirements;
- OEM-specific behaviour;
- equipment-specific settings.

If a primary source is unavailable, the lesson must not fabricate precision.

Safety-critical uncertainty must be surfaced for review rather than silently resolved by plausible prose.

---


## 1.17 Progressive depth is mandatory across the Vault

Every learning direction must support progression from absolute beginner to extreme professional depth. The system must not remove difficult knowledge for accessibility; it must stage that knowledge so complexity is earned by prerequisites.

Two independent axes are canonical:

```text
CONTENT DEPTH                    PERSONAL / ROUTE CAPABILITY
D1 Basic — understand            R0 Zero
D2 Intermediate — apply          R1 Foundation
D3 Advanced — analyse            R2 Practitioner
D4 Expert reference              R3 Independent specialist
                                 R4 Advanced
                                 R5 Expert
                                 R6 LEGEND
```

A learner may, for example, have completed D3 content for a Topic but still lack R4-level demonstrated capability. Reading depth and mastery evidence are not interchangeable.

## 1.18 Zero-to-Legend Roadmaps

Every major Domain, Branch and meaningful Course/Route must eventually have a canonical roadmap from `R0 — Zero` to `R6 — LEGEND`.

Each roadmap defines:

- entry assumptions;
- competencies at each level;
- mandatory/optional Topics;
- required Topic depth D1–D4;
- prerequisites and cross-domain dependencies;
- Project Gates;
- evidence required for promotion;
- capstones;
- specializations;
- next unlocked knowledge.

`LEGEND` is a motivational name for demonstrated synthesis-level capability, not a claim of omniscience. Legend-level evidence must include transfer to unfamiliar cases, direct use of primary sources, cross-domain reasoning, technical review/teaching ability, and contribution of reusable knowledge.

Full architecture is defined in `SkillsVault_LEGEND_ROADMAP_SYSTEM_v1.md`.

# 2. Current baseline

Canonical Vault v0.51 contains:

- 1,079 Offline Lessons;
- 1,079 Practice Tasks;
- 1,079 Expected Results;
- 562 Source cards;
- 16 main learning domains;
- competency passports, routes, graph data and QA infrastructure.

Domain lesson counts:

| Domain | Lessons |
|---|---:|
| 01 Software Engineering | 99 |
| 02 Industrial Engineering PTM | 37 |
| 03 Electrical / Electronics | 21 |
| 04 Engineering Design | 21 |
| 05 English | 12 |
| 06 Meta Professional | 16 |
| 07 Industrial Automation / Drives | 70 |
| 08 Reliability / Maintenance Engineering | 86 |
| 09 Mechanical Engineering / Machine Design | 97 |
| 10 Industrial Safety / Risk Engineering | 81 |
| 11 Technical Procurement Lifecycle | 77 |
| 12 Software Engineering Extended | 88 |
| 13 DevOps / Infrastructure Engineering | 91 |
| 14 AI Engineering / LLM Systems | 85 |
| 15 System Design / Product / Technical Leadership | 83 |
| 16 Aviation / Aircraft Engineering | 115 |
| **Total** | **1,079** |

The existing structural QA proves strong completeness and linkage, but it does not yet prove production teaching quality.

The current content-hardening workstream therefore treats “valid file” and “good lesson” as separate standards.

---

# 3. Workstream invariants

CONTENT work may change educational content only under the parallel workstream contract.

It must not directly change:

- Flutter/application code;
- application schemas;
- personal state;
- production SQLite;
- stable canonical IDs;
- stable canonical paths unless an explicitly accepted migration permits it.

If pedagogy is blocked by the current schema, return `SCHEMA_CHANGE_REQUEST.md`.

Each batch is versioned and reviewable.

Default batch size: 5–15 coherent Topics.

---

# 4. Definition of Done for a hardened Topic

A Topic is content-hardened only when all applicable checks pass.

## 4.1 Motivation

- The learner understands why the Topic matters.
- Practical relevance appears early.

## 4.2 Prerequisite sufficiency

- Required prior concepts are explicit.
- Important unexplained terms are not silently assumed.
- Difficulty is appropriate for the declared prerequisite state.

## 4.3 Mental model

- The learner can form a causal/structural picture of the subject.
- Mechanisms are explained, not merely named.

## 4.4 Progressive depth

- Intuition precedes unnecessary abstraction.
- Terminology is introduced after or alongside meaning.
- Formulas state variables, units, assumptions and limits.
- Advanced detail appears only where it becomes useful and understandable.

## 4.5 Practical transfer

- The lesson connects knowledge to real use, diagnosis, design, inspection, analysis, communication or decision making.

## 4.6 Practice alignment

- Practice uses the taught reasoning.
- Practice is not merely text recall.
- Input data and assumptions are sufficient for the task.

## 4.7 Expected Result alignment

- Expected Result is observable/checkable.
- It identifies required reasoning/checkpoints.
- Critical errors/red flags are identified when relevant.

## 4.8 Misconceptions and failure modes

- Important novice misconceptions are addressed where relevant.
- Simplified models state their limits.
- Failure/diagnostic logic is included where the topic benefits from it.

## 4.9 Graph contribution

- Prerequisite links remain meaningful.
- Useful forward/adjacent knowledge is exposed where supported.
- Cross-disciplinary connections are added or documented when valuable.

## 4.10 Competency contribution

The Topic must make a defensible contribution to at least one capability such as:

- explain;
- recognize;
- calculate;
- inspect;
- diagnose;
- compare;
- decide;
- design;
- verify;
- communicate;
- integrate.

## 4.11 Sources

- Important claims are traceable.
- Numeric/safety/OEM/normative claims are not invented.
- Missing source support is explicitly reported.

## 4.12 Language quality

- Russian-first natural prose where Russian is the teaching language.
- Accidental RU/EN mixing is removed.
- Terms, units and notation are consistent.

Final question:

> After this Topic, is the learner measurably more capable than before it?

If the answer is not convincingly yes, the Topic is not done.

---

# 5. Batch scorecard

Every content batch should report the following dimensions for each Topic:

| Dimension | Result |
|---|---|
| Motivation / relevance | PASS / REVIEW |
| Prerequisite sufficiency | PASS / REVIEW |
| Understandability | PASS / REVIEW |
| Mental model | PASS / REVIEW |
| Mechanism / causality | PASS / N/A / REVIEW |
| Quantitative model quality | PASS / N/A / REVIEW |
| Practice quality | PASS / REVIEW |
| Expected Result quality | PASS / REVIEW |
| Misconceptions / failure logic | PASS / N/A / REVIEW |
| Graph / next-step value | PASS / REVIEW |
| Competency contribution | PASS / REVIEW |
| Source traceability | PASS / REVIEW |
| Safety-critical review | PASS / N/A / HUMAN REVIEW |
| Language / terminology | PASS / REVIEW |

A batch cannot be considered fully closed while hidden uncertainty remains.

Unresolved issues go to `REVIEW_REQUIRED.md`.

---

# 6. Canonical CONTENT Roadmap

## CQ0 — Learning System Constitution — CLOSED ✅

Purpose: define what “good learning content” means before rewriting at scale.

Deliverables:

- learning mission and target learner experience;
- progressive-complexity doctrine;
- mental-model-first teaching principle;
- practice and Expected Result standards;
- competency and knowledge-graph principles;
- spiral learning and cross-domain synthesis principles;
- source/safety honesty rules;
- Definition of Done and scorecard.

Exit condition:

```text
CQ0_LEARNING_CONSTITUTION=PASS
```

Status: **CLOSED** by this Roadmap v1.

---

## CQ1 — Pilot Calibration: Crane Mechanics — ACTIVE 🔥

Purpose: turn the doctrine into real production exemplars before scaling.

Pilot batch:

```text
CQ-B001
02_Industrial_Engineering_PTM / Crane_Mechanics

CRN-M-01 — Канаты и цепи
CRN-M-02 — Барабаны, блоки, полиспасты
CRN-M-03 — Крюковые подвески и захваты
CRN-M-04 — Редукторы и муфты
CRN-M-05 — Тормоза
CRN-M-06 — Колёса и подкрановые пути
```

Goals:

- prove appropriate lesson depth;
- calibrate “simple but technically deep” Russian prose;
- prove prerequisite-aware complexity progression;
- prove Practice ↔ Expected Result alignment;
- test formula/model qualification;
- test failure/diagnostic reasoning;
- test source discipline on safety-sensitive engineering material;
- identify schema limitations before mass rollout.

Required outputs:

- `SkillsVault_CONTENT_PATCH_CQ-B001.zip`;
- per-Topic QA report;
- review-required list;
- explicit source limitations;
- lessons learned for standard v2.

Exit condition:

```text
CQ1_PILOT_CALIBRATION=PASS
```

---

## CQ2 — Calibration Freeze / Authoring Standard v2

Purpose: prevent 1,000 Topics from being rewritten against an immature template.

After CQ-B001:

1. review what was too shallow;
2. review what was unnecessarily long;
3. review prerequisite gaps;
4. review terminology burden;
5. review whether practice genuinely measures capability;
6. review whether Expected Results are assessable;
7. review source and safety uncertainty;
8. capture reusable lesson patterns without forcing a rigid template.

Deliverables:

- `LESSON_QUALITY_STANDARD_v2`;
- revised batch QA rubric;
- reusable authoring patterns;
- anti-pattern list;
- calibrated risk classification;
- calibrated human-review rules.

Exit condition:

```text
CQ2_AUTHORING_STANDARD_V2=PASS
```

---

## CQ3 — Vault-wide Learning Graph & Priority Audit

Purpose: decide rewriting order from learning value, dependency leverage and risk rather than file order.

For all 1,079 Topics, classify at least:

- domain / branch;
- prerequisite depth;
- likely learner entry level;
- critical prerequisite concepts;
- forward unlocks;
- cross-domain leverage;
- professional relevance;
- safety/technical risk;
- source confidence;
- current lesson quality;
- current practice quality;
- current Expected Result quality;
- likely human-review requirement.

Priority should favor Topics that are:

1. prerequisites for many other Topics;
2. central to real engineering work;
3. safety/reliability significant;
4. currently weak but high leverage;
5. foundational for several domains;
6. part of important Learning Routes / Competency Passports.

Deliverables:

- content quality inventory;
- dependency/priority map;
- batch queue `CQ-B002...`;
- human-review queue;
- source-gap queue;
- schema-change queue if needed.

Exit condition:

```text
CQ3_VAULT_PRIORITY_AUDIT=PASS
```

---

## CQ4 — Industrial Engineering Core Hardening

Purpose: build the strongest practical engineering nucleus first.

Primary domains:

```text
02 Industrial Engineering PTM                 37
03 Electrical / Electronics                   21
04 Engineering Design                         21
07 Industrial Automation / Drives             70
08 Reliability / Maintenance Engineering      86
09 Mechanical Engineering / Machine Design    97
10 Industrial Safety / Risk Engineering       81
11 Technical Procurement Lifecycle            77
                                             ---
Industrial engineering nucleus                490 Topics
```

`05 English` and `06 Meta Professional` are cross-cutting support domains and may be improved in parallel when they unlock or strengthen these branches.

Internal ordering is dependency-driven rather than numeric-domain order.

Recommended emphasis:

### CQ4.1 PTM practical spine

Complete the remaining PTM branches after the Crane Mechanics pilot:

- PTM Fundamentals;
- Crane Electrical Drives;
- Safety Devices;
- Inspection / Maintenance;
- Industrial Safety / Risk;
- Technical Documentation;
- Technical Tenders.

### CQ4.2 Engineering foundations

Strengthen foundational mechanics, mathematics/physics, electrical fundamentals, sensors, machine elements and design reasoning that unlock later branches.

### CQ4.3 Automation and drives

Build a learner path from signals/actuators and drive fundamentals toward PLC, interlocks, networks, diagnostics and commissioning.

### CQ4.4 Reliability and maintenance

Connect condition monitoring, vibration, lubrication, RCA, FMEA/RCM, work management and shutdown planning into one reasoning system.

### CQ4.5 Safety and risk

Harden hazard identification, energy isolation, lifting, machine/electrical safety, incident investigation, barriers and change management with strict source discipline.

### CQ4.6 Technical procurement lifecycle

Teach requirements → specification → equivalence/deviation → bid analysis → supplier risk → FAT/SAT → commissioning → lifecycle/TCO as a connected engineering workflow.

Exit condition:

```text
CQ4_INDUSTRIAL_CORE=PASS
```

---

## CQ5 — Digital Engineering Core Hardening

Purpose: harden the software/infrastructure knowledge system with the same pedagogy rather than treating technical documentation as lessons.

Primary domains:

```text
01 Software Engineering                       99
12 Software Engineering Extended              88
13 DevOps / Infrastructure Engineering        91
14 AI Engineering / LLM Systems               85
15 System Design / Product / Tech Leadership  83
                                             ---
Digital engineering nucleus                  446 Topics
```

Focus:

- conceptual prerequisites before framework jargon;
- runnable/observable examples where appropriate;
- failure and debugging logic;
- system boundaries and trade-offs;
- security/privacy/safety qualification;
- architecture decisions with explicit constraints;
- AI claims separated from hype and tied to evaluation/evidence;
- progressive routes from fundamentals to production systems.

Exit condition:

```text
CQ5_DIGITAL_CORE=PASS
```

---

## CQ6 — Aviation Engineering Hardening

Purpose: harden the 115-topic aviation domain with stricter prerequisite and safety discipline.

Primary domain:

```text
16 Aviation / Aircraft Engineering — 115 Topics
```

Special requirements:

- mathematics/physics prerequisites must be explicit;
- simplified aerodynamic/flight models must state validity limits;
- certification/safety statements require strong provenance;
- maintenance and reliability content must connect to the corresponding general engineering concepts;
- avoid pretending aircraft-family-specific behaviour is universal.

Exit condition:

```text
CQ6_AVIATION=PASS
```

---

## CQ7 — Cross-cutting Domains + Graph Synthesis

Purpose: make the Vault behave like one learning system rather than 16 folders.

Scope includes:

- `05 English`;
- `06 Meta Professional`;
- cross-domain prerequisites;
- duplicate/overlapping concepts;
- forward unlocks;
- Learning Routes;
- Competency Passports;
- graph coherence.

Goals:

### Shared concepts

Identify concepts that recur across domains and make their progression coherent, for example:

- force / torque / power / energy;
- friction / wear / lubrication;
- measurement / uncertainty;
- feedback / control;
- reliability / failure / redundancy;
- risk / barriers / evidence;
- requirements / verification / validation;
- systems / interfaces / trade-offs.

### Route coherence

A route should not require a learner to understand concepts that appear only later without explanation.

### Unlock coherence

Completing prerequisites should open meaningful next learning options rather than merely satisfy metadata.

### Competency coherence

Competency Passports should be supported by Topics and practices capable of demonstrating the claimed abilities.

Exit condition:

```text
CQ7_GRAPH_SYNTHESIS=PASS
```

---

## CQ8 — Vault-wide Red Team / Pedagogical QA

Purpose: challenge the hardened content before declaring it production quality.

Run automated and selective human review for:

- unexplained terminology;
- accidental language mixing;
- unsupported absolute claims;
- missing formula assumptions;
- inconsistent units/notation;
- source gaps;
- equipment-specific claims presented universally;
- safety-critical ambiguity;
- Practice tasks answerable by copying text;
- Expected Results that are not assessable;
- broken prerequisite chains;
- abrupt difficulty jumps;
- duplicated shallow explanations;
- Topics that do not create a meaningful capability;
- cross-domain contradictions;
- misleading oversimplification.

Use adversarial learner questions such as:

- “How would a beginner misunderstand this?”
- “What prerequisite is secretly assumed?”
- “Can I solve the Practice without understanding the lesson?”
- “Does this number actually come from a source?”
- “Would this advice be unsafe on another equipment design?”
- “What changes if the simplified assumption fails?”

Exit condition:

```text
CQ8_PEDAGOGICAL_RED_TEAM=PASS
```

---

## CQ9 — Content Golden Set & Production Gate

Purpose: freeze evidence that the Vault has reached production teaching quality.

Golden set should include representative Topics from:

- beginner fundamentals;
- quantitative engineering;
- mechanical systems;
- electrical/automation;
- reliability/diagnostics;
- safety/risk;
- procurement/decision making;
- software/infrastructure;
- AI/system design;
- aviation;
- cross-domain routes.

Final gate must prove:

- all 1,079 Topics have been dispositioned (`HARDENED`, `ACCEPTED_AS_IS`, or explicit unresolved review state);
- no silent safety-critical uncertainty;
- stable canonical IDs/paths preserved unless approved migrations exist;
- Lessons ↔ Practice ↔ Expected Results align;
- source traceability meets the risk-appropriate threshold;
- prerequisite graph does not contain known critical learning gaps;
- complexity progression is defensible;
- competency mappings are supported by observable learning outcomes;
- golden samples pass human/engineering review;
- accumulated content patches can be reproduced and audited.

Exit markers:

```text
CQ9_CONTENT_GOLDEN_SET=PASS
CONTENT_QUALITY_PEDAGOGICAL_GATE=PASS
```

This final gate remains mandatory before A11 Production Release.

---

# 7. Batch execution loop

Batch is only a packaging/integration unit. The unit of deep authoring is **one Topic**.

Each hardened Topic follows a staged workflow:

```text
source state
→ capability definition
→ prerequisite audit
→ source audit
→ mental model
→ D1/D2/D3/D4 lesson architecture
→ write + review D1
→ write + review D2
→ write + review D3
→ build/curate D4 reference layer
→ layered practice
→ evidence / Expected Result
→ consistency audit
→ graph + roadmap audit
→ language edit
→ red team
→ manual learning review
→ Topic freeze
```

Only after each Topic has been deeply frozen are several related Topics packaged as a content batch. A later batch may improve an earlier Topic only by explicitly declaring supersession.

---

# 8. Human review policy

Human review effort should be concentrated where error cost is highest.

Priority classes:

## SAFETY_CRITICAL

Examples: lifting safety, isolation, inspection rejection criteria, hazardous energy, operational limits, aviation safety/certification.

Requires explicit human/engineering review before final production disposition.

## HIGH

Complex engineering judgement, numeric design/maintenance criteria, failure diagnosis with significant consequences, OEM-specific behaviour.

Selective subject-matter review strongly preferred.

## MEDIUM

General technical explanation with meaningful formulas/mechanisms but low immediate hazard.

Source-backed AI/editorial review may be sufficient with sampled human audit.

## LOW

General conceptual, communication, learning-system or low-risk explanatory material.

Standard QA plus sampling is sufficient.

---

# 9. What success looks like

SkillsVault succeeds when a learner can:

- start without already being an expert;
- understand each next step because prerequisites were earned;
- explain ideas in their own words;
- use knowledge rather than merely recognize text;
- see connections between disciplines;
- diagnose and reason more systematically;
- understand the limits of simplified models;
- know when a claim depends on a standard/OEM/site procedure;
- see their knowledge and competency map grow;
- become curious about reachable next topics;
- gradually require less hand-holding to learn advanced material.

The ultimate content metric is not file count, word count, or completion percentage.

It is:

> Does the system reliably turn time spent learning into better understanding, stronger professional capability, and access to the next level of knowledge?

---

# 10. Current CONTENT position

```text
CQ0 Learning System Constitution              ✅ CLOSED
CQ1 Pilot: Crane Mechanics / CQ-B001           🔥 ACTIVE
CQ2 Layering Calibration / Standard v2         ⏳
CQ3 Zero-to-Legend Roadmaps + Graph Audit      ⏳
CQ4 Industrial Engineering Core                ⏳
CQ5 Digital Engineering Core                   ⏳
CQ6 Aviation Engineering                       ⏳
CQ7 Cross-domain Graph Synthesis               ⏳
CQ8 Pedagogical Red Team                       ⏳
CQ9 Content Golden Set / Final Gate            ⏳
```

Immediate next action:

```text
CQ-B001 / CRN-M-01
Stage 5 must be revised for D1–D4 layered architecture
→ then author only the first approved layer
→ review before continuing
```

CQ2 must freeze both the Deep Content Workflow and the D1–D4 / R0–R6 model before mass authoring.

CQ3 must produce canonical Zero-to-Legend Roadmaps for all 16 current major learning domains and then progressively for their 138 first-level branches.
