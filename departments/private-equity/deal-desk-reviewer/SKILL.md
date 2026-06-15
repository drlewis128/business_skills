---
name: deal-desk-reviewer
description: "Review a deal requiring executive, legal, or Finance approval before close. Use when the user says 'deal desk', 'deal review', 'this deal needs approval', 'non-standard deal', 'get deal approved', 'unusual deal terms', 'need sign-off on this deal', or 'deal requires exception'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<deal-name> [--entity <name>] [--value <amount>] [--exception <discount|terms|custom-work|other>]"
---

# Deal Desk Reviewer

Prepare a deal for executive, legal, or Finance review when standard approval authorities are insufficient. The deal desk exists to protect margin, legal exposure, and operational feasibility while still closing deals that deserve to be closed.

## When to Use
- Discount > 20% of standard pricing
- Custom contract terms (non-standard indemnification, IP, SLA)
- Deal involves professional services or custom work not in standard scope
- Deal requires a payment structure that affects cash flow (deferred payments, milestones)
- Deal includes a commitment that requires Ops or Engineering to deliver something new
- Any deal with a liability cap removal or unlimited indemnification clause
- Any deal > $100K ACV requiring Matt Mathison or board visibility

## Deal Desk Triggers (Must Route)

| Trigger | Authority Required |
|---------|-------------------|
| Discount > 20% | VP Sales + Finance |
| Discount > 30% | CEO + Finance |
| Custom SLA (uptime guarantee or penalty) | Legal + Ops |
| Unlimited indemnification | Legal (auto-reject without review) |
| Custom deliverables outside standard product | Engineering / Ops scoping |
| Payment deferred > 90 days | Finance CFO |
| Multi-year with locked pricing | Finance approval |
| Deal > $100K ACV | Matt Mathison visibility |
| Deal > $500K ACV | Board awareness |

## Deal Desk Package Components

### 1. Deal Summary (1-page, Executive-readable)
- Who are they?
- What are they buying?
- What's the deal value (ACV, TCV)?
- Why does this deal need deal desk review?

### 2. Commercial Exception Summary
- What is the specific exception being requested?
- Why is the exception needed to close the deal?
- What is the cost of the exception (margin impact, legal risk, operational cost)?
- What is the cost of not closing the deal?

### 3. Risk Assessment
- Legal risk
- Margin risk
- Operational risk (can we deliver what's being promised?)
- Competitive risk (does this set a precedent for other deals?)

### 4. Recommended Approval Decision

## Output Format

```markdown
# Deal Desk Review — <Account> at <Entity>
**Date:** <date> | **Rep:** <name> | **Manager:** <name>
**Deal close target:** <date> | **Time-sensitive:** Yes / No

---

## Deal Summary

| Field | Detail |
|-------|--------|
| Customer | <legal name> |
| ACV | $<N> |
| TCV | $<N> |
| Contract term | <N> months |
| Product / scope | <brief> |
| Close target | <date> |

---

## Exception Being Requested

| Exception | Standard | Requested | Reason |
|-----------|---------|-----------|--------|
| [Discount] | 10% max (rep authority) | 28% | Competitive displacement; 3-year commitment |
| [Payment terms] | Net 30 | Net 60 | Customer procurement policy |
| [SLA] | 99.5% uptime | 99.9% uptime + penalty | Enterprise requirement |

---

## Financial Impact

| Metric | Standard Deal | This Deal | Variance |
|--------|--------------|----------|---------|
| List price | $<N> | $<N> | |
| Discount | X% | X% | |
| Net revenue | $<N> | $<N> | -$<N> |
| Gross margin | X% | X% | -X points |
| Payback period impact | <N> months | <N> months | |

---

## Risk Assessment

| Risk Type | Level | Details |
|-----------|-------|---------|
| Legal | 🟢 / 🟡 / 🔴 | <Summary> |
| Margin | 🟢 / 🟡 / 🔴 | <Summary> |
| Operational | 🟢 / 🟡 / 🔴 | <Summary> |
| Precedent | 🟢 / 🟡 / 🔴 | <Will this set a pricing precedent?> |

---

## Why This Deal Is Worth Closing

1. **Strategic value:** <Why this customer matters beyond this contract>
2. **Revenue impact:** <What closing this means for the period / annual target>
3. **Alternatives:** <What happens if we don't approve — lose to competitor? Deal dies?>

---

## Approval Decision Required

| Decision | Required Approver | Status |
|----------|-----------------|--------|
| Discount approval | VP Sales + Finance | Pending |
| Legal exception | Legal Counsel | Pending |
| Custom SLA delivery | Ops / Engineering | Pending |

**Recommended decision:** Approve with conditions / Approve / Reject with counteroffer
**Conditions (if any):** <Specific guardrails — 3-year lock-in required for this discount, etc.>
**Counter to offer if rejected:** <Alternative deal structure that doesn't require exception>
```

## Output Contract
- Financial impact always calculated — no exception approved without knowing the margin cost
- Alternatives always presented — "approve vs. lose the deal" is not the only binary
- Risk assessment always completed — legal and operational risk visible to decision-makers
- HITL required: Dr. Lewis reviews all deal desk submissions; Matt Mathison approves for exceptions at his threshold; Finance co-approves on margin and payment exceptions

## System Dependencies
- **Reads from:** Deal terms, pricing model, contract draft (provided)
- **Writes to:** Nothing (review package for HITL decision-makers)
- **HITL Required:** Dr. Lewis reviews all deal desk submissions; Matt Mathison approves discounts > 25% and deals > $100K; Legal reviews any contract term exception; Finance reviews margin and payment exceptions

## Test Cases
1. **Golden path:** $150K ACV deal with 28% discount requested for 3-year lock-in, Net 60 payment terms → deal desk package with financial model showing -$42K from standard, margin still at 52%, recommended approve with 3-year commitment clause
2. **Edge case:** Rep submits deal desk request with only 2 days to close → flags urgency, escalates decision timeline, surfaces risk that rushed review may miss legal issues, recommends extending close date if possible
3. **Adversarial:** Rep asks deal desk to approve unlimited indemnification because "the customer won't sign without it" → flags auto-reject, recommends legal counsel negotiate a liability cap the customer will accept, offers counter-proposal language

## Audit Log
Deal desk submissions retained by account, decision, and date. Approved exceptions tracked for precedent review.

## Deprecation
Retire when CPQ + contract management platform provides automated deal desk routing with approval workflows based on deal parameters.
