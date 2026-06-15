---
name: hold-period-optimizer
description: "Analyze the optimal hold period for a portfolio company to maximize returns. Use when the user says 'hold period', 'when to sell', 'optimal exit timing', 'how long to hold', 'hold period analysis', 'exit now or wait', 'early exit analysis', 'continue to hold', 'should we exit', or 'hold period return analysis'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--current-hold <years>] [--exit-scenarios <3|5|7>]"
---

# Hold Period Optimizer

Analyze the optimal hold period for a MBL portfolio company — the point at which exiting generates the best risk-adjusted return vs. continuing to hold. In PE, holding too long is just as costly as selling too early. The IRR impact of hold period is asymmetric: early high returns get time-diluted; late exits face diminishing marginal returns as multiple expansion becomes less likely.

## When to Use
- Annual portfolio review — is this the right time to begin exit preparation?
- Value creation thesis is largely complete — what's left in the tank?
- Unsolicited inbound offer — compare to holding value
- Matt Mathison asks "should we sell Allevio now or wait 2 more years?"
- LP Fund life is approaching — need to exit before fund wind-down

## Hold Period Framework

```
IRR and hold period relationship:

Short hold (1-3 years): High IRR if things go well; risky — little time for value creation
Medium hold (3-5 years): Sweet spot for most PE investments; value creation realized; strategic premium achievable
Long hold (5-7+ years): IRR compression; each additional year at same multiple is return-dilutive
Beyond 7 years: Fund life pressure; fire sale risk; LP patience exhausted

Key insight — the MOIC vs. IRR tension:
  A 2.0× MOIC in 3 years = 26% IRR
  A 2.0× MOIC in 5 years = 15% IRR
  A 2.5× MOIC in 5 years = 20% IRR
  A 3.0× MOIC in 7 years = 17% IRR
  ↳ Holding 2 more years to achieve +0.5× MOIC may actually reduce IRR

When to exit earlier than planned:
  - Market multiples are high (sell into strength)
  - Strategic buyer premium available now vs. uncertain in 2 years
  - Value creation thesis is largely complete; remaining value is incremental
  - Business risk has increased (key man, market, regulatory)

When to extend the hold:
  - Value creation is still meaningful (growth initiative in year 2 of 3-year payback)
  - Market/sector valuation is depressed; wait for normalization
  - Add-on acquisition just closed; needs 12-18 months to realize integration synergies
  - Fund life allows; LP impatience not yet a factor
```

## Output Format

```markdown
# Hold Period Analysis — <Entity>
**Date:** <date> | **Owner:** Dr. John Lewis | **Reviewed by:** Matt Mathison
**Entity:** <Allevio / HIVE / Column6>
**Investment date:** <date> | **Current hold:** X.X years
**Entry invested capital:** $X | **Entry EBITDA:** $X | **Entry EV:** $X
**Current EBITDA:** $X | **Current EV estimate:** $X (X× estimated market multiple)

---

## Value Creation Status vs. Thesis

| Thesis initiative | Target | Status | Remaining value |
|-----------------|--------|--------|----------------|
| AI automation | $X EBITDA | ✅ 90% realized | ~$X remaining |
| New clinic revenue | $X EBITDA | ✅ 75% realized | ~$X remaining |
| Add-on acquisition | $X EBITDA | ⏳ In process | ~$X (if closed) |
| CFO hire + reporting | Operational | ✅ Complete | — |

**Thesis completion:** ~X% realized | **Remaining value in thesis:** ~$X EBITDA

**Value creation completeness signal:** X% complete → [Approaching exit readiness / Significant value remaining / Largely complete]

---

## Hold Period Return Scenarios

### Current Exit (Year X)

| Item | Value |
|------|-------|
| Current EBITDA | $X |
| Exit multiple (current market) | X× |
| Enterprise value | $X |
| Less: Net debt | ($X) |
| Equity proceeds | $X |
| Less: LP preferred return ($X at 8% for X years) | ($X) |
| Less: Carried interest (20% of profits) | ($X) |
| **Net LP proceeds** | **$X** |
| **Net MOIC** | **X.×** |
| **Net IRR** | **X%** |

---

### Hold 1 More Year (Year X+1)

| Assumption | Base | Bear | Bull |
|-----------|------|------|------|
| EBITDA growth | +X% (to $X) | Flat | +X% (to $X) |
| Exit multiple | X× | X× (compression) | X× |
| Enterprise value | $X | $X | $X |
| **Net LP MOIC** | **X.×** | **X.×** | **X.×** |
| **Net IRR** | **X%** | **X%** | **X%** |
| vs. Current exit | +/-X× / +/-Xpp | +/-X× | +/-X× |

---

### Hold 2 More Years (Year X+2)

| Assumption | Base | Bear | Bull |
|-----------|------|------|------|
| EBITDA growth | +X% CAGR ($X) | Flat | +X% CAGR ($X) |
| Exit multiple | X× | X× (compression) | X× |
| Enterprise value | $X | $X | $X |
| **Net LP MOIC** | **X.×** | **X.×** | **X.×** |
| **Net IRR** | **X%** | **X%** | **X%** |
| vs. Current exit | +/-X× / +/-Xpp | +/-X× | +/-X× |

---

## Exit Timing Decision Matrix

| Scenario | Best argument for NOW | Best argument for LATER |
|---------|----------------------|------------------------|
| Market multiples | Currently X× (above historical avg) → sell into strength | May expand further if sector continues to grow |
| Value creation | X% of thesis realized; incremental value is lower quality | Add-on acquisition closes in X months → $X incremental EBITDA |
| Buyer appetite | Strategic interest is high; 3 potential buyers identified | Waiting for CFO's full impact to be visible in LTM (X more months) |
| Fund life | Fund year X of X; LPs expecting returns | Fund is within life; no pressure |
| IRR impact | Holding 2 years gains +X× MOIC but loses Xpp IRR | Earlier exit IRR is X% — below fund target of 20% |

---

## Recommendation

**Recommended hold period:** Exit in [Now / 6-12 months / 12-24 months]

**Primary rationale:** [One clear reason — the most important driver of the recommendation]

**Key condition that could change this:** [If X happens, consider exiting earlier/later]

**Trigger for re-evaluation:** [Specific event or metric that should prompt revisiting this decision — e.g., "If add-on closes within 6 months, extend hold to Q[N] [Year+1] to capture integration synergies"]

**Matt Mathison action:** [Approve recommendation / Schedule exit prep in X months / Approve banker conversations / No action]

---

## IRR Table (Reference)

| MOIC | 3-year IRR | 4-year IRR | 5-year IRR | 6-year IRR |
|------|-----------|-----------|-----------|-----------|
| 1.5× | 14.5% | 10.7% | 8.4% | 7.0% |
| 2.0× | 26.0% | 18.9% | 14.9% | 12.2% |
| 2.5× | 35.7% | 25.7% | 20.1% | 16.5% |
| 3.0× | 44.2% | 31.6% | 24.6% | 20.1% |
| 3.5× | 51.8% | 36.8% | 28.5% | 23.3% |
```

## Output Contract
- IRR vs. MOIC trade-off always shown explicitly — many PE investors optimize for MOIC and destroy IRR; the table and scenario analysis make this visible
- Bear case always included in hold scenarios — holding longer has downside risk; the bear case for "hold 2 more years" is just as important as the base case
- Specific hold trigger always recommended — "review in 12 months" is not a decision; "exit when add-on integration is complete and LTM EBITDA shows full run-rate" is
- Matt Mathison action always explicit — this analysis supports a decision; it doesn't make one
- HITL required: Dr. Lewis builds analysis; Matt Mathison makes exit timing decision; LP Agreement exit notification requirements reviewed by fund counsel; banker engagement requires Matt Mathison; LOI acceptance requires Matt Mathison

## System Dependencies
- **Reads from:** Value creation tracker, fund performance calculator (current IRR/MOIC), portfolio company financials, market comparable multiples, exit strategy planner
- **Writes to:** Hold period analysis (SharePoint/Portfolio/<Company>/Exit); portfolio review package for Matt Mathison
- **HITL Required:** Dr. Lewis builds; Matt Mathison decides; fund counsel for exit process requirements; all exit decisions require Matt Mathison

## Test Cases
1. **Golden path:** Allevio, Year 4.5 of hold → Entry $3M at 5×; current EBITDA $1.1M; value creation 85% complete; remaining: add-on in diligence; market multiple: 8× strategic; current exit: $8.8M EV, $X equity → 2.6× MOIC, 22% IRR; hold 12 months (add-on closed, LTM clean): $1.4M EBITDA → $11.2M EV → 3.1× MOIC, 23% IRR (minimal IRR gain for +0.5× MOIC); recommendation: hold 12 months for add-on, then exit; trigger: add-on closed and integrated
2. **Edge case:** The market multiple for the sector has compressed significantly since entry (from 8× to 5×) → holding longer doesn't help if the compression is structural (e.g., post-pandemic healthcare services de-rating); assess whether the compression is cyclical or structural; if cyclical, consider holding for normalization; if structural, the exit MOIC target may need to be revised downward; update the IRR scenarios with the new market multiple; Matt Mathison decision on whether to exit now (lower MOIC) or hold for potential multiple recovery
3. **Adversarial:** Matt Mathison is emotionally attached to a portfolio company and wants to hold 2 more years despite IRR analysis showing diminishing returns → present the analysis objectively; at 7-year hold, IRR is already below fund target; each additional year is return-dilutive; the LP obligation is to maximize returns; extended hold should require a specific, quantifiable value creation opportunity that justifies the IRR cost of waiting; "we love this company" is not a return thesis

## Audit Log
Hold period analyses retained with scenarios and assumptions. Matt Mathison decisions documented. IRR/MOIC tracking vs. hold period retained annually.

## Deprecation
Retire when MBL has dedicated portfolio management software with automated hold period IRR/MOIC scenario modeling and exit timing analytics.
