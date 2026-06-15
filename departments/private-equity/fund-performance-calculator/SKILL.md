---
name: fund-performance-calculator
description: "Calculate private equity fund performance metrics. Use when the user says 'fund performance', 'IRR', 'MOIC', 'DPI', 'RVPI', 'TVPI', 'calculate fund returns', 'fund metrics', 'LP return metrics', 'gross vs net returns', 'fund track record', or 'portfolio return calculation'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--fund <MBL-Fund-I|specific>] [--as-of <date>] [--mode <fund|deal|portfolio-co>]"
---

# Fund Performance Calculator

Calculate and report private equity fund performance metrics — IRR, MOIC, DPI, RVPI, TVPI — at the fund level, deal level, and portfolio company level. These are the metrics LPs use to evaluate performance and the metrics that determine carried interest. Getting them right is not optional.

## When to Use
- LP reporting cycle — need fund-level and deal-level performance metrics
- Quarterly investor update — include performance section
- Matt Mathison asks "how are we tracking against our fund return targets?"
- New investor due diligence — potential LP requests fund track record
- Internal portfolio review — which companies are performing vs. not?

## Key PE Performance Metrics

```
MOIC (Multiple on Invested Capital):
  MOIC = (Realized proceeds + Unrealized NAV) / Total invested capital
  Gross MOIC: before management fees and carried interest
  Net MOIC: after management fees and carried interest (what LP actually gets)
  Target: >2.0× net MOIC for a typical buyout fund

IRR (Internal Rate of Return):
  IRR = the discount rate at which NPV of all cash flows = 0
  Gross IRR: before fees and carry
  Net IRR: after fees and carry (what LP actually earns)
  Target: >20% net IRR for buyout; >15% for growth equity

DPI (Distributions to Paid-In Capital):
  DPI = Cumulative distributions to LPs / LP capital called
  DPI = 0: no capital returned yet
  DPI = 1.0: LPs have gotten their money back
  DPI > 1.0: LPs are in profit (realized)
  Key insight: DPI is the only "real" return — distributions in hand vs. NAV estimates

RVPI (Residual Value to Paid-In):
  RVPI = Unrealized NAV / LP capital called
  Represents the paper value of remaining portfolio

TVPI (Total Value to Paid-In):
  TVPI = DPI + RVPI = Total value returned + remaining / LP capital called
  TVPI = gross MOIC from the LP perspective

Vintage year matters: IRR is time-sensitive; compare IRRs from same vintage year
```

## Output Format

```markdown
# Fund Performance Report — MBL Fund I
**As of:** <date> | **Owner:** Dr. John Lewis (prepared for Matt Mathison)
**Fund vintage:** <year> | **Fund size:** $X | **Investment period:** <dates>

---

## Fund-Level Summary

| Metric | Gross | Net (after fees/carry) | Benchmark | vs. Benchmark |
|--------|-------|----------------------|-----------|---------------|
| MOIC | X.Xx | X.Xx | 2.0× | +/- X.Xx |
| IRR | X.X% | X.X% | 20% | +/- X.Xpp |
| DPI | X.Xx | X.Xx | — | — |
| RVPI | X.Xx | X.Xx | — | — |
| TVPI | X.Xx | X.Xx | — | — |

**Capital deployed:** $X of $X fund size (X%)
**Distributions to date:** $X (DPI: X.Xx)
**Remaining NAV:** $X (RVPI: X.Xx)
**Average hold:** X.X years

---

## Performance by Portfolio Company

| Company | Entry | Invested | Current NAV | Distributions | MOIC (gross) | IRR (gross) | Status |
|---------|-------|---------|-------------|--------------|-------------|------------|--------|
| Allevio | <date> | $X | $X | $X | X.Xx | X.X% | Hold |
| HIVE Partners | <date> | $X | $X | $X | X.Xx | X.X% | Hold |
| Column6 / Siprocal | <date> | $X | $X | $X | X.Xx | X.X% | Hold |
| [Realized exit] | <date> | $X | $0 | $X | X.Xx | X.X% | Exited |

---

## Cash Flow Waterfall (Cumulative)

| Quarter | Capital Called | Distributions | Net Cash Flow | Cumulative Net |
|---------|-------------|--------------|--------------|----------------|
| Q1 <Year> | ($X) | $0 | ($X) | ($X) |
| Q2 <Year> | ($X) | $0 | ($X) | ($X) |
| ... | | | | |
| Q<N> <Year> | $0 | $X | $X | ($X) |

---

## Fee and Carry Impact

| Item | Amount |
|------|--------|
| Management fees paid to date | $X |
| Unrealized carried interest (if applicable) | $X |
| Gross-to-net MOIC haircut | X.Xx → X.Xx |
| Gross-to-net IRR haircut | X.X% → X.X% |

**Management fee rate:** X% on committed/invested capital
**Carried interest rate:** 20% above X% preferred return

---

## Preferred Return Analysis

**Preferred return (hurdle rate):** X% per annum (compounded)
**Preferred return amount owed to LPs:** $X (as of <date>)
**Cumulative distributions applied to pref:** $X
**Remaining preferred return:** $X
**Status:** Pref met / Pref not yet met — need $X more distributions before carry begins

---

## Net IRR Calculation (XIRR)

| Date | LP Cash Flow (negative = call, positive = distribution) |
|------|-------------------------------------------------------|
| <date> | ($X) — Capital call 1 |
| <date> | ($X) — Capital call 2 |
| <date> | $X — Distribution 1 |
| <date> | $X NAV — Remaining value (as of today) |

**Gross IRR:** X.X% | **Net IRR:** X.X%
*(Calculated using XIRR on actual cash flow dates)*

---

## Matt Mathison Summary

**Fund performance as of <date>:** Gross MOIC X.Xx, Net MOIC X.Xx, Net IRR X.X%. We're [ahead of / on track for / behind] fund return targets. DPI is X.Xx — LPs have received X% of their capital back. Allevio and HIVE are the primary NAV drivers at combined $X. [Risk/opportunity]: [one sentence]. Next reporting date: [quarter-end].
```

## Output Contract
- Gross and net always reported separately — conflating them is misleading to LPs and legally problematic
- DPI always called out alongside TVPI — paper NAV is not the same as realized returns; LPs know the difference
- XIRR used for IRR (not approximation) — IRR must be calculated on actual cash flow dates
- Preferred return status always shown — determines whether carry has been earned; critical for LP trust
- HITL required: Dr. Lewis calculates; Matt Mathison reviews and approves before any LP distribution; LP reports reviewed by fund counsel before sending; carry calculations reviewed by fund accountant; never share fund-level financials outside authorized parties

## System Dependencies
- **Reads from:** Fund accounting records (QuickBooks), portfolio company financials, capital call and distribution history, LP ownership records
- **Writes to:** Fund performance report (SharePoint/Fund/Performance); LP reporting package; quarterly investor update
- **HITL Required:** Dr. Lewis calculates; Matt Mathison approves; fund counsel reviews LP reports; fund accountant validates carry calculations; strict distribution to authorized LPs only

## Test Cases
1. **Golden path:** MBL Fund I, 3-year-old fund, 3 portfolio companies → Allevio: $3M invested, current NAV $5M; HIVE: $2M invested, current NAV $3M; Column6: $1.5M invested, current NAV $2M; 0 exits; $0 distributions; DPI: 0.0; RVPI: 1.55 ($10M NAV / $6.5M invested); TVPI: 1.55; Gross IRR: 18.2%; Pref (8%) not yet met — $1.5M pref owed; no carry earned yet; net IRR calculated after management fees: 14.8%
2. **Edge case:** A portfolio company was written down (e.g., Column6 value reduced from $1.5M to $0.8M due to market conditions) → reflect the write-down immediately in RVPI and TVPI; re-calculate IRR; notify Matt Mathison of the impairment; document the valuation basis; LPs must be informed in next quarterly report with explanation of write-down rationale; a write-down is a real event, not a rounding issue
3. **Adversarial:** An LP asks for the gross IRR during a difficult period (it looks better than net) without asking for net → always present both; providing only the favorable metric when the unfavorable metric is material is a disclosure failure; gross IRR without net IRR misleads LPs about their actual returns; report both with clear labeling

## Audit Log
Performance calculations retained quarterly with assumptions documented. Cash flow data retained. NAV basis documented per portfolio company. LP distribution of performance data logged.

## Deprecation
Retire when MBL has dedicated fund accounting software (Allvue, Yardi, or eFront) with automated IRR/MOIC/DPI/RVPI/TVPI calculation from live cash flow data.
