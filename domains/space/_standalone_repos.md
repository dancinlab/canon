# space/ standalone repository pointers

All `space/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 🔭 [`hexa-scope`](https://github.com/dancinlab/hexa-scope) | `observational-astronomy` | `domains/space/observational-astronomy/` |
| 🛰️ [`hexa-space`](https://github.com/dancinlab/hexa-space) | `aerospace` · `aerospace-transport` · `astrobiology` · `astrodynamics` · `astronomy` · `hexa-cosmic` · `hexa-starship` · `space-engineering` · ... (10 total) | `domains/space/aerospace-transport/`, `domains/space/aerospace/`, `domains/space/astrobiology/`, `domains/space/astrodynamics/`, `domains/space/astronomy/`, ... (10 total) |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/space/<leaf>/<file>.md`
