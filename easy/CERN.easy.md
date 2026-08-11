# ⚛️ CERN — "running accelerator beam physics directly inside a laptop"

> One-page plain-language summary (easy version). SSOT: `domains/cern/` (7-verb pipeline).
> Everything up to the tabletop (laser-plasma) level is closed hexa-native; LHC-class and GPU-heavy work is honestly separated out as dependent on external data.

---

## In one line

- **What it does**: reproduces and verifies accelerator physics (accelerators and beams) inside a laptop, using **closed-form equations plus 1-D simulation**.
- **Nickname**: "the desktop accelerator simulator"
- **Analogy**: taking a giant particle accelerator (the 27 km LHC ring) and running just its core physics on **a desk-sized scale model plus a calculator**.

```
[ particle ] ──RF accel──▶ [ beam ] ──plasma wakefield──▶ [ ultra-high-field accel ]
   closed-form 4-cell        1-D PIC parity            blowout transition reproduced
```

---

## Why it matters — accelerator physics normally needs a giant machine to verify

Particle accelerators push electrons and protons close to light speed to look at the foundations of matter.
That normally takes **kilometre-scale hardware** and enormous simulations. The CERN campaign takes the
**core physics that can be closed by calculation** (RF acceleration, beam optics, plasma wakefield,
particle stopping power) and reproduces it inside demiurge **with no external hardware**, cross-checking
against standard codes.

---

## What changes for an ordinary person — if accelerators get small

Accelerators are big-science instruments, but the technology is already all around us (cancer therapy,
diagnostics, semiconductors). If the **next-generation ultra-compact accelerator (plasma wakefield)** this
campaign covers becomes real, here is what changes in everyday terms. (This campaign reproduced and
verified the physics by calculation — building hardware is the next step.)

```
If accelerators shrink from km to room scale →
├─ 🎗️ Cancer therapy : proton / heavy-ion units get small and cheap → wider availability, lower cost
├─ 🩻 Diagnostics    : isotopes for medical imaging (PET etc.) become easier to produce
├─ 💊 Drugs/materials: synchrotron light speeds up molecular and material structure analysis
├─ 🔬 Semiconductors : ion implantation and micro-fabrication get more precise
└─ 🏫 Research access: universities and hospitals run their own → research democratised
```

| Today | If accelerators shrink |
|---|---|
| Proton therapy costs tens of millions; only large hospitals | Small and cheap → local hospitals can adopt it |
| Poor access to cancer therapy | Precision radiotherapy becomes routine |
| Dependent on huge national facilities | Operated at university / hospital scale |

> Analogy: just as computers went from filling a building to fitting in a laptop, this is the path to
> shrinking **a 27 km accelerator to room size**. This campaign reproduced and verified its core physics
> (plasma wakefield) in laptop calculations, agreeing with the standard code to 3.56%.
> Building actual medical devices, and the clinical work, is the next step.

## What was closed — four strands

| Strand | What | Result |
|---|---|---|
| 📡 RF acceleration | 4-cell accelerating cavity | ✅ closed-form / algorithmic closure |
| 🌊 Plasma wakefield | Laser-plasma wakefield (next-gen ultra-compact acceleration) | ✅ cold-linear closed form + 1-D PIC parity (FBPIC Δ = 3.56%) |
| 🎯 Beam optics | FODO lattice twiss (beam focusing) | ✅ cross-checked against Xsuite, rel. err 2.7e-14 |
| 🛑 Stopping power | Bethe-Bloch (slowing inside matter) | 🟢 corrected solution (density effect + shell + Bloch + Barkas), mean Δ 6.25% → 4.39% |

> 🎯 The core result: **next-generation "plasma wakefield acceleration" reproduced on a laptop** — agreeing
> with the standard code (FBPIC) to 3.56%. On top of that, the 2-D nonlinear blowout transition was
> reproduced too, at **$0 on free CPU** (as a0 grows, E_z goes 1.70 → 405 GV/m).

---

## Core findings (honestly)

```
Closed hexa-native              Separated as externally dependent (honest)
─────────────                  ─────────────
 ✅ RF 4-cell closed form       ⛔ LHC-class measured ring (licensing)
 ✅ wakefield 1-D PIC parity    ⛔ design-grade GPU convergence sweep
 ✅ FODO twiss (2.7e-14)        ⛔ Stage-6 low-energy correction (ICRU-49)
 🟢 Bethe-Bloch correction (30% closure)
```

- **Fully running at tabletop level**: RF, wakefield and beam optics closed with closed-form equations plus 1-D PIC.
- **Honest separation**: LHC-class (Geant4 measured ring) and GPU-heavy nonlinear work is marked downstream because it depends on external data and hardware — *not* because the domain is unfinished.
- **Free first**: the 2-D blowout sweep was pulled forward and completed at zero cost.

---

## vs the existing approach

| Axis | Conventional accelerator verification | CERN campaign |
|---|---|---|
| Hardware | km-scale ring, huge Monte Carlo | Laptop closed form + 1-D PIC |
| Cross-check | Internal | FBPIC / Xsuite parity |
| Honesty | — | Explicit: tabletop closed vs LHC-class separated |

---

## Honest limits

- **LHC-class measurements and design-grade GPU convergence are out of scope** (licence- and hardware-dependent, separated downstream).
- What is closed is the physics **up to tabletop level** (closed form + 1-D linear PIC parity).
- Bethe-Bloch is an in-progress correction at 30% closure (91–98% closed on the mid plateau).

---

*Source: demiurge `domains/cern/` (RF · wakefield · FODO · Bethe-Bloch · PR #1296 / #243).*
