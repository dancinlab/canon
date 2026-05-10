# cognitive/ standalone repository pointers

Cross-reference index of `domains/cognitive/*` specs that have been extracted into standalone GitHub repositories.

## Active extractions

| Spec(s) | Standalone repo | Extracted | Notes |
|---|---|---|---|
| `ai-adversarial`, `ai-agent-serving`, `ai-alignment`, `ai-consciousness`, `ai-deployment`, `ai-enterprise-custom`, `ai-eval-pipeline`, `ai-inference-cost`, `ai-interpretability`, `ai-multimodal`, `ai-quality-scale`, `ai-safety`, `ai-training-cost`, `ai-welfare`, `youth-ai-labeling-rlhf-hub`, `cognitive-architecture`, `causal-chain` | 📚 [dancinlab/hexa-codex](https://github.com/dancinlab/hexa-codex) | 2026-05-06 | 17-verb / 4 그룹 (safety + economics + ops + substrate). 도서관식 spec catalog. BUNDLE pattern (canon retains seeds). anima · hexa-brain · honesty-monitor cross-link. MIT. |
| `hexa-mind`, `hexa-neuro`, `hexa-oracle`, `hexa-telepathy`, `telepathy`, `mind-upload`, `superpowers` | 🧠 [dancinlab/hexa-mind](https://github.com/dancinlab/hexa-mind) | 2026-05-10 | 7-verb mental substrate. 4/7 SPECULATIVE (telepathy/mind-upload/superpowers/oracle). MOVE pattern — canon source dirs DELETED. Sister-rollup of hexa-codex. MIT. |
| `hexa-dream`, `hexa-ear`, `hexa-empath`, `hexa-olfact`, `hexa-speak`(→`voice`) | 👁️ [dancinlab/hexa-senses](https://github.com/dancinlab/hexa-senses) | 2026-05-10 | 5-verb sensory substrate. `voice` = formulaic synthesis only (learned TTS FORBIDDEN per 2026-05-07 directive). MOVE pattern — canon source dirs DELETED. proto/ + rtl/ artifacts moved to `voice/`. Sister-rollup of hexa-codex. MIT. |
| `neuro` (life), `brain-computer-interface`, `hexa-neuromorphic` (compute), `l9-field-photon-neuro` (compute), `neuroscience` (life) | ✨ [dancinlab/hexa-aura](https://github.com/dancinlab/hexa-aura) | 2026-05-10 | 5-doc post-aural BCI CHIP-substrate (측두골 클립). BUNDLE pattern (canon retains seeds; 2 docs historically restored from 579ab196/ab155706). MIT. |

## Convention

Two extraction patterns coexist:

- **BUNDLE pattern** (e.g. `hexa-codex`, `hexa-aura`): canon source files are retained; standalone repo holds copies with `<!-- @canonical: ... -->` provenance headers. md5 drift tracked via `tools/standalone_seeds.tsv` + `standalone_registry.toml`. Suitable for **rollup/index** standalones.
- **MOVE pattern** (e.g. `hexa-mind`, `hexa-senses`): canon source files are **deleted** when the standalone becomes the primary home. No drift tracking — the standalone repo is the SSOT going forward. Suitable for **independently-evolving** standalones with their own working artifacts (proto/, rtl/, etc.). Recovery via `git log` if needed.

## Pending candidates

후속 standalone 후보:
- 💤 `dream-recorder` 단독 (still in canon)
- 단독: `cognitive-social-psychology`, `temporal-architecture`, `reality-map`
- 자매 sister 레포 (이미 별도 추출): `anima` (consciousness) · `anima-agent` (runtime) · `hexa-brain` (working EEG/BMI pipeline) — links via `domains/cognitive/{anima-service,anima-soc,brain-computer-interface}` *(`brain-computer-interface` now lives in hexa-aura BUNDLE — see above)*
