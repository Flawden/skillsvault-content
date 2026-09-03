# CRN-M-03 / D3 — Red Team Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`238ff522cbf45b357c83b79ccbde013de36e3570`

## Adversarial question

Предположим, learner уже аккуратно разделяет observation/inference, строит несколько гипотез, пересобирает D2-механику и просит различающее evidence. Можно ли всё равно получить уверенную, но ложную причинную историю?

Да — если гипотезы разделяют одну скрытую ошибочную предпосылку, evidence не соответствует условиям prediction, отрицательный признак был ненаблюдаем, derived quantity возвращается как круговое подтверждение, post-symptom state объявляется причиной, одна engagement sequence считается уникальной, а ослабление H1 автоматически превращается в доказательство H2.

Pass I атакует именно эти диагностические promotion traps.

---

# Findings and corrections

## RT-D3-01 — common-mode hidden premise across multiple hypotheses

**Severity:** CRITICAL

Несколько красивых H1/H2/H3 могут все молча зависеть от одного неподтверждённого contact state, ЦТ или loaded DOF.

### Fix

Добавлен common-mode guard: разнообразие labels не заменяет независимость ключевых предпосылок.

## RT-D3-02 — prediction discrimination created by changing initial conditions

**Severity:** HIGH

Две гипотезы могут казаться различимыми только потому, что им незаметно заданы разные исходные условия.

### Fix

Predictions сравниваются при одинаковой релевантной конфигурации/нагруженном состоянии; различие должно следовать из механизма.

## RT-D3-03 — negative evidence without observability / condition match

**Severity:** CRITICAL

Отсутствие признака можно принять за опровержение, хотя данные не могли этот признак увидеть или были сняты в другом режиме.

### Fix

Для negative evidence теперь обязательны observability и condition match либо отдельное доказательство переносимости.

## RT-D3-04 — circular evidence derived from the disputed model and symptom

**Severity:** CRITICAL

Расчётная величина может быть получена из спорной модели и того же симптома, а затем возвращена как «независимое» подтверждение.

### Fix

Добавлен прямой circular-evidence guard.

## RT-D3-05 — history log absence promoted to event absence

**Severity:** HIGH

Пустой event log легко прочитать как доказательство отсутствия события.

### Fix

История получает coverage/quality boundary: отсутствие записи ≠ отсутствие события без гарантированной регистрации.

## RT-D3-06 — post-event correlation / selected-case confounding promoted to causation

**Severity:** HIGH

Post-event и selected-case данные могут создать красивую корреляцию без доказанной причинной стрелки.

### Fix

Сохраняются concurrent-change/confounding limits; D3 не выполняет статистический causal inference по отобранным symptomatic cases.

## RT-D3-07 — post-symptom loaded-state finding promoted to initiating cause

**Severity:** CRITICAL

Loaded-state finding, снятый после появления симптома, можно ошибочно назначить инициирующей причиной.

### Fix

Обязательна временная/механическая аргументация cause→symptom против symptom→changed-state.

## RT-D3-08 — one plausible engagement sequence promoted to unique history

**Severity:** HIGH

Одна правдоподобная последовательность engagement может быть объявлена фактической историей.

### Fix

Если data resolution не различает A→B и B→A, обе последовательности остаются допустимыми.

## RT-D3-09 — post-event holding/contact state promoted to causal driver

**Severity:** HIGH

Состояние контакта/поверхности после события может быть последствием, но выглядеть как causal driver.

### Fix

Holding evidence теперь маркируется по времени относительно события и не получает причинность автоматически.

## RT-D3-10 — local qualitative sensitivity promoted to global monotonicity

**Severity:** HIGH

Качественное «больше X → больше effect» легко превратить в глобальный закон.

### Fix

Sensitivity разрешена только локально при неизменном механизме; смена контакта/режима/активных связей разрывает перенос.

## RT-D3-11 — weakening one hypothesis promoted to proof of another

**Severity:** CRITICAL

После ослабления H1 оставшаяся H2 может ошибочно получить статус «доказана».

### Fix

Relative ranking отделён от absolute confirmation; H2 сохраняет свои unknowns и может требовать STOP/evidence request.

## RT-D3-12 — authority stacking promoted to root-cause / operation verdict

**Severity:** CRITICAL

OEM fact, inspection finding и formal proof можно сложить в ложный единый root-cause/operation verdict.

### Fix

Параллельные authority lanes сохраняются даже при одновременном наличии нескольких сильных источников.

---

# Guard audit

## PASS — causal uniqueness

Несколько гипотез не считаются независимыми, если разделяют одну непроверенную причинно значимую предпосылку.

## PASS — evidence discrimination

Observability, condition match и independence/circularity проверяются до causal promotion.

## PASS — time/history discipline

Current loaded-state, post-event contact state, event logs и reconstructed sequences не превращаются в cause/history facts без соответствующего evidence.

## PASS — source / authority separation

OEM, formal proof, inspection/specialist и safe-use lanes не складываются в automatic root-cause/operation authority.

## PASS — safety / claim locks

Не добавлены hazardous diagnostic experiments, numeric proof/rating/remaining-life, inspection/discard criteria, specialist NDT interpretation, repair/adjustment или permission to operate.

## PASS — Russian-first

Learner-facing язык остаётся русским; английские labels объяснены или необязательны.

# Result

`PASS WITH CORRECTIONS APPLIED`

D3 готов к Reader Experience Pass без ослабления frozen D1/D2 mechanics/source/authority boundaries.

## Next

`CRN-M-03 / D3 READER EXPERIENCE PASS / PASS I / v1 — improve Russian-first causal-diagnostic flow, cognitive load and retrieval without weakening Red-Team hypothesis/evidence/state-history/source-authority guards before practice`
