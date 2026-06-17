---
name: fpa-exit-value-model
description: "Model exit valuations and returns across multiple scenarios for portfolio company sales. Use when the user says 'exit model', 'exit valuation', 'exit value', 'model the exit', 'what are we worth', 'enterprise value', 'exit EBITDA', 'sale price', 'exit multiple', 'exit planning model', 'how much will we get', 'exit return', 'transaction value', 'exit scenarios', 'sale process model', 'what would a buyer pay', 'exit analysis', 'exit readiness model', 'company value', 'valuation model', or 'exit IRR'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--exit-year <YYYY>] [--purpose <planning|process|lp>] [--action <build|update|present>]"
---

# Exit Value Model

Model exit valuations and investment returns for MBL portfolio companies — calculating enterprise value, equity value, and investor returns under multiple scenarios to support exit timing decisions, sale process preparation, and LP reporting. The exit model is the culmination of the entire FP&A function: all the budgeting, forecasting, unit economics, and operational improvement work ultimately produces the EBITDA that drives the exit valuation. Dr. Lewis maintains an exit model for each portfolio company and updates it when the financial model is updated or when the M&A market context changes materially.

## When to Use
- Exit planning — evaluate the optimal timing and structure of a potential sale
- Sale process initiation — prepare the financial case for buyer conversations
- LP reporting — quarterly and annual reporting includes projected exit value
- Investment committee — Matt Mathison decision on hold vs. exit
- A significant business event changes the EBITDA trajectory (positive or negative)
- M&A market multiples shift materially (contraction or expansion in the sector)

## Exit Value Model Framework

```
Exit valuation methodology:

  METHOD 1 — EBITDA MULTIPLE (primary method for private companies):
    Enterprise Value = LTM EBITDA × EV/EBITDA multiple
    EV/EBITDA multiple sources:
      Comparable company transactions (M&A comps — not public market comps)
      Investment banker guidance (current market clearing multiples in the sector)
      Industry research (healthcare services, O&G, CTV/media)
    Sector multiples (current guidance — update annually from market data):
      Allevio (Healthcare MSO): 7-10× EV/EBITDA (growth-stage MSO platform premium)
      HIVE Partners (O&G): 4-6× EV/EBITDA (commodity exposure discount)
      Column6 (CTV/Programmatic): 6-9× EV/EBITDA (growth premium; digital media)
    
  METHOD 2 — REVENUE MULTIPLE (supplement; used when EBITDA is low or negative):
    Enterprise Value = LTM Revenue × EV/Revenue multiple
    Allevio EV/Revenue: 1.5-3.0× (healthcare services)
    HIVE EV/Revenue: 1.0-2.0× (commodity revenue)
    Column6 EV/Revenue: 1.0-2.5× (digital media; growth-adjusted)
    Note: Revenue multiples produce wide ranges; use only as a sanity check on the EBITDA multiple
    
  METHOD 3 — DCF (discounted cash flow):
    For longer-horizon exit models or when EBITDA doesn't capture free cash flow well
    Discount rate: 15-20% (reflects private company risk)
    Terminal value: Gordon Growth Model (FCF × (1+g) ÷ (WACC − g); typically 3-5% growth)
    Less useful for small PE portfolio companies; use EBITDA multiple as primary
    
  EQUITY VALUE CALCULATION:
    Enterprise Value (from EBITDA multiple)
    − Total debt (LOC outstanding + term loans)
    − Transaction costs (estimated 2-4% of enterprise value for M&A fees, legal, accounting)
    + Cash (excess cash above operating reserve)
    = Equity Value (to MBL Partners as the seller)
    
  NORMALIZED vs. LTM EBITDA:
    LTM EBITDA: Trailing 12-month actual EBITDA (from financial statements)
    Normalized EBITDA: LTM EBITDA adjusted for non-recurring items (add-backs)
    Common add-backs: One-time legal fees; excess management compensation above market; 
                      one-time restructuring costs; extraordinary events
    Buyers will pay based on Normalized EBITDA — Dr. Lewis documents all add-backs with supporting rationale
    Add-backs are subject to negotiation; conservative add-backs are defensible; aggressive add-backs get haircut
    
  MANAGEMENT EBITDA vs. GAAP EBITDA:
    Always present both — Management EBITDA (normalized) and GAAP EBITDA (reported)
    The bridge between them = the add-back schedule (documented and defensible)
    Buyers apply a "haircut" to management add-backs that are not clearly supported
    
  EXIT SCENARIO MATRIX:
    Vary: Exit year (Year 3, 4, 5)
    Vary: Exit EBITDA multiple (Bear: sector low; Base: sector median; Bull: sector high)
    Vary: Normalized EBITDA (Base assumption: full add-backs; Conservative: 50% add-backs)
    Output for each scenario: EV, Equity Value, MOIC, IRR
    
  STRATEGIC vs. FINANCIAL BUYER CONTEXT:
    Financial buyers (other PE firms): Pay based on financial model; leverage the business
    Strategic buyers (corporate acquirers in the sector): May pay strategic premium (1.5-2.0× financial buyer price)
      Allevio: Strategic acquirer could be a larger health system, national MSO, or insurance company
      HIVE: Strategic could be a larger O&G operator (acreage consolidation synergy)
      Column6: Strategic could be a larger DSP, SSP, or media conglomerate
    Dr. Lewis models both buyer types in the exit model; Matt Mathison decides which process to run
```

## Output Format

```markdown
# Exit Value Model — [Entity]
**Current status:** [Year N of hold] | **Target exit:** [Year/YYYY or range]
**LTM EBITDA (GAAP):** $[X]M | **Normalized EBITDA (Management):** $[X]M | **Add-backs:** $[X]M
**Model updated:** [Date] | **Prepared by:** Dr. Lewis | **Matt Mathison reviewed:** ✅

---

## Exit Scenario Matrix — Equity Value

|  | Exit Multiple 6× | Exit Multiple 7× | **Exit Multiple 8× (Base)** | Exit Multiple 9× | Exit Multiple 10× |
|--|-----------------|-----------------|----------------------------|-----------------|------------------|
| **Year 3 ([YYYY])** | $[X]M | $[X]M | **$[X]M** | $[X]M | $[X]M |
| **Year 4 ([YYYY])** | $[X]M | $[X]M | **$[X]M** | $[X]M | $[X]M |
| **Year 5 ([YYYY])** | $[X]M | $[X]M | **$[X]M** | $[X]M | $[X]M |

*(After estimated transaction costs of [X]% and remaining debt of $[X]M)*

---

## Exit Scenario Matrix — MOIC

|  | 6× | 7× | **8×** | 9× | 10× |
|--|----|----|--------|----|----|
| **Year 3** | [X.X]× | [X.X]× | **[X.X]×** | [X.X]× | [X.X]× |
| **Year 4** | [X.X]× | [X.X]× | **[X.X]×** | [X.X]× | [X.X]× |
| **Year 5** | [X.X]× | [X.X]× | **[X.X]×** | [X.X]× | [X.X]× |

---

## Add-Back Schedule (Normalized EBITDA Bridge)

| Item | LTM Amount | Add-Back | Normalized | Defensibility |
|------|-----------|---------|-----------|--------------|
| GAAP EBITDA | — | — | $[X]M | — |
| One-time legal expense | $[X]K | +$[X]K | | High ✅ |
| Excess management compensation | $[X]K | +$[X]K | | Medium ⚠️ |
| One-time recruiting cost | $[X]K | +$[X]K | | High ✅ |
| **Normalized EBITDA** | — | **+$[X]K** | **$[X]M** | |

*Buyers will apply due diligence to each add-back. Conservative add-backs are more defensible.*

---

## Base Case Exit Summary (Year [N], [X.X]× Multiple)

| Item | Amount |
|------|--------|
| Normalized EBITDA | $[X]M |
| Exit EV (@ [X.X]× EBITDA) | $[X]M |
| Less: Remaining debt | ($[X]M) |
| Less: Transaction costs ([X]%) | ($[X]M) |
| **Equity Value to MBL** | **$[X]M** |
| **Equity Invested** | **$[X]M** |
| **MOIC** | **[X.X]×** |
| **Gross IRR** | **[X]%** |

**Strategic buyer premium scenario:** At 1.5× financial buyer price = $[X]M equity ([X.X]× MOIC)
```

## Output Contract
- Conservative add-backs only — in PE exits, management presents a Normalized EBITDA that includes add-backs to GAAP EBITDA for non-recurring items; buyers' diligence teams will scrutinize every add-back; an add-back that doesn't hold up in diligence (the buyer concludes it was a recurring cost, not a one-time item) is walked back from the purchase price; Dr. Lewis applies the "defensibility test" to every add-back: can we show the invoice and explain clearly why this will not recur?; add-backs that fail the defensibility test are excluded from the normalized EBITDA or disclosed with a flag; a conservative normalized EBITDA that holds up in diligence is worth more than an aggressive one that gets walked back
- Model both financial and strategic buyer scenarios — financial buyer multiples are the floor; strategic buyer multiples are the potential ceiling; Dr. Lewis always models both; the strategic buyer scenario shows the potential upside of a broad sale process; Matt Mathison decides which type of buyer to target (financial vs. strategic vs. both) based on timing, LP preferences, and market conditions; the exit model gives him the financial information to make that decision intelligently
- Update the model with every major EBITDA change — the exit model is only as useful as the EBITDA inputs are current; when the rolling forecast changes materially (fpa-rolling-forecast-updater), the exit model EBITDA inputs are updated; when M&A market multiples shift (investment banker informs Dr. Lewis that healthcare MSO multiples have contracted from 9× to 7× due to market conditions), the exit model multiples are revised and Matt Mathison is notified; an exit model based on stale EBITDA or outdated multiples produces a misleading equity value
- HITL required: Dr. Lewis builds and maintains; Matt Mathison reviews the exit model quarterly (as part of the portfolio performance review); any exit process initiation (engaging an investment banker, running a sale process) requires Matt Mathison direction; Dr. Lewis supports the exit process with financial data and model; outside counsel and investment banker are engaged for any actual transaction; Dr. Lewis does not discuss exit valuations with potential buyers or intermediaries without Matt Mathison's authorization

## System Dependencies
- **Reads from:** Financial model (fpa-financial-model-builder — for LTM EBITDA and forward EBITDA); fpa-irr-model-builder (IRR/MOIC calculations); industry M&A transaction multiples (investment banking comps, industry reports — updated annually); legal/financial due diligence records (for add-back defensibility documentation); debt schedule (current outstanding balance); fpa-benchmarking-analyzer (valuation benchmarks for comparable transactions); add-back documentation (legal invoices, one-time cost receipts)
- **Writes to:** Exit value model (SharePoint/Finance/MBL/ExitPlanning/<Company>/ExitModel_[Date].xlsx); LP quarterly report (projected exit value and return metrics); Matt Mathison quarterly portfolio review; investment committee memo (for hold/exit decisions); exit preparation data room (buyer-facing version with defensible add-back schedule); investment banker materials (when process initiated)
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews quarterly and for any hold/exit decision; exit process requires Matt Mathison direction + outside counsel and investment banker engagement; buyer-facing materials reviewed by Matt Mathison before any distribution; Dr. Lewis does not communicate exit valuation or process details to potential buyers without Matt Mathison authorization

## Test Cases
1. **Golden path:** Allevio Year 3 exit model for the annual LP report → LTM EBITDA $820K; add-backs: one-time HIPAA audit $12K (high defensibility); one-time employment dispute settlement $28K (high defensibility); normalized EBITDA $860K; exit multiples: Allevio sector range 8-10×; base 8.5×; at 8.5×: EV $7.31M; debt $650K; transaction costs 3% = $219K; equity value $6.44M; equity invested $2.4M; MOIC 2.7×; IRR 24% (Year 3 from entry); two-way matrix shows Year 4 exit at 9× = 3.1× MOIC but 20% IRR (time discount); Matt Mathison reviews: "Year 3 at 8.5× gives us 24% IRR. If we hold another year and multiples hold, IRR drops to 20%. The question is whether Allevio can grow EBITDA enough in Year 4 to offset the time discount. If Y4 EBITDA is $1.1M vs. $860K today, the Y4 exit at 8.5× produces: $9.35M EV − $500K debt − $280K costs = $8.57M equity; MOIC 3.6×; IRR 28% — that's better. Decision: hold to Year 4 if EBITDA trajectory is on track." Model supports the hold decision with clear financial rationale
2. **Edge case:** HIVE exit model shows MOIC below 2.0× at all scenarios → At WTI $64/bbl: LTM EBITDA $310K; at 5× multiple: EV $1.55M; debt $400K; costs 3% = $46K; equity $1.1M vs. $500K invested = MOIC 2.2×; at $50/bbl WTI: EBITDA $180K; at 5×: EV $900K; equity $454K; MOIC 0.9× (loss); Dr. Lewis presents to Matt Mathison: "HIVE's exit model shows MOIC 2.2× at current WTI ($64) and 5× multiple — just above threshold. At Bear WTI ($50), MOIC is below 1× (recovery of invested capital at risk). The strategic buyer scenario (larger O&G operator buying the acreage): at 1.5× premium = 3.3× MOIC at current WTI. Recommend: explore strategic buyer interest now, while WTI is at $64 and above the stress level. A strategic sale process takes 6-9 months." Matt Mathison decides to reach out to one or two strategic buyers to test market interest
3. **Adversarial:** The Allevio CEO wants to include $150K of "owner compensation adjustment" add-backs claiming the CEO is paid above market → Dr. Lewis evaluates the defensibility: Allevio CEO compensation: $285K; market range for healthcare MSO CEO at this revenue scale: $220-$280K; the compensation is within market range; Dr. Lewis declines the add-back: "I can't support the $150K compensation add-back — the CEO compensation is within market range for this role at this revenue scale. A buyer's compensation benchmark will show the same thing, and an unsupported add-back that gets walked back in diligence reduces buyer confidence in the entire normalized EBITDA presentation. If the compensation were clearly above market, we'd have a supportable add-back. In this case, it isn't." The add-back is excluded; the normalized EBITDA is conservative and defensible

## Audit Log
All exit models retained by company and date (version history). Add-back schedules and supporting documentation retained permanently. Matt Mathison reviews documented. Exit process records retained permanently (investment banker agreements, process letters, buyer conversations). Final transaction documents retained permanently. Post-close return reconciliation (actual vs. modeled) calculated and retained.

## Deprecation
Retire when MBL Partners engages a dedicated investment banker or M&A advisor for each exit process — with Dr. Lewis maintaining the financial model and add-back schedule and Matt Mathison directing the strategic process.
