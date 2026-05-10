# infra/ standalone repository pointers

All `infra/` domain specs were MOVED to standalone repos in the 2026-05-10 canon shrink migration.

## Active extractions

| Standalone repo | Verbs | Original canon paths |
|---|---|---|
| 🌍 [`hexa-earth`](https://github.com/dancinlab/hexa-earth) | `architecture` · `aviation` · `carbon-capture` · `civil-engineering` · `climate` · `desal` · `desalination` · `earth-defense` · ... (33 total) | `domains/infra/architecture/`, `domains/infra/aviation/`, `domains/infra/carbon-capture/`, `domains/infra/civil-engineering/`, `domains/infra/climate/`, ... (33 total) |
| 💰 [`hexa-finance`](https://github.com/dancinlab/hexa-finance) | `currency-economics` · `ecommerce-fintech` · `economics` · `economics-finance` · `insurance` · `jurisprudence` · `law-justice` · `marketing` · ... (9 total) | `domains/infra/currency-economics/`, `domains/infra/ecommerce-fintech/`, `domains/infra/economics-finance/`, `domains/infra/economics/`, `domains/infra/insurance/`, ... (9 total) |
| 🌐 [`hexa-grid`](https://github.com/dancinlab/hexa-grid) | `construction-structural` · `lora-mesh-learning-terminal` · `manufacturing-quality` | `domains/infra/construction-structural/`, `domains/infra/lora-mesh-learning-terminal/`, `domains/infra/manufacturing-quality/` |
| ⚛️ [`hexa-matter`](https://github.com/dancinlab/hexa-matter) | `printing` | `domains/infra/printing/` |
| 🧭 [`hexa-mobility`](https://github.com/dancinlab/hexa-mobility) | `airbag` · `autonomous-driving` · `cartography-gis` · `control-automation` · `electric-vehicle` · `fun-car` · `governance-safety-urban` · `motorcycle` · ... (12 total) | `domains/infra/airbag/`, `domains/infra/autonomous-driving/`, `domains/infra/cartography-gis/`, `domains/infra/control-automation/`, `domains/infra/electric-vehicle/`, ... (12 total) |
| ⏳ [`hexa-time`](https://github.com/dancinlab/hexa-time) | `calendar-time-geography` | `domains/infra/calendar-time-geography/` |

## Convention

- **MOVE pattern** (this migration): canon source dirs were DELETED and the standalone repo is the SSOT.
- Each standalone repo has the spec docs as top-level verb dirs (or `docs/` flat for hexa-mobility).
- Provenance headers in each `<verb>/<verb>.md` point to canon@ded52144 (pre-deletion SHA).
- Recovery: `git -C canon log --diff-filter=D --follow -- domains/infra/<leaf>/<file>.md`
