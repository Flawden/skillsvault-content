# CRN-M-04 / D1 — Scope v1

## Mission

Дать новичку безопасную и технически полезную mental model того, как редукторы и муфты работают внутри кранового механизма передачи мощности: от двигателя через соединительные элементы и ступени передачи к исполнительному звену.

D1 должен научить видеть **цепочку передачи движения и момента**, различать функции редуктора и муфты, распознавать основные типы узлов и понимать, где заканчивается учебное объяснение и начинается необходимость точной документации, расчёта и инженерной authority.

D1 не является руководством по проектированию, выбору, центровке, ремонту, диагностике или допуску привода к эксплуатации.

## D1 learner should be able to

1. отличать редуктор, мотор-редуктор, муфту и тормоз как разные элементы привода с разными функциями;
2. прослеживать концептуальный power / torque path: двигатель → муфта/соединение → входной вал → зубчатые ступени → выходной вал → следующая муфта/исполнительный механизм;
3. объяснять, что редуктор изменяет соотношение частоты вращения и крутящего момента через передаточное отношение, но не создаёт энергию;
4. распознавать на уровне принципа цилиндрические, конические/коническо-цилиндрические, планетарные и червячные схемы без выбора типа по памяти;
5. различать ведущий и ведомый элементы пары, входной и выходной вал, корпус, подшипниковые опоры, уплотнения и систему смазки как части реального редуктора;
6. объяснять, что муфта соединяет вращающиеся валы и передаёт момент, а способность компенсировать осевые, радиальные или угловые смещения зависит от конкретного типа муфты;
7. распознавать зубчатую, упругую/эластомерную, фланцевую/жёсткую и другие распространённые coupling families только на уровне функции и конструкции, не назначая их для реального механизма;
8. объяснять качественно, почему соосность, крепление, состояние соединительных элементов и смазка влияют на работу drive train, не придумывая допустимые значения;
9. распознавать наблюдаемые evidence families: необычный шум, нагрев, вибрацию, утечку смазки, видимое повреждение зубьев, повреждение/износ элемента муфты, ослабление/смещение — как повод для проверки и эскалации, а не как готовый диагноз;
10. различать описание наблюдаемого повреждения, гипотезу причины, инженерный расчёт, inspection/acceptance criterion и эксплуатационное решение;
11. понимать, что реальные torque ratings, service factors, alignment limits, lubricant grades, backlash limits, vibration/temperature limits и допустимое состояние берутся из применимого стандарта и документации конкретного оборудования;
12. явно STOP и запрашивать паспорт/OEM/чертёж/стандарт/компетентного специалиста перед любым equipment-specific решением.

## In scope

- место редуктора и муфты в крановом механическом приводе;
- качественная связь скорость ↔ передаточное отношение ↔ момент без расчёта несущей способности;
- входной/выходной вал, корпус, ступени, зубчатые пары, подшипниковые опоры, уплотнения и смазка на recognition level;
- распространённые families редукторов на recognition level;
- функция муфты как элемента передачи момента между валами;
- limited-misalignment concept: некоторые муфты могут допускать заданные конструкцией осевые/радиальные/угловые смещения, но значения зависят от типа и документации;
- зубчатая муфта как один конкретный coupling family, отдельно от остальных;
- качественное различие wear/damage observation и engineering diagnosis;
- leakage / unusual noise / heat / vibration / visible damage как evidence lanes, не как автоматические verdicts;
- роль lubrication and alignment как условий корректной работы без самостоятельного подбора масла или допусков;
- documentation hierarchy: applicable standard → actual drawing/passport/OEM/manual → qualified engineering/inspection authority.

## Explicitly out of D1

- расчёт контактных напряжений, изгибной прочности зубьев, scuffing/micropitting/pitting capacity или любых коэффициентов ISO 6336;
- подбор модуля, числа зубьев, угла наклона, материалов, термообработки, ширины венца или геометрии зубчатой передачи;
- расчёт валов, шпонок, шлицев, болтов, посадок, подшипников, ресурса или усталости;
- расчёт efficiency, heat balance, thermal rating, service factor, duty factor или допустимого перегруза;
- выбор типоразмера редуктора или муфты по моменту/мощности/режиму;
- численные alignment limits, допустимые радиальные/угловые/осевые смещения и монтажные допуски;
- backlash/wear/tooth-damage/vibration/noise/temperature acceptance or discard limits;
- выбор марки/вязкости/интервала замены смазки без документации конкретного редуктора;
- вскрытие редуктора, регулировка зацепления, центровка, замена подшипников, ремонт зубьев или муфты как пошаговая field instruction;
- NDT, root-cause verdict, remaining-life prediction или return-to-service decision;
- brake design, brake adjustment and brake acceptance — это отдельная тема CRN-M-05;
- разрешение продолжить эксплуатацию после обнаруженного дефекта.

## Mechanics boundary

D1 MAY use the idealized relationship qualitatively:

```text
higher reduction ratio
→ lower output speed for a given input speed
→ correspondingly different torque level in the power path
```

It MAY introduce the symbol `i` as a ratio concept and use arrows showing torque/speed flow.

D1 MUST NOT turn this into gear rating, shaft sizing, coupling selection or actual machine acceptance. Losses, efficiencies, dynamic factors and real ratings remain source-bound.

## Coupling boundary

A coupling is not automatically a “misalignment fixer”.

D1 may teach:

```text
SHAFT A → COUPLING → SHAFT B
```

and that **some coupling designs** accommodate limited axial/radial/angular displacement by design.

D1 must also teach:

```text
coupling family
+ exact size/design
+ operating speed/torque
+ shaft/hub arrangement
+ OEM instructions
= required before any real alignment or selection claim
```

ГОСТ Р 50895-2025 is a current anchor for **gear couplings** within its scope. Its scope must not be silently generalized to elastomeric, rigid, flange, chain, disc or other coupling families.

## Damage / inspection boundary

ISO 10825-1:2022 is used as a terminology and condition-description anchor for gear-tooth wear/damage. It explicitly does not turn visible condition into a complete cause analysis or preventive/acceptance method.

Therefore D1 may say “observe, describe, record, compare with applicable documentation, escalate”.

D1 may not say “this appearance means the gearbox is acceptable / condemned / repairable / safe to continue”.

## Lubrication boundary

ISO 12925-1:2024 establishes specifications for lubricants for enclosed gear systems. D1 may teach why lubrication matters and why the correct lubricant family is source-bound.

Actual lubricant grade, viscosity, compatibility, fill quantity, change interval and substitution remain locked to the actual reducer documentation and applicable lubricant specification.

## Safety / authority boundary

The learner may identify the drive-train elements, trace power transfer, recognize a coupling family or obvious evidence that warrants attention, and state what documentation is missing.

The learner does **not** gain authority to select a reducer/coupling, set alignment, approve backlash, diagnose a failure cause, specify lubricant, open/repair/adjust the gearbox, approve a replacement or permit continued operation.
