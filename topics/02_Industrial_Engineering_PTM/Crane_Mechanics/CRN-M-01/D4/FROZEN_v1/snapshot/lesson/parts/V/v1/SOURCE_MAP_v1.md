# CRN-M-01 / D4 Lesson
# Part V — Source Map v1
## Проверка актуальности: 2026-08-31

Part V разворачивает завершённый D4-G4 в Blocks 21–25.

Новые универсальные swivel thresholds или закрытые нормативные процедуры не воспроизводятся.

---

## Основная source gate

`D4/gates/G4/v1/CRN-M-01_D4_G4_ROTATIONAL_PROPERTIES_v1.md`

Использовано:
- torque != rotation;
- fixed/free boundary conditions;
- product rotational property vs system response;
- hook rotation diagnostic map;
- installation twist models IT-1…IT-5;
- temporary installation swivel vs working swivel;
- OEM-specific swivel decision;
- test-to-field transfer guard.

---

## ISO 21669:2005

`Steel wire ropes — Determination of rotational properties`

Статус на 2026-08-31:
- Published;
- Edition 1;
- publication 2005-02;
- reviewed and confirmed in 2025;
- remains current.

Официальная страница:
https://www.iso.org/standard/35962.html

Публично подтверждено:
- standard specifies a method for determining rotational properties of steel wire rope.

Использовано:
- роль TEST METHOD;
- boundary condition and measured-output discipline.

Guard:
- exact numerical swivel thresholds are not reconstructed from secondary sources.

---

## ISO 16841:2014

`Steel wire ropes — Pulling eyes for rope installation — Types and minimum requirements`

Статус на 2026-08-31:
- Published;
- Edition 1;
- reviewed and confirmed in 2024;
- remains current.

Официальная страница:
https://www.iso.org/standard/57811.html

Публично подтверждено:
- pulling eyes are for connection during installation / re-reeving;
- requirements include geometry, strength, maximum line pull and manufacturer information;
- pulling eyes are not intended to carry service load.

Использовано:
- installation interface is an engineering object;
- installation tool != service component.

---

## ISO 4309:2017

`Cranes — Wire ropes — Care and maintenance, inspection and discard`

Статус на 2026-08-31:
- Published Edition 5;
- current published version.

Публичная область:
- includes storage, handling, installation and maintenance guidance.

Официальная страница:
https://www.iso.org/standard/66759.html

Использовано:
- installation belongs to rope lifecycle, not merely logistics.

---

## ISO/CD 4309 — Edition 6

Статус на 2026-08-31:
- Committee Draft;
- under development;
- not current published requirement.

Официальная страница:
https://www.iso.org/standard/90256.html

Использовано:
- freshness awareness only.

---

# OEM / technical guidance boundary

G4 reviewed public materials from rope manufacturers, including:
- verope;
- Bridon-Bekaert;
- CASAR.

General common themes retained:
- all ropes can show rotational response under load;
- swivel suitability depends on rope construction / rotational property;
- installation can introduce twist;
- transferring twist from old to new rope is a distinct installation hazard.

Guard:
- product-specific numeric thresholds remain product/source-bound;
- manufacturer guidance is not universalized into an ISO rule.

---

# Reader Experience

Narrative puzzle:

> after rope replacement the hook begins to rotate — product property or installation error?

Arc:
1. torque and rotation split;
2. product and system split;
3. swivel changes boundary condition;
4. installation creates initial torsional state;
5. test data requires transfer layer before field prediction.

Formal Reader Experience Pass remains after full Lesson, Technical Editorial and Red Team.
