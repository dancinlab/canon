# echoes Constitution

## Core Principles

### I. Discoveries Catalog + Policy SSOT (POLICY)
echoes is the discoveries catalog and policy authority for the HEXA-* project family. Working code lives in the per-domain `hexa-*` standalones (see `RETIRED.md` for the extraction ledger); this repo carries the cross-project policy artifacts — `LATTICE_POLICY.md`, `LIMIT_BREAKTHROUGH.md`, `GRADE_RUBRIC_1_TO_10PLUS.md` — and the domain-family overview tables. echoes is the index, not a runtime.

### II. σφτ Identity at the Centre (DESIGN)
The arithmetic identity `σ(n) · φ(n) = n · τ(n)` holds uniquely at `n = 6` (12 · 2 = 6 · 4 = 24). Monte Carlo z = 3.06, p = 0.003 vs n = 28 / n = 496; exhaustive Lean 4 proof on `[2, 30]` + Python proof on `[2, 10000]`. This identity is the centre of every domain branch in the catalog.

### III. Real-Limits-First Verification (NON-NEGOTIABLE)
A project's ceiling is set by REAL limits — math (Shannon, Kolmogorov, Bekenstein), physics (c, ℏ, k, Stefan-Boltzmann, Carnot), and engineering (ASML throughput, ERCOT capacity, …) — NOT by the n=6 lattice. Closures must be verified against the real limit, not against a convenient lattice fit. `LATTICE_POLICY.md` is the authoritative statement; `LIMIT_BREAKTHROUGH.md` carries per-domain real-limits audits (HARD_WALL / SOFT_WALL / BREAKABLE_WITH_TECH / UNCLEAR).

### IV. Lattice-as-Tool, Not Constraint
The n=6 lattice (σ=12 · τ=4 · φ=2 · σopfr=5 · J2=24) is an organizing tool — useful for spotting patterns and proposing closures. It is NOT a constraint on what can be discovered, and it does NOT replace real-limits verification. Fit-to-convenient-number, over-claim, and constraining-first-question are anti-patterns blocked at review.

### V. No External Lattice-Fitting (raw#10 C3, NON-NEGOTIABLE)
n=6 lattice-fit is FORBIDDEN on external entities — TSMC, ASML, NIST, IPCC, CERN, DeepMind, and any third-party vendor / institution. Those entities use their own published invariants; fitting them into the n=6 lattice is an over-claim and is rejected without exception.

### VI. Hypothesis vs Measurement — Honest Tier
The arithmetic identity at n=6 is mathematically TRUE (Principle II). The claim that "optimal designs are derived from this identity" is a RESEARCH HYPOTHESIS about how natural systems organize — NOT a measurement. Surfaces (docs, READMEs, badges, talks) MUST distinguish the two, and MUST NOT bundle the hypothesis under the truth claim.

### VII. Universal Grade Rubric (1 → 10+)
Every catalogued discovery carries a grade per `GRADE_RUBRIC_1_TO_10PLUS.md`: 1 = raw observation · … · 9 = closed (PASS) · 10 = breakthrough (EXACT closure to n=6 primitives) · 11 = meta-closure · 12 = universal · 13+ = meta². Determination of grade ≥ 9 follows the automated `n=6 primitives` check (N=6 · σ=12 · τ=4 · φ=2 · σopfr=5 · J2=24). Manual grade assertions without the automated check are blocked.

### VIII. Cross-Project Policy Authority
`LATTICE_POLICY.md` declares itself authoritative for all `dancinlab/hexa-*` repositories and meta projects (anima · nexus · canon · bedrock · void · …). When a downstream project's local rule conflicts with `LATTICE_POLICY.md` on n=6 / lattice / real-limits subjects, this policy wins.

## Repository Layout

```
echoes/
├── README.md                          # public surface (5 languages — en + zh/ru/ja/ko in docs/)
├── LATTICE_POLICY.md                  # n=6 lattice-as-tool · real-limits-first (cross-project authority)
├── LIMIT_BREAKTHROUGH.md              # per-domain real-limits audit (HARD_WALL / SOFT_WALL / …)
├── GRADE_RUBRIC_1_TO_10PLUS.md        # universal grade rubric (1 → 10+)
├── RETIRED.md                         # per-extraction provenance (catalog → hexa-* standalones)
├── TAPE-AUDIT.md                      # cross-tape audit (catalog side)
├── docs/                              # multilingual READMEs (zh / ru / ja / ko) + assets
└── .specify/                          # Spec Kit pipeline artifacts (this constitution lives here)
```

Companion: `dancinlab/echoes-experience` (HF Space — interactive σφτ slider widget) — a thin frontend demo that consumes this catalog's centre identity. Per-domain implementations: see `hexa-*` standalones listed in `RETIRED.md`.

## Development Workflow

1. **Catalog entry.** New discoveries enter the catalog with a grade per `GRADE_RUBRIC_1_TO_10PLUS.md` and a real-limits classification per `LIMIT_BREAKTHROUGH.md`. No grade ≥ 9 without the automated n=6 primitive check.
2. **Policy amendments.** `LATTICE_POLICY.md` / `LIMIT_BREAKTHROUGH.md` amendments land via PR. Cross-project impact (which downstream repos must adjust) is documented in the PR description.
3. **Standalone extraction.** When a domain crosses the extraction threshold (working code + tests), it moves to its own `hexa-*` repo; `RETIRED.md` gets a per-extraction provenance row.
4. **Honest framing.** Every public surface that mentions the σφτ identity also surfaces the hypothesis-vs-measurement caveat (Principle VI). No exceptions for marketing or demo contexts.
5. **5-language sync.** English README is authoritative; `docs/README.{zh,ru,ja,ko}.md` mirror in the same PR for material changes.

## Governance

- This constitution governs echoes repo-local concerns (catalog discipline, grade rubric application, multilingual sync) and the cross-project policy artifacts.
- `LATTICE_POLICY.md` is the authority for n=6 / lattice / real-limits subjects across the dancinlab/hexa-* family — when a downstream project's local constitution conflicts on those subjects, this policy wins.
- Amendments to this constitution land via a PR that updates this file and bumps semver: MAJOR = principle removal/redefinition · MINOR = new principle/section · PATCH = wording.
- Complexity must be justified. Default = simpler. Honest framing > marketing surface.

**Version**: 1.0.0 | **Ratified**: 2026-05-21 | **Last Amended**: 2026-05-21
