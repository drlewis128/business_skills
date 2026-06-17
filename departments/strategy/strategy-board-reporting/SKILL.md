---
name: strategy-board-reporting
description: "Prepare board-level reporting packages — financial, strategic, and governance reporting for the board. Use when the user says 'board report', 'board reporting', 'board package', 'board financial update', 'board governance report', 'board compliance report', 'board materials', 'board deck', 'board financials', 'report to the board', 'board update', 'prepare board report', 'board strategic report', 'governance reporting', or 'board information package'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <financial|strategic|governance|compliance|full>] [--period <Q1|Q2|Q3|Q4|annual>]"
---

# Board Reporting

Prepare board-level reporting packages for MBL Partners portfolio companies — producing the financial, strategic, governance, and compliance reporting that gives the board (Matt Mathison + any co-investors or independents) the information they need to exercise effective oversight and make informed decisions. Board reporting is distinct from board meeting prep (strategy-board-prep) — this skill produces the ongoing reporting content that fills the board pre-read and keeps the board continuously informed between meetings. At PE portfolio scale, strong board reporting is a governance discipline that protects MBL's investment, satisfies LP oversight requirements, and supports the exit story ("we've had strong governance throughout the hold period").

## When to Use
- Monthly financial reporting to the board (standard for portfolio companies)
- Preparing the board pre-read package for an upcoming board meeting
- A board director requests specific reporting information
- Audit season — preparing financial and compliance reporting for the board
- Preparing the annual board report (year-end review, audited financials)

## Board Reporting Framework

```
Board reporting cadence (MBL standard):

  Monthly (within 10 business days of month-end):
    Financial: Revenue, EBITDA, margin, cash — actual vs. plan vs. prior year
    KPI: 5-7 key metrics (from strategy-kpi-design) — actual vs. target
    Narrative: What drove the variance? What's different from last month?
    
  Quarterly (coincides with board meeting):
    Financial: Full P&L, balance sheet, cash flow statement
    OKR progress: Scoring update on company-level OKRs
    VCP status: EBITDA impact realized vs. plan
    Thesis update: Intact / Under pressure / Broken — with evidence
    Risk register update: Material risks; new risks; resolved risks
    Compliance status: Any open regulatory items; insurance current; OIG LEIE current
    
  Annual (within 45 days of year-end):
    Audited (or CPA-reviewed) financial statements
    Year-over-year comparison: Revenue, EBITDA, margin, key KPIs
    Annual OKR retrospective: Scores; what worked, what didn't
    VCP year-end review: EBITDA impact delivered vs. plan
    Exit readiness assessment: Annual readiness update
    Next year plan: Approved annual plan and budget
    
  Board reporting principles:
    Timely: Board members should not have to ask for information
    Complete: All material information included; no selective disclosure
    Comparable: Month-over-month and year-over-year consistently presented
    Actionable: Every report surfaces specific questions or decisions for board attention
    Archived: All board reports retained permanently (governance record)
```

## Output Format

```markdown
# Board Report — [Company Name] [Period]
**Date:** [Date] | **Prepared by:** Dr. Lewis | **Period covered:** [Month/Quarter/Year]
**Distribution:** Matt Mathison + [other board members]

---

## MONTHLY FINANCIAL REPORT

### [Month Year] Financial Summary

| Metric | Budget | Actual | Variance | Prior Month | YTD Budget | YTD Actual |
|--------|--------|--------|---------|------------|-----------|-----------|
| Revenue | $[X]K | $[X]K | [+/-X]% | $[X]K | $[X]K | $[X]K |
| Gross profit | $[X]K | $[X]K | | | | |
| EBITDA | $[X]K | $[X]K | | | | |
| EBITDA margin | [X]% | [X]% | | | | |
| Cash (end of period) | — | $[X]K | | $[X]K | | |
| [Entity-specific: Patient visits / BBL/day / Match rate] | [X] | [X] | | | | |

**Variance narrative:** [2-3 sentences: what drove the variance; root cause; recovery path or confirmation of trend]

### KPI Dashboard

| KPI | Target | Actual | Status | Trend |
|-----|--------|--------|--------|-------|
| [Patient count] | [N] | [N] | 🟢/🟡/🔴 | ↑/→/↓ |
| [Billing lag] | [N] days | [N] days | | |
| [Provider count] | [N] | [N] | | |
| [Payer concentration] | <[X]% | [X]% | | |

---

## QUARTERLY BOARD PACKAGE (additions beyond monthly)

### OKR Progress Update

| Objective | Q target | Current score estimate | Status | At-risk KRs |
|---------|---------|----------------------|--------|------------|
| O1: [Name] | 0.7-0.9 | [X.X] | 🟢/🟡/🔴 | [None / KR2 — billing lag behind] |
| O2: [Name] | | | | |
| O3: [Name] | | | | |

### VCP Progress

| Initiative | Projected Q impact | Realized Q | Status |
|-----------|------------------|-----------|--------|
| [NP hire] | $[X]K EBITDA | $[X]K | 🟢 |
| [Billing improvement] | $[X]K cash | $[X]K | 🔴 |

**EBITDA YTD realized from VCP:** $[X]K vs. plan $[X]K

### Thesis Status

**Status:** ✅ Intact / ⚠️ Under pressure ([reason]) / ❌ Broken
**Evidence:** [What changed or confirms the thesis this quarter]
**Current FMV estimate:** $[X]M ([X]× trailing EBITDA)

### Risk Register Update

| Risk | Prior status | Current status | Change | Action |
|------|------------|--------------|--------|--------|
| [Payer concentration] | 🟡 | 🟡 | Stable | Payer diversification Q2 target |
| [Provider retention] | 🟢 | 🟢 | Improved | NP added; tenure stable |

### Compliance Status

| Area | Status | Next action |
|------|--------|------------|
| OIG LEIE | ✅ All clear (last check: [Date]) | Annual check: November |
| HIPAA training | ✅ 100% complete | Annual refresh: January |
| Insurance — all lines | ✅ Current | Renewal: [Date] |
| Open regulatory items | [None / Specific] | |

---

## ANNUAL BOARD REPORT (additions)

### Year-End Financial Summary

| Metric | Budget | Actual | vs. Budget | Prior Year | YoY change |
|--------|--------|--------|-----------|-----------|-----------|
| Revenue | $[X]M | $[X]M | [+/-X]% | $[X]M | [+/-X]% |
| EBITDA | $[X]M | $[X]M | | $[X]M | |
| EBITDA margin | [X]% | [X]% | | [X]% | |

### Annual OKR Retrospective

| Q | O1 score | O2 score | O3 score | Overall |
|---|---------|---------|---------|---------|
| Q1 | | | | |
| Q2 | | | | |
| Q3 | | | | |
| Q4 | | | | |
| **Full year** | | | | |

**Learnings:** [What worked / What didn't / Changes for next year]

### Exit Readiness (Annual)

| Area | Status | Action needed |
|------|--------|--------------|
| Financial statements (CPA-reviewed) | ✅/❌ | |
| HIPAA audit-ready | ✅/❌ | |
| OIG LEIE current | ✅/❌ | |
| Key person dependency | ✅/❌ | |
| Customer contracts documented | ✅/❌ | |
| **Exit readiness overall** | 🟢/🟡/🔴 | |
```

## Output Contract
- Board reporting is mandatory and on time — the board's ability to exercise oversight depends on receiving timely, complete information; monthly financial reporting delivered on the 10th business day of the following month is not a guideline — it's a board governance standard; Dr. Lewis ensures the portfolio company controller (or finance function) delivers the financial data on time so the board report can be prepared and distributed; if reporting is persistently late, Dr. Lewis flags it as a governance issue to Matt Mathison
- Material information is never held until the next reporting cycle — if a material event occurs between board reporting periods (a significant regulatory action, a key person departure, a material financial miss becoming visible), Dr. Lewis notifies Matt Mathison immediately and prepares an interim board communication if the event affects other board members' oversight responsibilities; the quarterly or monthly cycle is the minimum cadence, not the maximum
- Variance narrative is specific, not general — "revenue was below plan due to market conditions" is not a variance narrative; "revenue was $380K vs. plan $425K — the variance is primarily attributable to the 6-week vacancy gap between the departing PA and the new NP who started June 15; the NP is now building panel and Q3 revenue is expected to recover to $415K" is a variance narrative; Dr. Lewis trains the finance function to produce specific variance narratives and reviews them before the board report is distributed
- HITL required: Dr. Lewis prepares board reporting template and reviews content; controller/finance function provides financial data; CEO reviews and adds operational context; Matt Mathison receives all reports before distribution to other board members; any report that requires Matt Mathison's decision on a material item is flagged explicitly in the report; Dr. Lewis does not distribute board reports to other board members without Matt Mathison approval

## System Dependencies
- **Reads from:** Financial statements (QuickBooks monthly close), KPIs (strategy-kpi-design), OKR scores (strategy-company-okr-builder), VCP tracker (strategy-value-creation-plan), risk register (rc-risk-register), compliance status (rc-compliance-ops-review), FMV estimates (strategy-valuation-model)
- **Writes to:** Board report packages (SharePoint/Governance/<Company>/Board/Reports/[Period]/); board meeting pre-read inputs (strategy-board-prep); Matt Mathison briefing; board reporting archive
- **HITL Required:** Dr. Lewis prepares; controller provides financial data; CEO reviews operational accuracy; Matt Mathison receives and approves before other board member distribution; material interim events require immediate Matt Mathison notification

## Test Cases
1. **Golden path:** Q2 quarterly board report for Allevio → Financial: Revenue $380K (plan $425K, -10.6%); EBITDA $62K (plan $85K, -27%); root cause: provider vacancy resolved June 15; variance narrative specific; KPIs: patient count 1,850 (target 1,950 — below; NP ramp expected to add 80 patients/month); billing lag 40 days (target 35 — behind); provider count 3 (target 4 — NP now at 0.5 FTE equivalent); OKR: O1 score 0.7 (on track — NP hired; practice manager search underway); O2 score 0.55 (at risk — billing lag behind); O3 score 0.85 (ahead — HIPAA risk assessment complete May 8); VCP: NP initiative $12K realized (expected $40K full year — on track given June 15 start); billing lag $0 realized (target $25K — behind); thesis: intact; FMV $2.4M (6.5× $380K EBITDA — below Q1 $2.6M due to EBITDA decline; expected to recover Q3); compliance: all clear; exit readiness: 🟡 (billing lag and SOP documentation in progress); Matt Mathison reviews; approves for board distribution; board pre-read finalized
2. **Edge case:** Controller delivers financial data 12 days after month-end (2 days late per 10-day standard) → Dr. Lewis addresses with CEO: what caused the delay? (Reconciliation issue; controller bandwidth; software problem?); Dr. Lewis documents the delay and the root cause; if this is the first occurrence, it's a warning with a process improvement plan; if recurring, it's a governance flag for Matt Mathison (the board reporting process is not functioning as required); Dr. Lewis works with the CEO to build a financial close calendar that ensures month-end data is available by Day 5 so the board report can be complete by Day 10; structural fix, not just a one-time correction
3. **Adversarial:** A portfolio company CEO wants to remove the exit readiness section from the annual board report because "we're not planning to exit soon" → The exit readiness section is not just for companies actively pursuing an exit — it is annual governance that ensures the company doesn't accumulate exit-readiness gaps that become expensive to fix under time pressure; HIPAA gaps discovered 6 months before an exit require immediate remediation at emergency prices; the same work done 2 years before an exit costs a fraction; the exit readiness section stays in the annual board report as a governance standard regardless of the current exit timeline; Dr. Lewis maintains the section and updates it every year

## Audit Log
All board reports retained permanently (governance record). Financial data source retained with each report. Controller delivery date and report distribution date retained. Matt Mathison approval records retained. Interim board communications retained. Annual audited financial statements retained permanently.

## Deprecation
Retire when portfolio companies have a CFO who owns the board reporting process — with Dr. Lewis reviewing the strategic and compliance portions of board reports and Matt Mathison receiving the final package regardless of who prepares the underlying financial analysis.
