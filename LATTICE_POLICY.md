<!-- @created: 2026-05-12 -->
<!-- @scope: universal policy for all dancinlab/hexa-* + meta projects -->
<!-- @principle: verify against REAL limits (math + physics), not against self-imposed convenient numbers -->
<!-- @authority: this document supersedes any prior implicit lattice-as-constraint usage in any project -->
---
type: policy-declaration
wave: K
session: 2026-05-12
applies_to:
  - "All dancinlab/hexa-* repositories (chip / bio / cern / codex / cosmos / aura / senses / rtsc / fusion / matter / arts / millennium / forge / meta / etc.)"
  - "Meta projects (anima / nexus / canon / bedrock / void / ticket-out / lumiere)"
  - "All future repositories under the dancinlab org"
preserves:
  - "Native-lattice spec files where n=6 is the explicit invariant (e.g. isa_n6, hexa1, npu_n6) — unchanged"
  - "Existing closure verdicts of each project — unchanged at policy-declaration wave"
verification_standard: "mathematical limits + physical limits + engineering limits — NOT lattice fits"
---

# LATTICE_POLICY.md — 격자가 한계를 정하지 않는다 / Real-Limits-First Verification

> **One sentence**: 프로젝트의 한계(ceiling)는 n=6 격자가 정하는 것이 아니라
> **수학적·물리적 실제 한계**가 정한다. 격자는 *도구*이지 *제약*이 아니며,
> 검증은 *실제 한계*에 대해서 한다.

> **In English**: A project's ceiling is set by **real mathematical and
> physical limits**, NOT by the n=6 lattice. The lattice is a *tool*,
> not a *constraint*. Verification compares against *real limits*.

---

## §1 Rule

### §1.1 The artificial-ceiling problem

n=6 격자(σ(6)=12 / τ(6)=4 / φ(6)=2 / J₂(6)=24)는 hexa-* 프로젝트의
*organising vocabulary*이다. 그러나 다음 두 사용을 구분한다:

| Usage | 정직성 |
|-------|--------|
| ✓ **Native invariant** — 프로젝트가 n=6 격자를 *명시적 design invariant*로 사용 (예: `hexa-chip/isa_n6/`, `hexa-chip/hexa1/`) | 유효 — 격자가 spec의 핵심 |
| ✗ **Self-imposed ceiling** — 프로젝트가 "n=6과 호환되어야 한다"는 *제약*으로 격자를 사용 | 무효 — artificial bottleneck |

자가-부과 ceiling 패턴 예시 (모두 정직성 위반):

- "이 분석은 n=6에 fit되니까 옳다" → fit-to-convenient-number
- "역량 한계는 J₂=24이다" → 산술 한계를 물리 한계로 위장
- "데이터가 σ·φ=24 항등식을 만족하므로 PASS" → tautology
- "외부 회사도 n=6을 따른다는 χ² test" → over-claim

### §1.2 The real ceiling — math + physics + engineering

모든 프로젝트의 한계 검증 기준은 **실제 한계 (real limits)**:

#### 📐 Mathematical limits (analytic)

| Limit | Formula | Application |
|-------|---------|-------------|
| Shannon entropy | H = −Σ p log p | 데이터 / 통신 / 압축 상한 |
| Kolmogorov complexity | K(x) lower bound | 알고리즘 압축 / 학습 한계 |
| Computability | Halting / Rice | 자동화 한계 |
| Bekenstein bound | S ≤ 2πkRE/ℏc | 정보 밀도 한계 (any region) |
| Statistical power | β = f(α, n, effect size) | 가설 검정 검증력 |
| PAC-learning bound | sample complexity ~ VC/ε² | ML 일반화 한계 |

#### ⚛️ Physical limits (constants + laws)

| Limit | Formula | Application |
|-------|---------|-------------|
| Speed of light | c = 2.998 × 10⁸ m/s | 정보 / 신호 propagation 한계 |
| Planck constant | ℏ = 1.055 × 10⁻³⁴ J·s | 양자 정밀도 한계 |
| Boltzmann constant | k = 1.381 × 10⁻²³ J/K | 열적 잡음 / Landauer 한계 |
| Stefan-Boltzmann | P = σεAT⁴ | 복사 방열 한계 (예: terafab 궤도 1,300 km²) |
| Carnot efficiency | η ≤ 1 − T_c/T_h | 열기관 효율 상한 |
| Bremermann limit | 10⁵⁰ ops/s/kg | 계산 속도 상한 |
| Margolus-Levitin | n ≤ 2E/πℏ | 양자 상태 전이 속도 |
| Bekenstein-Hawking | S = A/4ℓ_P² | 블랙홀 엔트로피 |

#### 🏭 Engineering limits (industry / supply / regulatory)

| Limit | Source | Application |
|-------|--------|-------------|
| ASML High-NA EUV throughput | ~10대/년 생산 (공개) | semiconductor capacity ceiling |
| ERCOT grid capacity | TX 공개 데이터 | fab 전력 ceiling |
| Starship reusable cost | $X/kg (실측) | orbital deploy 경제 한계 |
| TCEQ permit envelope | 공개 filing | 수질·대기 환경 한계 |
| CHIPS Act 잔여 펀딩 | 공개 통계 | 보조금 한계 |
| Human-engineer pool | BLS 통계 | 인력 ramp 한계 |
| Patent thicket | USPTO 공개 | IP-free 설계 공간 |

### §1.3 Verification standard

각 프로젝트의 verify 스크립트(`verify_*.py` / `verify/cli.hexa` 등)는
다음 기준을 따른다:

1. **격자 anchor 단독 사용 금지**: `σ·φ = 24` / `1/2 + 1/3 + 1/6 = 1`
   같은 격자-동어반복을 HARD 체크로 *단독* 배치하지 않는다.
   (자기-일관성 보조 체크로는 허용 — 단, 외부 도메인에 적용 금지.)
2. **실제 한계 anchor 우선**: 각 프로젝트의 검증 anchor는 §1.2
   table에서 적어도 1개 이상을 사용한다 (예: Stefan-Boltzmann 방열판
   floor / Shannon 통신 한계 / Carnot 효율 ceiling / 공개 산업 ceiling).
3. **Falsifier 트리거**: 외부 데이터 fit (χ² to lattice / 자가-부과
   patterns)이 아니라 *physical / industry threshold* 초과 여부로
   판정 (예: F-X-N = "공개 산업 ceiling을 N% 이상 넘으면 falsified").
4. **Over-claim 회피**: 외부 entity가 "이 격자를 따른다"는 어떠한
   주장도 금지. 외부 도메인 분석은 그 도메인의 *고유 invariant*로 진행.

---

## §2 Why — 자가-부과 ceiling이 해로운 이유

1. **🪞 Tautology**: `σ·φ = 24`는 항상 PASS한다. 항상 PASS하는
   체크는 검증력 0. "이 분석이 옳다"의 증거가 되지 못한다.
2. **🎭 Over-claim**: 외부 회사 / 외부 시스템 / 외부 도메인이 n=6을
   따른다는 인상을 준다. 그들은 격자에 대해 들어본 적도 없다.
3. **🚪 Constraining**: 새 도메인 설계 시 "n=6에 어떻게 들어맞을까?"
   부터 묻는 자체가 사고를 좁힌다. 도메인의 *진짜* invariant
   (Stefan-Boltzmann / Shannon / Carnot / ASML throughput)가 더
   풍부한 분석 대상인데 격자 fit이 사고를 그쪽으로 끌어당긴다.
4. **📉 χ²-weakness-is-natural**: 외부 데이터가 격자 fit에서 weak
   (p ≈ 0.86, 0.91, 0.95)한 것은 *외부가 격자를 따르지 않기 때문*인데,
   이를 "Mk.II 재포뮬 필요"로 오해하면 retrofit이 무한 반복.
5. **🧱 Real ceiling 무시**: 자가-부과 ceiling을 신경 쓰는 동안
   진짜 ceiling (예: 궤도 운용 1,300 km² 방열판 / ASML 10대/년) 분석을
   놓친다.

---

## §3 Application across projects

이 정책은 dancinlab 전 프로젝트에 적용:

### §3.1 격자-네이티브 (n=6 사용 허용)

다음 프로젝트의 격자-네이티브 컴포넌트는 격자 사용 유지:

- `hexa-chip/` — `isa_n6/` / `hexa1/` / `npu_n6/` / `gpgpu_n6/` /
  `hexa_ai_native_n6/`
- `hexa-lang/` — n=6이 언어 spec의 일부일 때
- `bedrock/` — `spec/`이 n=6을 명시적으로 정의할 때
- `anima/` / `nexus/` — n=6 invariant lattice 정의 자체를 호스팅할 때

### §3.2 격자-수용자 (격자를 "도구"로만 사용, 제약 X)

다음은 격자를 organising vocabulary로 *수용*할 수 있지만, **자신의
한계를 격자로 정의하지 않는다**:

- `hexa-bio/` — 생체 시스템 한계는 enzyme kinetics / membrane potential / DNA replication fidelity 등 생체 물리로
- `hexa-cern/` — 가속기 한계는 RF cavity gradient / vacuum / beam dynamics로
- `hexa-cosmos/` — 우주론 한계는 Friedmann / Bekenstein-Hawking / Planck constants로
- `hexa-matter/` — 물질 한계는 thermodynamics / phonon dispersion / crystal symmetry로
- `hexa-fusion/` — 핵융합 한계는 Lawson criterion / triple product / first-wall material limits로
- 기타 모든 hexa-* 도메인

### §3.3 외부 envelope (격자 강제 매핑 금지)

외부 entity / 회사 / 시스템을 흡수하는 envelope (terafab / exynos /
TSMC / Intel / 향후 envelopes)은:

- ✗ 격자 anchor를 verify HARD 체크에 추가하지 않음
- ✗ 외부 데이터의 격자 fit (χ² to lattice) falsifier 추가하지 않음
- ✓ Honest disclosure에 "n=6 lattice is our framing, not <entity>'s
  design" 한 줄 명시
- ✓ Falsifier는 외부 entity의 *공개 데이터 threshold*로만 정의
  (예: F-TERAFAB-9 = TCEQ permit envelope / F-INTEL-3 = Intel 14A external customer date)

---

## §4 Forward-looking cleanup (Wave L 후보)

다음 wave에서 사용자 승인 시 일괄 진행:

| 후보 | 영향 |
|------|------|
| 모든 envelope verify에서 격자 HARD 체크 제거 | tautology 제거 |
| F-TERAFAB-7 / F-EXYNOS-7 / F-TSMC-7 / F-INTEL-7 χ² test 완전 삭제 | over-claim falsifier 제거 |
| 각 프로젝트의 verify를 §1.2 real-limits anchor로 재배치 | 검증력 증가 |
| 각 envelope의 §15 REFERENCES에 §1.2 real-limits table 인용 추가 | 실제 한계 가시화 |
| `bedrock/spec/`에 universal `real_limits.spec.yaml` 등록 | 정책 SSOT화 |

이 변경들은 **검증력을 떨어뜨리지 않는다** — 격자 anchor는 검증력
이미 0이었기 때문. 실질 검증은 real-limits anchor + 외부 데이터
threshold falsifier가 한다.

---

## §5 Operator memo

> "모든 프로젝트가 n=6 때문에 한계 스스로 정하지 않도록,
> 수학적·물리적 한계를 기준으로 검증하도록"
> (사용자 지시, 2026-05-12)

새 작업/도메인을 받을 때:

1. ❌ 첫 질문 "이게 n=6에 어떻게 들어맞지?" 하지 않음
2. ✅ 첫 질문 "이 도메인의 *진짜* invariant는 뭐지?" — 물리 상수 /
   수학 한계 / 산업 ceiling을 찾는다
3. ✅ 검증 anchor는 §1.2의 real limits에서 1개 이상
4. ✅ 격자가 *자연스럽게* 등장하면 도구로 사용, 등장 안 하면 생략

---

## §6 References

- `bedrock/spec/` (이 정책의 SSOT 등록 후보)
- 각 프로젝트의 `verify_*.py` / `verify/cli.hexa` (real-limits anchor
  대상)
- `hexa-chip/CHANGELOG.md` Wave K 엔트리 (정책 origin)
- `hexa-chip/terafab/orbital-physics-deep.md` (real-limits 적용 모범
  사례 — Stefan-Boltzmann sweep + Carnot ceiling + mass budget)
- `hexa-chip/terafab/competitive-landscape.md` (engineering-limits
  적용 모범 — ASML High-NA EUV / ERCOT / CHIPS Act)

---

## §7 Distribution

이 문서는 **dancinlab 전 프로젝트에 동일 사본으로 배포**되었다 (Wave K,
2026-05-12). 각 프로젝트 루트의 `LATTICE_POLICY.md`는 이 문서와
byte-identical (frontmatter `applies_to` 제외).

### Distribution target list (43)

```
meta:           anima · nexus · canon · bedrock · void · ticket-out · lumiere
core domain:    hexa-chip · hexa-bio · hexa-cern · hexa-codex · hexa-cosmos
                hexa-aura · hexa-senses · hexa-rtsc · hexa-fusion · hexa-matter
                hexa-arts · hexa-millennium · hexa-forge · hexa-meta
                hexa-lang · hexa-sscb · hexa-time · hexa-space · hexa-physics
extended:       hexa-antimatter · hexa-apps · hexa-bot · hexa-brain
                hexa-earth · hexa-energy · hexa-fantasy · hexa-farm
                hexa-finance · hexa-grid · hexa-medic · hexa-mind
                hexa-mobility · hexa-os · hexa-pet · hexa-scope
                hexa-ufo
```

각 프로젝트의 cleanup (Wave L)은 *개별 일정으로 진행* — 정책 선언은
즉시, 코드 적용은 도메인-별 점진적.

---

*End of LATTICE_POLICY.md — 격자가 사고를 좁히지 않도록, 수학·물리·
공학의 실제 한계가 검증 기준이 되도록.*
