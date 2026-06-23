---
name: revops-ops-review
description: "Conduct quarterly and annual Revenue Operations reviews for MBL Partners portfolio entities. Use when the user says 'RevOps review', 'revenue operations review', 'ops review', 'quarterly review', 'quarterly RevOps review', 'annual review', 'annual RevOps review', 'RevOps QBR', 'RevOps quarterly business review', 'ops QBR', 'revenue review', 'commercial review', 'portfolio review', 'RevOps retrospective', 'RevOps health check', 'quarterly RevOps report', 'annual RevOps report', 'RevOps state of the union', 'how is RevOps doing', 'RevOps performance review', 'Dr. Lewis ops review', 'Matt Mathison portfolio update', 'portfolio commercial update', 'entity commercial review', 'quarterly portfolio RevOps', 'what did we accomplish in RevOps', 'RevOps year-in-review', 'RevOps quarterly wrap', 'quarterly commercial summary', or 'commercial performance review'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--cadence <quarterly|annual>] [--audience <entity-ceo|dr-lewis|matt-mathison>] [--action <prepare|present|document>]"
---

# RevOps Ops Review

Conduct quarterly and annual Revenue Operations reviews across MBL Partners portfolio entities — synthesizing OKR outcomes, GTM KPI performance, pipeline health, data quality, and technology status into structured review sessions with entity CEOs and annual portfolio summaries for Matt Mathison. The ops review is where every RevOps system and process is held accountable to business outcomes.

## When to Use
- End of quarter: prepare quarterly ops review for entity CEO
- End of year: prepare annual RevOps portfolio review for Matt Mathison
- Mid-year: prepare 6-month checkpoint (optional; at Dr. Lewis's discretion)
- New entity CEO onboarding: baseline ops review to establish starting state

## Ops Review Framework

```
QUARTERLY OPS REVIEW STRUCTURE (entity CEO + Dr. Lewis; 60 min):

  SECTION 1 — BLUF (5 min):
    One paragraph: what was the RevOps outcome for the quarter?
    Traffic light status by dimension (Pipeline/Revenue/Retention/Marketing/Data/Tech)
    Top 1-2 wins; top 1-2 issues
    
  SECTION 2 — OKR SCORECARD (10 min):
    All 3 Objectives with KR scores
    Overall OKR score vs. 70% success threshold
    KRs that were Red or under 50% → retrospective note
    Carry-forwards to next quarter OKRs
    
  SECTION 3 — GTM KPI REVIEW (15 min):
    Tier 1 KPIs vs. targets (all 8; monthly actuals for each month of quarter)
    Tier 2 KPIs (quarterly operational metrics by category)
    Trend: is each KPI getting better, flat, or worse over the last 3 quarters?
    HIVE: BOE production; realized WTI vs. $58 trigger status; royalty income
    
  SECTION 4 — PIPELINE & FORECAST REVIEW (10 min):
    End-of-quarter pipeline coverage (actual vs. ≥3× target)
    Forecast accuracy for the quarter (actual revenue vs. Commit forecast at start of quarter)
    Deal velocity trends
    Top 3 pipeline risks entering next quarter
    
  SECTION 5 — REVENUE HEALTH SUMMARY (10 min):
    Closed revenue vs. target (actual vs. plan)
    GRR and NRR (actual vs. ≥91% / ≥105% Allevio targets)
    Churn in quarter: how many; why; what was done
    Expansion in quarter: how many; what type; NRR contribution
    
  SECTION 6 — DATA & TECHNOLOGY STATUS (5 min):
    Data quality score (GHL completion; PHI scan results — Allevio)
    SLA compliance average for the quarter
    Automations deployed; ROI (time savings)
    Tech stack issues or upcoming decisions
    
  SECTION 7 — NEXT QUARTER PRIORITIES (5 min):
    Draft OKRs for next quarter (3 objectives; entity CEO reaction)
    Top RevOps investments or projects entering next quarter
    HITL items requiring entity CEO decision before next quarter starts

ANNUAL REVOPS PORTFOLIO REVIEW (Matt Mathison; 45 min — December):

  SECTION 1 — PORTFOLIO BLUF:
    One paragraph: how did MBL's portfolio revenue operations perform this year?
    Year-over-year comparison by entity and portfolio aggregate
    
  SECTION 2 — ENTITY ANNUAL SUMMARIES:
    Allevio: revenue; GRR; NRR; clients won/lost; market penetration; HIPAA compliance record
    Column6: revenue; repeat IO rate; pipeline efficiency; CTV benchmark performance
    HIVE: BOE production; realized WTI average; royalty income; WTI trigger events
    
  SECTION 3 — GTM KPI YEAR-IN-REVIEW:
    Annual actuals for all Tier 1 KPIs (12-month average vs. target)
    Top 3 KPI improvements and top 3 KPI misses
    
  SECTION 4 — REVOPS FUNCTION PERFORMANCE:
    OKR scores by quarter (all 4 quarters per entity)
    Data quality trend (12-month)
    SLA compliance trend (12-month)
    RevOps ROI (revenue operations investment → revenue generated or retained)
    
  SECTION 5 — NEXT YEAR PRIORITIES:
    Top 3 RevOps strategic investments for next year
    Hiring plan (if any RevOps roles to add)
    Portfolio rollout plan (which MBL RevOps capabilities roll to which portfolio companies)
    
FORMAT:
  Quarterly: verbal presentation to entity CEO + 1-page written summary in SharePoint
  Annual: written summary (10-15 pages) → Matt Mathison 1 week before December meeting
  HIPAA: Allevio section of Matt Mathison summary = aggregate metrics only; no employer names; no clinical context
```

## Output Format

```markdown
# Revenue Operations Review — [Entity] — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Audience:** [Entity CEO / Matt Mathison] | **Date:** [Date]

---

## BLUF
[2-3 sentences: quarterly RevOps outcome; top win; top issue]

| Dimension | Status | vs. Last Quarter |
|-----------|--------|-----------------|
| Pipeline Health | 🟢/🟡/🔴 | ↑ Improved / → Flat / ↓ Declined |
| Revenue Performance | | |
| Data Quality | | |
| SLA Compliance | | |
| Technology | | |

---

## OKR Scorecard

| Objective | Score | vs. 70% Threshold |
|-----------|-------|------------------|
| Obj 1: [Name] | X% | ✅/⚠️/🔴 |
| Obj 2: | | |
| Obj 3: | | |
| **Overall** | **X%** | |

---

[Sections 3-7 as appropriate to audience and cadence]

---

## Next Quarter Priorities
1.
2.
3.
```

## Output Contract
- The quarterly ops review is the moment when RevOps proves it is a revenue function, not a support function — Dr. Lewis presents OKR outcomes, pipeline coverage, forecast accuracy, and churn data; if those numbers are good, the review is a celebration; if those numbers are mixed, the review is a diagnostic; either way, the entity CEO leaves with a clear picture of commercial health that they cannot get from any other single meeting; Dr. Lewis structures the quarterly ops review so it can be completed in 60 minutes — BLUF-first; no slides unless requested; focus on decisions needed, not historical narration
- The annual Matt Mathison summary is a portfolio-level investment update — Matt Mathison's role as Managing Partner means he owns the investment thesis for each entity; the RevOps annual review should answer: "Are these businesses growing? Are they retaining? Do their commercial systems work? Are there risks I should know about?" It is not a detailed operations debrief — it is a strategic health summary; Dr. Lewis writes the summary to answer those questions directly, with entity-specific data, and ends with 3 specific recommended RevOps investments for next year that Matt Mathison can react to
- HITL required: quarterly ops review → entity CEO participates; annual summary → Matt Mathison reviews; Allevio aggregate data in Matt Mathison summary → Dr. Lewis confirms no PHI; OKR carry-forwards to next quarter → entity CEO approves; next-quarter priorities → entity CEO approves; RevOps investment recommendations → Matt Mathison decides; hiring decisions triggered by review → entity CEO + Dr. Lewis; WTI trigger status in HIVE section → always included regardless of current price

## System Dependencies
- **Reads from:** revops-okr-tracker (OKR scorecard); revops-gtm-kpi-tracker (Tier 1 and Tier 2 KPIs); revops-pipeline-health-monitor (pipeline coverage); revops-revenue-dashboard (revenue performance); revops-churn-analytics (churn data); revops-customer-data-integrity (data quality score); revops-sla-manager (SLA compliance); revops-tech-stack-manager (tech status)
- **Writes to:** Quarterly ops review summaries (SharePoint → [Entity] → RevOps → Ops Reviews → [Quarter]); Matt Mathison annual summary (SharePoint → MBL → Portfolio → RevOps → Annual → [Year]); entity CEO decision records; OKR inputs for next quarter; RevOps investment recommendation records
- **HITL Required:** Quarterly review → entity CEO participates; annual summary → Matt Mathison; Allevio PHI check → Dr. Lewis; next-quarter OKRs → entity CEO; investment recommendations → Matt Mathison; hiring decisions → entity CEO + Dr. Lewis; WTI status → included regardless

## Test Cases
1. **Golden path:** Allevio Q3 2026 RevOps quarterly ops review. BLUF: "Q3 RevOps was a strong quarter — pipeline coverage hit 3× for all 3 months; forecast accuracy was within ±8%; one new employer churned ($22K ACV) for product fit reasons with a documented exit conversation. The main miss: Stage 5→6 conversion improved but didn't reach the Q3 OKR target of 65%. Carrying it into Q4 with a revised intervention." OKR: Obj 1 (pipeline) 100%; Obj 2 (conversion) 83%; Obj 3 (data quality) 100%. Overall 94% — ✅. KPIs: closed revenue 98% of target; GRR 94% ✅; NRR 107% ✅. Pipeline health Green. Data quality 96/100 ✅. SLA compliance 91% ✅. Entity CEO: "I want to spend more time on the Stage 5→6 problem in Q4." Dr. Lewis: "Agreed — here's the carry-forward OKR design for Q4." 60-minute review completed on schedule.
2. **Edge case:** Matt Mathison asks why the Allevio annual summary doesn't include employer names in the churn table → Dr. Lewis: "The Allevio section uses aggregate metrics only — no employer names, no individual utilization data. This is a HIPAA-related governance decision I made at the start of the year: Matt Mathison's role as Managing Partner does not require access to individually identifiable employer health benefit data; he needs the business performance metrics (revenue, GRR, NRR, churn count and reason categories). If you need the employer-level detail for a specific business decision — for example, a significant churn event you want to understand more deeply — I can brief you directly in a separate conversation where we treat the information appropriately. But in the written annual summary, aggregate only."
3. **Adversarial:** Entity CEO doesn't attend the quarterly ops review for the second consecutive quarter, asking for a written summary instead → Dr. Lewis: "I can produce the written summary — and I will. But I want to flag: two quarters in a row of entity CEO not in the ops review means the strategic decisions that should happen in that room aren't happening. The written summary tells you what happened; the 60-minute meeting is where we agree on what to do next. The carry-forward OKRs, the pipeline risks entering Q4, the next-quarter hiring decision — these need your active engagement, not a read-later summary. I'll deliver the Q3 summary in writing, but I'm also asking: can we schedule 30 minutes this month — shorter than the full 60 — specifically for next-quarter OKR drafting? That's the part I most need you for."

## Audit Log
Quarterly ops review summaries (permanent). Entity CEO attendance records. Matt Mathison annual summary delivery records. Allevio aggregate data confirmation records (no PHI in external summaries). OKR outcome records. RevOps investment decision records. Annual portfolio RevOps trend data.

## Deprecation
Review structure reviewed when entity portfolio composition changes. Annual summary format reviewed when Matt Mathison's reporting preferences change. Allevio HIPAA aggregate-only scope reviewed if Allevio data sharing policy changes. HIVE WTI trigger section reviewed when HIVE strategy changes. Review cadence reviewed when entity leadership structure changes.
