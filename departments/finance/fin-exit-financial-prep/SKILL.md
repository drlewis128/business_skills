---
name: fin-exit-financial-prep
description: "Prepare the financial package for a portfolio entity exit or sale process. Use when the user says 'exit financials', 'exit prep', 'exit financial prep', 'sale financials', 'sale prep', 'preparing to sell', 'sell the company', 'sell an entity', 'exit readiness', 'CIM financials', 'confidential information memorandum', 'deal book financials', 'quality of earnings', 'QoE', 'QofE', 'adjusted EBITDA', 'normalized EBITDA', 'trailing twelve months', 'TTM financials', 'LTM financials', 'exit EBITDA', 'exit valuation', 'exit multiple', 'exit process', 'banker process', 'M&A process', 'sell-side', 'sell-side diligence', 'sell-side readiness', 'buyer diligence', 'buyer financial', 'diligence room', 'dataroom financials', 'financial dataroom', 'audited financials', 'financial statements for sale', 'prepare financial statements', 'exit value', 'exit equity value', or 'exit returns'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--stage <prep|process|diligence|close>] [--action <build|review|present|respond>] [--focus <cim|qoe|dataroom|ttm|valuation>]"
---

# Fin Exit Financial Prep

Prepare the financial package for a portfolio entity exit or sale process — building the CIM financials, adjusting EBITDA to reflect normalized performance, responding to buyer diligence requests, and maximizing the exit valuation through accurate, compelling financial presentation. Exit preparation is the culmination of the value creation work: every improvement to Allevio's claim ratio, HIVE's royalty income, or Column6's agency NRR that Dr. Lewis has tracked and supported becomes a higher exit EBITDA and a higher exit value. The financial package must be defensible under Quality of Earnings scrutiny — buyers will probe every adjustment, every revenue source, and every cost item. Clean books and clear documentation are the protection.

## When to Use
- Matt Mathison initiates an exit process for a portfolio entity
- A banker has been engaged to run a sale process
- Buyer IOIs/LOIs require financial summary data
- A buyer's QoE firm begins diligence
- Pre-exit financial cleanup (6+ months before process)

## Exit Financial Prep Framework

```
PRE-EXIT PREPARATION (6-12 MONTHS BEFORE PROCESS):

  FINANCIAL CLEANUP:
    □ All revenue recognition is clean and defensible (no acceleration; no deferral)
    □ AR aging is current (write off uncollectibles now, not during diligence)
    □ AP is complete (no hidden payables; all vendor invoices received and processed)
    □ Payroll is clean (correct classifications; no worker misclassification risk)
    □ Intercompany accounts eliminated or documented
    □ Reconcile QuickBooks to bank statements for the prior 3 years
    □ Ensure 3 years of financial statements are internally consistent
    
  EBITDA NORMALIZATION:
    Purpose: adjust reported EBITDA for non-recurring, non-arm's-length, or unusual items
    to show buyers the "true" underlying earning power of the business
    
    Common Allevio adjustments:
      + One-time legal fees: $[X] (non-recurring)
      + Owner/founder compensation above market: $[X] (if applicable)
      + Non-recurring system implementation costs: $[X]
      - One-time revenue recognized in the TTM that won't recur: $[X]
      
    Common HIVE adjustments:
      + WTI price normalization (if TTM includes extreme price volatility)
      + Non-recurring lease maintenance cost: $[X]
      
    Common Column6 adjustments:
      + Non-recurring platform migration costs: $[X]
      + Make-good expense that was a one-time execution failure: $[X]
      - One-time campaign revenue that won't recur: $[X]
      
    Documentation: every adjustment has a name; a dollar amount; and a written justification
    QoE firms will scrutinize every add-back — if it can't be justified in one sentence, remove it

TTM (TRAILING TWELVE MONTHS) FINANCIAL PACKAGE:

  Structure:
    TTM P&L: most recent 12-month period (not just fiscal year — often ends at last month-end)
    Why TTM vs. fiscal year: TTM captures the most current performance trajectory
    
    TTM presentation:
      | Line item | FY[N-1] | FY[N] | LTM [Month End] |
      |-----------|---------|-------|----------------|
      | Revenue | $[X] | $[X] | $[X] |
      | Gross profit | $[X] | $[X] | $[X] |
      | EBITDA (reported) | $[X] | $[X] | $[X] |
      | Adjustments | $[X] | $[X] | $[X] |
      | EBITDA (adjusted) | $[X] | $[X] | $[X] |
      
  Supporting schedules (standard):
    Revenue detail by customer/employer group (Column6: by agency)
    Headcount and compensation by department
    Vendor spend analysis (top 10 vendors and recurring cost profile)
    AR aging as of TTM end date
    Capital expenditure history (3 years)

CIM FINANCIAL SECTION:

  Length: 4-6 pages of the CIM
  
  Includes:
    1. 3-year financial summary + TTM
    2. Revenue bridge (why revenue grew or declined)
    3. EBITDA bridge (why EBITDA improved)
    4. Unit economics (Allevio: PMPM; HIVE: BOE production; Column6: CPM/campaign)
    5. Growth drivers (why the business will continue to grow post-sale)
    6. Adjusted EBITDA reconciliation (show the adjustments clearly)
    7. Forward projections (management case: Year 1; Year 2 post-sale)
    
BUYER DILIGENCE RESPONSE:

  Dataroom (organized by category):
    Financials: 3 years audited (or reviewed) financial statements; TTM; interim statements
    Revenue: customer/employer group list; contract terms; renewal history
    Expenses: vendor contracts; payroll data (anonymized if needed); lease agreements
    Accounting: QuickBooks export; bank statements; reconciliations
    
  QoE firm diligence (conducted by buyer's accounting firm):
    They will request:
      Source documents for every revenue item in the TTM
      Source documents for every EBITDA adjustment
      Monthly financial statements for the TTM period
      Bank statements for 12-24 months
      
    Dr. Lewis's role: QoE liaison
      Provide requested documents within 48 hours (never keep QoE waiting)
      Pre-brief the QoE firm: "Here is our adjusted EBITDA, here are the adjustments, here is the documentation"
      Any adjustment the QoE firm challenges: Dr. Lewis decides whether to defend or concede
      Defend only adjustments that are genuinely one-time and documented
      Concede adjustments that the QoE firm correctly identifies as recurring
      
  Valuation implication of QoE:
    Every $10K of EBITDA the QoE firm removes = $70K-$90K of exit value lost (at 7-9× multiple)
    Dr. Lewis tracks the QoE's running tally and communicates impact to Matt Mathison in real time
```

## Output Format

```markdown
# Exit Financial Package — [Entity Name]
**Process stage:** [Pre-prep / CIM / Diligence / Close] | **Prepared by:** Dr. Lewis | **For:** Matt Mathison + [Banker]

---

## TTM Adjusted EBITDA Reconciliation

| | FY[N-1] | FY[N] | TTM [End date] |
|-|---------|-------|---------------|
| Revenue | $[X] | $[X] | $[X] |
| EBITDA (reported) | $[X] | $[X] | $[X] |
| + Non-recurring legal | $[X] | $[X] | $[X] |
| + One-time systems cost | — | $[X] | $[X] |
| - Non-recurring revenue | — | — | ($[X]) |
| **Adjusted EBITDA** | **$[X]** | **$[X]** | **$[X]** |
| **Adjusted EBITDA margin** | **[%]** | **[%]** | **[%]** |

---

## Entry/Exit Return Preview

| | Conservative | Base | Upside |
|-|------------|------|--------|
| Exit EBITDA | $[X] | $[X] | $[X] |
| Exit multiple | [X]× | [X]× | [X]× |
| Exit EV | $[X] | $[X] | $[X] |
| Estimated MBL equity proceeds | $[X] | $[X] | $[X] |
| MOIC | [X]× | [X]× | [X]× |
```

## Output Contract
- Adjustments are additive only if genuinely one-time — the standard for including an EBITDA adjustment in the exit package is: "Would a sophisticated, skeptical buyer accept this as non-recurring?" If the answer is yes with documentation, include it. If the answer requires elaborate justification, omit it. Dr. Lewis takes a conservative position on adjustments — it is better to have a slightly lower EBITDA that the QoE firm validates than a higher EBITDA that the QoE firm reduces by 30%, which damages credibility and transaction momentum
- 48-hour dataroom response standard — buyer diligence stalls are the most common cause of deal death; Dr. Lewis commits to responding to all dataroom document requests within 48 hours; documents that require legal review (customer contracts; employment agreements) are pre-cleared with counsel before the process begins; the dataroom is organized in advance so individual document requests can be fulfilled quickly
- QoE tally runs in real time — Dr. Lewis maintains a running EBITDA impact tracker during QoE: as the QoE firm makes its preliminary adjustments, Dr. Lewis calculates the valuation impact in real time and communicates it to Matt Mathison weekly; "The QoE has challenged $280K of our adjustments so far. At 8× EBITDA, that's $2.24M of exit value at risk. Here's which adjustments they've challenged and my recommendation on which to defend vs. concede." Matt decides.
- HITL required: exit process is initiated by Matt Mathison's decision; all financial packages (CIM financials; adjusted EBITDA) reviewed by Matt before delivery to banker or buyers; EBITDA adjustments that the QoE challenges are reviewed by Matt Mathison before Dr. Lewis decides to defend or concede (decisions >$500K valuation impact require Matt); final LOI/SPA financial terms reviewed by Matt; LP notification of exit and distribution waterfall calculation require Matt approval; all proceeds and carry calculations reviewed by Matt and legal

## System Dependencies
- **Reads from:** QuickBooks by entity (3 years of financial history); fin-entity-close (clean financials are the foundation); fin-financial-model (forward projections for CIM); fin-working-capital-optimizer (working capital peg for the purchase agreement); exec-exit-planning (exit timing and strategy)
- **Writes to:** Exit financial package (SharePoint → Finance → Exits → [Entity] → [Year]); CIM financial section (delivered to banker); dataroom (financial documents); QoE response log (tracking adjustments challenged and responses); fin-investor-returns-model (exit proceeds and MOIC/IRR calculation)
- **HITL Required:** Exit process initiated by Matt Mathison; CIM financials reviewed by Matt before banker delivery; EBITDA adjustment decisions (defend vs. concede) reviewed by Matt for high-impact items; final transaction financial terms reviewed by Matt and legal; LP distribution waterfall approved by Matt; all QoE communications coordinated by Dr. Lewis; Dr. Lewis does not make unilateral concessions on significant EBITDA items without Matt's input

## Test Cases
1. **Golden path:** Column6 exit process; Q3 year 3; banker engaged; CIM financials prepared in 2 weeks: TTM revenue $4.12M (Column6 agency NRR 96.4%); reported EBITDA $742K (18.0% margin); adjustments: +$85K non-recurring platform migration (one-time; documented with vendor invoice); +$42K founder compensation above market rate (CEO reduced salary by $42K below market for 18 months — documented with offer letters and market comp data); adjusted EBITDA $869K; adjusted margin 21.1%. Entry EBITDA was $425K; 3-year improvement = $444K — value creation story is compelling. CIM financial section written; reviewed by Matt; delivered to banker. Exit multiple expectation: 8-10× adjusted EBITDA ($6.95M-$8.69M enterprise value). MOIC at midpoint ($7.82M EV; $4.2M equity proceeds after debt): 3.2× on MBL's $1.3M equity check.
2. **Edge case:** QoE firm challenges the $85K platform migration adjustment, arguing it's a recurring cost (platform updates happen every 18 months) → Dr. Lewis reviews and responds: "I disagree with the QoE's characterization for the following reason: this was a complete platform migration from [System A] to [System B] — a one-time strategic technology decision driven by the acquisition of [System B] by a competitor (documented in press coverage). The future operating environment on [System B] will not require a similar migration cost. However, I'll concede $25K of the $85K — the ongoing training and configuration costs that will recur as platform updates happen. The $60K core migration cost was genuinely one-time." Communicating to Matt: "QoE is challenging $85K of migration adjustment. I'm offering to concede $25K, defend $60K. At 9× EBITDA, that's $540K of valuation at stake on the $60K. I recommend defending it — the documentation is strong. Do you agree?" Matt's call.
3. **Adversarial:** Banker wants to include forward projections of 25% revenue growth in the CIM when actual trailing growth was 8% → Dr. Lewis: "I can't endorse 25% forward growth in the CIM financials. Buyers will discount it — they always do — and when the QoE firm arrives, they'll see 8% trailing growth and the 25% projection looks like an aggressive marketing document, not a financial package. That damages credibility on everything else we present. Here's what I can support: a management case showing 12-15% growth with specific, documented drivers (new agency signings in pipeline; new CTV channel launch scheduled for Q2). That's defensible and still compelling. The banker can present an 'upside case' at 20%+ for discussion in the IOI process, but the base case in the CIM should be the 12-15% range. Matt — do you want me to walk through this with the banker directly?"

## Audit Log
Exit financial packages retained permanently (per entity exit folder). TTM financial workpapers. EBITDA adjustment documentation. QoE response log. Dataroom document requests and fulfillment records. Matt Mathison approval records. Banker delivery records. LP distribution waterfall calculations.

## Deprecation
This is a transaction-specific skill. Retire (archive) after each exit process closes. The skill itself remains available for future exit processes across any portfolio entity.
