---
name: ai-meeting-summary-builder
description: "Build weekly AI meeting summaries for Matt Mathison from MBL meeting transcripts. Use when the user says 'meeting summary', 'summarize the meeting', 'meeting recap', 'meeting notes', 'write up the meeting', 'meeting intelligence', 'meeting summary for Matt', 'weekly summary', 'weekly meeting summary', 'summarize this week', 'what happened in the meeting', 'meeting takeaways', 'what were the decisions', 'action items from the meeting', 'pull the action items', 'meeting outcomes', 'what did we decide', 'meeting notes for Matt Mathison', 'push to Monday.com', 'Monday.com meeting actions', 'meeting summary template', 'MBL meeting summary', 'portfolio meeting summary', 'executive meeting summary', 'Matt weekly update', 'send to Jimmy', 'CC Jimmy Lindsley', 'Monday morning summary', or 'weekly intelligence report'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--meeting <name|date>] [--entity <mbl|allevio|hive|column6>] [--action <summarize|push-monday|email|all>]"
---

# AI Meeting Summary Builder

Build weekly AI meeting summaries for Matt Mathison from MBL meeting transcripts — producing BLUF-first structured summaries of key decisions, action items, and context, then pushing action items to Monday.com and distributing the summary via email to Matt Mathison and Jimmy Lindsley. This is Phase 1 of MBL's Meeting Intelligence System, operationalized via Krista.ai + Claude.

## When to Use
- After any meeting with Matt Mathison (weekly; portfolio reviews; entity CEO meetings; deal meetings)
- Weekly intelligence compilation (consolidate multiple meeting summaries into one Monday briefing)
- Pushing meeting action items to Monday.com
- Storing meeting intelligence in SharePoint for searchability

## Meeting Summary Framework

```
SUMMARY STRUCTURE (BLUF-FIRST):

  HEADER:
    Meeting: [Meeting name / participants / date / duration]
    Summary prepared by: Dr. Lewis (AI-assisted) | Reviewed: ✅
    
  BLUF (Bottom Line Up Front — 3 bullets max):
    • Most important decision made
    • Most critical action item (with owner + due date)
    • Biggest risk or issue surfaced
    
  DECISIONS (what was decided — not what was discussed):
    Format: [Decision made] | [Rationale] | [Owner to execute]
    Only confirmed decisions — not discussions, options, or tentative plans
    
  ACTION ITEMS (specific; owned; time-bound):
    Format: [Action] | Owner: [Name] | Due: [Date] | Priority: [High/Med/Low]
    High priority: blocks another decision or has an external deadline
    Push to Monday.com: High priority items → Matt's Monday.com board
    
  CONTEXT & NOTES:
    Key data points mentioned (numbers; milestones; commitments)
    Next meeting / follow-up scheduled
    Open questions that remain unresolved
    
  ENTITY CONTEXT APPLIED:
    MBL/Portfolio: THRIVE filter applied to decisions; investor mindset on financials
    Allevio: HIPAA boundary — no PHI in any meeting summary; employer aggregate only
    HIVE: WTI price mentioned → flag if approaching $58 trigger
    Column6: IO/campaign data referenced → confidentiality respected in summary
    
EMAIL DISTRIBUTION:
  To: Matt Mathison (jmathison@mblpartners.com — confirm actual email)
  CC: Jimmy Lindsley
  Subject: [Meeting Name] Summary — [Date] | [Key Action / Decision]
  Attachment or body: formatted summary
  Send timing: within 2 hours of meeting end (or first thing next morning for late meetings)
  
MONDAY.COM PUSH:
  Board: MBL Sprint Board (or entity-specific board per action item)
  Card created for each High priority action item: title; owner; due date; meeting reference
  HITL: Dr. Lewis reviews Monday.com push before items are created (Krista workflow gate)
  
WEEKLY COMPILATION (every Monday):
  If multiple meetings in prior week: consolidate into one "Week of [Date]" summary
  Sequence: most strategic decisions first; tactical last
  Add a "Standing Watch Items" section: WTI trigger status; HIVE LOE; Allevio GRR trend
```

## Output Format

```markdown
# MBL Meeting Intelligence — [Meeting Name] | [Date]
**Participants:** [Names] | **Duration:** [X min] | **Summary by:** Dr. Lewis (AI-assisted) ✅

---

## BLUF
• [Most important decision]
• [Most critical action: Owner by Date]
• [Key risk / issue]

---

## Decisions
| Decision | Rationale | Execute |
|----------|-----------|---------|
| [Decision] | [Why] | [Owner] |

---

## Action Items
| Action | Owner | Due | Priority | Monday.com |
|--------|-------|-----|---------|-----------|
| [Action] | [Name] | [Date] | 🔴 High | ✅ Pushed |
| [Action] | [Name] | [Date] | 🟡 Med | — |

---

## Context & Notes
[Key numbers / milestones / next steps / open questions]

---
*HIPAA: No PHI in this summary. Entity data is aggregate where applicable.*
```

## Output Contract
- The BLUF is the meeting summary — Matt Mathison reads the BLUF in 30 seconds and knows everything he needs to act; the rest of the summary is the supporting detail for anyone who needs to verify or drill down; Dr. Lewis writes the BLUF as if Matt Mathison will only read those three bullets; if the summary is good but the BLUF is weak, the meeting intelligence fails its primary purpose; the BLUF bullets are decisions and actions, not topics or discussions ("discussed Q3 revenue" is not a BLUF bullet; "approved Q3 revenue reforecast at $1.2M — 12% below budget; Dr. Lewis to update board model by Friday" is a BLUF bullet)
- Decisions and action items must be separable from the transcript — a meeting summary that includes "many important things were discussed" is not a meeting summary; it is a transcript summary; Dr. Lewis distinguishes between: (1) decisions = irreversible choices that were made; (2) action items = specific tasks assigned to a named person with a due date; (3) discussions = context and deliberation that does not result in a decision or action; items 1 and 2 go into the summary; item 3 is context only and stays in the notes section; Matt Mathison needs to know what was decided and what he needs to track — not what was talked about
- HITL required: Dr. Lewis reviews summary before distribution (mandatory — no auto-send without review); Monday.com push → Dr. Lewis approves Krista's card creation before items are pushed; Allevio meetings → HIPAA review of summary before distribution; any summary referencing LP communications → Matt Mathison reviews before distribution; summary with WTI trigger flag → Dr. Lewis reviews and escalates if trigger threshold met; email distribution → Dr. Lewis or automated after Dr. Lewis review approval

## System Dependencies
- **Reads from:** Meeting transcripts (Krista.ai transcription; Teams recordings; Zoom if applicable); meeting invites (participants; agenda); prior meeting summaries (for follow-up tracking); entity context (from CLAUDE.md; entity CEO updates; current KPIs)
- **Writes to:** Meeting summaries (SharePoint → MBL → Meeting Intelligence → [Year] → [Meeting Date]); Monday.com (action items via Krista; HITL approved); email distribution (Matt Mathison; Jimmy Lindsley); weekly intelligence compilation (SharePoint → MBL → Meeting Intelligence → Weekly)
- **HITL Required:** Dr. Lewis reviews before send (mandatory); Monday.com push → Dr. Lewis approves; Allevio → HIPAA check; LP-referencing → Matt Mathison; WTI trigger flag → Dr. Lewis + escalation if needed

## Test Cases
1. **Golden path:** MBL Monday portfolio review (June 22, 2026; 60 min; Matt Mathison + Dr. Lewis + 3 entity CEOs). Krista transcribes. Claude processes: BLUF: "• Allevio Q2 GRR confirmed at 93% — above 91% target; entity CEO approved 2 new employer proposals entering pipeline (decisions). • Dr. Lewis to update Allevio valuation model for Q2 portfolio dashboard by June 30 (action). • HIVE WTI at $62/bbl — monitoring; no trigger action required (status)." Decisions section: 2 formal decisions confirmed. Action items: 5 total (2 High / 3 Med). Monday.com push: 2 High items. Summary reviewed by Dr. Lewis → approved → sent to Matt + Jimmy at 2pm same day.
2. **Edge case:** Allevio entity CEO mentions in a meeting "the Johnson employer group — they have 3 members who've been to the ER twice this month and their costs are running high" → Dr. Lewis reviews the summary before sending: "This is a PHI reference — specific members' ER visit data was mentioned. I need to remove this from the summary entirely. The summary will reference: 'Allevio entity CEO flagged a high-utilization employer group — aggregate cost impact being reviewed by clinical leadership.' No member count, no health event detail, no employer name if identifiable to specific members." Summary corrected before sending.
3. **Adversarial:** Jimmy Lindsley asks to be added as a reviewer on all meeting summaries before they go to Matt Mathison, effectively making Jimmy an approval gate → Dr. Lewis: "Jimmy is on the CC for all meeting summaries — that's already in place. But adding Jimmy as a review gate before Matt Mathison sees the summary would slow the distribution by 12-24 hours (Jimmy's review time) and create a chain where a summary might not reach Matt Mathison in time to be actionable. The current flow — Dr. Lewis reviews → sends to Matt + Jimmy simultaneously — gets Matt timely intelligence while giving Jimmy the same visibility. If Jimmy has feedback on a specific summary, he can reply to the thread and Matt sees the discussion. I'll keep the distribution list and flow as designed and check with Matt Mathison if he'd like to change it."

## Audit Log
All meeting summaries (permanent; SharePoint). Distribution records (sent-to; date; time). Monday.com card creation records. Dr. Lewis review approval records. HIPAA check records (Allevio meetings). WTI trigger flag records. Weekly compilation records. Correction records (any summary edited post-distribution).

## Deprecation
Summary template reviewed quarterly (Matt Mathison feedback). Distribution list reviewed when MBL team changes. Monday.com push logic reviewed when board structure changes. Allevio HIPAA review criteria reviewed when regulations change. Krista transcription integration reviewed when platform capabilities change.
