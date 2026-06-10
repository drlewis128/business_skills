---
name: bank-reconciliation
description: "Reconcile bank statement to general ledger and surface uncleared items. Use when the user says 'bank reconciliation', 'reconcile the bank', 'bank rec', 'match bank statement to GL', 'uncleared checks', 'outstanding deposits', 'bank statement reconciliation', or 'bank to book reconciliation'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "<bank-statement-file> [--gl-file <path>] [--account <name>]"
---

# Bank Reconciliation

Match bank statement transactions to GL entries, identify uncleared items, and produce a completed reconciliation with explanations for any differences.

## When to Use
- Monthly close (mandatory for each bank account)
- When a GL account balance doesn't match expected cash position
- Before audit fieldwork
- When a payment is in dispute with a vendor

## Process

### Step 1 — Load Bank Statement
Extract: date, description, amount (debit/credit), running balance, ending balance.

### Step 2 — Load GL Cash Account
Extract: date, description, amount, running balance, ending balance for the same period.

### Step 3 — Match Transactions
Match by: amount + date (within 3 business days) + description similarity.

Unmatched categories:
- **In bank, not in GL** → Outstanding deposit (timing), bank fee not recorded, error
- **In GL, not in bank** → Outstanding check, in-transit payment, recording error

### Step 4 — Produce Reconciliation

Standard bank rec format:
```
Bank Statement Ending Balance:        $XX,XXX.XX
Add: Deposits in transit              + $X,XXX.XX
Less: Outstanding checks              - $X,XXX.XX
Adjusted Bank Balance:                $XX,XXX.XX

GL Book Balance (ending):             $XX,XXX.XX
Add: Unrecorded bank credits          + $XXX.XX
Less: Unrecorded bank charges         - $XXX.XX
Adjusted Book Balance:                $XX,XXX.XX

Difference:                           $0.00 ✅ / $X.XX ❌
```

### Step 5 — Investigate Differences
If difference ≠ $0, surface the items most likely causing the gap.
Flag: items outstanding > 30 days (checks that may need to be voided), unexplained credits.

## Output Format

Full reconciliation table + summary statement + uncleared item list with aging.

Items outstanding > 60 days flagged for follow-up action.

## Output Contract
- Reconciliation must reach $0.00 difference to be complete
- Non-zero differences include specific candidates for investigation
- HITL required before posting any adjusting entries

## System Dependencies
- **Reads from:** Bank statement (uploaded), GL export (QuickBooks)
- **Writes to:** Nothing (outputs reconciliation for accounting team)
- **HITL Required:** Before posting any GL adjusting entries based on reconciliation

## Deprecation
Retire when QuickBooks bank feed reconciliation handles this automatically.
