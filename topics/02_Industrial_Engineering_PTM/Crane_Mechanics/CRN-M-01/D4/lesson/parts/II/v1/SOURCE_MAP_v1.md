# CRN-M-01 / D4 Lesson
# Part II — Source Map v1
## Проверка актуальности: 2026-08-31

Part II основана прежде всего на завершённом D4-G2 и не вводит закрытые таблицы или новые нормативные коэффициенты.

## Основная source gate
`D4/gates/G2/v1/CRN-M-01_D4_G2_ROPE_SELECTION_COMPATIBILITY_v1.md`

Использовано:
- запрет `same diameter + sufficient MBF = compatibility`;
- product identity vector;
- system passport;
- system compatibility;
- trade-offs;
- C0–C4 ladder;
- design check / design boundary;
- replacement review;
- `NOT DEMONSTRATED != INCOMPATIBLE`.

## Method Card
`D4/gates/G2/v1/METHOD_CARD_ROPE_REPLACEMENT_COMPATIBILITY.md`

Использовано:
- IDENTIFY → COMPARE PRODUCT → MAP SYSTEM → FIND CRITICAL DIFFERENCES → ASSIGN SOURCE → CHECK → LIST UNKNOWNS → BOUND CONCLUSION;
- COMPATIBLE / CONDITIONALLY COMPATIBLE / NOT DEMONSTRATED / INCOMPATIBILITY IDENTIFIED.

## Input Checklist
`D4/gates/G2/v1/ROPE_REPLACEMENT_INPUT_CHECKLIST.md`

Использовано:
- исходный канат;
- кандидат;
- крановая система;
- источники;
- открытые входные данные;
- decision scope.

# Текущие внешние стандарты — свежая проверка

## ISO 16625:2025
`Cranes and hoists — Selection of wire ropes, drums and sheaves`

На 2026-08-31:
- Published;
- Edition 2;
- publication 2025-02;
- replaces ISO 16625:2013.

Публичная область прямо связывает выбор каната с геометрией канатного привода, барабана и блоков.

Официальная страница:
https://www.iso.org/standard/77889.html

Закрытые процедуры / таблицы не воспроизводятся.

## ГОСТ 33710-2015
`Краны грузоподъемные. Выбор канатов, барабанов и блоков`

На 2026-08-31:
- действует;
- введён 2017-04-01;
- зарегистрированная поправка введена 2023-02-25.

Публичная область подтверждает зависимость критериев выбора от назначения, режима работы, типа каната и типа барабана и связь с минимальным разрывным усилием.

Официальная карточка:
https://protect.gost.ru/gost/details/9f8077d5-f11c-4c62-88ac-48c1703ee9e0

Точные коэффициенты / таблицы не воспроизводятся.

## ISO 2408:2017
`Steel wire ropes — Requirements`

На 2026-08-31:
- Published;
- Edition 4;
- confirmed in 2022;
- current.

Публичная область:
- manufacture;
- testing;
- acceptance;
- dimensions;
- breaking force;
- certificate.

Официальная страница:
https://www.iso.org/standard/66635.html

Использовано для product identity / certificate / dimensional and breaking-force layer.

# Связанные gates

## G4
- torque != rotation;
- boundary condition;
- swivel decision is construction/OEM-specific.

## G5
- multilayer package;
- radial stability;
- diameter under load;
- crossover / cut-in.

## G8
- duty как контекст системы;
- local history отличается от общего класса работы.

# Reader Experience

Part II продолжает кейс из Part I: «Этот канат подходит для замены».

Narrative arc:
1. два внешне одинаковых кандидата;
2. почему двух чисел мало;
3. product passport + system passport;
4. trade-off map;
5. C0–C4;
6. bounded replacement decision.

Formal Reader Experience Pass будет выполнен после полного D4 Lesson, Technical Editorial и Red Team.
