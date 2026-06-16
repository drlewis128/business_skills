---
name: bd-proposal-writer
description: "Write a business development partnership proposal. Use when the user says 'write a partnership proposal', 'BD proposal', 'partnership pitch document', 'partnership one-pager', 'partner proposal', 'write a proposal for a partner', 'partnership deck', 'partnership offer letter', 'BD pitch document', or 'partnership presentation for a prospect'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--partner <prospect company name>] [--partnership-type <referral|co-sell|reseller|strategic>] [--format <one-pager|letter|deck>]"
---

# BD Proposal Writer

Write a business development partnership proposal — the document that presents a partnership opportunity to a prospective partner and gives them everything they need to make a decision. A good BD proposal is not a marketing brochure; it is a specific, personalized document that shows the prospective partner exactly what the partnership looks like for them — what they commit to, what they get, and why this is the right moment to say yes. A bad one is a generic pitch about how great the company is.

## When to Use
- A prospect has completed a discovery call and is ready to see a specific partnership proposal
- Matt Mathison or a CEO is meeting with a senior leader at a prospective partner company
- A formal partnership offer is needed to move a Stage 4 (qualified) prospect to Stage 5 (proposal)
- Responding to a partner who asked "can you send us something in writing?"

## Proposal Format Options

```
Three formats for BD proposals:

1. One-pager: Best for referral partnerships with straightforward economics.
   Use when: The relationship is clear and you want to make it easy to say yes.
   Length: 1 page.

2. Letter (informal proposal): Best for warm, trust-based relationships.
   Use when: You have a strong relationship and the proposal is an extension of the conversation.
   Length: 1-2 pages, conversational tone.

3. Deck / presentation: Best for complex or high-value partnerships (co-sell, JV, strategic).
   Use when: Multiple decision-makers; complex economics; formal evaluation process.
   Length: 8-12 slides.

Default for MBL portfolio: Use the letter format until the relationship demands a deck.
```

## Output Format

```markdown
# Partnership Proposal — <Company Name>
**To:** [Prospect name] | **From:** Dr. John Lewis, MBL Partners / [Entity]
**Date:** <date>
**Format:** One-pager / Letter / Deck

---

## LETTER FORMAT (default for referral partnerships)

---
[Company letterhead if formal / plain text if email]

[Date]

[Prospect name]
[Title]
[Company]
[Address]

---

Dear [First name],

Thank you for the conversation [last week / on [date]] — [specific callback to what they shared, so they know this isn't a form letter]. I appreciated you sharing [specific detail from the call]. Based on that conversation, I wanted to put our proposed partnership in writing.

---

**THE PARTNERSHIP OPPORTUNITY**

[Company] helps [target customer type] [solve specific problem]. You work with [description of their clients] who often face [the same problem]. A referral partnership between [our company] and [their company] would give your clients access to a solution they need — and give you a way to add value to your client relationships while earning a meaningful referral fee.

---

**WHAT YOU DO**

- Continue serving your clients as you do today
- When a client mentions [specific trigger situation], introduce them to us
- We handle the entire sales and implementation process — no lift from you after the introduction
- Your introduction takes: [1-2 minutes on the phone / one email]

---

**WHAT YOU EARN**

| Deal size | Your referral fee |
|-----------|-----------------|
| $[X]-$[Y] annual contract | $[A] — paid within 30 days of contract signature |
| $[Y]-$[Z] annual contract | $[B] |
| >$[Z] annual contract | $[C] |

For reference: Our average contract with a new client is $[average] annually. A single referral typically earns $[typical fee].

**Based on your client base of [N] practices:** If even [N%] of your clients benefit from what we do, that's [N] referrals per year — approximately $[X] in annual referral income.

---

**WHAT WE COMMIT TO**

- Contact any prospect you refer within [2] business days
- Keep you updated on the status of your referrals (monthly)
- Honor your referral fee within [30] days of contract signature
- Treat your clients with the same care and professionalism you do

---

**HOW WE START**

1. Sign the attached referral agreement (typically 20 minutes with our team to review)
2. 30-minute kickoff call — we'll walk you through everything you need to know
3. You make your first introduction

We can be fully active within [5 business days] of the agreement being signed.

---

**THE OPPORTUNITY IS TIMELY**

[Specific reason why now is a good time — e.g., "We are only signing [N] new referral partners in Arizona this quarter to ensure each partner receives dedicated attention and fast response times for their referrals."]

---

I'd love to move forward. If this looks right to you, here are the next steps:

1. Reply to this letter with any questions
2. I'll send the referral agreement for your review
3. We schedule our 30-minute kickoff call

Looking forward to your response.

Sincerely,

Dr. John Lewis
Director of AI Strategy, MBL Partners
jlewis@mblpartners.com | 602-880-6491

---

## ONE-PAGER FORMAT (attach to email or hand at meeting)

**[Company] Partner Program — [Partner name]**

---

### THE OPPORTUNITY
[Company] helps [customer type] [outcome]. You serve [same customers]. A referral partnership lets you add value to your clients while earning a referral fee when they become our clients.

### YOUR COMMITMENT
- Identify clients who could benefit → make an email introduction → earn your fee
- Time required: [2 minutes] per introduction. No sales, no follow-up.

### YOUR EARNING
**Standard fee:** [X%] of Year 1 contract value, paid within 30 days of signing.
**Example:** Refer a client who signs a $40,000 contract → You earn $[X].
**Based on your client base:** [N] referrals/year → approximately $[X] in annual fee income.

### OUR COMMITMENT
- Respond to your referrals within [2] business days
- Keep you updated monthly
- Pay fees within [30] days of contract signature

### NEXT STEP
Reply to schedule a 20-minute agreement review call → Done within 5 business days.
```

## Output Contract
- Personal callback to discovery call always in opening — a proposal that doesn't reference the specific conversation feels like a form letter; the first paragraph must include something specific they said that demonstrates it was written for them
- Economics always presented in dollar terms, not just percentages — "18% referral fee" is abstract; "$[X] for a typical referral" is concrete; prospects make decisions based on specific amounts, not rates
- Their earning potential always personalized — "what does this mean for me specifically?" is the question every prospect has; the proposal must calculate an earning estimate based on their specific client base, not a generic example
- Single clear next step always at the end — a proposal that ends with "let us know what you think" produces no action; the next step must be specific, low-friction, and tied to a deadline or time sensitivity
- HITL required: Dr. Lewis writes; CEO reviews proposals for senior executive meetings or top-tier partnerships; all proposals sent with referral agreement must have legal review of the agreement before sending; economics in the proposal must match the approved fee schedule (Matt Mathison approved); no non-standard fee rates in a proposal without Matt Mathison approval

## System Dependencies
- **Reads from:** Discovery call notes, partner qualification scorecard, approved fee schedule, company pitch materials
- **Writes to:** Partnership proposal (SharePoint/BD/Partners/<Prospect>/Proposals); CRM stage update (Stage 4 → Stage 5)
- **HITL Required:** Dr. Lewis writes; CEO reviews for senior-level proposals; legal reviews agreement attachment; Matt Mathison approves non-standard fee rates

## Test Cases
1. **Golden path:** Discovery call with AZ healthcare consultant (15 practices, advisory relationship) → Letter format; Opening callback: "I appreciated your point that your clients are frustrated with billing response times — that's exactly the situation we most often solve"; Economics: 18% → average $6,800 per referral; Personalized earning: "Based on your 15 practices, even 2-3 referrals per year represents $14,000-$20,000 in annual income"; Commitment: 2-day response SLA, monthly status updates, 30-day payment; Next step: "Reply and I'll send the agreement for your review — we can be active within 5 business days"; Response within 48 hours: "Let's do it — send the agreement"; signed within 10 days
2. **Edge case:** Prospect asks for a partnership deck (multiple slides) because their organization has a formal partnership evaluation process involving multiple stakeholders → shift to deck format; the deck must present the same content but in a format suited for an audience who hasn't met us; lead with the problem their clients face → how we solve it → what the partnership looks like → economics → who we are → case study → next steps; keep to 10 slides; offer to present the deck live before they circulate it internally
3. **Adversarial:** A competitor gets wind of the proposal and contacts the same prospect with a better economics offer — prospect asks us to match → evaluate the competitive offer: is it credible? Is the competitor a realistic option for this partner? If so, can we compete on value rather than just price? "Our fee is 18% — here's what that includes that [Competitor]'s offer at 20% doesn't: [faster payment, dedicated support, co-marketing]"; if you must respond on economics, escalate to Matt Mathison before offering any non-standard rate; don't make economics commitments in a proposal without approval

## Audit Log
Proposals retained by partner and date. Fee rates used documented. Non-standard rates approved by Matt Mathison logged. Proposal outcomes (signed/passed) tracked. Discovery call notes retained.

## Deprecation
Retire when portfolio companies have standardized partnership proposal templates maintained by the marketing team with automated personalization from CRM data.
