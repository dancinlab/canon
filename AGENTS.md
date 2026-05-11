# AGENTS.md — agent operating guide for this repository

> Convention: this file documents how AI agents (Claude, Codex, etc.)
> should operate within this repository. Maintained alongside the
> dancinlab-wide policy declarations.

## 📐 Limits & verification — LATTICE_POLICY.md is authoritative

This repository operates under the dancinlab-wide **real-limits-first
verification policy**: see [`LATTICE_POLICY.md`](LATTICE_POLICY.md)
(deployed 2026-05-12 to all dancinlab projects).

**Core rule for any agent working in this repo**:

1. **The project's ceiling is set by REAL math/physics/engineering
   limits**, never by the n=6 invariant lattice (σ(6)=12, τ(6)=4,
   φ(6)=2, J₂(6)=24).
2. **n=6 lattice is a *tool*, not a *constraint***. Use it where it
   naturally fits (native lattice spec files); do **not** force-map it
   onto external domains / external entities / general analyses.
3. **Verification anchors** must include at least one **real limit**
   from `LATTICE_POLICY.md §1.2` (Shannon · Kolmogorov · Bekenstein ·
   c · ℏ · k · Stefan-Boltzmann · Carnot · ASML throughput · ERCOT
   capacity · etc.). Lattice-tautology checks (σ·φ=24) alone are not
   sufficient verification.
4. **No artificial ceilings**: do not bound this project's ambition
   by lattice fit. Bound it by what mathematics, physics, and
   engineering actually permit.

**Companion artifact**: `LIMIT_BREAKTHROUGH.md` (when present) lists
this project's real limits + per-limit breakthrough assessment
(HARD_WALL / SOFT_WALL / BREAKABLE_WITH_TECH / UNCLEAR). It is the
project-specific application of `LATTICE_POLICY.md`.

**Honesty obligation** (raw#10 C3): claims about external entities
(companies, fabs, accelerators, life systems) must NOT include
lattice-fit assertions. Use that entity's *own* invariants.

## 🛠️ Commit conventions

- Author: `박민우 <nerve011235@gmail.com>`
- Trailer: `Co-Authored-By: <model> <noreply@anthropic.com>` (when AI-assisted)
- Title format: `<type>(<scope>): <one-line summary>` per Conventional Commits
- Body: bullet list of file changes + honesty caveats

## 📎 References

- `LATTICE_POLICY.md` — universal real-limits standard
- `LIMIT_BREAKTHROUGH.md` — project-specific breakthrough audit (when present)
- Origin: dancinlab Wave K, 2026-05-12 — user directive "n=6 격자를 강제할 필요 없어, 제한없이"

---

*This AGENTS.md is the dancinlab-default agent-operating-guide stub.
Project-specific agent guidance may be appended below as separate
sections. The lattice-policy registration above is canonical and
should not be removed.*
