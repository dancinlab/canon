# sf-ufo/ standalone repository pointers

All `sf-ufo/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 🐲 [`hexa-fantasy`](https://github.com/dancinlab/hexa-fantasy) | `sf` | `domains/sf-ufo/sf/` |
| 🛸 [`hexa-ufo`](https://github.com/dancinlab/hexa-ufo) | `cloak` · `cross-domain-mega` · `experiments` · `hexa-cloak` · `hexa-grav` · `hexa-hover` · `hexa-sim` · `hexa-teleport` · ... (12 total) | `domains/sf-ufo/cloak/`, `domains/sf-ufo/cross-domain-mega/`, `domains/sf-ufo/experiments/`, `domains/sf-ufo/hexa-cloak/`, `domains/sf-ufo/hexa-grav/`, ... (12 total) |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/sf-ufo/<leaf>/<file>.md`
