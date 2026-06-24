---
name: portops-hive-lp-dashboard
description: "HIVE LP dashboard, limited partner tracker, LP capital deployed, LP distribution report, MOIC tracker, IRR by LP, LP communication cadence, investor reporting HIVE, LP count summary, capital commitment tracker, distribution waterfall HIVE, LP return summary, investor relations HIVE, LP quarterly report, HIVE fund performance, LP onboarding status, capital call tracker, LP financial disclosure, investor update HIVE, Covercy LP data"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "optional: LP name or ID, report period (e.g., 'Q2 2026'), or view type ('aggregate' for Matt-only fund-level view)"
---

# HIVE LP Dashboard

HIVE Partners maintains a set of limited partner relationships whose capital is deployed into Uinta Basin oil and gas assets, with distributions tied directly to production revenue and free cash flow. This skill tracks LP portfolio metrics — capital committed, capital called, distributions paid, MOIC, and IRR — with strict per-LP data isolation enforced at every step and mandatory Matt Mathison sign-off before any LP communication leaves the system.

## When to Use

- Quarterly LP report cycle: generate individual LP packages for each investor before distribution
- Matt Mathison requests an aggregate fund-level view for board or internal strategy purposes
- An LP inquires about their current position, distribution history, or return metrics
- A distribution event occurs and individual LP statements must be generated and isolated
- Annual LP meeting preparation: build performance deck inputs from verified Covercy data

## HIVE LP Dashboard Framework

```
LP PORTFOLIO OVERVIEW
  System of record: Covercy (LP registry, capital events, distributions)
  Metrics tracked: LP count, total capital committed, total capital deployed, vintage year
  Data classification: Tier 1 Restricted — LP data is not shared across LPs under any circumstance
  Aggregate view: available to Matt Mathison only (role: Managing Partner)
  Responsible parties: Dr. Lewis (package review), Matt Mathison (sign-off + authority)

CAPITAL TRACKING
  Per-LP fields: LP name/ID, capital committed ($), capital called ($), unfunded commitment ($)
  Capital deployment timeline: call date, call amount, cumulative called vs. committed ratio
  Unfunded commitment tracking: available to call on future acquisitions
  Data source: Covercy capital call ledger; confirmed against QuickBooks receipt records

DISTRIBUTION METRICS
  Distribution history: per LP, per distribution event, with date, gross amount, net amount
  Return of capital tracking: distinguish between return of principal and profit distribution
  Distribution schedule: upcoming events with projected amounts based on distribution capacity
  Covercy as distribution system of record; QuickBooks confirms wire amounts

MOIC AND IRR TRACKING
  Gross MOIC = total distributions / capital called (inception-to-date)
  Net MOIC = distributions net of management fees / net capital contributed
  Gross IRR: XIRR computed using capital call dates and distribution dates as cash flows
  Net IRR: XIRR on net cash flows (after fees and carry)
  Benchmark comparison: LP agreement benchmark rate (typically 8% preferred return)

LP COMMUNICATION CADENCE
  Quarterly report: due within 45 days of quarter close
  Annual meeting: held Q1 of following year; materials due 30 days in advance
  LP-specific obligations: tracked per LP agreement; flagged at 14 days before deadline
  Cadence compliance status: current | approaching | lapsed (>90 days since last outreach)
  Any lapsed cadence triggers a flag to Dr. Lewis before the report is finalized

DATA SECURITY: TIER 1 RESTRICTED
  Each LP report is scoped to a single LP_ID; cross-LP data is prohibited at all levels
  Aggregate views generated only for Matt Mathison with explicit role authentication
  Classification header "Tier 1 Restricted — Single LP View" appears on page 1 and all footers
  SharePoint access for LP packages: restricted to Dr. Lewis, entity CEO, Matt Mathison only
  LP packages transmitted only through Matt Mathison-approved channels (no direct email to LP)

MATT MATHISON AUTHORIZATION
  All LP communications require Matt review and signature before distribution
  Process: Dr. Lewis stages package → Matt reviews → Matt signs → package transmits
  Aggregate fund-level reports: Matt-only view, no further distribution without his direction
  Any IRR/MOIC restatement: Dr. Lewis + entity CEO + Matt Mathison all must approve

DISTRIBUTION SCHEDULE TEMPLATE
  Upcoming distribution events: projected date, gross amount per LP, net amount per LP
  Distribution capacity confirmation: sourced from portops-hive-financial-monitor before scheduling
  Covercy records the distribution event only after Matt Mathison approval
```

## Output Format

```markdown
# HIVE Partners — LP Statement
## [LP Name] | [Report Period: Q[N] YYYY]
**Classification: Tier 1 Restricted — Single LP View**
**Prepared:** [Date] | **Data Source:** Covercy | **Reviewed By:** Dr. John Lewis

## Position Summary
| Metric              | Value        |
|---------------------|--------------|
| Capital Committed   | $[X]         |
| Capital Called      | $[X]         |
| Unfunded Commitment | $[X]         |
| Distributions Paid  | $[X]         |
| Net Position        | $[X]         |
| Gross MOIC          | [X.Xx]       |
| Net MOIC            | [X.Xx]       |
| Gross IRR           | [X.X]%       |
| Net IRR             | [X.X]%       |
| vs. Preferred Return| [+/-X.X]%    |

## Distribution History
| Date       | Gross Amount | Net Amount  | Type              |
|------------|--------------|-------------|-------------------|
| [YYYY-MM]  | $[X]         | $[X]        | Return of Capital |
| [YYYY-MM]  | $[X]         | $[X]        | Profit            |

## Communication Log
- Last outreach: [Date] | [Method] | [Topic]
- Next scheduled: [Date] | [Type]
- Cadence status: [Current / Approaching / LAPSED]

## Upcoming Distributions
- Projected date: [Date] | Projected amount: $[X] (pending Matt Mathison approval)

---
*Matt Mathison signature required before release. This document contains Tier 1 Restricted information.*
**Approved by:** _________________________ | **Date:** _________
```

## Output Contract

- Every LP package must be scoped to a single LP_ID and the classification header "Tier 1 Restricted — Single LP View" must appear on page one and every subsequent page footer. Cross-LP data exposure is a material breach of LP agreements and fiduciary duty; the isolation rule is enforced with zero exceptions regardless of requestor seniority below Matt Mathison.
- MOIC and IRR must be computed from Covercy capital event records using the defined XIRR method, not estimated or interpolated. If Covercy data is incomplete for any period, the metric must be withheld and a data gap note included — investors deserve accurate figures and a disclosed limitation over a confident but incorrect calculation.
- Matt Mathison's name and signature block must appear on every LP communication before transmission; no package leaves the system without a logged Matt approval event with timestamp and confirmation method. This protects Matt's managing partner authority and ensures every LP-facing communication represents HIVE Partners officially and intentionally.

## System Dependencies

**Reads from:** Covercy (LP registry, capital calls, distributions, IRR inputs), QuickBooks (revenue actuals confirming distribution capacity, management fee actuals), portops-hive-financial-monitor (distribution capacity validation)
**Writes to:** SharePoint (LP package archive under HIVE Partners / LP Relations / [LP_ID] — access restricted), Monday.com (communication cadence task if lapsed), email (LP packages routed through Matt Mathison only, never direct)
**HITL Required:** Every LP communication requires Dr. Lewis review then Matt Mathison signature; aggregate fund-level view release requires Matt Mathison explicit request; any IRR/MOIC restatement requires Dr. Lewis + entity CEO + Matt Mathison approval before revised package is issued

## Test Cases

- **Golden path:** Single LP with clean capital call and distribution history in Covercy — MOIC and IRR compute correctly, classification header present on all pages, package routes to Matt with signature block, cadence shows current status, no flags triggered
- **Edge case:** LP has capital called but has never received a distribution — MOIC displays as 0.0x and IRR displays as negative or N/A with an explanatory note; the report must not suppress or soften these figures, as Matt needs truth to manage LP expectations
- **Adversarial:** A query for LP_A inadvertently includes LP_B data in the Covercy pull due to a filter error — the isolation guard must detect the cross-LP data, reject the package generation, log the attempted cross-LP exposure, and alert Dr. Lewis before any report is assembled or transmitted

## Audit Log

Every LP dashboard generation event logs: LP_ID accessed, report period, Covercy data snapshot timestamp, MOIC and IRR values at time of generation, Dr. Lewis review timestamp, Matt Mathison approval timestamp and method, transmission channel and recipient confirmation. Logs are classified Tier 1 Restricted and retained for 10 years under MBL LP records policy, stored in SharePoint under HIVE Partners / Compliance / LP Audit Logs with access restricted to Dr. Lewis and Matt Mathison.

## Deprecation

This skill is deprecated upon HIVE Partners fund wind-down and full LP capital return, upon LP buyout of all positions, or upon migration to a dedicated LP portal that natively enforces per-LP data isolation and Matt's approval workflow. Deprecation requires Matt Mathison sign-off, a minimum 90-day parallel-run period with the successor system verified by Dr. Lewis, and confirmation that all historical LP records are preserved in the successor system with equivalent access controls.

---

MBL CONTEXT:
- MBL Partners = private equity holding firm; Matt Mathison = Managing Partner (final authority)
- Dr. John Lewis = Principal Systems Engineer & Director of AI Strategy
- HITL chain: Dr. Lewis → entity CEO → Matt Mathison
- HIVE Partners = oil & gas; Uinta Basin UT; LP returns; Covercy (ops system); WTI $58/bbl for 2+ consecutive weeks → PAUSE new acquisitions; BBL/day production metric; key metric is BOE (barrel of oil equivalent)
- THRIVE = Truth, Hustle, Respect, Integrity, Value, Enjoy
