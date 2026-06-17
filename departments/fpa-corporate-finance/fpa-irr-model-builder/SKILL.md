---
name: fpa-irr-model-builder
description: "Build IRR and MOIC investment return models for PE and operational investments. Use when the user says 'IRR', 'internal rate of return', 'MOIC', 'multiple on invested capital', 'return model', 'investment return', 'returns analysis', 'calculate IRR', 'model the returns', 'exit return', 'equity return', 'equity multiple', 'deal return', 'PE return model', 'investment performance', 'realized return', 'unrealized return', 'return on investment', 'PE economics', 'deal economics', 'levered return', 'equity value', or 'exit analysis'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--investment <name>] [--entry-value <$>] [--equity <$>] [--hold-period <years>] [--exit-multiple <N>] [--action <build|update|present>]"
---

# IRR Model Builder

Build IRR and MOIC return models for MBL Partners investments — calculating the equity return on portfolio company investments under different exit scenarios to support investment decisions, LP reporting, and exit planning. IRR and MOIC are the primary metrics by which PE investors evaluate investment performance; Dr. Lewis models these for each portfolio company at entry, maintains them quarterly as the portfolio companies perform, and produces exit scenario models when a sale or recap is being considered. Matt Mathison uses these models to make hold/exit/reinvestment decisions.

## When to Use
- New investment evaluation — model the expected returns before committing capital
- Quarterly portfolio review — update the current projected IRR and MOIC for each holding
- Exit planning — model exit returns at different multiples and hold periods
- Add-on acquisition — what does the acquisition do to the total portfolio company return?
- Recapitalization — what is the levered return if debt is added to the structure?
- LP reporting — LPs want to see current projected IRR and MOIC for the fund

## IRR / MOIC Model Framework

```
Core return metrics:

  MOIC (Multiple on Invested Capital):
    Formula: Total distributions + Remaining equity value ÷ Equity invested
    Interpretation: A 2.5× MOIC means the investment returned 2.5 times the equity invested
    Time-insensitive: Does not tell you how long capital was at work
    Simple to communicate to LPs and boards
    
  IRR (Internal Rate of Return):
    Formula: =XIRR(all cash flows including entry as negative, dates)
    Cash flows:
      Entry: −Equity invested at date of acquisition (negative because cash out)
      Interim: Any distributions or dividends received (positive)
      Exit: Equity value at exit (positive)
    Interpretation: The annualized return on the equity invested
    Time-sensitive: IRR penalizes long hold periods (same MOIC at 7 years is a much lower IRR than at 4 years)
    Industry standard for PE performance evaluation
    
  Gross vs. Net IRR:
    Gross IRR: Before management fees and carried interest (what the portfolio generates)
    Net IRR: After management fees and carry (what LPs actually receive)
    MBL reports both; LPs care about Net IRR
    
  DPI (Distributed to Paid-In):
    Formula: Total distributions ÷ Equity invested
    Answers: How much cash has been returned relative to what was invested?
    DPI of 1.0× means all invested capital has been returned (in cash)
    RVPI (Residual Value to Paid-In): Remaining equity value ÷ Equity invested
    DPI + RVPI = TVPI (Total Value to Paid-In) = same as MOIC for a single investment
    
Portfolio company IRR model structure:

  ENTRY:
    Acquisition price (enterprise value)
    Debt at close (existing debt assumed or new acquisition financing)
    Equity invested = Enterprise value − Debt at close + Transaction costs
    Entry date (for XIRR calculation)
    Entry EBITDA multiple: EV ÷ LTM EBITDA at close
    
  HOLD PERIOD:
    Annual EBITDA for each year (from financial model — fpa-financial-model-builder)
    Annual debt paydown (from debt schedule — interest + principal)
    Annual distributions to MBL (if any)
    Entry year through exit year (e.g., Year 1-5)
    
  EXIT:
    Exit year selection (Year 3, Year 4, Year 5)
    Exit EBITDA multiple (EV/EBITDA at exit — range of scenarios)
    Exit enterprise value = Exit EBITDA × Exit multiple
    Exit equity value = Exit EV − Remaining debt at exit
    Exit date (for XIRR calculation)
    
  RETURNS CALCULATION:
    Cash flows for XIRR:
      [Entry date]: −Equity invested
      [Interim distribution dates]: +Distribution amount (if any)
      [Exit date]: +Exit equity value
    MOIC = (Exit equity value + Total distributions) ÷ Equity invested
    IRR = XIRR(cash flows, dates)
    
  SCENARIO MATRIX (required output):
    Vary exit multiple (e.g., 6×, 7×, 8×, 9× EV/EBITDA)
    Vary hold period (3 years, 4 years, 5 years)
    Show MOIC and IRR for each combination
    Highlight the Base case (most likely exit year and multiple)
    
  SENSITIVITY FACTORS:
    How does IRR change if EBITDA growth is slower than base case?
    How does IRR change if the exit multiple contracts (e.g., market conditions)?
    What EBITDA growth rate is required to achieve target IRR at the expected exit multiple?
    
  MBL TARGET RETURNS:
    Target gross IRR: >20% (minimum acceptable return)
    Target gross MOIC: >2.0× (minimum acceptable multiple)
    Strong performance: IRR >25%; MOIC >2.5×
    Exceptional: IRR >30%; MOIC >3.0×
```

## Output Format

```markdown
# Investment Return Model — [Company Name]
**Entry date:** [Date] | **Entry EV:** $[X]M | **Equity invested:** $[X]M | **Entry EBITDA:** $[X]M | **Entry multiple:** [X.X]×
**Model updated:** [Date] | **LTM EBITDA (current):** $[X]M | **Unrealized equity value:** $[X]M (at [X.X]× exit multiple)

---

## Return Matrix — MOIC (Base Case: Row / Column highlighted)

| Exit Year → | Year 3 ([YYYY]) | Year 4 ([YYYY]) | Year 5 ([YYYY]) |
|-------------|----------------|----------------|----------------|
| Exit at 6× EV/EBITDA | [X.X]× | [X.X]× | [X.X]× |
| Exit at 7× EV/EBITDA | [X.X]× | [X.X]× | [X.X]× |
| **Exit at 8× EV/EBITDA (Base)** | **[X.X]×** | **[X.X]×** | **[X.X]×** |
| Exit at 9× EV/EBITDA | [X.X]× | [X.X]× | [X.X]× |

---

## Return Matrix — IRR

| Exit Year → | Year 3 | Year 4 | Year 5 |
|-------------|--------|--------|--------|
| Exit at 6× | [X]% | [X]% | [X]% |
| Exit at 7× | [X]% | [X]% | [X]% |
| **Exit at 8× (Base)** | **[X]%** | **[X]%** | **[X]%** |
| Exit at 9× | [X]% | [X]% | [X]% |

---

## Base Case Detail (Year [N] Exit at [X]× EV/EBITDA)

| | Amount |
|--|--------|
| Exit EBITDA (Year N) | $[X]M |
| Exit EV (@ [X.X]× EBITDA) | $[X]M |
| Less: Remaining debt at exit | ($[X]M) |
| Exit equity value | $[X]M |
| Plus: Interim distributions | $[X]M |
| **Total return** | **$[X]M** |
| **Equity invested** | **$[X]M** |
| **MOIC** | **[X.X]×** |
| **IRR** | **[X]%** |
| **Hold period** | **[N] years** |

---

## Current Status

| Metric | Entry | Current | Change |
|--------|-------|---------|--------|
| EBITDA | $[X]M | $[X]M | +[X]% |
| Projected exit EV | $[X]M | $[X]M | +[X]% |
| Projected equity value | $[X]M | $[X]M | +[X]% |
| Projected MOIC | [X.X]× | [X.X]× | ↑/↓ |
| Projected IRR | [X]% | [X]% | ↑/↓ |
```

## Output Contract
- IRR and MOIC together, always — IRR without MOIC is incomplete (a 35% IRR on a 6-month holding that returns 1.15× is not a meaningful PE investment); MOIC without IRR is incomplete (a 3× MOIC over 10 years is a 12% IRR — below target); Dr. Lewis always presents both; the return matrix shows both metrics in separate tables; Matt Mathison looks at both before any hold/exit decision
- Time is an enemy of IRR — the most common IRR mistake is ignoring the hold period effect; every additional year of hold at the same MOIC dramatically reduces IRR; holding a 2.0× MOIC investment for 3 years = 26% IRR; holding the same investment for 6 years = 12% IRR; Dr. Lewis surfaces this explicitly in the return matrix: "At Year 3, a 7× exit produces 28% IRR; waiting until Year 5 at the same multiple produces 18% IRR — 10 percentage points lower just from the time effect"; this frames the exit timing decision correctly
- Update the model quarterly with actual EBITDA — the return model is not a one-time calculation at entry; it is a living model that reflects the current EBITDA performance of the business; if Allevio is running ahead of the entry underwriting (EBITDA $850K vs. $700K underwritten), the projected MOIC and IRR improve; if HIVE is running behind (EBITDA $250K vs. $380K underwritten due to WTI), the projected MOIC and IRR decline; Dr. Lewis updates the return model quarterly and presents the current vs. entry return projection to Matt Mathison
- HITL required: Dr. Lewis builds and maintains the IRR models; Matt Mathison reviews the return model quarterly (portfolio company scorecard); any exit or recapitalization decision must be based on a current return model reviewed by both Dr. Lewis and Matt Mathison; Matt Mathison makes the hold/exit decision; outside legal and banking counsel engaged for any transaction; Dr. Lewis does not make exit or recap decisions unilaterally

## System Dependencies
- **Reads from:** Acquisition documents (entry price, debt structure, equity invested); financial model (fpa-financial-model-builder — for projected EBITDA by year); QuickBooks actuals (LTM EBITDA); debt schedule (current outstanding balance, paydown pace); market comparable data (current EV/EBITDA multiples in sector — for exit multiple calibration); LP agreement (carry structure, management fees for net IRR calculation)
- **Writes to:** Return model file (SharePoint/Finance/MBL/PortfolioReturns/<Company>/ReturnModel_[Date].xlsx); LP quarterly report (projected IRR and MOIC by portfolio company); board financial package (portfolio performance section); exit preparation materials (data room); investment committee memos; Matt Mathison quarterly portfolio review
- **HITL Required:** Dr. Lewis builds and maintains; Matt Mathison reviews quarterly; any exit or recap requires Matt Mathison decision + legal and banking counsel; LP reporting reviewed by Matt Mathison before release; no exit/recap executed without Matt Mathison written authorization

## Test Cases
1. **Golden path:** Allevio return model at Q2 Year 3 → Entry: MBL acquired Allevio at $4.2M EV with $1.8M debt, $2.4M equity invested; entry EBITDA $540K (7.8× entry multiple); current LTM EBITDA $820K (+52% above entry); at Year 5 exit: projected EBITDA $1.1M; at 8× exit multiple: Exit EV $8.8M; debt $800K (paid down $1M over 5 years); exit equity $8.0M; MOIC $8.0M ÷ $2.4M = 3.3×; IRR = XIRR([−2.4M, 8.0M], [entry date, Year 5 date]) = 27%; Matt Mathison review at Q2 shows strong trajectory; decision: hold to Year 5 for maximum value; return matrix also shows Year 4 exit at 8×: MOIC 2.9×, IRR 30% — higher IRR due to shorter hold
2. **Edge case:** HIVE's EBITDA has underperformed — entry EBITDA was $420K; current LTM is $260K → return model update: exit EBITDA projection revised down; at Year 4 exit at 5× (lower multiple due to commodity price exposure): Exit EV $1.3M; debt $900K remaining; exit equity $400K; MOIC 0.8× — below invested capital of $500K equity; IRR: negative; Dr. Lewis flags immediately to Matt Mathison: "HIVE return model shows below-1× MOIC at current trajectory if WTI remains at $58/bbl. At $67/bbl recovery, MOIC recovers to 1.6× at Year 5. Recommend: (1) assess WTI recovery probability over next 12 months; (2) model a HIVE recapitalization or sale at current value vs. holding for WTI recovery; (3) this is a strategic decision that requires your direction." Matt Mathison reviews and decides the path
3. **Adversarial:** An investment banker presents a return model showing 35% IRR on a proposed acquisition → Dr. Lewis audits the banker's model: finds the banker used a 10× exit multiple (aggressive vs. current market comps of 7-8× in this sector); finds the banker assumed EBITDA grows 25%/year (aggressive vs. the 15%/year Dr. Lewis underwrites for this type of business); Dr. Lewis re-runs at 8× exit multiple and 12% EBITDA growth: IRR drops to 18% (still above 15% threshold but the gap is significant); Dr. Lewis presents to Matt Mathison: "The banker's 35% IRR assumes 10× exit multiple and 25% annual EBITDA growth — both aggressive. At our underwriting (8× exit, 12% EBITDA growth), IRR is 18%. Still above our 20% threshold? No — just below it. We need to either negotiate a lower entry price or validate the 25% growth assumption before proceeding." Matt Mathison makes the decision with full information

## Audit Log
All return models retained with version history (quarterly updates). Entry model vs. current model comparison maintained. Exit scenario models retained permanently. LP reporting values retained. Any exit or recap decision records retained permanently. Post-exit actual return vs. modeled return calculated and retained (for investment process improvement).

## Deprecation
Retire when MBL Partners has a dedicated investment professional managing portfolio returns — with Dr. Lewis maintaining the financial model inputs and Matt Mathison approving all hold/exit decisions.
