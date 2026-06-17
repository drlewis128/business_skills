---
name: fpa-fx-exposure-analyzer
description: "Analyze foreign exchange exposure and currency risk for portfolio companies. Use when the user says 'FX exposure', 'currency risk', 'foreign exchange risk', 'FX hedging', 'currency hedging', 'USD exposure', 'CAD exposure', 'currency analysis', 'exchange rate risk', 'FX impact', 'international revenue risk', 'cross-border payment risk', 'currency translation', 'FX sensitivity', 'hedge', 'FX analysis', 'foreign currency', 'currency mismatch', 'FX policy', or 'foreign exchange policy'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--currency <CAD|EUR|GBP|other>] [--exposure-type <revenue|cost|both>] [--action <analyze|model|policy>]"
---

# FX Exposure Analyzer

Analyze and document foreign exchange exposure for MBL portfolio companies — quantifying currency risk where it exists and recommending hedging or operational policies where the exposure is material. As of current portfolio composition, MBL's primary FX exposure context is limited: Allevio, HIVE, and Column6 operate predominantly in USD. However, Column6's programmatic advertising business may transact with international advertisers or agency holding companies that bill in non-USD currencies; HIVE's WTI price is USD-denominated but influenced by global commodity markets; and any future acquisition could introduce meaningful FX exposure. This skill is the governance framework for FX awareness across the portfolio.

## When to Use
- A portfolio company begins receiving non-USD revenue or paying non-USD costs
- Column6 wins an international advertiser or agency paying in a non-USD currency
- A potential M&A target has material non-USD revenue or costs
- Annual financial risk review — confirm FX exposure status for each portfolio company
- Matt Mathison asks whether any portfolio company has currency risk
- A proposed contract is denominated in a foreign currency

## FX Exposure Framework

```
CURRENT PORTFOLIO FX EXPOSURE STATUS:

  Allevio (Healthcare MSO):
    Revenue: 100% USD (employer group contracts in USD; payer/insurance reimbursements in USD)
    Costs: 100% USD (all staff, supplies, vendors are US-based USD billing)
    FX exposure: NONE currently — Allevio is a domestic US healthcare business
    
  HIVE Partners (O&G, Uinta Basin):
    Revenue: 100% USD (WTI oil price is USD-denominated; domestic pipeline delivery)
    Costs: 100% USD (LOE service contracts, G&A, all US-based)
    FX exposure: NONE directly — however, WTI price is influenced by global supply/demand
      The WTI price sensitivity is covered in fpa-sensitivity-analysis-builder, not FX
      Dr. Lewis classifies WTI commodity risk as a price risk, not a currency risk
      
  Column6 / Siprocal (CTV/Programmatic):
    Revenue: Predominantly USD (most US advertisers pay in USD through US agencies)
    Potential non-USD exposure:
      Canadian advertisers: If Column6 wins Canadian market campaigns through a CAD-billing agency
      International holding company agencies: WPP, Publicis, IPG sometimes consolidate billing in GBP or EUR
      If any invoice is billed in a foreign currency, FX exposure exists
    Costs: 100% USD (all staff, technology vendors, US-based)
    Current FX exposure: MINIMAL — Dr. Lewis confirms annually
    
WHEN FX EXPOSURE BECOMES MATERIAL:
  Material threshold: >5% of revenue or >$100K in non-USD revenue or costs annually
  Below this threshold: Monitor and disclose; no hedging required
  Above this threshold: Analyze and recommend hedging policy

FX EXPOSURE ANALYSIS (for when exposure exists):

  Exposure types:
    Transaction exposure: Revenue contracted in foreign currency — will the FX rate change between
                          contract signing and cash receipt? Who bears the risk?
    Translation exposure: If a portfolio company has a foreign subsidiary, its financial statements
                          are translated to USD for consolidation — exchange rate changes affect USD value
    
  FX risk quantification:
    Annual non-USD revenue (or costs): $[X]K
    Functional currency: USD (all MBL portfolio companies)
    Currency pair: USD/[XXX] (e.g., USD/CAD)
    Historical volatility: [X]% annual volatility in the currency pair
    Worst-case (95th percentile annual move): [X]% unfavorable
    FX exposure value at risk: Non-USD revenue × worst-case FX move = $[X]K at risk
    
  Hedging options (if material exposure exists):
    Natural hedge: Match non-USD revenue with non-USD costs in the same currency (rarely available)
    Forward contracts: Lock in the exchange rate for a specific future date
      Cost: Usually small (the difference between forward rate and spot rate)
      Benefit: Eliminates FX uncertainty on the hedged amount
    FX options: Right but not obligation to exchange at a set rate
      Cost: Option premium (typically 1-3% of the notional)
      Benefit: Locks in downside protection while preserving upside
    Policy hedge: Require all international contracts to be billed in USD (eliminate exposure at source)
      Dr. Lewis recommendation: Preferred for portfolio companies below $20M revenue; avoids complexity
      
  Hedging policy recommendation:
    For small FX exposures (<$100K annually): Require all contracts denominated in USD (policy hedge)
    For material FX exposures ($100K-$500K annually): Consider natural hedges; evaluate forward contracts
    For large FX exposures (>$500K annually): Formal hedging program; consult treasury advisor
    MBL portfolio companies at current scale: Policy hedge (all contracts in USD) is the appropriate approach
```

## Output Format

```markdown
# FX Exposure Analysis — [Entity]
**Date:** [Date] | **Prepared by:** Dr. Lewis | **Review frequency:** Annual

---

## FX Exposure Summary

| Entity | Revenue Currency | Cost Currency | Non-USD Exposure | Material? |
|--------|----------------|--------------|-----------------|----------|
| Allevio | 100% USD | 100% USD | None | No |
| HIVE Partners | 100% USD | 100% USD | None | No |
| Column6 | ~95% USD | 100% USD | [If any] | [Yes/No] |
| **Portfolio Total** | | | $[X]K non-USD | [Yes/No] |

---

## Exposure Detail (if any non-USD exposure exists)

| Contract / Revenue Source | Currency | Annual Amount | USD Equivalent | FX Risk (±10%) |
|--------------------------|---------|--------------|---------------|----------------|
| [Canadian agency — Q4 campaigns] | CAD | CAD [X]K | USD [X]K | ±$[X]K |
| **Total non-USD exposure** | | | **USD [X]K** | **±$[X]K** |

---

## Recommendation

**[No material FX exposure]** — Annual FX review confirms all portfolio company revenues and costs are USD-denominated. No hedging required.

**OR**

**[Material FX exposure identified]** — [X] of annual Column6 revenue (~[X]%) is invoiced in [currency]. At ±10% currency volatility, annual P&L risk is ±$[X]K.

**Recommended action:** [Require all contracts billed in USD going forward / Evaluate forward contracts for existing non-USD exposure / Consult treasury advisor]
```

## Output Contract
- Policy hedge first — for MBL portfolio companies at their current scale, the recommended approach to FX risk is the simplest: require all contracts to be denominated in USD; this eliminates the transaction exposure before it exists; column6 sales team should always negotiate USD-denominated contracts with international advertisers and agency holding companies; if a buyer insists on their local currency, Dr. Lewis evaluates whether the contract is large enough to warrant hedging complexity — below $100K, the simplest answer is often to decline the currency and require USD
- Distinguish currency risk from commodity risk — HIVE's exposure to WTI price volatility is a commodity price risk, not a currency risk; WTI is priced in USD; a change in the WTI price is modeled in the sensitivity analysis and scenario planner; Dr. Lewis does not conflate commodity price risk with FX risk; if HIVE were to sell oil into a foreign market and receive non-USD payment (which it does not currently), that would be FX risk
- Annual confirmation is sufficient for current portfolio — at the current portfolio scale and domestic focus, an annual FX exposure confirmation ("confirmed: no material non-USD exposure across the portfolio") is sufficient documentation; this confirmation is included in the annual financial risk review and filed in SharePoint; if any portfolio company begins a contract that introduces non-USD exposure, Dr. Lewis immediately triggers an FX analysis regardless of the annual schedule
- HITL required: Dr. Lewis conducts the annual review; any new non-USD contract must be disclosed to Dr. Lewis before signing (CEO responsibility); hedging decisions (if any) require Matt Mathison authorization; Dr. Lewis does not enter into FX forward contracts or options without Matt Mathison authorization and outside counsel or treasury advisor input

## System Dependencies
- **Reads from:** Existing contracts for all portfolio companies (for currency denomination confirmation); QuickBooks multi-currency reports (if any non-USD transactions have been recorded); Column6 campaign contracts and insertion orders (for currency review); bank statements (any non-USD transactions); customer contracts and MSAs (for currency clauses); any new contract brought by the CEO for review
- **Writes to:** Annual FX exposure report (SharePoint/Finance/MBL/RiskManagement/[YYYY]_FXExposureReport.md); financial risk register (annual financial risk review summary); board financial package (risk section — FX exposure confirmation or disclosure); if hedging is implemented: hedge documentation and accounting records (per ASC 815 hedge accounting requirements)
- **HITL Required:** Dr. Lewis reviews; CEO discloses any new non-USD contracts before signing; Matt Mathison authorizes any hedging instruments or treasury management decisions; outside counsel / treasury advisor consulted before any hedge contract is entered

## Test Cases
1. **Golden path:** Annual FX exposure review for all three portfolio companies → Dr. Lewis reviews all existing contracts: Allevio — all employer group contracts denominated in USD; all vendor contracts in USD; collections from payers in USD (Medicare/Medicaid/commercial insurance all USD); FX exposure: none; HIVE — all oil sale agreements priced in USD (WTI-referenced); all LOE contracts in USD; FX exposure: none (WTI commodity risk is price risk, not currency risk); Column6 — reviews all 42 active campaign insertion orders: 40 are USD-denominated; 2 are from a Canadian agency billing in CAD (total CAD 47K = USD ~35K at current rate); Dr. Lewis assessment: "Column6 has USD ~$35K of CAD-denominated revenue — 1.5% of revenue. This is below the $100K material threshold. Recommendation: require the Canadian agency to bill in USD in the next contract cycle. No hedging required." Annual FX exposure report: no material exposure across portfolio
2. **Edge case:** Column6 wins a $280K campaign with a UK-based international holding company agency billed in GBP → Dr. Lewis is notified before the contract is signed (CEO correctly disclosed it): $280K GBP at current USD/GBP = ~USD $354K; this exceeds the $100K material threshold; Dr. Lewis analyzes: the campaign runs Q1-Q2 (6 months); GBP/USD volatility: historically ~8% annually = ~5.7% over 6 months; worst-case (95th percentile): GBP depreciates 10% vs. USD in 6 months; FX risk: $354K × 10% = −$35K vs. current equivalent; Dr. Lewis recommendation: "This is a material FX exposure given the size. Three options: (1) Negotiate the contract in USD (cleanest — eliminates the risk); (2) Accept GBP and enter a 6-month USD/GBP forward contract to lock in the rate (~0.5% cost = $1.77K to eliminate $35K risk); (3) Accept the FX risk (EBITDA at risk is $35K — 13% of current EBITDA). Given this is Column6's first large international contract, I recommend option 1 (USD denomination) or option 2 (forward contract). I need Matt Mathison's authorization for option 2 before we proceed." Matt Mathison reviews; approves negotiating USD denomination as the first step
3. **Adversarial:** The Column6 CEO has already signed a CAD-denominated contract for $85K CAD without disclosing it to Dr. Lewis → Dr. Lewis discovers it during the monthly close when a QuickBooks entry shows a CAD-denominated AR: "I see we have a CAD-denominated AR from [Agency] for CAD 85K — this wasn't disclosed before signing per our policy. I need to (1) assess the current FX exposure, (2) decide whether to hedge the remaining receivable period, and (3) document this for the financial risk register. Going forward, any non-USD contract must come to me before signing so I can evaluate the FX exposure and recommend the appropriate treatment. I'll get you the FX analysis by end of day. Current exposure: CAD 85K = USD ~$63K; USD/CAD has been stable, so the risk is modest; I recommend we collect this invoice as quickly as possible (accelerate the payment terms) to minimize the window of FX exposure." Dr. Lewis re-enforces the disclosure policy with the CEO

## Audit Log
All annual FX exposure reports retained. All non-USD contracts identified and their currency retained. Any hedging instruments entered: documentation, counterparty, notional, term, mark-to-market retained monthly. USD/non-USD exchange rate at contract signing vs. at settlement retained (to measure actual FX impact on closed positions). Policy breach disclosures documented.

## Deprecation
Retire when MBL Partners has a portfolio company with material (>$500K) annual non-USD exposure that warrants a formal treasury management policy — at which point outside treasury advisory should be engaged and a formal hedging program implemented.
