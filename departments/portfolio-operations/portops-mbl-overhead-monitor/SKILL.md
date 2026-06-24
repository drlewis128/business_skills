---
name: portops-mbl-overhead-monitor
description: "monitor mbl holdco overhead, mbl overhead vs budget, payroll cost review, benefits cost tracker, tech stack spend review, professional services budget, facilities cost monitor, travel expense tracker, management fee coverage ratio, overhead as percent of portfolio value, overhead budget variance, category overage flag, bill.com expense data review, overhead efficiency ratio, monthly overhead report for matt, holdco G&A monitor, overhead burn rate check, category budget flag, management fee income vs expenses, overhead cost reduction opportunities"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<month YYYY-MM | 'current' | 'ytd' | 'quarterly'>"
---

# MBL Overhead Monitor

MBL HoldCo overhead must be tracked at the category level monthly — not just as a total — because cost drift in any single category (tech stack seat creep, unbounded professional services) can erode the management fee surplus that funds HoldCo operations without appearing dangerous in an aggregate view. This skill produces a monthly category breakdown with management fee coverage ratio and overhead-as-percent-of-portfolio-value for Dr. Lewis, with quarterly variance reports going to Matt Mathison.

## When to Use

- Month-end close review before financials are finalized
- When any overhead category shows a potential overage mid-month
- Quarterly when preparing Matt's financial summary package
- Before adding a new recurring vendor or headcount to assess budget impact
- Annual budget season to baseline next year's overhead targets by category

## MBL Overhead Monitor Framework

```
OVERHEAD BUDGET FRAMEWORK
  Annual overhead budget: Approved by Matt Mathison each January
  Monthly allocation: Annual budget / 12 (adjusted for known seasonality)
  Budget source of record: QuickBooks approved budget baseline
  Variance tracking: Bill.com actuals vs QuickBooks budget by category
  10% threshold: Any category exceeding budget by >10% triggers immediate Dr. Lewis alert

CATEGORY BREAKDOWN
  Payroll (W-2 staff):
    Base salaries; employer payroll tax; PEO/HR platform cost
    Budget sensitivity: Headcount changes require same-month budget adjustment
  Benefits:
    Health/dental/vision premiums; 401k match; other employer-paid benefits
    Note: Benefits cost tracked separately from payroll for benchmarking
  Tech Stack / SaaS:
    M365 (per-seat licensing); Krista.ai (subscription tier); GoHighLevel CRM
    Monday.com; QuickBooks Online; Bill.com; any other SaaS tools
    Alert: Annual renewals hitting in a single month flagged as one-time, not run-rate
  Professional Services:
    Legal (outside counsel); accounting/audit; management consultants
    Budget sensitivity: Legal spend can spike unpredictably; track rolling 3-month average
  Facilities:
    Office rent; utilities; insurance (property/liability)
    Note: Flag any lease renewal negotiations affecting future budget
  Travel and Entertainment:
    Matt Mathison travel; Dr. Lewis travel; team offsites; client entertainment
    Policy: All T&E over $500 per event requires pre-approval
  Other / Miscellaneous:
    Catch-all for items not fitting above categories; flag if >5% of total overhead

MANAGEMENT FEE INCOME VS OVERHEAD
  Management fee schedule: Per agreement with Allevio, HIVE Partners, Column6
  Monthly fee income: Sum of fees received (not scheduled — only confirmed receipts)
  Coverage ratio: Fee income / total overhead (target >=1.2x)
  Coverage tiers: GREEN >=1.2x | YELLOW 1.0-1.2x | RED <1.0x (structural deficit)
  Surplus / deficit: Fee income minus overhead (positive = HoldCo self-funds)
  Fee concentration: Largest single entity as % of total fee income (risk if >60%)

OVERHEAD RATIO ANALYSIS
  Estimated portfolio enterprise value: Maintained in SharePoint (updated quarterly)
  Annual overhead run rate: Current month actual x 12
  Overhead / AUM ratio: Target <1.5% for PE holdco of MBL's structure
  Benchmark: Industry comparable holdcos at $50-200M AUM run 1.0-1.5% overhead/AUM
  Trend: Quarter-over-quarter direction (up/flat/down) and magnitude

TREND ANALYSIS
  Month-over-month: Total overhead and each category vs prior month
  YTD vs prior year YTD: Same period comparison
  Category trend alerts: Any category up >15% month-over-month flagged for explanation
  Emerging cost growth: New vendors or expanding existing contracts identified early

COST REDUCTION OPPORTUNITIES
  Vendor consolidation: Overlapping capabilities across SaaS tools (flagged with savings estimate)
  Subscription rationalization: Unused seats, inactive users, underutilized features
  AI automation savings: Functions previously done manually or by contractors
    now handled by Krista.ai — quantify cost avoidance vs prior spend
  Professional services: Tasks that can be internalized or automated
  Opportunity ranking: By estimated annual savings and implementation difficulty

BUDGET VS ACTUAL VARIANCE
  Monthly variance table: Every category; budget; actual; dollar variance; percent variance
  Significant variances: >10% over budget flagged with root cause required
  One-time vs recurring: Each variance classified; recurring variances reforecast
  Full-year forecast: At current run rate vs approved annual budget
  Budget headroom: Dollars remaining before full-year budget is exhausted

MONTHLY OVERHEAD REPORT FOR MATT MATHISON
  Frequency: Monthly; distributed by 5th business day of following month
  Distribution: Matt Mathison (primary); Jimmy Lindsley (CC)
  Format: Executive summary (coverage ratio, total overhead, flags) + full category table
  Quarterly: Full variance analysis + AUM efficiency trend + cost reduction update
```

## Output Format

```markdown
## MBL Overhead Monitor — [Month YYYY]

**Management Fee Coverage: X.Xx [GREEN / YELLOW / RED]**
**Total Overhead:** $X,XXX  **vs Budget:** [+/-]X%
**Overhead / AUM:** X.X%  **Trend:** [Up/Flat/Down]

### Category Flags (>10% over budget)
- [Category]: $[actual] vs $[budget] budget — [root cause] — [one-time/recurring]
- None [OK]

### Overhead by Category
| Category | Budget | Actual | Variance | % |
|----------|--------|--------|----------|---|
| Payroll | $X | $X | $X | X% |
| Benefits | $X | $X | $X | X% |
| Tech Stack | $X | $X | $X | X% |
| Professional Services | $X | $X | $X | X% |
| Facilities | $X | $X | $X | X% |
| Travel and Entertainment | $X | $X | $X | X% |
| Other | $X | $X | $X | X% |
| **TOTAL** | **$X** | **$X** | **$X** | **X%** |

### Management Fee Coverage
| Entity | Expected | Received | Delta |
|--------|----------|----------|-------|
| Allevio | $X | $X | $X |
| HIVE Partners | $X | $X | $X |
| Column6 | $X | $X | $X |
| **Total** | **$X** | **$X** | **$X** |
Coverage ratio: X.Xx | Surplus / (Deficit): $X

### AUM Efficiency
Portfolio value: $X | Annual run rate: $X | Overhead/AUM: X.X% | Benchmark: <1.5%

### YTD Snapshot
YTD actual: $X | YTD budget: $X | Full-year forecast: $X | Budget headroom: $X

### Cost Reduction Opportunities
1. [Opportunity — estimated savings — implementation difficulty]

### Action Items
- [ ] [Owner] [Action] by [Date]

_Sources: Bill.com actuals pull [date]; QuickBooks budget baseline [version]._
```

## Output Contract

- The 10% category overage threshold is a hard flag — not advisory — and triggers immediate notification to Dr. Lewis regardless of whether the monthly report cadence has arrived. This prevents budget drift from compounding across months undetected; early flagging in week 2 or 3 of a month enables course correction before month-end when variance becomes difficult to absorb without reforecasting the full year.

- Management fee coverage ratio below 1.0x (fees less than overhead) is a structural warning, not merely a budget variance — it means MBL HoldCo is consuming more than it earns from the portfolio, which is unsustainable without capital draws or fee renegotiation. This metric is reported to Matt in every monthly summary with trend direction so he can assess fee adequacy relative to portfolio size and make proactive decisions before the deficit compounds.

- Overhead as a percentage of AUM is benchmarked against a 1.5% target for PE holding companies of comparable structure — deviations above benchmark indicate the overhead structure is not scaling efficiently with portfolio value and should prompt a line-by-line rationalization discussion with Matt. The trend direction versus prior quarter is always included so Matt can see trajectory, not just a point-in-time number, enabling him to distinguish temporary spikes from structural creep.

## System Dependencies

**Reads from:** Bill.com (AP and expense actuals by category); QuickBooks (approved annual budget, chart of accounts, management fee receipt confirmation); SharePoint (portfolio enterprise value estimates, management fee agreements)
**Writes to:** Monday.com (overhead status card, flagged category tasks); Dr. Lewis monthly digest; Matt Mathison quarterly variance report via Outlook; Jimmy Lindsley CC on monthly summary
**HITL Required:** Dr. Lewis reviews flagged categories and validates root causes before report is sent to Matt; Matt approves any budget reforecast if full-year projection exceeds annual budget by >5%; Finance reviews all one-time vs recurring classifications before they are locked

## Test Cases

- **Golden path:** All categories within 10% of budget; coverage ratio GREEN at 1.4x; AUM efficiency at 1.2%; management fees received on schedule from all three entities; report generates with no flags and clean coverage summary distributed by day 5 of the month.
- **Edge case:** Tech stack category spikes 35% over budget due to M365 annual renewal hitting in one month — skill must classify this as one-time, annotate the renewal date, exclude it from run-rate calculation, and present the underlying monthly tech spend separately so it is not treated as a recurring overage requiring remediation.
- **Adversarial:** Bill.com and QuickBooks show different totals for the professional services category due to a timing difference between when a bill was approved in Bill.com and when it was posted in QuickBooks — skill must surface both figures explicitly, note the source lag, and flag for reconciliation rather than arbitrarily choosing one number to report.

## Audit Log

Monthly overhead snapshots are archived to SharePoint under /MBL Operations/Overhead/[Year]/[Month]/ with the Bill.com pull date, QuickBooks budget version, and coverage ratio. Category flags and their resolutions are logged with root cause analysis and corrective action taken. Quarterly variance reports sent to Matt are version-controlled with send timestamp and Matt's acknowledged-receipt date. Any budget reforecast approved by Matt is stored with approval date and prior versus revised budget figures for audit trail purposes.

## Deprecation

This skill is superseded if MBL HoldCo implements an integrated FP&A platform (such as Mosaic or Planful) that provides automated budget-versus-actual reporting with category drill-down and coverage ratio calculations. At that point, the category breakdown and YTD sections are replaced by platform exports, and this skill retains only the coverage ratio threshold logic and AUM efficiency benchmarking. Archive at least three years of monthly snapshots before decommissioning so historical trend data is available for LP reporting.
