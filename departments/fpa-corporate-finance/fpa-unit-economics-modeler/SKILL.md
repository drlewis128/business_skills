---
name: fpa-unit-economics-modeler
description: "Model and analyze unit economics — LTV, CAC, payback, PMPM margin, per-BOE economics, and per-campaign profitability. Use when the user says 'unit economics', 'LTV', 'lifetime value', 'CAC', 'customer acquisition cost', 'payback period', 'LTV to CAC', 'LTV/CAC ratio', 'per unit economics', 'per-customer profitability', 'cost per customer', 'revenue per customer', 'member economics', 'PMPM economics', 'per-BOE economics', 'campaign economics', 'contribution margin', 'gross margin per unit', 'profitability per customer', or 'economics of the business'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--unit <member|boe|campaign|customer>] [--period <YYYY or trailing-N-months>] [--action <calculate|benchmark|present>]"
---

# Unit Economics Modeler

Model and analyze unit economics for MBL portfolio companies — calculating the per-unit profitability, customer acquisition costs, lifetime value, and payback periods that reveal whether the underlying business model is healthy and scalable. Top-line revenue and aggregate EBITDA tell you how the business is doing today; unit economics tell you whether the business should grow and whether it will become more or less profitable at scale. Dr. Lewis calculates unit economics quarterly for each portfolio company and presents them to Matt Mathison alongside the financial results.

## When to Use
- Quarterly unit economics review (included in board package or separately)
- Before a growth investment — does the unit economics justify additional customer acquisition spend?
- M&A evaluation — what are the target company's unit economics?
- Exit preparation — PE buyers will scrutinize unit economics; ensure they are understood and presentable
- A portfolio company's overall profitability is declining — are unit economics deteriorating or is it a mix shift?

## Unit Economics Framework by Entity

```
ALLEVIO — MSO / Healthcare (PMPM model):

  Revenue per member per month (PMPM):
    Formula: Total monthly revenue ÷ Average member count
    Target: $85 PMPM (current contracted rate); improving to $87-90 with renewals
    
  Cost per member per month (CPMM) — direct costs only:
    Formula: Monthly COGS ÷ Average member count
    Components: Clinician compensation allocated per member; Marshall Medical Billing fees (% of collections)
    Target: CPMM should be <65% of PMPM (35%+ gross margin per member)
    
  Gross margin per member per month:
    Formula: PMPM − CPMM
    Dollar amount: How much gross profit does each member contribute per month?
    Trend: Is the per-member gross margin expanding or compressing? Why?
    
  Customer Acquisition Cost (CAC) — per employer group:
    Components: Sales time (Dr. Lewis + CEO time at $X/hour); legal fees (contract drafting); onboarding costs
    Number of employer groups acquired in the period
    CAC per employer group = Total acquisition costs ÷ Groups acquired
    Note: Allevio does not have traditional marketing spend — CAC is primarily relationship-based
    
  Gross Lifetime Value (LTV) per employer group:
    Formula: (Average member count per group × PMPM gross margin) × Expected group lifetime (months)
    Average group lifetime: Assume 36-48 months (pending history building; use 36 months conservatively)
    LTV/CAC ratio: Target >3× for a healthy B2B model
    Payback period: CAC ÷ Monthly gross profit per group = months to recover the acquisition cost
    
  Churn analysis:
    Member churn rate = Members lost ÷ Beginning member count (monthly)
    Employer group churn = Groups lost ÷ Total groups (annual)
    Gross LTV assumes churn-adjusted lifetime; re-run if churn exceeds 15%/year at the group level

HIVE PARTNERS — Oil & Gas (BOE model):

  Revenue per BOE:
    Formula: Total oil revenue ÷ Total BOE produced
    Compare to WTI: What's the realized price vs. WTI? (Differential analysis)
    Target: Differential within $4-6/bbl of WTI for Uinta Basin crude
    
  LOE (Lease Operating Expense) per BOE:
    Formula: Total LOE ÷ Total BOE produced
    Industry benchmark: $15-25/bbl for Uinta Basin
    Trend: LOE per BOE should stay flat or decline as production optimizes
    
  Operating netback per BOE:
    Formula: Revenue per BOE − LOE per BOE − Production taxes per BOE
    This is the cash margin per BOE — the core profitability metric for oil & gas
    Target: Netback >$30/bbl at $67/bbl WTI
    
  WTI breakeven:
    Formula: LOE per BOE + Production taxes per BOE + G&A allocation per BOE + Debt service per BOE
    The WTI price at which HIVE breaks even (cash flow neutral)
    Stress protocol trigger: WTI <$48/bbl (already established in HIVE stress protocol)
    
  F&D (Finding & Development) cost per BOE [if new wells are drilled]:
    Formula: CapEx for new well ÷ Estimated recoverable BOE from that well
    This measures capital efficiency — how much do you spend to acquire each BOE?
    Industry benchmark: F&D <$15/BOE for a good well program

COLUMN6 / SIPROCAL — CTV / Programmatic (Campaign model):

  Revenue per campaign:
    Formula: Total campaign revenue ÷ Number of campaigns run
    Segment: CTV campaigns (higher CPM, typically $25-45/CPM) vs. digital (lower CPM)
    Trend: Is the average campaign value increasing (upsell) or decreasing (price pressure)?
    
  Direct cost per campaign:
    Components: Media buy cost; platform/ad server fees; data costs; trafficking costs
    Formula: Total direct costs ÷ Number of campaigns
    Contribution margin per campaign = Revenue per campaign − Direct cost per campaign
    Target: Contribution margin >45% of campaign revenue
    
  Gross profit per campaign:
    Formula: Contribution margin per campaign (above)
    This is the "take rate" — the economic value Column6 captures from each campaign
    
  Customer acquisition context:
    Column6 sales are agency-intermediated (4A's agencies) and direct advertiser
    CAC is primarily sales team time + relationship development; not performance marketing spend
    LTV per advertiser relationship: Average campaigns/year × Average campaign value × Gross margin %
    
  CPM benchmarking:
    CTV CPM benchmarks: $18-45/CPM (premium content commands higher rates)
    Programmatic CPM benchmarks: $4-12/CPM
    Column6's rate card vs. market: Confirm pricing is competitive but not commoditized
    
CONSOLIDATED UNIT ECONOMICS — Portfolio Level:
  Weighted average gross margin per dollar of revenue: (Sum of entity gross profit) ÷ (Sum of entity revenue)
  Revenue per portfolio employee: Total portfolio revenue ÷ Total portfolio headcount
  EBITDA per portfolio dollar of revenue: Portfolio EBITDA ÷ Portfolio revenue
  These roll-up metrics appear in the board package and LP reports
```

## Output Format

```markdown
# Unit Economics Analysis — [Entity] [Period]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## [Allevio] Member Economics

| Metric | Current Quarter | Prior Quarter | Budget | Trend |
|--------|----------------|---------------|--------|-------|
| Avg member count | [N] | [N] | [N] | ↑/↓/→ |
| PMPM (revenue/member) | $[X] | $[X] | $[X] | ↑/↓/→ |
| CPMM (cost/member) | $[X] | $[X] | $[X] | ↑/↓/→ |
| Gross margin/member/mo | $[X] | $[X] | $[X] | ↑/↓/→ |
| Gross margin % | [X]% | [X]% | [X]% | ↑/↓/→ |
| Member churn (monthly) | [X]% | [X]% | <[X]% | ↑/↓/→ |

**LTV per employer group:** $[X]K (assumes [N]-month avg lifetime; [N] avg members/group; $[X] gross margin/member/mo)
**CAC per employer group:** $[X]K | **LTV/CAC:** [X.X]× | **Payback:** [N] months

---

## [HIVE] BOE Economics

| Metric | Current Quarter | Prior Quarter | Industry Benchmark | Trend |
|--------|----------------|---------------|--------------------|-------|
| Avg production (BOE/day) | [N] | [N] | — | ↑/↓/→ |
| Realized price/BOE | $[X] | $[X] | WTI − $4-6 | ↑/↓/→ |
| LOE per BOE | $[X] | $[X] | $15-25 | ↑/↓/→ |
| Operating netback/BOE | $[X] | $[X] | >$30 at $67 WTI | ↑/↓/→ |
| WTI breakeven | $[X]/bbl | $[X]/bbl | — | ↑/↓/→ |

---

## [Column6] Campaign Economics

| Metric | Current Quarter | Prior Quarter | Target | Trend |
|--------|----------------|---------------|--------|-------|
| Campaign count | [N] | [N] | [N] | ↑/↓/→ |
| Revenue per campaign | $[X]K | $[X]K | $[X]K | ↑/↓/→ |
| Direct cost/campaign | $[X]K | $[X]K | — | ↑/↓/→ |
| Contribution margin/campaign | $[X]K | $[X]K | >45% | ↑/↓/→ |
| Avg CPM (CTV) | $[X] | $[X] | $18-45 | ↑/↓/→ |

---

## Unit Economics Summary for Matt Mathison

**Allevio:** Member economics [healthy / compressing / concern] — PMPM $[X] vs. $[X] last quarter; gross margin per member $[X]/mo ([X]%). [Key observation.]
**HIVE:** LOE [on track / rising] at $[X]/BOE; breakeven WTI $[X]/bbl; current WTI $[X]/bbl ([X]% cushion). [Key observation.]
**Column6:** Contribution margin [X]% per campaign; average campaign value $[X]K. [Key observation.]
**Portfolio:** Weighted gross margin [X]%; revenue per employee $[X]K (annualized). [Portfolio-level trend.]
```

## Output Contract
- Trends matter more than any single quarter — a PMPM of $85 is irrelevant without knowing whether it was $87 last quarter (compressing) or $83 last quarter (improving); Dr. Lewis always presents the prior period comparison and the direction of trend; a deteriorating trend in unit economics (even if the absolute numbers look acceptable) is a leading indicator of future profitability problems; Dr. Lewis flags any unit economics metric that has been declining for two consecutive quarters, regardless of whether the absolute number is still within the target range
- LTV/CAC must exceed 3× for any customer acquisition investment to be justified — this is the minimum threshold for a sustainable B2B model; if Allevio's LTV/CAC drops below 3× due to churn or CAC inflation, Dr. Lewis does not recommend increasing the sales/outreach investment until the LTV/CAC is understood and a path to improvement is identified; the 3× threshold is not a hard rule — context matters — but it is the default frame for evaluating whether growth spending makes economic sense
- Unit economics inform portfolio reinvestment decisions — when Matt Mathison makes capital allocation decisions (which portfolio company gets the next growth investment?), unit economics are a key input; a company with expanding unit economics (improving gross margin per member, declining LOE/BOE, rising contribution margin per campaign) justifies reinvestment; a company with compressing unit economics needs operational improvement before more capital is deployed; Dr. Lewis frames unit economics in this capital allocation context, not just as a reporting exercise
- HITL required: Dr. Lewis calculates unit economics quarterly; CEO reviews the entity-level unit economics; Matt Mathison receives the portfolio summary (the last table in the output format) quarterly; any material deterioration in unit economics (LTV/CAC <3×; LOE/BOE rising >20% in 2 consecutive quarters; contribution margin <40%) is flagged to Matt Mathison immediately with a root cause explanation and recovery plan

## System Dependencies
- **Reads from:** QuickBooks P&L actuals (for COGS allocation); Allevio member roster and group data; HIVE production data (Covercy, BOE/day and LOE); Column6 campaign data (CRM, campaign count and revenue by type); headcount data (for CAC calculation); market data (WTI for breakeven comparison); industry benchmarks (LOE/BOE, CPM ranges)
- **Writes to:** Unit economics dashboard (SharePoint/Finance/<Company>/UnitEconomics/[Quarter].xlsx); board financial package (unit economics section); LP quarterly report (unit economics summary); investment thesis support (for M&A); exit preparation data room
- **HITL Required:** Dr. Lewis calculates; CEO reviews entity-level; Matt Mathison receives quarterly portfolio summary; material deterioration flags sent immediately to Matt Mathison with root cause

## Test Cases
1. **Golden path:** Q2 Allevio unit economics → Avg members: 1,155; PMPM: $85.50; CPMM: $55.10; gross margin per member/mo: $30.40 (35.6%); member churn: 0.8%/month (annualized 9.6%); LTV per employer group: 20 members × $30.40/mo × 40 months = $24,320; CAC per group: $3,500 (Dr. Lewis time, CEO time, legal); LTV/CAC: 6.9×; payback: 5.8 months; summary: "Allevio unit economics are healthy — LTV/CAC 6.9×, payback under 6 months, gross margin per member stable at $30. The only watch item is the 0.8% monthly member churn — if this accelerates past 1.5%, LTV shrinks materially. No action needed this quarter."
2. **Edge case:** HIVE LOE per BOE is rising — from $18/BOE to $23/BOE in 2 quarters → Dr. Lewis investigates: is this a real cost increase or a production decline (same costs, fewer BOE)? Production is flat at 950 BOE/day; LOE dollar total has increased $12K/month; root cause: an operator maintenance contract was renewed at a higher rate in March; Dr. Lewis projects forward: at $23/BOE LOE and $67/bbl WTI, breakeven rises from $42/bbl to $47/bbl (now only $1/bbl above the stress protocol trigger of $48/bbl); Dr. Lewis flags to Matt Mathison: "HIVE's LOE has risen from $18 to $23/BOE due to a maintenance contract renewal. This narrows our WTI cushion to $1/bbl above the stress protocol trigger ($48/bbl). Recommend: (1) negotiate the maintenance contract at renewal; (2) confirm the WTI stress protocol is active monitoring. Full action required before the next contract renewal date of [Month]."
3. **Adversarial:** The Column6 CEO says "we don't have campaign-level economics — just total revenue and total direct costs" → Dr. Lewis builds what he can from available data: total revenue ÷ total campaign count = average revenue per campaign; total direct costs ÷ total campaign count = average direct cost per campaign; gross contribution = the difference; Dr. Lewis flags the data gap: "We can calculate blended campaign economics from QuickBooks, but we can't see CTV vs. digital breakout without campaign-level data from the ad server. I recommend we set up a quarterly campaign-level P&L report from the ad server — this would let us identify which campaign types are most profitable and direct sales accordingly. For now, blended contribution margin is [X]%." Dr. Lewis works with the data available and documents the gap

## Audit Log
All unit economics calculations retained by quarter. Trend data maintained (8+ quarters for board presentation). LTV/CAC calculations and assumptions retained. CAC calculation methodology documented. Any deterioration flags and management responses retained. Exit data room unit economics schedules retained.

## Deprecation
Retire when each portfolio company has a CFO or FP&A analyst who tracks unit economics — with Dr. Lewis reviewing quarterly before board presentation and Matt Mathison receiving the portfolio summary.
