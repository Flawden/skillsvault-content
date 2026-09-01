# CRN-M-01 — Канаты и цепи
# D4 Practice v1
## Экспертные интегрированные кейсы A–H

---

# Зачем эта практика

D4 нельзя проверить вопросом:

> «Что означает D/d?»

или:

> «Что такое LF?»

Здесь проверяется другая способность:

> **можешь ли ты принять инженерную задачу с неполными и конфликтующими данными, не придумать отсутствующее, выбрать допустимые методы, различить evidence и authority — и выдать ограниченный вывод, который другой инженер сможет проверить?**

Поэтому все восемь кейсов намеренно содержат:

- правдивые, но неполные данные;
- лишние данные;
- несколько правдоподобных моделей;
- соблазнительный короткий ответ;
- границу полномочий;
- минимум один вопрос, на который нельзя честно ответить числом.

---

# Общий контракт выполнения

Для **каждого** кейса используй один и тот же каркас.

## 1. Decision question

Одним предложением:

> какой именно вопрос ты решаешь?

Не «разобраться с канатом», а конкретный decision question.

---

## 2. Evidence ledger

Раздели данные на:

```text
FACT
INFERENCE
ASSUMPTION
UNKNOWN
```

Нельзя переносить строку из `UNKNOWN` в `FACT`, потому что она «скорее всего такая».

---

## 3. Competing models

Минимум две, обычно 3–5 моделей.

Для каждой:

- что она объясняет;
- чего не объясняет;
- какие наблюдения ожидает.

---

## 4. Source / method fit

Для каждого существенного вывода укажи:

- какой класс источника нужен;
- какой метод нужен;
- что этот метод имеет право выдавать;
- что он **не** имеет права выдавать.

Не требуется угадывать номер закрытой таблицы.

---

## 5. Differentiating evidence

Назови следующий факт / измерение / документ, который **по-разному** изменит вес конкурирующих моделей.

---

## 6. Sensitivity / uncertainty

Укажи:

- какая неизвестность сильнее всего меняет решение;
- что произойдёт, если она окажется на одном или другом конце правдоподобного диапазона.

---

## 7. Bounded conclusion

Выход должен иметь один из допустимых статусов:

```text
SUPPORTED
CONDITIONALLY SUPPORTED
NOT DEMONSTRATED
INSUFFICIENT DATA
INCOMPATIBILITY / FAILURE MODE IDENTIFIED
```

Статус — не эксплуатационное разрешение.

---

## 8. Authority / safety boundary

Отдельно ответь:

- что можно заключить аналитически;
- что требует OEM / design authority / qualified NDT / formal procedure;
- может ли требуемое safety-action наступить **до** завершения root-cause analysis.

---

# Запрещённые сокращения

В Practice нельзя:

```text
"тот же диаметр — значит подходит"

"выше grade — значит лучше"

"D=1 — значит ресурс закончился"

"M4 — значит можно дать remaining life"

"прибор показал — значит причина установлена"

"после замены — значит замена виновата"

"NOT DEMONSTRATED — значит пока можно"

"недостаточно данных — значит ничего делать не надо"
```

---

# Кейс A — Четыре документа и один неправильный вопрос
## Source architecture / applicability

### Ситуация

На кране требуется заменить стальной канат.

В распоряжении инженера:

### Документ A
Действующий национальный стандарт по крановым канатам и их эксплуатации.

### Документ B
Более новый международный стандарт по выбору wire ropes, drums and sheaves.

### Документ C
Каталог изготовителя нового каната.

### Документ D
Руководство изготовителя крана, выпущенное вместе с машиной.

Из документов известно:

- A содержит формальную эксплуатационную рамку и критерии состояния;
- B технически новее в части выбора rope drive;
- C содержит product-specific данные нового каната;
- D задаёт исходную конфигурацию крана и допустимые варианты по документации изготовителя.

Коллега говорит:

> «Берём B: он самый новый и международный, значит он главный».

Другой говорит:

> «Нет, D всегда выше всего, потому что OEM».

Третий:

> «Нам вообще достаточно C — производитель каната знает свой продукт лучше».

### Дополнительные данные

- юрисдикция объекта известна;
- договорная техническая база проекта не предоставлена;
- не подтверждено, изменялась ли система после ввода в эксплуатацию;
- вопрос официального redesign не ставился.

---

## Твоя задача

1. Сформулировать decision question.
2. Разделить четыре документа по **типу утверждения**, на который каждый имеет право отвечать.
3. Показать, почему нельзя построить одну вечную лестницу:
   `B > A > D > C`.
4. Назвать минимум три разных вопроса, для которых приоритет источников будет различаться.
5. Определить, чего не хватает, чтобы ответить на вопрос:
   > «какой документ юридически/контрактно обязателен именно здесь?»
6. Выдать bounded conclusion.

### Ловушка

```text
NEWER
≠
AUTOMATICALLY APPLICABLE
```

### Обязательный артефакт ответа

Таблица:

| Claim | Needed authority | Best available source | Gap |
|---|---|---|---|

---

# Кейс B — «Диаметр тот же, прочность выше»
## Rope replacement compatibility

### Ситуация

Старый канат:

```text
d_nom = 20 mm
construction = known
rotation class = known
minimum breaking force = known
OEM-approved for existing crane
```

Кандидат:

```text
d_nom = 20 mm
minimum breaking force = 8% higher
different construction
different core
different product family
```

Поставщик пишет:

> «Полная замена без ограничений: диаметр тот же, разрывная выше».

Дополнительно известно:

- drum and sheave nominal diameters известны;
- groove condition фактически не измерен;
- многослойная навивка используется;
- product data по rotational behaviour кандидата есть, но пока не сопоставлены с end conditions крана;
- OEM approval кандидата не найден;
- точная текущая геометрия пакета не измерена.

---

## Твоя задача

1. Построить:
   `PRODUCT PASSPORT` старого и нового каната.
2. Построить:
   `SYSTEM PASSPORT`.
3. Разделить проверку по C0–C4.
4. Для C0, C1, C2, C3 указать:
   - что можно доказать сейчас;
   - что пока `UNKNOWN`.
5. Выдать один из четырёх compatibility outputs:
   - `COMPATIBLE`;
   - `CONDITIONALLY COMPATIBLE`;
   - `NOT DEMONSTRATED`;
   - `INCOMPATIBILITY IDENTIFIED`.
6. Отдельно написать, почему выбранный output **не является** автоматически эксплуатационным разрешением.

### Ловушки

```text
SAME d
≠
SAME BEHAVIOUR

HIGHER MBF
≠
SYSTEM COMPATIBILITY

REACHED C2
≠
COMPATIBLE
```

### Обязательный артефакт ответа

Compatibility matrix:

| Parameter / condition | Old | Candidate | System requirement | Evidence state |
|---|---|---|---|---|

---

# Кейс C — Один crossover, три возможных механизма
## Local mechanics / multilayer package / tribology

### Ситуация

На канате локальные обрывы проволок концентрируются возле участка, который при определённой длине намотки проходит crossover.

Известно:

- общий D/d не изменился;
- тип каната тот же;
- gross overload не зарегистрирован;
- нижние слои барабанного пакета визуально выглядят не идеально ровными;
- фактический diameter under load не измерен;
- groove / drum geometry измерена только номинально;
- lubrication condition неоднородна;
- претензионная история монтажа неизвестна;
- повреждение локализовано, а не распределено по всей длине.

Предложены модели:

### M-A
локальный crossover contact / cut-in;

### M-B
неравномерная lubrication + fretting;

### M-C
общий высокий bending severity из-за D/d.

---

## Твоя задача

1. Не выбирая root cause заранее, построить competing-model table.
2. Для каждой модели указать:
   - какие факты поддерживают;
   - какие противоречат;
   - что нейтрально.
3. Определить минимально достаточный model level:
   `M0–M4` для **первого** различения моделей.
4. Назвать условие, при котором переход к M3 оправдан.
5. Назвать минимум четыре missing inputs, без которых M3 станет декоративной.
6. Объяснить:
   > почему неизменный D/d не закрывает вопрос.
7. Выдать bounded conclusion.

### Ловушки

```text
CROSSOVER LOCATION
≠
ROOT CAUSE

D/d
≠
WIRE-LEVEL DAMAGE MODEL

FEA
≠
VALIDITY
```

### Обязательный артефакт ответа

Evidence matrix + предложенный следующий measurement.

---

# Кейс D — «Осталось 73 412 циклов»
## Fatigue / spectrum / remaining-life critique

### Ситуация

Подрядчик выдаёт отчёт:

> «Согласно расчёту оставшийся ресурс каната — 73 412 рабочих циклов».

В приложении есть:

- общий счётчик crane cycles;
- средняя масса груза;
- формула Miner-type cumulative damage;
- S–N correlation из статьи;
- график без uncertainty band.

Не указано:

- как crane cycle переведён в local rope events;
- load spectrum;
- sequence;
- current inspection state в модели;
- future duty scenario;
- точное совпадение rope construction со статьёй;
- endpoint S–N-кривой;
- transfer argument;
- почему `D=1` принят как decision endpoint.

Дополнительно известно:

- статья относится к похожей, но не идентичной конструкции;
- в статье другой D/d;
- на объекте есть reverse bending;
- число `73 412` выдано без диапазона.

---

## Твоя задача

1. Провести Resource Model Red Team.
2. Найти минимум восемь evidence gaps.
3. Отделить:
   - valid descriptive output;
   - possible comparative output;
   - unsupported remaining-life claim.
4. Объяснить, в каком статусе Miner-type calculation **может** остаться полезным.
5. Назвать минимальный набор данных, после которого bounded life estimate вообще можно обсуждать.
6. Записать, какой future assumption обязательно должен появиться.
7. Выдать bounded conclusion без собственного «исправленного числа».

### Ловушки

```text
CRANE CYCLES
≠
ROPE DAMAGE CYCLES

AVERAGE LOAD
≠
SPECTRUM

D=1
≠
UNIVERSAL DISCARD CRITERION

M4
≠
REMAINING-LIFE PERMISSION
```

### Обязательный артефакт ответа

Таблица:

| Report claim | Evidence required | Evidence present? | Status |
|---|---|---|---|

---

# Кейс E — Крюк начал вращаться после замены
## Rotational properties / installation / causality

### Ситуация

После replacement rope:

- при пустом крюке rotation почти отсутствует;
- при тяжёлом грузе возрастает;
- эффект сильнее на большой высоте;
- новый канат другого rotation-resistant family;
- использовался старый канат для протяжки нового;
- не записано, позволял ли temporary connection свободный relative rotation;
- рабочий swivel конструкцией крана не подтверждён;
- product sheet нового каната содержит rotational test data;
- монтажная бригада считает:
  > «раз канат rotation-resistant, проблема точно не в нём».

---

## Твоя задача

1. Построить минимум четыре competing hypotheses:
   - intrinsic rope response;
   - installation twist;
   - system geometry / reeving;
   - end-condition / swivel interaction.
2. Для каждой дать testable prediction.
3. Объяснить:
   ```text
   AFTER REPLACEMENT
   ≠
   CAUSED BY REPLACEMENT
   ```
4. Объяснить, почему product test datum нельзя напрямую перевести в hook rotation.
5. Разделить:
   - temporary installation swivel;
   - permanent working swivel.
6. Назвать данные, после которых можно сузить модели.
7. Выдать bounded conclusion.

### Запрещено

Самовольно рекомендовать:
- изменить рабочую reeving;
- добавить/убрать рабочий swivel;
- менять end fixing;
- «раскрутить» канат экспериментом.

### Обязательный артефакт ответа

Hypothesis → prediction → allowed evidence → authority table.

---

# Кейс F — Новая цепь, старое колесо
## Chain–wheel compatibility

### Ситуация

Электрическая цепная таль.

Старая цепь снята из-за износа.

Новая цепь:

- того же номинального размера;
- Grade T;
- fine-tolerance product family;
- документы изготовителя есть.

После короткой работы:

- появился шум;
- виден контактный polished band;
- measured total elongation пока ниже найденного в инструкции limit;
- состояние pockets цепного колеса количественно не измерено;
- alignment не проверен;
- старая цепь имела выраженный неравномерный износ.

Коллега говорит:

> «Цепь стандартная и правильного grade — значит колесо ни при чём».

---

## Твоя задача

1. Разделить:
   - chain identity;
   - chain–wheel compatibility;
   - in-service condition.
2. Построить evolving-pair causal chain.
3. Определить, что может объяснять повторный быстрый износ.
4. Объяснить:
   ```text
   FINE-TOLERANCE PRODUCT FAMILY
   ≠
   SPECIFIC WHEEL COMPATIBILITY
   ```
5. Отделить inspection от redesign.
6. Назвать необходимые measurements.
7. Выдать bounded conclusion.

### Обязательный артефакт ответа

Chain–wheel evidence table:

| Evidence | Chain | Wheel | System | Interpretation limit |
|---|---|---|---|---|

---

# Кейс G — Визуально «нормально», MRT «плохо»
## Specialized inspection / uncertainty / evidence fusion

### Ситуация

На одном участке каната:

- наружных broken wires почти нет;
- MRT показывает повторяемый локальный LF peak;
- рядом есть умеренный LMA trend;
- baseline снят другим прибором два года назад;
- скорость нынешнего прохода отличается;
- lift-off условия не документированы;
- координата совпадает с зоной многослойного перехода;
- operator считает:
  > «раз сигнал повторяется, значит внутренний обрыв доказан и причина — crossover».

---

## Твоя задача

1. Разнести:
   ```text
   SIGNAL
   DEFECT
   CRITERION
   CAUSE
   ```
2. Определить текущий NDE-E level для каждого утверждения.
3. Показать, что можно считать evidence, а что остаётся interpretation.
4. Объяснить роль baseline и почему:
   ```text
   BASELINE
   ≠
   THRESHOLD
   ```
5. Определить, какие measurement-condition gaps мешают прямому trend comparison.
6. Предложить evidence fusion plan:
   - visual;
   - MRT;
   - geometry;
   - coordinate;
   - duty.
7. Ответить отдельно:
   > если applicable discard criterion уже подтверждён квалифицированной оценкой, нужно ли ждать root-cause proof?
8. Выдать bounded conclusion.

### Обязательный артефакт ответа

NDE evidence ladder + uncertainty list + authority handoff.

---

# Кейс H — Экспертный совет директоров
## Full D4 capstone

### Ситуация

После замены каната на крановом механизме одновременно наблюдаются:

- вращение подвески;
- локальная MRT-индикация возле crossover;
- визуально умеренное состояние;
- повторяющийся шум при одном положении барабана;
- общий duty без явного gross overload;
- неполная монтажная история;
- новый канат того же номинального диаметра и с большей MBF;
- construction отличается;
- OEM explicit approval кандидата не найден;
- точная package geometry не измерена;
- подрядчик предлагает remaining-life model на основе crane cycle counter;
- руководство хочет один ответ:
  > «канат хороший или плохой, можно работать или нет?»

---

## Твоя задача

Ты — автор **технического review**, но не лицо, автоматически имеющее formal operating authority.

Подготовь документ, который включает:

### A. Problem framing
Не более пяти строк.

### B. Facts / inference / assumptions / unknowns
Не менее 12 позиций.

### C. Competing models
Минимум пять.

Обязательно включить:
- compatibility;
- installation/torsion;
- multilayer local mechanics;
- measurement interpretation;
- duty/resource model.

### D. Evidence matrix
Для каждой модели:
- supports;
- contradicts;
- neutral;
- unknown.

### E. Differentiating plan
Три следующих шага в порядке **decision value**, а не удобства.

### F. Sensitivity
Какой один missing input сильнее всего может изменить твою рекомендацию?

### G. Source architecture
Какие типы источников нужны для:
- applicability;
- product property;
- inspection/discard;
- redesign;
- remaining-life model.

### H. Bounded conclusion
Не использовать бинарное:
`good/bad`.

### I. Safety / authority boundary
Разделить:
- analytical conclusion;
- required safe-state action if criterion is met;
- OEM/design handoff;
- NDT qualification boundary.

### J. Audit trail
Написать так, чтобы другой инженер мог восстановить:
- что было известно;
- что предполагалось;
- почему выбран следующий шаг;
- что должно изменить conclusion.

---

# Критерий хорошей D4 Practice

Практика считается выполненной не потому, что ученик назвал правильные термины.

Нужен наблюдаемый переход:

```text
ОТ:
"я думаю, причина такая"

К:
"вот decision question;
вот факты;
вот конкурирующие модели;
вот источник/метод;
вот различающее evidence;
вот uncertainty;
вот bounded conclusion;
вот authority boundary"
```

---

# Что не проверяется на этом этапе

Эта практика **не** требует:

- выполнять реальный design;
- вычислять закрытые OEM formulas;
- выдавать официальный discard decision без применимой процедуры;
- выполнять NDT;
- сертифицировать оборудование;
- угадывать отсутствующие значения.

---

# Следующий этап

После выполнения Practice будет создан отдельный:

`D4 Practice Reasoning`

Он **не будет answer key** в стиле «правильный ответ: B».

Его задача:

- показать сильную структуру рассуждения;
- продемонстрировать competing models;
- показать, где допустимо `INSUFFICIENT DATA`;
- показать, какие evidence действительно разделяют модели;
- показать типичные провалы D4-логики;
- сохранить несколько допустимых путей решения там, где они реально существуют.
