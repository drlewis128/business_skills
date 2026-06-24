---
name: portops-portfolio-kpi-tracker
description: "portfolio KPI tracker, track KPIs across all portfolio companies, monthly KPI report, portfolio metrics, HIVE KPIs, Allevio KPIs, Column6 KPIs, MBL KPIs, WTI and BBL tracking, PMPM tracking, gross margin tracking, cash runway tracking, IO count metrics, employer count metrics, portfolio metrics for Matt, monthly portfolio KPI brief, entity key performance indicators, portfolio performance metrics, KPI rollup, MBL portfolio monthly metrics, entity KPI dashboard, portfolio scorecard"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "month/year, entity-specific data inputs (WTI price, BBL/day, PMPM, GM%, cash runway)"
---

# Portfolio KPI Tracker

This skill compiles and formats the monthly KPI report across all four MBL portfolio entities, capturing the specific metrics that drive investment decisions: HIVE's WTI price and BBL/day production, Allevio's PMPM and employer count, Column6's gross margin and IO pipeline, and MBL HoldCo's cash runway and overhead ratio. It delivers a clean monthly brief for Matt Mathison with variance analysis against prior month and plan.

## When to Use

- Producing the monthly portfolio KPI package for Matt Mathison
- Answering "how are our KPIs trending this month?" for any entity
- Variance analysis when an entity KPI moves outside expected range
- Pre-board or pre-LP meeting KPI preparation

## Portfolio KPI Tracker Framework

```
PORTFOLIO KPI TRACKER — [MONTH YEAR]
Prepared by: Dr. John Lewis | For: Matt Mathison

═══════════════════════════════════════════════════════
HIVE PARTNERS — OIL & GAS KPIs
═══════════════════════════════════════════════════════
WTI Price (month avg):    $[X]/bbl  | Prior Mo: $[X] | Δ [+/-X]
WTI Gate Status:          [OPEN / PAUSED — rationale]
Production (BBL/day):     [X]       | Prior Mo: [X]  | Δ [+/-X]%
Active LOIs:              [X]       | Pipeline Value: $[X]M
Cost per BOE:             $[X]      | Budget: $[X]   | Δ [+/-X]
EBITDA (month):           $[X]K     | YTD: $[X]M
Distributions YTD:        $[X]M     | LP MOIC to date: [X]x

═══════════════════════════════════════════════════════
ALLEVIO — HEALTHCARE MSO KPIs (AGGREGATE ONLY)
═══════════════════════════════════════════════════════
PMPM (avg, aggregate):    $[X]      | Prior Mo: $[X] | Δ [+/-X]%
Total Members (aggregate):[X]       | Prior Mo: [X]  | Δ [+/-X]
Employer Count:           [X]       | New This Mo: [X]
Employer ACV (avg):       $[X]K     | Churn Risk (90d): [X]
Claims Denial Rate:       [X]%      | Target: <[X]%
DSO (billing days):       [X] days  | Target: 35-40 days
Revenue Run Rate:         $[X]M ARR | Plan: $[X]M | Δ [+/-X]%

═══════════════════════════════════════════════════════
COLUMN6 / SIPROCAL — CTV/MOBILE/GAMING KPIs
═══════════════════════════════════════════════════════
Gross Margin:             [X]%      | Threshold: ≥35% | [🟢/🔴]
IO Count (active):        [X]       | Prior Mo: [X]   | Δ [+/-X]
IO Pipeline (booked):     $[X]M     | Running Rev: $[X]M
Agency Count (Tier 1):    [X]       | Total Agencies: [X]
CCPA Compliance:          [status]  | Last Audit: [date]
Revenue vs Plan:          [X]%      | Plan: $[X]M

═══════════════════════════════════════════════════════
MBL HOLDCO — MANAGEMENT COMPANY KPIs
═══════════════════════════════════════════════════════
Cash Position:            $[X]      | Runway: [X] months [🟢/🟡/🔴]
Overhead (month):         $[X]K     | Budget: $[X]K  | Δ [+/-X]%
Overhead Ratio:           [X]% of portfolio value
Mgmt Fee Income:          $[X]K     | Overhead Coverage: [X]%
AI Initiative Status:     Phase [X] | Next Milestone: [date]
Systems Health:           [All UP / FLAGS: X]

═══════════════════════════════════════════════════════
PORTFOLIO VARIANCE FLAGS
═══════════════════════════════════════════════════════
[Any KPI outside plan by >10% or at threshold]
[NONE if all within tolerance]

═══════════════════════════════════════════════════════
RECOMMENDED ACTIONS
═══════════════════════════════════════════════════════
1. [Action → Owner → Due date]
2. [Action → Owner → Due date]
```

## Output Format

```markdown
## PORTFOLIO KPI SUMMARY — [MONTH YEAR]

**HIVE:** WTI $[X] | [X] BBL/day | Gate [OPEN/PAUSED] | MOIC [X]x
**Allevio:** PMPM $[X] | [X] Members | [X] Employers | DSO [X]d
**Column6:** GM [X]% [🟢/🔴] | [X] Active IOs | Rev [X]% of plan
**MBL HoldCo:** Cash [X] months [🟢/🟡/🔴] | OH [X]% of budget

**Flags:** [list or NONE]
**Matt's Decisions Needed:** [list or NONE]
```

## Output Contract

- All Allevio metrics must be aggregate and de-identified — PMPM, total member count, employer count only. No claims detail at the individual level, no patient identifiers, no member names or employer-specific PHI. This is a non-negotiable HIPAA constraint enforced at every output cycle regardless of data source.
- Column6 gross margin is a hard threshold KPI: any reading below 35% triggers an immediate escalation flag in the output and a required action item for the entity CEO. The skill must not bury this below the fold or mark it as informational — it surfaces as a critical flag requiring acknowledgment.
- The HIVE WTI gate must display both the current price and the consecutive-week counter so that Matt and Dr. Lewis can track proximity to the acquisition pause without having to recall prior reports. The gate state (OPEN vs PAUSED) must be explicit in plain language, not implied by a color alone.

## System Dependencies

**Reads from:** Covercy (HIVE financials/production), AdvancedMD aggregate exports (Allevio), Column6 internal reporting, QuickBooks (MBL cash/overhead), Bill.com (MBL AP)
**Writes to:** Monday.com (monthly KPI board), Matt Mathison email, SharePoint /MBL/Portfolio/KPIs/[YYYY]/
**HITL Required:** Dr. Lewis validates all entity inputs before compilation; Matt reviews and signs monthly KPI package

## Test Cases

- **Golden path:** All entities within plan, WTI $62, Allevio PMPM growing, Column6 GM 37%, MBL 4-month cash — clean report, no flags
- **Edge case:** Column6 GM drops to 34.8% — skill surfaces 🔴 gross margin flag and drafts entity CEO action item even when all other metrics are green
- **Adversarial:** Input data includes Allevio member-level claims detail — skill strips to aggregate totals only, logs the sanitization, and flags data quality issue for Dr. Lewis

## Audit Log

Monthly KPI packages are archived with a version stamp in SharePoint under /MBL/Portfolio/KPIs/[YYYY]/[MM]-KPI-Package.pdf. Each package records the data source, pull date, and Dr. Lewis sign-off timestamp. KPI variance explanations provided by entity CEOs are attached as an addendum. HIVE WTI gate log is maintained as a running append-only ledger.

## Deprecation

Retire this skill when MBL deploys a unified portfolio analytics platform that auto-populates KPIs from system APIs; the replacement skill validates platform data quality and formats Matt's preferred output. Deprecation requires a 60-day parallel comparison period confirming data parity, followed by Matt Mathison sign-off.
