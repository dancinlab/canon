# HEXA-WEAVE MVP — cycle 20 W12 Encodable Strand mechanical (5 strand-ZFC axioms collapse)

**Date:** 2026-04-28 (cycle 20 W12)
**Status:** PASS (5/5 strand-ZFC sub-axioms collapsed)
**Predecessor:** cycle 20 W11 (`axiom_hexa_comp_closure_atom` derived theorem; axiom 8 → 7) and cycle 20 W14 (`axiom_felgner_bridge_to_MK` derived theorem via `IsMKProperClass := True` widening; axiom 7 → 6)

## Mission (cycle 20 W12)

Collapse the 5 strand-ZFC encoding axioms

```
axiom axiom_strand_zfc_witness_amino       : List AminoAcid     → ZFSet.{0}
axiom axiom_strand_zfc_witness_rna         : List RNANucleotide → ZFSet.{0}
axiom axiom_strand_zfc_witness_dna         : List DNANucleotide → ZFSet.{0}
axiom axiom_strand_zfc_witness_small_ligand: String             → ZFSet.{0}
axiom axiom_strand_zfc_witness_antibody    : List AminoAcid → List AminoAcid → ZFSet.{0}
```

into 5 derived `noncomputable def`s by introducing `Encodable` instances on the monomer alphabets and composing with the standard von Neumann `PSet.ofNat : ℕ → PSet` injection.

## Outcome

**5/5 PASS.** Lake build PASS (8 jobs, no errors, no warnings); `tool/lean4_axiom_count_check.hexa --expected 1` PASS (actual = 1, delta = 0).

| Sub-axiom (A.1-A.5)               | Pre-W12 | Post-W12              |
|-----------------------------------|---------|-----------------------|
| `..._amino` : `List AminoAcid → ZFSet`     | `axiom` | `noncomputable def`   |
| `..._rna` : `List RNANucleotide → ZFSet`   | `axiom` | `noncomputable def`   |
| `..._dna` : `List DNANucleotide → ZFSet`   | `axiom` | `noncomputable def`   |
| `..._small_ligand` : `String → ZFSet`      | `axiom` | `noncomputable def`   |
| `..._antibody` : `List AA → List AA → ZFSet` | `axiom` | `noncomputable def` |

Net axiom-count effect (combined with W11 + W14 from this cycle 20):

| cycle | start | end | delta | residual axioms |
|---|---|---|---|---|
| cycle 19 W10        | 11 | 8 | -3 | 5 strand-ZFC + felgner_bridge + closure_atom + ax1_tail |
| cycle 20 W11        |  8 | 7 | -1 | 5 strand-ZFC + felgner_bridge + ax1_tail |
| cycle 20 W14        |  7 | 6 | -1 | 5 strand-ZFC + ax1_tail |
| cycle 20 W12 (here) |  6 | 1 | -5 | ax1_tail |

**Final post-cycle-20 axiom count: 1** (`axiom_robin_hardy_wright_ax1_tail` only).

## Implementation

### `Foundation/Strand.lean` §5b (NEW section, cycle 20 W12)

Adds three `Encodable` instances + a `Strand.encodeNat : Strand → ℕ` injection:

```lean
import Mathlib.Logic.Equiv.List   -- List α Encodable instance
import Mathlib.SetTheory.ZFC.Basic -- PSet.ofNat / ZFSet.mk

instance AminoAcid.encodable : Encodable AminoAcid where
  encode  | .ala => 0 | ... | .pyl => 21
  decode  | 0 => some .ala | ... | _ => none
  encodek := by intro a; cases a <;> rfl

instance RNANucleotide.encodable : Encodable RNANucleotide where
  encode | .a => 0 | .u => 1 | .g => 2 | .c => 3
  decode | 0 => some .a | 1 => some .u | 2 => some .g | 3 => some .c | _ => none
  encodek := by intro x; cases x <;> rfl

instance DNANucleotide.encodable : Encodable DNANucleotide where
  encode | .a => 0 | .t => 1 | .g => 2 | .c => 3
  decode | 0 => some .a | 1 => some .t | 2 => some .g | 3 => some .c | _ => none
  encodek := by intro x; cases x <;> rfl

def Strand.encodeNat : Strand → ℕ
  | .aminoAcid seq      => Nat.pair 0 (Encodable.encode seq)
  | .rna seq            => Nat.pair 1 (Encodable.encode seq)
  | .dna seq            => Nat.pair 2 (Encodable.encode seq)
  | .smallLigand smiles => Nat.pair 3 smiles.length
  | .antibody h l       => Nat.pair 4 (Nat.pair (Encodable.encode h) (Encodable.encode l))
```

### `Foundation/Axioms.lean` §3 — A.1-A.5 conversion

The 5 `axiom` keywords are replaced by 5 `noncomputable def`s composing
`Encodable.encode` with `ZFSet.mk ∘ PSet.ofNat`:

```lean
noncomputable def axiom_strand_zfc_witness_amino (seq : List AminoAcid) : ZFSet.{0} :=
  ZFSet.mk (PSet.ofNat (Encodable.encode seq))

noncomputable def axiom_strand_zfc_witness_rna (seq : List RNANucleotide) : ZFSet.{0} :=
  ZFSet.mk (PSet.ofNat (Encodable.encode seq))

noncomputable def axiom_strand_zfc_witness_dna (seq : List DNANucleotide) : ZFSet.{0} :=
  ZFSet.mk (PSet.ofNat (Encodable.encode seq))

noncomputable def axiom_strand_zfc_witness_small_ligand (smiles : String) : ZFSet.{0} :=
  ZFSet.mk (PSet.ofNat smiles.length)

noncomputable def axiom_strand_zfc_witness_antibody
    (heavy light : List AminoAcid) : ZFSet.{0} :=
  ZFSet.mk (PSet.ofNat (Nat.pair (Encodable.encode heavy) (Encodable.encode light)))
```

The wrapper `axiom_strand_zfc_witness : Strand → ZFSet` retains its original signature so all downstream callers (`StrandClass_ZFC`, `MKBridge.lean` exhibition theorems) compile unchanged.

## raw 91 C3 honest disclosure

1. **`Encodable` is mathlib4-standard, not fabricated novelty.** The `Encodable α` class in `Mathlib.Logic.Encodable.Basic` is the canonical "constructively countable type" interface, with `encode : α → ℕ`, `decode : ℕ → Option α`, and `encodek : ∀ a, decode (encode a) = some a`. The amino-acid / RNA / DNA / List / `Nat.pair` infrastructure used here is all upstream mathlib4 — this work does NOT introduce new axioms or new mathlib-style definitions.

2. **Round-trip preservation** holds at the `ℕ` layer for every constructor branch except the `smallLigand` SMILES branch: the amino-acid / RNA / DNA / antibody encodings are bijective onto a subset of `ℕ`, with the inverse computed by `Encodable.decode` (verified by `cases x <;> rfl` for the monomers, and by mathlib4's `decodeList_encodeList_eq_self` for List wrappers).

3. **The `smallLigand` branch is intentionally non-injective on String content.** It uses `String.length` rather than a SMILES character-by-character injection because mathlib4 has no `Encodable Char` instance. The original `axiom_strand_zfc_witness_small_ligand : String → ZFSet` was an UNINTERPRETED function symbol with no injectivity claim — any concrete `String → ZFSet` Lean term discharges the `axiom`-keyword footprint. A faithful SMILES-content injection (Char → ℕ via `Char.toNat` + List encoding) requires either upstream `Encodable Char` in mathlib4 or a local `Encodable Char` instance built from `Char.utf8Size` / `Char.toNat`. This is deferred to W13+ as part of the strand-encoding fidelity-vs-mechanisability tradeoff disclosure.

4. **`ZFSet.mk ∘ PSet.ofNat : ℕ → ZFSet` is the standard von Neumann ordinal injection** (`PSet.ofNat 0 = ∅`, `PSet.ofNat (n+1) = insert (ofNat n) (ofNat n)`). It is injective on ℕ, so the composite `Strand → ZFSet` is injective on the `aminoAcid / rna / dna / antibody` branches and identifies any two `smallLigand` strings of equal length onto the same ZFSet.

5. **Semantic preservation of `StrandClass_ZFC`.** `StrandClass_ZFC z := ∃ s : Strand, axiom_strand_zfc_witness s = z` is unchanged at the type-level surface. `axiom_strand_zfc_witness` retains its `Strand → ZFSet.{0}` signature; the dispatch body now refers to derived `def`s instead of postulated `axiom`s. All downstream theorems compile unchanged. raw 142 D2: full revertibility via `git checkout HEAD~1 -- lean4-n6/N6/MechVerif/Foundation/Strand.lean lean4-n6/N6/MechVerif/Foundation/Axioms.lean`.

6. **Semantic preservation of W6 `hexa_comp_strand`** (Foundation/Strand.lean §7): the `hexaComp : Strand → Strand → Strand` placeholder dispatch is independent of the encoding change. C.4 (`axiom_hexa_comp_zfc_class_closure`) still holds because its proof body `⟨hexaComp s₁ s₂, rfl⟩` is unchanged.

## raw 47 cross-repo dependencies

- `Mathlib.Logic.Encodable.Basic` (`class Encodable`)
- `Mathlib.Logic.Equiv.List` (`instance List.encodable : Encodable (List α)` for `[Encodable α]`)
- `Mathlib.SetTheory.ZFC.PSet` (`def PSet.ofNat : ℕ → PSet`)
- `Mathlib.SetTheory.ZFC.Basic` (`def ZFSet.mk : PSet → ZFSet`)
- `Init.Data.Nat.Pairing` (`Nat.pair`, transitively via `Mathlib.Data.Nat.Pairing` re-exports for the `Encodable List` decoder)

## Verification

```
$ cd lean4-n6 && lake build
Build completed successfully (8 jobs).

$ grep -c '^axiom ' lean4-n6/N6/MechVerif/Foundation/Axioms.lean
1

$ ~/core/hexa-lang/hexa tool/lean4_axiom_count_check.hexa --expected 1 --severity warn
{"file":"...Foundation/Axioms.lean","expected":1,"actual":1,"delta":0,"status":"PASS"}
__LEAN4_AXIOM_COUNT_CHECK_RESULT__ PASS

$ grep '^axiom ' lean4-n6/N6/MechVerif/Foundation/Axioms.lean
axiom axiom_robin_hardy_wright_ax1_tail :
```

raw 138 sentinel: `__W12_ENCODABLE_STRAND_RESULT__ PASS` (5/5 strand-ZFC sub-axioms collapsed; 0/5 FAIL).

## Alien-grade ledger impact

The 5-axiom collapse shifts the `lean_mechanical` denominator. cycle 19 alien-grade v2 measured `lean_mechanical = 1.0 (11/11 Felgner atomics)`; cycle 20 W12 closes the 5 strand-ZFC axioms but does NOT extend the v2 Felgner-atomic denominator (which is a separate axis of measurement). However, the **total-axiom-basis** ratio (extension proposed in cycle-20-W11 proposal §"Next-cycle priorities") moves from 4/12 (cycle 19 W10 baseline 11 atomics + 1 W11 closure_atom = 12, of which 1 atom remained axiom) to **11/12** post-W12 (only `ax1_tail` un-collapsed against a denominator extended to include all Foundation/Axioms.lean keywords).

Conservatively (without v3 alien-grade tool extension): **alien-grade aggregate unchanged at 4.7920** (the inner_weighted_sum components do not yet reflect the cycle-20-W12 axiom delta). cycle 21+ TODO: extend `lean_mechanical` axis to total-axiom basis and re-measure.

## F-W12-* falsifier registration

- **F-W12-1 (NEW PASS)** — strand-ZFC encoding axiom collapse via `Encodable` instances. Status: PASS (5/5 sub-axioms collapsed). Witness: this proposal + lean4 commit + `tool/lean4_axiom_count_check.hexa --expected 1 PASS`.
- **F-W12-2 (NEW PREREGISTERED)** — `smallLigand` branch is `String.length`-injective, not SMILES-content-injective. Deadline: 2026-07-28 (90d MVP) for upgrade to `Encodable Char`-backed injection, or written exemption tied to "AX-2 unit 2 strand-ZFC realisability does not require SMILES-content distinguishability."
- **F-W9-* (strand-encoding stretch disclosures, cycle 9)** — UPDATED to RESOLVED for W12 work: the per-constructor encoding axioms are now mechanically derived. The W9 stretch concern (full constructive `Encodable Strand` instance) is partially RESOLVED at the `Strand → ℕ` injection layer via `Strand.encodeNat`; round-trip `decodeNat : ℕ → Option Strand` remains W13+ work.

## Next-cycle priorities (cycle 21+)

1. **W13 — `axiom_robin_hardy_wright_ax1_tail`** mechanical attempt. The remaining single axiom is the Robin 1984 + Hardy-Wright 322/328 + Wigert 1907 asymptotic separation `∀ n > 50, ¬AX1Eq n`. Full discharge requires either a number-theoretic mechanical proof in mathlib4 or a structure-level widening (analogous to W11/W14).
2. **F-W12-2 closure** — `Encodable Char` instance (or a written exemption per the falsifier preregistration).
3. **lean_mechanical v3 alien-grade extension** — propose axis denominator change to total-axiom basis and re-measure (post-W13 expected aggregate ~4.79+ → 4.84+ if W13 succeeds).
4. **`Strand.decodeNat`** — round-trip inverse for `Strand.encodeNat`, completing the `Encodable Strand` instance proper (currently only the encode direction is built).

raw 142 D2 revertibility: this cycle 20 W12 work is a two-file edit (`Strand.lean §5b` add + `Axioms.lean §3` 5-axiom-to-def conversion). Revert via `git checkout HEAD~1 -- lean4-n6/N6/MechVerif/Foundation/Strand.lean lean4-n6/N6/MechVerif/Foundation/Axioms.lean`.
