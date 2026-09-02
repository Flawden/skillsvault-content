# CRN-M-03 / D1 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`901341bb7c1facef1b36e0dc3b497ac133e4e933`

Scope:

- D1 Lesson v1 after Technical Editorial Pass I;
- hook-suspension load-path interpretation;
- latch/keeper and seating assumptions;
- condition-dependent holding shortcuts;
- source-scope and interchangeability traps;
- capacity/compatibility and historical-success misuse;
- equipment-authority / STOP semantics;
- CRN-M-01 / CRN-M-02 frozen topics untouched;
- no numeric design, inspection, holding-force or test limits introduced.

## Adversarial question

Assume a smart beginner understands the vocabulary and wants to turn plausible-looking evidence into permission.

Can the lesson be misread so that:

- symmetric-looking branches are assigned 50/50 load without evidence;
- a closed latch and deep-looking seating become an acceptance verdict;
- a light load or previous successful cycle legitimizes tip/side/eccentric use;
- visible normal conditions are mistaken for proof of a clamp/magnet/vacuum holding state;
- similar devices or one matching marking are treated as interchangeable;
- a crane capacity number is treated as whole-system compatibility;
- prior success becomes current validation;
- a source category match becomes exact applicability;
- SkillsVault `STOP` is mistaken for equipment-operation authority?

Pass I attacks those failure modes.

---

# Findings and corrections

## RT-01 — Visual symmetry could become an invented equal-load split

**Severity:** HIGH

A branched load-path map is better than a single chain, but a reader could still assume equal sharing merely because two branches look symmetric.

### Fix applied

The lesson now states:

```text
SYMMETRIC-LOOKING BRANCHES
≠
PROVEN EQUAL LOAD SHARE
```

If load distribution matters and is not established by design/documentation, D1 records it as unknown.

## RT-02 — Closed latch plus deep-looking seating could become acceptance

**Severity:** CRITICAL / acceptance

Multiple reassuring visual cues can create stronger false confidence than either cue alone.

### Fix applied

The lesson now blocks:

```text
CLOSED LATCH + GOOD-LOOKING SEATING
≠
PROVEN COMPATIBILITY / ACCEPTANCE
```

The intended interface and device/load compatibility remain source specific.

## RT-03 — “Light load” or previous survival could legitimize an unverified force path

**Severity:** CRITICAL / method-authority

A reader could argue that tip/side/eccentric loading is acceptable because the load is small or because the same arrangement survived before.

### Fix applied

D1 now states that low load and historical survival do not create a missing allowable limit, source scope or OEM approval.

## RT-04 — Visible normal conditions could masquerade as complete holding verification

**Severity:** HIGH

The lesson names useful condition dependencies for clamps, magnets and vacuum devices. A reader could treat that educational list as complete and infer that “nothing visible is wrong” proves holding capability.

### Fix applied

The lesson now states:

```text
ALL VISIBLE SIGNS LOOK NORMAL
≠
ALL CRITICAL HOLDING CONDITIONS VERIFIED
```

Device-specific controls, measurements, alarms/interlocks and procedures remain outside D1 unless provided by the applicable source.

## RT-05 — Similar appearance plus one matching marking could become interchangeability

**Severity:** HIGH / source applicability

One nominal value or familiar shape does not prove two attachments share the same mechanism, approved interface, configuration or source branch.

### Fix applied

D1 now explicitly rejects visual/nominal interchangeability and requires exact type/configuration identification.

## RT-06 — “Load is below the crane number” could become whole-system compatibility

**Severity:** CRITICAL / equipment authority

A single displayed/rated crane number can hide attachment mass, attachment rating, approved interfaces, crane configuration and load-chart context.

### Fix applied

The lesson now carries:

```text
LOAD < VISIBLE CRANE CAPACITY NUMBER
≠
FULL LIFTING SYSTEM COMPATIBILITY PROVEN
```

## RT-07 — Previous successful lift could become current validation

**Severity:** HIGH / evidence status

Historical success is evidence that an event occurred, not proof that the present device state, load, interface and operating conditions are accepted now.

### Fix applied

The mental example now separates prior success from current validation/acceptance.

## RT-08 — Category match could become exact source applicability

**Severity:** CRITICAL / source scope

Even when a standard title or public scope appears to cover a general class, construction/configuration may determine the exact branch.

### Fix applied

D1 now requires the learner to distinguish `category match` from `exact applicability` and to request identifiers/documentation when the technical conclusion depends on construction or configuration.

## RT-09 — SkillsVault STOP could become an unauthorized operational command

**Severity:** CRITICAL / authority

The existing guard correctly said `STOP ANALYSIS ≠ PERMISSION TO KEEP OPERATING`, but a reader could still invert it and treat the educational `STOP` as a universal equipment shutdown/operation command.

### Fix applied

The lesson now defines SkillsVault `STOP` as an **epistemic/authority stop**: stop unsupported technical inference and hand the issue to the applicable safety/OEM/competent process. Operational response remains governed by real procedures and authorized decisions.

---

# Claim-lock verdict

No Red-Team correction unlocks:

- numeric hook design/proof;
- throat/wear/deformation/crack/discard limits;
- numeric tip/side/eccentric limits;
- latch/keeper design or retrofit acceptance;
- clamp/magnet/vacuum/grab holding-force calculations;
- load-test acceptance;
- repair/specialist NDT;
- equipment-specific capacity/compatibility;
- return-to-service or continued-operation permission.

ISO 17096 grab/grab-bucket exclusion remains hard-locked. No paid normative table is reconstructed.

# Whole-Lesson Red-Team verdict

`PASS WITH CORRECTIONS APPLIED`

Most important invariant:

```text
LOOKS SYMMETRIC
≠
LOAD SHARE PROVEN

LOOKS CORRECT
≠
ACCEPTANCE

WORKED BEFORE
≠
VALIDATED NOW

CATEGORY MATCH
≠
EXACT APPLICABILITY

SKILLSVAULT STOP
≠
EQUIPMENT AUTHORITY
```

## Next

`CRN-M-03 / D1 READER EXPERIENCE PASS / PASS I / v1 — improve beginner flow, cognitive load and retrieval without weakening Red-Team load-path/source/holding/acceptance/authority guards before practice`
