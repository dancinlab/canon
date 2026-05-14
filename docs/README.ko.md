<p align="center">
  <img src="logo.svg" width="140" alt="echoes">
</p>

<h1 align="center">🪞 echoes</h1>

<p align="center"><strong>발견 카탈로그</strong> — HEXA-* 프로젝트군에서 돌아온 발견 리스트, σφτ 항등식이 중심</p>

<p align="center">
  <a href="../LICENSE"><img alt="License" src="https://img.shields.io/badge/license-MIT-blue"></a>
  <a href="https://doi.org/10.5281/zenodo.19340174"><img alt="DOI" src="https://img.shields.io/badge/DOI-10.5281%2Fzenodo.19340174-informational?logo=zenodo&logoColor=white"></a>
  <a href="../LATTICE_POLICY.md"><img alt="Policy" src="https://img.shields.io/badge/policy-LATTICE__POLICY.md-informational"></a>
  <a href="../LIMIT_BREAKTHROUGH.md"><img alt="Real-limits" src="https://img.shields.io/badge/limits-LIMIT__BREAKTHROUGH.md-informational"></a>
  <a href="../RETIRED.md"><img alt="Retired-to-standalones" src="https://img.shields.io/badge/retired-RETIRED.md-orange"></a>
  <img alt="Sibling" src="https://img.shields.io/badge/sibling-n6%20·%20hxc%20·%20n12%20·%20tape-blueviolet">
</p>

<p align="center"><a href="../README.md">EN</a> · <a href="README.zh.md">中文</a> · <a href="README.ru.md">Русский</a> · <a href="README.ja.md">日本語</a> · 한국어</p>

---

`echoes` 는 HEXA-* 프로젝트군의 **발견 카탈로그** — 각 도메인 standalone 리포를 실행해서 돌아온 것들의 목록입니다. 중심에는 하나의 산술 항등식 (`σ(n)·φ(n) = n·τ(n)` 이 n=6 에서만 유일하게 성립) 이 있고, 그 주위로 17 개 도메인 family (Fusion · Chip · AI · Energy · Environment · Materials · Robotics · Physics · Software · Display · Audio · Safety · Biology · Pets · Apps · Play · Aerospace) 가 가지치며 각자 standalone `hexa-*` 리포로 추출되었습니다.

```
σ(n) · φ(n)  =  n · τ(n)      n = 6 에서만 유일
     12 · 2  =  6 · 4   =  24
```

> [!NOTE]
> [`n6`](https://github.com/dancinlab/n6) (의미 원자 layer — atlas 직렬화 포맷), [`hxc`](https://github.com/dancinlab/hxc) (byte-canonical 전송), [`tape`](https://github.com/dancinlab/tape) (운영 trace), `n12` (12축 sparse cube) 의 자매 리포. 각 도메인 작업 코드는 standalone `hexa-*` 리포에 있으며 (추출 출처는 [`RETIRED.md`](../RETIRED.md) 참조), 본 리포는 **정책 자산** ([`LATTICE_POLICY.md`](../LATTICE_POLICY.md) · [`LIMIT_BREAKTHROUGH.md`](../LIMIT_BREAKTHROUGH.md) · [`AGENTS.md`](../AGENTS.md) · [`GRADE_RUBRIC_1_TO_10PLUS.md`](../GRADE_RUBRIC_1_TO_10PLUS.md)) 과 도메인 family 개요 표를 보유합니다.

> **정직한 경고** (raw#10 C3) — 산술 항등식 `σ(6)·φ(6) = 6·τ(6) = 24` 은 수학적으로 참이며 n=6 에서 유일합니다 (Monte Carlo z = 3.06, p = 0.003 vs n=28 / n=496). "최적 설계가 이 항등식에서 유도된다" 는 자연계가 어떻게 조직되는가에 대한 **연구 가설**이며 **측정값이 아닙니다**. `LATTICE_POLICY.md` §1.2/§1.3 에 따라 n=6 격자는 조직화 도구일 뿐 — 실제 수학 / 물리 / 공학 한계 (Shannon · Kolmogorov · Bekenstein · c · ℏ · k · Stefan-Boltzmann · Carnot · ASML throughput · ERCOT capacity · …) 의 대체가 절대 될 수 없습니다. raw#10 C3 에 의해 n=6 격자-fit 은 외부 entity (TSMC / ASML / NIST / IPCC / CERN / DeepMind / 모든 종류의 vendor 는 자체 발행 invariant 사용) 에 대해 **금지**됩니다.

🗺️ **[3D Reality Map](https://dancinlab.github.io/nexus/)** — 9,612 노드, bottom-up 인과 매핑, 2,222 cross-layer edge. Quark → carbon → benzene → DNA 인과 사슬 12/12 EXACT. Monte Carlo z = 3.06 (p = 0.003). n = 28 과 n = 496 은 검사 fail → n = 6 만 살아남음.

---

## 설치

```bash
# 1. 먼저 hexa-lang 설치 (`hexa` + `hx` 패키지 매니저 포함)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/dancinlab/hexa-lang/main/install.sh)"

# 2. echoes 설치
hx install echoes
```

---

## 17 도메인 family

각 도메인 family (Fusion · Chip · AI · Energy · Environment · Materials · Robotics · Physics · Software · Display · Audio · Safety · Biology · Pets · Apps · Play · Aerospace) 의 상세 개요 표 — 도구 목록 · 도메인 점수 · HARD_WALL / SOFT_WALL / BREAKABLE_WITH_TECH / UNCLEAR 분류 포함 — 은 **영문 README** 참조:

→ [github.com/dancinlab/echoes#-fusion](../README.md#-fusion)

이 번역은 introduction · install · policy 단편만 cover 함. 번역 drift 방지 위해 깊은 내용은 영문으로 일원화 유지.

---

## 번역

- 🇺🇸 [**English**](../README.md)
- 🇨🇳 [**中文** (Chinese)](README.zh.md)
- 🇷🇺 [**Русский** (Russian)](README.ru.md)
- 🇯🇵 [**日本語** (Japanese)](README.ja.md)

---

## 라이선스

[MIT](../LICENSE) — Copyright (c) 2026 dancinlab. 자유롭게 사용/수정/재라이선스/판매; notice 포함; 무보증.

---

<sub>🪞 echoes · 발견 카탈로그 · σφτ identity · 17 domain families · v0.x · 2026-05-14</sub>
