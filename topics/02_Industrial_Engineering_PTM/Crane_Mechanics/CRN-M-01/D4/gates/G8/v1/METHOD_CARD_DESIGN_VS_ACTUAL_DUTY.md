# D4 Method Card
# Расчётный рабочий период и фактическая служба

## Разделить четыре вопроса

### 1. Как кран классифицирован?
Design / classification layer.

### 2. Как кран реально работал?
Usage monitoring layer.

### 3. Каково фактическое состояние?
Inspection layer.

### 4. Что разрешено делать дальше?
Decision / authority layer.

---

# Запрещённые переходы

```text
design life not exhausted
→ safe
```

```text
design life approached
→ rope discard
```

```text
monitoring says low duty
→ inspection not needed
```

---

# Нормальная логика

```text
DESIGN DUTY
↔
ACTUAL DUTY
↓
INSPECTION PRIORITY
+
SPECIAL REVIEW NEED
```

с отдельной оценкой текущего состояния.
