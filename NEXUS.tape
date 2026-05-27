#!/usr/bin/env tape
# NEXUS.tape — echoes intra-project reuse lattice (SSOT)
# Canonical structured SSOT of the intra-repo reuse graph.
# Migrated from the README "NEXUS — 재사용 격자" section (which is now a pointer).
# Governance: commons @D g67 (universal · intra-project reuse lattice).
#
# echoes 특수성 (정직 disclosure): echoes = discoveries catalog / index.
# 작동 코드(working code)는 RETIRED.log.md 이관 ledger 대로 도메인별 standalone
# hexa-* repo 로 추출(extract)되어 있다 (@D d3 — 코드 home 은 standalone). 따라서 repo
# 내부의 cross-domain 재사용은 코드-부품 재사용이 아니라 공유 불변량(invariant) ·
# 정책 SSOT · 검증된 cross-domain bridge 의 재사용이다. 아래 엣지는 새 claim 이 아니라
# README 가 이미 추적하던 비공식 reuse 의 집계(aggregation)다. code-reuse edges = 0.
#
# Block legend:
#   @I nexus              — identity (kind · scope)
#   @X e<n> :: reuse-edge       — a REAL reuse edge (provides -> reused_by, evidence row)
#   @X p<n> :: provides         — a surface's provides[] registry (primitives/policy it offers)
#   @X c<n> :: reuse-candidate  — a conceptual / cross-repo edge, unverified (proposed)
#   @N n<n> :: note             — usage protocol / human ASCII graph view
# Block type is @X (External-citation / declarative, one of the closed 17-type
# alphabet @S@U@A@T@R@H@D@K@P@?@I@X@F@N@C@L@V). Lints clean v1.2.

@V := "tape" :: spec [active]
  version = "1.2"

@I nexus := "echoes intra-project reuse lattice" :: identity [active]
  kind  = "intra-repo reuse graph — shared invariant + policy-SSOT + verified cross-domain bridges"
  scope = "intra-project ONLY — never link domains across repos (@D g67)"
  ssot  = "this file (NEXUS.tape) · README NEXUS section is a pointer to it"
  governs = "commons @D g67 (universal · intra-project reuse lattice)"
  note  = "echoes = catalog/policy repo — code lives in standalone hexa-* repos (@D d3); code-reuse edges 0, reuse is at the shared-invariant / policy-SSOT level"

# ── 1. REAL reuse edges (provides -> reused_by, with evidence) ──

@X e1 := "LATTICE_POLICY n=6 invariant lattice -> all domain families" :: reuse-edge [active]
  provides  = "LATTICE_POLICY.md"
  primitive = "n=6 invariant lattice (sigma=12 · tau=4 · phi=2 · J2=24 · sopfr=5)"
  reused_by = "17+ domain families (every family table references the lattice)"
  evidence  = "README per-family table headers (Same n=6 invariant lattice)"

@X e2 := "GRADE_RUBRIC 1..10+ grade ladder -> all domain tables" :: reuse-edge [active]
  provides  = "GRADE_RUBRIC_1_TO_10PLUS.md"
  primitive = "1..10+ grade ladder"
  reused_by = "all domain tables (alien-grade column)"
  evidence  = "GRADE_RUBRIC_1_TO_10PLUS.md + table alien-grade column"

@X e3 := "LIMIT_BREAKTHROUGH real-limit taxonomy -> all domains" :: reuse-edge [active]
  provides  = "LIMIT_BREAKTHROUGH.md"
  primitive = "real-limit taxonomy (HARD/SOFT/BREAKABLE/UNCLEAR) + raw#10 C3 caveat"
  reused_by = "all domains (Honest Limitations)"
  evidence  = "LIMIT_BREAKTHROUGH.md + Honest caveat block"

@X e4 := "Physics Cross-Domain Mega Bridge shared invariants -> cross-domain" :: reuse-edge [active]
  provides  = "Physics — Cross-Domain Mega Bridge"
  primitive = "tau=4 (12dom) · J2=24 (10dom) · sigma-phi=10 (7dom) · n/phi=3 (8dom) shared invariants"
  reused_by = "Fusion · Chip · Materials · Bio · ... (cross-domain)"
  evidence  = "BT-366~369 (reports/breakthroughs/new-bt-dimensional-unfolding-2026-04-06.md)"

@X e5 := "Chip ALIEN-10-EXPANSION federation cross-substrate verifier -> 8 substrate" :: reuse-edge [active]
  provides  = "Chip — §11.5 ALIEN-10-EXPANSION federation"
  primitive = "cross-substrate invariant verify_*_alien10.py (Putnam multi-realization)"
  reused_by = "NEURO · QUANTUM · PHOTONIC · SUPERCOND · TOPO · DNA · FET · DIGITAL (8 substrate)"
  evidence  = "§11.5 table (126 TP · 38 EXACT · 117/125 PASS)"

# ── 2. provides[] registry (per-surface offered invariant / policy) ──

@X p1 := "LATTICE_POLICY provides" :: provides [active]
  surface    = "LATTICE_POLICY.md"
  primitives = "n=6 invariant lattice · lattice=tool (not constraint) authority"

@X p2 := "GRADE_RUBRIC provides" :: provides [active]
  surface    = "GRADE_RUBRIC_1_TO_10PLUS.md"
  primitives = "1..10+ grade ladder (alien-grade)"

@X p3 := "LIMIT_BREAKTHROUGH provides" :: provides [active]
  surface    = "LIMIT_BREAKTHROUGH.md"
  primitives = "real-limit taxonomy · raw#10 C3 caveat rule"

@X p4 := "Physics Mega Bridge provides" :: provides [active]
  surface    = "Physics (Mega Bridge)"
  primitives = "tau=4 · J2=24 · sigma-phi=10 · n/phi=3 cross-domain invariants"

@X p5 := "Chip §11.5 provides" :: provides [active]
  surface    = "Chip (§11.5)"
  primitives = "8-substrate cross-class invariance verifier"

# ── 3. candidate edges (unverified OR cross-repo · proposed) ──

@X c1 := "HEXA-NANOBOT <-> HEXA-WEAVE (Biology siblings)" :: reuse-candidate [proposed draft]
  note = "README marks a Cross-link — but both extracted to hexa-bio standalone (not intra-canon · candidate)"

@X c2 := "hexa-vsco -> hexa-filter-algebra (apps siblings engine layer)" :: reuse-candidate [proposed draft]
  note = "README marks first to depend on a sister apps domain — intra-hexa-apps cross-repo (not intra-canon · candidate)"

# ── 4. usage protocol (atlas-first · @D g67) ──

@N n1 := "reuse protocol" :: note [active]
  step1 = "before building an invariant/primitive — `hexa atlas lookup --prefix=<topic>` + grep sibling DOMAIN table/SSOT"
  step2 = "on reuse cite the source in record/table · on offering register in provides[]"
  step3 = "add the edge here (one @X e<n> reuse-edge block) — REAL needs an evidence row, unverified -> @X c<n> candidate"

@N n2 := "human ASCII graph view (invariant / policy lattice)" :: note [active]
  graph <<~GRAPH
  LATTICE_POLICY.md --n=6 lattice (sigma=12 tau=4 phi=2 J2=24 sopfr=5)--> 17+ domain families (all)
  GRADE_RUBRIC ------1..10+ grade ladder------------------------------> all domain tables (alien-grade col)
  LIMIT_BREAKTHROUGH --real-limit taxonomy + raw#10 C3 caveat---------> all domains (honest disclosure)
  Cross-Domain Mega Bridge (BT-366~369) --tau=4 J2=24 sigma-phi=10 n/phi=3--> 7~12 domain cross-verify
  Chip §11.5 8-substrate Putnam federation --cross-substrate verifier--> 8 chip sibling substrate
  GRAPH

# ── 5. cross-repo bidirectional peers (g68) — declared 2026-05-28 ──
# 3 sibling repos with explicit mutual awareness (HEXA-* discoveries mesh).
# hexa-lang relationship is INTENTIONALLY UNIDIRECTIONAL (echoes is a catalog,
# not a code consumer; hub does NOT enumerate echoes per its own scope_rule).

@X xr1 := "echoes <-> anima" :: cross-repo-peer [bidirectional declared]
  peer       = "anima (HEXAD consciousness substrate)"
  evidence   = "user NEXUS scope 2026-05-28 · echoes README HEXA-* family listing · anima discoveries surface in echoes"

@X xr2 := "echoes <-> demiurge" :: cross-repo-peer [bidirectional declared]
  peer       = "demiurge (universal technical-design architecture)"
  evidence   = "user NEXUS scope 2026-05-28 — demiurge UFO/RTSC/ANTIMATTER/CERN/FUSION discoveries surface in echoes catalog"

@X xr3 := "echoes <-> phanes" :: cross-repo-peer [bidirectional declared]
  peer       = "phanes (hosted OUROBOROS platform)"
  evidence   = "phanes README — per-tenant catalog positioned as 'their own private echoes' · user NEXUS scope 2026-05-28"

@N n3 := "hexa-lang relationship is UNIDIRECTIONAL (informational only)" :: note [active]
  rule = "echoes is a catalog repo, NOT a hexa-lang code consumer. hexa-lang does NOT enumerate echoes in its NEXUS.tape (single-direction unidirectional consumers are not hub-tracked)."
  ssot = "hexa-lang NEXUS.tape n2.scope_rule — hub records hub<->peer only."

@N n4 := "cross-repo scope policy (g68)" :: note [active]
  rule = "ONLY 3 declared bidirectional peers (anima, demiurge, phanes). hexa-lang intentionally NOT a peer here — relation is unidirectional and informational."
  ssot = "hexa-lang NEXUS.tape n2.scope_rule — hub<->peer at hub; peer-mesh at peer."
