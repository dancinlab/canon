# cognitive/ standalone repository pointers

All `cognitive/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 🌊 [`anima`](https://github.com/dancinlab/anima) | `anima-service` · `anima-soc` | `domains/cognitive/anima-service/`, `domains/cognitive/anima-soc/` |
| ✨ [`hexa-aura`](https://github.com/dancinlab/hexa-aura) | `brain-computer-interface` | `domains/cognitive/brain-computer-interface/` |
| 📚 [`hexa-codex`](https://github.com/dancinlab/hexa-codex) | `ai-adversarial` · `ai-agent-serving` · `ai-alignment` · `ai-consciousness` · `ai-deployment` · `ai-enterprise-custom` · `ai-eval-pipeline` · `ai-inference-cost` · ... (20 total) | `domains/cognitive/ai-adversarial/`, `domains/cognitive/ai-agent-serving/`, `domains/cognitive/ai-alignment/`, `domains/cognitive/ai-consciousness/`, `domains/cognitive/ai-deployment/`, ... (20 total) |
| 🧠 [`hexa-mind`](https://github.com/dancinlab/hexa-mind) | `dream-recorder` | `domains/cognitive/dream-recorder/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/cognitive/<leaf>/<file>.md`
