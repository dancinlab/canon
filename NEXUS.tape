#!/usr/bin/env tape
# NEXUS.tape — echoes cross-repo reuse lattice (SSOT)
# echoes is the HEXA-* discoveries catalog (σφτ identity at the centre, 17 domain families).
# Governance: commons @D g67 (intra-project, light) + g68 (cross-repo peer-mesh).
# Scope: 3 bidirectional cross-repo peers (anima, demiurge, phanes — the HEXA-* producers).
#        hexa-lang relationship is UNIDIRECTIONAL — echoes catalogs HEXA-* findings, does
#        not directly consume hexa-lang stdlib code; hub does not enumerate echoes per its
#        own NEXUS scope (single-direction consumers tracked at source).
#
# Block legend:
#   @I nexus              — identity (kind · scope)
#   @X xr<n> :: cross-repo-peer — a declared cross-repo bidirectional peer (g68)
#   @N n<n> :: note             — usage protocol / scope policy

@V := "tape" :: spec [active]
  version = "1.2"

@I nexus := "echoes cross-repo reuse lattice" :: identity [active]
  kind    = "discoveries catalog — list of findings from HEXA-* projects, σφτ identity at the centre"
  scope   = "3 cross-repo bidirectional peers (g68): anima, demiurge, phanes — discoveries mesh"
  ssot    = "this file (NEXUS.tape) · ECHOES.md catalog · LATTICE_POLICY.md"
  governs = "commons @D g68 (cross-repo bidirectional peer-mesh)"

# ── 1. cross-repo bidirectional peers (g68) — HEXA-* discoveries mesh ──

@X xr1 := "echoes <-> anima" :: cross-repo-peer [bidirectional declared]
  peer       = "anima (HEXAD consciousness substrate)"
  evidence   = "user NEXUS scope 2026-05-28 · echoes README HEXA-* family listing · anima discoveries surface in echoes"

@X xr2 := "echoes <-> demiurge" :: cross-repo-peer [bidirectional declared]
  peer       = "demiurge (universal technical-design architecture)"
  evidence   = "user NEXUS scope 2026-05-28 — demiurge UFO/RTSC/ANTIMATTER/CERN/FUSION discoveries surface in echoes catalog"

@X xr3 := "echoes <-> phanes" :: cross-repo-peer [bidirectional declared]
  peer       = "phanes (hosted OUROBOROS platform)"
  evidence   = "phanes README — per-tenant catalog positioned as 'their own private echoes' · user NEXUS scope 2026-05-28"

# ── 2. notes — unidirectional + per-domain standalones ──

@N n1 := "echoes -> hexa-lang relationship is UNIDIRECTIONAL (informational only)" :: note [active]
  rule = "echoes is a catalog repo, NOT a hexa-lang code consumer. hexa-lang does NOT enumerate echoes in its NEXUS.tape (single-direction unidirectional consumers are not hub-tracked)."
  ssot = "hexa-lang NEXUS.tape n2.scope_rule — hub records hub<->peer only."

@N n2 := "per-domain standalones (extracted, not peer-mesh)" :: note [active]
  rule = "working code for each of the 17 domain families lives in its own hexa-* standalone repo (see RETIRED.log.md for per-extraction provenance). these are NOT peer-mesh nodes — they are owned by echoes' extraction ledger."
  ssot = "RETIRED.log.md per-extraction provenance ledger"

@N n3 := "cross-repo scope policy (g68)" :: note [active]
  rule = "ONLY 3 declared bidirectional peers (anima, demiurge, phanes). hexa-lang is intentionally NOT a peer here — relation is unidirectional and informational."
  ssot = "hexa-lang NEXUS.tape n2.scope_rule — hub<->peer at hub; peer-mesh at peer."
