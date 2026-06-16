---
name: partner-renewal-manager
description: "Manage a partner agreement renewal. Use when the user says 'partner renewal', 'renew a partner agreement', 'partner contract renewal', 'partner agreement expiring', 'partner contract is up', 'should we renew this partner', 'partnership renewal decision', 'partner agreement renewal process', 'evaluate partner for renewal', or 'partner renewal negotiation'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--renewal-date <date>] [--action <renew|restructure|exit>]"
---

# Partner Renewal Manager

Manage a partner agreement renewal — assessing whether to renew, restructure, or exit; preparing the renewal negotiation; and executing the process with the right notice. Partner renewals are an underused lever: most companies auto-renew agreements without evaluating whether the terms still serve the partnership. The renewal is the best time to correct under-performing terms, upgrade a top partner's tier, or exit a relationship that has stopped generating value.

## When to Use
- A partner agreement is expiring in <90 days
- Annual review of all partner agreements
- A partner has been consistently underperforming and the renewal is an opportunity to reset
- A top-performing partner deserves better terms and the renewal is the trigger
- A partner relationship has essentially ended and the formal exit needs to be structured

## Renewal Decision Framework

```
Three renewal decisions:

1. Renew as-is: Performance is acceptable, terms are still fair, relationship is healthy.
   Action: Send renewal with a 30-day notice. Low negotiation effort.

2. Restructure: Performance is good but terms need updating — economics, tier, or obligations.
   Action: Prepare updated terms. Negotiate before the expiration date. Give 60 days.

3. Exit: Performance is poor, relationship is strained, or the partnership no longer fits strategy.
   Action: Give notice per agreement terms (typically 30 days). Handle with care — former
   partners talk to future partners. Exit gracefully.

Rule: Decide by Day 90 before expiration. Don't let agreements lapse by default.
```

## Output Format

```markdown
# Partner Renewal Decision — <Partner Name>
**Agreement expiration:** <date> | **Days until expiration:** [N]
**Current term:** [Original start date → expiration date]
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison approval

---

## Partner Performance Summary (Last 12 months)

| Metric | Last 12 months | Prior 12 months | Trend |
|--------|---------------|----------------|-------|
| Referrals submitted | [N] | [N] | ↑ / → / ↓ |
| Partner-attributed revenue | $[X] | $[X] | ↑ / → / ↓ |
| Referral-to-close rate | [X%] | [X%] | ↑ / → / ↓ |
| Partner tier | [Bronze/Silver/Gold] | [Prior tier] | — |
| Health score (last assessment) | [X/100] | — | 🟢 / 🟡 / 🔴 |

**Performance verdict:** ✅ Strong / ⚠️ Acceptable / ❌ Underperforming
**Relationship status:** ✅ Strong / ⚠️ Fragile / ❌ Strained

---

## Renewal Recommendation

**Decision: ✅ Renew / 🔄 Restructure / ❌ Exit**

**Rationale:** [2-3 sentences — why this is the right decision given the performance data and relationship status]

---

## Renewal Terms (if renewing or restructuring)

| Term | Current | Proposed | Change rationale |
|------|---------|---------|----------------|
| Agreement term | [12 months] | [12 months] | No change |
| Referral fee rate | [X%] | [X%] | [No change / Increase to reward performance / Decrease due to underperformance] |
| Tier | [Current tier] | [Proposed tier] | [Upgrade / No change / Downgrade] |
| Minimum referral commitment | [None / N referrals] | [None / N referrals] | [No change / Adding commitment for accountability] |
| Payment timing | [30 days] | [30 days] | No change |
| Other changes | — | [If any] | [Rationale] |

---

## Renewal Process Timeline

| Action | Owner | Date |
|--------|-------|------|
| Renewal decision made | Dr. Lewis + Matt Mathison | 90 days before expiration |
| Renewal terms prepared | Dr. Lewis | 75 days before expiration |
| Legal review (if restructuring terms) | Legal counsel | 60 days before expiration |
| Renewal call with partner | Dr. Lewis | 45 days before expiration |
| Signed renewal agreement | Dr. Lewis + Partner | 30 days before expiration |

---

## Renewal Conversation Guide

**Opening:** "Our agreement is coming up for renewal in [N] days. I wanted to have a personal conversation before we send the formal renewal — I value our partnership and want to make sure the terms still reflect what we've built together."

**If renewing as-is:** "We're very happy with our partnership. I'd like to send you a 12-month renewal on the same terms — does that work for you?"

**If upgrading to Gold:** "Based on your performance this year — [specific numbers] — we'd like to move you to our Gold tier. That comes with [specific benefits]. We're proud to have you as a Gold partner."

**If restructuring with new commitments:** "We'd like to renew, and we want to propose [specific change]. Here's the rationale: [reason]. We think this makes the partnership stronger for both of us."

**If exiting:** "I want to be direct with you. We've appreciated our partnership, but the level of activity over the past 12 months [specific data] hasn't been what we hoped for. I think it's worth having an honest conversation about whether this is still the right partnership for both of us." [Listen; then] "Given that, I think the right move is to let the agreement expire at [date] and close it out formally. We'll honor all in-flight referrals through [60 days post-expiration]. I want to part on good terms."

---

## If Exiting: Offboarding Checklist

- [ ] Give formal notice per agreement terms (typically 30 days written notice)
- [ ] Communicate directly and personally before sending formal notice
- [ ] Honor in-flight referrals: any referral submitted before termination date and closed within [60] days pays out
- [ ] Remove partner from partner directory and marketing materials within [30] days
- [ ] CRM update: change partner status to "Former" with termination date and reason
- [ ] Partner contact note: handwritten thank-you for the partnership (relationships outlast agreements)

---

## Matt Mathison Summary

[Partner] agreement expires [date] — [N] days. Recommended: [Renew / Restructure / Exit]. Performance: [1 sentence summary]. [If restructuring: proposed term changes]. [If exiting: rationale]. **Matt Mathison decision needed:** [Approve recommendation / Approve revised economics / No action needed — Dr. Lewis managing]
```

## Output Contract
- Decision must be made 90 days before expiration — agreements that expire without a deliberate decision become legal gray areas; the renewal process must start no later than 90 days out
- Performance data always included — a renewal recommendation without performance data is an opinion; the decision must be grounded in the actual 12-month performance vs. the prior period
- Upgrade decisions are as important as exit decisions — using the renewal to upgrade a Gold-performing partner (better economics, higher tier, more visibility) is the most powerful retention tool available; a top partner who doesn't get recognized at renewal is a churn risk
- Exit conversations are always personal before formal — a written termination notice without a personal conversation first destroys the relationship permanently; always call first, send the formal notice after
- HITL required: Dr. Lewis prepares the recommendation; Matt Mathison approves any restructured economics (fee rate changes, new commitments); legal reviews any restructured agreement terms before execution; exit decisions (formal non-renewal) require Matt Mathison approval; all signed renewals require Dr. Lewis signature plus CEO signature if contract value >$25K

## System Dependencies
- **Reads from:** Partner agreement, partner performance data, health score, CRM
- **Writes to:** Renewal agreement (SharePoint/BD/Partners/<Partner>/Agreements); CRM partner status update; partner directory (if exiting)
- **HITL Required:** Dr. Lewis recommends; Matt Mathison approves economics changes and exits; legal reviews restructured agreements; CEO co-signs high-value renewals

## Test Cases
1. **Golden path:** Allevio top referral partner (8 referrals, $72K attributed) coming up for renewal → Performance: 🟢 strong; Health: 80/100; Recommendation: renew + upgrade to Gold tier; Proposed changes: fee rate from 18% → 22%, payment timing from 45 days → 30 days; renewal call Day 45: "Your performance this year has been exceptional — we're upgrading you to our Gold tier"; partner response: "We had no idea we were valued at this level — this really motivates us to push harder"; Matt Mathison approved the economics change; signed renewal completed 30 days before expiration; partner submitted 3 referrals in the 30 days following the upgrade call
2. **Edge case:** Partner agreement has no formal expiration — it was a handshake-style agreement from the beginning → this is common in early partnership programs; treat the anniversary of the verbal agreement as the renewal date; use the occasion to formalize the agreement properly with a written contract; never enter a new agreement year without a signed document — verbal referral arrangements create ambiguity about fee obligations, performance expectations, and termination rights
3. **Adversarial:** A partner pushes back hard on non-renewal ("you're breaking our agreement, I'm going to tell my network") → if the agreement is being honored per its terms (proper notice given, in-flight referrals paid), there is no breach; document the specific concern; don't capitulate on business strategy due to a threat; do take reasonable steps to exit gracefully: honor all obligations, thank them for the partnership, offer to serve as a reference for their future clients if applicable; a public complaint from a former partner who was treated fairly has limited impact; a public complaint from one who wasn't can be damaging

## Audit Log
Renewal decisions retained with rationale. Signed renewals archived. Exit notices retained. In-flight referral payments at termination documented. Matt Mathison approvals logged.

## Deprecation
Retire when portfolio companies have a contract management system with automated renewal alerts and a standard renewal workflow managed by a dedicated partner success team.
