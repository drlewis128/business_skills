---
name: technical-debt-auditor
description: "Score and categorize technical debt across a codebase. Use when the user says 'technical debt audit', 'how much tech debt do we have', 'debt scoring', 'what should we refactor first', 'prioritize refactoring work', 'codebase rot', 'engineering debt sprint', 'what is our biggest tech debt', or 'where is the most painful code to work in'. Goes deeper than code-quality-auditor — classifies debt by category, estimates cost-to-fix, and produces a debt retirement roadmap."
metadata:
  version: 1.0.0
  tier: code-audit
  owner: Dr. John Lewis
argument-hint: "<directory> [--format <report|roadmap|sprint-backlog>]"
---

# Technical Debt Auditor

Classify, score, and prioritize technical debt across a codebase. Produces a debt inventory with cost-of-carry estimates and a prioritized retirement roadmap. Investors think in ROI — so does this skill.

## Debt Classification Model

Technical debt is not one thing. This skill uses a 5-category model:

| Category | What it is | Examples |
|----------|-----------|---------|
| **Code Debt** | Messy, complex, or duplicated code | God functions, high complexity, copy-paste, magic numbers |
| **Design Debt** | Poor architecture and structural decisions | Circular deps, wrong abstractions, missing interfaces, monoliths that should be modular |
| **Test Debt** | Gaps in test coverage that increase change risk | Untested critical paths, no integration tests, brittle test mocks |
| **Documentation Debt** | Missing or stale documentation that slows onboarding | Undocumented APIs, outdated README, no ADRs for major decisions |
| **Infrastructure Debt** | Environment, tooling, and pipeline fragility | Manual steps in deploy, flaky CI, pinned to old OS/runtime versions |

## When to Use

- Before planning a refactoring sprint
- During quarterly engineering health reviews
- When a team is about to change ownership of a codebase
- When velocity has declined and the team suspects debt is the cause
- Before making a major technical investment decision (e.g., rewrite vs refactor)

## Input

`$ARGUMENTS`: Project directory.

`--format` options:
- `report` (default) — Full scored report by category
- `roadmap` — Debt retirement roadmap with quarterly milestones
- `sprint-backlog` — Output as ready-to-paste sprint ticket format

## Audit Process

### Step 1 — Scan for Debt Signals by Category

**Code Debt signals** (scan source files):
- Functions > 50 lines: 1 point each
- Cyclomatic complexity > 10: 2 points each
- Duplicate code blocks: 3 points each
- TODO/FIXME/HACK comments: 1 point each
- Magic numbers/strings: 1 point per file
- Dead code (unused functions/imports): 2 points each

**Design Debt signals**:
- Files > 500 lines: 3 points each
- Circular module dependencies: 5 points each
- Missing error type hierarchy (everything is a string error): 3 points
- Direct instantiation of dependencies without injection: 2 points per module
- Public API surface larger than necessary: 2 points per module

**Test Debt signals** (look for test files):
- Source files with no test counterpart: 2 points each
- Test files that only test happy paths (no error cases): 1 point each
- `unwrap()` / `expect()` in test assertions (Rust): 1 point per file
- Integration tests absent when HTTP/DB endpoints exist: 5 points

**Documentation Debt signals**:
- Public functions/structs without doc comments: 1 point each
- README missing or last updated > 6 months ago: 3 points
- No ADR files for the project: 3 points
- API endpoints without documented request/response: 2 points each

**Infrastructure Debt signals**:
- Manual steps listed in README for deploy: 3 points each step
- CI configuration last modified > 12 months ago: 2 points
- Dockerfile pinned to `latest` tag: 2 points
- `.env.example` missing: 2 points
- No linter/formatter configuration committed: 2 points

### Step 2 — Score and Grade Each Category

| Score Range | Grade | Debt Level |
|-------------|-------|-----------|
| 0-5 | A | Minimal — maintain |
| 6-15 | B | Manageable — address opportunistically |
| 16-30 | C | Significant — schedule a sprint |
| 31-50 | D | Severe — impacts velocity now |
| 51+ | F | Critical — blocking new feature work |

### Step 3 — Calculate Composite Debt Score

Weighted composite:
- Code Debt: 30%
- Design Debt: 25%
- Test Debt: 25%
- Documentation Debt: 10%
- Infrastructure Debt: 10%

### Step 4 — Estimate Cost of Carry

For each debt item, estimate:
- **Fix effort** (hours): 1h / 2h / 4h / 1 day / 1 week
- **Cost of not fixing** (per quarter): Low / Medium / High / Blocking

Priority Score = (Severity × Carry Cost) / Fix Effort

### Step 5 — Build Retirement Roadmap (if `--format roadmap`)

Group by quarter:
- **Q1 — Quick Wins**: Fix effort <4h, high carry cost
- **Q2 — High Impact**: Fix effort <1 day, high carry cost
- **Q3 — Structural**: Fix effort >1 day, design/architecture debt
- **Backlog**: Low carry cost, fix opportunistically

## Output Format

```markdown
# Technical Debt Audit Report
**Project:** <path>
**Date:** <today>
**Format:** report/roadmap/sprint-backlog

---

## Composite Debt Score: <score> — Grade: <A-F>
**Estimated carry cost per quarter:** <Low|Medium|High|Critical>
**Estimated retirement effort:** <N> engineer-weeks

---

## Debt by Category

### Code Debt — Grade <X> (<score> points)
Top items:
1. `src/processor.rs:200` — `handle_all_the_things()` — complexity 24 — **2h to split** — High carry
2. `src/utils.rs:50` & `src/helpers.rs:80` — 35-line duplicate block — **1h to extract** — Medium carry
...

### Design Debt — Grade <X> (<score> points)
Top items:
1. Circular dependency: `auth` ↔ `users` — **1 day to resolve** — High carry
...

### Test Debt — Grade <X> (<score> points)
...

### Documentation Debt — Grade <X> (<score> points)
...

### Infrastructure Debt — Grade <X> (<score> points)
...

---

## Priority Retirement Queue (top 20)
| Rank | Item | Category | Fix Effort | Carry Cost | Priority Score |
|------|------|----------|-----------|-----------|---------------|
| 1 | Circular dep auth↔users | Design | 1 day | High | 48 |
| 2 | Duplicate block utils/helpers | Code | 1h | Medium | 36 |
...

---

## Debt Retirement Roadmap
**Q3 2026 — Quick Wins** (target: <N> items, ~<N>h effort)
- [ ] Extract duplicate block from utils/helpers
- [ ] Pin Dockerfile base image version
...

**Q4 2026 — Structural** (target: <N> items, ~<N>d effort)
- [ ] Resolve circular dependency auth↔users
...
```

## Output Contract

- Scores are deterministic and reproducible from the source scan
- Effort estimates are ranges, not guarantees
- Read-only — no source files modified
- Cost-of-carry language maps to engineering velocity impact, not dollar estimates (unless asked)

## System Dependencies

- **Reads from:** File system (source files at provided path)
- **Writes to:** Nothing (read-only)

## Feedback

Engineering leads (Tier 2) may adjust point weights for domain-specific code where standard thresholds don't apply. Log via `skill-feedback-collector`.
