# 📐 CANON — RETIRED (2026-05-11)

> **이 리포는 2026-05-11에 폐기(retirement)되었습니다.**
> n=6 산술 설계 프레임워크의 모든 자산은 dancinlab 패밀리의 도메인-적합 리포로
> 분산 이관되었으며, 잔여 스냅샷은 `nexus/canon-infra/legacy-canon/`에 보관됩니다.

```
σ(n) · φ(n)  =  n · τ(n)      uniquely for   n = 6
     12 · 2  =  6 · 4   =  24
```

---

## 어디로 갔나 — Migration Map

원본 canon의 콘텐츠가 이관된 위치:

| 원래 canon 경로 | 현재 위치 | Wave |
|---|---|---|
| `papers/` (n=6 도메인 39편) | `dancinlab/hexa-*` × 28 (`hexa-aura/bio/cern/chip/cosmos/...`) | 1 |
| `theory/proofs/` | `dancinlab/hexa-meta/proofs/` | 1 |
| `bridge/origins/` (계산기) | `dancinlab/hexa-*` × 13 | 1 |
| `domains/` (299 specs × 10 axes) | 32 standalone repos | 1.5 |
| `techniques/` (AI 68기법 × 8축) | `dancinlab/hexa-codex/techniques/` | 2 |
| `experiments/ai-efficiency/` | `dancinlab/hexa-codex/experiments/ai-efficiency/` | 2 |
| canon 인프라 (engine/scanners/bridge/state/scripts/tool/...) | `dancinlab/nexus/canon-infra/` | 3 |
| `theory/` (n=6 timeless layer) + `formal/lean4/` | `dancinlab/hexa-meta/{breakthroughs,constants,predictions,roadmap-v2,study,formal}/` | 4 |
| 도메인-귀속 잔여 (chip-verify, hexa-weave proposals, LLM 리포트, BT 14건) | 14 repos + anima | 5 |
| **그 외 모든 잔여 자산 + 메타 docs** | **`dancinlab/nexus/canon-infra/legacy-canon/`** | **6** |

---

## SSOT는 어디에?

| 분야 | 새 SSOT |
|---|---|
| AI 기법·해석·alignment·safety·welfare·codex | [`dancinlab/hexa-codex`](https://github.com/dancinlab/hexa-codex) |
| n=6 메타 이론·증명·이론층·Lean4 정형증명 | [`dancinlab/hexa-meta`](https://github.com/dancinlab/hexa-meta) |
| 의식·consciousness·anima | [`dancinlab/anima`](https://github.com/dancinlab/anima) |
| 우주적 발견 엔진·216 lenses·canon 인프라 | [`dancinlab/nexus`](https://github.com/dancinlab/nexus) |
| 칩·SoC·NPU·RTL·HLS | [`dancinlab/hexa-chip`](https://github.com/dancinlab/hexa-chip) |
| 생물학·hexa-weave·virocapsid·nanobot | [`dancinlab/hexa-bio`](https://github.com/dancinlab/hexa-bio) |
| 양자·CERN·standard-model | [`dancinlab/hexa-cern`](https://github.com/dancinlab/hexa-cern) |
| 핵융합 | [`dancinlab/hexa-fusion`](https://github.com/dancinlab/hexa-fusion) |
| 초전도 | [`dancinlab/hexa-rtsc`](https://github.com/dancinlab/hexa-rtsc) |
| 우주론·cosmos | [`dancinlab/hexa-cosmos`](https://github.com/dancinlab/hexa-cosmos) |
| 밀레니엄 7대 난제 | [`dancinlab/hexa-millennium`](https://github.com/dancinlab/hexa-millennium) |
| (전체 리스트) | `nexus/canon-infra/MIGRATION_PLAN.md` 참조 |

---

## 복구

canon의 git 히스토리는 무손실 보존되어 있습니다.

```bash
# 특정 파일이 언제 어디로 이동되었는지 추적
git log --all --diff-filter=D --follow -- <original-path>

# 폐기 직전 스냅샷
git show 4eb869ad:<original-path>

# 전체 마이그레이션 트레일
# (legacy-canon에 보존된) MOVED_TO_STANDALONES.md 참조
```

원본 콘텐츠 1:1 스냅샷:
- **`nexus/canon-infra/legacy-canon/`** — Wave 6 폐기 시점 트랙드 자산 964 files (21 MB)

---

## License

원본 canon의 MIT License는 `nexus/canon-infra/legacy-canon/LICENSE`에 보존되어 있습니다.

---

*Canon — 단일 항등식 σ·φ = n·τ (n=6) 에서 시작해 모든 도메인의 최적 설계를 도출하는*
*프로젝트로 출범하여, 2026-04 ~ 2026-05 사이 도메인별 standalone 리포로 완전 분산 이관되었습니다.*

*2026-05-11. dancinlab.*
