---
name: pe-moic-calculator
description: "Calculate and track MOIC for MBL Partners fund and individual investments. Use when the user says 'MOIC', 'multiple on invested capital', 'multiple', 'money multiple', 'investment multiple', 'return multiple', 'TVPI', 'total value to paid-in', 'DPI', 'distributions to paid-in', 'RVPI', 'residual value to paid-in', 'calculate MOIC', 'MOIC calculation', 'MOIC model', 'MOIC update', 'current MOIC', 'MOIC to date', 'MOIC on Allevio', 'MOIC on HIVE', 'MOIC on Column6', 'portfolio MOIC', 'track MOIC', 'MOIC tracking', 'MOIC report', 'gross MOIC', 'net MOIC', 'realized MOIC', 'unrealized MOIC', 'blended MOIC', 'fund multiple', 'investment multiple', 'what multiple are we at', 'how many times our money', '2x', '3x', '2.5x', 'exit multiple', 'target multiple', 'return on investment ROI', 'fund performance multiple', 'invested capital', 'total invested', 'total returned', or 'LP capital multiple'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--scope <fund|allevio|hive|column6>] [--action <calculate|update|report>] [--type <gross|net|tvpi|dpi|rvpi>] [--period <current|exit|scenario>]"
---

# PE MOIC Calculator

Calculate and track MOIC (Multiple on Invested Capital) for MBL Partners fund and individual portfolio investments — computing gross and net multiples, maintaining the TVPI/DPI/RVPI decomposition, and tracking progress toward the fund's target return. MOIC is the simplest and most intuitive PE return metric: it answers "how many times did we turn our money?" without the time-weighting complexity of IRR; a 2.5x MOIC means MBL returned $2.50 for every $1.00 invested; LPs understand MOIC intuitively and use it to compare across funds; Matt Mathison uses it to assess whether each investment is on track to hit the fund's return targets.

## When to Use
- Quarterly MOIC update for the fund and each entity
- An LP asks "what multiple are we at?"
- Evaluating whether an exit now vs. holding longer improves MOIC
- Building the return sensitivity analysis for a board or LP presentation

## MOIC Calculation Framework

```
MOIC DEFINITIONS:

  GROSS MOIC: Total value (FMV + distributions) / capital invested
    Measures: investment performance before GP economics
    Formula: (current FMV + cumulative distributions received) / invested equity
    Use: deal-level performance; benchmarking
    
  NET MOIC (TVPI): Total value to LPs (after fees and carry) / LP capital called
    Formula: (LP distributions received + LP share of residual FMV) / LP capital called
    Note: net MOIC = TVPI for LP reporting purposes
    
  TVPI DECOMPOSITION:
    TVPI = DPI + RVPI
    DPI (Distributions to Paid-In): cash distributions already received / capital called
      Measures: "how much have LPs already gotten back?"
      A high DPI means risk is reduced (money already returned)
    RVPI (Residual Value to Paid-In): remaining FMV / capital called
      Measures: "what is the remaining unrealized value?"
      RVPI decreases as the fund distributes and matures
      
  EXAMPLE:
    LP called $10M total
    LP received $3M in distributions (DPI = 3M/10M = 0.30x)
    LP share of remaining FMV = $14M (RVPI = 14M/10M = 1.40x)
    TVPI = 0.30 + 1.40 = 1.70x
    Interpretation: LP has received 0.30x back in cash; 1.40x remains in unrealized value

DEAL-LEVEL MOIC TRACKING:

  PER ENTITY (gross MOIC — for MBL internal tracking):
  
    ALLEVIO:
      Invested capital: $[X]M (verify from QuickBooks)
      Cumulative distributions received: $[X]M
      Current FMV (from pe-fund-accounting): $[X]M
      Gross MOIC: ($[X] + $[X]) / $[X] = [X.Xx]x
      Target gross MOIC (at exit): [per investment thesis — verify with Matt Mathison]
      
    HIVE:
      Invested capital: $[X]M
      Distributions (royalty income distributions): $[X]M
      Current FMV: $[X]M
      Gross MOIC: [X.Xx]x
      
    COLUMN6:
      Invested capital: $[X]M
      Distributions: $[X]M
      Current FMV: $[X]M
      Gross MOIC: [X.Xx]x

MOIC TARGETS AND BENCHMARKS:

  MBL FUND TARGETS (verify with Matt Mathison per fund mandate):
    Gross MOIC target: [typically 2.5-3.5x for LMM PE]
    Net MOIC target: [typically 2.0-2.5x after fees and carry]
    Minimum acceptable MOIC: [1.5x net — return enough to justify illiquidity and risk]
    
  BENCHMARKS:
    LMM PE median gross MOIC: ~2.0-2.5x (varies by vintage)
    Top quartile LMM PE: >3.0x gross
    
MOIC BRIDGE ANALYSIS:

  VALUE BRIDGE FROM ENTRY TO CURRENT:
    Entry EBITDA × entry multiple = entry EV = invested capital equivalent
    EBITDA growth (actual vs. projected)
    Multiple change (entry multiple vs. current FMV implied multiple)
    Debt paydown (if leveraged)
    Net effect: current FMV
    
  MOIC SENSITIVITY TO EXIT TIMING:
    Exit now: [X.Xx]x gross MOIC
    Exit in 1 year (projected): [X.Xx]x (per pe-sensitivity-analyzer)
    Exit in 2 years (projected): [X.Xx]x
    Holding longer only makes sense if: (1) EBITDA growth trajectory is strong; 
    (2) Multiple expansion story is building; (3) A better buyer emerges in 12-18 months
```

## Output Format

```markdown
# MOIC Report — [Fund Name] — [Quarter Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Fund MOIC Summary (Net — LP Perspective)

| Metric | Current | Prior quarter | Target |
|--------|---------|--------------|--------|
| TVPI (net) | [X.Xx]x | [X.Xx]x | [X.Xx]x |
| DPI | [X.Xx]x | [X.Xx]x | [X.Xx]x at fund end |
| RVPI | [X.Xx]x | [X.Xx]x | — |

---

## Investment-Level Gross MOIC

| Investment | Invested | Distributions | FMV | Total value | Gross MOIC | Target MOIC | On track? |
|-----------|---------|--------------|-----|------------|-----------|------------|---------|
| Allevio | $[X] | $[X] | $[X] | $[X] | [X.Xx]x | [X.Xx]x | ✅ / ⚠️ |
| HIVE | $[X] | $[X] | $[X] | $[X] | [X.Xx]x | [X.Xx]x | ✅ / ⚠️ |
| Column6 | $[X] | $[X] | $[X] | $[X] | [X.Xx]x | [X.Xx]x | ✅ / ⚠️ |

---

## MOIC Bridge (Entry → Current — Allevio example)

| Driver | Contribution to MOIC | Notes |
|--------|---------------------|-------|
| EBITDA growth | +[X.Xx]x | Revenue +[X%]; margin +[X%] |
| Multiple expansion | +[X.Xx]x | Entry [X.Xx]x → Current FMV implied [X.Xx]x |
| Net MOIC-to-date | [X.Xx]x gross | |
```

## Output Contract
- MOIC is calculated from actual invested capital, not committed capital — the denominator in MOIC is the equity actually invested (cash out the door), not the fund's committed capital; using committed capital understates the MOIC and misleads LPs; Dr. Lewis uses the actual funded equity amount from QuickBooks as the MOIC denominator; management fees are included in net MOIC (they are a reduction in LP capital) but not in gross MOIC (gross measures pure investment performance)
- TVPI = DPI + RVPI, and both components must add up — if the math doesn't work, there's an error; Dr. Lewis verifies the TVPI calculation ties to the components before distributing any report; a TVPI report where 0.30 DPI + 1.40 RVPI does not equal the stated 1.70 TVPI means there's a data error that must be resolved before the report is distributed
- MOIC targets are quoted as both gross and net — an LP who hears "3x MOIC" without knowing whether it's gross or net cannot evaluate the return; some funds quote gross multiples to make performance look better; Dr. Lewis always quotes both in LP communications; the LP's actual return is the net multiple after management fees and carried interest; if the gross multiple is 3x and the net multiple (after 20% carry) is 2.5x, both numbers are disclosed
- HITL required: any MOIC update included in LP reports → Matt Mathison review before distribution; FMV inputs to MOIC → pe-fund-accounting valuation committee approval; investment MOIC that has declined below 1.0x (paper loss) → Matt Mathison immediate briefing; MOIC at realized exit → Matt Mathison review before LP communication; MOIC target revisions → Matt Mathison approval

## System Dependencies
- **Reads from:** pe-fund-accounting (FMV per entity per quarter; total invested capital); pe-capital-call-manager (capital called history); pe-distribution-manager (distribution history); QuickBooks (invested capital verification); pe-irr-tracker (return context alongside IRR); pe-lp-admin (LP-level capital account for net MOIC)
- **Writes to:** MOIC tracker (SharePoint → Portfolio → Returns → MOIC_Tracker.xlsx); pe-lp-quarterly-report (TVPI/DPI/RVPI section); pe-lp-annual-meeting (full MOIC attribution analysis); pe-fund-performance-review (MOIC vs. target); Matt Mathison quarterly briefings
- **HITL Required:** LP report MOIC → Matt review; FMV inputs → pe-fund-accounting committee; MOIC below 1.0x → Matt immediately; realized exit MOIC → Matt before LP communication; MOIC target revision → Matt approval

## Test Cases
1. **Golden path:** Q3 MOIC update. Allevio: invested $8M; distributions $0; FMV $14.2M → gross MOIC 1.78x. HIVE: invested $5M; distributions $0; FMV $7.8M → gross MOIC 1.56x. Column6: invested $4M; distributions $500K; FMV $5.9M → gross MOIC ($500K + $5.9M) / $4M = 1.60x. Total fund: invested $17M; distributions $500K; total FMV $27.9M → total value $28.4M → gross MOIC 1.67x. Management fees paid: $1M total → LP net invested $18M total → net TVPI = ($500K + $27.9M) / $18M = 1.58x. DPI = $500K / $18M = 0.03x. RVPI = 1.55x. Tie check: 0.03 + 1.55 = 1.58 ✅.
2. **Edge case:** HIVE FMV drops significantly following a WTI price decline — HIVE gross MOIC falls to 0.95x (paper loss) → Dr. Lewis: "Immediate Matt Mathison briefing. HIVE gross MOIC has fallen to 0.95x following the WTI price decline and consequent FMV reduction. This is a paper loss — we have not exited; the actual royalty revenue is still positive; and WTI has recovery potential above our $58 pause threshold. However, I'm briefing you immediately because: (1) A MOIC below 1.0x is a threshold I escalate without exception; (2) LPs who see RVPI include HIVE's FMV will see the decline in the quarterly report; (3) We should discuss whether to accelerate any HIVE dispositions or hold through the WTI cycle. Fund-level TVPI remains above 1.0x because Allevio and Column6 are performing well."
3. **Adversarial:** Matt Mathison asks Dr. Lewis to present "the MOIC including the management fee offset" in a way that makes the net MOIC look closer to the gross MOIC → Dr. Lewis: "I understand the instinct, but presenting MOIC in a way that obscures the impact of management fees on LP returns is misleading. The standard — and what sophisticated LPs expect — is gross MOIC (investment performance before fees) and net MOIC (what LPs actually earn after fees and carry). I can add a third column that shows the management fee contribution (what the fee buys: sourcing, DD, portfolio management, value creation) in the narrative section of the report, which is a legitimate way to contextualize the fee. But the net MOIC number itself must be accurate and unambiguous. My recommendation: let's lead with the net number and use the narrative to tell the value-creation story."

## Audit Log
All MOIC calculations retained (quarterly; with FMV inputs; distribution history; invested capital). FMV valuation committee approvals retained. LP report MOIC disclosures retained. Matt Mathison briefings retained (below-1.0x events; exit MOIC). Realized exit MOIC calculations retained permanently.

## Deprecation
MOIC tracking is a permanent function for the life of each fund and is retained for the required statutory period. Calculation methodology is reviewed annually against ILPA and industry standards.
