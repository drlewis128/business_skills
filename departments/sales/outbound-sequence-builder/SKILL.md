---
name: outbound-sequence-builder
description: "Build a multi-touch outbound sales sequence for a target segment. Use when the user says 'outbound sequence', 'sales sequence', 'email sequence for prospects', 'cold outreach sequence', 'multi-touch outreach', 'how to reach out to this segment', 'prospecting sequence', or 'outreach cadence'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<segment-or-persona> [--entity <name>] [--touches <N>] [--channels <email|phone|linkedin|all>]"
---

# Outbound Sequence Builder

Build a structured multi-touch outbound sequence for a target segment. Single-touch outreach has a 2% response rate. Multi-touch sequences (8-12 touches) achieve 80%+ of all responses. Build the sequence, then work it.

## When to Use
- Launching a new outbound campaign to a target segment
- Building a sequence for a new persona or vertical
- When response rates on existing sequences are below 3%
- When reps are doing ad-hoc outreach with no structure

## Sequence Design Principles

### Multi-Channel
Combine email, phone, and LinkedIn for 2-3× higher response rates than email alone. The right channel depends on the persona:
- Senior executives → LinkedIn + warm email
- Operations roles → Direct email + phone
- Technical buyers → Email + LinkedIn

### Value First, Ask Later
Don't lead with "I'd like to schedule a call." Lead with a relevant insight, problem framing, or value statement. The call is a byproduct of value delivered.

### Personalization at Scale
- Touch 1-2: Highly personalized (trigger event, specific company insight)
- Touch 3-5: Semi-personalized (industry pain, peer story)
- Touch 6+: Value-added (content, insight, low-friction ask)

### Breakup Touch
The last touch in a sequence should explicitly acknowledge it's the last one. Breakup messages have unusually high response rates ("Last time I'll bother you...").

## Standard Sequence Template (10-Touch, 30-Day)

| Touch | Day | Channel | Type | Theme |
|-------|-----|---------|------|-------|
| 1 | Day 1 | Email | Personalized | Trigger event + problem frame |
| 2 | Day 3 | LinkedIn | Connection request | No message yet — just connect |
| 3 | Day 5 | Phone | Cold call | Voicemail if no answer |
| 4 | Day 8 | Email | Follow-up | Add value — insight or content |
| 5 | Day 10 | LinkedIn | Message | Reference email sequence |
| 6 | Day 14 | Phone | Check-in call | Reference prior emails |
| 7 | Day 18 | Email | Peer story | "A company like yours..." |
| 8 | Day 22 | LinkedIn | Relevant content | Share a useful article or insight |
| 9 | Day 26 | Email | Case study or ROI | Direct value |
| 10 | Day 30 | Email | Breakup | "Last one — want to close the loop" |

## Email Templates by Touch Type

### Touch 1 — Trigger-Led (Personalized)
```
Subject: [Trigger event] → [Problem you can solve]

<First Name>,

Saw that [Company] recently [trigger event — acquisition, funding, new exec, compliance requirement].

Companies in that moment often struggle with [specific problem we solve]. [1 sentence on how you've helped similar companies].

Worth a 15-minute conversation to see if there's a fit?

[Name]
```

### Touch 4 — Value-Add
```
Subject: [Relevant insight for their industry/role]

<First Name>,

[Brief, useful industry insight relevant to their role — not a sales pitch].

Thought it was relevant given what [Company] is working on.

Still open to that conversation if the timing is ever right.

[Name]
```

### Touch 10 — Breakup
```
Subject: Closing the loop on [Company]

<First Name>,

I've reached out a few times — I don't want to keep bothering you if it's not relevant.

If [problem statement] isn't a priority right now, totally understood. I'll leave you alone.

But if things change and [core value prop], we'd be glad to help. Feel free to reach out anytime.

[Name]
```

## Output Format

```markdown
# Outbound Sequence — <Segment/Persona>
**Entity:** <entity> | **Target:** <segment description> | **Goal:** <meeting | demo | call>

## Sequence Overview
**Length:** <N> touches over <N> days
**Channels:** Email / Phone / LinkedIn
**Personalization level:** High (touches 1-3) / Standard (4-7) / Broadcast (8-10)

## Full Sequence

### Touch 1 — Day 1 — Email (Trigger-Led)
**Subject:** <subject line>
**Body:** <full email template>

### Touch 2 — Day 3 — LinkedIn
**Action:** <connection request / message>

[Continue for all touches]

## Performance Targets
- Open rate: ≥ 40% (subject line quality indicator)
- Reply rate: ≥ 4% (overall sequence target)
- Meeting booked rate: ≥ 2% of contacts entered

## A/B Test Plan
Test 1: <Subject line variation>
Test 2: <CTA variation>
```

## Output Contract
- Full message templates always written — not just instructions
- Breakup touch always included as final touch
- Performance targets always defined — no sequence without measurable success criteria
- HITL required before any outreach is sent on behalf of Matt Mathison or Dr. Lewis

## System Dependencies
- **Reads from:** ICP from `icp-builder`, persona details, product/service context (provided)
- **Writes to:** Sequence into CRM or sequencing tool (with HITL)
- **HITL Required:** Sales lead reviews before launching; executive-level outreach requires Dr. Lewis approval

## Test Cases
1. **Golden path:** Allevio targeting healthcare operations directors → 10-touch, 30-day sequence with HIPAA compliance trigger hook, phone + email + LinkedIn
2. **Edge case:** Sequence for a segment where the contact has already been cold-reached → starts at Touch 5 (warm follow-up), adjusted opening that references prior outreach
3. **Adversarial:** Request to send sequence from a fake or misleading email identity → refuses, requires honest sender identity and CAN-SPAM compliance

## Audit Log
Sequence templates retained by segment and version. Response rates logged for model improvement.

## Deprecation
Retire when sales engagement platform (Outreach, SalesLoft, GoHighLevel sequences) generates AI-personalized sequences with built-in performance analytics.
