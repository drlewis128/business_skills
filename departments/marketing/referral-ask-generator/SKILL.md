---
name: referral-ask-generator
description: "Generate a structured referral ask for a satisfied customer. Use when the user says 'ask for a referral', 'referral request', 'get a reference', 'customer referral', 'referral ask', 'who can they refer us to', or 'leverage this customer for introductions'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--type <referral|reference|case-study>]"
---

# Referral Ask Generator

Generate a structured referral request for a satisfied customer. Referred prospects close at 3-5× the rate of cold outbound and enter with built-in trust. Most companies get far fewer referrals than they could because they never ask — or they ask badly.

## When to Use
- Customer has expressed satisfaction (post-project success, positive NPS, unsolicited praise)
- After a successful QBR where the customer articulated ROI
- When entering a new industry or segment where the customer has relationships
- When a customer champion is leaving for a new company (warm intro to new role)
- Annual or semi-annual account review — build referral into the conversation

## Types of Referral Asks

| Type | What You're Asking For | When to Use |
|------|----------------------|-------------|
| **Warm introduction** | "Do you know someone who'd benefit from this?" | Best for peer-to-peer intros |
| **Reference call** | "Would you speak with a prospect we're pursuing?" | Active deal with prospect who wants a reference |
| **Case study / testimonial** | "Would you share your story publicly?" | Building credibility at scale |
| **LinkedIn recommendation** | "Would you post a recommendation?" | Long-term brand and search visibility |

## Referral Ask Principles

1. **Earn the right first** — Only ask when the customer is genuinely satisfied and has received value. Asking too early is worse than not asking.
2. **Be specific** — "Who do you know?" is too broad. "Do you know any other CFOs at healthcare companies your size?" gets a name.
3. **Make it easy** — Draft the intro email for them. All they have to do is approve and send.
4. **Reciprocate** — What can you offer them? (Referral fee, case study visibility, conference speaker slot, co-marketing, discounted renewal)

## Output Format

```markdown
# Referral Ask — <Account>
**Date:** <date> | **Customer contact:** <name, title> | **Entity:** <MBL entity>

## Ask Summary

**Type of referral requested:** Warm introduction / Reference call / Case study / Testimonial
**Context:** <Why now — what triggered the timing of this ask>
**Target profile (for warm intro):** <What kind of company or person you want to meet>

---

## Verbal Script (For In-Person / Call)

"<Name>, I'm really glad this has been valuable for [their team/company]. We're working to grow our work in [segment/industry], and I'm wondering — is there anyone in your network you'd feel comfortable introducing us to? Ideally someone like [specific profile — same role, same industry, same challenge].

If there is, I can make it easy — I'll draft the intro email and you can just approve and send it. Would that work?"

---

## Draft Introduction Email (Ready for Customer to Send)

**Subject:** Intro: <Their Name> — <MBL Entity/Product>

Hi <Referral name>,

I wanted to connect you with <Rep name> and the team at <Entity>. We've been working with them on [what you do together in 1 sentence] — they've been great to work with and I thought you'd be interested.

I'll let <Rep name> take it from here. <Rep name>, <Referral name> is a [title] at [company] — I think you'll have a great conversation.

<Customer name>

---

## What We're Offering in Return (Select / Customize)

- [ ] Acknowledgment and thank-you (always included)
- [ ] Case study / spotlight feature (if customer agrees to public story)
- [ ] Referral credit or discount on next renewal
- [ ] Co-marketing opportunity (webinar, event, content)
- [ ] Executive introduction (MBL or portfolio connection that could benefit them)

---

## Reference Call Prep (If Requesting a Reference)

**Prospect being referenced:** <prospect company>
**What the prospect needs to hear:** [Their top concern that this customer can address]
**What to brief the reference on:** [Key points we want the reference to reinforce]
**Logistics:** [30-min call, we'll set it up, customer just needs to confirm availability]
```

## Output Contract
- Ask always targeted (specific referral profile), not generic
- Draft intro email always included — make it zero-effort for the customer
- Reciprocation always offered — referrals are a value exchange, not a one-sided ask
- HITL required: Dr. Lewis reviews any case study or public testimonial before it goes live

## System Dependencies
- **Reads from:** Customer account record, satisfaction signals (provided or from CRM/NPS)
- **Writes to:** Nothing (referral ask materials for rep use)
- **HITL Required:** Dr. Lewis approves any public case study or testimonial; legal reviews quotes before publication

## Test Cases
1. **Golden path:** Happy Allevio customer (VP Operations) post-QBR → warm intro ask for CFOs at other MSOs, drafted intro email, offer of renewal credit
2. **Edge case:** Customer is satisfied but in a vertical where they know no one who would fit our ICP → pivot to reference call ask for an active deal, or case study instead of warm intro
3. **Adversarial:** Request to ask for a referral from a customer who just had a service issue → refuses, recommends resolving the issue first, flags that asking for a referral from an unhappy customer will damage the relationship

## Audit Log
Referral asks logged by account and date. Referrals received tracked to deal attribution in CRM.

## Deprecation
Retire when CRM or CS platform tracks referral program enrollment and automates referral ask sequences based on NPS triggers.
