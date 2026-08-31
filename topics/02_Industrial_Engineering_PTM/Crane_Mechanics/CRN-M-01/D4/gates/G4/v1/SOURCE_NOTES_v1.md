# CRN-M-01 — D4-G4
# Source Notes v1

## ISO 21669:2005
Статус на 2026-08-31:
- Published;
- Edition 1;
- Confirmed after 2025 review.

Публично подтверждено:
- стандарт задаёт метод определения вращательных свойств стальных канатов.

Использовано:
- test-method role;
- current status.

Не реконструированы:
- полные процедуры;
- numerical thresholds;
- tables.

---

## verope — Rotation Behavior
Публичная техническая страница производителя.

Подтверждает различие:
- torque measurement: оба конца защищены от вращения;
- rotation-angle measurement: один конец связан со свободно вращающимся малотрениевым вертлюгом;
- оба результата зависят от нагрузки.

Использовано:
- boundary-condition pedagogy.

---

## verope — Installation of wire ropes
Публичная техническая страница.

Подтверждает:
- при замене вращательно-устойчивого каната нужно предотвращать перенос twist старого каната в новый;
- соединение может быть организовано с вращательной развязкой;
- направление намотки и правильная протяжка важны.

Использовано:
- installation-twist model;
- old→new transfer.

---

## verope — Rope view
Публичная техническая страница.

Использовано:
- product-specific distinction rotation-resistant / non-rotation-resistant;
- system/application context;
- swivel applicability depends on rope class/construction;
- non-rotation-resistant ropes create torque at end fitting.

Guard:
manufacturer-specific guidance is not universalized.

---

## CASAR — Product Information / Swivel Usage
Публичная техническая страница.

Использовано:
- manufacturer explicitly warns that active in-line swivel can be detrimental for many rope types/classes;
- swivel suitability depends on rotational characteristics.

Guard:
CASAR product bulletin numbers / categories are not converted into universal SkillsVault limits.

---

## Bridon-Bekaert public product/application information
Использовано:
- all ropes exhibit some degree of torque/turn under load;
- magnitude depends on rope construction;
- rotation-resistant product selection is application-specific.

Guard:
product catalogue values remain product-specific.

---

# Core source rule

D4-G4 teaches:

```text
METHOD
+
BOUNDARY CONDITION
+
SOURCE SCOPE
```

rather than memorizing a swivel threshold.
