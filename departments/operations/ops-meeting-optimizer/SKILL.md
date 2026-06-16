---
name: ops-meeting-optimizer
description: "Optimize meeting cadence and efficiency. Use when the user says 'too many meetings', 'meeting audit', 'cut meetings', 'meeting efficiency', 'meeting optimization', 'reduce meeting load', 'improve meetings', 'meeting cadence', 'meeting schedule review', 'what meetings should we have', 'meeting overload', 'meeting culture', 'are our meetings worth it', 'meeting structure', or 'meeting ROI'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scope <individual|team|company>] [--action <audit|redesign|cancel>]"
---

# Ops Meeting Optimizer

Optimize meeting cadence and efficiency at MBL portfolio companies — auditing, redesigning, and eliminating meetings to recover productive time without losing alignment. Meetings are the single largest source of preventable productivity loss in most companies. A 10-person company where every employee attends 3 hours of meetings per day is burning $X in labor cost per week with no automatic output. The standard: every meeting must have a clear purpose, the right attendees, and a defined outcome — and it must be worth the combined hourly cost of everyone in the room.

## When to Use
- A team or individual reports feeling overwhelmed by meetings
- A company is scaling and meeting overhead is growing faster than output
- Matt Mathison asks "what is the meeting culture like at [Company]?"
- A new management team is being installed and the meeting structure needs to be reset
- An executive's calendar is 70%+ blocked and they can't do strategic work
- Quarterly operations review identifies meetings as a productivity drain

## Meeting Optimization Framework

```
Meeting types — each should be evaluated separately:
  1. Information sharing: Updates, status, announcements
     → Often can be replaced by a written update (email, Slack, report)
     → If kept: 15-30 min max; asynchronous first
  
  2. Decision making: A specific decision needs to be made by a group
     → Keep these; they are the highest-value meetings
     → Prerequisite: decision pre-work done before the meeting; meeting = decision only
  
  3. Problem solving: Working through an issue or challenge together
     → Keep these; they require real-time discussion
     → Keep tight (30-45 min); clear problem statement required
  
  4. Relationship building: 1:1s, skip-levels, team culture
     → Keep these; they are the management infrastructure
     → Frequency calibrated to relationship need
  
  5. Coordination: Aligning on tasks, dependencies, sequencing
     → Many of these can be replaced by a tool (Monday.com, shared tracker)
     → If kept: short (15-30 min), standing format

Meeting cost formula:
  Cost per meeting = sum of all attendees' hourly rates × meeting duration
  Annual cost = cost per meeting × frequency × 52 weeks
  
  Example: 10-person weekly team meeting, 1 hour, avg $50/hr attendee rate
  Weekly cost: $500 | Annual cost: $26,000 per year

Right-size principles:
  7+2 rule: The ideal decision group is 5-7 people; >9 people = committee, not decision
  Agenda required: No agenda = no meeting (reschedule until there's an agenda)
  Standing meetings exist to serve the organization, not the calendar — cancel any that have outlived their purpose
  Default meeting length: 25 or 50 minutes (not 30 or 60 — forces sharper focus)

MBL portfolio meeting minimum standards:
  Weekly leadership: 45 min max; BLUF updates; decisions only; Matt Mathison in < 30 min slot
  Monthly all-hands: 45 min; company update + Q&A; written pre-read sent 24 hrs in advance
  1:1s: 30 min weekly for each direct report; the manager's most important recurring meeting
  Project standups: 15 min daily for active sprints; strictly time-boxed
```

## Output Format

```markdown
# Meeting Optimization Report — <Company Name or Team>
**Scope:** [Individual / Team / Company] | **Date:** [Date]
**Prepared by:** Dr. John Lewis | **For:** [CEO / Matt Mathison]

---

## Current Meeting Inventory

| Meeting | Frequency | Duration | Attendees | Purpose type | Weekly hours consumed |
|---------|-----------|---------|---------|------------|---------------------|
| [Weekly team standup] | Weekly | 60 min | 8 | [Coordination] | 8 hrs (8 people × 1 hr) |
| [Monthly all-hands] | Monthly | 90 min | 42 | [Information] | 63 hrs/month = 15.75 hrs/week equiv |
| [1:1 with CEO — all directs] | Weekly | 30 min | 2×6 | [Relationship] | 6 hrs |
| [Project review] | Weekly | 60 min | 12 | [Coordination] | 12 hrs |
| **Total weekly meeting load** | | | | | **[N hrs/week]** |

**Total annual meeting cost:**
[N hrs/week × avg attendee rate $X/hr × 50 weeks] = **$[X]/year**

**As % of total payroll:** [X%]

---

## Meeting Audit

| Meeting | Keep / Redesign / Cancel | Rationale | Proposed change |
|---------|------------------------|---------|----------------|
| Weekly team standup | Redesign | 60 min for coordination info that could be async | Reduce to 15 min; pre-work required |
| Monthly all-hands | Keep | Information + culture value; right audience | Add written pre-read; cut to 45 min |
| 1:1s (all directs) | Keep | Core management infrastructure | — |
| Project review | Redesign | 12 people; only 4 are decision-makers | Reduce to 4 decision-makers; others get written update |

**Meetings proposed to cancel:** [N] | **Meetings proposed to redesign:** [N]

---

## Savings from Optimization

| Change | Hours recovered/week | Annual labor cost recovered |
|--------|---------------------|---------------------------|
| Standup → 15 min | [N hrs/week] | $[X]/year |
| Project review → 4 attendees | [N hrs/week] | $[X]/year |
| [Cancel meeting X] | [N hrs/week] | $[X]/year |
| **Total** | **[N hrs/week]** | **$[X]/year** |

---

## Proposed Meeting Structure (future state)

### Keep (essential meetings)
| Meeting | Frequency | Duration | Attendees | Format |
|---------|-----------|---------|---------|--------|
| [1:1 — manager/direct] | Weekly | 30 min | 2 | Standing agenda |
| [Monthly all-hands] | Monthly | 45 min | All | Pre-read + Q&A |
| [Decision meetings] | As needed | 25 min | ≤7 | Pre-work required |

### Replace with Async
| Replaced meeting | Async replacement | Format |
|----------------|-----------------|--------|
| [Weekly status update] | Monday.com board update | Each team member updates by Monday 9 AM |
| [Project review (informational portion)] | Written weekly report | 150 words; distributed Monday |

---

## Meeting Standards (implement company-wide)

1. **No agenda, no meeting** — every meeting invitation includes an agenda; if no agenda is provided 24 hours before, the meeting is cancelled and rescheduled
2. **Decisions before attendance** — attendees are invited only if they are: (a) making the decision, (b) providing information essential to the decision, or (c) implementing the decision
3. **Default lengths:** 25 min or 50 min — never 30 or 60
4. **Meeting owner** — every recurring meeting has an owner; if the owner can't attend, they either cancel the meeting or designate a facilitator; meetings without an owner get cancelled
5. **Recurring meeting review** — all standing meetings are reviewed quarterly; any meeting that can't answer "what decision did we make or what alignment did we reach in the last 4 sessions?" is cancelled

---

## Matt Mathison Brief (3 sentences)

[Company] is spending approximately $[X]/year in labor on meetings — [X%] of payroll. The primary issue is [specific: "60-minute standups with 8 people" or "12-person project reviews where only 4 are decision-makers"]. Proposed changes recover [N hrs/week] for productive work at zero cost.
```

## Output Contract
- Meeting cost is always calculated — a meeting without a cost figure is an abstract discussion; once a CEO sees that the weekly all-hands with 42 employees costs $63,000/year in labor, the framing changes from "should we keep this meeting?" to "is this meeting worth $63,000?"; the cost calculation is required in every meeting audit
- "Cancel" recommendations are explicit and justified — saying "too many meetings" without naming which ones to cancel is not useful; every meeting proposed for cancellation is named, with a specific rationale; the output takes responsibility for the recommendation rather than providing a framework and letting the reader decide
- Async-first principle — before recommending redesigning a meeting, the first question is "can this be replaced by a written update or a shared tracker?"; a 60-minute weekly status meeting with no decisions is almost always replaceable by a 150-word written update on Monday; the recommendation to keep a meeting is justified, not assumed
- Meeting standards are documented — the meeting optimization report always includes a short list of standards that become the company's meeting policy; without standards, meetings creep back; the standards are simple enough to be remembered and specific enough to be enforced
- HITL required: Dr. Lewis conducts meeting audits; company CEO reviews recommended cancellations before any meeting is removed from the calendar; Matt Mathison notified when meeting load is consuming >25% of company payroll; meeting standard adoption tracked at next quarterly ops review

## System Dependencies
- **Reads from:** Calendar data (hours in meetings per person/role), attendee counts, meeting purpose and agenda review
- **Writes to:** Meeting optimization report (SharePoint/Ops/<Company>/Operations/); meeting standards document; Matt Mathison brief
- **HITL Required:** Dr. Lewis conducts; CEO reviews cancellations; Matt Mathison receives brief when meeting load >25% of payroll; quarterly ops review includes meeting culture check

## Test Cases
1. **Golden path:** Allevio — CEO reports "everyone says they have no time to do real work" → Meeting audit: weekly leadership (45 min, 6 people = 4.5 hrs/week), weekly billing standup (60 min, 8 people = 8 hrs), weekly ops standup (60 min, 6 people = 6 hrs), bi-weekly all-hands (60 min, 42 people = 42 hrs), weekly 1:1s (6 direct reports × 30 min = 3 hrs CEO time), monthly department reviews (5 × 60 min × avg 5 attendees = 25 hrs/month); Annual meeting cost: approximately $187,000; top waste: 60-minute standups with full teams that include status sharing (replaceable with async Monday.com updates); proposed changes: reduce standups to 15 min (remove status updates → async); reduce all-hands to 45 min with 24-hour written pre-read; net recovery: 11 hrs/week × $52/hr average = $572/week = $29,700/year; CEO reviews and approves cancellations; meeting standards published company-wide
2. **Edge case:** Matt Mathison is spending 4+ hours per week in portfolio company operational meetings → His time rate is the highest in the portfolio; the ROI of his attendance at these meetings should be explicitly questioned; meetings where Matt Mathison is a passive observer (not deciding) should be replaced with a 3-sentence brief; meetings where he is deciding should be kept but pre-work is required so the meeting is a 15-minute decision, not a 60-minute discussion; the analysis of Matt Mathison's calendar is a high-priority optimization because his opportunity cost is the highest in the system
3. **Adversarial:** "We need these meetings to stay aligned — if we cancel them, things will fall apart" → Address the underlying fear, not the surface position: "What you're describing is a coordination need. The question is whether a meeting is the best way to meet that need. Meetings are synchronous, expensive, and interruptive. What's in your standup that couldn't be captured in a 2-minute Monday.com update? If the answer is 'we raise issues and solve them together,' that's a problem-solving meeting, not a status meeting — and it's worth keeping. But if it's mostly 'I did this, they did that,' that's async territory. Let's look at the last 4 agendas and categorize every item."

## Audit Log
All meeting audits retained by company and date. Cost calculations documented. Cancelled meetings logged with rationale. Meeting standards versions retained. Quarterly meeting culture check outcomes retained.

## Deprecation
Retire when portfolio companies have established meeting cultures with documented standards, quarterly self-audits, and operations managers who own meeting hygiene without Dr. Lewis conducting each audit.
