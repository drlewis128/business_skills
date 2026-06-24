---
name: portops-hive-financial-monitor
description: "HIVE financial monitor, production revenue tracker, lifting cost per BOE, royalty expense tracker, HIVE EBITDA, oil and gas cash flow monitor, HIVE distribution capacity, WTI revenue impact, HIVE financial report, QuickBooks HIVE financials, interest expense tracker, HIVE P&L monitor, Covercy distribution data, HIVE financial variance, revenue per BOE, HIVE operating cost, monthly financial rollup HIVE, quarterly financial report Matt, HIVE financial KPIs, oil and gas financial performance hedging status"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "optional: period (YYYY-MM or YYYY-QN), report type (monthly | quarterly), or specific metric (e.g., 'EBITDA bridge', 'WTI sensitivity', 'distribution capacity')"
---

# HIVE Financial Monitor

HIVE Partners' financial performance is driven by a simple but volatile equation: production volume times WTI netback price minus lifting costs, royalties, and interest expense. This skill monitors the full P&L stack using QuickBooks as the financial system of record, cross-references production volumes from Covercy, models WTI price sensitivity on every run, and delivers monthly packages to Dr. Lewis and the entity CEO with quarterly escalation to Matt Mathison.

## When to Use

- Monthly close: Dr. Lewis and entity CEO need the financial package with actuals vs. budget
- WTI price moves materially — model the revenue impact at current production levels immediately
- A distribution event is approaching — validate distribution capacity from cash flow before Covercy records the event
- Quarterly report cycle: Matt Mathison receives the quarterly financial summary with EBITDA bridge and operating cash flow
- Any major P&L line item variance exceeds 15% vs. budget — triggers an unscheduled alert to Dr. Lewis

## HIVE Financial Monitor Framework

```
FINANCIAL SYSTEM OF RECORD
  Primary: QuickBooks (P&L actuals, GL detail, cost classification, debt service)
  Cross-reference: Covercy (LP distribution history, reserves, capital call ledger)
  Production volumes: portops-hive-production-monitor (BBL/day → total BOE for period)
  Bank portal: cash balance verification for distribution capacity confirmation
  All reported figures must cite a QuickBooks data-pull timestamp

REVENUE MONITORING
  Production revenue = net BBL/day x WTI netback price x days in period
  Netback price = WTI spot minus transportation, gathering, and quality differentials
  Monthly vs. plan variance tracked as $ and %
  WTI sensitivity modeled at $50, $55, $58, $65, $70/BBL using current production volumes
  Revenue per BOE = gross revenue / total BOE produced; tracked vs. budget

LIFTING COST ANALYSIS
  LOE per BOE = total lifting cost / BOE produced; target set in annual operating plan
  LOE components: labor, chemical, fuel and power, water disposal, compression, repairs and maintenance
  Water disposal cost tracked as $/BBL disposed — material cost driver in Uinta Basin operations
  Workover costs: tracked separately from routine LOE; capitalized or expensed per QuickBooks policy
  LOE trend: 3-month rolling average vs. budget; >10% unfavorable trend triggers advisory to entity CEO

ROYALTY AND INTEREST EXPENSE
  Gross royalty expense: mineral owner royalties at applicable NRI (net revenue interest) rates
  Net revenue interest (NRI): confirmed against lease agreements; changes require legal review
  Overriding royalty interests (ORRIs): tracked separately if applicable
  Interest expense: debt facility interest accrual and cash payments; covenant compliance flag
  Total royalty + interest burden as % of gross revenue: tracked vs. budget

EBITDA CALCULATION
  Adjusted EBITDA = Gross Revenue - LOE - G&A - Royalty Expenses
  EBITDA margin % = Adjusted EBITDA / Gross Revenue
  EBITDA bridge: month-over-month waterfall (volume effect, price effect, cost effect)
  Quarterly EBITDA bridge provided to Matt Mathison with narrative explanation

CASH FLOW FROM OPERATIONS
  Operating cash flow = Adjusted EBITDA - Interest Expense - Cash Taxes
  Capex: well workovers, new equipment, capitalized regulatory compliance costs
  Free cash flow = Operating cash flow - Capex
  Distributions capacity = Free cash flow - debt service reserve - operating reserve

HEDGING STATUS
  Commodity price hedges in place: instrument type (swap, collar, put), strike price, volume hedged
  Hedge book value: mark-to-market at current WTI vs. strike price
  Un-hedged production exposure: un-hedged BBL/day x (WTI sensitivity range)
  Hedging status reported monthly; any expiring hedge within 90 days flagged to entity CEO + Matt

MONTHLY FINANCIAL DASHBOARD TEMPLATE
  Prepared from QuickBooks within 5 business days of month close
  Reviewed by Dr. Lewis and entity CEO before distribution
  Matt Mathison receives quarterly package (10 business days after quarter close)
  Variance alerts (>15% any line) trigger unscheduled distribution regardless of cycle
```

## Output Format

```markdown
# HIVE Partners Financial Monitor — [Month/Quarter YYYY]
**Prepared:** [Date] | **QuickBooks Data Pull:** [Timestamp] | **Reviewed By:** Dr. John Lewis

## P&L Summary
| Line Item             | Actual     | Budget     | Variance   | Notes              |
|-----------------------|------------|------------|------------|--------------------|
| Production Revenue    | $[X]       | $[X]       | [+/-X%]    |                    |
| Lifting Cost (LOE)    | $[X]       | $[X]       | [+/-X%]    |                    |
| Royalty Expenses      | $[X]       | $[X]       | [+/-X%]    |                    |
| G&A                   | $[X]       | $[X]       | [+/-X%]    |                    |
| **Adjusted EBITDA**   | **$[X]**   | **$[X]**   | **[+/-X%]**|                    |
| Interest Expense      | $[X]       | $[X]       | [+/-X%]    |                    |
| Operating Cash Flow   | $[X]       | $[X]       | [+/-X%]    |                    |
| Capex                 | $[X]       | $[X]       | [+/-X%]    |                    |
| Free Cash Flow        | $[X]       | $[X]       | [+/-X%]    |                    |

## Unit Economics
| Metric             | Actual   | Budget   | Variance |
|--------------------|----------|----------|----------|
| Revenue / BOE      | $[X.XX]  | $[X.XX]  | [+/-X%]  |
| LOE / BOE          | $[X.XX]  | $[X.XX]  | [+/-X%]  |
| Royalties / BOE    | $[X.XX]  | $[X.XX]  | [+/-X%]  |
| EBITDA / BOE       | $[X.XX]  | $[X.XX]  | [+/-X%]  |
| Total BOE Produced | [X,XXX]  | [X,XXX]  | [+/-X%]  |

## WTI Revenue Sensitivity (Current Production Volumes)
| WTI Price    | Projected Monthly Revenue | vs. Actual Budget |
|--------------|---------------------------|-------------------|
| $50/BBL      | $[X]                      | [+/-X%]           |
| $55/BBL      | $[X]                      | [+/-X%]           |
| **$58/BBL**  | **$[X]**                  | **[+/-X%]**       |
| $65/BBL      | $[X]                      | [+/-X%]           |
| $70/BBL      | $[X]                      | [+/-X%]           |

## Distribution Capacity
- Free Cash Flow (period): $[X]
- Debt Service Reserve Required: $[X]
- Operating Reserve Required: $[X]
- **Available for Distribution: $[X]**
- Covercy Confirmed Balance: $[X]
- Recommended Distribution: $[X] *(pending Matt Mathison approval)*

## Hedging Status
- Hedged volume: [X] BBL/day through [Date] at $[XX]/BBL [instrument type]
- Mark-to-market hedge value: $[X] [gain/loss]
- Un-hedged exposure: [X] BBL/day at WTI risk

## Variance Alerts (>15% from Budget)
- [Line item] | Actual: $[X] | Budget: $[X] | Variance: [X%] | Root cause: [explanation]
```

## Output Contract

- All revenue and cost figures must be sourced directly from QuickBooks with the data-pull timestamp included in the report header. Estimates or interpolations are not permitted; if QuickBooks data is incomplete at the time of the run, the affected line items must be flagged as "data pending" and the report distributed with the incomplete data disclosed rather than substituted with prior-period actuals.
- LOE per BOE must use the three-component definition (labor + chemical + fuel/power + water disposal + compression + repairs) consistently across all reporting periods. Any change to the LOE component definition requires Dr. Lewis approval and a retroactive restatement note in the current report so period-over-period comparisons remain valid for LP and management review.
- The WTI sensitivity table must appear on every report using all five price points, with the $58/BBL row visually distinguished as the acquisition gate threshold. This table is the primary tool Matt Mathison uses to understand HIVE's downside revenue exposure and must never be omitted even when WTI is well above the threshold.

## System Dependencies

**Reads from:** QuickBooks (P&L actuals, GL detail, debt service schedule, cost classification), Covercy (LP distribution history, reserves, capital call ledger confirming distribution capacity), portops-hive-production-monitor (BBL/day and total BOE for unit economics), WTI spot price feed (sensitivity modeling), bank portal (cash balance for distribution capacity verification)
**Writes to:** SharePoint (financial packages under HIVE Partners / Finance / Monthly Reports and Quarterly Reports), email (monthly to Dr. Lewis and entity CEO; quarterly adds Matt Mathison), Monday.com (variance alert cards when any line item exceeds 15% unfavorable variance)
**HITL Required:** Any distribution recommendation requires Dr. Lewis validation then Matt Mathison approval before Covercy records the event; variance alerts exceeding 20% on any major line item require entity CEO acknowledgment and root cause explanation before the next reporting cycle; quarterly report release to Matt requires Dr. Lewis accuracy review before transmission

## Test Cases

- **Golden path:** Clean month-end QuickBooks pull with all actuals posted, WTI at $63/BBL, all P&L lines within 10% of budget — report generates with full sensitivity table, EBITDA bridge populates correctly, distribution capacity validated against Covercy, no variance alerts triggered
- **Edge case:** QuickBooks month-end close is delayed and lifting cost actuals are not posted at the time of the run — system must flag the missing data explicitly, report with available actuals only, withhold the LOE/BOE metric rather than use prior-period actuals as a proxy, and note the pending data in the report header
- **Adversarial:** Production revenue is 22% below budget due to a shut-in event that was not recorded in QuickBooks (booked in the following month) — the variance alert must fire immediately based on Covercy production data cross-referenced against the revenue line, not wait for the monthly cycle; the alert must prompt entity CEO for a root cause explanation within 48 hours and flag the accounting timing mismatch to Dr. Lewis

## Audit Log

Every financial monitor run logs: period covered, QuickBooks data-pull timestamp, Covercy data-pull timestamp, WTI price used for sensitivity modeling, all computed metrics with formulas applied, variance alerts triggered and recipients notified, distribution capacity calculations with inputs, and any HITL actions taken (distribution approvals, line item restatements, entity CEO acknowledgments). Logs are retained 7 years under MBL financial records policy in SharePoint under HIVE Partners / Finance / Audit Logs with access restricted to Dr. Lewis, entity CEO, and Matt Mathison.

## Deprecation

This skill is deprecated when HIVE Partners transitions to a dedicated oil and gas ERP (such as Quorum or Enertia) that natively integrates production accounting with LP reporting and provides audit-ready financials without the QuickBooks extraction layer. Deprecation requires a parallel-run period of at least one full quarter with the successor system validated by Dr. Lewis, confirmed by the entity CEO, and approved by Matt Mathison before this skill is retired.

---

MBL CONTEXT:
- MBL Partners = private equity holding firm; Matt Mathison = Managing Partner (final authority)
- Dr. John Lewis = Principal Systems Engineer & Director of AI Strategy
- HITL chain: Dr. Lewis → entity CEO → Matt Mathison
- HIVE Partners = oil & gas; Uinta Basin UT; LP returns; Covercy (ops system); WTI $58/bbl for 2+ consecutive weeks → PAUSE new acquisitions; BBL/day production metric; key metric is BOE (barrel of oil equivalent)
- THRIVE = Truth, Hustle, Respect, Integrity, Value, Enjoy
