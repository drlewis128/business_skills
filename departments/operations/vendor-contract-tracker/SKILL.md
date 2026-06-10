---
name: vendor-contract-tracker
description: "Track active vendor contracts, key terms, and upcoming actions. Use when the user says 'vendor contracts', 'contract tracker', 'what contracts do we have', 'vendor agreement status', 'who are we contracted with', 'active contracts', or 'vendor master'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--vendor <name>] [--action <view|add|update>]"
---

# Vendor Contract Tracker

Maintain a centralized view of all active vendor contracts, their key terms, and upcoming actions. The operational complement to `contract-renewal-tracker`.

## When to Use
- When asking "do we have a contract with X?"
- Before signing a new agreement with an existing vendor (avoid conflicts)
- During an audit (provide contract inventory)
- M&A due diligence (buyer reviews target's vendor commitments)
- Budgeting (capture committed spend from contracts)

## Contract Record Format

For each active contract:
| Field | Description |
|-------|-------------|
| Contract ID | CTR-<entity>-<NNN> |
| Vendor / Party | Company name |
| Contract type | MSA / SOW / SaaS / Lease / Service agreement |
| Entity | Which MBL entity is the contracting party |
| Effective date | When the contract began |
| Term end date | When the current term expires |
| Auto-renews | Yes / No |
| Annual value | Committed annual cost |
| Payment terms | Net 30, monthly, upfront, etc. |
| Status | Active / Expired / Terminated / Under review |
| Owner | Who manages this vendor relationship |
| Key terms | Notable provisions (IP ownership, exclusivity, confidentiality) |
| Location | Where the contract document is stored |

## Contract Priority Tiers

| Tier | Annual Value | Review Frequency |
|------|------------|----------------|
| Strategic | > $50K/year | Quarterly |
| Significant | $10K-$50K/year | Semi-annual |
| Standard | < $10K/year | At renewal |

## Output Format

```markdown
# Vendor Contract Tracker — <Entity>
**Updated:** <date> | **Total Active Contracts:** <N> | **Total Annual Committed:** $X

## Contract Summary by Category

| Category | Contracts | Annual Value |
|----------|-----------|-------------|
| SaaS / Technology | <N> | $X |
| Professional Services | <N> | $X |
| Facilities | <N> | $X |
| Other | <N> | $X |

## Active Contracts

| CTR ID | Vendor | Type | Annual Value | Term End | Auto-Renew | Owner |
|--------|--------|------|------------|---------|-----------|-------|
| CTR-MBL-001 | Krista.ai | SaaS | $X | Dec 31 | Yes/90-day notice | Dr. Lewis |
| CTR-MBL-002 | Microsoft | M365 | $X | Aug 31 | Annual | Dr. Lewis |

## Strategic Contracts — Detailed View
<Top contracts > $50K with key terms summary>

## Contracts Requiring Action (Next 90 Days)
<See contract-renewal-tracker for detailed renewal calendar>

## Missing Contracts (No Written Agreement)
⚠️ Any vendor relationship without a written contract:
| Vendor | Relationship Type | Annual Spend | Risk | Action |
|--------|-----------------|-------------|------|--------|
```

## Output Contract
- "Missing contracts" section always present — surface uncontracted relationships
- Auto-renew contracts always flagged with notice dates
- Strategic contracts always include key terms summary
- HITL required before any contract is terminated or materially modified

## System Dependencies
- **Reads from:** Contract register (maintained in SharePoint / provided)
- **Writes to:** Contract register updates (with HITL)
- **HITL Required:** Matt Mathison reviews contracts > $50K annual value before any change

## Test Cases
1. **Golden path:** 15-contract inventory → organized by category with annual totals and strategic contract details
2. **Edge case:** Vendor found in AP system with no contract → flags as uncontracted relationship, recommends formalizing
3. **Adversarial:** Contract listed as "Active" but term already expired → flags as status mismatch, requires review before treating as binding

## Audit Log
Contract register maintained with version history. Contract changes (amendments, terminations) documented with date.

## Deprecation
Retire when CLM (Contract Lifecycle Management) platform handles contract storage, tracking, and renewal management.
