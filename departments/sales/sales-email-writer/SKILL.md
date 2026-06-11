---
name: sales-email-writer
description: "Write a high-converting sales email or sequence. Use when the user says 'write a sales email', 'cold email', 'follow-up email', 'outreach email', 'email sequence', 'write an email to a prospect', 'sales email template', or 'email for the deal'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<prospect-context> [--type <cold|follow-up|proposal|close|nurture>] [--tone <direct|conversational>]"
---

# Sales Email Writer

Write a high-converting sales email or sequence. Bad sales emails get deleted in under 3 seconds. Good ones get replies. The difference is specificity, relevance, and a clear ask — not length or polish.

## When to Use
- Writing cold outreach emails to new prospects
- Following up after a meeting (post-discovery, post-demo)
- Following up on a proposal that's gone quiet
- Closing email when a deal is stalling
- Building a multi-touch email sequence for a campaign

## Email Performance Rules

1. **Subject line = 50% of open rate** — Be specific, not clever. "Question about [specific thing]" beats "Transforming Your Business"
2. **First line must earn the read** — No "I hope this finds you well." Lead with why you're writing, or a specific observation about them
3. **One ask per email** — "Book a call, review the proposal, or connect me with your boss" is three asks. Pick one
4. **Shorter is better** — 3-5 sentences is ideal for cold. < 150 words. Your prospects are busy
5. **Personalization > templates** — One specific thing about their company beats a perfectly polished generic email

## Email Type Framework

### Cold Outreach (First Touch)
Structure: Trigger event → Specific observation → Short value prop → One ask
- Trigger: Why you're writing to them now (not generic)
- Observation: Something specific about their company, role, or situation
- Value prop: One sentence on how you help people like them
- Ask: 15-minute call — low commitment

### Follow-Up After Meeting
Structure: Recap → Value delivered → Next step
- Don't start with "Just following up" — it's weak
- Reference something specific from the meeting
- Confirm the agreed next step with a concrete date/time

### Proposal Follow-Up (No Response)
Structure: Light check-in → Restate the core value → Make it easy to respond
- Don't pressure — give them a graceful off-ramp too ("If the timing isn't right, just say so")
- Offer to clarify or adjust rather than just repeating the proposal

### Closing Email (Deal Stalling)
Structure: Acknowledge silence → Restate the urgency or deadline → Force a decision
- Give them a binary: "Are you moving forward or should I close this out?"
- Better to get a no than silence — no lets you move on

## Output Format

```markdown
# Sales Email — <Type> for <Prospect/Account>
**Tone:** <direct/conversational> | **CTA:** <specific ask>

---

## Subject Line Options (Use A/B Testing)
A: <Option 1 — specific>
B: <Option 2 — curiosity/question>

---

## Email Body

<Name>,

<Opening — specific trigger or observation — NOT "I hope this email finds you well">

<Value bridge — how you help people in their situation in one sentence>

<Specific ask — one action, low friction>

<Name>
<Title>
<Phone> | <Email>
<Entity>

---

## Why This Works
- **Trigger:** [What makes this relevant now]
- **Personalization:** [What's specific to them, not generic]
- **Ask:** [Why this CTA is appropriate for this stage]

---

## A/B Variant (Optional)
<Alternative version with different angle or length>
```

## Email Examples by Type

### Cold Outreach
```
Subject: [Prospect's company] + [pain area]

<Name>,

Saw that [company] just [trigger event — raised a round, expanded to X, posted X role]. 
Companies in that phase often find [specific problem] is costing them [impact].

We help [ICP description] [specific outcome — e.g., "cut billing lag by 30%"].

Worth 15 minutes to see if we're relevant?

[Name]
```

### Proposal Follow-Up
```
Subject: Re: [Proposal topic]

<Name>,

Wanted to check in on the proposal I sent last week. 

Based on what you shared about [specific pain], I'm confident [solution] addresses it — 
but I want to make sure you have everything you need to make the call.

Any questions or changes I can make to move this forward?

[Name]
```

## Output Contract
- Subject line always included — not optional
- Every email stays under 150 words (cold) or 200 words (follow-up) — longer is not better
- Single CTA per email — never multiple asks
- Personalization element always present — never a purely generic template
- HITL required before emails go to executive-level prospects or sensitive accounts

## System Dependencies
- **Reads from:** Prospect context, meeting notes, proposal content (provided)
- **Writes to:** Nothing (draft for HITL review before sending)
- **HITL Required:** Dr. Lewis reviews emails to C-suite prospects and to accounts with active executive relationships; rep reviews and personalizes before sending

## Test Cases
1. **Golden path:** Cold outreach to CFO of a mid-size healthcare company after they posted a job for a billing manager → trigger-based email referencing the job post, specific pain around RCM, one CTA for a 15-minute call, under 120 words
2. **Edge case:** Follow-up email after 3 weeks of silence on a $90K proposal → honest check-in, offers graceful no option, sets a specific deadline, asks for a binary decision
3. **Adversarial:** Request to send an email with a misleading subject line ("Following up on your request") when there was no prior request → refuses, rewrites with accurate subject line, explains that misleading subject lines damage trust and open rates over time

## Audit Log
Email templates retained by type and entity. Response rates tracked for effectiveness calibration.

## Deprecation
Retire when sales engagement platform (Outreach, Salesloft) provides AI-drafted email sequences with personalization from CRM data and A/B testing built in.
