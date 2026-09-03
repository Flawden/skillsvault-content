# CRN-M-03 / D2 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`62a167c34516878bbf9346ba3a4bdd4b18501ef9`

## Adversarial question

Предположим, learner уже умеет строить ССТ, писать `ΣF`, `ΣM`, видеть эксцентриситет и назначать статус модели — и теперь хочет сделать **слишком сильный вывод из правдоподобной механики**.

Может ли он:

- выбрать слишком большую систему и «спрятать» критический интерфейс как внутренний;
- придумать удобное направление реакции только потому, что уравнения после этого решаются;
- принять визуально центральный контакт за центральную результирующую;
- назначить ЦТ по геометрическому центру красивого симметричного устройства;
- считать ручную подвижность вертлюга доказательством свободной DOF под нагрузкой;
- превратить симметрию в равную жёсткость/включение/load share;
- объявить модель корректной только потому, что число уравнений равно числу неизвестных;
- вычислить допустимый груз вычитанием массы приспособления из одной rating/capacity цифры;
- превратить полный список учебных holding-факторов в acceptance checklist;
- считать «медленный подъём» доказанной квазистатикой;
- использовать component proof / inspection / safe-use результат как автоматическое доказательство соседнего authority layer?

Pass I атакует именно эти promotion traps.

---

# Findings and corrections

## RT-D2-01 — Body-boundary laundering

**Severity:** HIGH

Критический интерфейс можно сделать внутренним, если выбрать слишком большую систему, и затем ошибочно заключить, что этот интерфейс несущественен.

### Fix

Урок теперь явно требует локальную ССТ, если вопрос относится к внутреннему интерфейсу.

```text
ИНТЕРФЕЙС ИСЧЕЗ С БОЛЬШОЙ ССТ
≠
ИНТЕРФЕЙС НЕ НАГРУЖЕН
```

## RT-D2-02 — Solvable equations could legitimize an invented reaction direction

**Severity:** CRITICAL / model status

Удобная стрелка реакции может сделать `ΣF/ΣM` разрешимыми, не будучи физически допустимой для реальной связи.

### Fix

Reaction direction/components должны следовать из connection/contact model, а не из удобства алгебры.

## RT-D2-03 — Visual central contact could become a central resultant

**Severity:** HIGH

Симметрично выглядящая площадка контакта не доказывает распределение давления и линию результирующей.

### Fix

Добавлен прямой запрет `central-looking contact → central resultant` без contact evidence.

## RT-D2-04 — Geometric centre could become centre of gravity

**Severity:** HIGH

Внешняя форма и зеркальная геометрия не доказывают распределение массы.

### Fix

ЦТ нельзя назначать по геометрическому центру без mass-distribution evidence.

## RT-D2-05 — Unloaded articulation could become loaded DOF proof

**Severity:** CRITICAL / mechanics

«Вертлюг вращается рукой» не гарантирует свободную степень свободы под нагрузкой; «не двигается сейчас» не доказывает идеальный жёсткий зажим.

### Fix

DOF теперь привязывается к нужному нагруженному состоянию и реальному connection/contact evidence.

## RT-D2-06 — Symmetry could become stiffness/engagement equality

**Severity:** HIGH

Даже одинаковая геометрия/длина ветвей не подтверждает жёсткость, предварительное натяжение, зазоры и одновременное включение.

### Fix

Урок теперь явно разделяет geometry symmetry и load-share state.

## RT-D2-07 — Equation count could masquerade as model closure

**Severity:** CRITICAL / contact model

`N unknowns = N equations` не доказывает, что односторонние контакты активны, реакции имеют допустимые направления и chosen contact state физически возможен.

### Fix

Equation closure отделён от contact/constraint-state closure.

## RT-D2-08 — Exact attachment mass could unlock capacity arithmetic

**Severity:** CRITICAL / authority

Даже точная масса приспособления плюс одна видимая capacity цифра не дают универсального допустимого груза.

### Fix

Добавлен прямой запрет на arithmetic promotion без exact crane/configuration/safe-use source.

## RT-D2-09 — Complete lesson factor list could become holding verification

**Severity:** CRITICAL / holding acceptance

Learner может проверить все перечисленные D2-факторы и ошибочно решить, что holding state полностью доказан.

### Fix

Даже полный D2 causal checklist остаётся неполным относительно device/OEM verification/acceptance.

## RT-D2-10 — “Slow lift” could become quasistatic proof

**Severity:** HIGH / dynamics

Малая скорость в один момент не исключает acceleration, braking, slack take-up, impact/contact transient и rotation.

### Fix

Квазистатический статус должен обосновываться режимом, а не визуальным словом «медленно».

## RT-D2-11 — One authority layer could promote the next

**Severity:** CRITICAL / source-role

Component proof, inspection result и safe-use plan отвечают на разные вопросы и не образуют автоматическую лестницу «всё разрешено».

### Fix

Явно заблокировано:

```text
HOOK PROOF PASS ≠ WHOLE-SYSTEM PROOF PASS
INSPECTION PASS ≠ SAFE-USE PLAN COMPLETE
SAFE-USE PLAN EXISTS ≠ PART / HOLDING PROOF COMPLETE
```

---

# Guard audit

## PASS — numeric/proof locks

Не добавлены стандартные коэффициенты, allowable stresses/limits, WLL/SWL, holding ratings, load-test/discard criteria или закрытые normative tables.

## PASS — source scope

ISO 17096 grab/grab-bucket exclusion сохранён. ISO 8686-1 остаётся boundary formal load/load-combination proof и watchlist item; его коэффициенты не воспроизводятся.

## PASS — authority separation

General mechanics не превращается в formal proof, inspection acceptance, safe-use plan или equipment-operation permission.

## PASS — Russian-first

Learner-facing язык остаётся русским; английские labels объяснены или необязательны.

## PASS — immutable prerequisites

CRN-M-01, CRN-M-02, CRN-M-03 D1 frozen content и `status/FROZEN_INDEX.json` не изменены.

# Result

`PASS WITH CORRECTIONS APPLIED`

D2 готов к Reader Experience Pass без расширения numeric/acceptance/equipment-authority scope.

## Next

`CRN-M-03 / D2 READER EXPERIENCE PASS / PASS I / v1 — improve Russian-first applied-mechanics flow, cognitive load and retrieval without weakening Red-Team body/force/moment/load-share/holding/dynamics/source/authority guards before practice`
