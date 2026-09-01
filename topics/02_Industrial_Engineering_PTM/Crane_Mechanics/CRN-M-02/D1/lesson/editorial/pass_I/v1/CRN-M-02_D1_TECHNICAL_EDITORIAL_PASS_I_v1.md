# CRN-M-02 / D1 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`cf8ffd365e9f0b5b460f69ca2b7c47ff504bba5b`

Scope:

- D1 Lesson v1 — full technical read
- Source Map v1 — authority / claim-lock read
- D1 Scope / Source Gate — boundary check
- no frozen content modified
- no numeric design / acceptance limits introduced
- no paid normative tables reconstructed
- no equipment-specific reeving asserted

## Purpose

Audit the beginner lesson before Red Team for:

1. mechanical correctness of the ideal pulley model;
2. validity range of the supporting-rope-parts shortcut;
3. consistency of the `W`, `T`, `n` model boundary;
4. kinematic scope of `s_rope = n · s_load`;
5. wording that could over-generalize a fixed sheave or a simple reeving rule;
6. source authority and locked numeric claims.

---

# Findings and applied corrections

## TE-01 — `nT = W` could be over-generalized to angled or non-simple reeving

**Severity:** HIGH

The original lesson correctly labelled `nT = W` as idealized, but the branch-count algorithm could still be read as universal: count every supporting rope part and assign the full force `T` upward.

That is only a valid scalar shortcut when the counted support parts act in the modeled support direction. With materially angled parts, the support is determined by force components; with a rope end attached to the moving assembly or a compound arrangement, a simple visual branch count can miss forces.

### Fix applied

The lesson now adds an explicit stop-guard:

```text
simple aligned supporting parts → nT = W may be used as the D1 ideal model
angled / compound / moving-end arrangement → build the force diagram first
```

It records the general boundary as a sum of support-direction components, including `Σ(T · cos θ_i) = W` for equal tension only as a misuse guard, not as a real-equipment calculation method.

## TE-02 — `W` boundary contradicted a later “real-system factor” list

**Severity:** HIGH coherence risk

The lesson defined `W` as the weight of the entire selected moving assembly, then later listed the own mass of moving elements as something absent from the ideal model.

Those statements conflict: if an element belongs to the chosen moving assembly, its weight must already be inside the model boundary `W`.

### Fix applied

`W` is now defined as the vertical weight load of the **entire selected moving assembly** included in the educational model. “Own mass of moving elements” was removed from the list of omitted effects and replaced with the actually missing angled-branch/vector-component effect.

## TE-03 — fixed-sheave wording was too absolute

**Severity:** MEDIUM

“Неподвижный блок может только изменить направление каната” is safe for the simplest single fixed pulley, but too absolute as a statement about a complex reeving system.

### Fix applied

The wording now distinguishes:

```text
an individually considered fixed sheave
≠
mechanical-advantage source by itself
```

while acknowledging that fixed sheaves can be part of the rope path in a complex reeving. Mechanical advantage is still tied to support forces / support parts acting on the moving assembly.

## TE-04 — distance/speed relation needed an endpoint/constraint boundary

**Severity:** MEDIUM

`s_rope = n · s_load` and `v_load = v_rope / n` were correctly labelled idealized, but the exact kinematic relationship depends on the rope-length constraint and attachment arrangement.

### Fix applied

The relation is now explicitly limited to a simple fixed-end scheme where all `n` supporting parts change length consistently. Moving-end, multi-moving-block or materially changing geometry requires deriving the rope-length constraint instead of copying the formula.

---

# Source / claim-lock audit

## PASS — numeric design lock

No numeric values were introduced for:

- D/d ratios;
- groove geometry;
- fleet-angle limits;
- drum strength;
- efficiency factors;
- discard / acceptance criteria;
- equipment-specific capacities or reeving permissions.

## PASS — source authority

The editorial corrections are first-principles mechanics boundary corrections. They do not elevate public ISO metadata into closed normative requirements.

The existing source hierarchy remains:

```text
public ISO metadata / abstracts
→ scope + terminology + interface boundary

passport / OEM / applicable requirements
→ actual equipment geometry, reeving, limits and field decisions
```

## PASS — ISO 4309 crossover statement

The public ISO abstract explicitly identifies increased deterioration in crossover zones for multi-layer spooling, so the D1 contextual statement remains inside public-source authority.

---

# Result

`PASS WITH CORRECTIONS APPLIED`

The lesson is mechanically cleaner without becoming a D2/D3 calculation lesson. The beginner shortcut survives, but its failure conditions are now explicit.

## Next

`CRN-M-02 / D1 RED TEAM / PASS I / v1`

Adversarially challenge diagram interpretation, hidden endpoint cases, ideal-model misuse, source-boundary violations and operational-authority traps.
