# Moved to standalone repos

During the canon-minimization migration, the research artifacts that used to live
under `papers/`, `theory/proofs/`, `bridge/origins/`, `techniques/`, and `experiments/ai-efficiency/`
were **moved** out of canon into the `dancinlab/hexa-*` family
(MOVE pattern — canon no longer holds them; prior history is recoverable via `git log` in canon).

## Wave 1 — 2026-05-10 (papers / proofs / origins)

Total moved: **228 files/dirs** → **28 repos**.

## Wave 2 — 2026-05-11 (AI techniques + experiments → hexa-codex)

Total moved: **304 files** → **1 repo** (`hexa-codex`).

- `techniques/` (242 files, 8 axes × 68 BODY, 18,630 lines) → `hexa-codex/techniques/`
  - arch/16, attention/9, compress/5, graph/5, moe/11, optim/15, sparse/6, sota/3
  - + `_registry.json` v1.3.0, `_bench_plan.md`, `_chip_mapping.md`, root `design.md`
  - Ossified `AI_TECHNIQUE_68_BODY_ALL` (2026-04-12).
- `experiments/ai-efficiency/` (62 files, `.hexa` verification experiments) → `hexa-codex/experiments/ai-efficiency/`
  - Pre-canon SHA: `canon@93e6ef4c` (recovery via `git log --diff-filter=D --follow`).

## Wave 5 — 2026-05-11 (domain-tied residue → 14 hexa-* / anima)

Total moved: **112 files** → **14 repos**.

| Repo | Source(s) | Count |
|---|---|---:|
| `hexa-chip` | `experiments/chip-verify/*` (27 chip-only) + `proposals/samsung-foundry-hexa-6stage.md` + `reports/discovery/chip-architecture-guide.md` | 29 |
| `anima` | `experiments/chip-verify/verify_anima_soc.hexa` + `reports/discovery/consciousness-cluster-bt.md` + `reports/breakthroughs/consciousness-triple-fusion-2026-04-15.md` | 3 |
| `hexa-aura` | `experiments/chip-verify/verify_bci_6ch_n6.hexa` | 1 |
| `hexa-senses` | `experiments/chip-verify/n6_speak_integration_bench.{hexa,_report.md}` | 2 |
| `hexa-codex` | 6 LLM/AI `reports/discovery/` (LLM-001-018, LLM-DEEP, ai-algorithm-new-hypotheses, ai-energy-savings-guide, llm-improvement-new-hypotheses, n6-optimal-llm-spec) | 6 |
| `hexa-bio` | 57× `proposals/hexa(_\|-)weave_*` + `bt-1387-huckel-aromatic` + `bt-1391-photosynthesis-equation` | 59 |
| `hexa-cern` | `bt-1176-nuclear-reactor-kinetics` + `bt-1386-standard-model` | 2 |
| `hexa-rtsc` | `bt-1163-1168-superconductor-v5` | 1 |
| `hexa-fusion` | `bt-1169-1174-fusion-v5` | 1 |
| `hexa-cosmos` | `bt-1108-dimensional-perception` | 1 |
| `hexa-matter` | `bt-1388-ionic-octahedral` | 1 |
| `hexa-arts` | `bt-1390-hsv-color-hexad` | 1 |
| `hexa-millennium` | `bt-1392-millennium-7-breakthrough-ideas` | 1 |
| `hexa-forge` | `forge-triple-fusion` | 1 |
| `hexa-meta` | `bt-1389-cube-octahedron-duality` (math/geometry) | 1 |

Pre-canon SHA: `canon@ceced262`.

**Kept in canon** (uncertain placement, see MIGRATION_PLAN §7.4):
- `proposals/{cat_litter_mk2_trial,critical-mineral-conflict-arbitration,kim-sangwook-quantum,own1-hard-english-only-translation,yoo-hyunjun-architecture,sod-youtube,south-africa-applied-tech,south-africa-tech-stack,kolon-materials-z6}.md`
- `reports/breakthroughs/bt-1175-water-treatment-2026-04-12.md` (uncertain hexa-earth?)

## Wave 4 — 2026-05-11 (theory + formal/lean4 → hexa-meta)

Total moved: **260 files** → **1 repo** (`hexa-meta`).

n=6 timeless theory layer absorbed into hexa-meta — the 'meta' member
of the HEXA family already housing meta-theorems, self-architecture
papers, proof-cert chains, and discovery tooling.

- `theory/breakthroughs/` (6) → `hexa-meta/breakthroughs/`
- `theory/constants/` (5) → `hexa-meta/constants/`
- `theory/flow/` (4) → `hexa-meta/flow/`
- `theory/predictions/` (117) → `hexa-meta/predictions/`
- `theory/preprints/` (1) → `hexa-meta/preprints/`
- `theory/roadmap-v2/` (65) → `hexa-meta/roadmap-v2/`
- `theory/roadmap-v3/` (3) → `hexa-meta/roadmap-v3/`
- `theory/study/` (48) → `hexa-meta/study/`
- `theory/_index.json` → `hexa-meta/_theory_index.json`
- `formal/lean4/` (10 .lean + lakefile + toolchain + README) → `hexa-meta/formal/lean4/`

`.olean` compiled artifacts excluded (regenerable).
Pre-canon SHA: `canon@50e6f679` · Post-hexa-meta SHA: `hexa-meta@e954dbe`.

## Wave 3 — 2026-05-11 (canon infrastructure → nexus/canon-infra/)

Total moved: **1,808 files** (1,457 tracked) → **1 repo** (`nexus`).

Bulk move of canon runtime infrastructure into a single sub-tree under nexus,
co-locating canon's tooling/state/scanners with its natural consumer (the
nexus universal discovery engine).

Pre-canon SHA: `canon@2ad85661` · Post-nexus SHA: `nexus@cf6be439`.

**Directories (16)** → `nexus/canon-infra/<same name>/`:
- `engine/` (19), `scanners/` (50), `canonshared/` (45), `canon_meta/` (6),
- `bridge/` (31), `convergence/` (1), `hooks/` (1), `tool/` (70),
- `tools/` (4), `shared/` (1), `scripts/` (26), `design/` (114),
- `state/` (1053), `raw_archive/` (11), `bin/` (6), `config/` (9).

**Root files (8)**:
- `INDEX.json`, `hive.json`, `loop-rules.json`, `project.hexa`,
- `standalone_registry.toml`, `build_log.txt`, `README.md.sealed.hash`, `Makefile`.

See: `nexus/canon-infra/MIGRATION_PLAN.md` for full spec including
theory/ destination analysis (hexa-meta vs new hexa-theory) and future
Wave candidates.

## Wave-1 table (legacy)

| repo | from | item |
|---|---|---|
| [anima](https://github.com/dancinlab/anima) | `bridge/origins/` | `consciousness-calc` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `consciousness-measurement-protocol-2026-04-15.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `consciousness-red-team-n6-failure-2026-04-15.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `embody-p10-1-l13-l14-unified-spec-2026-04-15.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `embody-p10-2-new-domain-design-2026-04-15.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `n6-agi-architecture-paper.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `n6-anima-soc-paper.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `n6-consciousness-chip-paper.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `n6-consciousness-phase-diagram-paper.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `n6-consciousness-soc-paper.md` |
| [anima](https://github.com/dancinlab/anima) | `papers/` | `n6-hexa-consciousness-integrated-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-acoustics-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-archaeology-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-dance-choreography-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-game-theory-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-games-sports-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-horology-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-music-theory-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-religion-mythology-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-telecom-linguistics-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-visual-arts-paper.md` |
| [hexa-arts](https://github.com/dancinlab/hexa-arts) | `papers/` | `n6-writing-systems-paper.md` |
| [hexa-aura](https://github.com/dancinlab/hexa-aura) | `papers/` | `n6-brain-computer-interface-paper.md` |
| [hexa-aura](https://github.com/dancinlab/hexa-aura) | `papers/` | `n6-hexa-earphone-paper.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `embody-p11-2-nanobot-gen2-2026-04-15.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `hexa-weave-formal-mechanical-w2-2026-04-28.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `n6-dolphin-bioacoustics-paper.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `n6-genetics-paper.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `n6-hexa-bio-integrated-paper.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `n6-hexa-limb-paper.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `n6-hexa-skin-paper.md` |
| [hexa-bio](https://github.com/dancinlab/hexa-bio) | `papers/` | `n6-synthetic-biology-paper.md` |
| [hexa-bot](https://github.com/dancinlab/hexa-bot) | `bridge/origins/` | `robot-dse` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `bridge/origins/` | `quantum-calc` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `papers/` | `embody-p12-2-quantum-sensor-design-2026-04-15.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `papers/` | `embody-p13-1-qkd-6state-design-2026-04-15.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `papers/` | `n6-classical-mechanics-accelerator-paper.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `papers/` | `n6-l10-l15-quantum-nuclear-unification-paper.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `papers/` | `n6-particle-cosmology-paper.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `papers/` | `n6-quantum-error-correction-paper.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `papers/` | `n6-quantum-machine-learning-paper.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `theory/proofs/` | `l11-l15-quantum-nuclear-mapping-2026-04-14.md` |
| [hexa-cern](https://github.com/dancinlab/hexa-cern) | `theory/proofs/` | `standard-model-from-n6.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `bridge/origins/` | `chip-n6-calc` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `bridge/origins/` | `chip-perf-calc` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `bridge/origins/` | `chip-power-calc` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `bridge/origins/` | `gpu-arch-calc` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `bridge/origins/` | `hexa-rtl` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `bridge/origins/` | `interconnect-calc` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `bridge/origins/` | `semiconductor-calc` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `hexa-chip-6stage-unified.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-advanced-packaging-integrated-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-advanced-packaging-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-chip-6stages-integrated-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-chip-design-ladder-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-chip-dse-convergence-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-cryptography-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-dram-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-exynos-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-hexa-3d-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-hexa-asic-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-hexa-chip-7dan-integrated-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-hexa-photon-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-hexa-pim-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-hexa-super-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-hexa-wafer-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-neuromorphic-computing-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-performance-chip-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-quantum-computing-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-unified-soc-paper.md` |
| [hexa-chip](https://github.com/dancinlab/hexa-chip) | `papers/` | `n6-vnand-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-ai-ethics-governance-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-ai-techniques-68-integrated-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-causal-chain-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-cognitive-social-psychology-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-hexa-cogni-integrated-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-reality-map-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-sota-ssm-paper.md` |
| [hexa-codex](https://github.com/dancinlab/hexa-codex) | `papers/` | `n6-swarm-intelligence-paper.md` |
| [hexa-cosmos](https://github.com/dancinlab/hexa-cosmos) | `bridge/origins/` | `dimension-perception` |
| [hexa-cosmos](https://github.com/dancinlab/hexa-cosmos) | `bridge/origins/` | `dimension-perception-calc` |
| [hexa-cosmos](https://github.com/dancinlab/hexa-cosmos) | `papers/` | `n6-curvature-geometry-paper.md` |
| [hexa-cosmos](https://github.com/dancinlab/hexa-cosmos) | `papers/` | `n6-dimensional-unfolding-paper.md` |
| [hexa-cosmos](https://github.com/dancinlab/hexa-cosmos) | `papers/` | `n6-extra-dimensions-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-cartography-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-construction-structural-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-forensic-science-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-geology-prem-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-governance-safety-urban-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-hexa-exo-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-hydrology-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-meteorology-paper.md` |
| [hexa-earth](https://github.com/dancinlab/hexa-earth) | `papers/` | `n6-oceanography-paper.md` |
| [hexa-energy](https://github.com/dancinlab/hexa-energy) | `bridge/origins/` | `battery-dse` |
| [hexa-energy](https://github.com/dancinlab/hexa-energy) | `bridge/origins/` | `energy-calc` |
| [hexa-energy](https://github.com/dancinlab/hexa-energy) | `bridge/origins/` | `kstar-calc` |
| [hexa-energy](https://github.com/dancinlab/hexa-energy) | `bridge/origins/` | `photonic-energy-calc` |
| [hexa-energy](https://github.com/dancinlab/hexa-energy) | `bridge/origins/` | `solar-dse` |
| [hexa-energy](https://github.com/dancinlab/hexa-energy) | `papers/` | `n6-battery-energy-storage-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-aquaculture-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-ecology-agriculture-food-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-ecology-standalone-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-entomology-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-fermentation-integrated-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-fermentation-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-soil-science-paper.md` |
| [hexa-farm](https://github.com/dancinlab/hexa-farm) | `papers/` | `n6-wine-enology-paper.md` |
| [hexa-finance](https://github.com/dancinlab/hexa-finance) | `bridge/origins/` | `crypto-calc` |
| [hexa-finance](https://github.com/dancinlab/hexa-finance) | `papers/` | `n6-economics-finance-paper.md` |
| [hexa-finance](https://github.com/dancinlab/hexa-finance) | `papers/` | `n6-jurisprudence-paper.md` |
| [hexa-fusion](https://github.com/dancinlab/hexa-fusion) | `bridge/origins/` | `fusion-calc` |
| [hexa-fusion](https://github.com/dancinlab/hexa-fusion) | `bridge/origins/` | `fusion-dse` |
| [hexa-fusion](https://github.com/dancinlab/hexa-fusion) | `bridge/origins/` | `fusion-verify` |
| [hexa-fusion](https://github.com/dancinlab/hexa-fusion) | `bridge/origins/` | `tokamak-shape` |
| [hexa-fusion](https://github.com/dancinlab/hexa-fusion) | `papers/` | `embody-p11-1-hexa-propulsion-fusion-2026-04-15.md` |
| [hexa-fusion](https://github.com/dancinlab/hexa-fusion) | `papers/` | `n6-vacuum-monster-chain-paper.md` |
| [hexa-grid](https://github.com/dancinlab/hexa-grid) | `papers/` | `n6-manufacturing-quality-paper.md` |
| [hexa-grid](https://github.com/dancinlab/hexa-grid) | `papers/` | `n6-network-collective-paper.md` |
| [hexa-matter](https://github.com/dancinlab/hexa-matter) | `bridge/origins/` | `carbon-capture-calc` |
| [hexa-matter](https://github.com/dancinlab/hexa-matter) | `bridge/origins/` | `material-dse` |
| [hexa-matter](https://github.com/dancinlab/hexa-matter) | `papers/` | `n6-carbon-capture-paper.md` |
| [hexa-matter](https://github.com/dancinlab/hexa-matter) | `papers/` | `n6-chemistry-paper.md` |
| [hexa-matter](https://github.com/dancinlab/hexa-matter) | `papers/` | `n6-polymer-engineering-paper.md` |
| [hexa-matter](https://github.com/dancinlab/hexa-matter) | `papers/` | `n6-textile-engineering-paper.md` |
| [hexa-medic](https://github.com/dancinlab/hexa-medic) | `papers/` | `n6-pharmacology-paper.md` |
| [hexa-medic](https://github.com/dancinlab/hexa-medic) | `papers/` | `n6-therapeutic-nanobot-paper.md` |
| [hexa-medic](https://github.com/dancinlab/hexa-medic) | `papers/` | `n6-virology-structure-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `bt-extension-verifier` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `cross-dse-calc` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `deep-miner` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `discovery-engine` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `dse-calc` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `formula-miner` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `hexa-sim` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `hexa-ssh` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `hypothesis-grader` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `legacy` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `lens-coverage` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `nobel-calc` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `ready-absorber` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `universal-dse` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `bridge/origins/` | `vendor-compare-calc` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `M10star-21-unified-theorem-2026-04-15.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `monte-carlo-control-e-2026-04-22.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-66-techniques-integrated-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-ai-17-techniques-experimental-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-arch-adaptive-evolution-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-arch-adaptive-homeostasis-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-arch-evolution-ouroboros-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-arch-quantum-design-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-arch-selforg-design-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-arch-selforg-emergence-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-arch-v3-v4-unified-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-attractor-meta-extended-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-blowup-singularity-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-boundary-metatheory-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-cross-dse-matrix-112-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-cross-paradigm-ai-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-cycle-engine-feedback-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-honest-limitations-meta-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-hypotheses-678-mc-verification-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-lens-forge-ensemble-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-mk3-synthesis-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-nexus6-discovery-engine-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n6-protocol-12-sigma12-coverage-paper.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `papers/` | `n=6-convergence-80-domains-2026-04-19.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `attractor-meta-theorem-2026-04-11.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `attractor-meta-theorem-extended-2026-04-14.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `honest-limitations.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `mk4-theorem-candidates-2026-04-14.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `mk4-trident-final-verdict-2026-04-15.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `n6-boundary-metatheory-2026-04-14.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `ouroboros-alpha-universality-2026-04-15.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `physics-math-certification.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `proof-certification-chain.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `the-number-24.md` |
| [hexa-meta](https://github.com/dancinlab/hexa-meta) | `theory/proofs/` | `theorem-r1-uniqueness.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `bridge/origins/` | `gut-calc-rust` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `bridge/origins/` | `n6-discriminant` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `bridge/origins/` | `special-number-bf` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `bernoulli-18-arxiv-stub-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `bernoulli-b6-sign-2026-04-22.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `doob-talagrand-tau-2026-04-22.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `enriques-abelian-6fold-link-2026-04-22.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `lemmas-A3-A4-conditional-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `moonshine-barrier-honest-report-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `n6-hexa-topo-paper.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `n6-millennium-dfs-1-12-integrated-paper.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `n6-mk4-theorem-candidates-paper.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `n6-pure-mathematics-paper.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `n6-topology-paper.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `plunnecke-6-2026-04-22.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `papers/` | `yang-mills-beta0-rewriting-2026-04-22.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `bernoulli-boundary-2026-04-11.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `fisher-ouroboros-reformulation-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `formal-p10-1-riemann-sigma-tau-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `formal-p11-1-selberg-ingham-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `formal-p11-2-hodge-n6-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `formal-p12-1-conrey-gonek-6th-moment-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `formal-p12-2-cy3-hodge-retry-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `formal-p13-1-bsd-n6-2026-04-15.md` |
| [hexa-millennium](https://github.com/dancinlab/hexa-millennium) | `theory/proofs/` | `transcend-p11-3-ouroboros-b2-proof-2026-04-15.md` |
| [hexa-mind](https://github.com/dancinlab/hexa-mind) | `papers/` | `n6-hexa-mind-paper.md` |
| [hexa-mind](https://github.com/dancinlab/hexa-mind) | `papers/` | `n6-hexa-neuro-paper.md` |
| [hexa-mind](https://github.com/dancinlab/hexa-mind) | `papers/` | `n6-hexa-telepathy-paper.md` |
| [hexa-mind](https://github.com/dancinlab/hexa-mind) | `papers/` | `n6-working-memory-paper.md` |
| [hexa-mobility](https://github.com/dancinlab/hexa-mobility) | `papers/` | `n6-aerospace-transport-paper.md` |
| [hexa-mobility](https://github.com/dancinlab/hexa-mobility) | `papers/` | `n6-autonomous-driving-paper.md` |
| [hexa-mobility](https://github.com/dancinlab/hexa-mobility) | `papers/` | `n6-control-automation-paper.md` |
| [hexa-physics](https://github.com/dancinlab/hexa-physics) | `bridge/origins/` | `optics-calc` |
| [hexa-physics](https://github.com/dancinlab/hexa-physics) | `papers/` | `n6-electromagnetism-paper.md` |
| [hexa-physics](https://github.com/dancinlab/hexa-physics) | `papers/` | `n6-fluid-dynamics-paper.md` |
| [hexa-physics](https://github.com/dancinlab/hexa-physics) | `papers/` | `n6-gravity-wave-paper.md` |
| [hexa-physics](https://github.com/dancinlab/hexa-physics) | `papers/` | `n6-mechanical-engineering-paper.md` |
| [hexa-physics](https://github.com/dancinlab/hexa-physics) | `papers/` | `n6-optics-paper.md` |
| [hexa-physics](https://github.com/dancinlab/hexa-physics) | `papers/` | `n6-thermodynamics-paper.md` |
| [hexa-rtsc](https://github.com/dancinlab/hexa-rtsc) | `bridge/origins/` | `sc-dse` |
| [hexa-rtsc](https://github.com/dancinlab/hexa-rtsc) | `papers/` | `n6-superconductor-paper.md` |
| [hexa-rtsc](https://github.com/dancinlab/hexa-rtsc) | `papers/` | `n6-ultimate-superconductor-integrated-paper.md` |
| [hexa-senses](https://github.com/dancinlab/hexa-senses) | `papers/` | `n6-hexa-dream-paper.md` |
| [hexa-senses](https://github.com/dancinlab/hexa-senses) | `papers/` | `n6-hexa-olfact-paper.md` |
| [hexa-senses](https://github.com/dancinlab/hexa-senses) | `papers/` | `n6-speak-v2-4tier-chip-paper.md` |
| [hexa-space](https://github.com/dancinlab/hexa-space) | `papers/` | `embody-p12-1-probe-mk1-design-2026-04-15.md` |
| [hexa-space](https://github.com/dancinlab/hexa-space) | `papers/` | `n6-hexa-starship-integrated-paper.md` |
| [hexa-space](https://github.com/dancinlab/hexa-space) | `papers/` | `n6-space-systems-paper.md` |
| [hexa-sscb](https://github.com/dancinlab/hexa-sscb) | `papers/` | `sscb-mk1-2026-05-04.md` |
| [hexa-time](https://github.com/dancinlab/hexa-time) | `papers/` | `n6-calendar-time-geography-paper.md` |
| [hexa-ufo](https://github.com/dancinlab/hexa-ufo) | `papers/` | `n6-warp-metric-paper.md` |
