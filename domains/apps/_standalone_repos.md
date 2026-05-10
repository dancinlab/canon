# apps/ standalone repository pointers

All `apps/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 📱 [`hexa-apps`](https://github.com/dancinlab/hexa-apps) | `camera-filter-app` · `hexa-filter-algebra` · `hexa-main-character` · `hexa-parallel-self` · `hexa-vsco` | `domains/apps/camera-filter-app/`, `domains/apps/hexa-filter-algebra/`, `domains/apps/hexa-main-character/`, `domains/apps/hexa-parallel-self/`, `domains/apps/hexa-vsco/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/apps/<leaf>/<file>.md`
