---
name: vendor-master-dedup
description: "Identify and merge duplicate vendor records in the AP system. Use when the user says 'duplicate vendors', 'vendor master cleanup', 'vendor dedup', 'same vendor twice', 'vendor consolidation', 'clean vendor list', or 'vendor master hygiene'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--vendor-export <file>]"
---

# Vendor Master Dedup

Identify duplicate and near-duplicate vendor records in QuickBooks or Bill.com, surface consolidation opportunities, and prepare a remediation plan. Duplicate vendors are a fraud risk vector and AP reconciliation headache.

## When to Use
- Annual vendor master audit (minimum frequency)
- After a system migration or QB upgrade
- When duplicate payment alerts fire (see `duplicate-payment-detector`)
- Post-acquisition (merging two vendor masters)
- Before issuing 1099s (ensure one vendor = one TIN)

## Duplicate Detection Methods

### Exact Matches
- Same vendor name (case-insensitive)
- Same TIN / EIN / SSN
- Same bank account number

### Near-Duplicate (Fuzzy) Matches
- Name variations: "Acme Corp" vs "Acme Corporation" vs "ACME Corp."
- Address matches with different names
- Same phone or email with different names
- Missing EIN on one record but present on another with same name

### Structural Issues (Not Duplicates, Still Fix)
- Vendor with no address, no TIN, no contact info
- Vendor marked "active" with last activity > 3 years ago
- Employee name in vendor master (ghost employee risk — see `fraud-signal-scoring`)
- Vendor name = personal name without a W-9 on file

## Risk Classification

| Duplicate Type | Risk Level | Action |
|---------------|-----------|--------|
| Same TIN, two records | 🔴 High | Merge immediately — 1099 filing risk |
| Same bank account, two vendors | 🔴 High | Fraud risk — Tier 1 review before merge |
| Name variation, same address | 🟡 Medium | Review and merge |
| Name variation, different address | 🟡 Medium | Confirm same entity before merge |
| Old inactive duplicates | 🟢 Low | Inactivate after confirming no open AP |

## Output Format

```markdown
# Vendor Master Dedup Report — <Entity>
**Total Vendor Records:** <N> | **Active Vendors:** <N> | **Date:** <date>

## High Priority — Merge or Investigate Immediately

### Same TIN Duplicates (<N>)
| Vendor A | Vendor B | TIN | Last Activity | Open AP | Action |
|----------|----------|-----|--------------|---------|--------|
| Acme Corp (ID: 142) | Acme Corporation (ID: 387) | **-**-1234 | Dec 2025 | $3,200 | Merge — keep 142 |

### Same Bank Account, Different Vendor (<N>)
⚠️ These require Tier 1 review — possible fraud indicator
| Vendor A | Vendor B | Bank Account | Action |
|----------|----------|-------------|--------|

## Medium Priority — Review and Merge
| Match Type | Vendor A | Vendor B | Confidence | Recommended Action |
|-----------|----------|----------|------------|-------------------|

## Structural Issues (<N>)
| Vendor | Issue | Action |
|--------|-------|--------|
| John Smith (ID: 291) | Individual name, no W-9, $4,500 in payments | Request W-9 or flag as ghost |

## Inactive Vendor Cleanup (<N>)
<vendors with no activity in 24+ months — candidate for inactivation>

## Summary
| Action | Count | Priority |
|--------|-------|----------|
| Merge (TIN duplicates) | <N> | 🔴 Immediate |
| Investigate (bank match) | <N> | 🔴 Immediate |
| Merge (fuzzy match) | <N> | 🟡 This week |
| Inactivate (stale) | <N> | 🟢 Month-end |
```

## Output Contract
- Never merges records automatically — outputs recommendation for human review
- Same-bank-account duplicates always flagged as potential fraud, not just clerical error
- HITL required before any vendor merge or deletion in AP system

## System Dependencies
- **Reads from:** QuickBooks / Bill.com vendor master export
- **Writes to:** Nothing (outputs remediation plan)
- **HITL Required:** Before executing any vendor record merges or deletions

## Test Cases
1. **Golden path:** Clean vendor master with 5 obvious name variants → outputs merge plan, no fraud flags
2. **Edge case:** Vendor with same address as an employee → flags as ghost employee risk, escalates to fraud review
3. **Adversarial:** Two vendors sharing one bank account with different names → always flags as Tier 1 escalation, never suggests routine merge

## Audit Log
Dedup runs logged with vendor count before/after and action taken. Fraud-flagged records logged separately with investigation outcome.

## Deprecation
Retire when AP platform (Bill.com, Tipalti) includes native vendor dedup and validation on entry.
