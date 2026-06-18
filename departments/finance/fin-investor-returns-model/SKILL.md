---
name: fin-investor-returns-model
description: "Calculate and track IRR, MOIC, and LP returns by entity for MBL Partners. Use when the user says 'investor returns', 'LP returns', 'IRR', 'MOIC', 'multiple on invested capital', 'internal rate of return', 'returns analysis', 'LP performance', 'fund returns', 'portfolio returns', 'returns by entity', 'returns by company', 'how are we doing for LPs', 'LP performance update', 'unrealized returns', 'realized returns', 'fund performance', 'distributions', 'LP distributions', 'cash on cash return', 'DPI', 'RVPI', 'TVPI', 'distributions to paid-in', 'residual value to paid-in', 'total value to paid-in', 'fund metrics', 'fund performance metrics', 'benchmark returns', 'LP report returns', 'since inception returns', 'inception to date returns', 'portfolio valuation', 'fair market value', 'FMV by entity', or 'LP equity value'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|all|fund>] [--action <calculate|update|report|project>] [--focus <irr|moic|tvpi|dpi|distributions|valuation>] [--period <current|ytd|since-inception>]"
---

# Fin Investor Returns Model

Calculate and track IRR, MOIC, and LP returns by entity for MBL Partners — maintaining the since-inception returns model that shows Matt Mathison and LPs how their invested capital is performing, projecting distributions, and updating valuations each quarter as entity performance evolves. LP returns are the ultimate measure of MBL's performance as a fund: a strong portfolio company is only a strong investment if LPs get their capital back with the returns they were promised. Dr. Lewis maintains the returns model rigorously — it is the financial instrument that connects MBL's operating work to LP satisfaction and fund continuity.

## When to Use
- Quarterly: update LP returns model with current entity performance and updated valuations
- An entity exit has occurred (realized returns calculation)
- LP quarterly report preparation (returns section)
- Matt Mathison asks how the fund is performing for LPs
- A new LP is evaluating co-investment (return history is required)

## LP Returns Framework

```
KEY RETURN METRICS:

  MOIC (Multiple on Invested Capital):
    MOIC = (Realized proceeds + Unrealized FMV) / Total invested capital
    Measures: how many times has MBL multiplied the invested capital?
    Targets: ≥2.5× base case (from deal model); ≥1.5× bear case minimum
    
  IRR (Internal Rate of Return):
    The annualized rate of return accounting for timing of cash flows
    Cash flows: initial investment (negative); distributions (positive); exit proceeds (positive)
    Targets: ≥25% base case; ≥15% bear case minimum
    
  TVPI (Total Value to Paid-In):
    TVPI = DPI + RVPI
    
  DPI (Distributions to Paid-In):
    DPI = Total distributions / Total paid-in capital
    Measures: how much cash have LPs received vs. what they put in?
    DPI = 0 until distributions are made
    
  RVPI (Residual Value to Paid-In):
    RVPI = Unrealized FMV / Total paid-in capital
    Measures: what is the current value of unrealized holdings?
    
  FUND-LEVEL TARGETS:
    Net TVPI (after carry): ≥2.0× (LP's return after MBL takes its carry)
    Net IRR (after carry): ≥20%

BY-ENTITY TRACKING:

  For each portfolio entity:
    Entity: [Allevio / HIVE / Column6]
    Investment date: [Date]
    Total invested: $[X] (equity check + any follow-on capital)
    Current FMV: $[X] (quarterly update — conservative valuation methodology)
    Distributions received: $[X] (any cash returned to date)
    Unrealized gain: FMV - cost = $[X]
    Gross MOIC: (FMV + distributions) / invested = [X]×
    Gross IRR: [%] (from investment date through today, using FMV as exit value)
    Hold period: [N] years [N] months
    
  FMV METHODOLOGY (per entity):
    Allevio: [X]× trailing 12-month adjusted EBITDA (healthcare services comp set)
    HIVE: [X]× royalty income (oil & gas royalty income multiple; WTI-adjusted)
    Column6: [X]× revenue (CTV/adtech comparable transaction multiple)
    
    FMV updated quarterly; methodology consistent period-to-period
    Material change in methodology: Matt Mathison approval + LP disclosure
    Conservative bias: FMV is the floor, not the ceiling; buyers pay more than FMV in exits
    
DISTRIBUTION TRACKING:

  Any cash returned to LPs:
    Distribution date: [Date]
    Per entity: $[X] (source of distribution)
    Total fund distribution: $[X]
    LP allocation: per LP pro-rata interest
    
  Distribution waterfall:
    1. Return of LP capital (preferred — 100% to LPs until fully returned)
    2. Preferred return (8% cumulative to LPs)
    3. GP catch-up (MBL catches up to the agreed carry percentage)
    4. Carried interest split (MBL: 20% of profits; LPs: 80% of profits above preferred)
    
  Distribution calculation for Matt Mathison's review:
    Before any distribution: Dr. Lewis calculates the waterfall
    Matt Mathison reviews and approves the distribution amounts
    Each LP receives their share per the LP agreement

FUND-LEVEL PERFORMANCE REPORTING:

  Quarterly LP report (returns section):
    Total capital committed: $[X]
    Total capital called: $[X]
    Total distributions: $[X]
    Gross TVPI (before carry): [X]×
    Net TVPI (after carry estimate): [X]×
    Gross IRR (before carry): [%]
    Net IRR (after carry estimate): [X]%
    
  Benchmark comparison:
    MBL fund return vs.: S&P 500 TVPI over same period; private equity benchmark index
    LPs expect returns above the public market alternative — if MBL is underperforming, flag it
```

## Output Format

```markdown
# MBL Partners — Investor Returns Report — Q[N] [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Matt Mathison | **Confidential — For LP Distribution**

---

## Portfolio Summary

| Entity | Invested | FMV | Distributions | Gross MOIC | Gross IRR | Hold period |
|--------|---------|-----|-------------|-----------|----------|------------|
| Allevio | $[X] | $[X] | $[X] | [X]× | [%] | [N] yrs |
| HIVE | $[X] | $[X] | $[X] | [X]× | [%] | [N] yrs |
| Column6 | $[X] | $[X] | $[X] | [X]× | [%] | [N] yrs |
| **Total** | **$[X]** | **$[X]** | **$[X]** | **[X]×** | **[%]** | |

---

## Fund-Level Returns

| Metric | Current | Prior quarter | Fund target |
|--------|---------|-------------|------------|
| Gross TVPI | [X]× | [X]× | ≥2.5× |
| Net TVPI (est.) | [X]× | [X]× | ≥2.0× |
| Gross IRR | [%] | [%] | ≥25% |
| Net IRR (est.) | [%] | [%] | ≥20% |
| DPI | [X]× | [X]× | — |

---

## Valuation Summary

| Entity | FMV methodology | FMV | Prior FMV | Change | Commentary |
|--------|----------------|-----|----------|--------|-----------|
| Allevio | [X]× LTM EBITDA | $[X] | $[X] | $[+/-X] | [Reason] |
| HIVE | [X]× royalty income | $[X] | $[X] | $[+/-X] | [Reason] |
| Column6 | [X]× LTM revenue | $[X] | $[X] | $[+/-X] | [Reason] |
```

## Output Contract
- Conservative FMV is the credibility anchor — LP reports that use aggressive FMV assumptions erode trust when exits don't achieve the projected returns; Dr. Lewis marks FMV at a discount to what he believes a buyer would pay; the methodology is consistent, documented, and reviewed annually; LPs who understand MBL's conservative valuation approach trust the numbers more and are more forgiving of variance; the worst outcome is a FMV that requires a write-down, which is always a painful LP communication; it is better to grow into value than write it down
- IRR is time-sensitive — IRR penalizes slow deployment (capital sitting uninvested earns zero) and slow exits (strong returns achieved late have lower IRRs); Dr. Lewis tracks the time-weighted effect of capital calls vs. deployment, and exit timing vs. maturity; a 3× MOIC in 5 years is a 25% IRR; the same 3× in 7 years is a 17% IRR — the difference is significant; Matt Mathison uses IRR to prioritize which investments to exit when multiple exits are available simultaneously
- Waterfall before distribution — every distribution from a portfolio entity to MBL/LPs requires a waterfall calculation before the distribution is made; the waterfall ensures LPs receive their preferred return before MBL takes any carry; distributing carry before LPs have been made whole is a breach of the LP agreement; Dr. Lewis calculates the waterfall for every distribution and presents it to Matt Mathison before any funds are moved; Matt reviews, approves, and signs off
- HITL required: FMV methodology changes require Matt Mathison approval + LP disclosure; quarterly returns report approved by Matt before LP distribution; any distribution waterfall calculation reviewed by Matt and legal before funds move; fund-level performance that falls below target IRR is a conversation with Matt and potentially with key LPs; net IRR <15% for 2+ consecutive quarters triggers a fund strategy discussion with Matt; LP-facing returns reports reviewed and approved by Matt — every word

## System Dependencies
- **Reads from:** QuickBooks by entity (distributions; revenue; EBITDA for FMV calculation); fin-deal-financial-model (original investment and deal model assumptions); fin-lp-financial-disclosure (LP quarterly report context); exec-capital-deployment-tracker (invested capital per entity); fin-exit-financial-prep (realized proceeds at exit)
- **Writes to:** Returns model (SharePoint → Finance → Returns → [YYYY] → Q[N]); LP quarterly report returns section; Matt Mathison briefing on fund performance; distribution waterfall calculations (SharePoint → Finance → Distributions → [Date])
- **HITL Required:** FMV methodology changes → Matt approval + LP disclosure; quarterly report → Matt approval before LP distribution; distribution waterfall → Matt + legal review before funds move; underperformance (<15% net IRR sustained) → Matt conversation; all LP-facing returns communications → Matt review and approval

## Test Cases
1. **Golden path:** Q2 Year 3 returns update; Allevio: invested $2.8M; FMV $5.6M (8× $700K trailing EBITDA — EBITDA has grown from $280K at entry to $700K; on track); gross MOIC 2.0×; gross IRR 26% (3 years); HIVE: invested $1.4M; FMV $2.1M (12× $175K royalty income); gross MOIC 1.5×; IRR 14% (3 years — WTI headwinds; tracking below target; need WTI recovery for exit timing); Column6: invested $1.3M; FMV $2.86M (7× $408K revenue — NRR 96%); gross MOIC 2.2×; IRR 30% (2 years — strong performer). Total: invested $5.5M; total FMV $10.56M; gross TVPI 1.92×; gross IRR 24%. Net TVPI (est. 20% carry on gains): 1.76×; net IRR 20%. Q2 LP report: "Portfolio is performing in line with target. HIVE is the lag — WTI sensitivity is the primary risk. Allevio and Column6 are ahead of the original deal models."
2. **Edge case:** Matt asks what the returns look like if HIVE exits now vs. waiting 18 months for WTI recovery → Dr. Lewis: "Here's the exit timing sensitivity: Exit HIVE now (Q3 Year 3): FMV $2.1M; after carry, LP net proceeds ~$1.95M; LP net MOIC 1.39×; net IRR 10.8% — below the 15% minimum. Exit HIVE in 18 months assuming WTI recovers to $68 (from $61 today): FMV $2.8M; after carry, LP net proceeds ~$2.6M; LP net MOIC 1.86×; net IRR 15.2% — at the minimum threshold. The extra 18 months of carry at $175K/year royalty income ($262K total) + the FMV increase makes the wait worthwhile IF WTI cooperates. My recommendation: wait 18 months with a WTI monitoring trigger ($58 = exit conversation; $72 = accelerate exit process). But this is your call, Matt — there are portfolio concentration and fund life considerations I can model if helpful."
3. **Adversarial:** An LP calls Matt frustrated that DPI is 0× (no cash returned yet at Year 3) → Dr. Lewis prepares a briefing for Matt: "Three years in with DPI at 0× is within the normal range for a control-stake private equity fund with a 4-5 year typical hold. The LP agreement specifies a 5-year investment period. That said, this is a real concern to address head-on: (1) Column6 is the most likely near-term exit candidate (Year 2 of ownership; already above our 2.5× MOIC target on a FMV basis); (2) any distributions from operating cash flow (HIVE royalties are strong) would reduce the LP's frustration by returning some capital early without selling an entity; (3) transparency helps: show the LP the entity-level FMV progression — they've gone from $5.5M invested to $10.56M of FMV in 3 years (1.92× on paper). The issue is liquidity timing, not performance. Matt — would it help to schedule a call with this LP to walk through the entity-level performance directly?"

## Audit Log
All quarterly returns models retained (with version history). FMV methodology documentation retained. Distribution waterfall calculations retained permanently. LP quarterly return reports retained. Benchmark comparison data retained quarterly. IRR calculation models retained.

## Deprecation
Retire when MBL has a dedicated fund administrator or IR professional who maintains the LP returns model — with Dr. Lewis providing the portfolio entity financial data inputs and Matt Mathison retaining approval authority over all LP-facing returns communications.
