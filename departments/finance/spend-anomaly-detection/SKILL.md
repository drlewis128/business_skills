---
name: spend-anomaly-detection
description: "Flag unusual transactions against historical patterns and vendor norms. Use when the user says 'find unusual transactions', 'spend anomalies', 'transaction review', 'flag suspicious spend', 'anomaly detection in spend', 'unusual vendor payments', 'find outliers in AP', or 'review transactions for anomalies'. First line of defense against fraud, billing errors, and policy violations."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<transaction-file | period> [--threshold <zscore|2.5>]"
---

# Spend Anomaly Detection

Analyze transaction data to surface statistical outliers, pattern breaks, and suspicious spend before it becomes a financial control failure.

## When to Use
- Weekly review of AP transactions
- Month-end financial close (pre-close review)
- After any new vendor is added to the AP system
- When auditors request evidence of transaction monitoring controls
- When fraud is suspected

## Anomaly Categories

### Statistical Outliers
- Transactions > 2.5 standard deviations from vendor's historical average
- Single-day spend > 3× prior week's daily average for any category
- Transaction just below approval threshold (round number just under limit — common fraud pattern)

### Vendor Pattern Breaks
- First-time vendor payment > $5,000
- Vendor payment frequency change (weekly → daily, or dormant vendor suddenly active)
- Vendor receiving payment to a new bank account or address
- Same vendor name with slightly different spelling (duplicate vendor risk)

### Behavioral Patterns
- Multiple payments to same vendor in same day
- Payments on weekends or holidays (unusual for B2B AP)
- Round-dollar amounts with no line items ($5,000.00 exactly — legitimate invoices are rarely this round)
- Payments to individuals at same address as a known vendor (kickback signal)

### Category Anomalies
- Entertainment spend spike
- T&E expense without trip records
- Unclassified or miscellaneous category overuse

## Process

### Step 1 — Load Transaction Data
Parse: date, vendor, amount, GL account, approver, payment method.

### Step 2 — Build Baselines
For each vendor: mean, standard deviation, typical payment frequency over trailing 90 days.
For each GL category: weekly spend baseline.

### Step 3 — Score Each Transaction
Z-score vs vendor baseline. Flag patterns from the categories above.

### Step 4 — Rank by Risk Score
Composite risk = statistical outlier score × behavioral pattern score × vendor risk score.

## Output Format

```markdown
# Spend Anomaly Report — <period>
**Transactions reviewed:** <N> | **Flagged:** <N> | **Date:** <today>

## 🔴 High Risk (immediate review)
| # | Date | Vendor | Amount | Flag | Risk Score |
|---|------|--------|--------|------|-----------|
| 1 | Jun 5 | Acme Corp | $4,950 | Just-below-threshold ($5K limit) | 94 |
| 2 | Jun 7 | New Vendor LLC | $12,000 | First-time vendor, no PO | 88 |

## 🟠 Medium Risk (review this week)
...

## ✅ Clean Transactions
<N> transactions reviewed — no anomalies detected.

## Recommended Actions
1. Pull PO for Acme Corp INV-4950 — verify split billing not occurring
2. Verify bank details for New Vendor LLC before releasing payment
```

## Output Contract
- Never flags a transaction as fraudulent (that is a legal determination) — flags as "requires review"
- All risk scores are explained, not opaque
- HITL required before escalating any finding to external parties

## System Dependencies
- **Reads from:** QuickBooks/Bill.com transaction export
- **Writes to:** Nothing (read-only analysis)
- **HITL Required:** Before escalating findings to HR, legal, or external parties

## Deprecation
Retire when AP system includes native AI-powered anomaly detection.
