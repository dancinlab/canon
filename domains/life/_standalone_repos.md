# life/ standalone repository pointers

All `life/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| ✨ [`hexa-aura`](https://github.com/dancinlab/hexa-aura) | `neuro` · `neuroscience` | `domains/life/neuro/`, `domains/life/neuroscience/` |
| 🧬 [`hexa-bio`](https://github.com/dancinlab/hexa-bio) | `bio-pharma` · `biology` · `biology-medical` · `crispr-cas13-poc-diagnostic` · `crispr-gene-editing` · `dolphin` · `dolphin-bioacoustics` · `genetics` · ... (11 total) | `domains/life/bio-pharma/`, `domains/life/biology-medical/`, `domains/life/biology/`, `domains/life/crispr-cas13-poc-diagnostic/`, `domains/life/crispr-gene-editing/`, ... (11 total) |
| 🤖 [`hexa-bot`](https://github.com/dancinlab/hexa-bot) | `dog-robot-test` | `domains/life/dog-robot-test/` |
| 🌾 [`hexa-farm`](https://github.com/dancinlab/hexa-farm) | `agriculture` · `apiculture` · `aquaculture` · `baking` · `biochar-dryland-restoration` · `cheese-dairy` · `coffee` · `coffee-science` · ... (18 total) | `domains/life/agriculture/`, `domains/life/apiculture/`, `domains/life/aquaculture/`, `domains/life/baking/`, `domains/life/biochar-dryland-restoration/`, ... (18 total) |
| 💊 [`hexa-medic`](https://github.com/dancinlab/hexa-medic) | `cancer-therapy` · `cosmetic-surgery` · `gastrointestinal-medicine` · `hair-regeneration` · `herbalism` · `hiv` · `hiv-treatment` · `immunology` · ... (24 total) | `domains/life/cancer-therapy/`, `domains/life/cosmetic-surgery/`, `domains/life/gastrointestinal-medicine/`, `domains/life/hair-regeneration/`, `domains/life/herbalism/`, ... (24 total) |
| 🐱 [`hexa-pet`](https://github.com/dancinlab/hexa-pet) | `veterinary` | `domains/life/veterinary/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/life/<leaf>/<file>.md`
