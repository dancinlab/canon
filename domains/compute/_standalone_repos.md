# compute/ standalone repository pointers

All `compute/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| ✨ [`hexa-aura`](https://github.com/dancinlab/hexa-aura) | `chip-architecture` · `chip-design` | `domains/compute/chip-architecture/`, `domains/compute/chip-design/` |
| 🔌 [`hexa-chip`](https://github.com/dancinlab/hexa-chip) | `advanced-packaging` · `chip-3d` · `chip-dse-pipeline` · `chip-eda` · `chip-hbm` · `chip-hexa1` · `chip-interconnect` · `chip-isa-n6` · ... (44 total) | `domains/compute/advanced-packaging/`, `domains/compute/chip-3d/`, `domains/compute/chip-dse-pipeline/`, `domains/compute/chip-eda/`, `domains/compute/chip-hbm/`, ... (44 total) |
| 💰 [`hexa-finance`](https://github.com/dancinlab/hexa-finance) | `blockchain` · `cryptography` | `domains/compute/blockchain/`, `domains/compute/cryptography/` |
| 🌐 [`hexa-grid`](https://github.com/dancinlab/hexa-grid) | `5g-6g-network` · `ai-efficiency` · `ai-native-architecture` · `browser` · `compiler-os` · `digital-twin` · `gpgpu` · `hexa-netproto` · ... (18 total) | `domains/compute/5g-6g-network/`, `domains/compute/ai-efficiency/`, `domains/compute/ai-native-architecture/`, `domains/compute/browser/`, `domains/compute/compiler-os/`, ... (18 total) |
| 🖥️ [`hexa-os`](https://github.com/dancinlab/hexa-os) | `hexa-ios` · `hexa-macos` · `unified-service` | `domains/compute/hexa-ios/`, `domains/compute/hexa-macos/`, `domains/compute/unified-service/` |
| 🧱 [`hexa-sscb`](https://github.com/dancinlab/hexa-sscb) | `sscb` | `domains/compute/sscb/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/compute/<leaf>/<file>.md`
