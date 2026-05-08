# SECURITY — canon defense surface

> Honesty triad mode-6 precondition (f) declaration
> User authorization 2026-04-26 (cross-repo write from nexus session)
> Origin: ~/core/nexus/design/hexa_sim/2026-04-26_honesty_triad_refresh_omega_cycle.json

## Threat model

canon is a knowledge corpus + theory repo. Unlike nexus (atlas SSOT +
registry + defense tools) or anima (ALM substrate runtime), canon's threat
surface is primarily about **theorem integrity** (atlas SSOT itself moved
to nexus 2026-05-08):

- domains/physics/simulation-theory/: deep-universe-simulation reference
- theory/, papers/: theorem statements + proof drafts
- proposals/, techniques/: paradigm shift proposals

## Defense surface

| Layer | Mechanism | Status |
|-------|-----------|--------|
| **Atlas SSOT** | hosted in nexus (`~/core/nexus/n6/atlas.n6`); canon imports via reference | upstream — see nexus/SECURITY |
| **Theorem-level review** | papers/, theory/ subjected to peer-review prior to nexus atlas anchor | manual (no automated lint yet) |
| **Proposal gate** | proposals/ as staging area; promotion to nexus atlas requires manual review | manual |
| **Build attestation** | Makefile + lean4-n6/ for formal proof verification | partial (lean4 subset only) |

## Defense gaps (acknowledged, raw 73 admissibility)

1. **Atlas drift detection lives in nexus** — canon does not host atlas data
   anymore (relocated 2026-05-08). Drift defense delegated to nexus's
   `tool/atlas_health.sh` + `state/atlas_sha256.tsv`.
2. **No SECURITY_AUDIT.md detail** — this doc is a declaration, not an audit;
   audit lives in nexus's `design/hexa_sim/SECURITY_AUDIT.md` covering the full
   5-layer defense system.
3. **No CVE / disclosure process** — canon is a research repo; security
   issues go through proposal/issues channel.

## Honesty triad position

After this declaration, mode-6 score: **6/6** (was 5/6 — sole (f) FAIL).

Together with nexus 6/6, anima 6/6, hexa-lang 5/6 (ceiling at (d)):
- **honesty_5_5 = 4** (was 3 before this commit)
- **honesty_6_6 = 3** (was 2)

## Cross-references

- Audit decision: `~/core/nexus/design/hexa_sim/2026-04-26_honesty_triad_refresh_omega_cycle.json`
- Defense system audit (full): `~/core/nexus/design/hexa_sim/SECURITY_AUDIT.md`
- Cross-repo dashboard: `~/core/nexus/design/hexa_sim/cross_repo_dashboard.md`
- atlas SSOT: `~/core/nexus/n6/atlas.n6` (single owner since 2026-05-08; canon no longer holds atlas data)

## Authorization

Cross-repo write authorized by user 'all go' decision 2026-04-26 (Asia/Seoul) per
NEXT_SESSION_HANDOFF_v3.md pending item #4. raw 71 manual escalate honored: this
file added with explicit user approval, not autonomously.
