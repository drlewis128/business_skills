---
name: 1099-nec-preparation
description: "Identify qualifying vendors, aggregate payments, and prepare 1099-NEC filing data. Use when the user says '1099 prep', '1099-NEC', 'prepare 1099s', 'which vendors need 1099s', '1099 filing', 'contractor tax forms', 'year-end 1099', or 'who do we send 1099s to'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--year <YYYY>] [--entity <name>]"
---

# 1099-NEC Preparation

Identify vendors requiring 1099-NEC filings, aggregate annual payments, flag missing W-9 data, and produce IRS-ready filing data.

## When to Use
- January (primary) — for prior year filings (deadline: January 31)
- Throughout year — as new contractors are onboarded (capture W-9 early)
- When auditors request 1099 compliance evidence

## 1099-NEC Requirements (IRS Rules)
File 1099-NEC when ALL of these are true:
1. Paid to an individual, sole proprietor, partnership, or LLC (not incorporated)
2. Total payments ≥ $600 in the calendar year
3. Payment was for services (not goods)
4. Payments were made in the course of your trade or business

Exceptions — do NOT file for:
- Corporations (C-Corp or S-Corp) — unless attorney or medical provider
- Employees (use W-2 instead)
- Payments via credit card or third-party payment processor (PayPal, Stripe — they handle reporting)

## Process

### Step 1 — Pull All Vendor Payments for Year
From QuickBooks/AP system: all payments by vendor for the calendar year.

### Step 2 — Apply Qualification Filter
| Vendor Type | Threshold | File? |
|------------|-----------|-------|
| Individual / Sole prop | ≥ $600 | YES |
| LLC (sole member) | ≥ $600 | YES |
| Partnership | ≥ $600 | YES |
| Corporation | ≥ $600 | Usually NO |
| Medical/legal corp | ≥ $600 | YES |

### Step 3 — Check W-9 Status
For each qualifying vendor:
- W-9 on file? Name, address, TIN/SSN correct?
- Flag missing W-9 — backup withholding may apply (24%)

### Step 4 — Aggregate Payments
Sum all qualifying payments per vendor for the year (include all check, ACH, wire payments).

## Output Format

```markdown
# 1099-NEC Preparation — <year>
**Entity:** <company> | **Due:** January 31, <year+1>

## Must File (≥ $600, qualifying vendor)
| Vendor | W-9 on File | Total Payments | TIN | Action |
|--------|-------------|---------------|-----|--------|
| John Smith Consulting | ✅ | $8,500 | ***-**-1234 | File 1099-NEC |
| ABC Design LLC | ❌ MISSING | $3,200 | — | Request W-9 immediately |

## Borderline (verify entity type)
...

## Excluded (corporations or <$600)
<N> vendors excluded — reason noted

## Missing W-9 Action List
- Contact ABC Design LLC — W-9 required before Jan 15 to avoid backup withholding

## Summary
Total 1099-NECs to file: <N> | Total payments reported: $X
```

## Output Contract
- Never assumes entity type — flags for verification when unclear
- Missing W-9 vendors flagged as urgent before deadline
- HITL required before filing — CPA or tax preparer should verify

## System Dependencies
- **Reads from:** AP payment history (QuickBooks), vendor W-9 file
- **Writes to:** Nothing (outputs filing data for CPA/preparer)
- **HITL Required:** Before submitting 1099s to IRS

## Deprecation
Retire when QuickBooks or tax platform auto-generates 1099 filings.
