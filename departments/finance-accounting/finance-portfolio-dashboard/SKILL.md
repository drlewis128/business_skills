---
name: finance-portfolio-dashboard
description: "Build the monthly MBL Partners portfolio financial dashboard for Matt Mathison. Use when the user says 'portfolio dashboard', 'portfolio financials', 'portfolio financial summary', 'portfolio financial report', 'monthly portfolio report', 'MBL portfolio update', 'portfolio performance', 'portfolio financial overview', 'portfolio financial dashboard', 'Matt Mathison financial update', 'portfolio P&L', 'portfolio revenue summary', 'how are the entities doing financially', 'portfolio financial health', 'consolidated financials', 'portfolio financial snapshot', 'combined entity financials', 'month-end portfolio report', 'portfolio financial brief', 'financial summary across entities', 'entity financial summary', 'how much revenue did the portfolio generate', 'portfolio financial performance', 'MBL financial overview', or 'portfolio financial review'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--month <YYYY-MM>] [--audience <matt-mathison|dr-lewis|board>] [--action <build|update|present>]"
---

# Finance Portfolio Dashboard

Build the monthly MBL Partners portfolio financial dashboard — consolidating entity-level revenue, expenses, cash position, and key financial indicators across Allevio, HIVE Partners, and Column6 into a single BLUF-first summary for Matt Mathison. This is the financial equivalent of the RevOps revenue dashboard: one report, all entities, decision-relevant.

## When to Use
- Monthly close (by the 10th of the following month)
- Quarterly board preparation
- Matt Mathison ad-hoc portfolio financial briefing
- Dr. Lewis portfolio financial review

## Portfolio Dashboard Framework

```
DASHBOARD STRUCTURE (BLUF-FIRST):

  SECTION 1 — PORTFOLIO BLUF (top of report):
    One paragraph: how did the portfolio perform financially this month?
    Revenue vs. plan across all entities: Green / Yellow / Red
    Cash position summary: is the portfolio well-capitalized?
    Top financial risk for Matt Mathison's attention
    
  SECTION 2 — ENTITY REVENUE SUMMARY:
  
    ALLEVIO:
      Revenue: PMPM × enrolled employers (aggregate; from AdvancedMD billing summary)
      Revenue vs. plan: actual / plan / variance ($) / variance (%)
      MoM trend: +/- vs. prior month
      HIPAA: all Allevio revenue data is aggregate employer-level; no individual member data
      Data source: AdvancedMD billing summary → QuickBooks invoice reconciliation
      
    COLUMN6 (Siprocal):
      Revenue: IO value recognized in period (signed IOs, campaign delivery milestones)
      Revenue vs. plan: actual / plan / variance
      MoM trend
      Data source: QuickBooks revenue recognition from IO tracking
      
    HIVE PARTNERS:
      Revenue: BOE production × realized WTI price + royalty income (from Covercy)
      Revenue vs. plan: actual / plan / variance
      WTI realized price this month vs. $58 trigger
      MoM trend
      Data source: Covercy production and revenue reports → QuickBooks
      
    NORTH VISTA / MBL CORPORATE:
      Revenue: management fees or intercompany (as applicable)
      Corporate expenses: G&A; tech stack; professional services
      
  SECTION 3 — CONSOLIDATED FINANCIALS:
    Combined portfolio revenue (sum of entities)
    Combined operating expenses (entity-level G&A; excludes COGS/PMPM)
    Portfolio EBITDA (if calculable; depends on cost allocation)
    Cash position by entity (QuickBooks; Covercy for HIVE)
    
  SECTION 4 — KEY FINANCIAL RISKS AND DECISIONS:
    Top 1-3 financial items requiring Matt Mathison's attention or decision
    Example: "HIVE realized WTI this month was $61/bbl — above $58 trigger but narrowing; no acquisition pause yet; recommend monitoring closely"
    Example: "Allevio accounts receivable aging shows 1 employer >60 days ($38K); CS lead following up"
    
REPORT CADENCE:
  Monthly: delivered by 10th of following month (data close by 5th; Dr. Lewis review 5th-10th)
  Quarterly: expanded version with YTD performance, full-quarter trends, and next-quarter outlook
  Ad-hoc: Matt Mathison may request a snapshot at any time; Dr. Lewis delivers within 24 hours
  
DATA SOURCES:
  QuickBooks: all entity P&L; cash balances; AR/AP aging
  Covercy: HIVE production revenue; royalty income; LP distribution records
  AdvancedMD (Allevio): billing summary (aggregate; CS lead provides) → QuickBooks
  GoHighLevel: pipeline data (not in financial dashboard; referenced for context only)
```

## Output Format

```markdown
# MBL Portfolio Financial Dashboard — [Month Year]
**Prepared by:** Dr. Lewis | **Delivered to:** Matt Mathison | **Date:** [Date]

---

## BLUF
[2-3 sentences: portfolio performance; biggest win; biggest risk for Matt's attention]

---

## Entity Revenue Summary

| Entity | Plan | Actual | Variance $ | Variance % | MoM | Status |
|--------|------|--------|-----------|-----------|-----|--------|
| Allevio | $X | $X | +/- $X | +/- X% | ↑/↓ X% | 🟢/🟡/🔴 |
| Column6 | $X | $X | | | | |
| HIVE Partners | $X | $X | | | | |
| **Portfolio Total** | **$X** | **$X** | | | | |

*HIVE: realized WTI [month] = $X/bbl (trigger: $58 — [Above/Below/At Risk])*
*Allevio: aggregate employer billing only — HIPAA compliant*

---

## Cash Position

| Entity | Cash Balance | Runway | Notes |
|--------|-------------|--------|-------|
| Allevio | $X | ~X months at current burn | |
| Column6 | $X | | |
| HIVE Partners | $X | | Covercy balance + operating account |

---

## Key Financial Risks / Decisions for Matt Mathison
1. [Risk/Decision — context — recommended action]
2.
3.
```

## Output Contract
- The portfolio dashboard exists to give Matt Mathison one place to understand portfolio financial health — it is not a detailed financial statement; it is a management summary that leads with the bottom line and surfaces only the items that require his attention or decision; Dr. Lewis filters and synthesizes before delivery; Matt Mathison should be able to read the dashboard in 5 minutes and know whether the portfolio is performing, where the risks are, and what decisions he needs to make; if the dashboard requires 20 minutes to extract the key information, Dr. Lewis has failed in his synthesis role
- WTI trigger monitoring is a standing agenda item in the HIVE section — every monthly dashboard includes HIVE realized WTI for the month and its relationship to the $58 trigger; if realized WTI is above $62, the note is brief; if realized WTI is $58-62, the note escalates to "monitoring closely" with a forward price outlook; if realized WTI drops below $58 for the second consecutive month, the dashboard triggers the acquisition pause decision and Dr. Lewis contacts Matt Mathison directly before the dashboard is delivered
- HITL required: Allevio financial data → aggregate only; no individual member data in dashboard; any financial risk >$50K → Dr. Lewis flags before dashboard delivery; WTI trigger → Dr. Lewis + Matt Mathison before formal pause; any entity cash runway <90 days → Dr. Lewis + Matt Mathison immediate; portfolio dashboard → Matt Mathison receives and acknowledges monthly; quarterly expanded version → Matt Mathison reviews with Dr. Lewis (60 min)

## System Dependencies
- **Reads from:** QuickBooks (all entity P&L; cash; AR/AP); Covercy (HIVE production revenue; royalty; LP distributions); AdvancedMD billing summary (Allevio; CS lead provides aggregate); GoHighLevel (pipeline context — not included in dashboard directly); entity CEO financial close data
- **Writes to:** Portfolio financial dashboard (SharePoint → MBL → Finance → Portfolio Dashboard → [YYYY-MM]); Matt Mathison monthly delivery (email or SharePoint link); Dr. Lewis portfolio financial tracking model; quarterly board package inputs
- **HITL Required:** Allevio aggregate confirmation → Dr. Lewis; financial risk >$50K → Dr. Lewis pre-delivery flag; WTI trigger → Dr. Lewis + Matt Mathison; cash runway <90 days → immediate escalation; monthly delivery → Matt Mathison acknowledges; quarterly review → Matt Mathison + Dr. Lewis

## Test Cases
1. **Golden path:** June 2026 portfolio dashboard. Allevio: $94K revenue; plan $90K; +$4K (+4.4%) ✅ Green. Column6: $142K; plan $150K; -$8K (-5.3%) ⚠️ Yellow (1 IO delayed). HIVE: $38K royalty + $52K production; plan $78K; +$12K (+15.4%) ✅ Green (WTI realized $64/bbl — above $58 trigger ✅). Portfolio total: $326K vs. $318K plan (+$8K / +2.5%) Green. Cash: all entities >6 months runway. Key risk: "Column6 IO pipeline for Q3 shows coverage at 2.8× (target 3×); recommend entity CEO review in next weekly call." Delivered to Matt Mathison by June 10.
2. **Edge case:** QuickBooks data for Allevio is 3 days late because the billing close was delayed → Dr. Lewis: "Monthly dashboard will be delivered by June 12 (not June 10) due to Allevio billing close delay. All other entity data is ready. I will note the delay reason in the dashboard. Going forward, I'll add a June 4 reminder to Allevio CS lead for billing data delivery to preserve the June 10 dashboard delivery date. Matt Mathison informed of 2-day delay."
3. **Adversarial:** Matt Mathison asks why the dashboard doesn't include individual Allevio employer names and their revenue contributions → Dr. Lewis: "The Allevio section of the portfolio dashboard is aggregate by design — HIPAA governance requires that any document I produce for Matt Mathison about Allevio uses aggregate employer-level metrics only, not individual employer-identified data. The aggregate shows you total revenue, total enrolled employers, and average PMPM; that's sufficient for portfolio-level decision-making. If you need employer-level detail for a specific business decision (e.g., evaluating a large-employer risk), I can brief you in a separate conversation and we handle that data appropriately. The dashboard stays aggregate."

## Audit Log
Monthly portfolio dashboards (permanent; SharePoint archive). Matt Mathison delivery confirmation records. Allevio aggregate data confirmation (no PHI). WTI trigger status records. Cash runway alert records. Quarterly board package delivery records. Entity financial close data receipt records.

## Deprecation
Dashboard structure reviewed when entity portfolio composition changes. Allevio section reviewed when AdvancedMD billing integration matures. HIVE section reviewed when Covercy integration or WTI trigger changes. Column6 section reviewed when revenue model changes. Delivery cadence reviewed when Matt Mathison's reporting preferences change.
