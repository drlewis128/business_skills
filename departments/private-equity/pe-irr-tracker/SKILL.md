---
name: pe-irr-tracker
description: "Track and calculate IRR for MBL Partners fund and individual investments. Use when the user says 'IRR', 'internal rate of return', 'net IRR', 'gross IRR', 'fund IRR', 'deal IRR', 'investment IRR', 'calculate IRR', 'IRR calculation', 'IRR model', 'IRR update', 'current IRR', 'IRR to date', 'IRR on Allevio', 'IRR on HIVE', 'IRR on Column6', 'portfolio IRR', 'track IRR', 'IRR tracking', 'IRR report', 'IRR performance', 'what is our IRR', 'how are we doing on IRR', 'LP target IRR', 'hurdle rate', 'preferred return IRR', 'time-weighted return', 'money-weighted return', 'returns calculation', 'fund returns', 'investment returns', 'return on investment', 'PE returns', 'fund performance returns', 'J-curve', 'J curve', 'IRR drag', 'management fee drag', 'fee drag', 'vintage year', 'fund vintage', or 'IRR since inception'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--scope <fund|allevio|hive|column6>] [--action <calculate|update|report|model>] [--type <gross|net>] [--period <quarter|annual|inception-to-date>]"
---

# PE IRR Tracker

Track and calculate IRR for MBL Partners fund and individual portfolio investments — computing gross and net IRR from capital flows (contributions and distributions), maintaining cash flow models for each investment, updating IRR as new capital is deployed and distributions are received, and reporting fund-level IRR to Matt Mathison and LPs. IRR is the primary return metric for PE funds: it measures the time-weighted value of LP capital — accounting for both the return generated and the time it took to generate it; a 2.5x MOIC over 4 years (IRR ~26%) is dramatically better than the same 2.5x over 8 years (IRR ~12%); Dr. Lewis maintains the IRR model and updates it quarterly.

## When to Use
- Quarterly fund IRR update
- An LP asks "what is our IRR?"
- A new capital call reduces IRR (J-curve effect)
- Exit proceeds are received and IRR is finalized for a realized investment

## IRR Tracking Framework

```
IRR CONCEPTS AND DEFINITIONS:

  GROSS IRR: IRR of investment cash flows before management fees and carried interest
    Measures: pure investment performance (before GP economics are deducted)
    Used for: benchmarking against comparable deals; deal-level performance
    Inputs: equity invested (negative cash flow); distributions or exit proceeds (positive cash flow)
    
  NET IRR: IRR of LP cash flows after management fees and carried interest
    Measures: actual return received by LPs
    Used for: LP reporting; fund performance benchmarking
    Inputs: capital calls (negative cash flow); distributions (positive cash flow)
    Note: net IRR is always lower than gross IRR due to management fees and carried interest
    
  J-CURVE EFFECT:
    In early years of a PE fund, IRR is negative or very low because:
      Management fees are paid out of capital (fee drag)
      Capital is deployed but investments haven't had time to appreciate
      No distributions yet
    J-curve inflects positive when: realized exits + unrealized FMV appreciation exceeds invested capital + fees
    Typical J-curve: negative in years 1-3; inflecting in years 3-5; strongly positive by years 5-7

IRR CALCULATION METHODOLOGY:

  PER INVESTMENT (deal-level IRR):
    Cash flows: date; amount (negative for invested capital; positive for distributions or exit proceeds)
    FMV (for unrealized investments): current quarter FMV from pe-fund-accounting
    Calculation: XIRR function (Excel; Python; or financial calculator) using dated cash flows
    
  FUND LEVEL (LP-level net IRR):
    Cash flows: capital calls (negative); distributions (positive); residual FMV (positive, unrealized value)
    Date of each cash flow matters for time-weighting
    Net IRR calculation: XIRR applied to LP-level flows (after management fees; before or after carry depending on LPA)
    
  EXAMPLE CASH FLOW TABLE:
    Date          CF Type           Amount
    2022-01-15    Capital call      ($4,500,000) — Allevio investment
    2022-07-01    Management fee    ($250,000) — semi-annual fee
    2023-01-01    Management fee    ($250,000) — semi-annual fee
    2024-01-01    Distribution      $500,000 — income distribution
    2024-06-30    Residual FMV      $8,200,000 — current FMV (unrealized)
    
    XIRR of above flows → fund net IRR as of June 30, 2024

FUND IRR TARGETS AND BENCHMARKS:

  MBL FUND TARGET:
    Gross IRR target: [verify with Matt Mathison — typically 20-25% for LMM PE]
    Net IRR target: [verify with Matt Mathison — typically 15-20% after fees]
    Preferred return (hurdle): [per LPA — typically 8%]
    
  BENCHMARKS (use for LP reporting context):
    Cambridge Associates LMM PE median IRR: ~15-18% net (varies by vintage year)
    Preqin LMM PE median: similar range
    Top quartile: >22% net IRR

IRR REPORTING CADENCE:

  QUARTERLY:
    Update FMV for unrealized investments (pe-fund-accounting)
    Recalculate gross and net IRR
    Update J-curve chart
    Brief Matt Mathison on fund IRR vs. target
    
  ANNUALLY:
    Full IRR attribution analysis (which investments drove return? which dragged?)
    Include in LP annual report (pe-lp-annual-meeting)
    
  AT EXIT:
    Finalize gross and net IRR for realized investment
    Update fund IRR removing the realized investment's residual FMV and adding exit proceeds
```

## Output Format

```markdown
# IRR Report — [Fund Name] — [Quarter Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Fund IRR Summary

| Metric | Current | Prior quarter | Inception to date |
|--------|---------|--------------|------------------|
| Gross IRR | [X%] | [X%] | [X%] |
| Net IRR | [X%] | [X%] | [X%] |
| Hurdle rate | [X%] | — | — |
| Gross IRR vs. hurdle | +[X%] | — | — |

---

## Investment-Level IRR

| Investment | Entry date | Invested | Distributions | Current FMV | Status | Gross IRR |
|-----------|-----------|---------|--------------|------------|--------|----------|
| Allevio | [Date] | $[X] | $[X] | $[X] | Unrealized | [X%] |
| HIVE | [Date] | $[X] | $[X] | $[X] | Unrealized | [X%] |
| Column6 | [Date] | $[X] | $[X] | $[X] | Unrealized | [X%] |

---

## J-Curve Chart

Quarter: Q1 | Q2 | Q3 | Q4 | Q5 | Q6 | Q7 | Q8
Net IRR: [X%] | [X%] | [X%] | [X%] | [X%] | [X%] | [X%] | [X%]
[J-curve: negative early, inflecting positive by Q[N]]
```

## Output Contract
- IRR is calculated from actual dated cash flows, not assumed annual flows — a PE fund that calculates IRR using annual capital calls and annual distributions is approximating; the XIRR function with exact dates is the correct methodology; Dr. Lewis maintains a dated cash flow ledger for each investment (every capital call; every distribution; with the exact date); the FMV from pe-fund-accounting is the terminal value for unrealized investments; the XIRR calculation on the exact dated cash flow series is the fund's IRR; any shortcut that doesn't use exact dates will misstate the time-weighted return
- Gross and net IRR are both disclosed and both contextualized — LPs understand that net IRR is the number that matters for their economics; gross IRR shows investment performance before GP economics; Dr. Lewis reports both with a clear explanation of the difference; presenting only gross IRR in LP communications without also showing net IRR is misleading — the LP's actual return is net IRR
- IRR is updated immediately when exit proceeds are received — when an investment is exited, the residual FMV is replaced by the actual exit proceeds and the date; Dr. Lewis updates the cash flow model within 24 hours of closing and recalculates both the deal-level IRR and the fund-level IRR; Matt Mathison receives the updated IRR before it goes into any LP communication; a realized IRR that is below the hurdle rate triggers an LP communication review (distributions may be affected by the waterfall)
- HITL required: any update to the FMV used in IRR calculation → pe-fund-accounting valuation committee approval first; fund-level IRR included in LP reports → Matt Mathison review before distribution; IRR below the preferred return rate (hurdle) → Matt Mathison briefing; realized IRR at exit → Matt Mathison review before LP communication; any IRR calculation methodology question → fund counsel or fund administrator advice

## System Dependencies
- **Reads from:** pe-fund-accounting (FMV per quarter; fund cash flows; management fee schedule); pe-capital-call-manager (capital call dates and amounts); pe-distribution-manager (distribution dates and amounts); pe-lp-admin (LP-level capital account history for net IRR); exit proceeds (from pe-exit-financial-prep at exit)
- **Writes to:** IRR model (Excel/Python — SharePoint → Portfolio → Returns → IRR_Model.xlsx); pe-lp-quarterly-report (fund IRR section); pe-lp-annual-meeting (full IRR attribution analysis); Matt Mathison quarterly briefings; pe-fund-performance-review (IRR vs. target)
- **HITL Required:** FMV used in IRR → pe-fund-accounting valuation committee; fund IRR in LP reports → Matt review; IRR below hurdle → Matt briefing; realized IRR at exit → Matt before LP communication; methodology questions → fund counsel or administrator

## Test Cases
1. **Golden path:** Q2 IRR update. Allevio: invested $8M (Jan 2022); distributions $0; current FMV $14.2M (Q1 valuation committee approved). HIVE: invested $5M (Jun 2022); distributions $0; current FMV $7.8M. Column6: invested $4M (Mar 2023); distributions $500K (Dec 2023); current FMV $5.9M. Management fees called: $500K (Jan 2022) + $500K (Jan 2023). Gross IRR (Allevio): XIRR([−8M, 14.2M], [Jan-2022, Jun-2024]) = 31%. Fund net IRR (all flows): XIRR([−8M, −5M, −4M, −500K, −500K, −500K, +500K, +28.0M terminal], [dates...]) = 22%. Gross: 31%; Net: 22%. Both above hurdle of 8%. On track. Matt briefed; LP report updated.
2. **Edge case:** A valuation committee decision reduces Allevio FMV from $14.2M to $12.8M following a change in comparable company multiples → Dr. Lewis: "The updated Allevio FMV of $12.8M (down from $14.2M) reduces fund gross IRR from 31% to 27% and net IRR from 22% to 19%. Both remain well above the 8% hurdle rate. I'm updating the IRR model and briefing Matt. This is a valuation methodology change, not a business performance change — Allevio's operational metrics are on track. I'll include an explanation in the Q2 LP report: 'Allevio FMV was adjusted to reflect a compression in comparable MSO public company multiples; the operational business is performing on plan.'"
3. **Adversarial:** An LP requests Dr. Lewis to provide the IRR calculation using a different methodology that produces a higher number, arguing "other funds report it this way" → Dr. Lewis: "Our IRR calculation methodology is described in our fund's reporting standards and is consistent across all reporting periods — changing it to produce a higher number in a single report would be misleading to you and to other LPs who will compare our historical IRR across quarters. I'm not going to change the methodology for a single quarter's report. If you believe our methodology is incorrect or inconsistent with market standards, I'm happy to share the methodology in detail and engage with our fund administrator to verify it against GIPS standards or ILPA guidance. That would result in a methodology correction applied consistently to all periods — not a one-time adjustment."

## Audit Log
All IRR models retained (quarterly versions; with FMV inputs; cash flow tables; calculation output). Valuation committee approvals retained (FMV inputs to IRR). Realized investment IRR calculations retained permanently. LP report IRR disclosures retained. Matt Mathison briefings retained (IRR updates; below-hurdle events).

## Deprecation
IRR tracking is a permanent function for the life of each fund and is retained for the required statutory period after wind-down. Calculation methodology is reviewed annually against ILPA and GIPS standards.
