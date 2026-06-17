---
name: strategy-kpi-design
description: "Design the KPI framework for a company or department — selecting, defining, and structuring the right metrics. Use when the user says 'KPI design', 'design KPIs', 'what metrics should we track', 'KPI framework', 'metric selection', 'pick the right KPIs', 'build a KPI system', 'metrics framework', 'what should we measure', 'measurement system', 'KPI architecture', 'define our metrics', 'performance metrics', 'build the dashboard', 'which KPIs matter', or 'metric framework'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <company|department|initiative>] [--audience <CEO|Matt|LP|board>]"
---

# KPI Design

Design the KPI framework for MBL portfolio companies — selecting the metrics that genuinely measure what matters, defining them precisely, and structuring them at the right level for each audience. At PE portfolio scale, the KPI design problem is usually not that companies measure too little — it's that they measure too much and track too many lagging indicators that tell them how the past was but not what to do next. The right KPI system is small (5-7 company-level KPIs), precise (unambiguous definitions), current (weekly or monthly, not just quarterly), and actionable (every KPI links to someone who can change it).

## When to Use
- New portfolio company — what do we measure?
- A company has too many KPIs and no one uses them
- Matt Mathison asks "what metrics are we tracking for [Company]?"
- OKR design — what are the KRs that measure the Objectives?
- Board prep — what KPIs go in the board pre-read?
- Annual planning — are we measuring the right things this year?

## KPI Design Framework

```
KPI selection principles:
  
  1. Fewer is more: 5-7 company-level KPIs maximum
     Every KPI added creates a data collection burden and dilutes focus
     If a metric doesn't change a CEO decision, it's reporting, not a KPI
     
  2. Lead vs. lag indicators:
     Lagging: Revenue, EBITDA, profit — measure what already happened
     Leading: Referrals added, pipeline value, production drilled — predict what will happen
     Balance: 3-4 lagging (financial health) + 2-3 leading (predictive of future performance)
     
  3. North star metric first (from strategy-north-star-builder):
     The north star metric is KPI #1
     All other KPIs should be either drivers of the north star or financial health indicators
     
  4. Operationally actionable:
     Can the CEO or a department head take a specific action to improve this metric?
     If the answer is "it depends on market conditions outside our control," it's a market condition, not a KPI
     WTI price for HIVE: market condition; LOE per BOE: operational KPI
     
  5. Precisely defined:
     Revenue: Gross revenue? Net revenue? Recognized? Collected?
     EBITDA: Before owner salary addbacks? Including stock comp?
     Patient volume: Unique patients? Patient visits? Established vs. new?
     Definitions must be written down and agreed before tracking begins
     
  6. Right cadence for each metric:
     Daily: Customer-facing metrics where daily swings matter (ad impressions, patient appointments)
     Weekly: Sales pipeline, appointment capacity
     Monthly: Financial performance, EBITDA, billing lag
     Quarterly: Strategic KPIs (provider count, payer mix, OKR progress)
     
MBL portfolio entity KPI examples:

  Allevio (Healthcare MSO):
    North star: Patients under managed care (unique active patients)
    Financial: Revenue ($); EBITDA margin (%); billing lag (days DSO)
    Operational: Provider count (FTE); appointment fill rate (%); referrals per provider per month
    Compliance: OIG LEIE status (✅/⚠️); HIPAA training completion (%)
    
  HIVE Partners (Oil & Gas):
    North star: BOE produced (daily production BBL/day equivalent)
    Financial: Revenue ($); LOE ($/BOE); EBITDA ($)
    Operational: Wells on production (count); average daily rate per well (BBL/day); WTI benchmark ($/bbl)
    Compliance: UT DOGM permit status (all current ✅); environmental incidents (count — target 0)
    
  Column6/Siprocal (CTV/Media):
    North star: Impression match rate (% of available impressions matched to buyers)
    Financial: Gross revenue ($); net revenue ($); CPM ($/thousand impressions)
    Operational: Active advertisers (count); top advertiser concentration (%); platform uptime (%)
```

## Output Format

```markdown
# KPI Framework — [Company Name]
**Date:** [Date] | **Designed by:** Dr. Lewis | **Approved by:** CEO + Matt Mathison
**Audience:** [CEO weekly / Matt Mathison monthly / Board quarterly]

---

## KPI Architecture

| # | KPI | Type | Definition | Frequency | Owner | Target | Alert |
|---|-----|------|-----------|----------|-------|--------|-------|
| 1 | **[North star metric]** | Lead | [Precise definition] | Monthly | CEO | [X] | <[X] |
| 2 | Revenue | Lag | [Gross revenue recognized; per QuickBooks] | Monthly | Controller | $[X] | <$[X] |
| 3 | EBITDA margin | Lag | [EBITDA / Revenue; defined addbacks: none / list] | Monthly | Controller | [X]% | <[X]% |
| 4 | [Billing lag — DSO] | Lag/Op | [Days from service to payment collected; AR/Daily Revenue] | Monthly | COO | [N] days | >[N] days |
| 5 | [Provider count] | Lead | [Active FTE providers as of month end; NP = 0.5 FTE] | Monthly | CEO | [N] | <[N] |
| 6 | [Payer concentration] | Risk | [Revenue from largest single payer / Total revenue] | Quarterly | Controller | <[X]% | >[X]% |
| 7 | [OIG LEIE status] | Compliance | [All clinical staff current: ✅ / Any flag: ⚠️] | Annual (Nov) | Dr. Lewis | All clear | Any flag |

**Color code:** 🟢 At/above target | 🟡 Within 10% of target | 🔴 Alert threshold breached

---

## KPI Definitions (Precise)

**[North star metric — Patients under managed care]:**
Definition: Count of unique patients who have had at least 1 visit with an Allevio-affiliated physician in the trailing 12 months. Excludes: walk-in patients of non-affiliated physicians; administrative records without visits. Source: AdvancedMD patient records export, run on last business day of each month. Owner: Practice Manager. Confirmed by: Controller (cross-reference to billing records).

**[Revenue]:**
Definition: Gross revenue as recognized in QuickBooks; physician visit reimbursements + ancillary services; excludes patient refunds (which net against AR). Source: QuickBooks P&L, first 5 business days of following month. Owner: Controller.

[Repeat for each KPI]

---

## Audience Views

### CEO Weekly View (5 KPIs, operational focus)
| KPI | This week | Last week | Trend |
|-----|----------|----------|-------|
| Appointments scheduled | | | |
| Appointment fill rate | | | |
| [Referrals received] | | | |
| Open provider capacity | | | |
| [Entity-specific leading indicator] | | | |

### Matt Mathison Monthly View (company-level financial + thesis)
[Full 7-KPI table with month vs. plan vs. YTD]

### Board Quarterly View (financial + strategic + compliance)
[Compact version with QTD and annual targets]

---

## Matt Mathison KPI Brief

[Company] KPI framework: [N] company-level KPIs defined; CEO weekly view + Matt Mathison monthly view + board quarterly view. North star metric: [Name] — current [X]; target [X]. All KPIs defined with source, owner, and alert threshold. First dashboard delivery: [Date]. Review cadence: [Monthly to Matt Mathison by 5th of following month].
```

## Output Contract
- Definitions before data — a KPI that different people calculate differently is not a KPI, it's a disagreement; Dr. Lewis writes a precise definition for every KPI before any data is collected; the definition specifies: what is counted, what is excluded, which system is the source of truth, who calculates it, and when it is reported; a KPI without a written definition cannot be tracked consistently across months or across team members
- Five to seven company-level KPIs, maximum — adding KPIs beyond 7 at the company level creates a reporting burden without adding insight; if there are 15 metrics being tracked, the CEO can't tell which 3 to focus on; Dr. Lewis challenges every KPI addition with: "what decision does this enable that the existing KPIs don't?" — if the answer is "I'm not sure," the metric is not a company-level KPI; it may belong in a department-level dashboard or an operational log
- Leading indicators require deliberate selection — most naturally-occurring business metrics are lagging (revenue, EBITDA, patient count as of last month); leading indicators require deliberate design — what are the inputs that will show up in the lagging indicators 60-90 days from now?; for Allevio: new patient referrals received this week (leads to appointments → visits → revenue); for HIVE: rig activity this week (leads to production volumes in 60 days); Dr. Lewis includes at least 2 leading indicators in every KPI framework so the CEO and Matt Mathison can see problems before they show up in the financials
- HITL required: Dr. Lewis designs the framework; CEO reviews and must personally own at least 3 KPIs (if the CEO doesn't own key KPIs, they won't drive them); Matt Mathison reviews and approves company-level KPI framework; all KPI definitions reviewed and agreed before tracking begins; any change to KPI definitions requires CEO + Dr. Lewis approval (prevents metric drift)

## System Dependencies
- **Reads from:** North star metric (strategy-north-star-builder), investment thesis (strategy-investment-thesis), OKR framework (strategy-company-okr-builder), financial system (QuickBooks), operational systems (AdvancedMD for Allevio, Covercy for HIVE, entity-specific for Column6)
- **Writes to:** KPI framework document (SharePoint/Strategy/<Company>/KPIs/); monthly KPI dashboard (strategy-kpi-dashboard); board pre-read inputs (strategy-board-prep); LP reporting inputs (strategy-lp-reporting)
- **HITL Required:** Dr. Lewis designs; CEO reviews and owns key KPIs; Matt Mathison approves company-level framework; definition changes require CEO + Dr. Lewis approval; any alert threshold breach triggers immediate CEO + Dr. Lewis review and Matt Mathison notification if material

## Test Cases
1. **Golden path:** Design KPI framework for Allevio → Workshop with CEO: what matters most? Revenue (financial health), EBITDA margin (efficiency), billing lag (revenue capture), patients under care (north star/growth), provider count (capacity), payer concentration (risk), OIG LEIE (compliance); 7 KPIs selected; Dr. Lewis writes definitions: patients under care = unique patients with ≥1 visit in trailing 12 months, from AdvancedMD report run on last business day of month, owner: Practice Manager, confirmed by Controller; revenue = gross recognized revenue from QuickBooks P&L, first 5 business days of following month; etc.; CEO approves definitions; Matt Mathison approves framework; controller builds first month's dashboard; delivery to Matt Mathison by 5th of following month
2. **Edge case:** CEO wants to add patient satisfaction scores (CSAT) to the KPI list as #8 → CSAT is valuable but: (1) it's 8 KPIs (over the 7-max guideline), (2) it requires a patient survey infrastructure that Allevio doesn't currently have, (3) CSAT-to-revenue linkage in a small MSO is indirect; Dr. Lewis recommends: CSAT is a worthy metric but belongs in the operations dashboard (not company-level KPIs) until the infrastructure to collect it reliably is in place; add it to the operational measurement wishlist; re-evaluate at Year 2 planning when practice is more mature; CEO agrees; CSAT deferred
3. **Adversarial:** Controller produces a monthly report with 23 metrics and calls it the KPI dashboard → 23 metrics is a data dump, not a KPI dashboard; the CEO cannot look at 23 numbers and know which 3 to focus on; Dr. Lewis reviews the 23 metrics and applies selection criteria: which 5-7 metrics would change a CEO decision if they moved materially? Those are the KPIs; the remaining metrics are useful for operations but should be in a separate operational report; Dr. Lewis restructures the dashboard: 7-KPI executive dashboard + supporting operational detail report; CEO now gets signal from the executive dashboard and can drill into the operational report for root cause

## Audit Log
KPI framework documents retained permanently. KPI definition change records retained (when definitions changed and why). Monthly dashboard delivery records retained. Matt Mathison approval records retained. KPI alert activations and responses retained.

## Deprecation
Retire when portfolio companies have a CFO, VP Finance, or analytics function capable of designing and maintaining KPI frameworks — with Dr. Lewis reviewing the framework for thesis and strategic alignment rather than designing it from scratch.
