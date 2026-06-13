---
name: product-marketing-brief
description: "Write a product marketing brief for a feature or launch. Use when the user says 'product marketing brief', 'launch brief', 'marketing brief', 'write a brief for this feature', 'how do we market this', 'launch messaging', 'feature marketing', 'product announcement', or 'how do we position this launch'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--audience <internal|portfolio|external>] [--type <feature|launch|update>]"
---

# Product Marketing Brief

Write a product marketing brief that aligns product, marketing, and leadership on how to launch and communicate a feature or product. The brief is the single source of truth for what we're launching, who it's for, what problem it solves, and how to talk about it. Without a brief, launches fragment: sales says one thing, the product says another, and the email to users says a third. For MBL, most launches are internal or portfolio-facing — but the brief discipline is the same.

## When to Use
- Any product or feature launch — write the brief first, then the content
- Before writing emails, release notes, or stakeholder updates about a launch
- Portfolio company expanding a product — brief for their team
- Feature is complex — brief forces clarity before communication
- Matt Mathison needs to communicate something to portfolio leads — brief for his review

## Brief Structure

```
Problem: What pain does this solve? (User's words, not product words)
Solution: What did we build? (One sentence, no jargon)
Audience: Who is this for? (Specific — not "all users")
Value: What's the concrete benefit? (Measurable or specific)
Positioning: How do we describe it? (The single line anyone can repeat)
Proof: What evidence do we have? (Beta data, user quotes)
Call to action: What should the audience do after reading?
```

## Output Format

```markdown
# Product Marketing Brief — <Feature/Product Name>
**Date:** <date> | **Author:** Dr. John Lewis
**Launch type:** Feature / Product / Update
**Audience:** Internal (MBL) / Portfolio (Allevio/HIVE/Column6) / External
**Approval required from:** Dr. Lewis ✅ / Matt Mathison ⬜

---

## The Brief

### Problem

> [User's problem in their words — not product language]

"Matt spends 30 minutes after every meeting manually noting action items. Half the time they end up on a sticky note that doesn't make it into Monday.com. Things fall through the cracks."

### Solution

**In one sentence:** Meeting Intelligence automatically extracts action items from Krista.ai meeting summaries and pushes them directly to your Monday.com board.

**What it does:**
- [Specific capability 1]
- [Specific capability 2]
- [Specific capability 3]

**What it doesn't do (important — sets expectations):**
- [Out of scope capability] — coming in v2

### Audience

**Primary:** <Who benefits most — be specific: "Matt Mathison and his direct reports at MBL">
**Secondary:** <Who else benefits: "Allevio operations team in Phase 2">

### Value

| Before | After |
|--------|-------|
| [Manual effort / pain] | [Automated / eliminated] |
| 30 min per meeting on action items | <2 min to review and confirm |
| 40% of action items missed or delayed | Action items captured automatically |

**Headline metric from beta:** [Specific number — "beta users acted on 73% of extracted action items within 48 hours"]

### Positioning

**One-line description:** "Never miss an action item from a meeting again."

**Elevator pitch (3 sentences):**
[What it does, who it's for, why it's different from doing it manually]

**What not to say:**
- ❌ "AI-powered meeting intelligence" — too jargon-y
- ❌ "Smart action item extraction" — meaningless
- ✅ "Your meeting summaries, with action items already in Monday.com"

### Proof Points

| Type | Evidence |
|------|---------|
| Beta metric | "73% of action items acted on within 48 hours" |
| User quote | "[Quote from beta user about specific value]" — [Name, Role] |
| Comparison | "Meeting review time dropped from 30 min to 5 min per meeting" |

### Call to Action

**For internal users:** [What they should do to get started — link]
**For portfolio leads:** [What they should do — schedule, email, or link]
**For Matt Mathison:** [Specific action from him if needed]

---

## Launch Checklist

- [ ] Brief approved by Dr. Lewis
- [ ] Brief reviewed by Matt Mathison (if portfolio-facing)
- [ ] User documentation ready ([link])
- [ ] Release notes written ([link])
- [ ] Rollout plan confirmed (which users, which date)
- [ ] Success metrics defined and tracking confirmed
- [ ] Support process ready (who handles questions?)

---

## Key Messages by Audience

| Audience | Lead with | Avoid |
|---------|---------|-------|
| Matt Mathison | Time saved; action item capture rate | Technical implementation |
| Allevio ops | Workflow integration; HIPAA compliance | Complexity; caveats |
| Engineering team | What shipped; API details; known issues | Marketing language |
| Portfolio company end users | "What you can do now"; simple steps | How it works internally |
```

## Output Contract
- "What it doesn't do" always included — unmet expectations destroy trust faster than any bug
- Proof points required — "it's great" without evidence is not a brief; it's a wish
- Messaging by audience always written — what Matt hears vs. what Allevio's team hears is different
- Brief approved by Dr. Lewis before any external distribution — no exceptions for portfolio-facing launches
- HITL required: Dr. Lewis approves brief; Matt Mathison approves all portfolio-facing launch communications; no external distribution without Dr. Lewis sign-off

## System Dependencies
- **Reads from:** Feature spec, beta program results, user research, brand guide (Context/Brand/<Entity>/)
- **Writes to:** Launch brief (SharePoint/Product); inputs for release notes, email, stakeholder updates
- **HITL Required:** Dr. Lewis approves; Matt Mathison approves portfolio-facing; distribution requires both approvals

## Test Cases
1. **Golden path:** Meeting Intelligence action item extraction launch brief → Audience: MBL team (internal); Problem: "I miss action items from meetings, especially when I'm running the meeting"; Solution: "Action items automatically extracted and pushed to Monday.com"; Beta data: 73% acted on within 48h; Positioning: "Never miss an action item from a meeting"; CTA: link to getting started guide; Matt Mathison approves before sending to team; launch on Monday with team email
2. **Edge case:** The feature has a significant limitation that affects most users → put it in "What it doesn't do" prominently — don't bury it; users who hit an undisclosed limitation feel deceived; full disclosure upfront, with the v2 timeline, builds trust; "Not included in v1: meeting recordings longer than 2 hours. V2 will support full-length meetings — expected Q4."
3. **Adversarial:** Marketing team writes the brief without product input and leads with feature name instead of user problem → the brief must lead with the user problem, not the feature; "Introducing AI-Powered Meeting Intelligence!" is a product-centric lead; "Stop losing action items after every meeting" is a user-centric lead; always start from the user's pain before naming the solution

## Audit Log
Launch briefs retained per release. Approval chain documented. Post-launch metric outcomes linked to brief objectives.

## Deprecation
Retire when MBL has a dedicated product marketing function with a standardized launch brief template and approval workflow.
