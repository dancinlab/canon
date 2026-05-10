# physics/ standalone repository pointers

All `physics/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| ⚛️ [`hexa-antimatter`](https://github.com/dancinlab/hexa-antimatter) | `antimatter-factory` · `pet-cyclotron` · `tabletop-antimatter` | `domains/physics/antimatter-factory/`, `domains/physics/pet-cyclotron/`, `domains/physics/tabletop-antimatter/` |
| 💫 [`hexa-cern`](https://github.com/dancinlab/hexa-cern) | `classical-mechanics-accelerator` · `higgs` · `mini-accelerator` · `particle-accelerator` · `particle-cosmology` · `plasma` · `plasma-physics` · `quantum-computer` · ... (14 total) | `domains/physics/classical-mechanics-accelerator/`, `domains/physics/higgs/`, `domains/physics/mini-accelerator/`, `domains/physics/particle-accelerator/`, `domains/physics/particle-cosmology/`, ... (14 total) |
| 🌌 [`hexa-cosmos`](https://github.com/dancinlab/hexa-cosmos) | `calabi-yau-nav` · `cosmology` · `cosmology-particle` · `holography` · `m-theory-11d` · `meta-closure-nav` · `multiverse-nav` · `simulation-theory` | `domains/physics/calabi-yau-nav/`, `domains/physics/cosmology-particle/`, `domains/physics/cosmology/`, `domains/physics/holography/`, `domains/physics/m-theory-11d/`, ... (8 total) |
| 🔥 [`hexa-fusion`](https://github.com/dancinlab/hexa-fusion) | `plasma-fusion-deep` | `domains/physics/plasma-fusion-deep/` |
| 🏆 [`hexa-millennium`](https://github.com/dancinlab/hexa-millennium) | `hexa-topo` · `millennium-bsd` · `millennium-hodge` · `millennium-navier-stokes` · `millennium-p-vs-np` · `millennium-poincare` · `millennium-riemann` · `millennium-yang-mills` · ... (10 total) | `domains/physics/hexa-topo/`, `domains/physics/millennium-bsd/`, `domains/physics/millennium-hodge/`, `domains/physics/millennium-navier-stokes/`, `domains/physics/millennium-p-vs-np/`, ... (10 total) |
| 🔬 [`hexa-physics`](https://github.com/dancinlab/hexa-physics) | `computational-fluid-dynamics` · `crystallography` · `crystallography-materials` · `electromagnetism` · `fluid` · `gravity-wave` · `light-optics` · `optics` · ... (9 total) | `domains/physics/computational-fluid-dynamics/`, `domains/physics/crystallography-materials/`, `domains/physics/crystallography/`, `domains/physics/electromagnetism/`, `domains/physics/fluid/`, ... (9 total) |
| 🔭 [`hexa-scope`](https://github.com/dancinlab/hexa-scope) | `cosmic-observatory` | `domains/physics/cosmic-observatory/` |
| 🛸 [`hexa-ufo`](https://github.com/dancinlab/hexa-ufo) | `warp-drive` · `wormhole` | `domains/physics/warp-drive/`, `domains/physics/wormhole/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/physics/<leaf>/<file>.md`
