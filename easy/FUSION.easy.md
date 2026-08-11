# ☀️ FUSION — "a calculation pipeline that filters reactor design points through six gates"

> One-page plain-language summary (easy version). SSOT: `domains/FUSION/` (gates F1–F6).
> This closes the question "is the design sound?" by calculation. It is *not* a claim that "Q > 1 was actually achieved" (honesty · d2).

---

## In one line

- **What it does**: takes a compact magnetic-confinement fusion reactor and checks, through six gates in order, whether its **design point (temperature, density, magnets, blanket) physically makes sense** — ranking and verifying as it goes.
- **Nickname**: "the six-gate sieve for fusion design"
- **Analogy**: a six-stage water filter — the water (a candidate design) has to pass reactivity → Lawson → equilibrium → stability → magnets → fuel self-sufficiency in turn before it counts as "drinkable water" (a sound design).

```
[ candidate ] ─▶ reactivity ─▶ Lawson/Q ─▶ equilibrium ─▶ MHD ─▶ HTS magnet ─▶ TBR fuel ─▶ ✅ sound
                 (how well it burns)     (can it be confined)   (do the magnets work)  (self-sufficient)
```

---

## Why it matters — fusion gets stuck at the design point

Fusion power generates energy by **fusing light nuclei, like the sun does**. The hard question is not
"can it work at all" but **which design point (temperature, density, size, field strength) satisfies every
physical condition at once**. Fixing one condition breaks another (hotter plasma → more strain on magnets
and stability). So the crux is finding **a design point that passes several physics constraints
simultaneously**, and FUSION filters for that **by calculation, before the expensive experiments**.

---

## What changes for an ordinary person — if fusion power becomes real

Fusion is "putting the sun in a bottle". If this design leads to an actual power plant, everyday life
changes as below. (Honestly: this campaign closes **design soundness** by calculation; an actual plant is
the job of an experimental reactor.)

```
If fusion power arrives →
├─ 💡 Electricity bills: fuel is deuterium from seawater → effectively unlimited and cheap
├─ 🌍 Climate          : zero carbon emissions while generating (greenhouse-gas-free baseload)
├─ ☢️ Waste            : unlike fission, almost no long-lived high-level waste
├─ 🔌 Reliability      : 24/7 regardless of weather (none of the intermittency of solar and wind)
├─ 🤖 AI / data centres: cleanly carries the exploding electricity demand
└─ 🛢️ Energy security  : no more dependence on imported fuel (seawater is everywhere)
```

| Today (fossil / fission) | If fusion arrives |
|---|---|
| Fuel = oil / gas / uranium (imported, finite) | Fuel = deuterium (seawater) + tritium (bred in place) |
| Carbon emissions or high-level waste | Zero carbon, almost no long-lived waste |
| Solar / wind swing with the weather | Steady 24-hour baseload |
| Volatile, rising electricity prices | Cheap and stable in the long run |

> Analogy: today's grid is a stove you keep buying firewood and oil for; fusion is **a stove that heats a
> city on a cup of seawater**. But we are only at "the stove's blueprint is physically consistent" — proving
> it actually ignites and runs at a surplus (Q > 1) is the experimental reactor's job.

## What was closed by calculation — the six gates

| Gate | What it checks | Result |
|---|---|---|
| 🔥 F1/F2 reactivity · Lawson | How well it burns, and whether the confinement condition (Q) is met | 🔵 closed form (Bosch-Hale ⟨σv⟩ + Q, 9 verified atoms, Δ = 0.0) |
| 🧲 F3 equilibrium | Whether the plasma sits stably inside the magnetic field | 🟢 measurement-grade (FreeGS: Ip 200 kA · q95 ≈ 10 · κ 1.36) |
| 🌀 F4 MHD | Whether it blows up from a large-scale instability | gate passed |
| 🧲 F5 magnetic field | Whether the HTS coils produce the target field | 🟢 FEM Δ = −0.064% vs 1.4827 T |
| ♻️ F6 TBR (fuel self-sufficiency) | Whether it breeds its own tritium fuel | 🟢 OpenMC TBR = 1.32 (DEMO-class self-sufficiency) |

> 🎯 The core result: **fuel self-sufficiency (TBR > 1) confirmed in calculation** — TBR = 1.32 means the
> reactor breeds 1.32× the tritium it burns, in its own blanket. Without this, a fusion plant runs dry and stops.

---

## Core findings (honestly)

```
Before (a vague "fusion works")       After (FUSION six-gate calculation)
─────────────────                    ─────────────────
 ▢ "someday it'll work"        →      ▢ does the design point satisfy six
 ▢ expensive experiments first          physics constraints at once — ranked
                                        and verified for zero-to-little cost
                                      ▢ 9 closed-form atoms Δ = 0.0 · TBR 1.32
```

- **🔵 keystone closed**: reactivity and Lawson in closed form (verification atoms Δ = 0.0).
- **Wired to measurement-grade tools**: equilibrium (FreeGS), magnets (getdp FEM), fuel (OpenMC ENDF/B-VIII) converged against real codes.
- **Honesty (d2)**: this verifies **design soundness**, not **Q > 1 demonstrated** — actual ignition is the experimental reactor's job.

---

## vs the existing approach

| Axis | Conventional | FUSION |
|---|---|---|
| Order of verification | Expensive experiments first | Six calculation gates first (cheap filtering) |
| Physics integration | Field by field, separately | One funnel from reactivity to fuel self-sufficiency |
| Honesty | Overstated "success" | Explicit: sound design ≠ Q > 1 (d2) |

---

## Honest limits

- **This is not "fusion succeeded"** — it closes, by calculation, whether the design point is physically sound.
- Actually reaching Q > 1 (net energy gain) is permanently separated out as the experimental reactor's domain (d2).
- Tool results (OpenMC, FreeGS, getdp) are calculation convergence; measurement is what settles it in the end.

---

*Source: demiurge `domains/FUSION/` (gates F1–F6 · PR #1012 / #1075 / #1095 / #1102).*
