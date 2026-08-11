# Changelog

Chronological log of notable changes. One section per ship batch, date-keyed. `project.tape` `@V` tracks the tape grammar version (currently 1.2); echoes itself is content-versioned by git history.

For the full audit trail, see `git log`.

---

## 2026-05-25

- **README — NEXUS reuse lattice (@D g67)** — appended a `## 🕸️ NEXUS — reuse lattice (@D g67)` section to `README.md` (the canonical catalog/index), implementing the universal commons rule g67 (intra-project domain reuse lattice — atlas-first · provenance · per-repo reuse graph). Aggregates echoes' *existing* informal cross-domain tracking into a reuse graph + edge ledger + `provides[]` registry — NOT new claims. REAL edges (with evidence rows): n=6 invariant lattice (`LATTICE_POLICY.md` → 17+ families), grade ladder (`GRADE_RUBRIC_1_TO_10PLUS.md`), real-limits/C3 caveat (`LIMIT_BREAKTHROUGH.md`), Cross-Domain Mega Bridge (BT-366~369), §11.5 8-substrate Putnam federation. Candidate (cross-repo, not intra-canon): HEXA-NANOBOT↔HEXA-WEAVE, hexa-vsco→hexa-filter-algebra. Honest note: working code lives in standalone `hexa-*` repos (per `RETIRED.log.md`), so intra-canon reuse is invariant/policy-level, not code-primitive. Docs-only — no version surface (content-versioned by git history).

## 2026-05-22

- **RETIRED.md → RETIRED.log.md** — split per the per-domain spec/history file rule (current-state `.md` · append-only `.log.md`). The file was a 2026-05-11 retirement-event ledger end-to-end, so the whole thing moved to `.log.md`; live references in `README.md` (EN + 4 translations) and `TAPE-AUDIT.md` updated to point at the new name. Other root spec docs (`LATTICE_POLICY.md`, `LIMIT_BREAKTHROUGH.md`, `GRADE_RUBRIC_1_TO_10PLUS.md`, `TAPE-AUDIT.md`, `README.md`, `CLAUDE.md → project.tape`) are pure spec/current-state and stayed put. Archive + LEGACY snapshots left as-is.

- **project.tape SSOT + Spec Kit removal + AGENTS.tape → archive** — adopt sidecar's project-identity carrier shape. New `project.tape` at repo root (tape v1.2 minimal — `@V` + `@I` kind/brief/parent/ssot + `@D` do/dont placeholders) becomes the substantive SSOT. `CLAUDE.md → project.tape` symlink for harness auto-load on SessionStart; sidecar's `project-tape` hook re-injects on PreCompact/PostCompact. `.specify/` + `.claude/skills/speckit-*` removed (Spec Kit retired in favor of the tape carrier). `AGENTS.tape` moved to `archive/` as dormant carry.

## 2026-05-21

- **constitution v1.0.0 populated** — `docs/constitution.md` filled out as the catalog + cross-project policy SSOT (was a Spec Kit template stub). Followup batch alongside the Spec Kit adoption commit; superseded the next day when the SSOT moved to `project.tape`.

- **GitHub Spec Kit adopted** — added `.specify/` (memory · scripts · templates · workflows) + `.claude/skills/speckit-*` per the upstream Spec Kit shape, intended as the project SSOT pipeline. Lived one day; replaced by `project.tape` on 2026-05-22 per sidecar's carrier convention.

- **session WIP carry** — staged sweep of in-flight 2026-05-21 work as a chore commit before the Spec Kit adoption.

- **README — Discord badge dropped** — minor docs cleanup.

## 2026-05-19

- **`.tape` files — grammar primer header dropped** — inline grammar reminder removed from `AGENTS.tape`; the tape spec is the canonical reference, no need to duplicate the primer inside every carrier.

## 2026-05-17

- **AGENTS.tape — wilson banner pointers** — operating-norm + pool resource-utilization pointers added so the wilson harness can reach the right policy from the echoes repo without re-encoding it.

## 2026-05-16

- **README — hexa-bio EXPANSION LAYER** — Biology section updated to reflect the hexa-bio axis expansion (fenced block + `AUTO:SUMMARY_biology` line). Temp marker dropped same batch once the auto-summary settled.

## 2026-05-14

- **README — echoes identity rewrite + multilingual landing** — full intro rewrite for the new `echoes` identity (renamed from `canon` 2026-05-14). Five-language landing pages (EN + Chinese · Russian · Japanese · Korean), each 1354–1361 lines, with canon-rename mentions scrubbed from all five and social-links / Main-projects / Community / Other-projects blocks removed. Echoes Experience HF Space surfaced via header badge + TIP callout + standalone section + Proof-section link.

- **README — HEXA-Scale as 18th primary family** — Architecture (HEXA-Scale family) added as the 18th primary family; σ·τ math fix followup in the same batch. Status / Run / Repo-layout / License sections added per `atlas/README-FORMAT.md` blocks 11/15/17/18.

- **AGENTS.md → AGENTS.tape (tape v1.2)** — carrier flip to the structured `.tape` grammar; `@I id001` enhanced with `brief` + `parent` project-tree fields; new `@D g_arch_vs_log_split` governance entry (tape v1.2 amendment — current-state `.md` vs append-only `.log.md` per-domain split).

- **LATTICE_POLICY §1.4 — Savant / Golden Zone overclaim guard** — new clause refusing to project Savant-zone or Golden-zone framing onto external claims; pairs with the broader real-limits-first posture.

- **TAPE-AUDIT.md — tape v1.1 adoption** — formal audit record of the grammar bump.

## 2026-05-12 — 2026-05-13

- **canon → echoes — rename + standalone migration** — README rewritten to point at `dancinlab/hexa-*` standalone repos rather than in-tree paths; Fusion-section doc links → `dancinlab/hexa-fusion`. Status block + raw#10 C3 caveat + real-limits framing adopted from hexa-bio tone. Canonical Install + Run sections aligned with the anima format. Author-convention line dropped.

- **LATTICE_POLICY.md + LIMIT_BREAKTHROUGH.md adopted** — verify against real math/physics limits (Shannon · c · ℏ · Carnot · sha256 · ...), not the n=6 lattice. Wave K2/K3 registered both files in `AGENTS.md`; Wave M ran the real-limits audit. The same posture later promoted into sidecar's `commons @D g25` (real-limits-first) and `@D g26` (lattice-as-tool-not-constraint).

- **canon — domain showcase swaps + restorations** — 11 root UPPERCASE.md domain showcases restored from pre-reorganization (richest versions), swapped to mk1 hexa/tool docs (13 domains), then reverted per the "history off the prose, current state only" rule.

## 2026-05-11

- **canon — RETIRE sequence (Waves 3–6)** — repo decomposed into the standalone family. Wave 3: `infrastructure/` → `nexus/canon-infra/`; `techniques/` + `experiments/ai-efficiency/` → `hexa-codex`. Wave 4: `theory/` + `formal/lean4/` → `hexa-meta`. Wave 5: 112 domain-tied residue → 14 `hexa-*` / `anima` repos. Wave 6: keep `README.md` only, all remaining content → `nexus/canon-infra/legacy-canon/`. Followup: purge `.github/`, hooks, dotfiles residue. Net canon shrinkage: −170k lines + Wave 5/6 deletions. README restored + retirement notice moved to `RETIRED.md` (later → `RETIRED.log.md`).

- **GRADE_RUBRIC_1_TO_10PLUS.md restored at root** — kept as a live spec doc alongside the slimmed README.

## 2026-05-10 and earlier (canon era highlights)

- **228 research artifacts → 28 hexa-* repos** — earlier wave of the same decomposition; canon shrank −1.27M lines.

- **360 domain specs → 32 standalones** — full domain MOVE migration; canon shrank 283k lines.

- **hexa-aura / hexa-mobility / hexa-matter / hexa-grid registered** — 4 new standalones in the family.

- **§11.5 ALIEN-10-EXPANSION federation** — sister-expansion candidates landed for neuromorphic · quantum-hybrid · photonic · superconducting · photon-topo · DNA-molecular · FET · digital substrates (12 `TP-<substrate>-*` candidates per substrate, AKIDA specialize variant with 9 + stdlib verify).

- **atlas SSOT — canon-side removal + nexus single-ownership** — canon refs purged + 3-fold re-entry guard installed; 25 hexa files + 5 broken paths swept to point at the nexus owner.

- **`/Users/ghost/Dev/` → `/Users/ghost/core/` rebrand** — 79-file path sweep; launchd plist content + `bin/canon_meta` rename + safety-bypass-audit ledger updates in the same wave.

- **n6-architecture → CANON rename + `.own own#32 mk2`** — design-constant + enumeration-count force-fit ban unified into `.own.cognitive`; canon's mk2 force-fit ban applied across the rebrand.
