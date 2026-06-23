---
name: finance-reforecast-manager
description: "Manage mid-year financial reforecasting for MBL Partners portfolio entities. Use when the user says 'reforecast', 're-forecast', 'update the forecast', 'revise the budget', 'budget revision', 'revised forecast', 'updated forecast', 'rolling forecast', 'rolling 12-month', 'update the plan', 'plan revision', 'forecast update', 'mid-year forecast', 'mid-year reforecast', 'forecast revision', 'new forecast', 'change the forecast', 'reset the plan', 'plan vs. reality', 'forecast is wrong', 'budget is wrong', 'original plan is outdated', 'business conditions changed', 'plan no longer valid', 'replan', 'forecast refresh', 'forecast cycle', 'updated financial plan', 'revised financial plan', 'when should we reforecast', 'should we reforecast', 'reforecast trigger', or 'budget update'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--trigger <variance|event|quarterly>] [--period <monthly|quarterly|12-month>] [--action <build|review|approve>]"
---

# Finance Reforecast Manager

Manage mid-year financial reforecasting for MBL Partners portfolio entities — triggering reforecasts when plan assumptions are materially wrong, building updated rolling forecasts based on current pipeline and expense commitments, and delivering revised financial expectations to entity CEOs and Matt Mathison. A reforecast is not a failure; it is intellectual honesty about where the business actually is.

## When to Use
- Variance trigger: revenue >15% from plan for 2 consecutive months
- Event trigger: significant client loss, unexpected hire, market disruption
- Quarterly: scheduled rolling 12-month forecast update
- Matt Mathison or entity CEO requests a revised financial picture

## Reforecast Framework

```
REFORECAST TRIGGER CRITERIA:

  AUTOMATIC TRIGGERS (require reforecast within 2 weeks):
    Revenue variance: >15% unfavorable for 2 consecutive months
    Expense overrun: >20% for 2 consecutive months
    Significant client loss: any single client >10% of ARR
    Significant hire: unplanned hire changes annual payroll >$75K
    Market event: WTI drops below $58 for HIVE (acquisition pause + revenue reforecast)
    Matt Mathison request: any time
    
  SCHEDULED REFORECAST:
    Q2 reforecast: May (reflects 4 months of actual; updates H2 and full-year)
    Q3 reforecast: August (reflects 7 months of actual; updates Q4 and full-year)
    Rolling 12-month: updated monthly for entities with significant cash burn
    
REFORECAST METHODOLOGY:

  REVENUE REFORECAST:
    Lock actuals: months with closed data → fixed
    Reforecast remaining months: updated pipeline (current GHL Stage 4+ with revised close rates)
    Updated churn forecast: any new churn signals from CS health scores
    Updated expansion forecast: any confirmed expansions in CS pipeline
    
  EXPENSE REFORECAST:
    Committed expenses: contracts, payroll → fixed
    Discretionary expenses: marketing, travel, events → entity CEO confirms what changes
    New items: any unplanned expenses that change the cost base
    
  REFORECAST OUTPUT:
    Full-year revised forecast (all 12 months; locked months = actuals; open months = revised)
    Variance vs. original plan: by line item; by month
    Variance vs. prior reforecast (if second or third reforecast in the year)
    Key assumptions listed explicitly
    
HIVE-SPECIFIC REFORECAST:
  WTI trigger event: if WTI drops below $58 for month 2 → reforecast HIVE revenue
  Reforecast shows: revenue at $58 (trigger), $52 (bear), and $47 (extreme bear)
  LOE forecast: unchanged unless production declines significantly
  Acquisition pause: budget line for planned acquisitions → moved to contingency or removed
  LP notification: Matt Mathison decides if LP communication is warranted
  
ALLEVIO-SPECIFIC REFORECAST:
  Revenue reforecast: enrolled employers × updated PMPM (if pricing changed mid-year)
  COGS reforecast: updated utilization trends (aggregate; HIPAA compliant — no member-level data)
  Clinical cost reforecast uses aggregate cost trends, not individual member analysis
  
COMMUNICATION STANDARD:
  Reforecast triggered by event: Dr. Lewis + entity CEO briefed within 48 hours
  Draft reforecast: 5 business days
  Entity CEO review: 48 hours
  Matt Mathison notification: if full-year revenue reforecast change >15% → Matt Mathison
  Matt Mathison update call: 30 minutes; BLUF + key changes + revised outlook
```

## Output Format

```markdown
# Reforecast — [Entity] — [Trigger / Q2/Q3 Scheduled] — [Date]
**Prepared by:** Dr. Lewis | **Trigger:** [Variance / Event / Scheduled]

---

## What Changed

| | Original Plan | Prior Forecast | New Forecast | Change vs. Plan |
|--|-------------|--------------|-------------|----------------|
| Full-Year Revenue | $X | $X | $X | -X% |
| Full-Year EBITDA | $X | $X | $X | -$X |
| Year-End Cash | $X | $X | $X | |

**Reason for reforecast:** [1-2 sentences: what changed and why]

---

## Updated Monthly Forecast (remaining months)

| Month | Original Plan | New Forecast | Variance | Locked? |
|-------|-------------|-------------|---------|---------|
| July | $X | $X | -$X | No |
| August | $X | $X | | |
| ... | | | | |

---

## Key Assumptions Changed
1. [Assumption — original → updated — rationale]
2.

---

## Actions / Decisions Required
1. [Action — owner — urgency]
```

## Output Contract
- Reforecasting is financial courage — the most common mistake is knowing the plan is wrong but not updating it because "we'll make it up in H2" or "it's too early to change the plan"; Dr. Lewis reforecasts when the trigger criteria are met, not when it's comfortable; a reforecast that shows the entity will miss its annual revenue target by $180K is information that Matt Mathison needs to have in May, not in December; the purpose of a reforecast is to give decision-makers accurate information while there's still time to make decisions (reduce costs; accelerate deals; bridge capital) rather than discovering the miss at year-end when no decisions can help
- A reforecast is not an invitation to reset all accountability — when an entity CEO argues that a reforecast means the original targets no longer apply, Dr. Lewis clarifies: the reforecast is the current financial reality; the original plan is the original target; we track both; if the reforecast projects $1.4M revenue vs. the original $1.65M plan, Matt Mathison and the entity CEO both know there's a $250K gap vs. original expectations; that gap is not erased by the reforecast — it is acknowledged; decisions are made from the reforecast; performance is judged against the original plan + the explanation for why the original plan changed
- HITL required: trigger event (significant client loss; >15% revenue miss) → Dr. Lewis + entity CEO 48-hour brief; draft reforecast → entity CEO review; Matt Mathison notification if full-year change >15%; Matt Mathison update call; HIVE WTI trigger → automatic reforecast + Matt Mathison notification; Allevio clinical COGS reforecast → aggregate only; any reforecast requiring capital decision (insufficient runway) → Matt Mathison immediate

## System Dependencies
- **Reads from:** QuickBooks (locked actuals); GoHighLevel (updated pipeline for revenue reforecast); finance-entity-pl-reporter (actuals by month); finance-annual-budget-builder (original plan); finance-cash-flow-manager (updated cash runway from new forecast); Covercy (HIVE updated production data + WTI forward prices)
- **Writes to:** Reforecast documents (SharePoint → [Entity] → Finance → Reforecast → [YYYY-QN]); QuickBooks reforecast load (entity CEO approves); Matt Mathison reforecast notification; entity CEO reforecast records; portfolio reforecast dashboard update
- **HITL Required:** Trigger → entity CEO + Dr. Lewis 48hr; draft → entity CEO review; full-year change >15% → Matt Mathison; Matt Mathison call; HIVE WTI trigger → Matt Mathison notification; capital decision from reforecast → Matt Mathison immediate; Allevio COGS → aggregate only

## Test Cases
1. **Golden path:** Allevio Q2 2027 scheduled reforecast (May). Actuals locked: Jan-Apr ($382K). Remaining 8 months reforecast. Pipeline review: GHL shows Stage 4+ pipeline at $820K (higher than budget assumption of $640K → 3 more employers in discovery). Churn: 1 employer churned in April ($26K ACV); CS health scores show 2 at-risk employers. Updated full-year revenue: $1.58M vs. original plan $1.62M (-$40K; -2.5%). Updated EBITDA: $42K vs. $60K plan. Key change: April churn + 1 additional at-risk employer assumption. Change vs. plan is <15% — no mandatory Matt Mathison notification, but Dr. Lewis includes reforecast note in June portfolio dashboard. Entity CEO reviews; no objections. Updated forecast loaded to QuickBooks.
2. **Edge case:** HIVE realizes WTI drops to $57.50/bbl in September — first month below $58 trigger → Dr. Lewis: "HIVE realized WTI hit $57.50/bbl in September — this is the first month below the $58 acquisition pause trigger. Per protocol: (1) no new HIVE acquisitions until WTI is above $58 for 2 consecutive months (pause, not kill); (2) I'm building the HIVE revenue reforecast immediately with three scenarios: base ($55-58 for H2), recovery ($62 by Q4), bear ($48-52 sustained); (3) I'm notifying Matt Mathison today — this is a trigger event, not a variance to slide past; (4) LOE and G&A expense base is unchanged. I'll have the reforecast to you and Matt Mathison within 72 hours. HIVE cash position: $142K — sufficient for 8+ months of LOE at current burn; no liquidity concern."
3. **Adversarial:** Entity CEO resists a reforecast because "it makes us look bad" → Dr. Lewis: "I understand the optics concern. Let me reframe: Matt Mathison is an investor. The job of an investor is to make decisions with accurate information. If we operate against a plan that we know is wrong, Matt Mathison makes decisions (about capital allocation, entity support, portfolio priorities) based on inaccurate information. That's not good for him or for the entity. A reforecast says: 'here's what we know now; here's what changed; here's the revised picture.' That is professionalism, not failure. The alternative — presenting the original plan as if it's still valid when we know it isn't — is the thing that actually damages credibility. I'll present the reforecast to Matt Mathison with context: here's what changed and here's what we're doing about it."

## Audit Log
Reforecast documents (permanent). Trigger event records. Entity CEO review records. Matt Mathison notification records and call records. QuickBooks reforecast load confirmation. HIVE WTI trigger reforecast records. Allevio aggregate COGS reforecast records. Original plan vs. reforecast tracking (all reforecasts in a year archived together for accountability comparison).

## Deprecation
Trigger criteria reviewed annually. Reforecast methodology reviewed when business models mature. HIVE WTI trigger reviewed if trigger level changes. Scheduled reforecast dates reviewed when budget process timeline changes. Matt Mathison notification threshold reviewed at his request.
