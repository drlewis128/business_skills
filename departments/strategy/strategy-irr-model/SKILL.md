---
name: strategy-irr-model
description: "Build IRR and MOIC models for investments, acquisitions, and capital decisions. Use when the user says 'IRR', 'internal rate of return', 'MOIC', 'multiple of invested capital', 'return model', 'investment return', 'build the returns', 'model the returns', 'IRR model', 'return analysis', 'what is the return', 'return on investment', 'cash-on-cash return', 'investment return model', 'calculate the IRR', 'does this deal work', or 'returns analysis'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <acquisition|initiative|portfolio-mark>] [--hold <years>]"
---

# IRR Model

Build IRR and MOIC return models for MBL Partners investment decisions — translating acquisition prices, capital deployments, and exit assumptions into the returns metrics that determine whether a deal meets the MBL investment threshold. IRR (Internal Rate of Return) and MOIC (Multiple of Invested Capital) are the language of PE returns. Every acquisition, every capital deployment, and every exit timing decision has a return profile that can be modeled. At MBL portfolio scale, decisions that don't have an explicit return model are decisions made on intuition rather than discipline — and intuition consistently underperforms compared to disciplined return-driven capital allocation.

## When to Use
- Evaluating an acquisition — does the price work at the return threshold?
- Comparing two investment opportunities — which creates more value?
- Annual portfolio review — where is each company's actual IRR tracking?
- Exit timing decision — does exiting now vs. holding 2 more years improve IRR?
- Capital allocation — which initiative generates the highest IRR?

## IRR/MOIC Framework

```
Core formulas:

  MOIC (Multiple of Invested Capital):
    MOIC = Total cash returned / Invested equity
    Example: $2.4M returned / $1.0M invested = 2.4× MOIC
    Note: MOIC doesn't account for time — 2.4× in 2 years vs. 2.4× in 10 years are very different
    
  IRR (Internal Rate of Return):
    The discount rate at which NPV of all cash flows = 0
    Computed iteratively; measures the annualized return on invested capital over the hold period
    Example: $1.0M in, $2.4M out at year 5 = 19.1% IRR
    MBL threshold: ≥20% IRR at 5-year hold
    
  Relationship between IRR, MOIC, and hold period:
    2.5× MOIC at 5 years = 20.1% IRR (just above MBL threshold)
    2.5× MOIC at 3 years = 35.7% IRR (strong)
    2.5× MOIC at 7 years = 14.1% IRR (below threshold)
    — The same MOIC at a longer hold is a lower IRR; time kills IRR
    
  PE return model structure:
    Year 0: Equity invested (negative cash flow)
    Years 1-N: EBITDA growth path; debt service; distributions (if any)
    Year N (exit): Exit proceeds distributed
    
  Exit value calculation:
    Enterprise Value at exit = Exit EBITDA × Exit multiple
    Equity Value = Enterprise Value − Net Debt at exit
    LP distributions = Equity Value × ownership percentage
    
  EBITDA path to exit (standard model inputs):
    Entry EBITDA: Actual or normalized at close
    Year 1-N EBITDA growth: VCP-driven assumptions; market growth
    Exit EBITDA: Entry EBITDA × growth factor (or specific Year N projection)
    
  Multiple expansion/compression:
    Entry multiple: What was paid at close (from strategy-valuation-model)
    Exit multiple: What a buyer pays at exit
    Multiple expansion: Exit multiple > entry multiple (positive; adds IRR)
    Multiple compression: Exit multiple < entry multiple (negative; reduces IRR)
    Conservative modeling: Assume exit multiple = entry multiple (no expansion)
    
  MBL threshold table:
    Required MOIC by hold period to achieve 20% IRR:
      3 years: 1.73×
      4 years: 2.07×
      5 years: 2.49×
      6 years: 2.99×
      7 years: 3.58×
    — If hold extends 2 years beyond target, required MOIC increases substantially
```

## Output Format

```markdown
# IRR Model — [Investment / Company Name]
**Date:** [Date] | **Analyst:** Dr. John Lewis | **Purpose:** [Acquisition / Initiative / Portfolio mark / Exit timing]
**MBL threshold:** ≥20% IRR / ≥2.5× MOIC at 5-year hold

---

## Investment Summary

| Item | Amount | Notes |
|------|--------|-------|
| Equity invested | $[X]M | [All cash / Leveraged — debt $X at X%] |
| Entry EBITDA | $[X]M | [LTM / Normalized] |
| Entry multiple | [X]× EBITDA | |
| Entry EV | $[X]M | EBITDA × multiple |
| Target hold | [N] years | |
| Target exit | [Year] | |

---

## EBITDA Growth Path

| Year | EBITDA | Growth | Key driver |
|------|--------|--------|-----------|
| Entry (Y0) | $[X]M | — | [Normalized at close] |
| Y1 | $[X]M | [X]% | [VCP initiative — provider add] |
| Y2 | $[X]M | [X]% | [Full provider panel + billing improvement] |
| Y3 | $[X]M | [X]% | [Market growth + operational maturity] |
| Y4 | $[X]M | [X]% | [Stable growth] |
| Y5 (exit) | $[X]M | [X]% | [Planned exit year] |

---

## Return Model

### Base Case (target hold = [N] years)

| Scenario | Exit EBITDA | Exit multiple | EV at exit | Net debt at exit | Equity value | MOIC | IRR |
|---------|------------|--------------|-----------|-----------------|-------------|------|-----|
| Base | $[X]M | [X]× | $[X]M | $[X]M | $[X]M | [X]× | [X]% |
| Downside | $[X]M | [X-0.5]× | $[X]M | $[X]M | $[X]M | [X]× | [X]% |
| Upside | $[X]M | [X+0.5]× | $[X]M | $[X]M | $[X]M | [X]× | [X]% |

**MBL threshold (≥20% IRR / ≥2.5× MOIC):**
- Base: [Passes ✅ / Borderline ⚠️ / Fails ❌] — [X]% IRR / [X]× MOIC
- Downside: [X]% IRR — [Passes / Fails]

### Hold Period Sensitivity

| Hold period | Base MOIC | Base IRR | Threshold met? |
|------------|----------|---------|---------------|
| 3 years | [X]× | [X]% | ✅/❌ |
| 4 years | [X]× | [X]% | |
| 5 years | [X]× | [X]% | |
| 6 years | [X]× | [X]% | |
| 7 years | [X]× | [X]% | |

**Optimal exit window:** Year [N] — [Rationale: IRR peaks before declining as hold extends]

### Price Sensitivity

| Entry price | Entry multiple | Base IRR | Meets threshold? |
|------------|--------------|---------|----------------|
| $[X]M | [X]× | [X]% | ✅ |
| $[X]M (ask) | [X]× | [X]% | ✅/❌ |
| $[X]M | [X]× | [X]% | ❌ |

**Maximum price to maintain ≥20% IRR:** $[X]M ([X]× EBITDA)

---

## Decision Recommendation

**At the proposed price/investment:** IRR [X]% — [Above / Below] threshold
**Recommended maximum price:** $[X]M
**Recommended action:** [Proceed at $X / Counter at $X / Walk if >$X / Approve operating capital]

---

## Matt Mathison Return Brief

[Investment]: Entry $[X]M / [X]× EBITDA. Base case IRR [X]% / MOIC [X]× at [N]-year hold — [above/below] MBL threshold. Downside IRR: [X]% — [holds/fails]. Maximum price: $[X]M. Optimal exit: Year [N] ([X]% IRR). Decision: [Proceed at ask / Counter at $X / Walk above $X / Approve].
```

## Output Contract
- IRR and MOIC both, always — IRR alone understates the benefit of fast exits and understates the penalty of slow ones; MOIC alone ignores time and makes a 7-year 2.5× look equivalent to a 3-year 2.5×; Dr. Lewis presents both metrics in every return model; the investment decision requires understanding both the magnitude of return (MOIC) and the speed of return (IRR); LP hurdle rates are typically IRR-based; LP preference returns and distribution waterfalls are typically MOIC-based; both matter
- The downside case must meet an acceptable floor, not just the base case — a deal that delivers 22% IRR in the base case but 4% in the downside is riskier than it appears; Dr. Lewis presents downside IRR for every investment model; MBL's acceptable downside floor for portfolio companies is capital preservation (MOIC ≥1.0×); for strategic investments (compliance, technology), the floor is the risk-adjusted alternative (leaving the risk unmanaged); if the downside case produces capital loss, that is disclosed explicitly and Matt Mathison decides whether the upside justifies the downside risk
- The hold period sensitivity exposes the IRR cliff — most PE investments have a hold period at which IRR peaks and then declines as the denominators of time work against the numerator of EBITDA growth; showing the IRR at each year of the hold period reveals this peak and enables better exit timing decisions; "holding 2 more years" may look attractive in absolute dollar terms but reduces IRR if the exit multiple doesn't expand commensurately; Dr. Lewis builds the hold period sensitivity table for every portfolio company annually and updates the exit timing recommendation accordingly
- HITL required: Dr. Lewis builds the model; CEO reviews the EBITDA path assumptions for operational accuracy; Matt Mathison reviews the return model for acquisition pricing and capital allocation decisions; Matt Mathison approves all entry price decisions; any decision to extend a hold period beyond the target requires Matt Mathison decision with IRR sensitivity analysis

## System Dependencies
- **Reads from:** Valuation model (strategy-valuation-model), EBITDA projections (QuickBooks + VCP), acquisition price (strategy-m-and-a-screener, strategy-loi-builder), capital allocation request (strategy-capital-allocation), exit assumptions (strategy-exit-planner)
- **Writes to:** Return model (SharePoint/Strategy/<Company>/Returns/); capital allocation analysis (strategy-capital-allocation); acquisition pricing recommendation (strategy-loi-builder); exit timing recommendation (strategy-exit-planner); LP reporting return summary (strategy-lp-reporting)
- **HITL Required:** Dr. Lewis builds; CEO reviews EBITDA path; Matt Mathison reviews and approves all acquisition and material capital deployment return models; Matt Mathison for exit timing decisions

## Test Cases
1. **Golden path:** IRR model for Scottsdale PT Group acquisition → Entry: $750K equity (recommended counter); entry EBITDA: $115K normalized; entry multiple: 6.5×; hold: 5 years; EBITDA path: Y0 $115K → Y1 $130K (billing improvement) → Y2 $155K (full panel + Allevio referral network) → Y3 $175K → Y4 $190K → Y5 $200K; exit at 5 years at 7× EBITDA ($1.4M); equity value: $1.4M (assume debt-free at exit); MOIC: $1.4M / $750K = 1.87×; IRR at 5-year hold: 13.3% — below 20% threshold; standalone, this doesn't meet threshold; but as Allevio tuck-in, Dr. Lewis adds synergy value: Allevio overhead absorption ($25K/yr) + referral network acceleration ($40K/yr additional revenue captured through Allevio's referral relationships); synergy-adjusted EBITDA Y5: $230K; synergy-adjusted exit EV: $1.61M; synergy MOIC: 2.15×; synergy IRR: 23.4% — above threshold; recommendation: approve at $750K with explicit synergy capture plan in VCP; Matt Mathison approves
2. **Edge case:** Portfolio hold period review shows HIVE has hit Year 4 and IRR is declining → IRR at Year 4: 19.2% (just below 20% threshold); if HIVE holds 1 more year and production continues at plan (LOE declining): Year 5 EBITDA $1.1M; exit at 4.5× = $4.95M; MOIC: 2.8× (assuming $1.75M invested equity); IRR Year 5: 22.9% — above threshold; model shows: holding 1 more year with execution on the LOE reduction initiative adds 3.7 points of IRR; recommendation: hold for Year 5 targeted exit (Q1 Year 6); Matt Mathison reviews; approves hold extension; exit plan updated with new target date
3. **Adversarial:** CEO argues "IRR doesn't capture the strategic value of this acquisition" → IRR captures financial return; strategic value is real but must ultimately translate to financial return to be worth the capital; the appropriate response is to model the strategic value: "If this acquisition gives Allevio 3 additional physician referrers generating $40K/year in Allevio patient volume, that's $40K × 22% margin × 7× exit multiple = $61.6K of additional Allevio exit value; add that to the standalone return model"; strategic value that cannot be translated into a financial impact estimate is strategic hope, not strategic value; Dr. Lewis translates all strategic arguments into financial model inputs and presents the updated IRR; if the CEO's strategic logic is sound, the IRR model will reflect it

## Audit Log
All IRR models retained permanently (investment track record). Assumption documentation retained. Entry vs. actual EBITDA path comparison retained annually. Matt Mathison approval records retained. IRR realization vs. model retained at exit (fund performance tracking).

## Deprecation
Retire when MBL develops a CFO or finance function capable of building investment-grade return models — with Dr. Lewis reviewing the assumptions for strategic accuracy and Matt Mathison receiving the same return summary regardless of who builds the model.
