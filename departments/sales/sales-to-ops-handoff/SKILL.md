---
name: sales-to-ops-handoff
description: "Structure a sales-to-operations handoff for a newly closed deal. Use when the user says 'handoff', 'deal handoff', 'closed deal handoff', 'pass to ops', 'sales to implementation', 'transfer the deal', 'kickoff the new customer', or 'welcome the new client'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--handoff-to <operations|customer-success|implementation>]"
---

# Sales-to-Ops Handoff

Structure a complete handoff from Sales to Operations (or Customer Success / Implementation) for a newly closed deal. A bad handoff is a churn risk — the customer just signed, and the experience of the first 30 days is set by how well the internal team is aligned. This skill creates the handoff document that ensures nothing falls through the cracks.

## When to Use
- Deal is closed-won and the customer is ready to onboard
- Handoff to Customer Success, Implementation, or Operations team
- Internally aligning Sales, Ops, and Finance on a new account
- Creating a repeatable handoff template for the entity's sales motion

## Handoff Timing
- Ideal: Internal handoff meeting within 5 business days of signature
- Customer kickoff call: Within 10 business days of signature
- Implementation start: Per contract terms

## Information Sales Must Transfer

### 1. Deal Summary
- Customer name, key contacts, contract value, start date, contract term
- What they bought (product/services/SKUs — be specific)
- Key commitments made during the sales process (anything promised to close the deal)

### 2. Customer Intelligence (What Ops Needs to Succeed)
- Why did they buy? What problem are they solving?
- What does success look like in the customer's words?
- Who is the champion (and what do they care about)?
- Who is skeptical or a potential detractor?
- Any red flags or concerns from the sales process?

### 3. Scope and Commercial Details
- Exact deliverables per contract
- Pricing and payment terms
- Custom contract terms (any deviations from standard)
- Renewal date and auto-renewal status
- Upsell and expansion opportunities identified during sales

### 4. Implementation Requirements
- Timeline commitments
- Technical requirements (integrations, data, access)
- Customer internal contacts for implementation (may differ from sales contacts)
- Known dependencies or risks

## Output Format

```markdown
# Sales-to-Ops Handoff — <Account Name>
**Entity:** <MBL entity> | **Handoff date:** <date> | **Sales rep:** <name>
**Receiving team:** Operations / Customer Success / Implementation

---

## Deal Summary

| Field | Details |
|-------|---------|
| Customer | <legal entity name> |
| Contract value (ACV) | $<N> |
| Contract term | <N> months |
| Start date | <date> |
| Renewal date | <date> |
| Auto-renewal | Yes (<N> day notice) / No |
| Signed by (customer) | <name, title> |

**What they purchased:**
- [Product/service 1 — be specific about scope]
- [Product/service 2]

---

## Customer Intelligence

**Why they bought:**
<Their stated problem in their words. Not sales language — what the customer said they needed.>

**What success looks like for them:**
<Their definition of a good outcome — use their words>

**Champion:** <Name, title> — <What they care about, their internal role in championing this>
**Economic buyer:** <Name, title> — <Level of engagement going forward>
**Potential detractors:** <Name> — <Why they were hesitant; how to work with them>

**Red flags or concerns to be aware of:**
- <Anything from the sales process that Ops should know>

---

## Commitments Made During Sales (Ops Must Deliver These)

| Commitment | Made by | Details |
|-----------|---------|---------|
| [Specific commitment] | <Rep name> | [Details — dates, specifics] |
| [Commitment] | <Rep name> | [Details] |

⚠️ If any commitment conflicts with standard delivery, escalate immediately to manager.

---

## Commercial Terms (Important Details)

- **Payment terms:** Net <N> / Invoice on [trigger]
- **Custom contract terms:** <Any non-standard provisions>
- **Discount applied:** X% — rationale: <reason>

---

## Implementation Notes

**Timeline:** Customer expects <milestone> by <date>
**Technical contacts (implementation):** <name, email>
**Dependencies:** <What must happen before work can start>
**Known risks:** <What could go wrong in implementation>

---

## Expansion Opportunities (Flagged by Sales)

| Opportunity | Estimated Value | Timing | Owner |
|------------|----------------|--------|-------|
| [Upsell/expansion] | $<N> | <timeframe> | Customer Success |

---

## Handoff Checklist

- [ ] Handoff document reviewed with Sales rep
- [ ] Internal handoff meeting scheduled
- [ ] Customer kickoff call scheduled
- [ ] CRM updated to customer record (post-sale)
- [ ] Contract filed and signed copies distributed to Finance + Legal
- [ ] Finance invoicing trigger confirmed
- [ ] Implementation timeline confirmed with customer
```

## Output Contract
- All commitments made during sales always listed — Ops cannot deliver what they don't know was promised
- Customer intelligence (champion, detractors, success definition) always included — reduces churn risk
- Implementation risks always surfaced — not buried in notes
- HITL required: Sales rep and receiving team lead jointly review before customer kickoff

## System Dependencies
- **Reads from:** CRM deal record, contract, sales rep notes (provided)
- **Writes to:** Nothing (handoff document for internal HITL review)
- **HITL Required:** Sales manager and Ops/CS lead review before customer kickoff call; Finance confirms invoicing trigger; Dr. Lewis reviews for deals > $75K

## Test Cases
1. **Golden path:** New Allevio healthcare customer, $120K ACV → champion identified (VP Operations), one specific commitment (custom integration by day 30), two expansion opportunities flagged, checklist complete with dates
2. **Edge case:** Handoff happens 3 weeks after close (delayed) → flags that delay creates churn risk, surfaces outstanding commitments that may have been forgotten, recommends immediate recovery outreach to champion
3. **Adversarial:** Rep tries to pass a deal to Ops without documenting a commitment they made to close the deal → skill prompts for all commitments, requires rep to list any deals or promises made, cannot skip this section

## Audit Log
Handoff documents retained by account and close date. Commitments documented for Ops accountability and customer reference.

## Deprecation
Retire when CRM pipeline automatically populates Ops intake form at stage change to Closed-Won, with mandatory field validation before handoff.
