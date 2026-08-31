# CRN-M-01 D1 — Source Integration Plan

## Статус

**SOURCE CONTENT READY**
**CANONICAL SOURCE INTEGRATION: NOT EXECUTED**

Причина: source mapping в Vault участвует сразу в нескольких reciprocal/generated структурах. Частичное ручное изменение одного файла создаст рассинхронизацию.

## Безопасные изменения

### SRC-000393
Добавить `CRN-M-01` в `topics`.

### SRC-000556
Создать новую Source Card для ISO 7592:1983.

### SOURCE_REGISTRY.json
- добавить CRN-M-01 в topics SRC-000393;
- добавить SRC-000556;
- увеличить next_source_number с 556 до 557.

## Что должно быть регенерировано основным потоком

После source integration необходимо согласованно обновить/перегенерировать:

- `17_Learning_Library/00_INDEX/COVERAGE.json`;
- соответствующий `SOURCE_COVERAGE_L2D.json/.csv`;
- source block в Topic Card CRN-M-01;
- source metadata/roles в Lesson;
- любые release manifests/hashes, если генератор считает их derived artifacts.

## Рекомендуемый агрегированный source set Topic CRN-M-01

Существующие:
- SRC-000384 — ISO 4309:2017;
- SRC-000385 — ISO 9927-1:2013;
- SRC-000392 — OSHA 1910.179.

Добавить:
- SRC-000393 — ФНП ПС №461;
- SRC-000556 — ISO 7592:1983.

## Источники по глубинам

Для будущей модели уровней рекомендуется хранить отдельный source set на depth level.

### D1
Основные:
- SRC-000393;
- SRC-000384;
- SRC-000556.

Поддерживающий:
- SRC-000385.

### D2–D4
Набор расширяется только по фактическому использованию материалов.

OSHA 1910.179 можно сохранить как сравнительный topic-level источник, но не считать главным нормативным основанием для российского ПС.
