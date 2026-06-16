---
name: co-sell-coordinator
description: "Coordinate a co-sell engagement with a partner. Use when the user says 'co-sell', 'selling with a partner', 'joint selling', 'partner co-sell', 'co-selling coordination', 'partner-assisted sale', 'selling alongside a partner', 'joint deal', 'co-sell motion', or 'partner involvement in a deal'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <company name>] [--prospect <customer name>] [--deal-value <estimated value>]"
---

# Co-Sell Coordinator

Coordinate a co-sell engagement — a sales motion where we and a partner are selling together to a shared prospect. Co-selling is more complex than a referral: instead of the partner making an introduction and stepping back, both parties are actively involved in the sales process, often presenting complementary solutions together. Done well, it accelerates the deal and strengthens both brands. Done poorly, it creates customer confusion about who to call, conflicting messages, and deal delays.

## When to Use
- A partner has introduced a prospect and wants to stay involved in the sales process
- A deal requires a complementary solution from a partner to close (e.g., Allevio RCM + EMR implementation partner)
- A technology partner wants to present a joint solution to a mutual prospect
- Building a co-sell playbook for a partnership that will involve regular joint deals

## Co-Sell Design Principles

```
1. One point of contact for the customer: The prospect should have a single primary contact.
   Don't create a situation where the customer gets separate calls from two companies.
   Agree on who owns the customer relationship before the first meeting.

2. Roles defined before the first call: Who presents what? Who handles objections? 
   Who negotiates pricing? "We'll figure it out in the meeting" always leads to confusion.

3. Separate pricing, joint story: Each company prices its own solution separately.
   Don't conflate pricing or create a "bundle price" without legal review.
   The joint story is the value; the economics are separate.

4. Communication discipline: What we share with the partner about the prospect's internal
   conversations, budget, and decision-making process must be agreed upfront.
   Over-sharing can compromise the deal; under-sharing kills co-sell trust.

5. Clear win conditions: Both parties should know what a successful co-sell looks like
   before it starts. A deal that closes for one party but not the other is a failure.
```

## Output Format

```markdown
# Co-Sell Coordination Plan — <Prospect Name>
**Our company:** <Company> | **Partner:** <Partner Name>
**Prospect:** <Name + brief description>
**Estimated deal value (us):** $[X] | **Estimated deal value (partner):** $[X]
**Target close date:** <date>
**Prepared by:** Dr. John Lewis

---

## Deal Overview

| Item | Detail |
|------|--------|
| Prospect | [Company name, location, size] |
| Prospect need | [What they're trying to solve — shared understanding with partner] |
| Our solution component | [What we bring to the joint solution] |
| Partner solution component | [What the partner brings] |
| Joint value proposition | [How our combined solution solves the prospect's problem better than either alone] |
| Why co-sell? | [The specific reason co-selling is better than independent selling on this deal] |

---

## Role Assignments

| Task | Owner | Notes |
|------|-------|-------|
| Primary relationship / single point of contact for prospect | [Us / Partner] | |
| First meeting facilitation | [Us / Partner / Shared] | |
| Our solution presentation | Dr. Lewis / [Name] | [Minutes allocated: X] |
| Partner solution presentation | [Partner contact] | [Minutes allocated: X] |
| Pricing presentation (separate) | [Each presents their own] | Never quote each other's prices |
| Objection handling (our solution) | Dr. Lewis | |
| Objection handling (partner solution) | [Partner contact] | |
| Contract negotiation (our agreement) | Dr. Lewis | |
| Contract negotiation (partner agreement) | [Partner] | |
| Post-close coordination | [Both] | [Who manages the combined implementation] |

---

## Meeting Preparation

### Joint Meeting Agenda

| Time | Topic | Presenter | Notes |
|------|-------|-----------|-------|
| 0-5 min | Welcome + introductions | [Primary contact] | Set tone — "We've worked together on [N] implementations" |
| 5-15 min | Prospect situation confirmation | Both | "Let's make sure we understand your goals correctly" — listen first |
| 15-25 min | Our solution | Dr. Lewis | [3 key points — tie to their specific situation] |
| 25-35 min | Partner solution | [Partner] | [Their 3 key points — how it complements ours] |
| 35-50 min | Joint Q&A | Both | Clear who answers which questions |
| 50-60 min | Next steps | [Primary contact] | Don't leave without a next step |

### Pre-Meeting Alignment (30-min partner call BEFORE the prospect meeting)
- Confirm who is presenting what
- Agree on the joint value proposition (say it out loud — does it sound coherent?)
- Agree on what we will NOT share with each other from the prospect's internal conversations
- Confirm pricing approach (each presents their own; no joint pricing without legal review)
- Agree on the "what would make this meeting a success" definition

---

## Deal Communication Protocol

| Information type | Sharing with partner? |
|-----------------|----------------------|
| Prospect's stated budget | ✅ Share (helps right-size joint solution) |
| Prospect's internal decision process | ✅ Share (helps coordination) |
| Prospect's other vendors / evaluations | ⚠️ Share in general; not specific competitors' quotes |
| Our pricing / economics | ❌ Never share with partner |
| Specific decision-maker's concerns (personal context) | ⚠️ Use judgment — don't share sensitive personal information |
| CRM deal data | ❌ Do not share CRM records without data sharing agreement |

---

## Attribution and Economics

| Component | Revenue goes to | Attribution in CRM |
|-----------|----------------|-------------------|
| Our contract ($[X]) | Us | Our CRM — deal closed; co-sell assist |
| Partner contract ($[X]) | Partner | Their CRM |
| Referral fee owed (if any) | [Per agreement — do we owe them a fee on a co-sell? Or is co-sell different?] | [Document clearly] |

*Co-sell economics: confirm in the partner agreement whether co-sell deals trigger the standard referral fee. If not addressed in the agreement, clarify before the deal closes — never surprise a partner on economics.*

---

## Win/Loss Review (post-deal)

**If both parties won:** [What worked? What can be replicated?]
**If we won, partner didn't:** [What does the partner need to learn? How do we manage the relationship?]
**If partner won, we didn't:** [What held us back? Is the joint solution positioning right?]
**If neither won:** [Was co-sell the right motion for this deal? What do we do differently?]
```

## Output Contract
- Roles defined before the first prospect meeting — co-sell meetings where roles are undefined always go poorly; the prospect senses the disorganization; the role assignment table must be completed before the pre-meeting alignment call
- Pre-meeting partner alignment always required — a 30-minute partner call before every co-sell meeting is non-negotiable; this is where misalignments are caught before they appear in front of the prospect
- Pricing is always separate — co-sell does not mean joint pricing; combining pricing requires legal review for bundling, tied-selling, and potential competition concerns; always present separately
- Attribution and economics confirmed before the deal closes — surprises about whether a co-sell triggers a referral fee create escalations; confirm the economics interpretation with the partner at deal start, not at deal close
- HITL required: Dr. Lewis coordinates; Matt Mathison for deals >$25K total value; legal review if deal requires a modified agreement or if joint pricing is proposed; any new economics (co-sell fee structure) requires Matt Mathison approval

## System Dependencies
- **Reads from:** Partner agreement, prospect CRM record, prior co-sell playbooks
- **Writes to:** Co-sell plan (SharePoint/BD/Co-Sell/<Prospect>); deal CRM record; win/loss log
- **HITL Required:** Dr. Lewis coordinates; Matt Mathison for deals >$25K; legal if joint pricing proposed; new co-sell fee structures require Matt Mathison

## Test Cases
1. **Golden path:** Allevio co-sells with an EMR implementation partner for an Arizona independent practice → Joint solution: Allevio handles billing/RCM, partner handles EMR migration and training; Pre-meeting: defined roles (Allevio = primary contact, partner presents EMR component minutes 25-35); Prospect sees a seamless 60-min demo; objections split correctly ("how does billing integrate?" → Allevio; "how long does EMR implementation take?" → partner); Both present pricing separately; both close within 30 days; referral attribution: partner is credited in Allevio CRM as co-sell assist; co-sell fee: per agreement (no standard referral fee in co-sell — partner earns on their own contract); post-close review: documented 3 replicable best practices
2. **Edge case:** Partner starts negotiating on our behalf during the prospect meeting ("I think Allevio might be able to do X") → interrupt professionally and redirect: "Actually, let me speak to that — [accurate position]"; debrief with the partner after the meeting: explain why it's important that each party speaks only to their own solution and economics; add this to the pre-meeting alignment checklist going forward
3. **Adversarial:** Partner wins the deal but we don't (prospect chooses a different billing provider) → the partner still closes their EMR engagement; how does this affect the partnership? If we have a referral arrangement, do they owe us a fee? This depends on the agreement — if the co-sell arrangement triggered a partnership expectation, the loss is painful; manage the relationship carefully; don't attribute the loss to the partner publicly; do a private debrief to understand if the joint solution positioning was wrong

## Audit Log
Co-sell plans retained by deal. Meeting notes retained. Win/loss outcomes logged. Revenue attribution documented. Partner-specific co-sell performance tracked.

## Deprecation
Retire when portfolio companies have a formal co-sell playbook integrated into their standard sales process and CRM, with partner involvement tracked automatically.
