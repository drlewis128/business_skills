---
name: exec-1-on-1-framework
description: "Build structured 1-on-1 meeting frameworks for MBL Partners and portfolio company leadership. Use when the user says '1-on-1', 'one-on-one', '1:1', 'prepare for the 1-on-1', '1-on-1 agenda', '1-on-1 framework', '1-on-1 structure', 'monthly 1-on-1', 'weekly 1-on-1', '1-on-1 with the CEO', '1-on-1 with Matt', '1-on-1 prep', 'build the 1-on-1 agenda', 'what should we cover in the 1-on-1', 'executive check-in', 'leadership check-in', 'CEO check-in', 'monthly check-in', 'monthly 1-on-1 agenda', 'individual meeting', 'leadership meeting', 'Matt and CEO meeting', 'Dr. Lewis and entity CEO', 'structured check-in', or 'prepare the monthly check-in'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--participants <Matt-CEO|DrLewis-CEO|CEO-VPs>] [--entity <MBL|Allevio|HIVE|Column6>] [--cadence <weekly|monthly|quarterly>] [--action <build-agenda|review|debrief>]"
---

# Exec 1-on-1 Framework

Build structured 1-on-1 meeting frameworks for MBL Partners and portfolio company leadership — creating the recurring conversation infrastructure that keeps Matt Mathison connected to entity CEOs, entity CEOs connected to their direct reports, and the entire leadership team operating with clarity on expectations, open issues, and development priorities. A 1-on-1 meeting without structure is a status update. A 1-on-1 with structure is a leadership instrument: it surfaces problems early, reinforces THRIVE behaviors, builds trust, and creates accountability through relationship rather than through surveillance.

## When to Use
- Building or refreshing the Matt Mathison → entity CEO monthly 1-on-1 structure
- Preparing the agenda for an upcoming 1-on-1
- Dr. Lewis is facilitating or coaching a 1-on-1 between a CEO and their direct reports
- A new leader joins and the 1-on-1 cadence needs to be established from scratch
- 1-on-1 is not working (not enough substance; leader dreads it; no follow-through)

## 1-on-1 Framework

```
CADENCE GUIDE:

  Matt Mathison → entity CEOs:
    Cadence: Monthly (60 minutes)
    Structure: Mix of coaching and accountability (exec-leadership-coaching feeds into this)
    Attendees: Matt + entity CEO only
    Dr. Lewis role: prepares the agenda brief; receives the post-meeting action items
    
  Matt Mathison → Dr. Lewis:
    Cadence: Weekly (30 minutes) or as-needed (high activity periods)
    Structure: Portfolio status + AI/technology update + decisions needed
    Attendees: Matt + Dr. Lewis
    
  Entity CEO → direct reports (VPs/Directors):
    Cadence: Weekly (30 minutes) or biweekly (45 minutes)
    Structure: entity CEO responsibility to establish; Dr. Lewis coaches if needed
    Attendees: entity CEO + one direct report
    
  New leader onboarding 1-on-1s:
    Cadence: Weekly for first 90 days
    Structure: what are you learning? what are you stuck on? what help do you need?
    After 90 days: transition to standard cadence

MONTHLY 1-ON-1 STRUCTURE (Matt → entity CEO; 60 minutes):

  0:00-0:05 — PERSONAL OPEN:
    One personal question from Matt: "How are you doing? What's going on in your world?"
    Purpose: build the relationship; catch early burnout or personal stress signals
    Matt does NOT skip this. It sets the tone.
    
  0:05-0:20 — PERFORMANCE CHECK-IN (15 minutes):
    CEO walks Matt through 3-5 key metrics (from exec-kpi-dashboard).
    Not a report — a conversation: "Here's where we are. Here's what I'm watching."
    Matt asks one diagnostic question per metric in yellow or red.
    
  0:20-0:40 — OPEN ISSUES AND ASKS (20 minutes):
    CEO-led. "Here's what's on my mind. Here's what I need from you."
    Matt-led. "Here's what I'm seeing from outside. Here's my question for you."
    This is the highest-value segment — unstructured conversation where real things surface.
    Dr. Lewis reviews Krista transcripts post-meeting to capture any action items.
    
  0:40-0:50 — DEVELOPMENT FOCUS (10 minutes):
    Per exec-leadership-coaching: which THRIVE dimension is the focus this month?
    One coaching question; one reflection; one forward commitment.
    
  0:50-0:55 — ACTION ITEMS AND CLOSE (5 minutes):
    What did Matt commit to? (Logged immediately in exec-action-tracker)
    What did the CEO commit to? (Logged immediately in exec-action-tracker)
    When is the next 1-on-1?

EFFECTIVE 1-ON-1 PRINCIPLES:

  The 1-on-1 belongs to the subordinate — the entity CEO sets the agenda (items 2 and 3
    above are CEO-owned content); Matt facilitates and asks; he doesn't own the agenda
    
  The best 1-on-1s are slightly uncomfortable — the CEO should feel safe enough to say
    "I'm struggling with X" or "I made a decision I'm not sure was right." If the CEO is
    only reporting the good news, the 1-on-1 is not working.
    
  Use "what keeps you up at night?" sparingly but deliberately — this question, asked
    authentically, surfaces the most important unsaid things in any 1-on-1; reserve it for
    when the conversation feels surface-level
    
  Take notes in real time — both Matt and Dr. Lewis's post-meeting review depends on
    notes taken during the 1-on-1; Krista (if recording) provides a transcript; if Krista
    is not recording, Dr. Lewis takes notes via exec-weekly-briefing inputs
    
  Do not cancel 1-on-1s — a canceled 1-on-1 sends a message that the relationship is
    not a priority; if Matt must cancel, reschedule within 5 days; 3 cancellations in a row
    = a signal that the cadence needs to be examined

AGENDA TEMPLATE (sent to entity CEO 48 hours before):

  [Entity CEO name],
  
  Ahead of our monthly 1-on-1 on [date]:
  
  From me (Matt):
  - [One thing Matt wants to discuss]
  - [Open item from last month's 1-on-1]
  
  What I'd like to hear from you:
  - How are the Q[N] priorities tracking?
  - What are you most worried about right now?
  - What do you need from me?
  
  Looking forward to it.
  Matt
  
  [This template is prepared by Dr. Lewis and sent by Matt Mathison from his email]
```

## Output Format

```markdown
# 1-on-1 Brief — Matt Mathison + [Entity CEO] — [Date]
**Prepared by:** Dr. Lewis | **Cadence:** Monthly (60 min)

---

## Pre-Meeting Context (Dr. Lewis prep)

**Last 1-on-1:** [Date] | **Commitments from last session:** [Status]
**Current performance context:** [2-3 bullets on entity status from exec-kpi-dashboard]
**What I'm watching:** [Any signals from Krista transcripts or portfolio review]
**Coaching focus this month:** [THRIVE dimension per exec-leadership-coaching]

---

## Agenda Brief (sent to entity CEO 48 hours before)

[The agenda template above — formatted for email]

---

## Post-Meeting Action Items (populated after the meeting)

| Owner | Commitment | Due | Logged in Monday.com |
|-------|-----------|-----|---------------------|
| [CEO name] | [What they committed to] | [Date] | ✅ |
| Matt Mathison | [What Matt committed to] | [Date] | ✅ |

---

## Dr. Lewis Post-Meeting Note

[1-2 sentences on what was significant in this 1-on-1 — for exec-weekly-briefing input and exec-leadership-coaching]
```

## Output Contract
- The agenda goes out 48 hours before — a 1-on-1 without a pre-sent agenda is a 1-on-1 where the CEO shows up unprepared; Dr. Lewis sends the agenda brief to the entity CEO 48 hours before each monthly 1-on-1; the agenda is a light prompt, not a heavy document; 5 lines maximum; the purpose is to signal "this meeting has substance" and give the CEO time to think about what they want to raise
- Commitments from the prior 1-on-1 are reviewed at the start — the first 2 minutes of every 1-on-1 (after the personal open) reviews what was committed to at the last meeting; this is where accountability lives in the 1-on-1 structure; skipping the commitment review teaches the CEO that commitments made in 1-on-1s are optional; Dr. Lewis tracks these in exec-action-tracker and includes the status in the pre-meeting context brief
- If only the good news shows up, the 1-on-1 isn't working — a 1-on-1 where the CEO only reports wins and Matt only responds positively has no tension; tension (productive, not conflict) is where growth happens; Matt's job is to create enough psychological safety that the CEO feels comfortable saying "I don't know" or "I made a mistake"; if Matt is consistently getting only good news, Dr. Lewis flags it: "The last 3 1-on-1s have been all green. Either things are really going well, or we're missing something. Worth asking a harder question in the next one."
- HITL required: Matt Mathison delivers all Matt → entity CEO 1-on-1s personally; Dr. Lewis prepares the brief and the agenda; post-meeting commitments are logged in exec-action-tracker by Dr. Lewis within 24 hours; Dr. Lewis reviews Krista transcript (if available) for action items and signals; any significant disclosure from the entity CEO (performance concern; personal situation; THRIVE signal) is noted by Dr. Lewis and shared with Matt in the post-meeting note

## System Dependencies
- **Reads from:** exec-kpi-dashboard (entity performance metrics for the performance check-in section); exec-action-tracker (prior 1-on-1 commitments — status review); exec-leadership-coaching (THRIVE coaching focus for the development section); exec-portfolio-review (quarterly context for the performance discussion); Krista meeting transcripts (post-meeting action item capture; pre-meeting context from prior meetings)
- **Writes to:** 1-on-1 brief (shared between Matt and entity CEO); exec-action-tracker (commitments from each 1-on-1 logged immediately); exec-leadership-coaching (development insights from each 1-on-1 feed coaching plans); exec-weekly-briefing (significant 1-on-1 disclosures noted in the weekly briefing for Matt's awareness)
- **HITL Required:** Matt Mathison delivers all Matt → entity CEO 1-on-1s; Dr. Lewis prepares the brief and sends the agenda; post-meeting commitments logged within 24 hours; Krista transcript reviewed by Dr. Lewis for action items; any significant disclosure shared with Matt in post-meeting note; Matt Mathison does not cancel 3 1-on-1s in a row without a deliberate conversation about the cadence

## Test Cases
1. **Golden path:** Monthly 1-on-1 with Column6 CEO; Dr. Lewis sends agenda 48 hours before: "From Matt: want to discuss the Gap Media onboarding — are we setting them up for a great first 90 days? Open item from last month: the CSM coverage model review. From me: how is the team? What's your biggest uncertainty right now?" CEO arrives prepared; personal open (3 minutes) — CEO mentions his father is dealing with a health situation; Matt acknowledges and notes privately that ENJOY dimension may need attention; performance check-in: VCR at 92.1% 🟢, Gap Media IO on track 🟢, CSM coverage model → CEO: "I'm worried we're understaffed for Q4 agency volume"; this becomes the Open Issues segment (20 minutes); coaching focus: Hustle — "Tell me about a decision you made this month before you were fully certain you had enough information." CEO reflection is excellent. Commitments: CEO sends CSM coverage model analysis by the 15th; Matt responds to it within 48 hours. Both logged. Dr. Lewis post-meeting note: "Column6 CEO is sharp and engaged. The CSM coverage concern is real — worth watching in the exec-kpi-dashboard. Personal note: family health situation may affect availability in coming weeks — no action needed yet but Dr. Lewis is aware."
2. **Edge case:** Entity CEO pushes back on the 1-on-1 as "too frequent — monthly is a lot of time with Matt when I could be running the business" → Dr. Lewis: "The CEO is right that time is scarce. I'd suggest exploring what's making the 1-on-1 feel burdensome — is it the frequency, the format, or the content? A 1-on-1 that is well-prepared and focused should feel like a productive use of 60 minutes, not a reporting exercise. If it's feeling like a report, we should redesign the format. If it's genuinely frequency, we could explore bimonthly — but Matt would want the option to call an ad-hoc 1-on-1 when something significant comes up. Let me draft a revised format proposal." CEO: "That works."
3. **Adversarial:** Matt consistently cancels or shortens the 1-on-1s ("I'm too busy this month") → Dr. Lewis: "I need to flag a pattern: this is the third 1-on-1 that's been canceled or cut short this month. The entity CEOs notice when their 1-on-1 with Matt is consistently deprioritized — it signals that their relationship with Matt is not a priority. Over time, this erodes trust and reduces the candor they feel comfortable bringing to you. I'd like to propose two options: (1) Hold the 1-on-1 cadence but shorten it to 30 minutes during high-demand periods; (2) Protect one 60-minute slot per month as inviolable. Either is better than consistent cancellations. Which works better for you?" Matt: "30 minutes when I'm slammed. I'll do it."

## Audit Log
All 1-on-1 briefs retained by date and participants. Commitment records retained (per exec-action-tracker). Post-meeting notes retained (Dr. Lewis notes; significant disclosures). Cancellation records retained (date; reason; rescheduled to). Cadence health tracked quarterly (delivery rate of scheduled 1-on-1s across all leadership pairs).

## Deprecation
Retire when each entity has a Chief of Staff who manages the executive meeting cadence — with Dr. Lewis retaining the preparation and post-meeting action capture role and Matt Mathison retaining all Matt → entity CEO 1-on-1 conversations.
