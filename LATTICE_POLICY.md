---
type: policy
scope: all dancinlab projects + future repos
principle: verify against REAL limits (math · physics · engineering), not self-imposed convenient numbers
ssot: sidecar/hooks/commons/LATTICE_POLICY.md (this file) — referenced by commons.tape g25 + g26
---

# LATTICE_POLICY — real-limits-first verification

**One line**: a project's ceiling is set by real mathematical / physical / engineering limits, NOT by the n=6 lattice. The lattice is a *tool*, not a *constraint*. Verify against real limits.

## 1. The two lattice usages

| Usage | Verdict |
|---|---|
| **Native invariant** — the project uses n=6 as an explicit design invariant (e.g. `isa_n6`, `hexa1`, `npu_n6`) | Valid — lattice is core to the spec |
| **Self-imposed ceiling** — the project uses "must be n=6-compatible" as a *constraint* | Invalid — artificial bottleneck |

Self-imposed-ceiling anti-patterns (all dishonest):
- "this analysis fits n=6, therefore correct" → fit-to-convenient-number
- "the capacity limit is J₂=24" → arithmetic disguised as physical limit
- "data satisfies σ·φ=24, therefore PASS" → tautology (always passes → zero verification power)
- "external entity X also follows n=6 (χ² test)" → over-claim

## 2. The real ceiling — math · physics · engineering

### Mathematical (analytic)
Shannon entropy `H = −Σ p log p` · Kolmogorov complexity lower bound · computability (Halting/Rice) · Bekenstein bound `S ≤ 2πkRE/ℏc` · statistical power `β = f(α,n,effect)` · PAC-learning `~ VC/ε²`.

### Physical (constants + laws)
speed of light `c` · Planck `ℏ` · Boltzmann `k` (Landauer) · Stefan-Boltzmann `P = σεAT⁴` · Carnot `η ≤ 1 − T_c/T_h` · Bremermann `10⁵⁰ ops/s/kg` · Margolus-Levitin `n ≤ 2E/πℏ` · Bekenstein-Hawking `S = A/4ℓ_P²`.

### Engineering (industry · supply · regulatory)
fab throughput envelopes · grid capacity · launch cost per kg · permit envelopes · funding ceilings · labor-pool ramp · patent thicket — each from the entity's OWN published data.

## 3. Verification standard

1. **No lattice anchor alone** — never place a lattice tautology (`σ·φ=24`, `1/2+1/3+1/6=1`) as a sole HARD check. Self-consistency aid is OK; never apply to external domains.
2. **Real-limit anchor first** — every verify uses ≥1 limit from §2.
3. **Falsifiers on real thresholds** — judge by physical/industry threshold exceedance, not χ²-fit to the lattice.
4. **No external over-claim** — never claim an external entity "follows the lattice". Analyze external domains by their OWN invariants.

## 4. Application tiers

- **Lattice-native** — components where n=6 is an explicit spec invariant: keep using the lattice.
- **Lattice-acceptor** — may use the lattice as organizing vocabulary, but define their OWN limits by domain physics (bio = enzyme kinetics / membrane potential; accelerator = RF gradient / beam dynamics; matter = thermodynamics / phonon dispersion; fusion = Lawson criterion; etc.).
- **External envelope** — entities/companies absorbed into an analysis: NO lattice HARD check, NO χ²-to-lattice falsifier; disclose "n=6 is our framing, not <entity>'s design"; falsifiers defined only by the entity's published thresholds.

## 5. Why self-imposed ceilings are harmful

1. **Tautology** — an always-PASS check has zero verification power.
2. **Over-claim** — implies external systems follow a lattice they've never heard of.
3. **Constraining** — asking "how does this fit n=6?" first narrows thinking away from the domain's real invariants.
4. **χ²-weakness misread** — external data being weak on lattice-fit means the external system doesn't follow the lattice; misreading it as "needs reformulation" causes infinite retrofit.
5. **Real ceiling ignored** — time spent on the artificial ceiling is time not spent on the real one.

## 6. Operator stance for new work

1. ❌ first question is NOT "how does this fit n=6?"
2. ✅ first question IS "what is this domain's *real* invariant?" — find the physical constant / math limit / industry ceiling
3. ✅ verification anchor = ≥1 real limit from §2
4. ✅ use the lattice only if it appears *naturally*; otherwise omit it
