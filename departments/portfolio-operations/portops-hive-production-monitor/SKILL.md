---
name: portops-hive-production-monitor
description: "monitor hive production, track oil production BBL per day, hive partners production report, Uinta Basin well performance, daily production alert, production vs budget variance, operational cost per BOE, well downtime tracking, lifting cost analysis, WTI price trigger, production decline curve, workover activity, covercy production data, hive oil and gas operations, production dashboard for Matt, HIVE well level data, monthly production trend, production monitoring oil gas, production anomaly alert, pause acquisitions WTI threshold"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "optional: specific well name, date range, or alert type (e.g., 'WTI gate check', 'downtime report', 'variance summary')"
---

# HIVE Production Monitor

HIVE Partners operates oil and gas assets in the Uinta Basin, Utah, with daily production measured in BBL/day as the primary operational metric. This skill monitors well-level production data, calculates key operational cost metrics, flags material variances, and enforces the WTI price-gate acquisition pause protocol on behalf of Matt Mathison and Dr. John Lewis.

## When to Use

- Daily production reporting or when a significant variance from plan is suspected
- WTI price check to determine whether the acquisition pipeline should be gated (paused)
- A well downtime event has occurred and production impact needs to be quantified
- Monthly operational review package is being assembled for Matt Mathison or the entity CEO

## HIVE Production Monitor Framework

```
PRODUCTION MONITORING SCOPE
  System of record: Covercy (production volumes, well data)
  Basin: Uinta Basin, Utah
  Primary metric: BBL/day per well and aggregate
  Reporting cadence: Daily alert (significant variance only), monthly dashboard
  Responsible parties: Dr. John Lewis (monitor), Entity CEO (operations), Matt Mathison (final authority)

WTI PRICE MONITORING
  Daily WTI spot price tracking (benchmark: NYMEX WTI front-month)
  Threshold: $58.00/BBL
  Gate condition: WTI < $58.00/BBL for 14+ consecutive calendar days
  Gate action: Flag ALL new acquisition LOIs as PAUSED; notify Dr. Lewis → Entity CEO → Matt Mathison
  Override authority: Matt Mathison only (written confirmation required, logged in audit trail)
  Resume condition: WTI >= $58.00/BBL for 5+ consecutive trading days

WELL-LEVEL PRODUCTION DATA
  Fields per well: Well name/ID, BBL/day (gross), BBL/day (net), water cut %, GOR (gas-oil ratio)
  Production decline tracking: Hyperbolic decline curve parameter b, nominal decline rate Di
  Downtime hours (planned vs unplanned), downtime cause code
  Workover activity log: spud date, completion date, production uplift in BBL/day
  Data source: Covercy pull; field operator confirmation for same-day figures

PRODUCTION VS BUDGET VARIANCE
  Monthly actuals vs approved operating plan (BOE basis)
  Variance threshold: >10% unfavorable triggers auto-alert
  Alert chain: Dr. Lewis (immediate) → Entity CEO (same day) → Matt Mathison (weekly summary)
  Root cause categories: downtime, mechanical failure, decline acceleration, curtailment, measurement error
  Carry-forward: chronic variance (3 consecutive months) escalates to Matt for plan revision decision

OPERATIONAL COST METRICS
  Lifting cost per BOE: target set in annual operating plan
  LOE components: labor, chemical, fuel/power, water disposal, compression, repairs
  Lifting cost variance: monthly actuals vs budget tracked as $/BOE delta
  Water disposal cost: $/BBL disposed — material cost driver in Uinta Basin
  Compression cost: tracked separately if gas lift or compression is active

DOWNTIME TRACKING
  Event fields: Well ID, start timestamp, end timestamp, cause code, repair type
  Cause codes: mechanical (pump, rod, tubing), power outage, weather, regulatory, scheduled maintenance
  Production impact: BBL lost = (expected BBL/day rate) x (downtime hours / 24)
  Repair timeline: P50 and P90 return-to-production estimate by cause code
  Chronic downtime threshold: >72 hours/month per well triggers workover evaluation flag

DAILY ALERT PROTOCOL
  Significant variance defined as: aggregate daily production >10% below 7-day rolling average
  OR any single well producing 0 BBL/day without prior scheduled downtime notice
  OR WTI gate condition newly triggered
  Alert format: BLUF summary, impacted wells, BBL impact, estimated duration, recommended action
  Alert chain: Dr. Lewis (immediate) → Entity CEO (within 2 hours) → Matt Mathison (if >3-day impact)

MONTHLY PRODUCTION DASHBOARD TEMPLATE
  Prepared from Covercy data by 5th of following month
  Reviewed by: Dr. Lewis and Entity CEO; Matt Mathison receives executive summary page only
  Dashboard includes: aggregate BBL/day trend chart, well-level table, cost metrics, WTI gate status
```

## Output Format

```markdown
# HIVE Production Report — [Month YYYY]
**Prepared:** [Date] | **Data Source:** Covercy | **Reviewed By:** Dr. John Lewis

## Executive Summary
- Aggregate production: [X] BBL/day avg (Plan: [Y] BBL/day) | Variance: [+/-Z%]
- WTI avg for period: $[XX.XX]/BBL | Gate status: [ACTIVE / CLEAR]
- Unplanned downtime events: [N] | Total BBL lost: [X]
- Lifting cost per BOE: $[X.XX] (Plan: $[Y.YY]) | Variance: [+/-Z%]

## Well-Level Summary
| Well        | BBL/day Gross | BBL/day Net | Downtime Hrs | Status              |
|-------------|---------------|-------------|--------------|---------------------|
| [Well A]    | [X]           | [X]         | [X]          | Online/Down/Workover|

## Variance Analysis
**Production Variance:** [root cause explanation]
**Cost Variance:** [explanation]
**Recommended Actions:**
- [Action 1]
- [Action 2]

## WTI Gate Status
- Current WTI: $[XX.XX]/BBL
- Consecutive days below $58: [N]
- Gate status: [CLEAR — no action required / PAUSED — acquisition halt in effect]
- Matt Mathison notification: [Sent [date] / Not required]

## Alerts Issued This Period
- [Date] | [Alert type] | [Resolution status]
```

## Output Contract

- All production figures are sourced exclusively from Covercy and confirmed with the field operator on the same day before any alert is issued. Unverified figures create operational and investor-facing risk; a false alert consumes Matt Mathison's attention and erodes trust in the monitoring system, so dual-source confirmation is non-negotiable before escalation to the entity CEO or above.
- WTI gate logic is applied with zero discretion at the skill level — the gate triggers automatically at day 14 of sub-$58 pricing and all new LOIs are flagged PAUSED regardless of deal attractiveness. Only Matt Mathison can override, and that override must be documented in writing. This ensures the acquisition pause policy is enforced consistently and creates an auditable record of any exception decisions made during low-price environments.
- Variance alerts follow the defined chain (Dr. Lewis → Entity CEO → Matt Mathison) with escalation only when thresholds are met, preventing alert fatigue. Matt Mathison receives only material escalations — chronic variances, WTI gate events, and multi-day production losses — so his attention is reserved for decisions that require his authority rather than routine operational noise.

## System Dependencies

**Reads from:** Covercy (production volumes, well data), NYMEX WTI price feed or manual input, field operator daily reports, QuickBooks (lifting cost actuals for cost-per-BOE calculation)
**Writes to:** Monday.com (alert action items), weekly Matt Mathison briefing document, monthly production dashboard in SharePoint
**HITL Required:** Dr. Lewis reviews all alerts before escalation to entity CEO; Matt Mathison authorizes any WTI gate override; entity CEO confirms root cause before monthly dashboard is distributed to LPs

## Test Cases

- **Golden path:** Covercy data pulled, aggregate production within 5% of plan, WTI at $65, no downtime events — monthly dashboard generated with green status across all metrics and no alerts issued
- **Edge case:** Single well goes offline at 11 PM; Covercy data not yet updated; field operator report conflicts with system data — skill flags data conflict, holds alert, requests confirmation from field operator before issuing any escalation
- **Adversarial:** WTI drops to $57.80 on day 13 then spikes to $58.50 on day 14 — gate does NOT trigger because the consecutive day count resets; skill correctly logs the near-trigger event and documents the full price path for the audit record

## Audit Log

Every production report, alert, and WTI gate decision is logged with timestamp, data source, reviewer identity, and any escalation actions taken. Logs are retained for 7 years to support LP audit requests, regulatory review by Utah DOGM, and internal due diligence on future asset sales. The audit trail is stored in a designated SharePoint folder under HIVE Partners / Production / Audit Logs, with read access restricted to Dr. Lewis, entity CEO, and Matt Mathison.

## Deprecation

This skill should be deprecated or significantly revised if HIVE Partners exits the Uinta Basin, transitions to a different production accounting system replacing Covercy, or if the WTI acquisition-gate threshold is formally revised by Matt Mathison in the investment policy statement. Any threshold change requires a SKILL.md version bump and written confirmation from Matt Mathison before the new threshold is enforced in the monitoring system.

---

MBL CONTEXT:
- MBL Partners = private equity holding firm; Matt Mathison = Managing Partner (final authority)
- Dr. John Lewis = Principal Systems Engineer & Director of AI Strategy
- HITL chain: Dr. Lewis → entity CEO → Matt Mathison
- HIVE Partners = oil & gas; Uinta Basin UT; LP returns; Covercy (ops system); WTI $58/bbl for 2+ consecutive weeks → PAUSE new acquisitions; BBL/day production metric; key metric is BOE (barrel of oil equivalent)
- THRIVE = Truth, Hustle, Respect, Integrity, Value, Enjoy
