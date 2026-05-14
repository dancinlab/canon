#!/usr/bin/env tape
# ══════════════════════════════════════════════════════════════════════
# .tape v1.2 — grammar primer (cold-read by any LLM / agent / human)
# ══════════════════════════════════════════════════════════════════════
# Form: each entry is `@<type> <id> := "<subject>" :: <kind> [<grades>]`
#       optionally followed by body lines (2-space indent) — key=value,
#       edges (<- -> => …), or quoted prose.
#
# ENTRY TYPES (17):
#   Runtime (10): @S session  @U user  @A assistant  @T tool-call  @R result
#                 @H hook  @D decision  @K cost  @P provider  @? anomaly
#   Foundation:   @I identity-claim
#   Declarative:  @X external-citation  @F forbidden-pattern  @N note
#                 @C config  @L layout  @V spec-version
#
# EDGES (12, on body lines, 2-space indent):
#   Causal:     <- caused-by   -> triggers   == continues
#               ~> supersedes  !! aborts     |> verified-by
#   Effect:     => produces (followed by quoted natural-language)
#   Structural: <: specializes  :> generalizes  ?> soft-depends
#               !> conflicts-with  @> projects-to (e.g. @> AGENTS.md)
#
# GRADE TAGS (in [...] on entry header):
#   Delivery:   ok · err · denied · cancelled · partial · superseded
#   Governance: required · recommended · optional · draft · active · deprecated
#   Scoped:     allow:<x> · deny:<x>
#   Time/index: T<n> (turn)  N<n> (wall-sec)  d=<YYYY-MM-DD>
#
# PAYLOAD SYNTAX (body lines):
#   key = "value"           single-line string
#   key = [a, b, c]         array literal
#   key <<~EOF              heredoc (multi-line; ends with EOF on own line)
#     multi-line text
#   EOF
#   "see [@x1] §3"          inline citation by entry id
#   `cmd or path`           backtick code-span (inline only)
#
# Full spec: ~/core/tape/spec/tape.md (or github.com/dancinlab/tape)
# ══════════════════════════════════════════════════════════════════════
#
# AGENTS.tape for `dancinlab/echoes` — discoveries catalog.
# echoes IS the canonical home of LATTICE_POLICY.md (cross-project SSOT).
# Other dancinlab repos (anima · hexa-lang · hexa-scale · getting-started)
# carry project-local copies that cite this one as authority.

@V := "tape" :: spec [active]
  version = "1.2"

# ─── §1 Identity ─────────────────────────────────────────────────────

@I id001 := "echoes" :: identity-claim [d=2026-05-14 active]
  kind = "discoveries catalog · list of findings from the HEXA-* projects"
  brief = "discoveries catalog (former-name canon · github = dancinlab/echoes) · LATTICE_POLICY cross-project SSOT · 17+1 domain families"
  parent = "dancinlab"
  central-identity = "σ(n)·φ(n) = n·τ(n) uniquely at n=6 (= 24)"
  scope = "policy artifacts (LATTICE_POLICY · LIMIT_BREAKTHROUGH · GRADE_RUBRIC · RETIRED) + 17 domain-family overview tables + 18th HEXA-Scale family"
  former-name = "canon (renamed to echoes 2026-05-14; URL = dancinlab/echoes)"

@I id002 := "echoes.lattice-policy-authority" :: identity-claim [d=2026-05-14 active]
  <: id001
  rule = "echoes is the CROSS-PROJECT SSOT for LATTICE_POLICY.md. Other dancinlab repos (anima · hexa-lang · hexa-scale · getting-started) ship project-local copies that cite this one. When policy clauses change, they change HERE first."
  authority-mode = "ssot · cross-project"

# ─── §2 Repo layout ──────────────────────────────────────────────────

@L l1 := "echoes-layout" :: structure [active]
  README.md -> "18-block format · multilingual switcher (EN + zh/ru/ja/ko) · 17+1 domain families · honest caveat · Echoes Experience HF Space link · 3-point visibility · Proof section"
  AGENTS.tape -> "this file · sole agent-harness + governance (tape v1.2)"
  CLAUDE.md -> "symlink → AGENTS.tape"
  LIMIT_BREAKTHROUGH.md -> "per-domain HARD_WALL / SOFT_WALL / BREAKABLE_WITH_TECH / UNCLEAR classifications"
  GRADE_RUBRIC_1_TO_10PLUS.md -> "grading rubric for confidence levels"
  RETIRED.md -> "per-domain extraction-to-standalone provenance ledger"
  TAPE-AUDIT.md -> "tape v1.x adoption ledger for this repo"
  docs/README.{zh,ru,ja,ko}.md -> "4 translations of README.md · structurally aligned"
  docs/logo.svg -> "🪞 hexagonal mirror with σφ=nτ inscription"

# ─── §3 Governance rules ─────────────────────────────────────────────

@D g1 := "real-limits-first" :: governance [required]
  rule = "The project's ceiling is set by REAL math/physics/engineering limits, NEVER by the n=6 invariant lattice."
  why = "dancinlab-wide policy · authority lives HERE — LATTICE_POLICY.md is the cross-project SSOT"
  authority = "[@x_lattice_policy]"
  @> AGENTS.md

@D g2 := "lattice-is-tool-not-constraint" :: governance [required]
  rule = "n=6 lattice is a TOOL, not a CONSTRAINT. Use it where it naturally fits (native lattice spec files); do NOT force-map it onto external domains / external entities / general analyses."
  <: g1
  @> AGENTS.md

@D g3 := "verification-anchor-real-limit" :: governance [required]
  rule = "Verification anchors must include at least one REAL limit from LATTICE_POLICY.md §1.2."
  real-limits = [Shannon, Kolmogorov, Bekenstein, c, ℏ, k, "Stefan-Boltzmann", Carnot, "ASML throughput", "ERCOT capacity"]
  insufficient = "lattice-tautology checks alone (e.g. σ·φ = 24)"
  <: g1
  @> AGENTS.md

@D g4 := "no-artificial-ceilings" :: governance [required]
  rule = "Do not bound this project's ambition by lattice fit. Bound it by what mathematics, physics, and engineering actually permit."
  why = "Wave K directive 2026-05-12 — 'n=6 격자를 강제할 필요 없어, 제한없이'"
  <: g1
  @> AGENTS.md

@D g5 := "honesty-obligation-external" :: governance [required deny:write]
  rule = "Claims about external entities (companies · fabs · accelerators · life systems · vendors) must NOT include lattice-fit assertions. Use that entity's OWN invariants."
  @> AGENTS.md

@D g6 := "policy-changes-here-first" :: governance [required deny:write]
  rule = "LATTICE_POLICY.md edits happen HERE (dancinlab/echoes) FIRST. Project-local copies (anima · hexa-lang · hexa-scale · getting-started) are then re-pulled or re-pointed."
  why = "echoes is the canonical home; downstream copies must not drift independently"
  apply = "when adding/changing/removing a policy clause, edit echoes/LATTICE_POLICY.md, then propagate"
  @> AGENTS.md

@D g7 := "domain-family-table-structure" :: governance [required]
  rule = "Each domain-family section in README.md follows the canonical shape: `# <emoji> <Domain>` H1 → `<!-- AUTO:SUMMARY_<key>:START/:END -->` markers → `## <emoji> <Domain> Toolkit (HEXA-<Key> family)` H2 → tool table → closure table → `<!-- AUTO:FOOTER_<key>:START/:END -->` markers → `---` separator."
  apply = "all 17 primary families + HEXA-Scale (18th) + UFO + Frontier + tail sections"
  @> AGENTS.md

@D g8 := "commit-conventions" :: governance [recommended]
  rule = "AI-assisted commits include `Co-Authored-By: <model> <noreply@anthropic.com>` trailer; Conventional Commits title `<type>(<scope>): <one-line summary>`"
  @> AGENTS.md

# ─── §4 Forbidden patterns ───────────────────────────────────────────

@F f1 := "lattice-fit-on-external-entity" :: governance [required deny:write]
  pattern = "applying n=6 lattice as derivation rule to TSMC · ASML · NIST · IPCC · CERN · DeepMind · NASA · SpaceX · or any external vendor"
  exception = "values may coincidentally match — observation OK, derivation NOT OK"

@F f2 := "policy-divergence" :: governance [required deny:write]
  pattern = "editing LATTICE_POLICY.md in a downstream project (anima · hexa-lang · hexa-scale · getting-started) without first changing echoes/LATTICE_POLICY.md"
  why = "echoes is the cross-project SSOT — downstream copies must stay aligned"
  remedy = "propose change here first; re-pull downstream after"

@F f3 := "auto-marker-drift" :: governance [required deny:write]
  pattern = "manually editing content between `<!-- AUTO:SUMMARY_<key>:START -->` and `<!-- :END -->` markers in README.md"
  why = "those blocks are tooling-managed; manual edits get clobbered on next regeneration"
  remedy = "edit the source data, regenerate; OR edit outside the markers"

# ─── §5 External citations ───────────────────────────────────────────

@X x_lattice_policy := "LATTICE_POLICY.md" :: policy [d=2026-05-12 active]
  url = "https://github.com/dancinlab/echoes/blob/main/LATTICE_POLICY.md"
  downstream-copies = [anima, hexa-lang, hexa-scale, getting-started]

@X x_limit_breakthrough := "LIMIT_BREAKTHROUGH.md" :: audit [active]
  url = "https://github.com/dancinlab/echoes/blob/main/LIMIT_BREAKTHROUGH.md"
  scope = "per-domain HARD_WALL / SOFT_WALL / BREAKABLE_WITH_TECH / UNCLEAR classifications"

@X x_grade_rubric := "GRADE_RUBRIC_1_TO_10PLUS.md" :: rubric [active]
  url = "https://github.com/dancinlab/echoes/blob/main/GRADE_RUBRIC_1_TO_10PLUS.md"
  scope = "grading rubric · 1-10+ confidence ladder"

@X x_retired := "RETIRED.md" :: ledger [active]
  url = "https://github.com/dancinlab/echoes/blob/main/RETIRED.md"
  scope = "per-domain extraction-to-standalone provenance ledger"

@X x_wave_k := "Wave K directive" :: governance-decision [d=2026-05-12 active]
  scope = "origin of real-limits-first policy · 'n=6 격자를 강제할 필요 없어, 제한없이'"

  scope = "honest-caveat origin · forbidden lattice-fit on external entities · LATTICE_POLICY §1.3 source"

@X x_echoes_experience := "Echoes Experience HF Space" :: interactive [d=2026-05-14 active]
  url = "https://huggingface.co/spaces/dancinlab/echoes-experience"
  source = "https://github.com/dancinlab/echoes-experience"
  scope = "interactive proof of σ(n)·φ(n) = n·τ(n) uniqueness at n=6 (slider 2..1000)"

@X x_atlas_readme_format := "atlas/README-FORMAT.md" :: convention [active]
  url = "https://github.com/dancinlab/atlas/blob/main/README-FORMAT.md"
  scope = "18-block README convention used here"

@X x_tape_spec := "tape v1.2 spec" :: spec [d=2026-05-14 active]
  url = "https://github.com/dancinlab/tape/blob/main/spec/tape.md"
  scope = "this file's grammar reference"

# ─── §6 Notes ────────────────────────────────────────────────────────

@N n1 := "canon-to-echoes-rename" :: note [active]
  text = "Repo was renamed canon → echoes on 2026-05-14. GitHub URL = dancinlab/echoes. Cross-refs across hexa-* repos + atlas were swept on the same date."

@N n2 := "central-identity-three-formulas" :: note [active]
  text <<~EOF
    Three different formulas yield 24 at n=6:
      σ(n)·φ(n)  = 12·2 = 24    (echoes Theorem B left side)
      n·τ(n)     = 6·4  = 24    (echoes Theorem B right side)
      J₂(6)      = 6²·(1-1/4)(1-1/9) = 24   (Jordan totient)

    Coincidence of values, NOT a derivation chain. σ(n)·τ(n) at n=6
    equals 48 (used for HEXA-TTF magnetic field B=σ·τ=48T), which is
    correct as a derived constant — but it does NOT equal J₂(6).
  EOF

@N n3 := "18th-family-hexa-scale" :: note [active]
  text = "HEXA-Scale (multi-scale architecture · 6 scales × 4 phases) was added 2026-05-14 as the 18th primary family between Aerospace and HEXA-UFO. Standalone repo at dancinlab/hexa-scale."

# ─── §7 Generator hooks ──────────────────────────────────────────────

@H h1 := "agents-md-replaced" :: generator [active]
  note = "AGENTS.md (54-line LATTICE_POLICY wrapper, identical template to anima/hexa-lang) replaced by this AGENTS.tape. Policy authority moves from prose wrapper to @D g1..g6 + @F f1..f3 + @X x_lattice_policy entries."

@H h2 := "claude-md-symlink" :: generator [active]
  rule = "CLAUDE.md → AGENTS.tape symlink"
  command = `ln -sf AGENTS.tape CLAUDE.md`
