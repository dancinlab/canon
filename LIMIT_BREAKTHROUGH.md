<!-- @created: 2026-05-12 -->
<!-- @sister: LATTICE_POLICY.md §1.2 -->
---
project: canon
domain: Arithmetic design framework — derives optimal AI, chip, energy, and protocol architectures from a single arithmetic identity; aggregates 381 DSE domains and 1116 NEXUS tests
limits_audited: 7
breakthrough_candidates: 3
hard_walls: 2
soft_walls: 3
unclear: 2
---

# LIMIT_BREAKTHROUGH.md — canon

## §1 Domain identification

CANON is an aggregator/framework that catalogues "design space exploration"
(DSE) verdicts across 381 domains and integrates 1116 NEXUS test outcomes,
plus the HEXA-Fusion / HEXA-Energy / HEXA-Chip family. Its central artefact is
a corpus of design-derivations + verification verdicts: each domain ships a
spec, a closure proof, and a falsifier register.

As infrastructure, canon is: a giant searchable design-and-verdict corpus.
Its real limits are (a) the information-theoretic limit on what "derived"
means when many designs share generators, (b) the repository-scaling /
file-count limits for the corpus itself, (c) the verifier-decidability
limits when verdicts claim "X is optimal" or "Y is impossible."

Concrete artefacts: 381-domain DSE map, ≥7 fusion devices, BT-9 / BT-97~102 /
BT-291~298 verification tickets, evolution stages Mk.I → Mk.VI, claimed
"physical-limit 12/12 + impossibility 12 proofs." The audit must separate
genuinely physics-bounded claims from arithmetic-derived bookkeeping.

## §2 Real limits applicable to this project

| # | Limit | Class | Source / value | Applicability to canon |
|---|-------|-------|----------------|------------------------|
| L1 | Kolmogorov complexity of derived-design corpus | math | K(D₁..D_N) ≥ K(generators) − O(1) | If 381 designs are derived from one identity, their joint K is bounded by K(identity) + small noise. Real distinct-design count ≪ 381 in K-sense. |
| L2 | NP-hardness of "is this design optimal?" | math | Most placement / routing / scheduling problems NP-hard | Claim "optimal" is NP-hard to verify in general; PASS/EXACT verdicts are necessarily relative to a specific cost function + heuristic. |
| L3 | Carnot efficiency | physics | η ≤ 1 − T_c/T_h | Bounds claimed fusion-plant Mk.V efficiency. At T_hot = 10⁸ K (plasma) / T_cold = 600 K (turbine), η ≤ 99.99994% — Carnot is not the binding constraint for fusion; it IS binding for any thermal-cycle claim. |
| L4 | Lawson / triple-product criterion | physics | n·T·τ_E ≥ 3 × 10²¹ keV·s/m³ (D-T) | Binds every fusion-archetype closure claim. Q = τ(6) = 4 must reconcile with Lawson. If the claimed B = 48 T at 1 m³ does not pass Lawson, the closure verdict is over-claim. |
| L5 | Repository scaling (Git / GitHub) | engineering | Git pack-file practical limit ~5 GB; GitHub repo soft cap ~10 GB | 381 domains × multi-file specs already pressure repo size. clone --depth bound is real. |
| L6 | Reviewer-attention bandwidth | engineering | ~10 PRs/day human reviewer; ~10³ LoC/hr deep review | 381 domains × ≥ 1 spec each = ≥381 review units; sustained review of all-domain closure verdicts is the binding org-scale constraint. |
| L7 | ASML throughput (EUV wafer-stepper) | engineering | ~180 wph at 0.33 NA EUV | Binds HEXA-Chip family throughput claims if canon's chip designs target leading-edge nodes. Not a software limit; an *industry* limit canon depends on. |

(Skipped: σ(n)·φ(n) = n·τ(n) identity, σ(6)=12, J₂(6)=24, σ·τ=48, "n=6 uniquely satisfies" anchors per LATTICE_POLICY.md §1.3. These are the *vocabulary* of canon; treating them as real limits is the exact failure mode the policy forbids.)

## §3 Per-limit breakthrough assessment

| Limit | Class | Current state | Breakthrough vector | Trigger metric |
|-------|-------|---------------|---------------------|----------------|
| L1 K of derived corpus | HARD_WALL | 381 designs derived from one identity have low joint K by construction | None; only honesty: report "381 designs / N independent" with N from compressibility test | LZ-compressibility of spec corpus < 30% ⇒ N ≈ 270; else flag |
| L2 NP-hardness of optimality | HARD_WALL | "EXACT" verdicts mean exact-match-to-spec, not provably-optimal-design | None; rename verdicts to "PASS against falsifier" not "OPTIMAL" | All README-level "optimal" claims rewritten or flagged within wave N+1 |
| L3 Carnot | SOFT_WALL | Claimed plant Mk.V efficiency must be ≤ Carnot at chosen T_hot/T_cold | None — Carnot is a hard wall, but plants typically run at 30-50% of Carnot; engineering can close the gap | Mk.V η_real / η_Carnot ≥ 0.5 (industry-norm), publish ratio |
| L4 Lawson criterion | SOFT_WALL | Claimed B = 48 T / T = 300 keV / Q = 4 must satisfy n·T·τ ≥ 3 × 10²¹ | None — Lawson is a hard wall; engineering can close τ_E gap via confinement | Closure spec lists explicit n, T, τ_E and shows product ≥ Lawson threshold |
| L5 Repo size | BREAKABLE_WITH_TECH | 381 domains; size unclear; clone depth-3 succeeds | Git LFS for large spec assets; per-domain submodule split if > 5 GB | Repo size ≤ 2 GB sustained at 500+ domains |
| L6 Reviewer attention | BREAKABLE_WITH_TECH | Manual review across 381 domains is super-linear human-time | Automated AI-native verifier (own#33 Block A-G is the start); CI gates per-domain | Median per-domain closure verdict reviewed in ≤ 1 human-hour |
| L7 ASML throughput | UNCLEAR | External industry constraint; canon does not own it | Not breakable by canon directly; mitigated by multi-foundry sourcing | n/a — flag as external dependency |

## §4 Top-3 breakthrough opportunities (this project)

1. **L2 — Rename "OPTIMAL" / "EXACT" verdicts to "PASS-against-falsifier" framing.** Highest honesty impact: NP-hardness means optimality is not verifier-checkable in general; the current language over-claims. Trigger: README + verdict tables updated. Risk: zero; only nomenclature.
2. **L6 — Automated per-domain CI verification.** 381-domain manual review is the binding org-scale constraint. own#33 ai-native-verify-pattern is the right vector; landing it as CI on every domain breaks the reviewer-bandwidth wall. Trigger: median ≤ 1 human-hour per closure verdict.
3. **L4 — Publish n, T, τ_E triple for every fusion-archetype closure.** Lawson is a hard wall; right now closure verdicts assert "EXACT" without exposing the triple-product number. Publishing it lets the claim be falsified or confirmed against the real physical limit. Trigger: every fusion spec lists explicit Lawson-input numbers.

## §5 Honest caveats (raw#10 C3)

- "EXACT" / "PASS" / "OPTIMAL" verdicts in canon are relative to its own spec format, not externally certified. This audit does NOT verify any specific BT-9, BT-97, BT-291 ticket.
- The σ·φ = n·τ identity is mathematically true but is *not a physical limit*; treating it as a ceiling is the lattice-as-constraint pattern LATTICE_POLICY.md §1.1 forbids.
- Fusion-related closure (HEXA-FUSION / HEXA-TTF / HEXA-FPP) claims must clear Lawson and Carnot independently of any arithmetic identity. The audit flags this; it does NOT certify the underlying physics claims.
- ASML / regulatory / supply-chain limits (L7 and similar) are out of canon's scope to break; canon only catalogues. The breakthrough opportunities are honesty-improving, not physics-defying.
- Kolmogorov compression test (L1) requires actually running gzip / xz over the spec corpus to make the "≈N independent designs" claim quantitative; not done in this audit.

## §6 References

- `LATTICE_POLICY.md` §1.2 (universal real-limits standard, 2026-05-12)
- `README.md` — CANON highlights (381 DSE domains, 1116 NEXUS tests, fusion family)
- `GRADE_RUBRIC_1_TO_10PLUS.md` — verdict rubric
- Lawson (1957), Carnot (1824), Kolmogorov (1965), Cook (1971 NP), ASML EUV throughput datasheets
