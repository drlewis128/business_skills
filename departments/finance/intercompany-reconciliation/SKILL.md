---
name: intercompany-reconciliation
description: "Match and eliminate intercompany transactions across entities for consolidated reporting. Use when the user says 'intercompany reconciliation', 'eliminate intercompany', 'interco rec', 'consolidation eliminations', 'due to due from', 'intercompany balances', or 'consolidate entities'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entities <list>] [--period <YYYY-MM>]"
---

# Intercompany Reconciliation

Match intercompany transactions across MBL Partners and portfolio entities, confirm bilateral agreement, and prepare elimination entries for consolidated financials.

## When to Use
- Monthly close — before consolidation
- Quarterly consolidated reporting
- During M&A due diligence (confirm interco balances)
- When an intercompany balance is disputed between entities

## Entities (MBL Context)
- MBL Partners (parent)
- Allevio (portfolio)
- HIVE Partners (portfolio)
- Column6 / Siprocal (portfolio)
- Any new acquisition

## Process

### Step 1 — Collect Due-To / Due-From Balances
From each entity's trial balance:
- `Due From [Entity]` (asset account)
- `Due To [Entity]` (liability account)
- Intercompany revenue and expense accounts

### Step 2 — Confirm Bilateral Agreement
For each intercompany relationship:
- Entity A shows Due From Entity B: $X
- Entity B shows Due To Entity A: $X
- Do they agree? If not, identify the discrepancy.

Common causes of disagreement:
- Timing (one entity recorded, other hasn't yet)
- Data entry error (wrong amount or entity)
- Missing transaction (one side not recorded)
- Currency differences (if entities in different currencies)

### Step 3 — Prepare Elimination Entries
For each matched intercompany pair:
```
Consolidation elimination journal entry:
  Dr: Due To [Entity] (liability)     $X
  Cr: Due From [Entity] (asset)       $X

For intercompany revenue/expense:
  Dr: Intercompany Revenue            $X
  Cr: Intercompany Expense            $X
```

### Step 4 — Flag Unresolved Items
Any intercompany balance that cannot be matched requires resolution before close. Do not eliminate an unmatched amount.

## Output Format

```markdown
# Intercompany Reconciliation — <period>
**Entities:** <list>

## Bilateral Agreement Summary
| Entity Pair | Entity A Balance | Entity B Balance | Difference | Status |
|-------------|-----------------|-----------------|------------|--------|
| MBL ↔ Allevio | $125,000 DR | $125,000 CR | $0 | ✅ Agree |
| MBL ↔ HIVE | $50,000 DR | $47,500 CR | $2,500 | ❌ Disagree |

## Elimination Entries (agreed balances)
[Standard journal entries for each matched pair]

## Unresolved Items — Requires Resolution Before Close
- MBL ↔ HIVE: $2,500 discrepancy — HIVE missing June management fee entry
  Action: HIVE to post management fee by <date>
```

## Output Contract
- Never eliminates unmatched balances — flags for resolution
- All elimination entries include both debit and credit with accounts
- HITL required before posting elimination entries

## System Dependencies
- **Reads from:** Trial balance / GL data from each entity
- **Writes to:** Nothing (outputs elimination entries and discrepancy report)
- **HITL Required:** Before posting any consolidation entries

## Deprecation
Retire when consolidation software (e.g., Prophix, Workiva) handles intercompany reconciliation.
