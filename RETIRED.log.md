# 📐 CANON — RETIRED (2026-05-11)

> **This repo was retired on 2026-05-11.**
> Every asset of the n=6 arithmetic design framework was distributed out to the
> domain-appropriate repos of the dancinlab family, and the residual snapshot is
> kept under `nexus/canon-infra/legacy-canon/`.

```
σ(n) · φ(n)  =  n · τ(n)      uniquely for   n = 6
     12 · 2  =  6 · 4   =  24
```

---

## Where it went — migration map

Where the original canon content was moved to:

| Original canon path | Current location | Wave |
|---|---|---|
| `papers/` (39 n=6 domain papers) | `dancinlab/hexa-*` × 28 (`hexa-aura/bio/cern/chip/cosmos/...`) | 1 |
| `theory/proofs/` | `dancinlab/hexa-meta/proofs/` | 1 |
| `bridge/origins/` (calculators) | `dancinlab/hexa-*` × 13 | 1 |
| `domains/` (299 specs × 10 axes) | 32 standalone repos | 1.5 |
| `techniques/` (68 AI techniques × 8 axes) | `dancinlab/hexa-codex/techniques/` | 2 |
| `experiments/ai-efficiency/` | `dancinlab/hexa-codex/experiments/ai-efficiency/` | 2 |
| canon infrastructure (engine/scanners/bridge/state/scripts/tool/...) | `dancinlab/nexus/canon-infra/` | 3 |
| `theory/` (n=6 timeless layer) + `formal/lean4/` | `dancinlab/hexa-meta/{breakthroughs,constants,predictions,roadmap-v2,study,formal}/` | 4 |
| Domain-attributable residue (chip-verify, hexa-weave proposals, LLM reports, 14 BTs) | 14 repos + anima | 5 |
| **All other residual assets + meta docs** | **`dancinlab/nexus/canon-infra/legacy-canon/`** | **6** |

---

## Where is the SSOT?

| Field | New SSOT |
|---|---|
| AI techniques · interpretability · alignment · safety · welfare · codex | [`dancinlab/hexa-codex`](https://github.com/dancinlab/hexa-codex) |
| n=6 meta theory · proofs · theory layer · Lean4 formal proofs | [`dancinlab/hexa-meta`](https://github.com/dancinlab/hexa-meta) |
| Consciousness · anima | [`dancinlab/anima`](https://github.com/dancinlab/anima) |
| Cosmic discovery engine · 216 lenses · canon infrastructure | [`dancinlab/nexus`](https://github.com/dancinlab/nexus) |
| Chip · SoC · NPU · RTL · HLS | [`dancinlab/hexa-chip`](https://github.com/dancinlab/hexa-chip) |
| Biology · hexa-weave · virocapsid · nanobot | [`dancinlab/hexa-bio`](https://github.com/dancinlab/hexa-bio) |
| Quantum · CERN · standard model | [`dancinlab/hexa-cern`](https://github.com/dancinlab/hexa-cern) |
| Fusion | [`dancinlab/hexa-fusion`](https://github.com/dancinlab/hexa-fusion) |
| Superconductivity | [`dancinlab/hexa-rtsc`](https://github.com/dancinlab/hexa-rtsc) |
| Cosmology · cosmos | [`dancinlab/hexa-cosmos`](https://github.com/dancinlab/hexa-cosmos) |
| The seven Millennium Prize problems | [`dancinlab/hexa-millennium`](https://github.com/dancinlab/hexa-millennium) |
| (full list) | see `nexus/canon-infra/MIGRATION_PLAN.md` |

---

## Recovery

Canon's git history is preserved without loss.

```bash
# Trace when and where a given file was moved
git log --all --diff-filter=D --follow -- <original-path>

# Snapshot just before retirement
git show 4eb869ad:<original-path>

# Full migration trail
# see MOVED_TO_STANDALONES.md (preserved in legacy-canon)
```

A 1:1 snapshot of the original content:
- **`nexus/canon-infra/legacy-canon/`** — 964 tracked files (21 MB) as of the Wave 6 retirement

---

## License

The original canon's MIT License is preserved at `nexus/canon-infra/legacy-canon/LICENSE`.

---

*Canon launched as a project deriving the optimal design of every domain from a single identity,*
*σ·φ = n·τ at n=6, and was fully distributed out to per-domain standalone repos between 2026-04 and 2026-05.*

*2026-05-11. dancinlab.*
