---
name: financial-kpi-briefing
description: "Auto-compose a weekly financial KPI snapshot for leadership. Use when the user says 'financial KPI report', 'weekly finance brief', 'financial dashboard summary', 'compile the finance KPIs', 'weekly numbers for Matt', 'financial snapshot', or 'pull together the financial metrics'. Produces a concise, BLUF-format brief ready for executive distribution."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <week|month|quarter>] [--format <brief|dashboard|slide>]"
---

# Financial KPI Briefing

Compile and narrate key financial metrics into a leadership-ready brief. Designed for Matt Mathison's weekly review rhythm — facts first, variance second, action third.

## When to Use
- Every Monday before the weekly leadership sync
- Before any board or LP update
- When a portfolio company CFO needs a roll-up for MBL leadership
- Month-end and quarter-end reporting cycles

## KPI Categories

### Revenue & Growth
- Total revenue (period vs prior period vs budget)
- Revenue by business unit or entity
- MoM and YoY growth rates
- ARR/MRR if applicable (SaaS-adjacent businesses)

### Profitability
- Gross margin (%) vs budget
- EBITDA ($ and %) vs budget
- Net income vs budget

### Cash & Liquidity
- Cash on hand
- Net cash change for period
- Days Cash on Hand
- Outstanding LOC draw (if applicable)

### Receivables & Payables
- AR aging summary (current / 30 / 60 / 90+)
- DSO (Days Sales Outstanding)
- AP outstanding
- DPO (Days Payable Outstanding)

### Operational Metrics (business-specific)
- Headcount vs budget
- Revenue per employee
- Any business-specific KPIs provided

## Process

### Step 1 — Collect Inputs
Accept financial data as:
- QuickBooks export (P&L, Balance Sheet, AR Aging)
- Manual inputs from user
- Prior brief + deltas

### Step 2 — Calculate Variances
For each metric:
- Actual vs Budget: $ variance and % variance
- Actual vs Prior Period: $ change and % change
- Flag: FAV (favorable) or UNF (unfavorable)

### Step 3 — Write Narrative
3–5 bullet BLUF summary:
- Lead with the most important fact (usually cash or revenue)
- State variances factually (not defensively)
- Flag any metric requiring action or explanation

## Output Format

```markdown
# Financial KPI Brief — Week of <date>
**Prepared for:** Matt Mathison
**Entity:** <company>
**Prepared by:** AI Finance Briefing | Review required before distribution

---

## Bottom Line
- Revenue tracking $X ahead of budget (+Y%) — driven by <entity>
- Cash position strong at $X; DSO improved to X days from X days last month
- Watch: EBITDA margin compressed to X% vs X% budget — payroll variance explanation below

---

## Revenue
| Metric | Actual | Budget | Variance | Prior Period |
|--------|--------|--------|----------|-------------|
| Total Revenue | $X | $X | +$X (+X%) FAV | $X |
| [Entity 1] | $X | $X | ... | ... |

## Profitability
| Metric | Actual | Budget | Variance |
|--------|--------|--------|----------|
| Gross Margin | X% | X% | -X% UNF |
| EBITDA | $X | $X | -$X UNF |

## Cash & Liquidity
- Cash on hand: $X (X days coverage)
- Net change: +/-$X vs prior week

## Receivables
- AR current: $X | 30-day: $X | 60-day: $X | 90+: $X
- DSO: X days | Target: X days | Status: ✅/⚠️

## Action Items
1. <specific action required> — Owner: <name> — By: <date>
```

## Output Contract
- BLUF lead always — most important fact in the first bullet
- Every variance states FAV or UNF explicitly
- Unfavorable variances include a brief explanation or flag "explanation needed"
- HITL required before distributing to Matt or board

## System Dependencies
- **Reads from:** QuickBooks exports, manual inputs
- **Writes to:** Nothing (outputs draft for review)
- **HITL Required:** Before distributing to Matt Mathison, board, or LP investors

## Deprecation
Retire when a connected BI tool auto-generates and distributes this brief.
