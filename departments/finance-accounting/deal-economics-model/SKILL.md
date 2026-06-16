---
name: deal-economics-model
description: "Model the economics of a deal or investment. Use when the user says 'deal economics', 'model the deal', 'investment returns', 'deal return model', 'acquisition economics', 'deal ROI', 'model the acquisition', 'deal analysis', 'investment model', 'IRR calculation', 'MOIC calculation', 'entry and exit model', or 'how does the deal look financially'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <deal/company name>] [--deal-type <acquisition|investment|partnership|licensing>] [--entry-price <dollar amount>]"
---

# Deal Economics Model

Model the financial economics of a deal — acquisition, investment, partnership, or licensing — to determine whether the returns justify the risk, price, and capital deployment. At MBL, deals are evaluated on IRR, MOIC, and payback period, with a clear-eyed assessment of entry price, growth assumptions, and exit scenarios. A deal that looks great at face value often looks different when the leverage, the exit multiple, and the bear case assumptions are modeled properly.

## When to Use
- MBL is considering acquiring or investing in a new company or asset
- Matt Mathison asks "what do the economics look like on this deal?"
- Evaluating a deal that has been sourced through the deal pipeline
- A portfolio company wants to make an acquisition or licensing deal
- Modeling returns for an LP investment being considered
- Pre-term sheet analysis — does the proposed price generate acceptable returns?

## Deal Economics Framework

```
Key return metrics:

IRR (Internal Rate of Return): The annualized return on invested capital.
  MBL target: >20% IRR for control investments; >15% for minority
  
MOIC (Multiple on Invested Capital): Total cash returned / total cash invested
  MBL target: >2.5× MOIC over the holding period
  
Payback Period: When do we get our investment back?
  Target: <5 years to full payback (sooner is better)

Entry valuation multiples (common):
  EBITDA multiple: Enterprise Value / EBITDA (operating company acquisitions)
  Revenue multiple: EV / Revenue (growth-stage companies)
  Asset value: For oil & gas — PV10 / reserve value

Exit assumptions:
  Exit multiple: At what multiple will the company be sold?
  Exit timing: How many years until exit?
  Exit EBITDA (at exit): EBITDA × growth trajectory
```

## Output Format

```markdown
# Deal Economics Model — <Company / Deal Name>
**Deal type:** [Acquisition / Minority Investment / Platform Add-on / Licensing / LP Investment]
**Prepared by:** Dr. John Lewis | **Date:** <Date>
**Status:** Preliminary / Pre-LOI / Pre-Closing / Final

---

## Deal Terms (Input Assumptions)

| Term | Value | Notes |
|------|-------|-------|
| Enterprise value (purchase price) | $[X] | |
| Less: Cash acquired | ($[X]) | |
| Plus: Debt assumed | $[X] | |
| **Equity purchase price** | **$[X]** | = MBL's cash outlay |
| MBL ownership % | [X%] | |
| Seller financing / rollover | $[X] | [Rollover equity % / seller note terms] |
| Deal structure | [All cash / leveraged / earnout] | |
| Closing date (estimated) | <Date> | |

---

## Business Snapshot (at Entry)

| Metric | Value | Source |
|--------|-------|--------|
| Revenue (LTM) | $[X] | [Financials / CIM / Management] |
| Revenue growth rate | [X%] | [Last 3 years / projected] |
| EBITDA (LTM) | $[X] | |
| EBITDA margin | [X%] | |
| Entry EBITDA multiple | [X.X]× | EV $[X] / EBITDA $[X] |
| Entry revenue multiple | [X.X]× | EV $[X] / Revenue $[X] |
| Debt (at closing) | $[X] | [Assumed / new facility] |
| Cash at closing | $[X] | [Net of deal fees] |

---

## Growth Model (Base Case)

| Year | Revenue | Growth | EBITDA | Margin | Free Cash Flow |
|------|---------|--------|--------|--------|---------------|
| Year 0 (Entry) | $[X] | — | $[X] | [X%] | — |
| Year 1 | $[X] | [X%] | $[X] | [X%] | $[X] |
| Year 2 | $[X] | [X%] | $[X] | [X%] | $[X] |
| Year 3 | $[X] | [X%] | $[X] | [X%] | $[X] |
| Year 4 | $[X] | [X%] | $[X] | [X%] | $[X] |
| Year 5 | $[X] | [X%] | $[X] | [X%] | $[X] |

**Key growth assumptions:**
1. Revenue growth: [Specific driver — e.g., "New market expansion adds [N] new clients at $[X] per year starting Year 2"]
2. Margin trajectory: [Why margins expand/contract from entry to exit]
3. CapEx and working capital: [Investment needed to support the growth — not just P&L]
4. Biggest assumption risk: [The assumption that, if wrong, most changes the return]

---

## Exit Analysis

| Exit scenario | Exit year | Exit EBITDA | Exit multiple | Enterprise value | Equity value | MOIC | IRR |
|--------------|----------|------------|--------------|----------------|-------------|------|-----|
| Bear (poor exit) | Year [N] | $[X] | [X.X]× | $[X] | $[X] | [X.X]× | [X%] |
| Base (target exit) | Year [N] | $[X] | [X.X]× | $[X] | $[X] | **[X.X]×** | **[X%]** |
| Bull (strong exit) | Year [N] | $[X] | [X.X]× | $[X] | $[X] | [X.X]× | [X%] |

**Equity value = Enterprise value − Debt at exit + Cash at exit**
**MOIC = Equity value received / Equity invested**
**IRR = Internal rate of return on equity cash flows (entry → distributions + exit proceeds)**

---

## Cash Flow Waterfall

| | Year 0 | Year 1 | Year 2 | Year 3 | Year 4 | Year 5 (Exit) |
|---|---|---|---|---|---|---|
| Equity invested | ($[X]) | — | — | — | — | — |
| Distributions (operating) | — | $[X] | $[X] | $[X] | $[X] | — |
| Exit proceeds | — | — | — | — | — | $[X] |
| **Total cash flow** | **($[X])** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **$[X]** |
| **Cumulative cash** | **($[X])** | | | | **$0** | **$[X]** |
| **Payback year** | | | | | **Year [N]** | |

---

## Returns Summary

| Metric | Base Case | Bear Case | Bull Case | MBL Target |
|--------|----------|----------|----------|-----------|
| MOIC | [X.X]× | [X.X]× | [X.X]× | ≥2.5× |
| IRR | [X%] | [X%] | [X%] | ≥20% |
| Payback | [N] years | [N] years | [N] years | <5 years |
| Entry multiple | [X.X]× EBITDA | | | |

**Return verdict:** ✅ Meets MBL targets in base case / ⚠️ Meets targets only in bull case / ❌ Doesn't meet targets in any case

---

## Key Risks

| Risk | Probability | Impact | Mitigation |
|------|------------|--------|-----------|
| [Revenue miss — growth slower than modeled] | Medium | ($[X] EBITDA impact / [X.X]× MOIC in bear) | [Earnout structure / monitoring clauses] |
| [Key person dependency] | Low | [High if founder leaves] | [Employment agreement / equity rollover] |
| [Market risk — oil price, regulatory, competitive] | Medium | [Specific] | [Hedge / contract structure / diversification] |
| [Integration risk] | Low | | [Dr. Lewis leads integration with CEO] |

---

## Deal Recommendation

**Recommendation:** ✅ Proceed / ⚠️ Proceed with conditions / ❌ Do not proceed

**Primary rationale:** [1-3 sentences on why the deal does or doesn't meet MBL's investment criteria]
**Price sensitivity:** [At what price would this deal meet targets? At what price does it clearly not?]
**Key condition:** [If proceeding with conditions — what must be true? Earnout? Representation? Price adjustment?]
**Decision needed from Matt Mathison:** [Specific — price approval / proceed to LOI / pass]
```

## Output Contract
- All three scenarios always modeled — a deal model with only a base case is a pitch deck, not a model; the bear case is the most important scenario for Matt Mathison — it answers "what's the worst case if this goes wrong?"; the bear case must be genuinely adverse, not a mildly conservative version of the base
- Returns always compared against MBL targets (>20% IRR, >2.5× MOIC) — every deal model must state explicitly whether the returns meet MBL's investment criteria in the base case; if they only meet criteria in the bull case, that's a flag; no deal should proceed without Matt Mathison explicitly acknowledging the return profile
- Cash flow waterfall always shows payback — when does MBL get its investment back? This is especially important for LP-funded investments where liquidity timing matters
- Key risks always paired with mitigations — identifying risks without mitigations is worry, not analysis; every material risk must be paired with a specific action that addresses it (structural mitigations like earnouts or representations, operational mitigations like insurance or contracts)
- HITL required: Dr. Lewis builds the model; Matt Mathison reviews before any term sheet or LOI; all capital commitments >$25K require Matt Mathison approval; acquisitions require board approval; LP-funded investments require LP notification per fund documents

## System Dependencies
- **Reads from:** Target company financials (CIM, audited statements, management accounts), MBL deal criteria, comparable company data, market multiples data
- **Writes to:** Deal model (SharePoint/Finance/Deals/<Deal Name>/); investment committee memo; Matt Mathison brief
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews; board approves acquisitions; LP notification per fund documents for LP-funded investments

## Test Cases
1. **Golden path:** Potential add-on acquisition for Allevio — competing healthcare MSO with 8 practices, $1.8M revenue, $320K EBITDA → Entry price: $1.6M (5.0× EBITDA); equity investment: $1.1M (balance seller financed at 5%); Year 5 exit model: EBITDA grows to $580K at 12% average growth; exit at 5.5× = $3.19M enterprise value; debt at exit: $0 (paid down from cash flow); MOIC: $3.19M / $1.1M = 2.9× (above 2.5× target); IRR: 23% (above 20% target); payback: Year 4; bear case (no growth, 4× exit): MOIC 1.6×, IRR 10% — below target; recommendation: Proceed to LOI with earnout structure — 20% of purchase price (=$320K) tied to Year 2 EBITDA target of $380K; this protects downside if growth stalls; Matt Mathison decision: approve LOI at $1.6M with earnout
2. **Edge case:** A deal looks great in the model but the entry multiple is 10× EBITDA (well above MBL's typical range) → flag the valuation immediately: "At 10× EBITDA, this deal requires [X%] EBITDA growth over [N] years just to exit at the same multiple and hit a 2.5× MOIC. The growth assumption required ([X%/year]) is [above / at / below] this company's historical growth rate of [X%]. Risks to the return are material in the bear case. Recommend: (1) negotiate price down to [X]× EBITDA or lower; (2) restructure with earnout for growth above baseline; (3) pass." High entry multiples require high conviction in growth, which must be substantiated
3. **Adversarial:** A seller presents management projections that show dramatic growth in Year 3 due to a "product launch" that isn't yet developed → flag the unverified assumption: "The Year 3 revenue inflection requires a product launch that is currently in development with no confirmed timeline or customer commitments. In our model, we exclude this upside from the base case (it's in the bull case only). The deal economics without the Year 3 product launch: MOIC [X.X]×, IRR [X%]. If the product launches as projected, returns improve to [X.X]× and [X%]. Recommend: structure a portion of the purchase price as an earnout tied to the Year 3 product revenue milestone." Never build a deal model on unverified seller projections without segregating them from the base case

## Audit Log
Deal models retained by deal name and date. Assumption sets retained with each version. Matt Mathison reviews and decisions documented. LOI and closing approvals retained. Deal outcome (actual vs. modeled returns) tracked for each closed deal.

## Deprecation
Retire when MBL builds an investment team with dedicated deal professionals who own financial modeling and deal evaluation as a core function, and Dr. Lewis's role shifts to infrastructure and AI tooling rather than deal modeling.
