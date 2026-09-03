# CRN-M-03 / D3 — Technical Editorial Pass I v1

## Decision

`PASS WITH CORRECTIONS APPLIED`

Baseline remote commit:

`c4261dfa368d1584aa0f6c569a2f206281abc652`

## Цель

Проверить причинно-диагностический D3-урок до Red Team и убрать места, где хорошая диагностическая дисциплина могла превратиться в ритуал, обратный причинный вывод или скрытое повышение source/authority.

# Findings и внесённые исправления

## TE-D3-01 — «Минимум две гипотезы» могло превратиться в ритуал
**Severity:** MEDIUM

Требование теперь связано с реальной неуникальностью. Exact evidence, однозначно задающее состояние, не требует искусственной альтернативы.

## TE-D3-02 — Разные labels могли выглядеть как разные competing hypotheses
**Severity:** HIGH

Альтернативы должны различаться причинно значимым элементом mechanical map и/или prediction. Два названия без различающего механизма не считаются двумя гипотезами.

## TE-D3-03 — Совпавшее prediction могло читаться как подтверждение H
**Severity:** HIGH

Добавлен guard обратного вывода: `H → X` и наблюдаемое `X` не доказывают H, если X совместимо с альтернативами.

## TE-D3-04 — «Не увидели признак» могло слишком легко исключать гипотезу
**Severity:** HIGH

Исключение/ослабление по отсутствию признака требует подтверждённой наблюдаемости: качества данных, чувствительности, временного разрешения и доступности интерфейса.

## TE-D3-05 — Downstream symptom мог повторно использоваться как «новое evidence»
**Severity:** MEDIUM

Запрос различающих данных теперь проверяется на независимость от исходного симптома. Переименование того же признака не создаёт новую доказательную опору.

## TE-D3-06 — Post-service reasoning недостаточно учитывал concurrent changes
**Severity:** HIGH

При `после обслуживания` теперь обязательно фиксируются параллельные изменения конфигурации, груза, режима, контакта, процесса и наблюдения. `After ≠ because` усилен confounding-guard.

## TE-D3-07 — Loaded-state finding мог автоматически становиться причиной
**Severity:** HIGH

Loaded-state состояние может быть причиной, посредником или следствием. Направление causal arrow требует временной и механической аргументации.

## TE-D3-08 — Holding-variable correlation могла выглядеть как causal proof
**Severity:** MEDIUM

Совпавшее изменение поверхности/зазора/давления/контакта и симптома не доказывает causal driver без различающего механизма/evidence.

## TE-D3-09 — Evidence ranking смешивал дискриминирующую ценность и authority
**Severity:** HIGH / source-role

Линейный список заменён двумя независимыми осями: `discriminating value` и `source/authority role`. Высокая authority в одной области не делает источник универсальным причинным доказательством.

## TE-D3-10 — Source-role ladder могла создавать ложное последовательное повышение статуса
**Severity:** HIGH / authority

Лестница заменена параллельными дорожками: equipment-specific facts, formal proof, inspection/specialist и safe-use/planning. Эти роли не повышают друг друга автоматически; D3 сам не выдаёт `ROOT CAUSE CONFIRMED`.

# Guard audit

- `PASS` — D1/D2 frozen mechanics остаются immutable.
- `PASS` — numeric design/proof/rating/remaining-life/inspection criteria не добавлены.
- `PASS` — hazardous diagnostic experiments остаются запрещены.
- `PASS` — ISO 17096 grab/grab-bucket exclusion сохранён.
- `PASS` — state / transient / history separation усилена confounding-guard.
- `PASS` — formal proof / inspection / safe-use / causal diagnosis остаются разными authority roles.
- `PASS` — learner-facing язык остаётся Russian-first.

## Result

`PASS WITH CORRECTIONS APPLIED`

D3 готов к Red Team: следующая проверка должна атаковать уже не формулировки, а adversarial cases, где несколько историй объясняют один симптом, evidence зависимо от симптома, а source role пытается незаметно стать причинным или эксплуатационным verdict.

## Next

`CRN-M-03 / D3 RED TEAM / PASS I / v1 — adversarial challenge of causal-chain uniqueness, competing-hypothesis discrimination, D2 model rebuilds, evidence independence, state/history confounding and source/authority traps before reader experience`
