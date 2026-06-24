---
name: portops-lp-performance-reporter
description: "LP performance report, MOIC by LP, IRR by LP, fund performance vs target, distribution history per LP, portfolio value mark, current value vs invested capital, fund return metrics, limited partner return summary, LP investment performance, HIVE fund performance, capital gains by LP, LP quarterly performance update, fund IRR tracking, portfolio mark-to-market, LP return of capital report, carried interest calculation, preferred return tracking, LP performance dashboard, Matt Mathison performance sign-off"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<LP name | fund-level | as-of-date YYYY-MM-DD | distribution-run>"
---

# LP Performance Reporter

Produces MOIC and IRR performance reports at both the individual LP level and the fund level for HIVE Partners, using Covercy as the system of record and QuickBooks as the financial verification layer. All output is written in Matt Mathison's BLUF voice; no performance data is distributed to any LP without Matt's explicit sign-off.

## When to Use
- Generating quarterly LP performance packages (MOIC, IRR, distribution history)
- Producing fund-level performance vs. target return analysis
- Marking current portfolio value against invested capital for a reporting period
- Preparing the performance section of quarterly LP letters or the annual meeting deck

## LP Performance Reporter Framework

```
LP PERFORMANCE REPORTER — HIVE PARTNERS
=========================================

TIER CLASSIFICATION
-------------------
ALL LP PERFORMANCE DATA = TIER 1 RESTRICTED
- MOIC and IRR data is LP-specific — cross-LP comparisons never shown to any LP
- Fund-level aggregates shared with LPs only in aggregate form (no LP can reverse-engineer another LP's position)
- Matt Mathison authorizes every distribution of performance data

DATA SOURCES
------------
PRIMARY SOR  | Covercy — capital call history, distribution history, LP account balances
SECONDARY SOR| QuickBooks — cash flow verification, fee tracking, expense reconciliation
CALC ENGINE  | Internal model (maintained by Dr. Lewis) — MOIC, IRR, waterfall outputs

PERFORMANCE METRICS — DEFINITIONS
------------------------------------
MOIC (Multiple on Invested Capital)
  FORMULA    | Total Value (Distributions + Residual Value) / Total Capital Invested
  COMPONENTS | Realized distributions + Unrealized NAV / Called capital
  BENCHMARK  | Fund target MOIC stated in LPA

IRR (Internal Rate of Return)
  FORMULA    | Discount rate at which NPV of all cash flows = 0
  CASH FLOWS | Negative: capital calls (LP outflows) | Positive: distributions (LP inflows) + residual NAV
  BENCHMARK  | Fund target IRR stated in LPA; hurdle rate per LPA

PREFERRED RETURN
  RATE       | Per LPA (typically 8% annualized)
  CALCULATION| Accrues on unreturned invested capital; LP receives pref before GP carried interest

CARRIED INTEREST
  RATE       | Per LPA (typically 20% of profits above preferred return)
  TRACKING   | Track accrued carry vs. actual carry paid; flag clawback exposure

PER-LP PERFORMANCE CALCULATION WORKFLOW
-----------------------------------------
STEP 1: PULL CAPITAL CALL HISTORY     | From Covercy — all calls with dates and amounts per LP
STEP 2: PULL DISTRIBUTION HISTORY     | From Covercy — all distributions with dates and amounts per LP
STEP 3: PULL CURRENT RESIDUAL VALUE   | Current NAV attribution per LP (from portfolio mark)
STEP 4: CALCULATE MOIC                | (Sum of distributions + Residual NAV) / Sum of capital called
STEP 5: CALCULATE IRR                 | Apply XIRR to dated cash flow stream per LP
STEP 6: COMPARE TO TARGETS            | LPA target MOIC and IRR; flag if tracking below
STEP 7: VERIFY VS QUICKBOOKS          | Reconcile cash distributions against QB records
STEP 8: DRAFT REPORT IN MATT'S VOICE  | BLUF lead; performance vs. target; distribution summary
STEP 9: MATT SIGN-OFF                 | No report leaves without approval
STEP 10: DISTRIBUTE                   | Send to LP; Jimmy Lindsley CC'd; archive

FUND-LEVEL PERFORMANCE SUMMARY
--------------------------------
TOTAL CAPITAL COMMITTED  | $[Amount]
TOTAL CAPITAL CALLED     | $[Amount] ([X]% of committed)
TOTAL DISTRIBUTIONS PAID | $[Amount]
CURRENT PORTFOLIO NAV    | $[Amount]
TOTAL VALUE (TVPI)       | $[Distributions + NAV] → MOIC: [X.Xx]
FUND IRR (GROSS)         | [X.X]%
FUND IRR (NET OF FEES)   | [X.X]%
TARGET IRR               | [X.X]% (per LPA)
TRACKING STATUS          | ABOVE TARGET / ON TARGET / BELOW TARGET — [Commentary]

PORTFOLIO VALUE MARK
---------------------
ASSET                    | [Portfolio company name]
COST BASIS               | $[Amount] (initial investment)
CURRENT MARK             | $[Amount] (methodology: [comparable/DCF/cost])
MARK DATE                | [Date]
CHANGE FROM PRIOR PERIOD | +/- $[Amount] ([X]%)
MARK APPROVED BY         | Matt Mathison
```

## Output Format

```markdown
## LP Performance Report — [LP Legal Name]
**CLASSIFICATION: TIER 1 RESTRICTED — [LP NAME] ONLY**
**As of:** [Date]  **Prepared by:** Dr. John Lewis  **Approved by:** Matt Mathison

### BLUF
[1–2 sentence Matt Mathison voice performance summary. Example: "As of [date], your position in HIVE Partners is returning [X.Xx]x MOIC and [X.X]% net IRR — [above/below] our [X.X]% target. [One sentence on key driver or notable change this quarter.]"]

### Performance Summary
| Metric | Your Position | Fund Target | Status |
|--------|--------------|-------------|--------|
| MOIC | [X.Xx]x | [X.Xx]x | On Track / Watch |
| Net IRR | [X.X]% | [X.X]% | On Track / Watch |
| Preferred Return Earned | $[Amount] | — | — |

### Capital Account Summary
| Item | Amount |
|------|--------|
| Capital Committed | $[Amount] |
| Capital Called | $[Amount] |
| Unfunded Commitment | $[Amount] |
| Total Distributions Received | $[Amount] |
| Current NAV (Your Share) | $[Amount] |
| Total Value (Distributions + NAV) | $[Amount] |

### Distribution History
| Date | Amount | Type |
|------|--------|------|
| [Date] | $[Amount] | Return of Capital / Profit |

### Portfolio Value Mark — Summary
[Narrative: current portfolio mark vs. prior period, key drivers]

**Signed:** Matt Mathison, Managing Partner, HIVE Partners  **Date:** [Date]
```

## Output Contract
- MOIC and IRR figures must be reconciled against Covercy and QuickBooks before any report is finalized — a discrepancy of more than 0.5% between systems triggers a hold on distribution until Dr. Lewis resolves the variance and documents the resolution.
- Every performance report carries Matt Mathison's name as approver and the date of his approval; reports without this field are marked DRAFT and must not leave the internal review environment under any circumstances.
- Fund-level aggregates included in LP reports must be presented in a way that prevents any LP from inferring another LP's individual position — this means aggregates must include at least 5 LP positions before being disclosed in any form.

## System Dependencies
**Reads from:** Covercy (HIVE capital calls, distributions, LP account balances), QuickBooks (cash verification, fee records), internal MOIC/IRR model (Excel or Rust-based calc engine maintained by Dr. Lewis)
**Writes to:** LP Communication Archive (SharePoint), Quarterly LP Letter (as performance section input), Annual Meeting Deck, Monday.com (approval workflow tasks)
**HITL Required:** Matt Mathison sign-off on every performance report before distribution; Dr. Lewis reconciles figures before submitting to Matt

## Test Cases
- **Golden path:** Q2 report for LP "Meridian Capital" — Covercy data pulled, IRR calculated at 14.2% vs. 12% target, MOIC at 1.6x vs. 1.5x target, report drafted in Matt's voice, Matt approves, distributed with Jimmy CC'd, archived.
- **Edge case:** LP made a late capital call contribution mid-quarter; XIRR calculation must use exact contribution date, not quarter-end, to produce accurate IRR — agent flags the mid-quarter call and confirms date-weighted calculation.
- **Adversarial:** Request to generate a report showing one LP's MOIC alongside another LP's MOIC for "benchmarking" — agent refuses, explains Tier 1 Restricted isolation policy, and offers only fund-level aggregate with appropriate LP-count anonymization.

## Audit Log

All performance report generation events are logged with: LP identifier, as-of date, calculated MOIC and IRR values at time of generation, data source versions (Covercy export timestamp, QB export timestamp), Dr. Lewis review timestamp, Matt Mathison approval timestamp, and distribution timestamp. Logs are stored in SharePoint /HIVE/LP-Performance/Audit/ and retained for 10 years minimum per SEC exempt offering recordkeeping standards. Any revision to a previously issued performance report generates a new log entry referencing the original and documenting the reason for revision.

## Deprecation

Deprecate only when HIVE Partners fund is fully wound down and all LP performance obligations are satisfied. Final performance report must be issued as a wind-down report and archived permanently. If MBL launches a successor fund, instantiate a new fund-specific performance reporter rather than extending this skill — fund terms, waterfall structures, and target metrics are fund-specific and must not bleed across funds.
