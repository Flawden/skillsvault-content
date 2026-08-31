# Repository Protocol v1

## Branches

### main
Текущее принятое состояние.

### work/<topic>-<depth>-<stage>
Для крупных черновых изменений до gate.

Пример:
`work/crn-m-01-d4-lesson`

## Tags

Freeze tags:
- `crn-m-01-d1-v1`
- `crn-m-01-d2-v1`
- `crn-m-01-d3-v1`
- будущий `crn-m-01-d4-v1`

Тег freeze никогда не перемещается.

## Releases

Для каждого freeze-tag рекомендуется GitHub Release с:
- freeze ZIP;
- SHA-256 sidecar;
- кратким changelog;
- REVIEW_REQUIRED.

## Commit prefixes

- `system:` правила системы
- `roadmap:` дорожная карта
- `content:` авторинг
- `source:` source gate
- `review:` editorial/red team
- `practice:` практика
- `verify:` rubric/evidence
- `freeze:` заморозка
- `migration:` перенос pre-git артефактов

## Новый чат

1. Открыть `status/CONTENT_STATUS.json`.
2. Проверить `next`.
3. Открыть последний завершённый gate.
4. Не менять `FROZEN_vN`.
5. После нового этапа обновить status и ROADMAP.

## Публичный repository guard

Публичность нужна для постоянного чтения/клонирования, но исходные закрытые документы не публикуются автоматически.
