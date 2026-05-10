# pets/ standalone repository pointers

All `pets/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 🐱 [`hexa-pet`](https://github.com/dancinlab/hexa-pet) | `cat-food` · `cat-litter` · `cat-toy` · `dog-food` · `dog-toy` | `domains/pets/cat-food/`, `domains/pets/cat-litter/`, `domains/pets/cat-toy/`, `domains/pets/dog-food/`, `domains/pets/dog-toy/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/pets/<leaf>/<file>.md`
