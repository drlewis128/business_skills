---
name: employee-announcement-writer
description: "Write an employee-facing announcement. Use when the user says 'write an announcement to employees', 'employee announcement', 'staff announcement', 'internal announcement', 'announce to the team', 'write a team announcement', 'company announcement email', 'write a message to staff', 'new hire announcement', or 'policy announcement to employees'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <hire|departure|policy|milestone|event>] [--topic <subject>]"
---

# Employee Announcement Writer

Write employee-facing announcements — new hire introductions, leadership changes, policy updates, company milestones, event notifications, and other internal communications that keep the team informed and connected. Employee announcements are often written hastily; this skill ensures they are clear, complete, well-timed, and appropriate in tone for the news being communicated.

## When to Use
- Introducing a new team member to the company
- Announcing a leadership change (promotion, departure, new hire)
- Communicating a policy update or benefit change
- Celebrating a company milestone (revenue, anniversary, award)
- Notifying employees about an event, deadline, or required action
- Any "from leadership to all staff" communication that isn't a crisis

## Announcement Types and Tone Guide

```
New hire announcement:
  Tone: Warm, welcoming, brief
  Key elements: Role, background, what they'll be working on, start date, 
                how to connect with them
  Length: 100-200 words

Leadership departure / farewell:
  Tone: Grateful, forward-looking (even if the departure is difficult)
  Key elements: Contribution, timeline, transition plan
  Length: 150-250 words — do NOT be brief for a departure that matters

Promotion announcement:
  Tone: Celebratory, specific about what they earned it for
  Key elements: New role, what they did to earn it, effective date, 
                what changes (if anything) for the team
  Length: 100-200 words

Policy update:
  Tone: Clear, direct, no corporate jargon
  Key elements: What changes, when it takes effect, what employees need to do, 
                where to find more information or ask questions
  Length: 100-300 words depending on complexity — clarity over brevity

Company milestone:
  Tone: Celebratory, attributing credit specifically
  Key elements: What the milestone is, what it means, who made it happen
  Length: 100-200 words

Event / deadline reminder:
  Tone: Direct, action-oriented
  Key elements: What, when, where, what the employee needs to do
  Length: 50-100 words — brevity is correct here
```

## Output Format

```markdown
# Employee Announcement Draft
**Entity:** <Company>
**Type:** [New hire / Departure / Promotion / Policy / Milestone / Event]
**Subject line:** <[Subject — specific and clear]>
**From:** <CEO / Dr. Lewis / HR / [Sender name]>
**To:** All team / [Specific team]
**Date:** <date to send>

---

## Draft Announcement

Subject: [Subject line — specific; no "Important Update" or "Please Read"]

[Team / Hi everyone / All,]

[Opening — the news, directly stated. For good news: lead with the good news. For a departure: acknowledge the departure directly in the first sentence, not buried in paragraph 3.]:

> "[State the news clearly. No burying, no preamble. If it's a new hire: 'I'm thrilled to welcome [Name] to the [Company] team as our new [Title], starting [date].' If it's a departure: '[Name] is leaving [Company] as of [date]. [Name] has been a key part of [X] and we're grateful for the contribution they've made.']"

[Details — the relevant specifics]:

> "[For a new hire: Background (1-2 sentences: where they come from, what they'll bring). What they'll be doing. How to reach them.]"

> "[For a departure: What they contributed (specific). Transition plan (who is taking over what). How to stay in touch if employees want to.]"

> "[For a policy update: What specifically changes. When it takes effect. What the employee must do, if anything. Link to full policy document.]"

[Closing — brief, genuine, relevant to the news]:

> "[Don't close with 'please join me in welcoming...' for everything — it's overused. Be specific to the news: for a new hire, invite the team to introduce themselves. For a departure, wish them well. For a milestone, thank the team. Keep it 1-2 sentences.]"

[Sender name]
[Title]

---

## Checklist

- [ ] Subject line is specific (not vague)
- [ ] News is stated in the first sentence (not buried)
- [ ] Start date or effective date included (if applicable)
- [ ] Contact info included for new hire (email or how to connect)
- [ ] Transition plan included for departure
- [ ] CEO or appropriate leader reviewed and approved
- [ ] HR confirmed details (start date, title, policy terms)
- [ ] Timed correctly (internal before external, for leadership changes)
```

## Output Contract
- News is always in the first sentence — burying the news creates anxiety; employees who read an announcement looking for "what happened" and find preamble will develop the habit of not trusting announcements; lead with the fact
- Milestone and promotion announcements attribute credit specifically — "We're pleased to announce Sarah's promotion" without explaining what she did to earn it is a missed opportunity; specific attribution ("Sarah led the billing process redesign that cut denials by 30% — that's why she's our new Director of Revenue Cycle") is more motivating to the team and more validating to the promoted employee
- Departure announcements are always handled with care — even if the departure is complicated, the announcement must be graceful; the team is watching how leadership talks about people who leave; it tells them how leadership would talk about them
- Policy announcements always include a "what do I need to do?" answer — employees reading a policy announcement want to know if there's an action required of them; if there isn't, say so explicitly: "No action is needed from you — this change is effective automatically on [date]"
- HITL required: Dr. Lewis drafts; CEO or appropriate leader reviews and approves; HR confirms factual accuracy for hire/departure/policy announcements; no announcement sent without approval from the appropriate authority

## System Dependencies
- **Reads from:** HR records (for hire/departure info), company milestone data, policy documents
- **Writes to:** Announcement email (distributed via company email); SharePoint record of announcements
- **HITL Required:** CEO approves leadership change announcements; HR confirms hire/departure details; appropriate owner approves policy updates

## Test Cases
1. **Golden path:** Allevio new hire announcement — new Practice Manager → Subject: "Welcome Sarah Kim — New Practice Manager, Scottsdale Clinic"; Opens: "I'm excited to welcome Sarah Kim to the Allevio team as our new Practice Manager for the Scottsdale clinic, starting June 16."; Background: 8 years in healthcare practice management, most recently at a 6-physician primary care group in Tempe; what she'll be doing: overseeing all operations at the Scottsdale location; connect with her: sarah.kim@allevio.com; HR confirmed title and start date; CEO approved; sent morning of start date
2. **Edge case:** Departing employee is leaving under difficult circumstances (performance-related departure or termination) → the announcement must be professional and factual, not revealing the reason for departure; "We want to share that [Name] is leaving [Company] as of [date]. We wish them well in their next chapter." is the appropriate level of detail; do not hint at or reveal performance issues in a company-wide communication; brief is appropriate here, not warm
3. **Adversarial:** A team member asks "why is [Name] really leaving?" after the departure announcement → this is expected; managers must be briefed on the appropriate response ("We can't speak to the specifics of [Name]'s departure — we wish them well and are focused on the transition") before the announcement goes out; the manager cascade should include the script for this question

## Audit Log
All announcements retained by date and type. Approval records maintained. HR confirmation of factual details documented.

## Deprecation
Retire when portfolio companies hire HR Directors or Internal Communications Managers who own employee announcements as a standard function.
