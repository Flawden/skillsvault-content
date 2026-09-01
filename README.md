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

`CRN-M-01 — Канаты и цепи` — **FULL TOPIC FROZEN v1**.

- D1 — FROZEN v1
- D2 — FROZEN v1
- D3 — FROZEN v1
- D4 — FROZEN v1
- Topic aggregate — FROZEN v1
- Topic tag — `crn-m-01-v1`

Следующий Topic: `CRN-M-02 — Барабаны, блоки, полиспасты`.

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
