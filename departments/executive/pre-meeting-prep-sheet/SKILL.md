---
name: pre-meeting-prep-sheet
description: "Generate a structured pre-meeting intelligence brief for an upcoming meeting. Use when the user says 'prep me for this meeting', 'meeting prep', 'pre-meeting brief', 'what do I need to know before talking to X', 'background on this person', 'prepare for the call', or 'what should Matt know before this meeting'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<meeting-details> [--attendees <names>] [--objective <goal>]"
---

# Pre-Meeting Prep Sheet

Generate a structured intelligence brief so Matt Mathison (or another executive) walks into every meeting prepared — context on the counterpart, the objective, the risks, and the ask.

## When to Use
- Before any external meeting (pipeline, LP, client, partner)
- Board meeting prep for Matt
- Investor or banker conversations
- New relationship introductions
- Following up on a previous meeting (review prior context)

## Prep Sheet Sections

### 1. Meeting Snapshot
- Who: participants and their roles
- What: meeting objective (1 sentence)
- When/Where: logistics
- History: prior contact history (if any)

### 2. Counterpart Intelligence
For each external participant:
- Role, company, background
- Known priorities, concerns, decision criteria
- What they care about (from prior conversations or public signals)
- Relationship temperature heading in

### 3. Our Objective
- Primary objective (what success looks like)
- Secondary objective (nice to have)
- What we're NOT trying to achieve in this meeting (scope limiter)

### 4. Agenda (Suggested)
- Opening / rapport (2-3 min)
- Key topics (time-boxed)
- Closing / next step (always end with a concrete next step)

### 5. Key Messages
- What do we most want them to understand by the end?
- What MBL differentiators are relevant to this conversation?

### 6. Risk / Watch Items
- Topics to navigate carefully
- Known sensitivities (financial, relationship, deal status)
- Questions we should be ready to answer

### 7. The Ask (if applicable)
What is the specific ask from this meeting? (Decision, commitment, introduction, feedback)

### 8. Walk-Away Criteria
If X happens, this meeting was a waste. (Helps manage time and next steps.)

## Output Format

```markdown
# Pre-Meeting Prep — <Meeting Title>
**Date:** <date/time> | **Location/Platform:** <location>
**Prepared for:** <name> | **Prepared by:** Dr. John Lewis

## Meeting Snapshot
- **Objective:** <1 sentence>
- **Key decision expected:** Yes / No

## Who's in the Room
| Name | Role | Company | Notes |
|------|------|---------|-------|
| <name> | Managing Director | <firm> | Led prior deal, strong HIVE relationships |

## Their World
- Current priorities: <what they care about>
- Recent news / context: <any relevant developments>
- Known concerns about MBL / this deal: <known sensitivities>

## Our Objective
**Primary:** <goal>
**Secondary:** <goal>
**Out of scope:** <not this meeting>

## Suggested Agenda
[time-boxed topics]

## Key Messages (What they should believe when they leave)
1. <Message 1>
2. <Message 2>

## Watch Items
- <Sensitivity or risk to navigate>

## The Ask
<Explicit request — decision, intro, commitment, data>

## Walk-Away Criteria
If <X>, exit gracefully and regroup.
```

## Output Contract
- Always includes an explicit ask — never a vague "see how it goes" objective
- Walk-away criteria required for deal and LP meetings
- HITL required before sharing the prep sheet (contains relationship-sensitive intelligence)

## System Dependencies
- **Reads from:** Prior meeting summaries (from `meeting-intelligence-summarizer`), CRM history (GoHighLevel), deal tracker
- **Writes to:** Nothing
- **HITL Required:** Dr. Lewis reviews for accuracy before distributing to Matt

## Test Cases
1. **Golden path:** Known LP relationship with prior meeting history → full prep sheet with their known concerns and relationship temperature
2. **Edge case:** First-time meeting with no prior history → flags "no prior contact data" and populates from public sources (company background, role context)
3. **Adversarial:** Meeting with a counterpart who has expressed concerns about a prior deal → explicitly surfaces that sensitivity in Section 6, recommends a specific message to address it

## Audit Log
Prep sheets retained with meeting date and participant names. Prior prep sheets retrieved for follow-up meeting context.

## Deprecation
Retire when Meeting Intelligence Phase 3 (pre-meeting prep automation via Krista.ai) generates these automatically from CRM + calendar data.
