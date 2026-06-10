---
name: budget-vs-actual-variance
description: "Generate variance analysis comparing actual financial results to budget with root-cause narrative. Use when the user says 'budget vs actual', 'variance analysis', 'explain the variance', 'why are we over/under budget', 'budget analysis', 'budget performance report', 'actuals vs plan', or 'what drove the variance'. Produces management-ready variance commentary."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<actuals-data> [--budget-file <path>] [--period <month|quarter|ytd>]"
---

# Budget vs Actual Variance

Compare actual financial results against budget, calculate variances, and produce management-ready narrative explaining what drove the differences.

## When to Use
- Monthly close reporting package
- Board and LP updates
- When leadership asks "why are we over/under?"
- Quarterly business reviews
- Pre-close estimate vs final close comparison

## Process

### Step 1 — Load Data
Accept: actual P&L (QuickBooks export or manual) + budget (spreadsheet or manual input).
Period: current month, YTD, or full quarter.

### Step 2 — Calculate Variances
For each line item:
- $ Variance = Actual − Budget
- % Variance = (Actual − Budget) / Budget × 100
- FAV = favorable to plan (revenue over, expense under)
- UNF = unfavorable to plan (revenue under, expense over)

### Step 3 — Materiality Filter
Flag for narrative only variances that are:
- > $10,000 absolute, OR
- > 10% of budget for that line, OR
- Any variance on a KPI line (revenue, EBITDA, cash)

### Step 4 — Root Cause Prompting
For each material variance, ask if the user can provide context. Accepted inputs:
- Timing (expense shifted months, not a permanent issue)
- Volume (more/less activity than planned)
- Price (rates changed from assumption)
- One-time (non-recurring item)
- Error (budget assumption was wrong — note for re-forecast)

### Step 5 — Write Narrative
For each material line: one sentence — what happened, why, and whether it's expected to continue.

## Output Format

```markdown
# Budget vs Actual — <Period>
**Entity:** <company> | **Prepared:** <date>

## Summary Dashboard
| Metric | Budget | Actual | Variance | Status |
|--------|--------|--------|----------|--------|
| Revenue | $X | $X | +$X (+X%) | ✅ FAV |
| Gross Profit | $X | $X | -$X (-X%) | ⚠️ UNF |
| EBITDA | $X | $X | -$X (-X%) | ❌ UNF |
| Cash | $X | $X | +$X | ✅ FAV |

## Material Variances — Narrative

**Revenue: +$X (+X%) FAV**
New contract with [Customer] closed in [Month] ahead of budget — $X accelerated recognition. Sustainable into Q[N].

**Payroll: +$X (+X%) UNF**
Two engineering hires onboarded [Date] vs [Date+60] budgeted — $X in payroll pull-forward. Ongoing through year-end.

**T&E: -$X (-X%) FAV**
Conference spend deferred from [Month] to Q[N+1] — timing only. Expect recovery next quarter.

## YTD Trend
<3-sentence narrative on overall YTD position vs plan>

## Forecast Implication
Based on variances to date: full-year EBITDA estimated at $X vs $X budget (<FAV/UNF> by $X).
```

## Output Contract
- All variances state FAV or UNF explicitly — no ambiguity
- Narrative is management-grade — not accounting jargon
- HITL required before distribution to board or LP

## System Dependencies
- **Reads from:** Actuals (QuickBooks) and budget data (provided as input)
- **Writes to:** Nothing
- **HITL Required:** Before including in board deck or LP communication

## Deprecation
Retire when FP&A tool generates automated variance commentary.
