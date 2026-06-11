---
name: software-license-manager
description: "Manage software licenses, renewals, and cost optimization. Use when the user says 'software licenses', 'license renewal', 'SaaS renewal', 'license optimization', 'license compliance', 'overpaying for software', 'unused licenses', or 'SaaS stack audit'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--action <audit|renew|optimize|report>] [--period <Q|annual>]"
---

# Software License Manager

Manage software licenses, renewal timelines, and cost optimization. SaaS spend is the fastest-growing IT cost category in most organizations. Most entities are overpaying by 20-40% through unused seats, auto-renewed contracts, and redundant tools. This skill finds and recovers that waste.

## When to Use
- Annual IT budget planning (what are we renewing and at what cost?)
- Quarterly SaaS cost review
- Pre-renewal negotiation preparation
- Software license compliance audit
- Consolidating redundant tools after an acquisition or merger

## License Cost Categories

| Category | Optimization Opportunity |
|---------|-------------------------|
| **Unused seats** | Users who haven't logged in for 30+ days — immediate cost recovery |
| **Over-provisioned tiers** | Paying for Enterprise when Standard would suffice |
| **Redundant tools** | Two products doing the same job — consolidate to one |
| **Auto-renewed without review** | Contracts that renewed without usage assessment |
| **Unused products entirely** | Subscriptions for tools no one is using |
| **Negotiation targets** | Contracts up for renewal in < 90 days — negotiate before renewal |

## Output Format

```markdown
# Software License Report — <Entity>
**Date:** <date> | **Annual SaaS spend (total):** $<N> | **Identified savings:** $<N>

---

## License Register

| Product | Vendor | Category | Seats Licensed | Seats Active | Utilization | Annual Cost | Renewal Date | Contract Type |
|---------|--------|---------|--------------|-------------|-------------|------------|-------------|--------------|
| Microsoft 365 Business Premium | Microsoft | Productivity | 25 | 22 | 88% | $<N> | <date> | Annual |
| GoHighLevel | GoHighLevel | CRM | 5 | 3 | 60% | $<N> | <date> | Monthly |
| Krista.ai | Krista.ai | AI Orchestration | Enterprise | N/A | Active | $<N> | <date> | Annual |
| Monday.com | Monday.com | Project Mgmt | 10 | 10 | 100% | $<N> | <date> | Annual |

---

## Cost Optimization Opportunities

| Finding | Product | Annual Savings | Effort | Priority |
|---------|---------|-------------|--------|---------|
| 3 unused seats — rightsizing opportunity | GoHighLevel | $<N> | Low | High |
| 2 products overlap in use case (project mgmt) | [Tool A] + [Tool B] | $<N> (eliminate one) | Medium | Medium |
| Contract auto-renewed — no usage review | [Product] | $<N> (cancel or renegotiate) | Low | High |
| Tier over-provisioned — Standard would suffice | [Product] | $<N> | Low | Medium |

**Total identified savings:** $<N>/year

---

## Renewal Calendar (Next 120 Days)

| Product | Annual Cost | Renewal Date | Days Out | Action |
|---------|-----------|------------|---------|--------|
| [Product] | $<N> | <date> | 30 days | Start negotiation NOW |
| [Product] | $<N> | <date> | 60 days | Review usage, prepare ask |
| [Product] | $<N> | <date> | 90 days | Usage review scheduled |

---

## Renewal Negotiation Priorities

**< 60 days to renewal — negotiate now:**
1. [Product] — $<N>/year; renewal coming <date>
   - **Strategy:** Usage is X% — threaten to downgrade unless pricing improves; competitors: [list]
   - **Target:** X% discount or reduction to Y seats

---

## License Compliance Status

| Product | License Type | Compliant? | Issue | Risk |
|---------|------------|-----------|-------|------|
| [Product] | Named user | Yes | — | None |
| [Product] | Per-device | No | 3 devices exceed license count | Audit risk |
```

## Output Contract
- Every license must have a renewal date, cost, and utilization rate — unknowns are flagged immediately
- Savings opportunities always quantified in dollar terms — "unused seats" is not actionable without a number
- Renewal calendar always shows items within 120 days — 90 days is the minimum negotiation window
- HITL required: IT Manager and Finance review optimization recommendations; Dr. Lewis approves any contract cancellation > $5K/year; Matt Mathison informed of savings opportunities > $20K

## System Dependencies
- **Reads from:** Software license register, vendor contracts, usage data from IT platform or vendor portals (provided)
- **Writes to:** Nothing (license report for HITL review and action)
- **HITL Required:** IT Manager approves optimization actions; Finance approves contract changes; Dr. Lewis reviews for any cancellation > $5K or renewal > $25K

## Test Cases
1. **Golden path:** 15-product SaaS stack, $180K/year total → 3 products with < 60% utilization, 1 redundant project management tool ($8K/year), 2 auto-renewals missed, total savings identified $32K/year; renewal calendar shows 4 contracts coming up in 90 days
2. **Edge case:** No usage data available from vendor → estimates utilization from IT access logs or surveys, explicitly flags uncertainty, recommends requesting usage reports from all vendors during next contract cycle
3. **Adversarial:** Department head insists on keeping an unused tool ("we'll use it eventually") → documents the cost and utilization, proposes a 90-day usage commitment with a review checkpoint, offers to suspend rather than cancel to reduce cancellation friction

## Audit Log
License reports retained by entity and date. Savings identified vs. savings realized tracked. Renewal actions logged.

## Deprecation
Retire when entity deploys a SaaS management platform (Torii, BetterCloud, Zylo, Vendr) with automated license discovery, usage tracking, and renewal alerts.
