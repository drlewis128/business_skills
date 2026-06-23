---
name: finance-board-report-builder
description: "Build quarterly board and LP financial reports for MBL Partners portfolio entities. Use when the user says 'board report', 'board financial report', 'board package', 'board deck', 'board financial package', 'LP report', 'LP financial report', 'investor report', 'investor update', 'quarterly investor update', 'quarterly board update', 'board financial summary', 'board meeting financials', 'board prep', 'quarterly financial report', 'quarterly financials', 'Q1 board pack', 'Q2 board pack', 'Q3 board pack', 'Q4 board pack', 'board financial presentation', 'investor financial presentation', 'financial presentation for board', 'prepare board financials', 'quarterly financial package', 'board financial deck', 'annual financial report', 'annual board report', 'annual investor update', 'LP financial update', 'LP quarterly update', or 'prepare investor materials'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--quarter <Q1|Q2|Q3|Q4>] [--year <2026|2027>] [--audience <board|lp|both>] [--action <build|review|present>]"
---

# Finance Board Report Builder

Build quarterly board and LP financial reports for MBL Partners portfolio entities — producing structured financial packages that cover revenue performance, P&L summary, cash position, KPI scorecard, risks, and forward outlook in a format suitable for board members, LPs, or Matt Mathison's quarterly portfolio review. Financial reporting for sophisticated audiences is half data and half storytelling — both must be accurate and defensible.

## When to Use
- End of quarter: preparing the board/LP financial package
- Matt Mathison quarterly portfolio review
- New investor or LP onboarding: financial presentation
- Annual board/LP review

## Board Report Framework

```
QUARTERLY BOARD PACKAGE STRUCTURE:

  COVER PAGE:
    Entity name; period (e.g., "Q2 2026 Financial Report"); prepared by Dr. Lewis; confidential
    
  SECTION 1 — EXECUTIVE SUMMARY (BLUF):
    Quarter in one paragraph: how did the entity perform financially?
    3-5 headline metrics (revenue; gross margin; EBITDA; cash; key KPI)
    Top 1-2 wins; top 1-2 risks
    
  SECTION 2 — REVENUE PERFORMANCE:
    Quarterly revenue: actual vs. plan vs. prior year (3-column)
    Revenue trend: 4-quarter trailing (table + simple visual if appropriate)
    Revenue drivers: what drove performance (new clients; retention; expansion; pricing)
    Entity-specific revenue notes:
      Allevio: aggregate employer billing; PMPM × enrolled EE; HIPAA aggregate only
      Column6: IO revenue recognized; repeat IO rate; average IO size trend
      HIVE: BOE production × realized WTI; royalty income; WTI realized vs. $58 trigger
      
  SECTION 3 — P&L SUMMARY:
    Quarterly P&L: Revenue / COGS / Gross Profit / OpEx (categories) / EBITDA
    Gross margin vs. target
    EBITDA vs. target and vs. prior quarter
    Key expense variances with explanation
    
  SECTION 4 — CASH AND BALANCE SHEET:
    End-of-quarter cash balance
    Burn rate and runway
    Key balance sheet items (AR aging; major liabilities)
    Capital deployed this quarter (HIVE: acquisitions; others: capex or investment)
    
  SECTION 5 — KEY BUSINESS METRICS (KPI SCORECARD):
    5-8 entity-specific KPIs:
      Allevio: enrolled employers / PMPM / GRR / NRR / pipeline coverage
      Column6: active agencies / IO pipeline / repeat IO rate / gross margin
      HIVE: BOE production / realized WTI / royalty income / LOE per BOE
      
  SECTION 6 — RISKS AND MITIGATIONS:
    Top 3 financial risks with probability, impact, and mitigation
    Example: "WTI price risk — if WTI drops below $58 for 2 consecutive months, acquisition pause triggered; HIVE cash reserves sufficient for 8+ months at current LOE"
    
  SECTION 7 — NEXT QUARTER OUTLOOK:
    Revenue guidance range (low / base / high)
    Key assumptions
    Critical decisions needed from board/Matt Mathison
    
LP-SPECIFIC REPORTING (HIVE PARTNERS):
  LP quarterly report follows HIVE LP reporting format (finance-lp-reporting-ops)
  Key additions for LPs vs. board: distribution summary; WTI price impact; acreage position update
  LPs do NOT receive entity-level operational detail (no clinical data; no agency names)
  
APPROVAL CHAIN:
  Draft: Dr. Lewis prepares
  Entity CEO review: entity CEO reviews for accuracy (48-hour turnaround requested)
  Matt Mathison review: Dr. Lewis and Matt Mathison review together (30-minute call)
  Distribution: Matt Mathison approves distribution list before any external delivery
  HIPAA: Allevio board report = aggregate employer-level data only; no PHI ever in board materials
```

## Output Format

```markdown
# [Entity] Quarterly Financial Report — Q[N] [Year]
**CONFIDENTIAL** | Prepared by: Dr. Lewis | Reviewed by: Entity CEO | Date: [Date]

---

## Executive Summary
[2-3 sentences: quarter performance; key win; key risk]

| Metric | Q[N] Actual | Q[N] Plan | vs. Prior Quarter |
|--------|------------|---------|-----------------|
| Revenue | $X | $X | +X% |
| Gross Margin | X% | X% | |
| EBITDA | $X | $X | |
| Cash | $X | | +/-$X |
| [Entity KPI] | | | |

---

## Revenue Performance

[4-quarter revenue trend table]

[Revenue driver narrative: 2-3 bullets]

---

## P&L Summary

| | Budget | Actual | Variance |
|--|--------|--------|---------|
| Revenue | $X | $X | |
| COGS | | | |
| Gross Profit | $X | $X | X% margin |
| Total OpEx | | | |
| **EBITDA** | **$X** | **$X** | |

---

## Cash & Balance Sheet

[Cash summary; runway; key items]

---

## KPI Scorecard

[Entity-specific KPI table; vs. target and prior quarter]

---

## Risks & Mitigations

[3 risks; probability; impact; mitigation]

---

## Q[N+1] Outlook

[Revenue guidance; key assumptions; board decisions needed]
```

## Output Contract
- Board financial reports must withstand scrutiny from sophisticated investors — Matt Mathison's LPs are investors who read financial statements; any number in a board report must be traceable to a source (QuickBooks; Covercy; AdvancedMD aggregate); if Dr. Lewis cannot answer "where does this number come from?" for every line in the report, the number should not be in the report; Dr. Lewis builds the board report from the entity P&L (which is already reconciled to QuickBooks) and does not create new figures that aren't tied to the financial close
- The HIVE WTI trigger is explicitly disclosed in every HIVE board report — this is not a negative signal; it is responsible financial governance; LPs and board members appreciate knowing that HIVE has a defined acquisition discipline (pause at $58/bbl for 2+ consecutive weeks) rather than acquiring at any price; the disclosure demonstrates that Dr. Lewis and Matt Mathison have a systematic approach to capital deployment risk; if WTI is above $65/bbl, the disclosure is brief ("WTI realized $X/bbl — above acquisition threshold"); if WTI is approaching $58, the disclosure is more detailed with forward price context
- HITL required: Allevio board report → Dr. Lewis confirms aggregate only; no PHI; no individual employer names in board materials; entity CEO reviews for accuracy → 48 hours; Matt Mathison reviews → 30-minute call before distribution; external distribution → Matt Mathison approves list; any board report with forward guidance → entity CEO + Dr. Lewis align on guidance range before inclusion; LP distribution → finance-lp-reporting-ops governs

## System Dependencies
- **Reads from:** QuickBooks (entity P&L; cash; AR/AP); Covercy (HIVE production; royalty; LP records); finance-entity-pl-reporter (quarterly P&L); finance-cash-flow-manager (cash position and runway); revops-gtm-kpi-tracker (business KPIs for scorecard section); entity CEO operational narrative inputs
- **Writes to:** Board/LP reports (SharePoint → [Entity] → Finance → Board Reports → [YYYY-QN]); Matt Mathison board review records; entity CEO approval records; external LP distribution records (HIVE); Dr. Lewis board report archive
- **HITL Required:** Allevio aggregate confirmation; entity CEO review → 48hr; Matt Mathison review → 30-min call; external distribution → Matt Mathison approves; forward guidance → entity CEO + Dr. Lewis align; HIVE LP distribution → finance-lp-reporting-ops

## Test Cases
1. **Golden path:** Allevio Q2 2026 board report. Revenue: $276K actual vs. $260K plan (+6.2% ✅). Gross margin: 42.3% vs. 40% target ✅. EBITDA: -$18K vs. -$24K plan (better than plan ✅). Cash: $218K; 9 months runway ✅. KPIs: enrolled employers 21 (+3 MoM); GRR 94%; NRR 107%; pipeline coverage 3.1×. Risks: (1) WTI N/A (Allevio not HIVE); (2) Tucson territory expansion requires AE hire — capital allocation decision for Q3; (3) 1 employer ($22K ACV) churn risk flagged by CS — CS engaged. Board report reviewed by entity CEO; approved by Matt Mathison; delivered Q3 board meeting.
2. **Edge case:** Entity CEO provides a revenue number for the board report that is $14K higher than what QuickBooks shows → Dr. Lewis: "There's a $14K discrepancy between the revenue figure you've given me ($308K) and what QuickBooks shows ($294K). Before the report goes anywhere, we need to reconcile this. Two possibilities: (1) there's revenue that was recognized in GoHighLevel as closed but not yet invoiced in QuickBooks — if so, I need the invoices created; (2) there's a QuickBooks entry error — if so, we correct it. I will not put $308K in the board report if QuickBooks shows $294K. Board materials must trace to the accounting system of record. Let's reconcile today."
3. **Adversarial:** Matt Mathison wants to include forward revenue projections in a HIVE LP report that are optimistic (based on WTI at $75/bbl when current WTI is $63/bbl) → Dr. Lewis: "I can include a $75/bbl scenario as a 'bull case' — but I'd strongly recommend the base case use current WTI ($63/bbl) and we show a scenario table: bear ($55), base ($63), bull ($75). LPs who receive a base case projection based on $75/bbl WTI when current prices are $63/bbl will rightfully question the credibility of the analysis if prices stay flat or decline. The scenario table is more transparent and actually more compelling — it shows that HIVE is financially viable at $63/bbl (current) and significantly more profitable at $75/bbl (upside). That's a stronger LP communication than a single optimistic projection."

## Audit Log
Quarterly board reports (permanent archive). Entity CEO approval records. Matt Mathison review and approval records. External distribution records (HIVE LP). Allevio aggregate data confirmation records. Revenue reconciliation records (any discrepancy resolved). Forward guidance alignment records. Board meeting delivery dates.

## Deprecation
Board report structure reviewed annually. Entity-specific KPI section reviewed when entity business model changes. HIVE WTI disclosure reviewed when trigger level changes. Allevio HIPAA section reviewed when regulations change. Distribution process reviewed when entity board composition changes. LP report format reviewed when Covercy capabilities change.
