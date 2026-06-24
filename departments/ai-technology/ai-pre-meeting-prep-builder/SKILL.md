---
name: ai-pre-meeting-prep-builder
description: "Build pre-meeting prep sheets for Matt Mathison and Dr. Lewis. Use when the user says 'pre-meeting prep', 'meeting prep', 'prepare for the meeting', 'prep sheet', 'meeting brief', 'meeting briefing', 'brief Matt', 'brief for Matt', 'what should Matt know', 'what should I know before this meeting', 'prepare Matt', 'get Matt ready', 'pre-read', 'meeting pre-read', 'context for the meeting', 'background for the meeting', 'who is this person', 'who are we meeting with', 'prep for investor meeting', 'prep for portfolio review', 'prep for board meeting', 'prep for entity CEO meeting', 'prep for deal meeting', 'prep for LP meeting', 'prep for acquisition meeting', 'Matt Mathison prep', 'executive prep', 'company background', 'meeting intelligence prep', 'pre-meeting intelligence', 'strategic prep', 'what do I need to know', or 'brief me before the meeting'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--meeting <name|date>] [--participants <names>] [--entity <mbl|allevio|hive|column6>] [--type <portfolio-review|deal|lp|entity-ceo|external>]"
---

# AI Pre-Meeting Prep Builder

Build pre-meeting prep sheets for Matt Mathison and Dr. Lewis — compiling structured intelligence about meeting participants, relevant context, current portfolio status, open issues, and recommended talking points. This is Phase 2 of MBL's Meeting Intelligence System; prep sheets ensure Matt Mathison walks into every significant meeting with full context and a clear agenda objective, not catching up on the fly.

## When to Use
- Any meeting with Matt Mathison as a participant (portfolio reviews; entity CEOs; LPs; M&A)
- Deal meetings, LP meetings, and board meetings (always require prep)
- Entity CEO monthly 1-on-1s (Dr. Lewis prepares context for Matt)
- External meetings where participant background matters

## Pre-Meeting Prep Framework

```
PREP SHEET STRUCTURE (BLUF-FIRST):

  HEADER:
    Meeting: [Name] | Date: [Date] | Time: [Time] | Location/Link: [Teams/in-person]
    Attendees: [Participants + roles]
    Prep prepared by: Dr. Lewis | Delivered: [When sent to Matt]
    
  OBJECTIVE (what this meeting needs to accomplish):
    One sentence: "This meeting's goal is to [decision / update / relationship milestone]."
    Matt's primary role: [Decision-maker / Listener / Evaluator / Negotiator]
    
  PARTICIPANT INTELLIGENCE:
    For each external participant: name; title; company; relevant background
    Relationship history with MBL: prior interactions; commitments made; relationship tone
    Key interests: what does this person want from this meeting?
    Potential concerns or objections: what might push back?
    
  PORTFOLIO / ENTITY CONTEXT (relevant to this meeting):
    Current KPIs for the relevant entity (last-quarter snapshot)
    Open issues or decisions that are outstanding
    Any recent developments Matt should know about
    Financial context (if financial meeting): current P&L; cash; runway
    WTI context (HIVE meetings): current price; trigger status; acquisition pipeline
    Allevio context: GRR; enrolled employers; any HIPAA-sensitive items excluded from prep
    
  AGENDA PREPARATION:
    Recommended meeting structure (time allocation)
    Key questions Matt should ask
    Key decisions to push for a conclusion (if this meeting should close something)
    Items to avoid (sensitive topics; premature; awaiting data)
    
  OPEN ITEMS FROM PRIOR MEETINGS:
    Action items that were assigned in the last meeting with these participants
    Status: complete / in-progress / at-risk
    
  RECOMMENDED OUTCOME:
    What does Matt Mathison want to leave this meeting having achieved?
    "By the end of this meeting, we want: [X]"
    
ENTITY-SPECIFIC CONTEXT THREADING:
  All entity financial data in prep sheets: latest actuals from QuickBooks (via finance-portfolio-dashboard)
  HIVE LP meeting: include distribution history; WTI trend; next distribution estimate; no speculative commitments
  Allevio employer meeting: aggregate enrolled employer context; HIPAA-safe; no member-level data
  Column6 agency/client meeting: IO history; pipeline; campaign performance summary (aggregate)
  Deal/M&A meeting: relevant LOI stage; DD status; valuation range (confidential)
```

## Output Format

```markdown
# Pre-Meeting Prep — [Meeting Name]
**Date:** [Date/Time] | **Location:** [Teams/In-Person] | **Prep by:** Dr. Lewis | **Delivered:** [Date]

---

## Objective
**Goal:** [One sentence]
**Matt's role:** [Decision-maker / Evaluator / etc.]

---

## Attendees

| Name | Title | Company | Context |
|------|-------|---------|---------|
| [Name] | [Title] | [Company] | [Key background in 1 sentence] |

**What they want from this meeting:** [Brief]
**Potential friction point:** [If any]

---

## Context Snapshot — [Entity/Topic]

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| [Key metric] | X | X | ✅/⚠️/🔴 |

[1-2 sentences of current narrative context]

---

## Recommended Agenda (60 min)
- [0:00] Welcome + framing (5 min)
- [0:05] [Topic 1] (15 min)
- [0:20] [Topic 2] (20 min)
- [0:40] [Decisions / wrap] (15 min)
- [0:55] Next steps (5 min)

---

## Key Questions for Matt to Ask
1. [Question]
2. [Question]

## Target Outcome
"By the end of this meeting: [specific deliverable or decision]"

## Open Items from Last Meeting
| Item | Owner | Status |
|------|-------|--------|
| [Action] | [Name] | ✅ Done / 🟡 In progress |
```

## Output Contract
- The prep sheet is not a summary of everything — it is a selection of what matters for this specific meeting; a prep sheet that includes every possible piece of context about a portfolio company is overwhelming, not helpful; Dr. Lewis selects the 3-5 most relevant data points, the 2-3 most important questions Matt should ask, and the one outcome that would make this meeting successful; the discipline of selection is the skill — presenting everything equally is not preparation, it is dumping the research burden onto Matt Mathison
- Participant intelligence for external meetings is the highest-value section — when Matt Mathison walks into a meeting with an LP, an acquisition target, or a new employer, knowing who he is meeting with (background; what they care about; what they want from this meeting) is the competitive advantage; Dr. Lewis researches each external participant before the meeting: LinkedIn; company background; prior interactions with MBL; any public commitments or statements relevant to the meeting topic; a 10-minute participant intelligence section can change the entire dynamic of a 60-minute meeting
- HITL required: prep sheet → Dr. Lewis prepares; Matt Mathison receives minimum 24 hours before meeting (48 hours for board/LP/deal meetings); any prep sheet for an LP meeting → Matt Mathison reviews for accuracy before the meeting; any M&A prep sheet → Matt Mathison confirms confidentiality before Dr. Lewis researches external participants; Allevio meeting prep → HIPAA check (no member data in prep sheets); prep sheet with financial projections → Dr. Lewis confirms source before including; Matt Mathison can request changes to any prep sheet before the meeting

## System Dependencies
- **Reads from:** Microsoft 365 calendar (meeting invites; participants); finance-portfolio-dashboard (entity KPIs; cash position); finance-hive-production-financials (HIVE WTI; production context); finance-allevio-revenue-recognition (Allevio GRR; MRR context); prior meeting summaries (SharePoint → Meeting Intelligence); participant LinkedIn and company research; prior deal documents (M&A context); Monday.com (open action items from prior meetings)
- **Writes to:** Pre-meeting prep sheets (SharePoint → MBL → Meeting Intelligence → Pre-Meeting Prep → [Meeting Date]); email/Teams to Matt Mathison (delivered 24-48 hours before meeting); Krista.ai workflow (auto-trigger prep sheet building when meeting appears on calendar)
- **HITL Required:** Matt Mathison receives minimum 24 hours before; LP meeting → Matt Mathison reviews before; M&A → Matt Mathison confirms external participant research; Allevio → HIPAA check; financial projections → Dr. Lewis confirms source; Matt Mathison requests changes → Dr. Lewis updates same day

## Test Cases
1. **Golden path:** Allevio Q2 portfolio review (Matt Mathison + Allevio entity CEO; July 15). Dr. Lewis builds prep sheet July 13 (48 hours before). Context snapshot: MRR $48,240; GRR 93%; enrolled employers 8; gross margin 41%; 2 new employers in pipeline. HIPAA check: no member data ✅. Key questions for Matt: "(1) What's holding up the 2 pipeline employers from signing? (2) Is the CS team capacity adequate for the enrollment we're projecting in Q3? (3) Any clinical cost concern at current enrollment density?" Target outcome: "Agreement on Q3 growth target (12 new enrolled employers) and identification of any resource gap." Open items from last meeting: AE quota adjustment — ✅ Done. Prep sheet delivered July 13 10am. Matt acknowledges receipt July 14.
2. **Edge case:** LP meeting scheduled with a new HIVE LP (not a prior investor; referred by an existing LP) — Dr. Lewis has limited background information → Dr. Lewis: "For a new LP prospect, participant intelligence is especially important. Let me research what's publicly available: LinkedIn (professional background; current role; investment history); any press mentions (prior PE investments; energy sector background); the referring LP's context (why did they refer this person?). I'll also prepare the HIVE pitch context — distribution history; WTI trend; current PV10; acquisition pipeline status. One thing I want to confirm with Matt Mathison before the prep is complete: what is Matt's objective for this meeting — is this an information-sharing call or an active LP fundraising conversation? That changes the outcome section significantly."
3. **Adversarial:** Matt Mathison receives the prep sheet 2 hours before the meeting rather than the standard 24+ hours because a meeting was added to the calendar late → Dr. Lewis: "I saw the meeting was added late — I've expedited the prep and it's ready now (2 hours before). Key points: [3 BLUF bullets from the prep]. The full prep sheet is in your email and SharePoint. I've flagged that the agenda recommendation may need to be compressed given the late notice. For future late-notice meetings, if you can give me a heads-up by 8am the meeting day, I can always have at least a 3-bullet briefing ready by 9am even if the full prep sheet takes longer. Do you want me to send the abbreviated version now or the full one?"

## Audit Log
All pre-meeting prep sheets (permanent; SharePoint). Delivery records (date/time; sent to Matt Mathison). Matt Mathison review records (LP/deal meetings). HIPAA check records (Allevio meetings). M&A confidentiality confirmation records. Participant research records (external participants). Outcome tracking (what was the meeting outcome vs. the target outcome — captured in meeting summary).

## Deprecation
Prep sheet template reviewed quarterly (Matt Mathison feedback). Participant research methodology reviewed when data sources change. Entity KPI sections reviewed when portfolio changes (new entity; exit). Allevio HIPAA section reviewed when regulations change. Krista.ai auto-trigger reviewed when calendar integration changes.
