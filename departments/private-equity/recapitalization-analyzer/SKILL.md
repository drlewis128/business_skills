---
name: recapitalization-analyzer
description: "Analyze dividend recapitalization or balance sheet recapitalization options for a portfolio company. Use when the user says 'dividend recap', 'recapitalization', 'recap', 'lever up the company', 'take cash out via debt', 'dividend recapitalization analysis', 'return capital to LPs', 'add leverage', 'partial liquidity', or 'balance sheet optimization'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--amount <dollar>] [--mode <dividend-recap|refinancing|full-recap>]"
---

# Recapitalization Analyzer

Analyze dividend recapitalization and balance sheet recapitalization options for a portfolio company — when MBL wants to extract cash from a portfolio company by having it take on debt, without a full exit. A recap can return capital to LPs, improve fund DPI, and fund other investments. But it adds leverage to the portfolio company and increases risk of financial distress. Run this analysis before pursuing any recapitalization.

## When to Use
- Portfolio company has strong cash flows and low/no debt — opportunity to optimize capital structure
- Fund DPI is low and LPs want returned capital before full exit
- Matt Mathison wants to return some capital while retaining upside
- Interest rates are low — favorable time to add debt
- Pre-exit recap — extract cash before sale process without losing optionality

## Recapitalization Types

```
1. Dividend Recapitalization ("Dividend Recap"):
   The portfolio company borrows money (senior debt, unitranche, mezzanine)
   Proceeds are paid as a dividend to the equity holders (MBL and LP-level)
   Company continues to operate with the new debt on its balance sheet
   MBL retains equity ownership; no exit required
   Effect: DPI goes up; portfolio company leverage goes up

2. Balance Sheet Refinancing (not extracting cash):
   Replace existing debt at better terms (lower rate, longer tenor, more flexibility)
   No cash extracted to equity
   Effect: Reduces interest expense; extends maturity; no DPI impact

3. Growth Recapitalization:
   Borrow to fund an acquisition or growth investment (not distribute to equity)
   Effect: Company grows; equity value should increase; no immediate DPI

Most common reason PE firms do dividend recaps: boost DPI without giving up the remaining equity upside
Risk: If the company struggles after the recap, it now has less financial flexibility
```

## Output Format

```markdown
# Recapitalization Analysis — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison
**Entity:** <Allevio / HIVE / Column6>
**Current EBITDA:** $X | **Current leverage:** $X debt ($X net) / X× net leverage
**Recap type:** Dividend Recap / Balance Sheet Refinancing / Growth Recap

---

## Current Capital Structure

| Item | Amount | Multiple (of EBITDA) |
|------|--------|---------------------|
| Senior debt (existing) | $X | X× |
| Mezzanine / other debt | $X | X× |
| **Total debt** | **$X** | **X×** |
| Less: Cash | ($X) | |
| **Net debt** | **$X** | **X×** |
| Equity value (estimated) | $X | X× EV/EBITDA |
| **Enterprise value (estimated)** | **$X** | **X×** |

---

## Dividend Recap Scenarios

### Scenario A: Conservative Recap (X× total leverage)

| Item | Amount |
|------|--------|
| Target leverage | X× EBITDA = $X total debt |
| Existing debt to be refinanced | $X |
| New incremental debt | $X |
| Financing costs (1.5–2% upfront) | ($X) |
| **Net dividend to equity (MBL)** | **$X** |

**Post-recap capital structure:**
- Total debt: $X (X× EBITDA)
- Annual interest expense: ~$X (at X% blended rate)
- Annual free cash flow: $X
- Debt service coverage: X× (EBITDA / interest expense; target >2.5×)
- Break-even EBITDA (for interest coverage): $X

**LP distribution impact:**
- MBL equity share: X%
- LP proceeds from recap dividend: $X
- Fund DPI before recap: X.X×; after: X.X× (on this company)

---

### Scenario B: Aggressive Recap (X× total leverage)

| Item | Amount |
|------|--------|
| Target leverage | X× EBITDA = $X total debt |
| Existing debt to be refinanced | $X |
| New incremental debt | $X |
| Net dividend to equity | $X |

**Post-recap risks:**
- Debt service coverage: X× (below X = concerning)
- Covenant headroom: $X EBITDA cushion before covenant breach
- A 20% EBITDA decline breaches covenants / triggers financial distress
- Rating: Below investment grade; dependent on continued EBITDA performance

**Risk assessment:** ⚠️ Moderate risk (X× leverage) / 🔴 High risk (X× leverage)

---

## EBITDA Stress Test (Post-Recap)

| Scenario | EBITDA | Debt | Interest (X%) | Coverage | Covenant status |
|---------|--------|------|-------------|---------|----------------|
| Base | $X | $X | $X | X× | ✅ Clear |
| Bear (-20%) | $X | $X | $X | X× | ⚠️ Watch |
| Stress (-35%) | $X | $X | $X | X× | 🔴 Breach |

**Covenant cushion at base:** $X EBITDA / X% margin for error
**Key covenant (if applicable):** Net leverage ≤ X×; Interest coverage ≥ X×

---

## IRR / Return Impact of Recap

| | No Recap | Conservative Recap | Aggressive Recap |
|-|---------|-------------------|-----------------|
| LP distribution today | $0 | $X | $X |
| Remaining equity value (no change) | $X | $X (same) | $X (same) |
| Fund DPI today | X.× | X.× | X.× |
| IRR impact (early return of $X) | Baseline | +X pp IRR | +X pp IRR |
| Remaining equity risk | Baseline | +Moderate | +High |

**Key insight:** The recap returns $X today (boosting IRR and DPI) but does not reduce the equity — if the company performs as planned, total proceeds are the same. If the company underperforms, the debt could impair the equity value.

---

## Recommendation

**Verdict:** ✅ Proceed with Conservative Recap / ⚠️ Conditional / ❌ Do Not Recap

**Rationale:** [2-3 sentences]
- Conservative scenario (X× leverage): Debt service coverage X× — comfortable; $X to LPs; DPI improves by X.×
- Business risk post-recap: [Low/Medium/High] — company's cash flows [are/are not] stable enough to support the debt
- Timing: [Good time to recap because X / Not the right time because Y]

**Matt Mathison decision required:**
- [ ] Approve pursuing recap in Scenario A (conservative)
- [ ] Engage lender conversations (Dr. Lewis to manage)
- [ ] Confirm LP distribution plan ($X to each LP per commitment)
- [ ] Fund counsel review before any debt commitment
```

## Output Contract
- Stress test always included — a recap that works at base case EBITDA but causes distress in a bear scenario is a risk that must be disclosed to Matt Mathison
- DPI impact always shown — this is usually the primary motivation for a recap; quantify the improvement explicitly
- Debt service coverage always calculated — the company's ability to service the debt is the number one risk; show the math
- IRR impact always included — recaps are often IRR-enhancing even if MOIC-neutral; this is the financial case
- HITL required: Dr. Lewis builds analysis; Matt Mathison makes the go/no-go decision; fund counsel reviews all debt terms; lender engagement requires Matt Mathison direction; any LP distribution from recap proceeds requires capital call waterfall calculation (or is it exempt — fund counsel to advise); portfolio company management co-approves taking on debt

## System Dependencies
- **Reads from:** Portfolio company financials (EBITDA, cash, existing debt), current lending market (interest rates, leverage multiples), fund performance calculator (DPI, IRR)
- **Writes to:** Recapitalization analysis (SharePoint/Portfolio/<Company>/Recap); LP distribution notice (if recap proceeds distributed); fund accounting (if distribution made)
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves; fund counsel reviews debt terms; management co-approves; LP distribution from proceeds requires standard waterfall process

## Test Cases
1. **Golden path:** Allevio, 3-year hold, $1.2M EBITDA, no debt, $X estimated equity → Conservative recap at 3× EBITDA: $3.6M debt; annual interest $X; coverage 4×; covenant cushion $X; net dividend to equity: $2.8M (after fees); LP distribution: $X; DPI: 0.0→ 0.8×; IRR impact: +4pp (from 18% to 22%); stress test: -30% EBITDA still covers interest; recommendation: proceed with conservative recap; Matt Mathison: approve, engage lender
2. **Edge case:** HIVE is highly leveraged from the original acquisition and has commodity-linked EBITDA — any recap would be risky → at X× existing leverage, the company is not a recap candidate; commodity price volatility means EBITDA can swing 30-40% in a year; additional debt at this volatility level would be imprudent; recommend deferring any recap until: (a) existing debt is paid down to <3×, or (b) a sustained period of WTI stability supports a higher leverage multiple
3. **Adversarial:** Lender actively pitches an aggressive recap (X× leverage = much larger dividend) → evaluate the lender's incentive: they earn fees on a larger loan; the larger loan may be beyond what the company's cash flows can comfortably service in a stress scenario; run the stress test at the lender's proposed leverage; if coverage falls below 1.5× in a bear case, the lender's proposal creates distress risk that MBL's equity would absorb; present both options to Matt Mathison with the risk analysis; don't let fee incentives drive the leverage decision

## Audit Log
Recapitalization analyses retained. Matt Mathison decision documented. Debt terms retained in deal files. LP distributions from recap proceeds tracked in capital account ledger.

## Deprecation
Retire when MBL has dedicated capital structure modeling tools and a CFO or fund finance professional managing balance sheet optimization for the portfolio.
