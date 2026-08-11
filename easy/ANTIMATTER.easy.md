# ☄️ ANTIMATTER — "an antimatter factory checked stage by stage on a laptop"

> One-page plain-language summary (easy version). Full paper: `PAPERS/antimatter-factory/` (with the companion audit `PAPERS/antimatter-bluemax-2026/`).
> This closes **engineering feasibility** by calculation. It is *not* a claim that antihydrogen was produced or measured — `absorbed=false` is kept honestly.

---

## In one line

- **What it does**: takes the production line for cold antihydrogen — from making antiprotons to reading their spectrum — and checks, as **seven processes in sequence**, whether each stage is physically feasible.
- **Nickname**: "the 7-stage antimatter production line"
- **Analogy**: a factory conveyor belt. The part has to survive every station — cast → slow → catch → chill → assemble → hold → inspect. Fail one station and nothing comes off the end.

```
①make ─▶ ②slow ─▶ ③catch ─▶ ④cool ─▶ ⑤assemble ─▶ ⑥hold ─▶ ⑦inspect
 6.5 GeV   GeV→keV   Penning    τ∝B⁻²    p̄+e⁺→H̄     Ioffe-      1S–2S +
 threshold  ladder     trap                          Pritchard   g-factor
                                                                (CPT test)
```

---

## Why it matters — antimatter is the hardest thing to make and keep

Antimatter is matter's mirror image, and it annihilates the instant it touches ordinary matter. So you
cannot store it in a bottle: it has to be **caught in a magnetic field, in a vacuum, and held there without
ever touching a wall**. CERN's Antiproton Decelerator complex calls itself an "antimatter factory", and this
work takes that metaphor literally: **each production process becomes a verification axis**, and each one is
closed in closed form.

The point of the whole line is the last station — the **CPT symmetry test**. If antihydrogen's spectrum
differs even slightly from hydrogen's, one of the deepest symmetries in physics breaks, and with it our
account of why the universe is made of matter at all.

---

## What changes for an ordinary person

Antimatter is not a fuel you will buy. Its near-term value is in **the instruments and the answers**.

```
If the antimatter line matures →
├─ 🩻 Medicine   : PET scans already run on antimatter (positrons) — better sources, better imaging
├─ 🧭 Physics    : a direct test of why matter, not antimatter, survived the Big Bang
├─ 🧲 Magnets    : the same superconducting-magnet toolchain carries over to fusion, MRI and accelerators
└─ 🔬 Metrology  : ultra-precise frequency measurement techniques spill over into clocks and sensors
```

> Honest note: antimatter as an energy source or a propellant is **not** what this covers. Production rates
> are on the order of atoms, not grams, and nothing here changes that.

---

## What was closed — the seven processes

| # | Stage | What it checks |
|:-:|-------|----------------|
| ① | Pair production | The threshold for making antiprotons (E_th ≈ 6.5 GeV for p+p → p+p+p̄+p) |
| ② | Deceleration | The AD/ELENA relativistic ladder, GeV down to keV |
| ③ | Trapping | The three Penning-trap eigenfrequencies and the Brown–Gabrielse invariance theorem ω_c² = ω_+² + ω_z² + ω_-² |
| ④ | Cooling | Cyclotron / sympathetic cooling (τ ∝ B⁻²) |
| ⑤ | Recombination | Three-body p̄ + e⁺ → H̄ rate scaling (∝ n_e² T^−9/2) |
| ⑥ | Confinement | The Ioffe–Pritchard magnetic-minimum field and its trap depth (μ_B/k_B = 0.6717 K/T) |
| ⑦ | Measurement | The antihydrogen 1S–2S transition and the antiproton g-factor — the CPT verdict |

> 🎯 Worth noting: stage ⑥ is **not new code**. It is inherited directly from the sibling RTSC magnet
> toolchain (GetDP 4.0 axisymmetric magnetostatics + a Wheeler on-axis closed-form anchor) — the same
> magnetostatic spine reused for a different field geometry (a well instead of a peak).

---

## Core findings (honestly)

```
23 positive atoms   : 3 SUPPORTED-FORMAL integer roots + 20 SUPPORTED-NUMERICAL libm recomputes
                      → |Δ| = 0 at ε = 10⁻⁹
8 negative controls : return FALSIFIED, as they should
8 BLUE-MAX atoms    : expose the exact integers baked into the libm formulas —
                      the pair-production factor 6, the cooling exponent −2,
                      the T^−9/2 recombination scaling, the 3/4 Rydberg level difference
```

- **Every closed-form kernel is backed by an exact integer or rational sibling**, so no load-bearing exponent rests on a floating-point coincidence.
- **Cross-domain reuse demonstrated**: the RTSC magnet toolchain carried into the confinement stage unchanged.
- Reproduction artefacts (verify ledger, PR roll, session journal) ship under `companion/`.

---

## Honest limits

- **Six non-wet-lab stages clear, and that is a witness of factory engineering feasibility** — not a produced or measured antihydrogen sample. `absorbed=false` is kept.
- The **CPT verdict at stage ⑦ cannot be closed by any calculation**. It needs a measured spectroscopy oracle (ALPHA 1S–2S at ≈ 2×10⁻¹², BASE g-factor).
- Nothing here shortens the distance to antimatter at useful quantities.

---

*Source: demiurge `PAPERS/antimatter-factory/` · `PAPERS/antimatter-bluemax-2026/` (BLUE-MAX algebraic-root audit) · sibling substrate `github.com/dancinlab/hexa-antimatter`.*
