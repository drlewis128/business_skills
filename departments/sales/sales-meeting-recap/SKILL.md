---
name: sales-meeting-recap
description: "Generate a sales meeting recap with next steps and CRM notes. Use when the user says 'recap this meeting', 'sales call notes', 'follow-up from the call', 'write up the meeting', 'CRM notes', 'what happened in the call', or 'meeting summary for the deal'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--account <name>] [--stage <discovery|demo|proposal|negotiation>] [--format <internal|external>]"
---

# Sales Meeting Recap

Generate a structured sales meeting recap with key takeaways, deal intelligence, and follow-up actions. Reps who document meetings consistently close more deals — the recap is their intelligence asset, their CRM entry, and their follow-up email source.

## When to Use
- After any sales call or meeting (discovery, demo, proposal, negotiation)
- Before a handoff to another rep or to Customer Success
- When preparing for the next call with this prospect
- When updating the deal in the CRM after a meeting

## Output Format (Two Versions)

### Internal Recap (CRM Note / Team Sharing)
Full deal intelligence — pain points, objections, stakeholder dynamics, competitive mentions.

### External Follow-Up (Email to Prospect)
Cleaned summary of what was discussed, what was agreed, and next steps — no internal deal notes.

## Information to Capture

### Meeting Context
- Account name, date, attendees (role + title), meeting type

### Pain and Needs (Discovery Calls)
- What problem did they articulate?
- How urgent is it? (Timeline, cost of inaction)
- Who is affected by the problem?
- What have they tried?

### Qualification Status
- Budget: confirmed / not discussed / no budget
- Decision process: who approves, what timeline
- Champion: identified / not yet identified
- Competitive situation: no competition / evaluating X and Y

### Key Moments
- What resonated most with the prospect?
- Any objections raised?
- Any concerns or hesitations (even unspoken)?
- Anything surprising or unexpected?

### Next Steps
- What was explicitly agreed to? (Both sides)
- Who owns what?
- What date / time?
- What happens if they don't follow through?

## Output Format

```markdown
# Sales Meeting Recap — <Account>
**Date:** <date> | **Meeting type:** Discovery / Demo / Proposal / Negotiation / QBR
**Attendees — Prospect:** <name (title)>, <name (title)>
**Attendees — Our team:** <name>, <name>

---

## Internal Notes (CRM — Do Not Send to Prospect)

### Deal Intelligence Update

**Pain confirmed:** <Summary in their words>
**Urgency:** High / Medium / Low — <reason>
**Budget status:** Confirmed / Not discussed / No current budget / Creating budget
**Decision process:** <Who approves, expected timeline>
**Champion status:** <Champion identified: [name] / Champion not yet identified>
**Competitive situation:** No competitors / Evaluating [Competitor A], [Competitor B]

### What Resonated
- <What they responded positively to>
- <Demo moment, case study, or capability that created energy>

### Objections and Concerns
- **[Objection]** — How we handled it: <response> | Status: Resolved / Open
- **[Concern]** — Not yet addressed — include in follow-up

### Stage Assessment
**Current stage:** <Stage N>
**Recommended stage:** <Stay / Advance to Stage N+1>
**Reason:** <What exit criteria were met or remain open>

### Rep Notes
<Free-form notes — anything useful for next call prep>

---

## External Follow-Up (Email to Prospect)

Subject: Next steps from our call — <brief topic>

Hi <name>,

Thanks for the time today. Here's a quick summary of what we discussed and our agreed next steps.

**What we covered:**
- [Key point 1 — their words, not sales language]
- [Key point 2]
- [Key point 3]

**What we're doing next:**
- **<Our team action>** — Owner: <name> | By: <date>
- **<Prospect action (if any)>** — Owner: <their name> | By: <date>

**Our next meeting:** <date, time, format — include calendar link if applicable>

Let me know if I missed anything or if questions come up before then.

<signature>

---
```

## Output Contract
- Internal notes always separated from external follow-up — never mix competitive notes or deal strategy into prospect-facing communication
- Next steps always include owner and date — "we'll follow up" is not a next step
- Stage recommendation always made — rep should never leave a call without a clear view of where the deal stands
- HITL required before sending external follow-up for deals > $50K

## System Dependencies
- **Reads from:** Meeting notes, call transcript, or rep verbal brief (provided)
- **Writes to:** Nothing without HITL approval (internal notes drafted for CRM entry by rep)
- **HITL Required:** Dr. Lewis reviews external follow-up for executive-level deals; sales manager reviews for any deal with non-standard commitments

## Test Cases
1. **Golden path:** Post-discovery call with mid-market prospect → pain confirmed ($400K problem), no budget confirmed yet, champion identified (IT Director), competitive mention (one incumbent tool), two next steps with dates
2. **Edge case:** Call with no clear outcome (prospect was non-committal) → still generates recap, flags low engagement as a deal risk, recommends specific action to force a decision in next 5 days
3. **Adversarial:** Request to omit a competitor's mention from the CRM note because "it looks bad" → refuses, records competitive context accurately, explains that hiding deal intelligence leads to poor forecasting

## Audit Log
Meeting recaps retained by account and date. Deal intelligence updates tracked in CRM for deal history.

## Deprecation
Retire when meeting intelligence platform (Gong, Chorus, Fireflies) automatically generates structured meeting recaps from call recordings with CRM push.
