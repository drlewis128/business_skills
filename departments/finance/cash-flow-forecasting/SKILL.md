---
name: cash-flow-forecasting
description: "Build a rolling 13-week cash flow forecast from AR, AP, payroll, and other inputs. Use when the user says 'cash flow forecast', 'cash position forecast', '13-week cash flow', 'project cash', 'when will we run out of cash', 'cash runway', 'weekly cash forecast', or 'liquidity forecast'. Critical for PE portfolio company cash management."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--weeks <13|26>] [--format <table|chart-data|exec-brief>]"
---

# Cash Flow Forecasting

Build a rolling 13-week (or 26-week) cash flow forecast from structured inputs. The primary liquidity visibility tool for PE portfolio companies — know your cash position before it becomes a crisis.

## When to Use
- Weekly — updated every Monday morning before leadership review
- When a large payment is upcoming and cash adequacy is uncertain
- When LP or board asks for cash runway analysis
- Before a capital call or debt service payment
- When a major customer payment is delayed

## Input Collection

Ask for or accept the following:
1. **Opening cash balance** — current bank balance
2. **AR schedule** — outstanding receivables with expected collection dates and amounts
3. **AP schedule** — outstanding payables with due dates and amounts
4. **Payroll** — pay dates and gross amounts for the forecast window
5. **Debt service** — loan payments, interest payments with dates
6. **Known one-time items** — tax payments, insurance renewals, capex, etc.
7. **Revenue forecast** — expected new cash receipts by week

## Forecasting Logic

### Step 1 — Build Week-by-Week Cash Inflows
For each of 13 weeks:
- Expected AR collections (by aging bucket: current, 30, 60, 90 days)
- New sales receipts from revenue forecast
- Other receipts (asset sales, tax refunds, etc.)

Apply collection efficiency by bucket:
- Current (0-30 days): 85% collect on time
- 31-60 days: 70% collect in week
- 61-90 days: 50% collect in week
- 90+ days: 25% collect in week (flag for collections review)

### Step 2 — Build Week-by-Week Cash Outflows
- Accounts payable due that week
- Payroll (use exact pay dates)
- Debt service
- Rent/lease payments
- Recurring vendor payments
- One-time items

### Step 3 — Calculate Net Weekly Position
`Net Cash = Opening Balance + Weekly Inflows - Weekly Outflows`
Carry forward each week's closing balance as the next week's opening.

### Step 4 — Flag Risk Weeks
Flag any week where:
- Ending cash < minimum operating reserve (ask for threshold or default to 4 weeks of OpEx)
- Cash balance goes negative at any point
- Single outflow > 20% of opening balance that week

### Step 5 — Sensitivity Analysis
Show two scenarios:
- **Base case**: as modeled
- **Stress case**: AR collections 15% slower, revenue 10% below forecast

## Output Format

```markdown
# 13-Week Cash Flow Forecast
**Entity:** <company>
**Prepared:** <date>
**Opening Balance:** $<amount>

| Week | Dates | Inflows | Outflows | Net | Closing Balance | Status |
|------|-------|---------|----------|-----|----------------|--------|
| Wk 1 | Jun 9-13 | $120,000 | $95,000 | $25,000 | $325,000 | ✅ |
| Wk 2 | Jun 16-20 | $80,000 | $210,000 | -$130,000 | $195,000 | ⚠️ Low |
...

## Risk Weeks
- **Week 2:** $210,000 in outflows (payroll $140K + rent $70K). Closing balance drops to $195,000 — below $200,000 reserve threshold.
  - Action: Accelerate collections on AR aging >30 days or draw on LOC.

## Cash Runway
**Base case:** Cash positive for full 13-week window
**Stress case:** Cash falls below reserve threshold by Week 8

## Recommended Actions
1. Call top 3 AR customers (>$50K balance) this week to confirm payment timing
2. Defer discretionary AP to Week 3 if possible — preserves Week 2 buffer
```

## Output Contract
- All weeks shown even if uneventful — completeness required
- Risk weeks are flagged with specific dollar amounts and recommended actions
- Stress case is always shown alongside base case
- HITL required before sharing with LP or board

## System Dependencies
- **Reads from:** AR aging, AP schedule, payroll data, bank balance (provided as input)
- **Writes to:** Nothing (outputs forecast for review)
- **HITL Required:** Before sharing forecast with LP investors or board — financial estimates require CFO review

## Deprecation
Retire when QuickBooks/ERP generates automated rolling cash forecasts with alert thresholds.
