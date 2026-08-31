# SkillsVault App — Canonical Roadmap

Updated: 2026-08-31
Revision: v10 — Zero-to-Legend progressive-depth learning architecture integrated

## Product principles

SkillsVault is an offline-first learning and competency system built on top of a portable canonical Skills Vault.

Core architecture:

```text
Canonical Library Content
        +
Separate Personal State
        +
Evidence / Assessment Provenance
        =
Learning + Competency System
```

Non-negotiable principles:

- Canonical library content remains portable and replaceable.
- Personal mastery/evidence state is stored separately and must survive library updates.
- **Personal state is file-first:** the personal file vault is the source of truth; personal SQLite is a rebuildable derived index/cache for fast application queries.
- Assessments, evidence metadata, goals, notes, and history should remain portable and directly modifiable outside the app through documented file formats.
- External/manual edits to the personal file vault must be validated and re-indexed deterministically instead of requiring application-specific mutation code.
- UI does not depend directly on SQLite, filesystem, archive/file picker, or other infrastructure.
- Assertions about competence should preserve provenance: who assessed, how, when, and on what evidence.
- A competence level and the strength of its verification are separate dimensions.
- Important evidence may be archived locally with integrity metadata instead of relying only on fragile external paths/URLs.
- **Content-defined platform:** courses, roadmaps, learning routes, competency targets, and most educational structure should live in portable vault data rather than being hardcoded into the application.
- SkillsVault should be able to open/import independently authored vaults without requiring a new app build.
- **AI is provider-agnostic and optional:** API integration is a convenience layer, never a requirement for core learning workflows.
- **Manual Prompt Fallback is mandatory:** every AI-assisted action that can work through an API must also be able to generate a copyable/exportable prompt/context package for use in ChatGPT, Claude, Gemini, or another external model.
- **AI Authoring Contract:** an external AI with zero prior knowledge of the user or project must be able to receive a versioned SkillsVault Authoring Kit, generate a valid portable course/vault ZIP, and have that package accepted by SkillsVault without an application rebuild.
- SkillsVault remains useful offline; AI is an optional capability, not a hard dependency.
- **Progressive-complexity learning:** content difficulty should increase because prerequisites have been learned, not because prose becomes needlessly professional or compressed.
- **Knowledge-to-competency graph:** Topics should contribute to an understandable graph of prerequisites, unlocks, cross-domain relationships, and observable capabilities rather than behaving as isolated documents.
- **Mental-model-first pedagogy:** where practical, teaching should move from intuitive meaning to mechanism, terminology, quantitative model, application, and system-level reasoning.
- **Practice must demonstrate capability:** Practice and Expected Result should test reasoning/application and make learning outcomes observable rather than rewarding text recall.
- **Two-axis learning model:** content depth (`D1 Basic → D4 Expert Reference`) and personal/route capability (`R0 Zero → R6 Legend`) are separate dimensions and must not be conflated.
- **Zero-to-Legend Roadmaps:** every major Domain, Branch and meaningful Course/Route should be able to guide a learner from no assumed domain knowledge to synthesis-level expert capability, with prerequisites, gates and evidence made explicit.
- **No arbitrary depth ceiling:** advanced theory, primary standards, OEM material, edge cases and cross-domain synthesis are retained and staged rather than removed for simplicity.

---

## A0 — Product / Architecture Proof — CLOSED ✅

Flutter + SQLite + real canonical v0.51 vertical slice proved.

Real Lesson / Practice / Passport path demonstrated.

---

## A1 — Importer Core — CLOSED ✅

- **A1.0 Production Scaffold — CLOSED**
- **A1.1 ZIP / Folder Package Intake — CLOSED**
- **A1.2 Security + Integrity — CLOSED**
- **A1.3 Canonical Parser / Normalized Model — CLOSED**
- **A1.4 Transactional Production SQLite — CLOSED**
- **A1.5 Durable Diagnostics + Failure Taxonomy — CLOSED**
- **A1.6 Update / Re-import Policy — CLOSED**
- **A1.7 Real-vault Golden Integration + A1 Importer Core Gate — CLOSED**

Final proof:

```text
A1_7_GATE=PASS
A1_IMPORTER_CORE_GATE=PASS
```

A1 protects:

- deterministic ZIP/folder intake;
- canonical manifest/fingerprint verification;
- normalized parsing;
- transactional SQLite replacement;
- rollback safety;
- durable diagnostics;
- install/update/no-op/downgrade/conflict policy;
- real-vault golden regression.

---

## A2 — Read-only Learning MVP — CLOSED ✅

Goal: turn the imported canonical library into a genuinely usable offline learning application.

Target navigation:

```text
Home
  ↓
Domain
  ↓
Branch / Learning Route
  ↓
Topic
  ↓
Lesson / Practice / Expected Result
  ↓
Competency Passport / Sources
```

UX target: a useful Lesson should normally be reachable from Home in about three meaningful actions.

### A2.0 — Read Model + Navigation Scaffold — CLOSED ✅

- production SQLite read repository;
- application read queries;
- Home / Catalog / Import navigation;
- real canonical counts visible from installed v0.51;
- A1 write-side -> A2 read-side golden regression.

### A2.1 — Home / Domains / Role Paths — CLOSED ✅

- domains are real navigation targets;
- domain branch summaries;
- Learning Routes projected as role paths;
- real-vault domain drill-down;
- PTM runtime contract proved:
  - 37 topics;
  - 8 branches;
  - 3 role paths;
  - 0 local Project Gates.

### A2.2 — Routes + Topics — CLOSED ✅

Closed implementation:

- branch -> ordered topic list;
- Learning Route -> ordered spine;
- checkpoints / final Gate representation;
- Topic metadata screen;
- prerequisite representation;
- real-vault PTM golden assertions.

### A2.3 — Lesson + Practice + Expected Result — CLOSED ✅

- render actual Lesson content;
- render Practice Task;
- render Expected Result;
- readable typography;
- remove raw frontmatter from user-facing screens;
- navigate Topic <-> Lesson <-> Practice;
- preserve canonical source identity.

### A2.4 — Competency Passports — CLOSED ✅

- readable Competency Passport UI;
- passport -> related topics / routes / stages;
- stage/gate representation;
- passport becomes a target that later personal mastery can evaluate against.

### A2.5 — Sources + Cross-links — CLOSED ✅

- source details;
- resolved wikilinks / internal references;
- related Topics / Lessons / Passports;
- no raw unresolved canonical markup in normal UX;
- external URLs are accepted only for absolute `http://` / `https://` schemes;
- external URLs always require an explicit confirmation step before leaving SkillsVault;
- confirmation UX offers:
  - `Копировать`;
  - `Открыть в браузере`;
  - `Закрыть`;
- `Открыть в браузере` delegates the URL to the operating-system default browser;
- SkillsVault must never launch an external browser merely because a page/source was opened.

A2.5 runtime acceptance is closed. The explicit default-browser action is carried into A2.6 as the finalized external-link UX.

### A2.6 — Search + Filtering — CLOSED ✅

Goal: make the canonical library practical at 1000+ Topics without forcing manual catalog traversal.

Global search covers, where available:

- Topic;
- Source;
- Learning Route;
- Competency Passport.

Text search should match stable IDs and primary human-readable metadata such as:

- title;
- topic/source/route/passport ID;
- organization / source metadata;
- route goal;
- domain / branch metadata.

Relationship and structural filters should include, where the canonical schema supports them:

- domain;
- branch;
- lesson level;
- Project Gate;
- presence of Competency Passport;
- Route ID;
- Passport ID;
- Source ID;
- direct prerequisite relationship.

Search requirements:

- production SQLite remains read-only;
- deterministic ranking/order for a fixed snapshot and query;
- result count is bounded and truncation is visible;
- empty unfiltered search must not dump the entire canonical database;
- a search result opens the existing Topic / Source / Route / Passport screen;
- Back from a search result returns to the Search surface after internal cross-link history is unwound;
- existing A2.5 Sources/cross-links remain functional;
- external Source URLs retain the confirmation + copy/default-browser contract above.

A2.6 golden acceptance should prove at least:

```text
CRN-M-04 search -> Topic
ISO 10972 search -> SRC-000383
Source ID SRC-000383 + Topic filter -> 7 linked Topics
Route ID ROUTE-RELIABILITY + REL-FND-01 -> Topic
Passport ID CP:REL-FND-01 -> Passport
Prerequisite-for CRN-M-04 -> CRN-M-03
```

Exit marker:

```text
A2_6_GATE=PASS
```

### A2.7 — Read-only MVP Golden Gate — CLOSED ✅

Must prove on real canonical Vault:

- Home -> Domain -> Branch/Route -> Topic -> Lesson;
- Practice / Expected Result reachable;
- Passport reachable;
- Sources/cross-links resolved;
- search returns canonical content;
- A1 importer regressions remain green;
- Windows build green;
- Android adaptation contract prepared/validated as toolchain permits.

Exit marker:

```text
A2_READ_ONLY_MVP_GATE=PASS
```

Final proof on 2026-08-30:

```text
A2_7_REAL_VAULT_MVP_GOLDEN_EXECUTED=PASS
WINDOWS_BUILD_EXIT=0
ANDROID_ADAPTATION_CONTRACT=PASS
ANDROID_BUILD_STATUS=SKIPPED_TOOLCHAIN_INCOMPLETE
A2_READ_ONLY_MVP_GATE=PASS
```

---

# A3 — Personal Mastery & Evidence — ACTIVE 🔥

Goal: make SkillsVault remember not only *what knowledge exists*, but *what the user can actually do, how strongly it is verified, and what evidence supports the claim*.

Architectural rule for A3:

```text
PERSONAL FILE VAULT = SOURCE OF TRUTH
PERSONAL SQLITE     = DERIVED / REBUILDABLE INDEX
```

Personal state is separate from canonical library content and survives library replacement/update.

## A3.0 — Personal State Storage — ACTIVE 🔥

Personal storage is deliberately split into two layers:

```text
personal file vault       <- source of truth
        ↓ validate / parse / index
personal SQLite           <- rebuildable application index/cache
```

The file vault stores portable source records for:

- mastery/assessment source records;
- assessment history;
- notes;
- route progress;
- review state;
- personal goals;
- evidence metadata and relationships;
- archived evidence manifests/integrity metadata.

The personal SQLite layer exists for fast queries, filtering, projections, readiness calculations, and UI performance. It must be possible to delete and rebuild it from the personal file vault without losing user-owned state.

Hard requirement:

```text
Canonical library update/re-import
        MUST NOT destroy
Personal mastery / evidence state
```

## A3.1 — Mastery Model

Candidate canonical mastery scale:

```text
0 — not assessed / not familiar
1 — aware / recognizes concepts
2 — basic understanding
3 — can apply with guidance
4 — can apply independently
5 — can explain, review, or teach others
```

The scale must support partial/unknown state and future recalibration.

## A3.2 — Assessment Provenance

One competency/topic may have multiple independent assessments.

Assessor types:

```text
SELF
AI
TEST
PRACTICE
PEER
MENTOR
SUPERVISOR
EXPERT
EXTERNAL
SYSTEM
```

Assessor identity may be stored as:

```text
Named:
  "Ivan Ivanov, Chief Mechanic"

Role-only:
  "Shift Supervisor"

Abstract:
  "Authoritative external expert"

Anonymous / omitted:
  null
```

Assessment record should preserve:

- topic / competency;
- claimed level;
- assessor type;
- assessor label;
- assessment method;
- confidence;
- comment;
- timestamp;
- revalidation/expiry state;
- attached evidence.

## A3.3 — Evidence Library

Evidence types should support at least:

```text
git_commit
git_repository
pull_request
file
screenshot
image
document
test_result
practice_result
external_url
note
```

Examples:

- Git repository/commit/PR;
- CI test result;
- source file or produced artifact;
- calculation spreadsheet;
- report/document;
- screenshot/photo;
- completed practice task;
- external authoritative link;
- expert confirmation note.

Evidence relationship is many-to-many:

```text
Evidence
   ↕
Assessments
   ↕
Topics / Competencies / Passports
```

One project may support many competencies.
One competency may have many independent pieces of evidence.

## A3.4 — Evidence Storage + Integrity

Two supported storage modes:

### REFERENCE

Store a reference to an external/local resource:

```text
local path
external URL
Git URL / commit SHA
```

### ARCHIVED

Copy important evidence into the personal SkillsVault evidence store.

Suggested structure:

```text
SkillsVault/
  personal/
    evidence/
      YYYY/
        <topic-or-assessment>/
          artifact.ext
          metadata.json
```

For files, preserve when possible:

- SHA-256;
- original location;
- archived location;
- captured timestamp;
- MIME/type;
- file size;
- Git metadata where applicable.

Important archived evidence should be content-integrity verifiable.

Suggested personal source layout:

```text
SkillsVault/
  personal/
    manifest.json
    assessments/
      <topic-or-competency>.json
    evidence/
      YYYY/
        <artifact files>
        <artifact metadata>
    goals/
      <goal>.json
    notes/
      <topic-or-route>.md
    history/
      <assessment/evidence history>
```

The exact schema may evolve, but it must remain documented, portable, diffable, and safe to edit with normal tools.

A future personal importer/indexer must support this workflow:

```text
files changed externally
        ↓
schema + integrity validation
        ↓
re-index
        ↓
personal SQLite updated
        ↓
UI / roadmap / mindmap updated
```

The application should never require personal SQLite to be the only copy of the user's assessments or evidence relationships.

## A3.5 — Multi-assessment / Conflict Model

Do not collapse all assessments into a naive arithmetic mean.

Example:

```text
Self:        5/5
AI + test:   2/5
Mentor:      3/5
```

This is useful disagreement, not malformed data.

SkillsVault should expose:

- current mastery estimate;
- independent assessment history;
- disagreement / calibration warning;
- evidence quality;
- number/diversity of corroborating sources;
- recommendation for re-check when uncertainty is high.

## A3.6 — Mastery vs Verification

These are separate dimensions.

Example:

```text
Mastery:       5/5
Verification:  LOW
```

means "strong self-claimed competence with little evidence."

Example:

```text
Mastery:       3/5
Verification:  VERY HIGH
```

means "moderate competence strongly supported by test/practice/expert evidence."

Verification strength should be derived primarily from evidence quality, assessment method, recency, and independent corroboration — not from a simplistic fixed authority multiplier.

## A3.7 — Personal Notes + History

- notes per topic/route/passport;
- assessment timeline;
- evidence timeline;
- mastery changes over time;
- who/what changed the assessment;
- last verification date;
- recommended revalidation date.

## A3.8 — Personal Mastery & Evidence Golden Gate

Must prove:

- library update does not erase personal state;
- deleting the personal SQLite index and rebuilding from files reproduces the same assessments/evidence relationships;
- a valid external file edit is detected, validated, and deterministically re-indexed;
- invalid/corrupt personal files are rejected or quarantined without destroying previously valid personal state;
- evidence survives restart;
- archived evidence hash verifies;
- broken REFERENCE evidence is reported but does not corrupt personal state;
- multiple assessments coexist;
- conflict/disagreement is represented;
- current mastery projection is deterministic;
- evidence -> assessment -> competency relationships remain intact.

Exit marker:

```text
A3_PERSONAL_MASTERY_EVIDENCE_GATE=PASS
```

---

# A4 — Competency Intelligence & Personal Roadmap

Goal: convert the graph of canonical knowledge plus personal mastery/evidence into actionable development guidance.

## A4.0 — Competency Gap Engine

Determine:

- what is already mastered;
- what is weak;
- what is not assessed;
- what is weakly verified;
- which prerequisites block a target;
- which gaps have the highest leverage.

## A4.1 — Goal / Target Model

Allow user to choose targets such as:

- Learning Route;
- Competency Passport;
- role;
- domain/branch;
- specific Topic/Gate.

Core interaction:

```text
"I want to reach X"
        ↓
compare target requirements
with current mastery/evidence
        ↓
generate gap set
```

## A4.2 — Personalized Next Steps

Build a prioritized sequence of useful next actions.

Reasoning should account for:

- prerequisite graph;
- current mastery;
- verification strength;
- route order;
- missing evidence;
- assessment uncertainty;
- target relevance.

Example output:

```text
Next:
1. Raise Failure RCA from 1 -> 3
2. Verify Condition Monitoring with practice
3. Re-assess Vibration Basics
4. Unlock next Reliability checkpoint
```

Every recommendation should explain *why* it is next.

## A4.3 — Role / Route Readiness

Produce readiness projections such as:

```text
Reliability Engineer
Readiness: 67%

Strong:
✓ Mechanical Maintenance
✓ Inspection Basics

Gaps:
! Failure RCA
! Condition Monitoring

Weakly verified:
? Reliability Metrics
```

Readiness must distinguish missing mastery from missing verification.

## A4.4 — Competency Mindmap / Graph

Interactive graph/mindmap using canonical dependencies and personal state.

Desired states:

- mastered + strongly verified;
- partially mastered;
- mastered but weakly verified;
- gap;
- not assessed;
- blocked by prerequisite.

Useful filters:

- only gaps;
- prerequisites only;
- route to target;
- next steps;
- verified competencies;
- weakly verified competencies.

Clicking a node opens the actual Topic/competency.

## A4.5 — Roadmap / Heatmap Views

Generate:

- personal learning roadmap;
- domain heatmap;
- route progress;
- target-role gap map;
- "minimum useful path" from current state to target.

## A4.6 — Reports / Export

User-facing export formats should include at least:

### XLSX

Suggested sheets:

```text
01_Summary
02_Competencies
03_Routes
04_Gaps
05_Next_Steps
06_Evidence
07_Assessment_History
```

### PDF / printable report

Suitable for a user, mentor, supervisor, or portfolio review.

### Graph / portable data

Export mindmap/roadmap data in a machine-readable form where practical.

Reports should preserve provenance and clearly distinguish:

- self assessment;
- AI assessment;
- expert assessment;
- test/practice evidence;
- verification strength.

## A4.7 — Competency Intelligence Golden Gate

Must prove deterministic results for a fixed canonical Vault + fixed personal-state fixture:

- same gaps;
- same blockers;
- same next-step ordering;
- same readiness calculations;
- same mindmap state categories;
- same export values.

Exit marker:

```text
A4_COMPETENCY_INTELLIGENCE_GATE=PASS
```

---

## A5 — Retention

- review queue;
- spaced/recovery behavior;
- weak topics;
- overdue review;
- revalidation of stale competence/evidence;
- skill retention over time.

---

## A6 — Gamification — OPTIONAL

Only after learning mechanics are strong.

Possible:

- streaks;
- achievements;
- visual progress.

Never substitute fake XP for competence or evidence.

---

## A7 — Vault / Course / Roadmap Authoring

Goal: make SkillsVault a creator/editor for complete learning systems, not only a reader of one fixed knowledge base.

## A7.0 — Create / Manage Vaults

Allow creation of independent user-authored knowledge bases.

A vault may define its own:

- title / identity;
- domains;
- branches;
- topics;
- sources;
- routes;
- courses;
- competency passports;
- metadata;
- version / manifest.

Creating a new knowledge base must not require changing application code.

## A7.1 — Canonical Content Authoring

Create/edit canonical-style content from the application:

- Topic;
- Lesson;
- Practice;
- Expected Result;
- Passport;
- Sources;
- prerequisite links;
- related-topic links.

## A7.2 — Course Authoring

A Course is data, not hardcoded UI.

Candidate structure:

```text
Course
├─ title
├─ description
├─ target audience
├─ learning objectives
├─ topics[]
├─ practices[]
├─ routes[]
├─ checkpoints[]
├─ final gate
└─ competency targets[]
```

One Topic may participate in multiple Courses without duplicating the underlying lesson content.

## A7.3 — Roadmap / Learning Route Authoring

Allow authors to build reusable learning graphs with:

- ordered spine;
- optional branches;
- prerequisites;
- checkpoints;
- gates;
- target competencies;
- recommended order;
- required mastery / verification thresholds where appropriate.

Roadmaps must be stored as portable vault data and rendered generically by the application.

## A7.4 — Templates / Generators

Support creation from reusable templates, for example:

- blank vault;
- role-based learning path;
- exam preparation;
- technical equipment curriculum;
- software-engineering roadmap;
- onboarding course.

Templates generate ordinary portable vault data, not app-specific hidden state.

## A7.5 — AI-assisted Authoring

Optional workflow:

```text
User goal / source material
        ↓
AI drafts:
  topics
  lessons
  practices
  expected results
  sources
  route / roadmap
  competency targets
        ↓
human review
        ↓
canonical vault package
```

AI-authored material must remain editable like any other content and should preserve provenance where useful.

Example target interaction:

```text
"Create a course on industrial automation"
        ↓
SkillsVault-compatible package
        ↓
Import
        ↓
course appears without rebuilding the app
```

## A7.6 — AI Authoring Contract + Authoring Kit

Define and version a provider-agnostic external authoring contract that another AI can follow without any prior project context.

The application should eventually export:

```text
SkillsVault_AI_AUTHORING_KIT.zip
├─ AUTHORING_CONTRACT.md
├─ manifest.schema.json
├─ topic.schema.json
├─ course.schema.json
├─ route.schema.json
├─ source.schema.json
├─ passport-template.md
├─ lesson-template.md
├─ practice-task-template.md
├─ expected-result-template.md
└─ example-course/
```

The contract must define at least:

- package types: `full_vault`, `course_bundle`, `content_patch`;
- stable IDs / namespaces;
- Topic + Lesson + Practice + Expected Result structure;
- Courses;
- Routes / Roadmaps;
- Competency Passports;
- Sources + verification status;
- external dependencies;
- merge/update intent;
- SHA-256 integrity;
- forbidden executable/path-traversal content;
- AI authoring provenance;
- personal-state boundary.

Target external workflow:

```text
fresh AI conversation
(no project memory)
        ↓
attach SkillsVault_AI_AUTHORING_KIT.zip
        ↓
"Create a SkillsVault course about X"
        ↓
AI returns compatible ZIP
        ↓
SkillsVault validates/imports it
        ↓
course appears without rebuilding the app
```

The AI model must not need access to the SkillsVault application, database, or source code.

A draft contract exists as:

```text
SkillsVault AI Authoring Contract v0.1
```

and must be hardened into a versioned production contract before the A7 gate closes.

## A7.7 — Authoring Validation

Before publishing/exporting, validate:

- schema;
- unique IDs;
- broken links;
- missing prerequisites;
- route cycles where forbidden;
- missing lesson/practice files;
- manifest consistency;
- content integrity.

## A7.8 — Authoring Golden Gate

Must prove:

- create a new independent vault;
- create a Topic + Lesson + Practice;
- create a Course using existing topics;
- create a Roadmap/Route with prerequisites and checkpoints;
- export;
- re-import into a clean app instance;
- obtain the same logical structure;
- export the AI Authoring Kit;
- in a fresh AI conversation with no prior SkillsVault/project context, provide only the Authoring Kit + a course request and obtain a package that passes structural preflight;
- no application rebuild required.

Exit marker:

```text
A7_AUTHORING_GATE=PASS
```

Authoring must preserve the portable/open SkillsVault format.

---

## A8 — Import / Export / Merge / Distribution

Goal: allow complete knowledge bases, courses, and roadmaps to move between people and devices as ordinary portable packages.

- open `.skillsvault` package format;
- import independently authored vaults;
- import AI-generated canonical lesson/course packages;
- export whole vaults;
- export selected Course / Roadmap / branch / prerequisite closure;
- conflict preview;
- Obsidian roundtrip;
- backup / restore;
- explicit merge semantics;
- package versioning / manifest validation;
- optional signing / provenance metadata for distributed packages.

Target workflow:

```text
Author A creates:
  Course + Roadmap + Lessons
        ↓
exports .skillsvault
        ↓
Author/User B imports
        ↓
same content appears in SkillsVault
without a new Windows/Android build
```

AI-authored package workflow must also be first-class:

```text
Fresh external AI
+ SkillsVault Authoring Kit
+ user request
        ↓
course_bundle.zip
        ↓
preflight validation
        ↓
ADD / UPDATE / NO_OP / CONFLICT plan
        ↓
user confirms import
        ↓
new Course / Topics / Route / Passports appear
```

Required import safety for AI-authored packages:

- package contract version is supported;
- manifest counts match parsed content where required;
- SHA-256 file integrity verifies;
- all internal references resolve;
- external dependencies are declared;
- collisions are detected before commit;
- re-import of identical package becomes `NO_OP`;
- malformed/unsafe ZIP is rejected transactionally;
- personal state is untouched.

No magical unsafe two-way sync.

Personal report export from A4 is conceptually separate from canonical library package import/export here.

---

## A9 — AI / ChatGPT Bridge

Goal: make SkillsVault able to use AI as a tutor/examiner/reviewer without creating vendor lock-in or requiring an API key.

### A9.0 — AI Action Contract

Canonical AI actions should include at least:

```text
Teach me
Review with me
Quiz me
Assess me
Accept / run competency check
Explain this topic
Review my evidence
Explain my next step
Create / extend a SkillsVault course
```

`Create / extend a SkillsVault course` uses the same versioned AI Authoring Contract defined by A7. It may either call a configured provider directly or generate/export the Authoring Kit + prompt for a manual external AI session.

These actions operate on structured SkillsVault context, not on vague free-form prompts.

### A9.1 — Context Builder

For a selected Topic / Passport / Route / Goal, SkillsVault should be able to assemble a minimal self-contained context package from available data:

```text
Topic
Lesson
Practice Task
Expected Result
Competency Passport
Objectives
Evidence Ladder
Mastery rubric
Prerequisites
Sources
Routes / Gates
Personal mastery/evidence (when A3 exists)
Goal / requested AI mode
```

The context builder must be deterministic for a fixed vault + personal-state snapshot.

### A9.2 — Manual Prompt Fallback — MANDATORY

Every AI-assisted action must work even when no API/provider is configured.

Required UX:

```text
AI action selected
        ↓
API configured?
   ├─ yes → optional direct execution
   └─ no  → generate prompt/context
               ↓
           [Copy prompt]
           [Copy self-contained prompt]
           [Export context.md]
```

This fallback is a first-class feature, not an error path.

Target examples:

```text
[ Teach me ]
[ Review ]
[ Quiz me ]
[ Assess me ]
[ Accept competency check ]
```

If no API is configured, SkillsVault generates a prompt that the user can paste manually into ChatGPT, Claude, Gemini, or another model.

### A9.3 — Prompt Modes

Support at least:

#### Short prompt

For cases where the user already attached/imported the relevant vault/context into the external AI conversation.

#### Self-contained prompt

Contains all minimum required context directly in the prompt.

#### Context package export

Export a portable file such as:

```text
context.md
```

for large contexts that are inconvenient to paste inline.

### A9.4 — Provider Integrations

Optional direct integrations may support one or more AI providers.

The provider adapter layer must be separate from canonical SkillsVault logic.

Conceptually:

```text
SkillsVault AI Action
        ↓
Context Builder
        ↓
Prompt Contract
        ↓
Provider Adapter
        ├─ OpenAI
        ├─ Anthropic
        ├─ Google
        ├─ local model
        └─ future provider
```

No provider-specific feature may become a hard dependency for core SkillsVault behavior.

### A9.5 — Structured Assessment Output

For assessment / competency-check modes, the generated prompt should request structured output such as:

```text
proposed mastery
verification/evidence level
strengths
gaps
missing proof
recommended next step
assessment rationale
assessor = AI
```

When personal state exists, the user must explicitly approve importing AI-produced assessment/evidence into personal storage.

AI must never silently overwrite:

- self assessment;
- expert assessment;
- mentor/supervisor assessment;
- previous AI assessments;
- historical evidence.

### A9.6 — AI Assessment Provenance

AI-generated assessments must preserve provenance like any other assessor:

```text
assessor_type = AI
provider/model (when known)
prompt mode
context fingerprint
timestamp
result
confidence / limitations
linked evidence
```

Manual-prompt sessions must also be representable: the user may import/paste the result back into SkillsVault with provenance marked as an external/manual AI session.

### A9.7 — AI Bridge Golden Gate

Must prove:

- AI action context generation works with no API key configured;
- short prompt generation works;
- self-contained prompt generation works;
- `context.md` export works;
- same fixed input produces deterministic context/prompt structure;
- no secrets/API keys are required for manual fallback;
- optional provider adapter failure does not disable manual prompt mode;
- imported AI assessment does not overwrite independent human/self assessments;
- AI assessment provenance is preserved.

Exit marker:

```text
A9_AI_BRIDGE_GATE=PASS
```

The application remains useful offline and useful without any configured AI provider.

---

## A10 — Multi-device / Sync

Windows <-> Android.

Priority:

1. sync personal state/evidence metadata;
2. safely sync/archive evidence where configured;
3. avoid re-syncing the entire large canonical Vault by default.

Conflict handling must be explicit.

---

## A10.5 — Content Quality & Pedagogical Hardening

**Execution mode:** PARALLEL WORKSTREAM ACTIVE from A3 onward; the final content-quality gate remains mandatory before A11 Production Release. Content improvement may proceed in a separate chat/workstream while application development continues, provided the content workstream preserves stable canonical IDs/paths/contracts and returns versioned content-only patches.

Goal: turn the canonical Vault from a structurally complete knowledge library into a production-quality learning and competency system.

The canonical detailed plan is maintained in:

```text
SkillsVault_CONTENT_ROADMAP_CANONICAL_2026-08-30_v1.md
```

The content mission is broader than prose cleanup. A learner should be able to choose an interesting discipline, enter at an understandable level, move through meaningful prerequisite-aware steps, apply knowledge in realistic tasks, and see a growing map of knowledge and competence that opens further learning.

### A10.5 learning principles

- understandability before sophistication;
- simple language without sacrificing technical truth;
- explain meaning and mechanism before relying on jargon;
- increase difficulty only when prerequisite knowledge supports it;
- build mental models and causal reasoning, not vocabulary lists;
- connect each Topic to practical value and observable capability;
- make Practice test application/reasoning rather than text recall;
- make Expected Result observable and assessable;
- use spiral learning and cross-domain links to strengthen reusable concepts;
- teach reusable ways of thinking, diagnosis, uncertainty handling, and evidence evaluation;
- make the next useful learning step visible and achievable;
- preserve source honesty and explicitly surface safety-critical uncertainty.

Preferred depth progression where applicable:

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

### A10.5 content sub-roadmap

```text
CQ0 Learning System Constitution              ✅ CLOSED
CQ1 Pilot: Crane Mechanics / CQ-B001           🔥 ACTIVE
CQ2 Calibration Freeze / Standard v2           ⏳
CQ3 Vault-wide Graph & Priority Audit          ⏳
CQ4 Industrial Engineering Core                ⏳
CQ5 Digital Engineering Core                   ⏳
CQ6 Aviation Engineering                       ⏳
CQ7 Cross-domain Graph Synthesis               ⏳
CQ8 Pedagogical Red Team                       ⏳
CQ9 Content Golden Set / Final Gate            ⏳
```

### CQ0 — Learning System Constitution

Defines the target learning experience, progressive-complexity doctrine, Topic Definition of Done, source/safety rules, Practice/Expected Result standard, competency contribution and graph principles.

### CQ1 — Pilot Calibration

First production pilot:

```text
CQ-B001
02_Industrial_Engineering_PTM / Crane_Mechanics
CRN-M-01 ... CRN-M-06
```

The pilot calibrates depth, prerequisite handling, Russian-first explanation, formulas/assumptions, diagnostic logic, Practice alignment, source discipline and review burden before scale-up.

### CQ2 — Calibration Freeze / Standard v2

Use pilot evidence to revise the lesson quality standard, authoring patterns, anti-patterns, QA rubric, risk classes and human-review rules before large-scale rewriting.

### CQ3 — Vault-wide Graph & Priority Audit

Classify all 1,079 Topics by dependency leverage, learner entry level, source confidence, risk, current quality, route/passport relevance, forward unlocks and likely review need. Produce the ordered batch queue.

### CQ4 — Industrial Engineering Core

Prioritize the 490-Topic industrial engineering nucleus across PTM, electrical/electronics, engineering design, automation/drives, reliability/maintenance, mechanical engineering, industrial safety/risk and technical procurement.

### CQ5 — Digital Engineering Core

Harden the 446-Topic software/infrastructure/AI/system-design nucleus with progressive prerequisites, real examples, debugging/failure logic, explicit trade-offs, security/privacy qualification and production reasoning.

### CQ6 — Aviation Engineering

Harden the 115-Topic aviation domain with stricter mathematics/physics prerequisites, model-validity boundaries, certification/safety provenance and equipment-family scoping.

### CQ7 — Cross-domain Graph Synthesis

Reconcile shared concepts, prerequisites, forward unlocks, Learning Routes and Competency Passports so the Vault behaves as one knowledge/competency graph rather than independent folders.

### CQ8 — Pedagogical Red Team

Audit the hardened Vault for unexplained terminology, abrupt difficulty jumps, unsupported claims, missing assumptions, misleading simplifications, weak practice, unassessable outcomes, broken prerequisite chains, cross-domain contradictions and safety-critical ambiguity.

### CQ9 — Content Golden Set / Final Gate

Freeze representative reviewed exemplars and prove that all 1,079 Topics have an explicit content-quality disposition, with no silent critical uncertainty and reproducible patch history.

### A10.5 Topic Definition of Done

A hardened Topic should, where applicable:

1. explain why the learner should care;
2. declare or satisfy prerequisites;
3. be understandable at the declared learner level;
4. build a usable mental model;
5. explain mechanisms/causes, not only facts;
6. qualify formulas with variables, units, assumptions and limits;
7. connect to realistic professional application;
8. address important misconceptions/failure logic;
9. provide Practice that exercises the learned reasoning;
10. provide an observable Expected Result;
11. contribute to a real competency;
12. preserve useful prerequisite/forward/cross-domain links;
13. trace important claims to adequate Sources;
14. surface safety-critical or source uncertainty for review;
15. make the learner measurably more capable than before the Topic.

Batch execution remains content-only and versioned under the Delivery Contract. Default batch size is 5–15 coherent Topics.

Exit markers:

```text
CQ9_CONTENT_GOLDEN_SET=PASS
CONTENT_QUALITY_PEDAGOGICAL_GATE=PASS
```

---

## A11 — Production Release

Production target:

- Windows + Android;
- offline-first;
- deterministic canonical import/update;
- real learning navigation;
- search/routes/passports;
- personal mastery;
- assessment provenance;
- evidence library;
- personalized roadmap/mindmap;
- backup/restore/export;
- optional direct AI integrations;
- mandatory manual AI prompt/context fallback;
- user-created/imported vaults, courses, and roadmaps;
- portable content distribution without rebuilding the app;
- production-quality, source-traceable lessons that have passed the content/pedagogy gate;
- no vendor lock-in.

---

# Parallel workstream rule — application vs content

From A3 onward, SkillsVault is intentionally developed in two parallel streams:

```text
APPLICATION WORKSTREAM
  owns app code, storage/schema contracts, import/runtime behavior, gates

CONTENT QUALITY WORKSTREAM
  owns lesson/practice/expected-result quality and source traceability
  returns content-only versioned patches
```

Hard boundary:
- content work must not edit Flutter/app code, bootstrap/gate scripts, personal state, or production SQLite directly;
- application work must not silently rewrite lesson prose while a content batch is in progress;
- stable canonical IDs, entity relationships, and file paths are preserved unless a schema-change request is explicitly accepted;
- any required structural/schema change is returned as a request, not performed unilaterally by the content workstream;
- each content batch must declare the base fingerprint, changed files, checksums, unresolved review items, and source additions.

The A10.5 final gate consolidates and validates the accumulated parallel content work before A11.

---

# AI Authoring delivery checkpoint

The external "fresh-chat AI -> ZIP -> import -> new course" experiment becomes meaningful in two steps:

```text
Contract Pilot
    A7.6 / A7.8
    → fresh AI can generate a structurally valid SkillsVault package

End-to-end App Import
    A8
    → SkillsVault itself validates, previews, merges, and imports that package
```

A9 is **not required** for the external-chat experiment. A9 only adds in-app AI actions, provider adapters, and automatic/manual prompt generation.

Therefore the first true user acceptance test should be scheduled at the A7/A8 boundary:

1. open a brand-new AI chat with no project/user context;
2. attach only `SkillsVault_AI_AUTHORING_KIT.zip`;
3. request an arbitrary small course;
4. receive the ZIP;
5. import it into a clean SkillsVault instance;
6. open the generated Course -> Topic -> Lesson -> Practice;
7. re-import the identical ZIP and confirm `NO_OP`.

Acceptance marker:

```text
AI_AUTHORING_COLD_CHAT_ACCEPTANCE=PASS
```

---

# Current project position

```text
A0 Product / Architecture Proof           ✅ CLOSED
A1 Importer Core                          ✅ CLOSED
A2 Read-only Learning MVP                 ✅ CLOSED
├─ A2.0 Read Model + Navigation           ✅ CLOSED
├─ A2.1 Home / Domains / Role Paths       ✅ CLOSED
├─ A2.2 Routes + Topics                   ✅ CLOSED
├─ A2.3 Lesson + Practice                 ✅ CLOSED
├─ A2.4 Competency Passports              ✅ CLOSED
├─ A2.5 Sources + Cross-links             ✅ CLOSED
├─ A2.6 Search + Filtering                ✅ CLOSED
└─ A2.7 Read-only MVP Golden Gate         ✅ CLOSED

A3 Personal Mastery & Evidence            🔥 ACTIVE
└─ A3.0 Personal State Storage            🔥 ACTIVE
A4 Competency Intelligence & Roadmap      ⏳
A5 Retention                              ⏳
A6 Gamification (optional)                ⏳
A7 Vault / Course / Roadmap Authoring     ⏳
A8 Import / Export / Merge / Distribution ⏳
A9 AI Bridge + Manual Prompt Fallback     ⏳
A10 Multi-device / Sync                   ⏳
A10.5 Content Quality / Pedagogy          🔥 PARALLEL ACTIVE
A11 Production Release                    ⏳
```
