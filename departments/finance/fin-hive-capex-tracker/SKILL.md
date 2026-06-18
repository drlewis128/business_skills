---
name: fin-hive-capex-tracker
description: "Track HIVE Partners capital expenditures and well development investment. Use when the user says 'HIVE capex', 'HIVE capital expenditure', 'well development', 'well investment', 'new well', 'drill a well', 'Uinta Basin development', 'HIVE capital', 'HIVE capital spending', 'HIVE investment', 'acreage acquisition', 'mineral rights acquisition', 'lease acquisition', 'HIVE lease', 'production investment', 'oil and gas capex', 'development cost', 'finding cost', 'cost per BOE', 'lifting cost', 'LOE', 'lease operating expense', 'WTI trigger', 'capex trigger', 'capex pause', 'WTI threshold', 'development decision', 'HIVE development plan', 'HIVE budget capex', 'HIVE infrastructure', 'production improvement', 'well workover', 'HIVE ROI', or 'HIVE capital decision'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <review|approve|track|report|pause>] [--focus <wti-trigger|active-projects|roi|budget-vs-actual>] [--project <all|specific>]"
---

# Fin HIVE CapEx Tracker

Track HIVE Partners capital expenditures and well development investment — ensuring that every capital commitment in the Uinta Basin is evaluated against the WTI price trigger, authorized through the correct approval pathway, tracked against budget, and measured for ROI. HIVE's capital strategy is fundamentally different from Allevio's (operational capex) or Column6's (technology/tools capex): well development and acreage acquisition decisions in oil and gas are large, long-duration commitments with returns that are directly tied to commodity prices. The capex trigger rule ($58 WTI) is the primary financial control that prevents HIVE from deploying capital into well development during a low-price environment.

## When to Use
- Monthly: update active capex project tracking
- WTI price crosses the $58 trigger threshold (in either direction)
- A new well development or acreage acquisition is proposed
- Quarterly: full capex review for Matt Mathison and the board
- Matt Mathison asks about HIVE's capital deployment or development pipeline

## HIVE CapEx Framework

```
WTI PRICE TRIGGER ($58/bbl):

  ABOVE $58 WTI: Capital deployment authorized
    New well development: proceed per approved development plan
    Acreage acquisition: evaluate and pursue at target economics
    Infrastructure upgrades: proceed per budget
    
  BELOW $58 WTI (for 2+ consecutive weeks):
    New well development: PAUSE — no new wells without Matt Mathison explicit override
    Existing wells in progress: complete (sunk cost; completion is the right decision)
    Acreage acquisition: pause — revisit at $62+ WTI
    Maintenance capex: continue (required to maintain existing production)
    
  WHY $58:
    $58 WTI is the approximate break-even price for new well development at HIVE's cost structure
    (lifting cost + royalty fraction + severance tax + development cost amortization)
    Below $58: new well development generates negative returns
    Above $58: positive returns that improve as WTI increases
    
  TRIGGER ENFORCEMENT:
    Dr. Lewis monitors WTI weekly (EIA published price)
    If WTI falls below $58 for 2 consecutive weeks → Matt Mathison notification + capex pause
    If WTI recovers above $60 for 2 consecutive weeks → Matt Mathison notification + resume discussion
    Matt Mathison makes the final call to pause or resume; Dr. Lewis provides the data

CAPEX CATEGORIES:

  1. WELL DEVELOPMENT (highest capital intensity):
     New well drilling: $[X]-$[X] per well (varies by depth and formation)
     Well completion: $[X] per well (after drilling)
     Tie-in and facilities: $[X] per well (gathering line; separator; tank)
     Total all-in cost per well: $[X]-$[X]
     Expected production (first year): [N] BOE/month
     Payback period: [N] months at $[X] WTI
     ROI at $65 WTI: [%]
     
  2. ACREAGE ACQUISITION:
     Lease acquisition cost: [$/acre] × [acres]
     Lease bonus payment: one-time; typically due within 10-30 days of signing
     Annual delay rentals: per-acre annual payment during development period
     Economics: only acquire if the acreage can be developed at current WTI economics
     
  3. PRODUCTION OPTIMIZATION (workover; re-completion):
     Workover: repairing or re-stimulating an existing well
     Cost: $[X]-$[X] (much lower than new well)
     Economics: cost / (incremental production × price × royalty fraction) = payback period
     
  4. MAINTENANCE CAPEX:
     Equipment replacement; infrastructure maintenance
     Non-discretionary: required to maintain existing production
     Approval threshold: same as exec-capital-allocation
     Continue even when WTI trigger is breached

CAPEX PROJECT TRACKING:

  For each active project:
    Project ID: HIVE-CAP-[NNN]
    Description: [Well development / Acreage acquisition / Workover / Maintenance]
    Approval: Dr. Lewis / Entity CEO / Matt Mathison (per threshold)
    Budget: $[X]
    Committed to date: $[X]
    Incurred to date: $[X]
    Remaining budget: $[X]
    Expected completion: [Quarter]
    WTI at approval: $[X]
    Current WTI: $[X] (budget economics still valid?)
    Expected first production: [Date] (for new wells)
    ROI tracking: begin 12 months after first production

CAPEX ROI ANALYSIS:

  For each completed well development:
    All-in cost: $[X]
    Production (first year actual BOE): [N]
    Revenue (production × WTI × royalty fraction): $[X]
    Operating costs (lease operating expense): $[X]
    Net revenue: $[X]
    Simple payback: all-in cost / net revenue per year = [N] years
    Full ROI: [%] at current WTI; [%] at $65 WTI; [%] at $50 WTI
```

## Output Format

```markdown
# HIVE CapEx Tracker — [Month/Quarter Year]
**Prepared by:** Dr. Lewis | **WTI status:** $[X] — [Above/Below] $58 trigger

---

## WTI Trigger Status

| Metric | Value | Status |
|--------|-------|--------|
| Current WTI | $[X]/bbl | 🟢 Proceed / 🔴 Pause |
| 4-week average WTI | $[X]/bbl | — |
| Trigger threshold | $58/bbl | — |
| Trigger status | [Active / Not triggered] | |
| Last trigger event | [Date if applicable] | |

---

## Active CapEx Projects

| ID | Description | Budget | Committed | Incurred | Remaining | Expected completion | WTI at approval |
|----|------------|--------|-----------|---------|----------|-------------------|----------------|
| HIVE-CAP-001 | [Description] | $[X] | $[X] | $[X] | $[X] | Q[N] [Year] | $[X] |

**Total active CapEx budget:** $[X]

---

## YTD Deployment vs. Plan

| | Plan (YTD) | Actual (YTD) | Variance | Trigger impact |
|-|-----------|-------------|---------|--------------|
| Well development | $[X] | $[X] | $[+/-X] | [N/A / Paused since [Date]] |
| Maintenance capex | $[X] | $[X] | $[+/-X] | N/A |
| Acreage | $[X] | $[X] | $[+/-X] | [N/A / Paused] |

---

## Completed Projects — ROI Tracking

| Project | Cost | First production | Annual net revenue | Payback | ROI status |
|---------|------|----------------|-------------------|---------|-----------|
| [Well A] | $[X] | [Date] | $[X] | [N] years | [On track/Below target] |
```

## Output Contract
- WTI trigger is binary and non-negotiable — the $58 threshold is not a "suggestion to consider pausing"; it is a financial control that pauses new well development when the economics don't support it; Dr. Lewis enforces the trigger by notifying Matt Mathison immediately when WTI drops below $58 for 2 consecutive weeks; Matt Mathison makes the final decision, but the default is pause unless Matt explicitly overrides; an override requires a documented justification (e.g., a strategic acreage opportunity that would be lost if HIVE waits for WTI recovery)
- Sunk-cost discipline for in-progress wells — the trigger rule applies to NEW decisions, not to wells already in progress; a well that is 60% complete when WTI drops to $55 should be completed (the completion cost is spent; stopping wastes the completion investment and abandons the production upside); Dr. Lewis distinguishes between new commitments (trigger applies) and in-progress work (complete regardless of WTI)
- ROI tracking closes the capital loop — HIVE's capital deployment decisions need to be validated by actual production results; a well that was modeled to pay back in 3 years at $65 WTI needs to be tracked against those expectations; Dr. Lewis tracks ROI for every completed well development for the first 3 years of production; wells that are underperforming vs. the investment model are flagged to Matt Mathison with a root cause analysis (lower production? Lower WTI? Higher LOE?); this feedback improves the forward-looking capex model
- HITL required: well development approvals per exec-capital-allocation thresholds ($10K-$50K = Dr. Lewis + HIVE CEO; $50K+ = Matt notification; >$250K = Matt explicit approval — most well development is >$250K); WTI trigger events are same-day Matt phone calls; acreage acquisitions (new leases) require Matt Mathison explicit approval; ROI underperformance (>20% below model at 18 months) is a Matt Mathison notification; annual capex plan for HIVE approved by Matt Mathison as part of the annual budget process

## System Dependencies
- **Reads from:** WTI price data (EIA; Bloomberg; commodity data service); HIVE development plan (approved capital projects; SharePoint); fin-hive-royalty-accounting (production data to validate well ROI); exec-capital-allocation (approval thresholds); fin-budget-builder (annual HIVE capex budget)
- **Writes to:** CapEx project tracker (SharePoint → Finance → HIVE → CapEx → [YYYY]); QuickBooks HIVE (capital expenditure entries; asset additions); fin-financial-model (capex cash flows; production additions); exec-capital-allocation (HIVE capital deployment updates); exec-board-reporting (HIVE capex status in quarterly board package)
- **HITL Required:** All well development approvals per capital thresholds; WTI trigger → Matt phone call; acreage acquisitions → Matt explicit approval; annual capex plan → Matt approval; ROI underperformance → Matt notification; trigger override requires Matt explicit approval and documented justification

## Test Cases
1. **Golden path:** Q3 capex review; WTI 4-week average: $63.50 (above $58 trigger; no pause); 2 active projects: HIVE-CAP-007 (well development; $340K budget; $285K committed; $220K incurred; expected completion Q4); HIVE-CAP-008 (wellhead maintenance; $28K; complete; on budget). YTD vs. plan: well development $220K vs. $280K plan (-$60K; construction delay on CAP-007; on budget; Q3 delay → Q4 completion). ROI tracking: CAP-005 (completed 18 months ago; $290K cost; 12-month production 4,200 BOE; net revenue $185K at avg $65 WTI → on track for 2.1-year payback vs. 2.4-year model). All in order. Summary to Matt: "HIVE CapEx is tracking behind plan ($60K behind YTD) due to construction delay on CAP-007 — completing in Q4 as expected. ROI on CAP-005 is slightly ahead of model. No trigger concerns."
2. **Edge case:** WTI drops to $55 for 3 consecutive weeks in October → Dr. Lewis: "WTI has been below $58 for 3 consecutive weeks — the capex trigger has activated. Calling Matt now. HIVE capex trigger status: WTI $55 average (3 weeks); below $58 threshold for >2 weeks. Per protocol: new well development is paused. In-progress: CAP-007 ($115K remaining to complete) is being completed — sunk cost; stopping now wastes the $220K already invested and abandons the production. I've confirmed with the HIVE CEO that no new development commitments have been made in the past 10 days. Maintenance capex ($15K scheduled for Q4) continues. Net capital pause: approximately $240K of planned Q4 development deferred until WTI recovers above $60. Matt, do you want me to alert the HIVE CEO directly, or will you call?" Matt decides.
3. **Adversarial:** HIVE CEO wants to proceed with new acreage acquisition despite WTI being at $54 → Dr. Lewis: "I can't approve this without Matt Mathison's explicit override of the trigger. Here's the specific financial issue: the proposed acreage at [location] requires a $175K lease bonus plus $45K/year in delay rentals. The break-even production economics for that acreage require WTI ≥$62 (it's a deeper formation with higher development cost). At $54 WTI, we'd be acquiring acreage we can't economically develop until WTI is $8 higher than today. There's a strategic argument for locking in the acreage before a competitor does — I understand that. But that's a call Matt has to make with full awareness of the economics. Let me prepare a 1-page financial summary of the acquisition decision (economics at $54, $62, $70 WTI; strategic rationale) for Matt's review. If Matt approves with that context, I'll process the acquisition."

## Audit Log
All capex project records retained permanently. WTI trigger event records retained (date triggered; Matt notification; decision). Well development approval records. Acreage acquisition records. ROI tracking records (planned vs. actual; updates at 6; 12; 18; 24 months). Trigger override records (Matt Mathison authorization + rationale).

## Deprecation
Retire when HIVE has a dedicated operations or financial manager who tracks capex — with Dr. Lewis providing the portfolio-level capex oversight and Matt Mathison retaining approval authority for well development and acreage acquisitions above $50K.
