# CRN-M-03 — Крюковые подвески и захваты
# D4 Source Freshness v1
## Финальная проверка source identity / edition / status / claim limits перед Freeze

Date: `2026-09-04`
Baseline: `ef52fcf303e125fb0cff24657bf6f469c1cc80bc`

# Decision

`PASS WITH WATCHLIST — FREEZE READY`

Final Alignment не требует content corrections. Source Freshness заново проверяет только source identity/status/claim limits и не меняет D4 competence contract.

```text
SOURCE_RECORDS=14
WATCHLIST=3
CONTENT_CONTRACT_CHANGE_REQUIRED=NO
FREEZE_READY=YES
```

# Governing source lanes

| ID | Lane | Source | Status / freshness | Claim limit |
|---|---|---|---|---|
| SF-D4-M03-01 | Vocabulary / component terminology | ISO 4306-1:2026 | PUBLISHED / CURRENT | Vocabulary / terminology only; does not provide proof, inspection, acceptance or operation authority. |
| SF-D4-M03-02 | Forged-hook proof applicability | ISO 17440:2014 | PUBLISHED_CONFIRMED / CURRENT_WITH_SCOPE_GUARD | Direct coverage: point-hook bodies of steel forgings and machined shanks with thread/nut suspension. Other shank-hook principles require exact conditions. Plate hooks are not covered. Public metadata is preliminary scope evidence, not final current-case applicability. |
| SF-D4-M03-03 | Load-lifting attachments / C-hook boundary | ISO 17096:2015 | PUBLISHED_CONFIRMED_2026 / CURRENT_WITH_EXPLICIT_EXCLUSION | C-hooks are covered attachment family. Standard explicitly excludes buckets, grabs and grab buckets. C-hook coverage must not be transferred to crane hook-suspension proof or grab authority. |
| SF-D4-M03-04 | Mechanism requirements / component selection | ISO 10972-1:2025 | PUBLISHED / CURRENT | Layout/design/selection requirements for mechanisms and components; explicitly not proof-of-competence calculation for yield/fatigue/wear. |
| SF-D4-M03-05 | Loads / load combinations framework | ISO 8686-1:2012 | PUBLISHED_REVIEW_ACTIVITY / WATCHLIST | Framework for loads/load combinations; exact factors/branches are source-bound and not reconstructed. Current lifecycle shows review/revision activity, so identity/status must be rechecked before future source-bound use. |
| SF-D4-M03-06 | Steel-structure proof boundary | ISO 20332:2016 | PUBLISHED_CONFIRMED / CURRENT_WITH_COMPONENT_MAPPING_GUARD | General steel-structure proof framework used with applicable ISO 8686 loads. Component mapping is necessary but not sufficient for current-case applicability. |
| SF-D4-M03-07 | Inspection | ISO 9927-1:2013 | PUBLISHED_CONFIRMED / CURRENT | General crane inspection requirements. Inspection evidence remains bounded by method/access/coverage and is not design proof, remaining-life proof or operation authority. |
| SF-D4-M03-08 | Safe use — general | ISO 12480-1:2024 | PUBLISHED / CURRENT | Safe-system-of-work / safe-use requirements; separate from analytical proof and component model validity. |
| SF-D4-M03-09 | Safe use — bridge / gantry context | ISO 12480-5:2026 | PUBLISHED / CURRENT_NEW_2026 | Bridge/gantry safe-use context in conjunction with ISO 12480-1. Does not become hook/grab proof method. |
| SF-D4-M03-10 | Classification / duty context | ISO 4301-1:2016 | PUBLISHED_CONFIRMED / CURRENT | Classification/service-condition context. Classification is not actual component history, condition verdict or remaining-life proof. |
| SF-D4-M03-11 | Monitoring / design working period | ISO 12482:2014 | PUBLISHED_TO_BE_REVISED / WATCHLIST | Monitoring actual crane duty versus original design duty and focusing inspections. Does not automatically provide component-specific remaining-life method or verdict. |
| SF-D4-M03-12 | Monitoring successor draft | ISO/CD 12482 | UNDER_DEVELOPMENT_CD / WATCHLIST_NON_NORMATIVE | Draft under development, intended to replace ISO 12482:2014. Watchlist only; no normative claims imported into D4. |
| SF-D4-M03-13 | Russian regulatory / lifting-facility safety | Ростехнадзор Приказ №461 / ФНП ПС | ACTIVE / CURRENT_2026_AMENDMENT | Current regulatory/safe-use authority lane. Does not substitute design proof, source-bound hook/grab calculation method, specialist NDT or remaining-life methodology. |
| SF-D4-M03-14 | Equipment-specific authority / inputs | Passport / OEM / designer / approved drawings / equipment records / service history | EQUIPMENT_SPECIFIC_REQUIRED_WHERE_APPLICABLE / CURRENT_BY_CONFIGURATION_NOT_CALENDAR | Authoritative equipment-specific configuration/input/source lane. Exact applicable revision and actual equipment identity must be demonstrated; absence is a legitimate STOP condition. |

# Watchlist

| ID | Source | Reason | Action |
|---|---|---|---|
| WL-D4-M03-01 | ISO 8686-1:2012 | Published standard has active/recent lifecycle review/revision signals. Recheck status before future source-bound load-combination use. | WATCH; do not reconstruct factors/branches; exact edition/status gate before source-bound use. |
| WL-D4-M03-02 | ISO 12482:2014 | ISO marks current edition as 'to be revised'. | WATCH; retain current published identity, but do not promote it into component-specific remaining-life authority. |
| WL-D4-M03-03 | ISO/CD 12482 Edition 2 | Committee Draft under development and intended successor to ISO 12482:2014. | WATCHLIST ONLY / NON-NORMATIVE until published and separately reviewed. |

# Critical M-03 source-scope guards

## ISO 17440

Stable claim boundary:

```text
DIRECTLY COVERED
≠
CONDITIONAL EXTENSION — EXACT CONDITIONS REQUIRED
≠
EXCLUDED / NOT COVERED
```

Public identity/scope can support preliminary applicability screening. Final current-case method applicability still requires exact legitimately available governing conditions plus current component/configuration mapping.

Plate hooks remain outside the ISO 17440 covered route. Conditional shank language must not be upgraded into automatic eligibility.

## ISO 17096

Current ISO status was rechecked. The attachment family list still includes C-hooks, while the public scope explicitly excludes buckets, grabs and grab buckets.

Stable guard:

```text
ISO 17096 C-HOOK COVERAGE
≠ CRANE HOOK-SUSPENSION PROOF

ISO 17096
≠ GRAB / GRAB-BUCKET AUTHORITY
```

## ISO 12482 / remaining-life boundary

ISO 12482:2014 remains published but marked for revision. ISO/CD 12482 Edition 2 remains under development.

Therefore:

```text
MONITORING / DESIGN-WORKING-PERIOD CONTEXT
≠ AUTOMATIC COMPONENT-SPECIFIC REMAINING-LIFE METHOD
≠ NUMERIC REMAINING-LIFE VERDICT
```

# Regulatory / safe-use lane

ФНП ПС №461 is tracked in the 16.04.2026 revision and remains in force through 01.09.2032.

Regulatory/safe-use authority remains separate from:

- formal hook/grab proof;
- model validation;
- specialist NDT interpretation;
- component remaining-life method;
- equipment-specific design approval.

# Freshness implications for aligned D4

No source change found that requires re-opening:

- Lesson;
- Technical Editorial;
- Red Team;
- Reader Experience;
- Practice;
- Practice Reasoning;
- Expected Result;
- Verification Rubric;
- Final Alignment.

All source-bound numeric tables, coefficients, load combinations and branch logic remain locked unless exact applicable source access is available.

Equipment-specific passport/OEM/designer/approved drawing/service records remain configuration-dependent authority inputs rather than generic public-source substitutes.

# Freeze readiness

```text
FINAL_ALIGNMENT=PASS
SOURCE_FRESHNESS=PASS_WITH_WATCHLIST
SOURCE_RECORDS=14
WATCHLIST=3
ISO17440_SCOPE_GUARD=PASS
ISO17096_GRAB_EXCLUSION=PASS
REMAINING_LIFE_BOUNDARY=PASS
REGULATORY_FRESHNESS=PASS
CONTENT_CONTRACT_CHANGE_REQUIRED=NO
FREEZE_READY=YES
```

Next:

`CRN-M-03 / D4 FREEZE / v1 — create immutable D4 snapshot from the exact source-freshness commit, update FROZEN_INDEX, verify snapshot/source identity, create annotated tag crn-m-03-d4-v1, push commit and tag, and preserve D1/D2/D3 frozen history`
