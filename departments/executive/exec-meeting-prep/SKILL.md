---
name: exec-meeting-prep
description: "Prepare pre-meeting briefing sheets for Matt Mathison and executive meetings. Use when the user says 'meeting prep', 'meeting preparation', 'prepare for the meeting', 'pre-meeting brief', 'meeting briefing', 'prep sheet', 'prep for the call', 'call prep', 'prepare for the call', 'prepare Matt for this meeting', 'pre-call briefing', 'executive meeting prep', 'build the prep sheet', 'meeting research', 'who is this person', 'what should we know before the meeting', 'what should Matt know', 'background on the meeting', 'background research', 'meeting agenda', 'prepare the agenda', 'talking points for the meeting', 'what are we trying to accomplish', 'meeting objective', 'prep Matt', or 'brief me before the meeting'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--meeting <description>] [--date <YYYY-MM-DD>] [--attendees <names>] [--objective <goal>] [--type <LP|board|CEO|partner|vendor|media|strategic>]"
---

# Exec Meeting Prep

Prepare pre-meeting briefing sheets for Matt Mathison and executive meetings — giving Matt the context, objectives, and talking points he needs to walk into any meeting with confidence and clarity. Pre-meeting prep is Meeting Intelligence Phase 3: the forward-looking complement to the weekly meeting summary (Phase 2). A Matt Mathison who walks into a meeting with a 1-page brief knows who he's talking to, what the meeting is for, what he's trying to accomplish, and what the 3 key points he needs to make are. This is how MBL competes on execution speed.

## When to Use
- Any meeting where Matt Mathison needs preparation (LP calls; board meetings; CEO 1-on-1s; M&A conversations; partner meetings; vendor evaluations)
- Matt requests a background briefing on a person or company he's meeting
- A recurring meeting needs a fresh agenda (quarterly entity CEO sync; monthly LP call)
- An unexpected meeting is added to Matt's calendar with insufficient context

## Meeting Prep Framework

```
PRE-MEETING BRIEF STRUCTURE (1 page; 5-minute read):

  HEADER:
    Meeting: [Title and date]
    With: [Attendee names and titles]
    Duration: [X minutes]
    Format: [In-person / Zoom / Phone]
    Our objective: [What MBL is trying to accomplish in this meeting — one sentence]
    
  SECTION 1 — WHO IS IN THE ROOM (60-90 seconds to read):
    For each external attendee:
      □ Name, title, company
      □ How we know them / relationship history (last interaction; key context)
      □ What they care about most (their objective for this meeting)
      □ Any personal context that helps Matt build rapport (mutual connections; past
        conversations; what they've mentioned caring about)
    For entity CEOs: most recent 1-on-1 summary; what's on their mind; any open items
    For LPs: relationship tier; last call summary; any open commitments; current LP sentiment
    
  SECTION 2 — CONTEXT (30-45 seconds to read):
    □ Why is this meeting happening now? (What triggered it?)
    □ What has changed since we last spoke with this person / entity?
    □ Any relevant news or market context (if applicable)
    □ Any history with this person/company that Matt should keep in mind
    
  SECTION 3 — OUR OBJECTIVES (30 seconds to read):
    3 objectives maximum. Prioritized.
    Objective 1: [The most important thing Matt needs to accomplish or learn]
    Objective 2: [Second priority]
    Objective 3: [If achieved, would be a bonus]
    
  SECTION 4 — TALKING POINTS (90 seconds to read):
    3-4 key points Matt should make in this meeting.
    Each point: one sentence. No bullet walls.
    Sequenced: opening context → key business point → forward look or ask
    
  SECTION 5 — WATCH OUTS (30 seconds to read):
    1-3 things Matt should be careful about in this specific meeting:
    □ Topics to avoid or handle with care
    □ Questions this person is likely to ask (with prepared responses)
    □ Any tension or complexity in the relationship that affects tone
    
  SECTION 6 — DESIRED OUTCOMES:
    □ What does success look like at the end of this meeting?
    □ What specific action, commitment, or decision are we hoping to leave with?
    □ What are acceptable "next steps" if the primary ask isn't achieved?

MEETING TYPE CUSTOMIZATION:

  LP / Investor meetings:
    Add: Current LP tier, last capital call, last distribution, LP sentiment score
    Watch out: Any recent portfolio performance they might ask about
    Objective 1 is always: maintain / strengthen the relationship
    
  Board meetings:
    See exec-board-communication — prep sheet focuses on decisions to be made
    Add: Which board members are likely to challenge which sections
    Watch out: Any governance items that need to be handled carefully
    
  M&A / Deal meetings:
    Add: Company overview (from exec-deal-thesis-builder); thesis fit score; deal status
    Objectives: advance the deal, gather specific information, or assess THRIVE alignment
    Watch out: Don't disclose MBL interest prematurely; price anchor discipline
    
  Entity CEO 1-on-1s:
    Add: Since last 1-on-1: what they committed to; what changed; their mood/context
    Objective 1: Clear the air on any open items; understand what they need from MBL
    Watch out: Any tension between the entity CEO and portfolio priorities
    
  Vendor / Partner meetings:
    Add: Vendor background; current state of relationship; open issues
    Objective: Get a specific answer or commitment on the open issue
    Watch out: Vendor may use the meeting to expand scope or sell additional services

KRISTA INTEGRATION (Meeting Intelligence Phase 3):
  When Krista meeting transcripts are available from prior meetings:
    □ Pull prior meeting summary → Context section (what was discussed last time)
    □ Pull action items from prior meeting → check completion for this meeting's agenda
    □ Pull any relevant quotes or commitments from the transcript → Talking Points context
  When Krista transcripts are NOT available:
    □ Dr. Lewis uses exec-action-tracker notes from prior meetings
    □ Relationship history compiled from GoHighLevel CRM (for LP and partner meetings)
```

## Output Format

```markdown
# Meeting Prep Brief — [Meeting Title]
**Date:** [Date] | **Time:** [Time] | **Duration:** [X min]
**With:** [Attendees and titles] | **Format:** [Zoom/In-person/Phone]
**Our objective:** [One sentence — what we're trying to accomplish]

---

## Who's in the Room

**[Name], [Title], [Company]**
- Relationship: [How we know them; last interaction]
- What they want from this meeting: [Their objective]
- Rapport context: [What matters to them personally/professionally]

---

## Context

- Why now: [What triggered this meeting]
- Since we last spoke: [What's changed]
- Relevant background: [Any market or company context]

---

## Our Objectives

1. **[Primary objective]** — [One sentence]
2. **[Secondary objective]** — [One sentence]
3. **[Bonus objective]** — [One sentence]

---

## Talking Points

1. [Opening — set the context or acknowledge the relationship]
2. [Key business point — the main thing to communicate or ask]
3. [Forward look — what we want to happen next]
4. [Close — specific ask or desired next step]

---

## Watch Outs

- [Topic to avoid or handle carefully]
- [Question they're likely to ask — with prepared response]
- [Tone or relationship consideration]

---

## Success Looks Like

[One sentence: what we want to leave with]
[Acceptable fallback: what's good enough if the primary ask isn't achieved]
```

## Output Contract
- 1 page / 5-minute read maximum — if Matt needs more than 5 minutes to read the prep sheet, it's too long; the prep sheet is a navigation instrument, not a research document; if Matt wants deep background on a topic, Dr. Lewis prepares a separate briefing memo — the prep sheet stays at the decision-relevant summary level
- Prep sheets are delivered minimum 2 hours before the meeting — a prep sheet that arrives 10 minutes before a meeting is not prep; it is noise; Dr. Lewis delivers all prep sheets at least 2 hours before, and for significant meetings (LP calls; M&A conversations; board meetings) the night before; for Monday meetings, prep is delivered Friday afternoon
- Every prep sheet has one primary objective — if Matt leaves the meeting having accomplished Objective 1, the meeting was a success; if Objective 1 isn't defined clearly, Matt may leave the meeting without accomplishing the most important thing; Dr. Lewis ensures Objective 1 is always specific ("get the LP to commit to the next call date" vs. "talk to the LP")
- HITL required: Dr. Lewis prepares all prep sheets for Matt Mathison meetings; entity CEOs receive prep sheets for their board meetings (Dr. Lewis prepares); Matt reviews prep sheets for LP and M&A meetings before the meeting; Krista transcript use for prep context is logged; any prep sheet that includes sensitive competitive or deal information is shared only with Matt and not with other MBL staff

## System Dependencies
- **Reads from:** Krista meeting transcripts (prior meeting summaries — Meeting Intelligence Phase 3); exec-action-tracker (open items and commitments from prior meetings); GoHighLevel CRM (LP and partner relationship history; last contact dates; sentiment log); exec-investor-relations (LP relationship tier, last call, open commitments); exec-portfolio-review (entity performance data for entity CEO meetings); exec-kpi-dashboard (current portfolio metrics for any meeting that requires performance context); exec-deal-thesis-builder (company overview for M&A meetings)
- **Writes to:** Prep sheets (SharePoint/ExecutiveSupport/MeetingPrep/[YYYY]/[Date]_[MeetingTitle]_Prep.pdf); exec-action-tracker (meeting objectives and post-meeting follow-up items); GoHighLevel CRM (post-meeting update: outcome; commitments made; next contact date); exec-ceo-briefing (calendar preview section references prep sheets)
- **HITL Required:** Dr. Lewis prepares all Matt Mathison prep sheets; delivered minimum 2 hours before (night before for LP/M&A/board); Matt reviews LP and M&A prep sheets before the meeting; Krista transcript use logged; sensitive deal/competitive information restricted to Matt only

## Test Cases
1. **Golden path:** Thursday LP call at 2 PM; Dr. Lewis delivers prep sheet Wednesday 5 PM; Who's in the room: "Robert Vance, Managing Director, Cornerstone Capital. Tier 1 LP. Last call: March 15 — discussed Allevio claim ratio trend and Column6 VCR recovery. Open commitment: Matt said he'd share the updated Allevio clinical expansion plan by May 1. (STATUS: DELIVERED ✅)" Context: "Robert's firm is evaluating two new PE relationships — he mentioned in March that MBL's transparency is a differentiator." Objective 1: "Confirm Robert's continued confidence in MBL following Q1 performance." Talking Points: "Q1 Allevio GRR came in at 93% — above target. Column6 VCR back to 92.3% after March dip. Allevio clinical expansion is funded and launching in Q3." Watch out: "He may ask about the HIVE landowner churn — be specific about the competing operator situation and the cs-landowner-communicator protocol update." Matt: "Perfect — I had forgotten about the May 1 commitment. Good thing you checked." Call goes well; Robert confirms continued LP participation.
2. **Edge case:** Matt has a last-minute meeting added at 9 AM for a 10 AM call → Dr. Lewis: "I have 45 minutes. I'll get you a short version — who they are, why now, and 2 objectives. No deep research — you'll fill in the rest from your prior relationship." Matt: "That's fine." 5-minute prep sheet delivered at 9:40 AM. Meeting objectives clear; Matt goes in with confidence; commits to a follow-up call for deep context.
3. **Adversarial:** Matt has a meeting with a potential M&A target and asks for deep financial analysis in the prep sheet → Dr. Lewis: "The prep sheet is a navigation tool, not a financial analysis. For M&A financial analysis, use exec-deal-thesis-builder — that's a separate deliverable. What I'll put in the prep sheet: who's in the room, their interests, what we want to learn in this meeting, the 3 questions that would tell us whether this is a THRIVE-aligned opportunity, and what we should NOT disclose prematurely (our price range). That's what you need to walk in well. The financial model is a separate preparation track." Matt: "You're right — get me both: the prep sheet and a deal thesis stub."

## Audit Log
All prep sheets retained by meeting date and attendees. Matt Mathison review records retained. Krista transcript integration records retained (which transcripts contributed to which prep). Post-meeting outcome notes retained (did the prep serve the meeting well? what was the outcome?). Commitment records from the meeting retained (what did Matt commit to?).

## Deprecation
Retire when MBL has a Chief of Staff who manages executive meeting preparation — with Dr. Lewis retaining the technology, AI strategy, and Krista integration inputs for relevant meetings.
