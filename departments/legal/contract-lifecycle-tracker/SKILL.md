---
name: contract-lifecycle-tracker
description: "Track contracts through their full lifecycle. Use when the user says 'contract tracker', 'contract management', 'track our contracts', 'contract renewals', 'upcoming renewals', 'contract expiration', 'contract status', 'contracts coming up for renewal', or 'contract inventory'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--filter <renewals|expiring|active|all>] [--window <30|60|90|180>]"
---

# Contract Lifecycle Tracker

Track contracts through their full lifecycle — from execution through renewal or termination. Missed renewals, surprise auto-renewals, and contracts that should have been renegotiated are expensive and avoidable. This skill manages the contract inventory, tracks upcoming action dates, and ensures the right people are notified at the right time.

## When to Use
- Monthly review of upcoming contract renewals and expirations
- Building the initial contract inventory for an entity
- Before a budget cycle — what contracts are up for renewal?
- After a vendor relationship changes — update the contract record
- Audit preparation — demonstrate contract management controls

## Key Contract Lifecycle Dates

| Date Type | Action Required | Lead Time |
|---------|--------------|---------|
| **Auto-renewal deadline** | Must notify to prevent auto-renewal | 60-90 days before deadline |
| **Contract expiration** | Renew, renegotiate, or let expire | 90 days before expiration |
| **Price escalation date** | Review if escalation is acceptable | 60 days before |
| **Performance review date** | Vendor performance review | Per contract |
| **Insurance certificate renewal** | Verify vendor insurance current | 30 days before expiration |

## Output Format

```markdown
# Contract Lifecycle Report — <Entity>
**Date:** <date> | **Entity:** <name>
**Prepared by:** IT Manager / Dr. John Lewis

---

## Action Required Now (Next 30 Days)

| Contract | Counter-party | Action | Deadline | Value | Owner |
|---------|------------|--------|---------|-------|-------|
| Microsoft 365 E3 | Microsoft | Renewal decision — price increasing 10% | <date> | $<N>/year | IT Manager + Finance |
| Cyber insurance | <Carrier> | Renewal evidence package due | <date> | $<N>/year | IT Manager + Dr. Lewis |
| GoHighLevel CRM | GoHighLevel | Auto-renewal notice — send if not renewing | <date> | $<N>/year | Sales/Marketing |

---

## Action Required — 30-90 Days

| Contract | Counter-party | Action | Deadline | Value | Owner |
|---------|------------|--------|---------|-------|-------|
| AdvancedMD (Allevio) | AdvancedMD | Renewal negotiation — request pricing hold | <date> | $<N>/year | Allevio Ops |
| Covercy (HIVE) | Covercy | Annual renewal | <date> | $<N>/year | HIVE Ops |
| Legal counsel retainer | <Firm> | Review scope and adjust | <date> | $<N>/month | Matt Mathison |

---

## Full Contract Inventory

| Contract | Category | Entity | Counter-party | Start | Expiration | Auto-Renew | Annual Value | Status |
|---------|---------|--------|------------|-------|-----------|-----------|------------|--------|
| M365 E3 | Software | All | Microsoft | <date> | <date> | ✅ 30-day notice | $<N> | Active |
| GoHighLevel CRM | Software | MBL | GoHighLevel | <date> | <date> | ✅ 30-day notice | $<N> | Active |
| Cyber Insurance | Insurance | All | <carrier> | <date> | <date> | ❌ | $<N> | Active |
| IT Support (MSP) | Services | MBL | <MSP> | <date> | <date> | ✅ 60-day notice | $<N> | Active |
| AdvancedMD | Software | Allevio | AdvancedMD | <date> | <date> | ✅ 90-day notice | $<N> | Active |
| Lease — Phoenix office | Facilities | MBL | Landlord | <date> | <date> | ❌ | $<N> | Active |
| QuickBooks Enterprise | Software | All | Intuit | <date> | <date> | ✅ 30-day notice | $<N> | Active |
| Outside counsel retainer | Legal | MBL | <Firm> | <date> | <date> | ✅ Monthly | $<N>/month | Active |
| Krista.ai | Software | MBL | Krista.ai | <date> | <date> | ✅ 60-day notice | $<N> | Active |

---

## Contract Metrics

| Metric | Value |
|--------|-------|
| Total active contracts | <N> |
| Total annual contract value | $<N>K |
| Contracts expiring in 90 days | <N> |
| Contracts with auto-renewal | <N> (% of total) |
| Contracts missing key terms | <N> |
| Average contract term | <N> months |

---

## Contracts Requiring Attention

| Issue | Contract | Risk | Action |
|-------|---------|------|--------|
| Auto-renewal in 25 days — no decision made | GoHighLevel | Unwanted renewal | Confirm renewal decision by <date> |
| No liability cap in contract | IT Support MSP | Financial exposure | Request amendment at next renewal |
| Insurance certificate expired | IT Support MSP | Uninsured vendor risk | Request updated certificate |
```

## Output Contract
- Action-required items always sorted by urgency — 30-day window items listed first
- Auto-renewal deadlines always given 60-90 day lead — 30-day notice periods don't allow enough review time
- Contract value always tracked — inventory without financial context can't support budget decisions
- Missing key terms always flagged — incomplete contracts are risk exposures
- HITL required: Dr. Lewis reviews monthly contract report; Matt Mathison approves renewals above signature threshold; Finance reviews annual contract value; Legal counsel involved for renegotiations

## System Dependencies
- **Reads from:** Contract inventory (maintained in this skill or CLM system)
- **Writes to:** Contract tracking register (maintained by IT Manager / Legal)
- **HITL Required:** Dr. Lewis reviews monthly; Matt Mathison approves significant renewals; Finance reviews multi-year commitments; Legal reviews renegotiations

## Test Cases
1. **Golden path:** Monthly contract review → 3 contracts with action due in 30 days, all assigned to owners; GoHighLevel auto-renewal in 25 days flagged as urgent; renewal decision made and logged
2. **Edge case:** Contract not in the inventory — discovered when a vendor sends a renewal invoice → adds to inventory immediately with all available terms; reviews contract file for key terms; assigns owner
3. **Adversarial:** IT team renewed a contract without going through the review process → establishes contract review process requirement; all renewals above $X require Dr. Lewis notification; post-hoc review done on the renewed contract

## Audit Log
Contract inventory maintained with all key dates. Renewal decisions documented. Contract changes tracked with version history.

## Deprecation
Retire when entity deploys a CLM platform (Ironclad, Concord, DocuSign CLM) with automated renewal alerts, e-signature integration, and contract repository.
