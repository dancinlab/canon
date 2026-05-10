# energy/ standalone repository pointers

All `energy/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| ⚡ [`hexa-energy`](https://github.com/dancinlab/hexa-energy) | `amd-ree-mineshaft-phes` · `battery-energy` · `datacenter-reactor` · `energy-architecture` · `energy-efficiency` · `hvac-system` · `nuclear-reactor` · `pemfc` · ... (13 total) | `domains/energy/amd-ree-mineshaft-phes/`, `domains/energy/battery-energy/`, `domains/energy/datacenter-reactor/`, `domains/energy/energy-architecture/`, `domains/energy/energy-efficiency/`, ... (13 total) |
| 🔥 [`hexa-fusion`](https://github.com/dancinlab/hexa-fusion) | `fusion` · `fusion-powerplant` · `tabletop-fusion` | `domains/energy/fusion-powerplant/`, `domains/energy/fusion/`, `domains/energy/tabletop-fusion/` |
| 🧭 [`hexa-mobility`](https://github.com/dancinlab/hexa-mobility) | `battery-architecture` | `domains/energy/battery-architecture/` |
| 🧲 [`hexa-rtsc`](https://github.com/dancinlab/hexa-rtsc) | `room-temp-sc` · `superconductor` | `domains/energy/room-temp-sc/`, `domains/energy/superconductor/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/energy/<leaf>/<file>.md`
