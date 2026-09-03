# SkillsVault Content

Публичный Git-репозиторий контентной части SkillsVault.

## Главный принцип

Этот репозиторий — источник истины для учебного контента, а не архив чатов.

Любой новый рабочий сеанс должен начинаться с:

1. `status/CONTENT_STATUS.json`
2. `ROADMAP.md`
3. активного Topic/Depth или следующего шага из `status.next`
4. соответствующего frozen/status manifest

## Текущая точка

`CRN-M-01 — Канаты и цепи` — **FULL TOPIC FROZEN v1**, tag `crn-m-01-v1`.

`CRN-M-02 — Барабаны, блоки, полиспасты` — **FULL TOPIC FROZEN v1**, tag `crn-m-02-v1`.

Активный Topic: `CRN-M-03 — Крюковые подвески и захваты`.

- Content Kickoff — COMPLETE v1
- D1 Scope — LOCKED v1
- D1 Source Gate — PASS WITH CLAIM LIMITS v1
- D1 Lesson Authoring — COMPLETE v1
- D1 Technical Editorial / Pass I — COMPLETE / PASS WITH CORRECTIONS APPLIED
- D1 Red Team / Pass I — COMPLETE / PASS WITH CORRECTIONS APPLIED
- D1 Reader Experience / Pass I — COMPLETE / PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED
- D1 Practice — COMPLETE v1
- D1 Practice Reasoning — COMPLETE v1
- D1 Expected Result — COMPLETE v1
- D1 Verification Rubric — COMPLETE v1
- D1 Final Alignment — COMPLETE v1
- D1 Source Freshness — COMPLETE / PASS v1
- D1 Freeze — **CONTENT FROZEN v1**, tag `crn-m-03-d1-v1`
- D2 Content Kickoff — COMPLETE / PASS WITH CLAIM LIMITS v1
- D2 Lesson Authoring — COMPLETE v1
- D2 Technical Editorial / Pass I — COMPLETE / PASS WITH CORRECTIONS APPLIED
- D2 Red Team / Pass I — COMPLETE / PASS WITH CORRECTIONS APPLIED
- D2 Reader Experience / Pass I — COMPLETE / PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED
- D2 Practice — COMPLETE v1
- D2 Practice Reasoning — COMPLETE v1
- D2 Expected Result — COMPLETE v1
- D2 Verification Rubric — COMPLETE v1
- D2 Final Alignment — COMPLETE / PASS TRACEABILITY COMPLETE / NO BLOCKING GAPS
- D2 Source Freshness — COMPLETE / PASS WITH WATCHLIST v1
- D2 Freeze — **CONTENT FROZEN v1**, tag `crn-m-03-d2-v1`
- D3 Content Kickoff — COMPLETE / PASS WITH CLAIM LIMITS v1
- D3 Lesson Authoring — COMPLETE v1
- D3 Technical Editorial / Pass I — COMPLETE / PASS WITH CORRECTIONS APPLIED
- D3 Red Team / Pass I — NEXT

CRN-M-01 and CRN-M-02 are structural production contracts. Their technical conclusions, numeric criteria, source boundaries and method applicability are not inherited automatically by CRN-M-03.

## Правило frozen content

Каталог `FROZEN_vN` никогда не редактируется.

Если материал нужно улучшить:

```text
CHANGE REQUEST
→ новая версия
→ повторный audit / alignment / red team / freshness по применимому pipeline
→ FROZEN_v(N+1)
→ новый immutable tag
```

## Что не хранить публично

Не добавлять токены, пароли, ключи, персональные данные, внутренние документы предприятия без разрешения, чужие платные стандарты/PDF целиком или proprietary OEM-документы без права на публикацию.

В репозитории хранятся наши учебные материалы, source notes, ссылки, методические выводы и созданные артефакты.

## Быстрый старт нового чата

Открой `status/CONTENT_STATUS.json`, восстанови `ROADMAP.md` и продолжай с `next`.

## CRN-M-03 D3 Content Kickoff v1

Status: `COMPLETE / PASS WITH CLAIM LIMITS`.

D3 opens Russian-first causal-diagnostic reasoning above frozen D1/D2 mechanics. The learner must separate observation from inference, construct competing mechanisms, derive falsifiable predictions, rebuild the D2 mechanical model per hypothesis, distinguish present state / transient event / accumulated history and request evidence that actually discriminates models.

Hard locks remain: one symptom cannot become a root cause; formal proof/rating/remaining-life values are not reconstructed; inspection/discard/acceptance and specialist NDT interpretation remain outside learner authority; no field fault-reproduction experiment, adjustment, repair, modification, return-to-service or operation permission is authorized. ISO 17096 grab/grab-bucket exclusions remain explicit. ISO 8686-1:2012, ISO 12482:2014 and ISO/CD 12482 Ed2 are on watchlist for their current review/development status.

Next: `CRN-M-03 / D3 LESSON AUTHORING / v1 — build Russian-first causal-diagnostic reasoning for hook suspensions and load-gripping devices around symptom-to-mechanism maps, competing hypotheses, falsifiable predictions, discriminating evidence, state/history separation and bounded source/authority handoff`.

## CRN-M-03 D3 Lesson Authoring v1

Status: `AUTHORING COMPLETE`.

Russian-first D3 lesson adds causal-diagnostic reasoning above frozen D1/D2: observation/inference/unknown separation, competing mechanical hypotheses, per-hypothesis D2 model rebuilds, falsifiable predictions, discriminating evidence, state/transient/history separation, loaded-state/engagement sequence reasoning, qualitative sensitivity and bounded model-status handoff. Root-cause promotion, numeric proof/rating/remaining-life, inspection acceptance, specialist NDT interpretation, hazardous diagnostic experiments and operation permission remain locked.

Next: `CRN-M-03 / D3 TECHNICAL EDITORIAL / PASS I / v1`.

## CRN-M-03 D3 Technical Editorial Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`.

Ten editorial findings harden causal uniqueness, reverse-inference/observability discipline, evidence independence, post-event confounding, loaded-state causal direction and source-role separation. Evidence discriminating value is now separate from source authority; formal proof, inspection/specialist, safe-use/planning and equipment-specific facts are parallel roles rather than a single promotion ladder. D1/D2 frozen content remains immutable and learner-facing language remains Russian-first.

Next: `CRN-M-03 / D3 RED TEAM / PASS I / v1 — adversarial challenge of causal-chain uniqueness, competing-hypothesis discrimination, D2 model rebuilds, evidence independence, state/history confounding and source/authority traps before reader experience`.


## CRN-M-03 D3 Red Team Pass I v1

Decision: `PASS WITH CORRECTIONS APPLIED`. Twelve adversarial causal-diagnostic traps are closed: common-mode hidden premises, condition-mismatched/negative evidence, circular evidence, history coverage, cause/consequence timing, engagement-sequence non-uniqueness, local sensitivity limits, relative hypothesis ranking and authority stacking. Frozen D1/D2 and numeric/inspection/operation locks remain intact.

Next: `CRN-M-03 / D3 READER EXPERIENCE PASS / PASS I / v1 — improve Russian-first causal-diagnostic flow, cognitive load and retrieval without weakening Red-Team hypothesis/evidence/state-history/source-authority guards before practice`.


## CRN-M-03 D3 Reader Experience Pass I v1

Decision: `PASS WITH READER-EXPERIENCE CORRECTIONS APPLIED`. Eight reader findings are fixed with six-question D3 map, three-pass workflow, hypothesis/evidence/time/update/status cards and five Red-Team trap families. Causal truth conditions, Red-Team guards, D1/D2 frozen prerequisites and source/authority locks remain intact.

Next: `CRN-M-03 / D3 PRACTICE / v1 — build causal-diagnostic transfer cases for observation/inference separation, competing hypotheses, D2 model rebuilds, prediction/evidence discrimination, state-history reasoning and bounded source/authority handoff`.
