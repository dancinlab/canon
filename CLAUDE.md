# echoes

Discoveries catalog (HEXA-* findings · σφτ identity at the centre · 17 domain families) — understand the lattice, browse per-domain hexa-* standalones, read policy artifacts.

> 📍 거버넌스 SSOT — 이 문서는 project.tape 를 마크다운으로 재설계·단일화한 것이다 (.tape 은퇴). parent: dancinlab · ssot: github.com/dancinlab/echoes (`hx install echoes`) · siblings: hexa-lang · phanes · demiurge

## 거버넌스 (governance)

### echoes

> project.tape 의 `@D :: governance` 디렉티브는 do/dont 값이 placeholder (`"..."`) 로만 정의되어 있어, 구체적 규칙은 명시되지 않았다. 아래는 tape 에 기재된 그대로이며, 임의로 규칙을 발명하지 않는다. 구체 규칙은 정책 아티팩트(`LATTICE_POLICY.md` · `LIMIT_BREAKTHROUGH.md` · `GRADE_RUBRIC_1_TO_10PLUS.md`)와 상위 거버넌스(commons `@D`)를 따른다.

- ✅ (do — tape 미명시, placeholder `"..."`)
- ⛔ (dont — tape 미명시, placeholder `"..."`)

## 구조 (tree)

```
.
├─ README.md                     — echoes 개요 · 배지 · 도메인 인덱스 (다국어: docs/README.{ko,ja,ru,zh}.md)
├─ CHANGELOG.md                  — ship 배치별 변경 로그 (date-keyed)
├─ NEXUS.tape                    — intra-project 재사용 격자 SSOT (불변량·정책·cross-domain bridge)
├─ LATTICE_POLICY.md             — 전 dancinlab 프로젝트 공통 정책 (lattice scope)
├─ LIMIT_BREAKTHROUGH.md         — real-limit / breakthrough 기준 (LATTICE_POLICY §1.2 자매 문서)
├─ GRADE_RUBRIC_1_TO_10PLUS.md   — n=6 범용 등급 루브릭 (1~10+ · 10=breakthrough · 11=meta)
├─ RETIRED.log.md                — 폐기(canon retirement) ledger · 도메인별 standalone 추출 이관 기록
├─ TAPE-AUDIT.md                 — tape/audit-class 원장 점검 (정적 문서 repo · audit 원장 없음)
├─ docs/                         — 로고(logo.svg) · 다국어 README · 레거시 canon README 스냅샷
└─ archive/                      — 보관 자산 (AGENTS.tape 등)
```
