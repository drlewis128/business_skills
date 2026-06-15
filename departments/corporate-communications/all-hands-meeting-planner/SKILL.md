---
name: all-hands-meeting-planner
description: "Plan and facilitate a company all-hands or town hall meeting. Use when the user says 'all-hands meeting', 'town hall', 'company meeting', 'all-staff meeting', 'company update meeting', 'plan an all-hands', 'company-wide meeting', 'employee town hall', 'run an all-hands', or 'quarterly company meeting'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--frequency <monthly|quarterly>] [--format <in-person|virtual|hybrid>]"
---

# All-Hands Meeting Planner

Plan and facilitate a company all-hands or town hall meeting — the most powerful internal communications tool a leadership team has. A great all-hands meeting aligns the team, builds trust, and converts strategy into visible company momentum. A bad one wastes an hour, creates confusion, and makes leadership look disconnected from reality.

## When to Use
- Quarterly all-hands for a portfolio company
- A major announcement needs to be communicated company-wide
- Following a significant event (acquisition, restructuring, major win or loss)
- Leadership feels the team is losing context on company direction
- Portfolio company CEO asks "can you help me prepare for our all-hands?"

## Meeting Design Principles

```
1. Lead with company results — not department updates
   The all-hands is the CEO's meeting, not a series of department slide shows.
   Show where the company is, where it's going, and why.

2. Be honest about challenges
   Teams respect honesty. If things are hard, say so and say what you're doing.
   All-hands meetings that only deliver good news feel like propaganda.

3. Make it two-way
   Reserve at least 20% of the time for real Q&A. Not curated questions —
   real questions. The CEO's willingness to take hard questions builds trust.

4. Close with energy
   Leave the team motivated, not relieved it's over. End on a win, a 
   commitment, or a clear call to action.

5. Respect time
   Start and end on time. Every minute over schedule signals the meeting 
   wasn't planned. 45-60 minutes is the max for engagement.
```

## Output Format

```markdown
# All-Hands Meeting Plan — <Company Name>
**Date:** <date> | **Format:** In-person / Virtual / Hybrid
**Duration:** 45-60 minutes | **Facilitator:** CEO (supported by Dr. Lewis)
**Entity:** <Company>

---

## Agenda

| Segment | Content | Time | Owner |
|---------|---------|------|-------|
| Open | Welcome + context-setting | 3 min | CEO |
| Company scorecard | Results vs. goals (revenue, key metrics) | 10 min | CEO / CFO |
| Wins this period | 2-3 specific team wins (name names) | 5 min | CEO |
| Challenges | 1-2 honest challenges + what we're doing | 5 min | CEO |
| Focus going forward | What matters next — company priorities | 7 min | CEO |
| Special segment (if applicable) | [Announcement / Guest / Award / Initiative] | 10 min | [Owner] |
| Q&A | Open questions from team | 15 min | CEO |
| Close | Summary + rallying close | 5 min | CEO |

**Total:** ~60 minutes

---

## CEO Talking Points

### Open (3 min)
> "[Welcome. Set the tone — honest, direct, grateful for the team's work. One sentence about what today's meeting will cover and why it matters.]"

### Company Scorecard (10 min)

**Metrics to show:**
| Metric | Target | Actual | vs. Prior period |
|--------|--------|--------|-----------------|
| [Primary revenue metric] | $X | $X | +/-X% |
| [Key operational metric] | [Target] | [Actual] | [Delta] |
| [Customer metric] | [Target] | [Actual] | [Delta] |

**CEO script:**
> "[Summarize the scorecard honestly. If the number is good — say why and what drove it. If it's below target — say what happened and what changes. Never just show a slide and move on.]"

### Wins (5 min)
> "[Name 2-3 specific things the team did well this period. Attribute them to specific people or teams. Make people feel seen. Not vague — 'the ops team did great work' is not a win. 'Sarah's team cut clinic wait times by 18% this quarter through the new scheduling system' is a win.]"

### Challenges (5 min)
> "[Name 1-2 honest challenges. 'We are behind on [X]. Here's why, and here's what we're doing about it. I want you to hear it from me, not the rumor mill.' Teams that hear about problems from leadership trust leadership. Teams that hear about problems from peers trust peers — not leadership.]"

### Focus Going Forward (7 min)
> "[What are the 2-3 things that matter most this next period? Why? What does success look like? What does each person's work have to do with it? Connect the company priority to individual contribution.]"

### Q&A Protocol (15 min)

**Open the floor genuinely:**
> "I want real questions. No topic is off limits — I may not be able to answer everything, but I'll tell you why I can't if that's the case. Who goes first?"

**Facilitation notes:**
- If silence: have 1-2 questions prepared by Dr. Lewis to seed the Q&A
- If a question is off limits (legal, sensitive deal): "That's one I need to keep confidential right now — here's why" [brief explanation]
- If a question reveals something you didn't know: "I don't know the answer to that. [Name], can we follow up on that by [specific day]?"

### Close (5 min)
> "[Return to the company's mission/purpose. What does this team's work mean? What are you proud of? What do you believe about where this company is going? End with energy. Teams leave feeling inspired, not informed.]"

---

## Logistics Checklist

- [ ] Meeting invite sent 2 weeks in advance
- [ ] Presentation deck drafted (Dr. Lewis) and approved by CEO [Date]
- [ ] Video setup tested (if virtual/hybrid)
- [ ] Audience microphones tested (if in-person with large group)
- [ ] Metrics pulled and verified (actual numbers, not estimates)
- [ ] Wins list compiled — specific names and outcomes
- [ ] Q&A seed questions prepared (in case floor is quiet)
- [ ] Recording plan confirmed (record? Who has access?)
- [ ] Post-meeting summary email drafted (for team members who couldn't attend)

---

## Post-Meeting Summary (send within 24 hours)

```
Subject: [Company] All-Hands Recap — [Date]

Team,

[2-sentence recap of the meeting's key theme]

Key points from today:
• [Scorecard highlight — 2 sentences]
• [Wins — 1-2 bullets]
• [Challenge + what we're doing — 1-2 sentences]
• [Focus for next period — 1-2 bullets]

Action items from Q&A:
• [Q that required follow-up] — [Owner] will respond by [Date]

Thanks for showing up and for the great questions today.

[CEO name]
```
```

## Output Contract
- CEO owns the all-hands — Dr. Lewis plans and preps; the CEO delivers; this is not a Dr. Lewis presentation; the team needs to hear from the CEO directly
- Challenges always included — an all-hands with only wins is cheerleading; it doesn't build the trust needed for the team to follow leadership when things are genuinely hard
- Q&A is real — curated "softball" questions undermine the trust the all-hands is designed to build; the Q&A must be open and the CEO must be prepared to answer honestly or explain why they can't
- Post-meeting summary always sent — employees who couldn't attend still need the content; employees who attended appreciate the summary for reference; it takes 10 minutes and should be sent within 24 hours
- HITL required: Dr. Lewis builds the agenda and deck; CEO reviews and approves all content; any metrics or announcements in the all-hands must be approved by the appropriate owner before the meeting; sensitive announcements (layoffs, restructuring) require legal and Matt Mathison review

## System Dependencies
- **Reads from:** Company performance data, value creation tracker, HR updates, CEO input
- **Writes to:** All-hands deck (SharePoint/Comms/All-Hands); post-meeting summary (email)
- **HITL Required:** CEO approves all content; Matt Mathison reviews if MBL fund-level content is included; legal reviews if announcements involve employment changes or legal matters

## Test Cases
1. **Golden path:** Allevio Q2 all-hands, 45 people, hybrid → Scorecard: revenue +12% vs. plan, denials rate down 4pp; Win: new clinic opened in Tucson (name the team leads); Challenge: CFO search is 2 months behind schedule (honest: "here's what happened, here's our revised timeline"); Focus: three priorities for Q3; Q&A: 8 questions in 15 minutes, 2 required follow-up (email by Friday); CEO closes with the mission; post-meeting summary sent by 5pm same day; team survey: 87% "meeting was valuable"
2. **Edge case:** A team member asks a question in Q&A that reveals a problem leadership didn't know about → this is the all-hands working as intended; acknowledge the question directly; commit to investigation and follow-up; thank them for raising it; do not be defensive; follow up specifically and publicly to that person within 48 hours — it signals that raising issues gets results, not punishment
3. **Adversarial:** CEO uses the all-hands to share only good news and avoids a major challenge the team already knows about → the team notices the omission immediately; it damages trust more than the challenge itself would have; coach the CEO before the next meeting: the team already knows; the only choice is whether they hear it from you or from rumors; hearing it from you, with a plan, is always better

## Audit Log
All-hands meeting dates, attendees, and summaries retained. Q&A follow-up items tracked through completion. Post-meeting surveys (if conducted) retained.

## Deprecation
Retire when portfolio companies have HR or internal communications functions that own all-hands meeting planning as a standard function.
