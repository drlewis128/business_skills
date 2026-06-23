---
name: finance-portfolio-valuation
description: "Prepare quarterly portfolio company valuations for MBL Partners. Use when the user says 'portfolio valuation', 'company valuation', 'portfolio company value', 'how much is Allevio worth', 'how much is Column6 worth', 'how much is HIVE worth', 'quarterly valuation', 'NAV', 'net asset value', 'MBL NAV', 'portfolio NAV', 'fair market value', 'portfolio fair value', 'mark to market', 'portfolio mark', 'portfolio carrying value', 'book value portfolio', 'unrealized value', 'unrealized gain', 'unrealized loss', 'fair value investment', 'IPEV', 'IPEV guidelines', 'portfolio company FMV', 'PE portfolio valuation', 'private company valuation', 'LP valuation', 'LP mark', 'how do we value the portfolio', 'portfolio value for LP', 'portfolio value for reporting', 'portfolio update Matt Mathison', 'portfolio company worth update', 'total portfolio value', or 'investment valuation update'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|all>] [--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--action <value|update|report>]"
---

# Finance Portfolio Valuation

Prepare quarterly portfolio company valuations for MBL Partners — estimating fair market value for Allevio, Column6, HIVE, and MBL's other portfolio interests using PE-standard valuation approaches (IPEV guidelines; comparable multiples; DCF; HIVE PV10). Portfolio valuations are used for LP reporting, Matt Mathison strategic decision-making, and management awareness of unrealized value creation or destruction.

## When to Use
- Quarterly: update portfolio company valuations for LP reporting
- Strategic decision: is now the right time to exit a portfolio company?
- LP communication: total portfolio NAV update
- Matt Mathison portfolio review: what is MBL's total value?

## Portfolio Valuation Framework

```
VALUATION APPROACH BY ENTITY:

  ALLEVIO (MSO/Healthcare):
    Primary: comparable company multiples (EV/Revenue; EV/EBITDA for profitable MSOs)
    Secondary: DCF on next 3-year projections
    Key drivers: MRR growth rate; GRR; EBITDA margin; enrolled employer count
    Multiples reference: healthcare MSO sector (8-12× EBITDA; 1.5-3.0× revenue for growing MSOs)
    Valuation inflection: when Allevio achieves ≥$2M ARR with GRR ≥91%, valuation rises significantly
    
  COLUMN6 (CTV/Digital Advertising):
    Primary: comparable transaction multiples (EV/EBITDA; EV/revenue for CTV/media companies)
    Secondary: DCF on IO revenue pipeline
    Key drivers: IO revenue growth; gross margin ≥35%; repeat IO rate ≥60%
    Multiples reference: digital media M&A (6-10× EBITDA; 1.0-2.5× revenue)
    
  HIVE (Oil & Gas Working Interest):
    Primary: PV10 (present value of proved reserves discounted at 10%)
      Production data from Covercy × WTI forward strip price × NRI% = reserve cash flows
    Secondary: EV per flowing BOE (comparable O&G transactions; Uinta Basin context)
    Key driver: production volume; WTI price at valuation date; reserve life
    WTI sensitivity: PV10 fluctuates with WTI; Dr. Lewis shows PV10 at current WTI + ±$10/bbl scenarios
    
  MBL PARTNERS (Holding Company):
    Sum-of-parts: Allevio fair value + Column6 fair value + HIVE fair value + cash/other assets
    Minus: MBL-level debt or obligations (if any)
    = Total MBL NAV
    
VALUATION CADENCE:
  Quarterly: entity-level valuation update (Q1: March 31; Q2: June 30; Q3: September 30; Q4: December 31)
  Matt Mathison: reviews quarterly portfolio valuation before LP reporting
  LPs: receive portfolio valuation in quarterly LP report (finance-lp-reporting-ops)
  
IPEV GUIDELINES (PE VALUATION STANDARDS):
  MBL follows IPEV (International Private Equity and Venture Capital Valuation) guidelines
  Key principle: calibrate to transaction price at entry; adjust for performance and market changes
  Entry price is the anchor; subsequent valuations move based on company performance + market multiples
  Conservative bias: don't mark up to optimistic assumptions; mark down on clear evidence of impairment
  
CHANGE IN VALUATION REPORTING:
  Unrealized gain: valuation increase since last period (positive; reflects value creation)
  Unrealized loss: valuation decrease (requires explanation; Matt Mathison review)
  Realized: upon exit (sale); then actual cash return vs. cost basis
```

## Output Format

```markdown
# MBL Portfolio Valuation — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Reviewed by:** Matt Mathison | **Date:** [Date] | **Confidential**

---

## Portfolio Company Valuations

| Entity | Method | Key Metric | This Quarter EV | Prior Quarter EV | Change |
|--------|--------|-----------|----------------|-----------------|--------|
| Allevio | EV/Revenue | MRR $X | $X | $X | +/-$X (X%) |
| Column6 | EV/EBITDA | TTM EBITDA $X | $X | $X | +/-$X |
| HIVE | PV10 | [BOE at WTI $X] | $X | $X | +/-$X |

---

## MBL Total Portfolio NAV

| Line | Value |
|------|-------|
| Allevio (at equity value) | $X |
| Column6 (at equity value) | $X |
| HIVE (at equity value) | $X |
| Cash / Other Assets | $X |
| Less: MBL obligations | ($X) |
| **Total MBL NAV** | **$X** |

---

## Key Drivers of Change This Quarter
[Allevio: enrolled employer growth +2; GRR 93% → positive multiple expansion]
[HIVE: WTI decline -$4/bbl → PV10 decrease of $X]
```

## Output Contract
- Portfolio valuation is LP communication infrastructure — LPs invested in MBL to get returns; they need to see, quarterly, what their investment is currently worth and whether it is growing; the portfolio valuation is the primary substantive content in LP reporting; Dr. Lewis prepares it with conservative assumptions (not aspirational ones) and explicit notation of what drove any significant change from the prior quarter; a $400K decline in Allevio's valuation because of GRR compression gets explained; a $600K increase in HIVE's PV10 because of WTI recovery gets explained; LPs who understand what drove the valuation changes trust the process; LPs who receive unexplained valuation swings lose confidence
- Matt Mathison reviews portfolio valuations before LPs see them — portfolio valuation is executive-level information that Matt Mathison must review and understand before it reaches LPs; Dr. Lewis delivers the preliminary valuation to Matt Mathison at least 5 business days before LP reporting; Matt Mathison can challenge assumptions, ask for scenario runs, or direct Dr. Lewis to add context; the final valuation is Matt Mathison's decision, not Dr. Lewis's unilateral estimate; Dr. Lewis is the analyst; Matt Mathison is the portfolio manager
- HITL required: quarterly valuation → Matt Mathison reviews before LP distribution; valuation decrease >15% → Matt Mathison + entity CEO immediate review; new valuation methodology → Matt Mathison approves before applying; exit decision inputs → Matt Mathison + Dr. Lewis + legal; HIVE WTI sensitivity → Matt Mathison sees full range; Allevio valuation inflection (achieves ARR milestone) → Matt Mathison briefed; LP communication → finance-lp-reporting-ops; Matt Mathison approves total NAV before reporting

## System Dependencies
- **Reads from:** QuickBooks (entity financials for current-period performance); Covercy (HIVE production; royalty income; PV10 inputs); EIA WTI price data (HIVE PV10); finance-allevio-revenue-recognition (Allevio MRR; GRR); finance-portfolio-dashboard (prior-quarter valuation baseline); comparable transaction databases (multiples reference); finance-kpi-financial-tracker (entity KPIs that drive valuation)
- **Writes to:** Portfolio valuation report (SharePoint → MBL Partners → Finance → Portfolio Valuation → [Quarter]); Matt Mathison review package; finance-lp-reporting-ops (valuation inputs for LP report); finance-board-report-builder (portfolio valuation section); MBL NAV record (permanent)
- **HITL Required:** Matt Mathison reviews → mandatory before LP distribution; valuation decrease >15% → Matt Mathison + entity CEO immediate; new methodology → Matt Mathison approves; exit inputs → Matt Mathison + Dr. Lewis + legal; HIVE WTI sensitivity → Matt Mathison sees full range; ARR milestone → Matt Mathison briefed; LP → finance-lp-reporting-ops; NAV → Matt Mathison approves

## Test Cases
1. **Golden path:** MBL Q2 2026 portfolio valuation. Allevio: MRR $48,240; ARR $578,880; GRR 93% (positive); gross margin 41%. Comparable MSO multiples: EV/Revenue 2.0-2.5× (GRR ≥91% commands premium). Allevio EV: $578,880 × 2.2× = $1.27M. Column6: TTM EBITDA $280K; comparable CTV multiples 7-9× EBITDA. Column6 EV: $280K × 8× = $2.24M. HIVE: PV10 at current WTI $63/bbl: $3.8M (per Covercy reserve estimate). MBL NAV: $1.27M + $2.24M + $3.8M + $200K cash = $7.51M. Prior quarter NAV: $7.1M (+5.8% QoQ; driven by Allevio ARR growth + HIVE WTI recovery from $58). Matt Mathison reviews: "looks right; Allevio is building nicely; HIVE WTI watch flag noted for Q3." Valuation delivered to finance-lp-reporting-ops.
2. **Edge case:** WTI drops from $63 to $54/bbl between Q2 and Q3 reporting date → Dr. Lewis: "HIVE PV10 is sensitive to WTI — at $54/bbl vs. Q2's $63/bbl ($9 reduction), I'm running the PV10 scenario table. At $54: PV10 = $2.9M (vs. $3.8M at $63; -$900K). This is the single largest quarter-over-quarter change in portfolio value. My recommendation: report HIVE at $2.9M PV10 (current WTI), show the $63/bbl baseline ($3.8M) as context, and include an explicit note in the LP report: 'HIVE's PV10 valuation is directly linked to WTI price. At current WTI of $54/bbl, PV10 is $2.9M. At $63/bbl (Q2 WTI), PV10 was $3.8M. HIVE's acquisition pause (WTI trigger below $58) is in effect.' Matt Mathison reviews this scenario before LP report goes out."
3. **Adversarial:** Entity CEO wants Dr. Lewis to use aggressive forward projections for Allevio's valuation to "show LPs we're building value" → Dr. Lewis: "I understand the desire to show a strong valuation, and I want to do that — but the valuation has to be defensible. PE valuation standards (IPEV) anchor to performance, not projections. If I mark up Allevio's valuation based on an aspirational ARR target we haven't hit yet, and a sophisticated LP or future acquirer scrutinizes the methodology, we have a credibility problem. Here's what I can do: (1) Show the current valuation at actual performance; (2) Include a 'value creation roadmap' section in the LP communication that shows what Allevio will be worth if it achieves its ARR target — that's transparent about the upside without marking the current valuation to projections. LPs invest in MBL because we tell the truth; the conservative current valuation plus a clear value-creation narrative is stronger than an inflated current mark."

## Audit Log
Quarterly portfolio valuation records (permanent). Valuation methodology documentation by entity (per IPEV standards). Matt Mathison review and approval records. Comparable transaction data sources. HIVE PV10 calculation inputs and WTI price at valuation date. Unrealized gain/loss records. Exit multiple assumption records. Valuation change explanation records. LP report delivery confirmation.

## Deprecation
Valuation methodologies reviewed annually per IPEV guideline updates. Comparable multiples updated quarterly (market conditions). HIVE PV10 methodology reviewed when reserve estimation methodology changes. Allevio valuation inflection points reviewed when ARR milestones are reached. Column6 valuation methodology reviewed when digital media M&A market comparables shift.
