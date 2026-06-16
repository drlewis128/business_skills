---
name: partner-qbr-preparer
description: "Prepare a quarterly business review with a partner. Use when the user says 'partner QBR', 'quarterly review with partner', 'partner business review', 'QBR prep for partner meeting', 'prepare for partner QBR', 'quarterly partner check-in', 'partner performance review meeting', 'partner strategy session', or 'partner quarterly update'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--quarter <Q1|Q2|Q3|Q4>] [--year <year>]"
---

# Partner QBR Preparer

Prepare a quarterly business review (QBR) with a strategic partner — assessing the prior quarter's performance, aligning on the next quarter's goals, and strengthening the relationship. A good partner QBR is not a status meeting; it is a strategic planning session that reinforces the value of the partnership and produces specific commitments for the next 90 days. A bad one is a slide deck that gets sent and never acted on.

## When to Use
- Preparing for a quarterly meeting with an active partner
- A partner relationship needs reinvigoration — QBR creates accountability
- A top-performing partner deserves a more strategic conversation than a check-in
- Setting goals for the next quarter with a partner who is underperforming
- Annual partnership review to decide whether to renew or restructure

## QBR Design Principles

```
1. Start with their perspective: What is working for them? What isn't?
   A QBR that opens with "here's what we need from you" loses the partner.
   Open with curiosity about their experience.

2. Performance data must be honest: Don't hide underperformance in a QBR.
   Partners know when they're underperforming. Acknowledging it and having
   a plan is far better than pretending the numbers are fine.

3. Commitments must be specific: "We'll try harder next quarter" is not a commitment.
   "We will make 5 introductions by [date]" is a commitment.

4. Next quarter plan must be co-created: Partners who build the plan are more
   committed to it. Don't show up with a fully formed plan — build it together.

5. Relationship investment: QBRs are relationship maintenance as much as
   performance management. End with something that reinforces the relationship.
```

## Output Format

```markdown
# Partner QBR Prep — <Partner Name>
**Quarter:** [Q[N] [Year]] | **Meeting date:** <date>
**Our attendees:** Dr. John Lewis + [CEO if relevant]
**Partner attendees:** [Names and titles — confirm before meeting]
**Format:** In-person / Video | **Duration:** 45-60 min
**Prepared by:** Dr. John Lewis

---

## Performance Summary: Last Quarter

### What we accomplished together

| Metric | Q[N-1] Actual | Q[N-1] Target | Status |
|--------|--------------|--------------|--------|
| Referrals submitted by partner | [N] | [N] | ✅ / ⚠️ / ❌ |
| Referral-to-pipeline conversion | [N] | [N] | ✅ / ⚠️ / ❌ |
| Partner-attributed revenue closed | $[X] | $[X] | ✅ / ⚠️ / ❌ |
| Referral fees paid to partner | $[X] | — | — |
| Joint deals in pipeline | $[X] | — | — |

**Headline:** [1-2 sentences — honest summary of the quarter. If underperformance, acknowledge it.]

---

## What Worked

- [Specific win 1 — what the partner did that produced results]
- [Specific win 2]
*(Be specific — "great collaboration" is not a win; "the introduction to Dr. Garcia's network produced 3 signed contracts" is a win)*

---

## What Needs to Improve

- [Specific gap 1 — framed constructively: "We need to improve [X] because [reason]"]
- [Specific gap 2]
*(Honesty builds trust; sugarcoating erodes it)*

---

## Q[N] Discussion Agenda

| Time | Topic | Format | Goal |
|------|-------|--------|------|
| 0-5 min | Welcome + check-in | Conversation | Relationship temperature |
| 5-15 min | Last quarter review (our slides) | Presentation | Shared understanding of performance |
| 15-25 min | Partner's perspective | Discussion | "What's working for you? What's frustrating?" |
| 25-40 min | Q[N+1] plan — build together | Collaborative | Specific mutual commitments |
| 40-50 min | Ask: "What else do you need from us?" | Discussion | Surface unmet needs |
| 50-60 min | Close + next steps | Action items | Specific next actions with owners |

---

## Q[N+1] Goals (draft — to be finalized with partner)

| Goal | Target | Owner | How to measure |
|------|--------|-------|---------------|
| Partner referrals | [N] | [Partner name] | Referrals submitted in CRM |
| Referral-to-close rate | [X%] | Both | CRM tracking |
| Partner-attributed revenue | $[X] | Both | Closed/won attributed to partner |
| Joint marketing activity | [1 joint webinar / N social posts / 1 co-authored article] | Both | Completed by [date] |

---

## Questions to Ask the Partner (open-ended — listen more than talk)

1. "What's working well in our partnership that we should double down on?"
2. "What's getting in the way of making more referrals — be honest with us."
3. "What do your clients say when you introduce them to us?"
4. "What could we be doing differently to make you more successful as a partner?"
5. "Is there anything about how we've shown up as a partner that we should change?"

---

## Relationship Investment (close on this)

[Something personal or valuable to the partner — an introduction, an industry insight, a resource]:
- [E.g., "We'd like to introduce you to [Name] at [Company] — we think there's a mutual fit for both of your businesses."]
- [E.g., "Here's a market report on [topic relevant to their business] that we thought you'd find useful."]

---

## Post-QBR Actions (to send recap within 24 hours)

| Action | Owner | Due |
|--------|-------|-----|
| [Action 1] | [Owner] | [Date] |
| [Action 2] | [Owner] | [Date] |
| Send QBR recap email with confirmed commitments | Dr. Lewis | Within 24 hours |
```

## Output Contract
- Open questions always included — QBRs dominated by the company's slide deck are one-way; the discussion questions are what differentiate a good QBR from a status report; at least 50% of the meeting should be the partner talking
- Performance data is honest — it is tempting to present only favorable metrics in a partner QBR; don't; partners know their own referral activity; presenting only the good numbers signals that you're not a trustworthy partner
- Q[N+1] plan is co-created in the meeting — the draft goals go into the meeting as a starting point, not a final plan; the final commitments are agreed in the meeting so both parties own them
- Relationship investment always included — the QBR is a relationship as much as a management tool; always close with something that gives value to the partner, not just extracts commitments
- Post-QBR recap within 24 hours — commitments made in a meeting that aren't confirmed in writing within 24 hours are often forgotten; the recap is non-negotiable
- HITL required: Dr. Lewis prepares and leads; CEO joins for top-tier partner QBRs; any commitments made in the QBR (new fee structures, exclusive arrangements, contract modifications) require Matt Mathison approval before the QBR; commitments made in the meeting must be confirmed within 24 hours

## System Dependencies
- **Reads from:** Partner performance tracker, CRM data, partner agreement, prior QBR notes
- **Writes to:** QBR prep doc (SharePoint/BD/Partners/<Partner>/QBRs); post-QBR recap; partner CRM update
- **HITL Required:** Dr. Lewis leads; CEO joins top-tier QBRs; any new commitments require Matt Mathison approval; recap sent within 24 hours

## Test Cases
1. **Golden path:** Allevio QBR with top referral partner → Performance: 7 referrals (target 5), 3 converted ($60K); partner perspective: "The response time after referral could be faster — lost one client because they didn't hear back in 3 days"; Q3 plan: 6 referrals, improve response SLA to 24 hours; relationship investment: introduced partner to a physician recruiter who is a mutual connection; recap sent same day; Q3 commitments documented; response SLA process changed within 1 week; partner activated 2 more referrals in following month
2. **Edge case:** Partner contacts have changed — the champion who signed the agreement left the company → this is the most common partner at-risk signal; the QBR agenda must include time to understand the relationship status: "I understand [name] moved on — can you help me understand who now owns the partnership relationship on your side?"; establish the new champion relationship before the QBR ends; if the partner company has lost all institutional knowledge of the agreement, treat it as a re-onboarding situation
3. **Adversarial:** The partner uses the QBR to renegotiate the referral fee, claiming they can get better terms elsewhere → don't make commitments in the meeting; acknowledge the concern: "That's worth discussing — let me take that back and we can follow up with a specific response"; evaluate whether the current fee structure is competitive; if it is, hold firm and explain the value; if it isn't, present a revised offer after Matt Mathison approval; never make economic concessions in a meeting without authorization

## Audit Log
All QBR prep materials retained by partner and quarter. QBR meeting notes retained. Commitments documented and tracked. Post-QBR recaps archived.

## Deprecation
Retire when portfolio companies have dedicated partner success managers who run QBRs as a standard partner management function.
