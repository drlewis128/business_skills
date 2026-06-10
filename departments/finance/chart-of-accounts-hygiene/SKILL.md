---
name: chart-of-accounts-hygiene
description: "Audit the chart of accounts for unused, duplicate, or misconfigured accounts. Use when the user says 'chart of accounts review', 'COA audit', 'clean up accounts', 'unused GL accounts', 'chart of accounts hygiene', 'consolidate accounts', or 'COA cleanup'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--export <quickbooks-coa-export>]"
---

# Chart of Accounts Hygiene

Audit the general ledger chart of accounts for structural problems that create reporting noise, misclassification risk, and consolidation headaches.

## When to Use
- Annual COA review (before budget year)
- After a system migration or QuickBooks upgrade
- When reports show unexplained line items or oddly named accounts
- Post-acquisition (harmonize acquired entity's COA with parent)
- Before setting up a new entity (use clean template)

## MBL Standard Account Numbering

| Range | Category |
|-------|----------|
| 1000–1999 | Assets (current: 1000-1499; fixed: 1500-1999) |
| 2000–2999 | Liabilities (current: 2000-2499; long-term: 2500-2999) |
| 3000–3999 | Equity |
| 4000–4999 | Revenue |
| 5000–5999 | Cost of Goods Sold / Cost of Revenue |
| 6000–6999 | Operating Expenses |
| 7000–7999 | Other Income / Expense |
| 8000–8999 | Tax Expense |

## Audit Checks

### 1. Unused Accounts
- Zero balance AND no activity in trailing 12 months
- Action: Flag for inactivation (never delete — preserves history)

### 2. Duplicate / Near-Duplicate Accounts
- Accounts with identical or near-identical names (e.g., "Office Supplies" and "Office Supply")
- Multiple accounts serving the same purpose
- Action: Merge into one; reclassify historical transactions

### 3. Misclassified Accounts
- Balance sheet accounts with numbers in P&L range (or vice versa)
- Revenue accounts used for contra or reclassification entries
- COGS items in operating expense range

### 4. Over-Granular Accounts
- More than 50 active accounts in any one department without reporting purpose
- Sub-accounts that are never broken out separately in reports
- Action: Consolidate where detail adds no decision value

### 5. Under-Described Accounts
- Account name alone doesn't convey purpose (e.g., "Accruals", "Misc", "Other")
- Missing descriptions in QuickBooks account detail

### 6. Consolidation Mismatches
- For MBL with multiple entities: accounts that don't map to the parent COA
- Creates manual work at consolidation — standardize across entities

## Output Format

```markdown
# Chart of Accounts Hygiene Report — <Entity>
**COA Accounts Analyzed:** <N> | **Date:** <date>

## Summary Scorecard
| Issue | Count | Priority |
|-------|-------|----------|
| Unused (inactive candidates) | <N> | Low |
| Duplicates | <N> | High |
| Misclassified | <N> | High |
| Over-granular | <N> | Medium |
| Missing descriptions | <N> | Low |
| Consolidation mismatches | <N> | High (if multi-entity) |

## High Priority Issues

### Duplicates — Merge Required
| Account 1 | Account 2 | Recommendation |
|-----------|-----------|----------------|
| 6210 Office Supplies | 6215 Office Supply | Merge into 6210; reclassify 6215 history |

### Misclassifications
| Account | Current Range | Should Be | Action |
|---------|--------------|-----------|--------|
| 4500 Security Deposit | Revenue (4xxx) | Asset (1xxx) | Renumber to 1450 |

## Recommended Account Inactivations (<N>)
<list of zero-activity accounts recommended for inactivation>

## Consolidation Gaps (<N>)
<list of accounts that exist in entity but not in parent COA>

## Recommended Actions (Priority Order)
1. Merge <N> duplicate accounts
2. Reclassify <N> misclassified accounts
3. Inactivate <N> unused accounts
4. Add descriptions to <N> accounts
```

## Output Contract
- Never recommends deleting accounts — only inactivating (preserves audit trail)
- Merges require transaction reclassification review — flagged as HITL
- HITL required before any account structure changes in production system

## System Dependencies
- **Reads from:** QuickBooks COA export or trial balance with account list
- **Writes to:** Nothing (outputs remediation recommendations)
- **HITL Required:** Before implementing any COA changes in QuickBooks

## Test Cases
1. **Golden path:** Clean COA, well-numbered, active accounts only → outputs "COA score: A, no critical issues"
2. **Edge case:** Newly migrated company with no numbering standard → outputs full renumbering recommendation with MBL standard template
3. **Adversarial:** 300-account COA with 200 zero-balance accounts → outputs prioritized inactivation list, flags top 20 duplicates

## Audit Log
COA review results logged with before/after account counts. Changes to account structure require Finance Tier 1 approval.

## Deprecation
Retire when ERP has native COA health monitoring and auto-deactivation of stale accounts.
