---
name: data-okr-tracker
description: "Build and track OKRs for the data and analytics function. Use when the user says 'data team OKRs', 'analytics OKRs', 'data function goals', 'data team objectives', 'OKRs for data', 'what should the data team focus on', or 'data team quarterly goals'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1-Q4>] [--year <YYYY>]"
---

# Data OKR Tracker

Build OKRs for the data and analytics function that connect data work to business outcomes. Data teams often get stuck measuring their own activity (queries written, dashboards built) rather than the business impact of their work. Data OKRs should measure whether the data the team produces actually improves decisions and outcomes — not just whether it was produced. For MBL, data OKRs cascade from Matt Mathison's portfolio objectives.

## When to Use
- Quarterly planning — set data team OKRs
- Mid-quarter check-in — grade current OKRs and course-correct
- End of quarter — close and grade OKRs, inform next quarter
- Communicating data team priorities to Matt Mathison

## Data OKR Examples for MBL

```
Objective: Make MBL's portfolio performance visible in real time
  KR1: Portfolio KPI dashboard live and refreshing daily by <date> (0.0)
  KR2: Matt Mathison can answer his top 5 portfolio questions without asking Dr. Lewis (0.0)
  KR3: 4 of 4 portfolio companies have at least 1 operational dashboard live (0.0)

Objective: Build a trustworthy data foundation for AI products
  KR1: Data quality audit complete for all 4 core data sources; quality score >85% (0.0)
  KR2: Data catalog covers all tables in BI layer (100% coverage) (0.0)
  KR3: Zero data quality incidents affecting management reporting (0.0)

Objective: Enable AI-driven insights for Meeting Intelligence
  KR1: Action item completion rate tracked in real time (dashboard live) (0.0)
  KR2: HITL review data used to improve prompt quality: rejection rate <10% (0.0)
  KR3: Cost per AI session tracked; budget variance < 15% (0.0)
```

## Output Format

```markdown
# Data Team OKRs — <Quarter> <Year>
**Set:** <date> | **Owner:** Dr. John Lewis
**Cascade from:** <parent objective from Dr. Lewis / Matt Mathison>

---

## Objective 1: <Statement>

**Why this quarter:** <Specific reason this is the priority now>
**Connected to:** <Business OKR or Matt Mathison objective>

| # | Key Result | Target | Current | Grade | Status |
|---|-----------|--------|---------|-------|--------|
| 1.1 | <KR> | <target> | 0 | 0.0 | 🔴 Not started |
| 1.2 | <KR> | <target> | 0 | 0.0 | 🔴 Not started |
| 1.3 | <KR> | <target> | 0 | 0.0 | 🔴 Not started |

**Initiatives that drive this objective:**
- [Initiative] → KR 1.X

---

## Objective 2: <Statement>

[Same format]

---

## Mid-Quarter Check-In

| OKR | Grade | On track? | If not: action needed |
|-----|-------|----------|----------------------|
| 1.1 | 0.6 | ⚠️ At risk | Dashboard delayed by data source issues; escalate |
| 1.2 | 0.8 | ✅ On track | — |

---

## End-of-Quarter Grades

| Objective | Avg grade | Quarter grade | Lessons |
|-----------|----------|--------------|---------|
| Obj 1 | 0.72 | 0.7 ✅ | Dashboard shipped; self-serve adoption was harder than expected |
| Obj 2 | 0.45 | 0.5 ⚠️ | Data quality took longer to fix than estimated; start earlier next quarter |

**Quarter grade:** <N>/1.0

**Learnings for next quarter:**
1. [Lesson]
2. [Lesson]
```

## Output Contract
- OKRs always tied to business impact — "queries written" is activity; "decisions improved" is impact
- Maximum 3 objectives × 4 KRs — data team OKRs should be as focused as any other function
- Mid-quarter check-in triggers action if grade <0.4 — not an end-of-quarter surprise
- Lessons always documented — OKR retrospectives inform how to scope the next quarter better
- HITL required: Dr. Lewis approves data OKRs; Matt Mathison aligned on quarterly objectives; any data investment needed to hit a KR requires Dr. Lewis approval before committing

## System Dependencies
- **Reads from:** Product analytics, data quality metrics, dashboard usage data, meeting intelligence metrics
- **Writes to:** OKR tracking document (SharePoint/Data/OKRs); Monday.com
- **HITL Required:** Dr. Lewis approves; Matt Mathison aligned on quarterly objectives

## Test Cases
1. **Golden path:** Q3 2026 data OKRs → Objective 1: Portfolio visibility; KR1: dashboard live by Aug 1; KR2: Matt self-serves 5 answers without asking; KR3: 4 portfolio companies have dashboards; Mid-quarter: KR1 on track (0.8), KR2 partial (0.5 — 3 of 5 answers self-served), KR3 at risk (0.3 — 2 of 4 due to Allevio HIPAA complexity); action: escalate Allevio dashboard timeline to Dr. Lewis
2. **Edge case:** Data team is just Dr. Lewis (no dedicated data team) → OKRs should reflect what Dr. Lewis can accomplish alone with AI assistance; scope accordingly; 3 KRs per objective maximum; be realistic about capacity; don't set OKRs that require a full-time data engineer if that resource doesn't exist
3. **Adversarial:** A KR hit 1.0 at the midpoint of the quarter → investigate whether target was too easy; if the team moved faster than expected (good execution), set a stretch target for the remainder; if the target was just too low, it wasn't a KR — it was a task; for the next quarter, set a more ambitious target based on what was learned

## Audit Log
OKR sets retained per quarter. Grades and lessons documented. Initiative-to-OKR mapping maintained.

## Deprecation
Retire when data function has established OKR practices with dedicated tooling and autonomous quarterly planning.
