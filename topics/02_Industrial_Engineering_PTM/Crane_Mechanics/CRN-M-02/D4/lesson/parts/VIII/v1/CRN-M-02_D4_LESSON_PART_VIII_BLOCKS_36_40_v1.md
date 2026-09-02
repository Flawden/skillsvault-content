# CRN-M-02 — Барабаны, блоки, полиспасты
# D4 — Экспертный / справочный уровень
# Часть VIII. Duty, inspection, monitoring и remaining-life boundary
## Блоки 36–40 — авторская версия v1

# Блок 36. Classification — это контекст service conditions, а не универсальный coefficient dispenser

`ISO 4301-1:2016` по публичному abstract связывает classification с service conditions, включая total working cycles, load spectrum factor и average displacements.

Для D4 это полезно как evidence о duty context.

Но classification label не разрешает автоматически:

- выбрать неизвестный dynamic factor;
- назначить fatigue curve;
- вывести remaining life;
- заменить actual history.

### Correct use

> «Classification/service-condition record указывает, что в governing method нужно проверить такие-то duty/history inputs.»

### Incorrect use

> «Класс тяжёлый, поэтому подставим повышенный коэффициент X из памяти.»

# Блок 37. Inspection evidence отвечает на состояние, а не на proof того, что конструкция была спроектирована правильно

`ISO 9927-1:2013` по публичному scope относится к общим требованиям к инспекциям кранов.

Inspection может дать:

- наблюдаемые defects;
- condition trend;
- evidence для escalation;
- input для competing model review.

Но даже идеальный inspection report не заменяет load/proof model, если вопрос — design competence.

Обратно тоже верно: расчётный proof не отменяет фактический defect.

Red-Team guard для condition channel:

```text
NO DEFECT OBSERVED
≠
DEFECT ABSENT
≠
CONDITION ACCEPTABLE
```

Сила отрицательного inspection result зависит от scope, access/coverage, method capability, procedure, surface/state, measurement uncertainty и competence. Невидимая/неохваченная зона не превращается в доказанно здоровую только потому, что report не содержит finding.

### Two-channel rule

```text
DESIGN/PROOF CHANNEL ≠ CONDITION/INSPECTION CHANNEL
```

Они должны обмениваться evidence, но не поглощать друг друга.

# Блок 38. Wire-rope discard/condition question имеет собственный method/qualification boundary

`ISO 4309:2017` остаётся опубликованным текущим документом в нашем Source Gate, но отмечен к пересмотру; Edition 6 draft — watch only.

D4 lesson использует это только для boundary:

- current condition/discard assessment — отдельная method family;
- draft не подменяет действующую редакцию;
- numerical discard criteria нельзя реконструировать из вторичных фрагментов;
- specialist NDT/MRT interpretation требует соответствующей компетенции.

### Guard

Causal model D3 «похоже на bending/contact degradation» не является discard verdict.

# Блок 39. Monitoring и design working period context — это история, а не автоматический remaining-life calculator

`ISO 12482:2014` остаётся опубликованным и отмечен к пересмотру; Edition 2 draft — development watch only.

Для D4:

- monitoring record может менять priors и inspection priority;
- history completeness должна быть проверена;
- missing cycles/load spectrum cannot be silently reconstructed;
- numeric remaining-life conclusion в SkillsVault остаётся locked, пока не определён exact applicable framework и не собран **требуемый именно этим методом** набор history/condition/inspection/other inputs вместе с competent review/authority.

### Forbidden shortcut

> «Счётчик показывает N часов, проектно было M, значит осталось M-N.»

Без exact method это не engineering remaining-life proof.

# Блок 40. Evidence conflict между duty, inspection и model — повод для review, а не голосования

Пример:

- calculated global reactions выглядят умеренными;
- inspection показывает локальную recurrent signature;
- duty log фиксирует frequent transient events;
- geometry survey показывает deviation от assumed configuration.

Нельзя выбрать «две из трёх источников». Нужно построить competing explanations:

1. model-form insufficient;
2. input history incomplete;
3. geometry mapping wrong;
4. inspection signature has another mechanism;
5. measurement/data quality issue.

Затем выбрать distinguishing evidence.

### D3 → D4 bridge

D3 создаёт competing causal models. D4 спрашивает, какой **formal/validated method** способен различить их и поддержать нужное решение.

## Рабочий протокол VIII-A. Evidence-channel matrix

| Channel | Typical question | Strength | Boundary |
|---|---|---|---|
| classification | service-condition class/context | duty framing | not actual full history |
| monitoring | accumulated operation | trend/history | data completeness required |
| inspection | current observable condition | defect evidence | not design proof |
| OEM/passport | equipment-specific declared data | authoritative input | edition/configuration specific |
| load model | forces/combinations | proof input | source/method scope |
| NDT/MRT | specialist internal/condition evidence | high value when qualified | qualification + interpretation method |

D4 review explicitly labels each channel.

## Рабочий протокол VIII-B. Timeline reconstruction

Для degradation/condition question полезна synchronized timeline:

```text
T0 configuration installed
T1 duty change
T2 first indication
T3 maintenance intervention
T4 reaction change
T5 inspection
T6 current state
```

Каждое событие имеет evidence source and confidence. Это объединяет D3 causal discipline с D4 method governance.

### Guard

Missing interval ≠ no events. Monitoring gap должен быть visible.

## Рабочий протокол VIII-C. Inspection measurement uncertainty

Даже «визуальный факт» имеет procedure dependence:

- access/visibility;
- lighting;
- measurement tool;
- inspector repeatability;
- location marking;
- image scale;
- threshold definition.

Если D4 использует inspection result как validation evidence, measurement method должен быть sufficiently controlled.

## Рабочий протокол VIII-D. Condition finding versus equipment action

Пример ladder:

```text
INDICATION OBSERVED
→ inspection method class identified
→ condition assessed by competent method/person
→ significance integrated with design/proof/history evidence
→ required action determined by applicable rules/authority
```

SkillsVault training can support first and reasoning steps, but not impersonate qualified inspection/authority.

## Рабочий протокол VIII-E. Remaining-life evidence package

Прежде чем вообще обсуждать numeric remaining-life, сначала получи **exact applicable method и его required-input list**. Как SkillsVault stop-check полезно затем проверить, не отсутствуют ли decision-driving categories вроде:

- design basis / configuration version;
- load/duty history;
- material/detail data;
- current condition/inspection, если она требуется методом/решением;
- repairs/modifications history;
- uncertainty treatment;
- competent authority/reviewer.

Это **не универсальный нормативный перечень** и не заменяет formal method. Конкретный метод может требовать иной состав/definitions. Если его critical inputs absent, verdict locked.

## Рабочий протокол VIII-F. Draft watch discipline

Draft source полезен для watchlist:

- понимать, что область развивается;
- заранее планировать revalidation;
- не замораживать assumption «стандарт никогда не изменится».

Но draft нельзя смешивать с published current requirement, если он не имеет соответствующего статуса/применимости.

### Watch record

```text
CURRENT PUBLISHED:
DEVELOPMENT COMPANION:
STAGE:
WHAT COULD AFFECT OUR CONTENT:
RECHECK TRIGGER:
```

## Failure modes Part VIII

- class label used as actual history;
- monitoring counter treated as remaining life;
- inspection absence treated as proof of absence without observability;
- draft used as current requirement;
- NDT signal interpreted without qualified method;
- calculation used to overrule observed defect;
- observed defect used to claim original design incompetence without proof chain.

### Mini-review Part VIII

Для каждого evidence item назови его **role**, а потом назови хотя бы один вывод, который он не имеет права делать.

# Итог Части VIII

Duty, inspection и monitoring — мощные evidence channels. Их сила именно в том, что они **разные**.

# Мост к Части IX

Финал D4 — собрать все слои в technical review, сравнить методы, оформить stop rules и передать решение правильному authority.
