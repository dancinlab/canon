# culture/ standalone repository pointers

All `culture/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 🎨 [`hexa-arts`](https://github.com/dancinlab/hexa-arts) | `ar-vr-xr` · `archaeology` · `audio` · `baduk` · `biometrics` · `dance-choreography` · `dice-probability` · `ethnomusicology` · ... (24 total) | `domains/culture/ar-vr-xr/`, `domains/culture/archaeology/`, `domains/culture/audio/`, `domains/culture/baduk/`, `domains/culture/biometrics/`, ... (24 total) |
| ⏳ [`hexa-time`](https://github.com/dancinlab/hexa-time) | `bell-clockwork` · `horology` | `domains/culture/bell-clockwork/`, `domains/culture/horology/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/culture/<leaf>/<file>.md`
