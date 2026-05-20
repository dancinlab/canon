# TAPE-AUDIT — canon

## A. Audit-class ledgers

None present at root or in any subdir. Canon is a static documentation repo — no `*.jsonl`, no `state/`, no `.hook-audit`, no `*-audit` directories. Only files: `README.md` (184 KB), `LATTICE_POLICY.md`, `LIMIT_BREAKTHROUGH.md`, `GRADE_RUBRIC_1_TO_10PLUS.md`, `RETIRED.md`, `AGENTS.md`, `CLAUDE.md` symlink, plus `.git`, `.claude`.

## B. Identity surface


## C. Domain.md files

Root UPPERCASE.md inventory:
- `README.md` — 184 KB framework reference + n=6 σ·φ identity exposition
- `LATTICE_POLICY.md` — dancinlab-wide real-limits-first policy
- `LIMIT_BREAKTHROUGH.md` — per-limit HARD_WALL / SOFT_WALL / BREAKABLE_WITH_TECH / UNCLEAR classifications
- `GRADE_RUBRIC_1_TO_10PLUS.md` — 1-to-10+ rubric for paper / discovery grading
- `RETIRED.md` — migration ledger for hexa-* standalone extractions
- `AGENTS.md` / `CLAUDE.md` (symlink)

Sibling `.tape` candidates:
- `RETIRED.tape` — extraction-event ledger (every "domain → hexa-* standalone" move is a typed `@D` event with a `==` provenance edge to its source commit). **The most natural fit** — `RETIRED.md` already reads as an append-only migration ledger.
- `LIMIT_BREAKTHROUGH.tape` — per-limit verdict-change events (when a SOFT_WALL graduates to BREAKABLE_WITH_TECH it's a typed `@D` with a measurement provenance).
- `GRADE_RUBRIC.tape` — rubric promotion / grade-issued events (each "paper X scored 8/10" → `@D` row).

## D. Per-run/per-event history

Effectively none. Canon is purely declarative — the 225 AI techniques + chip design + crypto/OS/display content is reference material, not run logs. The only history-flavored content is `RETIRED.md` (migration events) and commit log itself.

## E. Promotion candidates

- **n6 atoms**: the 225 AI techniques in `README.md` are by construction atom candidates — each "technique X = formula + outcome + provenance" reads as a verified n6 atom (and several are explicit `σ(6)·φ(6)=24`-anchored).
- **n12 cube**: `LIMIT_BREAKTHROUGH.md`'s per-limit × per-domain × per-verdict matrix is a 3-axis cube candidate.
- **hxc**: no binary wire surface here.

**Verdict: LIGHT.** Canon is doc-heavy / ledger-free; `.tape` surface is one optional `RETIRED.tape` projection + a `LIMIT_BREAKTHROUGH.tape` per-verdict-change log. No cargo ledgers to migrate. Bigger value is using canon's 225-technique inventory as an **n6 atom promotion source** (theme E).
