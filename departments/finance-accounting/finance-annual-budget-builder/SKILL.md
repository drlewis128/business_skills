---
name: finance-annual-budget-builder
description: "Build the annual financial budget for MBL Partners portfolio entities. Use when the user says 'annual budget', 'budget for next year', 'build the budget', 'create the budget', 'financial plan', 'annual financial plan', 'next year budget', 'budget planning', 'budget process', 'budget build', 'budget template', 'how much should we budget', 'budget for the year', 'revenue budget', 'expense budget', 'headcount budget', 'operating budget', 'annual operating plan', 'AOP', 'annual plan', 'plan for next year', 'budget submission', 'budget draft', 'budget review', 'budget approval', 'entity budget', 'portfolio budget', 'Allevio budget', 'Column6 budget', 'HIVE budget', 'MBL budget', 'budget assumptions', 'budget inputs', 'budget model', or 'bottom-up budget'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--year <2027|2028>] [--action <draft|review|finalize|submit>] [--format <summary|detail>]"
---

# Finance Annual Budget Builder

Build the annual financial budget for MBL Partners portfolio entities — producing entity-level bottom-up revenue and expense budgets that align to the GTM strategy, are grounded in historical performance and forward pipeline data, and are approved by entity CEOs and Matt Mathison before the fiscal year begins. A budget is the financial expression of strategy; if the strategy is credible, the budget is credible.

## When to Use
- Q4 budget process (October-November for next fiscal year)
- New entity: building the first annual budget
- Mid-year: building a revised budget if reforecast diverges significantly from original plan
- Matt Mathison quarterly portfolio review: budget vs. actual tracking

## Annual Budget Framework

```
BUDGET PROCESS TIMELINE (Q4, for following fiscal year):
  October 1: Dr. Lewis distributes budget templates to entity CEOs
  October 15: Entity CEO returns revenue assumptions (new clients; retention; expansion; pricing)
  October 22: Dr. Lewis builds bottom-up revenue model from GHL pipeline + CS renewal data
  October 31: Dr. Lewis builds full expense model (headcount; marketing; COGS; G&A; tech)
  November 7: Draft budget delivered to entity CEO; 48-hour review
  November 14: Entity CEO + Dr. Lewis budget review call (60 min)
  November 21: Revised draft; Dr. Lewis + Matt Mathison review (30 min)
  December 1: Final budget approved by Matt Mathison
  December 15: Budget loaded into QuickBooks for January 1 tracking
  
REVENUE BUDGET METHODOLOGY (BOTTOM-UP):
  Starting point: ending ARR (existing clients × ACV at year-end)
  New revenue: pipeline → close rate by stage → expected new ARR
    Allevio: Stage 4+ pipeline × ≥35% historical close rate = expected new employer adds
    Column6: confirmed IO backlog + expected net new agencies (pipeline-based)
    HIVE: BOE production × forward WTI price (3 scenarios: bear/base/bull)
  Churn risk: historical GRR × existing ARR = churn deduction
  Expansion: historical NRR patterns × existing ARR = expansion add
  Monthly distribution: account for enrollment timing, IO delivery lags, production curves
  
EXPENSE BUDGET METHODOLOGY:
  COGS: driven by revenue volume (clinical costs scale with Allevio enrollment; media COGS scales with Column6 IO)
  Headcount: entity CEO provides planned hires with timing; Dr. Lewis loads into model
  Sales & Marketing: tied to pipeline targets (finance-demand-gen-ops → budget input)
  Technology: current tools + planned additions (finance-tech-stack-manager)
  G&A: baseline + planned increases
  Contingency: 5% expense buffer (Dr. Lewis standard; not disclosed separately to entity CEO)
  
BUDGET VALIDATION CHECKS:
  Revenue growth rate: reasonable vs. historical performance and pipeline? (flag if >100% YoY without evidence)
  Gross margin: consistent with entity business model? (Allevio ≥40%; Column6 ≥35%)
  EBITDA trajectory: if entity plan shows continued losses, is cash runway sufficient?
  Cash: year-end cash balance positive? (if not, capital plan required)
  HIVE WTI assumption: what WTI price is assumed? ($58 trigger scenario modeled separately)
  
BUDGET APPROVAL AUTHORITY:
  Entity budget: entity CEO proposes → Dr. Lewis reviews → Matt Mathison approves
  Portfolio budget: Dr. Lewis consolidates → Matt Mathison approves
  Material budget change mid-year: entity CEO + Dr. Lewis → Matt Mathison if >$50K impact
  
ALLEVIO HIPAA NOTE:
  Revenue budget uses aggregate enrollment counts and PMPM rates — no individual member data
  Clinical COGS budget is aggregate (total clinical delivery cost) — no per-member cost modeling in budget
```

## Output Format

```markdown
# [Entity] Annual Budget — [Year]
**Status:** [Draft / Final] | **Approved by:** [Entity CEO / Matt Mathison] | **Date:** [Date]

---

## Revenue Budget

| Month | Enrolled Employers | PMPM | Revenue | YoY Growth |
|-------|------------------|------|---------|-----------|
| January | | | $X | |
| ... | | | | |
| **Full Year** | | | **$X** | **+X%** |

*Assumptions: [Starting ARR: $X; Expected new employers: N; Expected churn: N; PMPM: $X]*

---

## Expense Budget

| Category | Q1 | Q2 | Q3 | Q4 | Full Year |
|---------|----|----|----|----|----------|
| COGS | $X | | | | $X |
| Sales & Marketing | | | | | |
| G&A | | | | | |
| Technology | | | | | |
| **Total Expenses** | | | | | **$X** |

---

## EBITDA Bridge

| | Full Year |
|--|---------|
| Revenue | $X |
| (-) COGS | $X |
| Gross Profit | $X |
| (-) OpEx | $X |
| **EBITDA** | **$X** |
| Cash (year-end) | $X |

---

## Budget Assumptions
[Key assumptions: WTI (HIVE); new employer adds; PMPM; hire dates; churn rate]
```

## Output Contract
- The revenue budget must be grounded in pipeline data, not aspiration — Dr. Lewis builds the Allevio revenue budget by starting from the GHL pipeline (Stage 4+ deals) and applying historical close rates by stage, then modeling the resulting new ARR against a timing curve (how fast do new employers enroll?); an entity CEO who says "we'll sign 40 new employers next year" when the current pipeline supports 18 is not building a budget — they're building a fantasy; Dr. Lewis does not load fantasy into the budget because the budget is what Matt Mathison uses to hold the entity CEO accountable; if the pipeline doesn't support 40, the budget shows 18-22 (pipeline-supported) and the strategy conversation is about what changes to grow the pipeline to 40-capacity
- Expense budgets should include every planned hire with timing — the most common budget error is modeling revenue that requires 2 new AEs without budgeting the AE compensation until Q3; if the budget is built with the AE hire in Q1 and the revenue doesn't start until Q2 (because of ramp time), the Q1 EBITDA will look worse than the annual summary; Dr. Lewis builds the budget with monthly granularity precisely so that ramp periods, seasonal patterns, and hire timing are visible before the year starts
- HITL required: revenue assumptions → entity CEO provides; Dr. Lewis validates vs. pipeline; draft budget → entity CEO 48-hour review; entity CEO + Dr. Lewis budget call → 60 min; Matt Mathison budget review → 30 min; Matt Mathison final approval by December 1; budget in QuickBooks by December 15; material mid-year budget change >$50K → Matt Mathison; HIVE WTI assumption → Dr. Lewis sets bear/base/bull; Allevio HIPAA aggregate budget

## System Dependencies
- **Reads from:** GoHighLevel (pipeline data → revenue model inputs); QuickBooks (historical P&L → trend data; COGS ratios); Covercy (HIVE historical production → forward production model); revops-gtm-kpi-tracker (KPI targets → budget constraint inputs); entity CEO headcount and strategic plan inputs
- **Writes to:** Annual budget (SharePoint → [Entity] → Finance → Budget → [Year]); QuickBooks budget entries (after Matt Mathison approval); finance-portfolio-dashboard (budget figures for monthly tracking); portfolio budget summary for Matt Mathison; entity CEO budget acknowledgment records
- **HITL Required:** Revenue assumptions → entity CEO; draft → entity CEO 48hr; budget call → entity CEO + Dr. Lewis; Matt Mathison review → 30 min; Matt Mathison final approval; QuickBooks load → after final approval; >$50K mid-year change → Matt Mathison; HIVE WTI assumption → Dr. Lewis sets

## Test Cases
1. **Golden path:** Allevio 2027 budget build. October 15: entity CEO provides assumptions (30 new employers in 2027; PMPM $44; GRR 93%; 5% headcount expansion in existing employers). Dr. Lewis validates vs. GHL Stage 4+ pipeline: 22 deals with plausible close timing → adjusts to 22-26 new employers (conservative). Revenue model: $1.62M (starting ARR $840K + new ARR $612K [24 new × $25.5K avg ACV] - churn $98K [GRR 93%] + expansion $62K). COGS: 58% of revenue (clinical delivery + AdvancedMD). Gross profit: 42%. OpEx: $620K (headcount + marketing + G&A). EBITDA: $60K (first profitable year — key milestone). Cash year-end: $280K. Entity CEO reviews; one change (Q1 hire moved to Q3); revised draft approved. Matt Mathison approves November 30. Loaded to QuickBooks December 10.
2. **Edge case:** Entity CEO wants to budget 60% revenue growth but GHL pipeline only supports 32% growth → Dr. Lewis: "I've built two versions of the revenue model: pipeline-supported (32% growth; 22-26 new employers based on current Stage 4+ pipeline and historical close rates) and CEO-target (60% growth; 40+ new employers). For the 60% version to be credible, I need to see where the additional 18+ employers come from: is there a new channel being launched? A new territory being opened? A marketing investment that will produce the incremental pipeline? If yes, the budget can include the higher number — but we also need to budget the incremental investment that drives it, not just the revenue upside. If there's no specific plan to generate the additional pipeline, I'll submit the pipeline-supported version to Matt Mathison and note the CEO's target as a stretch scenario."
3. **Adversarial:** Entity CEO submits the budget late (December 5 instead of November 7 return deadline) and wants it finalized by December 8 → Dr. Lewis: "The timeline compression from December 5 to December 8 means 3 business days to build, review, revise, and get Matt Mathison approval. That's not enough time to produce a budget that Matt Mathison can rely on. Here's what I need to deliver a quality budget: 3 days to build (December 5-8); your 48-hour review (December 8-10); Dr. Lewis + entity CEO call (December 11); Matt Mathison review (December 14). We can have final approval by December 15 and budget in QuickBooks by December 20 — 5 days after the original target but before January 1. The alternative — rushing a 3-day process into 3 days including review and approval — produces a budget full of errors that we'll spend Q1 explaining. I recommend we proceed on the revised timeline."

## Audit Log
Annual budget documents (permanent). Entity CEO budget submission records. Dr. Lewis validation records (pipeline-supported revenue model). Budget call records (entity CEO + Dr. Lewis). Matt Mathison review and approval records. QuickBooks loading confirmation. Mid-year budget change records. HIVE WTI assumption documentation. Allevio aggregate budget confirmation.

## Deprecation
Budget process timeline reviewed annually. Revenue methodology reviewed when pipeline data quality improves or entity model changes. Expense budget structure reviewed when entity cost structure changes. HIVE WTI scenario assumptions reviewed when energy market conditions change. Contingency buffer reviewed annually. Approval authority reviewed when entity leadership changes.
