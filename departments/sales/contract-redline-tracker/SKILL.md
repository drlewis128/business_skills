---
name: contract-redline-tracker
description: "Track and summarize contract redlines during sales negotiation. Use when the user says 'contract redlines', 'track the redlines', 'what are they asking for', 'contract negotiation', 'summarize the changes', 'what did legal redline', or 'contract review for this deal'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<account-name> [--version <v1|v2|...>] [--risk <high|medium|low>]"
---

# Contract Redline Tracker

Track, summarize, and assess contract redlines during sales negotiation. Contract negotiations stall deals — this skill organizes redlines by severity, identifies legal vs. business decisions, and keeps deals moving toward close.

## When to Use
- Prospect returns a redlined contract
- Legal is reviewing and you need a business-readable summary
- Preparing for a negotiation call — what's still open?
- Escalating to executive decision-makers on a stalled contract
- Tracking multiple contract versions across a long negotiation

## Redline Classification

### Risk Tiers

| Tier | Category | Who Decides |
|------|---------|------------|
| **Tier 1 — Accept** | Standard language changes, cosmetic edits | Rep / Contract admin |
| **Tier 2 — Negotiate** | Changes that affect scope or pricing | Rep + Manager |
| **Tier 3 — Escalate** | Changes that create legal, financial, or liability risk | Legal + Dr. Lewis |
| **Tier 4 — Reject** | Terms we cannot accept under any circumstances | CEO / Legal |

### Common Redline Categories

| Category | Examples |
|---------|---------|
| **Payment terms** | Net 30 → Net 60; delayed payment triggers |
| **IP ownership** | Work-for-hire language; IP assignment |
| **Liability caps** | Removing limits; unlimited indemnification |
| **SLA and remedies** | Uptime guarantees; penalty triggers; termination rights |
| **Auto-renewal** | Removing auto-renewal; shortened notice periods |
| **Data privacy** | Data processing agreements; data deletion timelines |
| **Non-solicitation** | Restrictions on hiring from prospect |
| **Governing law** | Jurisdiction changes |

## Output Format

```markdown
# Contract Redline Tracker — <Account>
**Contract version:** <V1 / V2 / V3> | **Date received:** <date> | **Deal value:** $<N>

## Redline Summary

**Total redlines:** <N> | **Tier 1 (Accept):** <N> | **Tier 2 (Negotiate):** <N> | **Tier 3 (Escalate):** <N> | **Tier 4 (Reject):** <N>

## Redlines by Tier

### Tier 3–4: Escalate or Reject (Decision Required)

| # | Section | Their Change | Our Position | Tier | Risk | Owner |
|---|---------|-------------|-------------|------|------|-------|
| 1 | Section 8.2 Indemnification | Removes our liability cap | Cannot accept — unlimited liability is uninsurable | 4 | 🔴 High | Legal |
| 2 | Section 4.1 Payment Terms | Net 30 → Net 60 | Negotiate to Net 45 maximum | 3 | 🟡 Medium | Manager |

### Tier 2: Negotiate (Business Decision)

| # | Section | Their Change | Recommended Response | Owner |
|---|---------|-------------|---------------------|-------|
| 3 | Section 12 Auto-Renewal | Remove auto-renewal | Counter: keep auto-renewal, shorten notice to 30 days | Rep |

### Tier 1: Accept (Standard Language)

| # | Section | Their Change | Action |
|---|---------|-------------|--------|
| 4 | Section 1.1 | Updated their legal entity name | Accept |
| 5 | Section 3.2 | Minor formatting change | Accept |

---

## Negotiation Status

| Redline | Status | Last Updated |
|---------|--------|-------------|
| Indemnification cap | Open — escalated to Legal | <date> |
| Payment terms | Agreed — Net 45 | <date> |
| Auto-renewal | Pending prospect response | <date> |

---

## Deal Impact Assessment

**Estimated contract delay:** <N> weeks if Tier 3/4 issues unresolved
**Revenue at risk:** $<N> (deal slides to next quarter if not resolved by <date>)
**Recommended escalation:** <specific action — legal call, executive involvement, etc.>

## Next Steps

1. **Legal reviews indemnification language** — Owner: [Legal] | Due: <date>
2. **Rep proposes Net 45 counter** — Owner: [Rep name] | Due: <date>
3. **Follow up on auto-renewal response** — Owner: [Rep] | Due: <date>
```

## Output Contract
- Tier classification always applied — no redline left unclassified
- Deal impact always assessed — revenue at risk and expected delay quantified
- Next steps always specific with owner and date
- HITL required: Legal reviews all Tier 3+ redlines before response; Dr. Lewis approves any deviation from standard contract terms for deals > $50K

## System Dependencies
- **Reads from:** Redlined contract document (provided)
- **Writes to:** Nothing (tracker for HITL review and legal coordination)
- **HITL Required:** Legal must review all Tier 3 and Tier 4 redlines before response; Dr. Lewis and Matt Mathison approve any deal where standard terms are substantially changed

## Test Cases
1. **Golden path:** Prospect returns 8 redlines → 1 Tier 4 (unlimited liability — rejected), 2 Tier 3 (payment terms, IP assignment — escalated to legal), 3 Tier 2 (business decisions), 2 Tier 1 (accept), clear next steps with legal review scheduled
2. **Edge case:** One-sided contract that is mostly Tier 3/4 redlines → flags contract as high-risk for the deal, recommends executive involvement before further negotiation, surfaces whether the deal economics justify the legal cost
3. **Adversarial:** Request to accept a Tier 4 redline (unlimited liability) without legal review → refuses, escalates to legal + Dr. Lewis, explains why unlimited liability cannot be accepted

## Audit Log
Redline trackers retained by account and contract version. Final agreed terms documented for legal reference.

## Deprecation
Retire when contract lifecycle management (CLM) platform (Ironclad, DocuSign CLM) handles redline tracking, version comparison, and approval routing automatically.
