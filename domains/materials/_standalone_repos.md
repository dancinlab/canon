# materials/ standalone repository pointers

All `materials/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| ⚛️ [`hexa-matter`](https://github.com/dancinlab/hexa-matter) | `aramid` · `ceramics` · `concrete` · `concrete-technology` · `epoxy` · `fashion-textile` · `gemology` · `hexa-fabric` · ... (19 total) | `domains/materials/aramid/`, `domains/materials/ceramics/`, `domains/materials/concrete-technology/`, `domains/materials/concrete/`, `domains/materials/epoxy/`, ... (19 total) |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/materials/<leaf>/<file>.md`
