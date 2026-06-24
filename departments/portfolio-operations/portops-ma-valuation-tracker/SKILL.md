---
name: portops-ma-valuation-tracker
description: "track portfolio valuation, EBITDA multiple calculation, enterprise value calculation EV, MOIC tracker gross net, IRR by investment, annual mark-to-market valuation, LP reporting valuation, comparable transactions analysis comps, DCF sanity check, QuickBooks financial system of record, LP letter valuation narrative Matt Mathison, portfolio company valuation, investment returns tracker, valuation methodology documentation, sensitivity analysis EV, acquisition price vs current value, deal target bid range valuation, purchase price thesis, hold period optimizer IRR, portfolio EBITDA bridge"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<entity name, current EBITDA, EV multiple, invested equity, and valuation date>"
---

# M&A Valuation Tracker

Calculates and tracks enterprise value, MOIC, and IRR for every MBL Partners portfolio investment, performs annual mark-to-market using consistent EBITDA × multiple methodology, and produces the valuation narrative Matt Mathison uses in LP letters and quarterly LP reporting. QuickBooks is the financial system of record for all EBITDA inputs; methodology must be documented and held consistent across reporting periods with any changes explicitly approved by Matt Mathison.

## When to Use

- A new acquisition closes and the initial investment basis and entry valuation need to be recorded
- Quarterly or annual LP reporting requires mark-to-market valuations across the full portfolio
- Matt is drafting an LP letter and needs the valuation narrative with deal-level MOIC and IRR
- A portfolio company's EBITDA has materially changed and EV needs to be recalculated
- A deal target is under consideration and a bid price range with purchase price thesis is needed

## M&A Valuation Tracker Framework

```
VALUATION METHODOLOGY
  Primary method:   EBITDA × comparable transaction multiple = Enterprise Value
  Secondary:        DCF sanity check (annual, required for LP reporting periods)
  Tertiary:         Revenue multiple for pre-EBITDA or negative-EBITDA entities only
  EBITDA definition: TTM Adjusted EBITDA per QuickBooks management accounts
  Adjustments policy: one-time items, owner compensation normalization, pro forma synergies
  Multiple source:  Comparable public companies + precedent M&A transactions (same sector)
  Review frequency: Quarterly (EBITDA update only) | Annual (full re-rate with comps + DCF)
  Methodology changes: must be approved by Matt Mathison and documented in methodology log

PORTFOLIO COMPANY VALUATIONS
  Per entity (updated quarterly on EBITDA, annually on multiple):
    Entity name | Valuation date | TTM Revenue | TTM Adj. EBITDA | EBITDA Margin %
    EV Multiple (selected) | Enterprise Value | Net Debt | Equity Value
    MBL Ownership % | MBL Equity Value | YoY EV change | YoY EBITDA change
  Special rules by entity:
    Allevio:  Healthcare MSO multiple; HIPAA compliance posture affects multiple quality
    HIVE:     Oil & gas multiple; WTI price at $58/bbl = base case; model at spot and $58
    Column6:  CTV/ad tech; gross margin ≥35% threshold required for full multiple; flag if below

MOIC AND IRR BY INVESTMENT
  MOIC (Multiple on Invested Capital):
    Formula: (Current Equity Value + Total Distributions Received) ÷ Total Equity Invested
    Gross MOIC: pre-management fee and carry
    Net MOIC: post-management fee and carry (LP-facing metric)
  IRR (Internal Rate of Return):
    Cash flow schedule: initial investment (negative), interim distributions, current equity value
    Gross IRR and Net IRR calculated and reported separately
    Hold period in years and months tracked from close date
  Portfolio roll-up:
    Blended MOIC (weighted by invested equity) | Blended IRR (weighted by invested equity)
    Total invested capital | Total current equity value | Total distributions received

ANNUAL MARK-TO-MARKET
  Triggered: Q4 each year and upon any new LP capital call or LP reporting event
  Process:
    Step 1: Pull TTM Adjusted EBITDA from QuickBooks for each entity (entity CEO confirms)
    Step 2: Refresh comparable transaction set (≥5 comps, same sector, last 24 months)
    Step 3: Select EV multiple with documented rationale vs. comp median
    Step 4: Calculate EV, equity value, MOIC, IRR for each entity
    Step 5: Run DCF cross-check; document variance vs. multiple method
    Step 6: Dr. Lewis and Matt Mathison valuation committee review and approve
    Step 7: LP reporting package prepared with valuation narrative

DEAL TARGET VALUATION
  Comparable transaction comps: ≥5 transactions in same sector, last 36 months
  Target EBITDA: use audited or quality-of-earnings-adjusted EBITDA from DD
  Bid price range: low (comp discount 10-15%), base (comp median), high (comp premium 10-15%)
  Purchase price thesis: narrative justifying selected bid vs. comp set
  Integration synergies: quantified synergies that justify premium above comp median
  Anti-dilution floor: minimum MOIC target (typically 2.5x) and minimum IRR (typically 20%)

DCF SANITY CHECK
  Projection period: 5 years of free cash flow
  WACC: derived from sector beta, capital structure, risk-free rate
  Terminal value: Gordon Growth Model (terminal growth rate 2-3%)
  NPV: sum of discounted FCFs + discounted terminal value = DCF-implied EV
  Variance threshold: DCF vs. EBITDA multiple within 20% = acceptable; >20% = document rationale
  Annual requirement: DCF cross-check required for every LP reporting period

SENSITIVITY ANALYSIS
  EV sensitivity to ±1 turn of multiple (e.g., 7x vs. 8x vs. 9x)
  EV sensitivity to ±10% EBITDA (performance upside/downside)
  IRR sensitivity to hold period (3-year, 5-year, 7-year exit scenarios)
  HIVE: EV sensitivity to WTI at $45, $58, $75 per barrel (mandatory for oil & gas assets)
  Column6: EV sensitivity to gross margin at 30%, 35%, 40% (margin threshold gates multiple)

MATT MATHISON LP LETTER NARRATIVE TEMPLATE
  Per entity, draft language for Matt's review:
    "[Entity] generated TTM Adjusted EBITDA of $[X]M, representing [X]% growth vs. prior period.
    Applying a [X]x multiple consistent with [comp set description], the current enterprise value
    is $[X]M. At current equity value, the investment stands at [X]x MOIC and [X]% IRR on a
    [X]-year hold. [One sentence on key operational driver of performance this period.]"
  Methodology disclosure (required in every LP letter):
    "Valuations prepared using TTM Adjusted EBITDA × comparable transaction multiple,
    cross-checked with DCF analysis. Methodology consistent with [prior period] reporting.
    [Any change noted: description and Matt authorization date.]"
```

## Output Format

```markdown
## Portfolio Valuation Summary — [DATE]

**Total Portfolio EV:** $[X]M | **Total Invested:** $[X]M | **Blended MOIC:** [X]x | **Blended IRR:** [X]%

| Entity | Invested | TTM Adj. EBITDA | Multiple | EV | Equity Value | MOIC | IRR | YoY EV Chg |
|--------|----------|-----------------|----------|----|--------------|------|-----|------------|
| Allevio | $Xm | $Xm | X.Xx | $Xm | $Xm | X.Xx | X% | +X% |
| HIVE | $Xm | $Xm | X.Xx | $Xm | $Xm | X.Xx | X% | +X% |
| Column6 | $Xm | $Xm | X.Xx | $Xm | $Xm | X.Xx | X% | +X% |
| **Total** | **$Xm** | | | **$Xm** | **$Xm** | **X.Xx** | **X%** | |

**DCF Cross-Check Variance:** [within/outside 20% threshold — note entities with >20% variance]
**Methodology:** EBITDA × comparable transaction multiple; DCF cross-check annual

### LP Letter Draft Narrative
[Draft language per entity for Matt's review and approval — see template]
```

## Output Contract

- Valuation methodology must be documented and held consistent across every LP reporting period — changing the multiple selection approach or EBITDA definition between reports without Matt's explicit approval is a material LP reporting integrity issue. Any methodology change is logged with a date and Matt's authorization, and the change is disclosed in the LP letter with a before/after bridge showing the valuation impact of the change.
- MOIC and IRR calculations draw EBITDA from QuickBooks as the financial system of record — management-adjusted figures may be used but must be clearly labeled as adjusted and reconciled to the QuickBooks base figure. Using unreconciled management estimates in LP letters without a QuickBooks tie-out is a financial controls failure that creates LP disclosure risk.
- The LP letter valuation narrative is a Matt Mathison deliverable — this skill produces the data and the draft language, but Matt reviews and approves every word before any LP communication goes out. The narrative must be factual, consistent with methodology documentation, and free of promotional language that could create unrealistic return expectations or constitute a material misstatement to limited partners.

## System Dependencies

**Reads from:** QuickBooks (TTM revenue, EBITDA, distributions per entity); deal close documents (acquisition EV, equity invested, debt structure, transaction costs); comparable transaction databases (external reference, user-supplied); prior period valuation records
**Writes to:** LP quarterly report (valuation section); Matt's LP letter draft (M365 document); portfolio dashboard (MOIC/IRR roll-up per entity); valuation methodology log (persistent, versioned record)
**HITL Required:** Matt Mathison reviews and approves all LP-facing valuation narratives before distribution; Dr. Lewis and Matt jointly constitute the valuation committee for annual mark-to-market; entity CEO provides and confirms management accounts used for EBITDA calculation

## Test Cases

- **Golden path:** Annual mark-to-market for Allevio — QuickBooks TTM Adjusted EBITDA pulled and confirmed with entity CEO; 5 healthcare MSO comps refreshed; 8.5x multiple selected (at comp median with rationale); DCF cross-check within 11% variance; MOIC and IRR calculated; LP letter narrative drafted; staged for Matt's review with methodology note confirming no change from prior period.
- **Edge case:** HIVE EBITDA declines materially YoY (-30%) because WTI averaged $54/bbl in the trailing twelve months. EV drops, MOIC compresses below 1.5x unrealized, DCF cross-check diverges from multiple method by 28%. Reconciliation note required; Matt notified before LP report is finalized; WTI sensitivity table at $45/$58/$75 included in LP letter.
- **Adversarial:** Prior LP letter used a revenue multiple for Column6 (pre-EBITDA period). This period Column6 has positive EBITDA. User wants to switch to EBITDA multiple without disclosing the change. Tracker blocks the switch without a methodology change log entry, Matt authorization, and LP letter disclosure language explaining the change and showing the valuation bridge.

## Audit Log

Every valuation calculation is timestamped with the data inputs used, the multiple selected, the comp set referenced, and the name of the person who ran the calculation. Prior period valuations are immutable once the LP report is issued — corrections to prior periods require a separate audit entry noting what changed, why, and Matt's authorization. Matt's approval of LP-facing narratives is logged with the document version he approved and the date of approval.

## Deprecation

This skill is retired when MBL adopts a fund accounting platform (e.g., Allvue, Cobalt, or equivalent) that provides native portfolio valuation, LP reporting, and MOIC/IRR calculation with QuickBooks integration. Retire only after the replacement platform has produced at least two complete LP reporting cycles that Matt has reviewed, approved, and distributed to LPs — one cycle is not sufficient to validate methodology consistency.
