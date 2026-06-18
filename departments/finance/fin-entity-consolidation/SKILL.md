---
name: fin-entity-consolidation
description: "Prepare MBL Partners portfolio consolidated financial statements. Use when the user says 'consolidated financials', 'portfolio consolidation', 'MBL consolidated', 'consolidated P&L', 'consolidated balance sheet', 'consolidated cash flow', 'portfolio financials', 'total MBL', 'roll-up financials', 'roll-up reporting', 'eliminations', 'intercompany eliminations', 'total portfolio revenue', 'total portfolio EBITDA', 'total portfolio performance', 'portfolio financial picture', 'aggregate financials', 'MBL group financials', 'holding company consolidation', 'portfolio company rollup', 'LP consolidated view', 'combined financials', 'consolidated view', 'total portfolio P&L', 'total EBITDA', or 'what does the whole portfolio look like'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <prepare|review|report|present>] [--focus <pnl|balance-sheet|cash-flow|ebitda|eliminations>] [--audience <internal|lp|board|audit>]"
---

# Fin Entity Consolidation

Prepare MBL Partners portfolio consolidated financial statements — combining the individual entity financials (Allevio; HIVE; Column6) with MBL's holding company financials, eliminating all intercompany transactions, and presenting the total portfolio financial picture that Matt Mathison and LPs use to evaluate MBL's overall performance. Consolidation is not just arithmetic; it requires judgment about eliminations, minority interest (if applicable), and the presentation choices that communicate portfolio health clearly. The consolidated view is the answer to "how is MBL performing as a whole?" — the entity-level financials answer "how is each company doing?"

## When to Use
- Quarterly: prepare the consolidated portfolio financial package for Matt and the board
- Annual: full consolidation for audited financial statements
- LP report preparation (consolidated portfolio performance)
- Matt Mathison asks for the total portfolio financial picture
- A new entity is added to the portfolio (consolidation scope update)

## Consolidation Framework

```
CONSOLIDATION SCOPE:

  Entities included:
    MBL Partners (holding company / GP)
    Allevio (portfolio entity — 100% owned or majority interest)
    HIVE Partners (portfolio entity — 100% owned or majority interest)
    Column6/Siprocal (portfolio entity — 100% owned or majority interest)
    
  Method: Full consolidation (since MBL controls each entity)
  Minority interest: If MBL owns <100%, minority interest is presented separately
  
CONSOLIDATION PROCESS (QUARTERLY):

  STEP 1 — GATHER ENTITY FINANCIALS (by the 20th of month following quarter-end):
    □ Allevio: P&L; balance sheet; cash flow statement (QuickBooks Allevio)
    □ HIVE: P&L; balance sheet; cash flow statement (QuickBooks HIVE)
    □ Column6: P&L; balance sheet; cash flow statement (QuickBooks Column6)
    □ MBL: holding company P&L; balance sheet (QuickBooks MBL)
    
    Confirm each entity's books are closed for the period (fin-entity-close)
    No consolidation on open or unreviewed books
    
  STEP 2 — INTERCOMPANY ELIMINATION SCHEDULE:
    
    Management fees:
      MBL management fee revenue [X] eliminates against → Entity management fee expense [X]
      Net: $0 in consolidated statements
      
    Intercompany loans (if any):
      Loan receivable on MBL books eliminates against → Loan payable on entity books
      Intercompany interest: eliminate both the income and expense
      
    Intercompany sales/services (if any between entities):
      Any revenue/expense between Allevio, HIVE, Column6, and MBL: eliminate both sides
      
    Equity investment:
      MBL's investment in subsidiary on MBL balance sheet eliminates against → Subsidiary equity
      
  STEP 3 — CONSOLIDATED FINANCIAL STATEMENT PREPARATION:
    
    CONSOLIDATED P&L:
      Revenue: sum of all entity revenues (external only — after eliminations)
      COGS/Direct costs: sum of all entity COGS
      Gross profit / gross margin
      Operating expenses: sum of all entity OpEx + MBL corporate overhead
      EBITDA (pre-elimination adjustments)
      Interest expense / income
      Taxes (entity-level and any holding company-level taxes)
      Net income
      
    EBITDA BRIDGE (by entity):
      Allevio EBITDA: $[X] ([%] margin)
      HIVE EBITDA: $[X] ([%] margin)
      Column6 EBITDA: $[X] ([%] margin)
      MBL corporate overhead: ($[X])
      Consolidated EBITDA: $[X] ([%] margin)
      vs. Prior quarter: $[+/-X]
      vs. Budget: $[+/-X]
      
    CONSOLIDATED BALANCE SHEET:
      Key aggregates:
        Cash (combined): $[X] — by entity: Allevio $[X]; HIVE $[X]; Column6 $[X]; MBL $[X]
        Total AR: $[X]
        Total debt: $[X]
        
    CASH FLOW BRIDGE:
      Beginning cash: $[X]
      Operating cash flow: $[X]
      Investing activities (capex; acquisitions): $[X]
      Financing activities (debt; equity): $[X]
      Ending cash: $[X]
      
  STEP 4 — PORTFOLIO KPI SUMMARY:
    Weighted NRR (MBL North Star): [%]
    Portfolio EBITDA margin: [%]
    Portfolio EBITDA vs. budget: $[+/-X]
    Cash reserves: portfolio total and by entity (vs. minimums)
    Concentration: Allevio [%], HIVE [%], Column6 [%] of revenue
    
  STEP 5 — MATT MATHISON REVIEW (by the 25th):
    Present consolidated package to Matt for review and approval
    Matt approves before distribution to LP or board
```

## Output Format

```markdown
# MBL Partners Consolidated Financial Report — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison | **Confidential**

---

## Portfolio EBITDA Bridge

| Entity | Revenue | EBITDA | EBITDA margin | vs. Budget |
|--------|---------|--------|-------------|-----------|
| Allevio | $[X] | $[X] | [%] | $[+/-X] |
| HIVE Partners | $[X] | $[X] | [%] | $[+/-X] |
| Column6/Siprocal | $[X] | $[X] | [%] | $[+/-X] |
| MBL Corporate | — | ($[X]) | — | $[+/-X] |
| **Consolidated** | **$[X]** | **$[X]** | **[%]** | **$[+/-X]** |

---

## Portfolio Cash Position

| Entity | Cash | Minimum reserve | Status | Weeks of runway |
|--------|------|----------------|--------|----------------|
| Allevio | $[X] | 8 weeks = $[X] | 🟢/🟡/🔴 | [N] weeks |
| HIVE | $[X] | 12 weeks = $[X] | 🟢/🟡/🔴 | [N] weeks |
| Column6 | $[X] | 6 weeks = $[X] | 🟢/🟡/🔴 | [N] weeks |
| MBL | $[X] | — | — | — |
| **Total** | **$[X]** | 15% reserve: $[X] | 🟢/🟡/🔴 | |

---

## Portfolio North Star KPIs

| KPI | Q[N] | Q[N-1] | Target | Status |
|----|------|-------|--------|--------|
| Weighted NRR | [%] | [%] | ≥100% | 🟢/🟡/🔴 |
| Allevio GRR | [%] | [%] | ≥91% | 🟢/🟡/🔴 |
| Allevio claim ratio | [%] | [%] | ≤87% | 🟢/🟡/🔴 |
| HIVE landowner GRR | [%] | [%] | ≥85% | 🟢/🟡/🔴 |
| Column6 agency NRR | [%] | [%] | ≥95% | 🟢/🟡/🔴 |
| Column6 VCR | [%] | [%] | ≥92% | 🟢/🟡/🔴 |
```

## Output Contract
- Eliminations before presentation — the consolidated financial package is never presented to Matt Mathison, LPs, or the board without confirming that all intercompany eliminations are complete and correct; an unconsolidated package that double-counts management fee revenue and expense overstates both gross revenue and gross expense; this is the most common consolidation error and it is caught by Dr. Lewis before the package leaves his desk
- Entity financials must be closed first — the consolidation process starts only after all entity books are closed for the period; consolidating open or unreviewed books produces unreliable consolidated figures; Dr. Lewis confirms with each entity bookkeeper/controller that the period is closed and reviewed before pulling the trial balance for consolidation
- The portfolio view reveals what entity-level views hide — consolidation reveals concentration (Allevio is 55% of portfolio revenue), cash distribution (HIVE has 18 weeks of runway; Column6 has only 7), and cross-entity EBITDA drag (MBL corporate overhead is $X of the consolidated EBITDA); Matt Mathison needs this portfolio-level context to make capital allocation decisions that the individual entity views don't surface
- HITL required: Matt Mathison reviews and approves the consolidated package before any LP or board distribution; elimination schedules are reviewed by the external auditor annually; any significant judgment call in the consolidation (minority interest treatment; contingent liability recognition) is flagged to Matt before finalization; LP quarterly financial reports use the consolidated package as the source; any entity added to or removed from consolidation scope requires Matt approval and LP notification

## System Dependencies
- **Reads from:** QuickBooks by entity (Allevio; HIVE; Column6; MBL — trial balances for the period); fin-entity-close (confirmation that each entity's books are closed); fin-transfer-pricing (intercompany elimination schedules); fin-cash-flow-planner (cash position inputs); fin-kpi-dashboard (portfolio KPI actuals)
- **Writes to:** Consolidated financial package (SharePoint → Finance → Consolidation → Q[N]-[YYYY]); fin-lp-financial-disclosure (LP quarterly report source); exec-board-reporting (board financial package); audit workpapers (annual consolidation supporting documentation); fin-financial-model (consolidated actuals feed into the forward model)
- **HITL Required:** Matt Mathison reviews and approves before LP/board distribution; external auditor reviews annual consolidation; scope changes (new entity; divestiture) require Matt approval; significant accounting judgment calls flagged to Matt before finalization

## Test Cases
1. **Golden path:** Q2 consolidation; all three entities closed by July 12; elimination schedule prepared July 13: MBL management fee revenue $101,100 eliminated against entity management fee expense $101,100 (net $0); no intercompany loans outstanding; MBL investment in subsidiaries eliminated against subsidiary equity. Consolidated Q2: Allevio revenue $1.29M (EBITDA $142K; 11%); HIVE royalties $322K (EBITDA $283K; 88%); Column6 revenue $1.02M (EBITDA $198K; 19.4%); MBL corporate overhead ($215K); Consolidated EBITDA $408K (15.7% consolidated margin). Cash: total $2.1M (Allevio $680K = 14.2 weeks; HIVE $520K = 18.2 weeks; Column6 $410K = 8.1 weeks; MBL $490K). Weighted NRR: 97.4%. All entities above minimum cash reserve. Presented to Matt July 24. Matt approves July 25. LP package sent August 1.
2. **Edge case:** Column6 acquired a small publisher tool company mid-quarter (paid $85K) — how does this affect the consolidation? → Dr. Lewis: "The $85K acquisition of [Company] by Column6 is reflected in the consolidation as follows: (1) Balance sheet: Column6's cash decreased $85K; Column6 now has $85K of goodwill/intangible assets (preliminary purchase price allocation — needs formalization); (2) No income statement impact in Q2 (acquisition was on June 28; essentially no revenue or expense from the acquired company in Q2); (3) The acquisition is disclosed as a subsequent event / Q2 transaction in the LP report: 'Column6 acquired [Company] for $85K on June 28; preliminary integration assessment underway.' I've flagged the purchase price allocation for the audit. Matt, I need you to confirm the acquisition documentation is in SharePoint before I finalize the Q2 consolidation."
3. **Adversarial:** LP demands quarterly consolidated financial statements within 30 days of quarter-end (current process takes 45 days) → Dr. Lewis: "I can compress the timeline, but I need to be transparent about the tradeoff. The current 45-day timeline allows: entity close by Day 15; entity review and sign-off by Day 20; consolidation preparation by Day 23; Matt Mathison review by Day 25; LP package by Day 30 internally; LP distribution by Day 45. To hit 30-day distribution: entity close must be by Day 10 (possible); consolidation by Day 15 (tight); Matt review by Day 20 (requires Matt availability); LP package in 5 business days (very tight). The risk of rushing is a consolidation error or an elimination miss. My recommendation: commit to 35 days (which we can achieve with some process improvement) rather than 30 days with quality risk. I'll document the process improvement plan and present it to Matt — if Matt agrees, I'll commit to 35 days for Q3."

## Audit Log
All consolidation workpapers retained annually. Elimination schedules retained. Trial balance inputs retained (from QuickBooks). Entity sign-off records retained. Matt Mathison approval records retained. LP distribution records retained. Audit-related documentation retained 7 years post-audit.

## Deprecation
Retire when MBL has a dedicated Controller or CFO who prepares the consolidated financials — with Dr. Lewis providing the portfolio-level financial oversight and Matt Mathison retaining review and approval authority over all consolidated packages before LP or board distribution.
