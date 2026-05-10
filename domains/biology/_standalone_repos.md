# biology/ standalone repository pointers

All `biology/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 🧬 [`hexa-bio`](https://github.com/dancinlab/hexa-bio) | `hexa-nanobot` · `hexa-ribozyme` · `hexa-virocapsid` · `hexa-weave` | `domains/biology/hexa-nanobot/`, `domains/biology/hexa-ribozyme/`, `domains/biology/hexa-virocapsid/`, `domains/biology/hexa-weave/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/biology/<leaf>/<file>.md`
