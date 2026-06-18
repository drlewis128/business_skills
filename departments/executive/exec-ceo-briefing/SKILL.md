---
name: exec-ceo-briefing
description: "Prepare the daily or weekly CEO briefing for Matt Mathison. Use when the user says 'CEO briefing', 'Matt briefing', 'daily briefing', 'morning briefing', 'prepare the briefing', 'brief Matt', 'executive briefing', 'what does Matt need to know', 'daily update for Matt', 'morning update', 'prepare Matt for the day', 'prepare Matt for the week', 'what should Matt know this morning', 'executive morning brief', 'portfolio briefing for Matt', 'CEO morning routine', 'what are the priorities today', 'what should we focus on', 'CEO prep', 'executive prep', 'leadership briefing', 'management briefing', 'morning summary', 'weekly summary for Matt', 'brief the CEO', or 'what happened this week'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--cadence <daily|weekly>] [--date <YYYY-MM-DD>] [--focus <portfolio|Allevio|HIVE|Column6|M&A|all>] [--action <prepare|deliver|update>]"
---

# Exec CEO Briefing

Prepare the daily or weekly CEO briefing for Matt Mathison — distilling what Matt needs to know, what decisions he needs to make, and what actions he needs to take into a format he can consume in 3 minutes or less. The CEO briefing is the highest-leverage preparation function at MBL: a Matt Mathison who walks into each day with clear priorities, relevant context, and no surprises is a Matt Mathison who can execute at the speed MBL competes on. This is the Meeting Intelligence Phase 2 deliverable (weekly summary format).

## When to Use
- Every Monday morning (weekly briefing — portfolio + priority week ahead)
- Before Matt has any significant meetings (pre-meeting prep is exec-meeting-prep)
- A significant portfolio event requires immediate CEO awareness
- Matt requests a situational briefing (what's happening with X right now?)
- End-of-week brief (Friday): what happened, what's pending, what's first on Monday

## CEO Briefing Framework

```
WEEKLY BRIEFING STRUCTURE (Monday; delivered by 8 AM; 3-minute read):

  Section 1 — BLUF (Bottom Line Up Front):
    3 sentences. What's the headline this week?
    Good: "Allevio Q2 claim ratios came in stable; no surprises. HIVE has a competing
    operator situation on the Peterson parcel — I'm monitoring and will call if it escalates.
    Column6 signed a new Priority A agency (Gap Media) Friday — $85K IO in Q3."
    Bad: "The portfolio had an eventful week. Let me walk you through each entity."
    
  Section 2 — WHAT HAPPENED (since last briefing):
    Format: entity-labeled bullets. 2-3 bullets max per entity.
    Only things Matt should know; not everything that happened.
    Rule: If Matt doesn't need to know it, it doesn't go in the briefing.
    
    Allevio: • [Event or update that matters to Matt]
             • [Second item if there is one]
    HIVE:    • [Event]
    Column6: • [Event]
    MBL/Other: • [Event]
    
  Section 3 — DECISIONS NEEDED THIS WEEK:
    Format: numbered list. One line per decision. Include the deadline.
    Rule: Only decisions where Matt's input is genuinely required.
    Don't include decisions Dr. Lewis can make independently.
    
    1. [Decision] — deadline [day/date] — [one-sentence context]
    2. [Decision]
    
  Section 4 — WHAT I'M HANDLING (Matt does not need to act on these):
    Format: bullets. Brief. Confidence-building.
    "I'm handling X so you don't have to think about it."
    Rule: Only include if it reassures Matt or prevents a question he might otherwise ask.
    
    • Column6 VCR flag from last week — resolved, back to 92.3%, no further action needed
    • HIVE royalty statement dispute (Anderson parcel) — Dr. Lewis on it, resolution by Thursday
    
  Section 5 — CALENDAR PREVIEW (this week):
    Format: Day-by-day if there are significant meetings; otherwise "nothing significant this week."
    Highlight: Any meeting Matt should be especially prepared for (with note to see exec-meeting-prep).
    
    Mon: [Event]
    Tue: [Event]
    Wed-Fri: No significant meetings

DAILY BRIEFING (if needed — not standard cadence, reserved for high-activity periods):
  Shorter version: BLUF + What happened + Decisions needed + one calendar item.
  Only sent when there is actually something Matt needs to know that day.
  Do not send a daily briefing to check a box — if there's nothing material, silence is fine.

FORMAT RULES:
  □ No paragraphs of explanation — bullets only except the 3-sentence BLUF
  □ No hedging language — state things directly ("Allevio missed Q2 sales target" not
    "Allevio encountered some challenges in Q2 sales")
  □ Named entities not "the team" — "Dr. Lewis is handling X" not "we're handling X"
  □ 500 words maximum for the weekly briefing — if it's longer, it's wrong
  □ Delivered as email or Teams message — not a long deck; Matt reads this standing up

KRISTA / MEETING INTELLIGENCE INTEGRATION:
  When Krista meeting transcripts are available:
    □ Pull any action items from meetings since last briefing → add to Section 3 (Decisions)
      or Section 4 (I'm handling) depending on whether Matt's input is needed
    □ Pull any portfolio-relevant discussions → summarize in Section 2 (What Happened)
    □ Flag any upcoming meetings → calendar preview in Section 5
  When Krista transcripts are NOT available:
    □ Dr. Lewis compiles the briefing from direct entity CEO inputs, exec-kpi-dashboard,
      and exec-action-tracker open item review
```

## Output Format

```markdown
**MBL Weekly Brief — [Day, Month DD, YYYY]**

**BLUF:** [3 sentences. Headline. One win. One watch item.]

---

**What happened:**
- Allevio: [Bullet] / [Bullet if needed]
- HIVE: [Bullet] / [Bullet if needed]
- Column6: [Bullet] / [Bullet if needed]
- MBL: [Bullet if needed]

---

**Decisions you need to make this week:**
1. [Decision] — [Deadline] — [Context]
2. [Decision]

---

**I'm handling (no action needed from you):**
- [Item being managed]
- [Item being managed]

---

**Calendar this week:**
Mon: [Meeting or nothing significant]
Tue-Thu: [Events or clear]
Fri: [Events or clear]
```

## Output Contract
- 3-minute read maximum — if the briefing requires more than 3 minutes to read, it has failed its primary purpose; Dr. Lewis reads the completed briefing aloud before sending; anything that takes more than 3 minutes is cut or summarized further; Matt's time is the scarcest resource at MBL
- BLUF leads with the most important thing — not the most recent thing, not the longest section, not the thing Dr. Lewis finds most interesting; the first sentence of the BLUF should be the thing that, if Matt remembered nothing else from the briefing, would be the most important thing to know; if the BLUF doesn't create clarity, the briefing doesn't create clarity
- No surprises and no buried items — if something matters, it goes in the BLUF or the Decisions section; it does not get buried in a sub-bullet three levels deep; if there is a Red metric or a risk event, it is the first item Matt reads, not the last; Dr. Lewis's job is to prevent Matt from discovering material information in the wrong context at the wrong time
- HITL required: Dr. Lewis prepares and delivers all CEO briefings; Monday briefing delivered by 8 AM; any material portfolio event (Tier 3 alert from exec-kpi-dashboard) generates an immediate briefing supplement regardless of day/time; Matt Mathison responds to Decisions section; Dr. Lewis logs Matt's decisions in exec-action-tracker; Krista transcript integration requires exec-meeting-prep HITL protocols

## System Dependencies
- **Reads from:** exec-kpi-dashboard (Tier 1 portfolio metrics + active Tier 3 alerts); exec-action-tracker (open items and decisions pending from prior week); exec-meeting-prep (prep notes for the week's meetings — contributes to calendar preview); Krista meeting transcripts (when available — Meeting Intelligence Phase 2); entity CEO direct inputs (weekly check-in from Allevio, HIVE, Column6 CEOs); exec-weekly-briefing (if the weekly briefing was separate from the CEO briefing, this feeds it)
- **Writes to:** CEO briefing (email or Teams — Matt Mathison; Monday by 8 AM); exec-action-tracker (Matt's decisions from Decisions section logged immediately after response); exec-weekly-briefing (the CEO briefing IS the weekly briefing at MBL — these are the same document)
- **HITL Required:** Dr. Lewis prepares and delivers; Monday by 8 AM; material events generate immediate supplements; Matt responds to Decisions; Dr. Lewis logs decisions in exec-action-tracker; Krista integration follows exec-meeting-prep HITL

## Test Cases
1. **Golden path:** Monday morning; Dr. Lewis compiles the briefing by 7:30 AM; BLUF: "Portfolio is stable. Allevio GRR held at 93% — no churn events this week. Column6 signed Gap Media as a new Priority A agency ($85K IO starting July 15). HIVE has a competing operator approaching the Anderson parcel — I'm on it and will update you by Thursday." Decisions: "1. Allevio clinical expansion budget ($340K) — Dr. Lewis recommendation: GO — needs your approval by Wednesday." I'm handling: "HIVE Anderson parcel competing operator situation — I'll call Thursday." Calendar: "Tuesday 2 PM: Allevio CEO quarterly sync (exec-meeting-prep attached)." Matt reads at 8:05 AM; responds: "Good. Approve the Allevio clinical expansion. Keep me posted on Anderson." Dr. Lewis logs the approval; updates exec-action-tracker; brief loop closed.
2. **Edge case:** It's Friday and a significant event happened — Allevio lost a $140K employer group → Dr. Lewis doesn't wait for Monday; sends a supplemental brief at 4 PM Friday: "**Allevio alert:** We lost the TechCorp employer group ($140K ARR; 240 members). Decision to not renew came at 3 PM. Root cause: CFO change in December; new CFO ran a competitive process; Anthem offered lower premium. I've initiated the win-back timeline (cs-win-back-planner — reach back in 12 months when the new CFO has data). GRR impact: Allevio drops from 93% to 88%. This is above our 85% target but worth watching. No action needed from you today — monitoring and will include the full context in Monday's brief." Matt: "Appreciated. Good timing on the alert."
3. **Adversarial:** Matt says the Monday briefings are useful but he wants them to also cover his personal to-do list and inbox → Dr. Lewis: "I can do that, but I'd suggest we keep them separate — the portfolio briefing is about your executive responsibilities; a personal to-do and inbox is more of a daily operations function. Mixing them risks the portfolio information getting lost in the inbox review. What if I add a short 'personal to-do' section at the bottom that's 3 bullets max? I pull from your action items but don't mix them with portfolio decisions." Matt: "That works." Dr. Lewis adds a short 'Your to-dos' section at the bottom of the Monday brief — 3 bullets max; portfolio content remains primary.

## Audit Log
All CEO briefings retained by date. Matt Mathison decision responses retained (what was decided; when; by what method). Supplemental briefings retained (what triggered them; what was communicated). Action tracker updates from briefing decisions retained. Krista transcript integration records retained (which transcripts were used; which meetings contributed to which briefings).

## Deprecation
Retire when MBL has a Chief of Staff who manages executive communications — with Dr. Lewis providing the AI strategy and technology inputs and Matt Mathison retaining the final briefing review cadence.
