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
- D2 Freeze — NEXT

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
