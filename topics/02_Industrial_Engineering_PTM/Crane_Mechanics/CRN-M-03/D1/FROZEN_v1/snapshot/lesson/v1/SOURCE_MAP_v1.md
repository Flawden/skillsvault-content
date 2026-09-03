# CRN-M-03 / D1 Lesson v1 — Source Map

Assembled: 2026-09-02.

This map records source roles already locked by D1 Source Gate v1. It does not reproduce paid ISO text, design tables, inspection limits or equipment-specific acceptance criteria.

## S1 — ISO 4306-1:2026

**Title:** Cranes — Vocabulary — Part 1: General
**Status used:** Published, Edition 5, 2026-07.
**Public metadata:** https://www.iso.org/standard/78820.html

Role in Lesson v1:

- crane vocabulary / component-domain boundary;
- support for treating hook suspensions and load-handling components as elements of a larger crane system.

Not used to supply:

- hook dimensions or proof;
- inspection/discard limits;
- equipment-specific capacity/compatibility.

## S2 — ISO 1837:2003

**Title:** Lifting hooks — Nomenclature
**Status used:** Published / confirmed, Edition 2, stage 90.93.
**Public metadata:** https://www.iso.org/standard/37599.html

Role in Lesson v1:

- generic lifting-hook nomenclature anchor;
- supports the separation of naming/anatomy from design or acceptance.

Critical boundary:

```text
NOMENCLATURE ≠ DESIGN PROOF ≠ INSPECTION ACCEPTANCE
```

No paid dimensions or normative tables are reproduced.

## S3 — ISO 17440:2014

**Title:** Cranes — General design — Limit states and proof of competence of forged steel hooks
**Status used:** Published / confirmed, Edition 1, stage 90.93.
**Public metadata:** https://www.iso.org/standard/59758.html

Role in Lesson v1:

- formal proof-of-competence **scope boundary for defined forged steel hooks**;
- demonstrates that hook proof is source- and construction-specific;
- prevents the beginner lesson from treating every hook, an isolated “hook body”, or the complete hook suspension as one universal design class.

Source Gate warning preserved:

- public scope covers a defined forged-hook branch under stated conditions;
- plate hooks are outside the public scope;
- public metadata does not authorize reconstruction of equations/tables or extension to hook-block frames, bearings, keepers/latches or excluded constructions.

## S4 — ISO 17096:2015

**Title:** Cranes — Safety — Load lifting attachments
**Status used:** Published / confirmed, Edition 1, stage 90.93.
**Public metadata:** https://www.iso.org/standard/58103.html

Role in Lesson v1:

- category/source-scope anchor for several non-fixed load-lifting attachments;
- supports discussion of families such as clamps, lifting magnets, vacuum lifters, beams, C-hooks and forks at recognition level.

Critical hard guard:

> public scope explicitly excludes buckets, grabs and grab buckets (and container spreaders); Lesson v1 does not extend ISO 17096 technical criteria to them by analogy.

## S5 — ФНП ПС №461

**Document:** Приказ Ростехнадзора от 26.11.2020 №461.
**Edition used by Source Gate:** ред. от 16.04.2026.
**Validity boundary:** through 01.09.2032.
**Reference:** https://www.consultant.ru/document/cons_doc_LAW_373321/

Role in Lesson v1:

- Russian regulatory / operational-authority boundary for applicable lifting-structure context;
- reinforces that real equipment decisions occur inside a regulated documentation/competence process.

It is not used as a replacement for hook design standards, attachment manuals or equipment-specific OEM/passport requirements.

## S6 — Passport / OEM / device documentation

Equipment/device-specific authority required for real claims involving:

- actual hook suspension/block arrangement;
- hook type/construction/configuration;
- approved keeper/latch arrangement;
- interfaces, bearings, crossheads, nuts/retainers and other suspension details;
- rated capacity / compatibility of the actual attachment and crane;
- actual clamp/grab/magnet/vacuum device type and operating conditions;
- inspection, maintenance, replacement, testing, repair and modification requirements;
- field acceptance and return-to-service decisions.

No proprietary OEM content is embedded in the repository.

## M1 — Educational first-principles mechanics

Lesson v1 uses only qualitative mechanics:

- trace the load path from upper suspension to load, including explicit branch/merge mapping when the real force path is not one serial chain;
- distinguish centered/simple bearing contact from obviously shifted, tip, side or eccentric force paths;
- distinguish structural load path from latch/keeper functionality;
- recognize that a below-hook attachment contributes to the suspended system and therefore cannot be ignored in an equipment-specific capacity decision;
- classify the **principle of holding** before judging a device.

No design/proof coefficient, allowable stress, contact pressure, side-load percentage, holding-force formula or acceptance threshold is introduced.

## Claim-lock audit

Not introduced in Lesson v1:

- numeric hook geometry / throat / wear / deformation limits;
- proof-of-competence equations or paid ISO tables;
- material grades / allowable stresses / fatigue factors;
- numeric side-load, tip-load or eccentricity limits;
- latch/keeper design, retrofit or acceptance criteria;
- magnet/vacuum/clamp/grab holding-force calculations;
- grab/grab-bucket design/closure/stability criteria;
- load-test values or acceptance procedures;
- specialist NDT interpretation;
- repair/refurbishment instructions;
- equipment-specific capacity/compatibility decisions;
- return-to-service / continued-operation permission.

## Authoring guards carried into Technical Editorial

- hook body ≠ complete hook suspension;
- latch/keeper ≠ automatically load-bearing member;
- visible engagement ≠ proven suitability;
- centered/simple educational seating ≠ field acceptance;
- similar device appearance ≠ same holding principle or source applicability;
- attachment self-weight matters to the real suspended system, but exact capacity treatment remains OEM/load-chart/device specific;
- ISO 17096 scope is not extended to grabs/grab buckets;
- observation ≠ discard/repair/operation verdict;
- stopping analysis ≠ permission to continue operation.

## Technical Editorial Pass I — guards

Technical Editorial Pass I preserves the Source Gate and adds seven wording/model guards:

- a hook-suspension load path may branch and merge; a single serial chain is only a simple teaching case;
- latch/keeper function and load role are device-specific and cannot be inferred universally from appearance;
- “centered/deep seating” is an educational comparison geometry, not field acceptance;
- ISO 17440 is kept at the scope of defined forged steel hooks and is not reduced to an unsourced “hook-body-only” rule or extended to the whole suspension;
- attachment self-weight belongs in the physical suspended-system picture, but no universal capacity subtraction rule is created;
- clamp/magnet/vacuum dependency examples are causal categories, not complete inspection or pre-use checklists;
- an abnormal visible condition is not by itself a diagnosed failure or discard verdict.

No source authority, numeric limit, inspection criterion or equipment permission is upgraded by this editorial pass.

## Red Team Pass I — adversarial guards

Red Team Pass I does not add a new source or expand any source scope. It hardens nine misuse routes:

- visual symmetry does not prove equal load sharing across hook-suspension branches;
- closed latch + visually deep seating does not prove compatibility or acceptance;
- low load or prior successful use does not authorize tip/side/eccentric loading;
- visible condition checks are not proof that every critical holding state was checked;
- similar appearance or one matching nominal marking does not establish interchangeability;
- load below a visible crane-capacity number does not establish full-system compatibility;
- prior successful lifting is historical evidence, not validation/acceptance of the current state;
- category/name match does not prove exact source applicability to a device construction/configuration;
- SkillsVault `STOP` ends unsupported inference and hands off to the applicable safety/OEM/authority process; it is not itself equipment-operation authority.

All numeric design/proof, inspection/discard, holding-force, repair/NDT, test/acceptance and operation-permission locks remain unchanged.
