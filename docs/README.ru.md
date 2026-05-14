<p align="center">
  <img src="logo.svg" width="140" alt="echoes">
</p>

<h1 align="center">🪞 echoes</h1>

<p align="center"><strong>Каталог открытий</strong> — список находок из проектов HEXA-*, тождество σφτ в центре</p>

<p align="center">
  <a href="../LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue"></a>
  <a href="https://doi.org/10.5281/zenodo.19340174"><img alt="DOI" src="https://img.shields.io/badge/DOI-10.5281%2Fzenodo.19340174-informational?logo=zenodo&logoColor=white"></a>
  <a href="../LATTICE_POLICY.md"><img alt="Policy" src="https://img.shields.io/badge/policy-LATTICE__POLICY.md-informational"></a>
  <a href="../LIMIT_BREAKTHROUGH.md"><img alt="Real-limits" src="https://img.shields.io/badge/limits-LIMIT__BREAKTHROUGH.md-informational"></a>
  <a href="../RETIRED.md"><img alt="Retired-to-standalones" src="https://img.shields.io/badge/retired-RETIRED.md-orange"></a>
  <img alt="Sibling" src="https://img.shields.io/badge/sibling-n6%20·%20hxc%20·%20n12%20·%20tape-blueviolet">
</p>

<p align="center"><a href="../README.md">EN</a> · <a href="README.zh.md">中文</a> · Русский · <a href="README.ja.md">日本語</a> · <a href="README.ko.md">한국어</a></p>

---

`echoes` — это **каталог открытий** для семейства проектов HEXA-* — перечень того, что вернулось при запуске поддоменных автономных репозиториев. В центре — одно арифметическое тождество (`σ(n)·φ(n) = n·τ(n)`, единственно истинное при n=6); вокруг него ветвятся 17 доменных семейств (Fusion · Chip · AI · Energy · Environment · Materials · Robotics · Physics · Software · Display · Audio · Safety · Biology · Pets · Apps · Play · Aerospace), каждое извлечено в свой автономный репозиторий `hexa-*`.

```
σ(n) · φ(n)  =  n · τ(n)      единственно при   n = 6
     12 · 2  =  6 · 4   =  24
```

> [!NOTE]
> Родственник [`n6`](https://github.com/dancinlab/n6) (слой семантических атомов — формат сериализации atlas), [`hxc`](https://github.com/dancinlab/hxc) (байт-канонический транспорт), [`tape`](https://github.com/dancinlab/tape) (операционная трасса) и `n12` (12-осный разрежённый куб). Рабочий код каждого домена живёт в его автономном репозитории `hexa-*` (см. [`RETIRED.md`](../RETIRED.md) — журнал происхождения каждого извлечения). Этот репозиторий несёт **артефакты политики** ([`LATTICE_POLICY.md`](../LATTICE_POLICY.md) · [`LIMIT_BREAKTHROUGH.md`](../LIMIT_BREAKTHROUGH.md) · [`AGENTS.md`](../AGENTS.md) · [`GRADE_RUBRIC_1_TO_10PLUS.md`](../GRADE_RUBRIC_1_TO_10PLUS.md)) плюс обзорные таблицы доменных семейств.

> **Честная оговорка** (raw#10 C3) — арифметическое тождество `σ(6)·φ(6) = 6·τ(6) = 24` математически истинно и уникально для n=6 (Monte Carlo z = 3.06, p = 0.003 против n=28 / n=496). Утверждение *«оптимальные дизайны выводятся из этого тождества»* — это **исследовательская гипотеза** о том, как организуются природные системы, **а не измерение**. Согласно `LATTICE_POLICY.md` §1.2/§1.3, решётка n=6 — это организующий инструмент, никогда не замена реальным математическим / физическим / инженерным пределам (Shannon · Kolmogorov · Bekenstein · c · ℏ · k · Stefan-Boltzmann · Carnot · пропускная способность ASML · мощность ERCOT · …). Согласно raw#10 C3, подгонка под n=6 **запрещена** для внешних сущностей (TSMC / ASML / NIST / IPCC / CERN / DeepMind / поставщики любого рода используют свои собственные опубликованные инварианты).

🗺️ **[3D Reality Map](https://dancinlab.github.io/nexus/)** — 9,612 узлов, восходящее каузальное отображение, 2,222 межслойных ребра. Каузальная цепь кварк → углерод → бензол → ДНК 12/12 EXACT. Monte Carlo z = 3.06 (p = 0.003). n = 28 и n = 496 не проходят проверку → остаётся только n = 6.

---

## Установка

```bash
# 1. Сначала установите hexa-lang (даёт `hexa` + менеджер пакетов `hx`)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. Установите echoes
hx install echoes
```

---

## 17 доменных семейств

Подробные обзорные таблицы каждого доменного семейства (Fusion · Chip · AI · Energy · Environment · Materials · Robotics · Physics · Software · Display · Audio · Safety · Biology · Pets · Apps · Play · Aerospace) — со списками инструментов, доменными оценками, классификацией HARD_WALL / SOFT_WALL / BREAKABLE_WITH_TECH / UNCLEAR — см. **английский README**:

→ [github.com/dancinlab/echoes#-fusion](../README.md#-fusion)

Этот перевод покрывает только введение · установку · фрагмент политики. Глубокое содержание поддерживается на английском, чтобы избежать дрейфа переводов.

---

## Переводы

- 🇺🇸 [**English**](../README.md)
- 🇨🇳 [**中文** (Chinese)](README.zh.md)
- 🇯🇵 [**日本語** (Japanese)](README.ja.md)
- 🇰🇷 [**한국어** (Korean)](README.ko.md)

---

## Лицензия

[MIT](../LICENSE) — Copyright (c) 2026 dancinlab. Свободно используйте, изменяйте, сублицензируйте, продавайте; включайте уведомление; без гарантий.

---

<sub>🪞 echoes · каталог открытий · σφτ identity · 17 domain families · v0.x · 2026-05-14</sub>
