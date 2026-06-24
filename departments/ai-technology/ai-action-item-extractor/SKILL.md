---
name: ai-action-item-extractor
description: "Extract and structure action items from MBL meeting transcripts and documents. Use when the user says 'action items', 'extract action items', 'pull action items', 'action item list', 'what are the action items', 'tasks from the meeting', 'to-dos from the meeting', 'next steps from the meeting', 'follow-ups from the meeting', 'action item tracker', 'action item summary', 'action items for Monday.com', 'push action items', 'action items for Matt', 'action items for Jimmy', 'action items for the entity CEO', 'who owns what', 'ownership list', 'action item owners', 'due dates from the meeting', 'deliverables from the meeting', 'commitments from the meeting', 'what did everyone agree to do', 'what is on my plate', 'what is on Matt s plate', 'task extraction', 'deliverable extraction', 'follow-up extraction', 'outstanding actions', 'open actions', or 'open items from the meeting'."
metadata:
  version: 1.0.0
  tier: ai-technology
  owner: Dr. John Lewis
argument-hint: "[--source <meeting|document|transcript>] [--push-to <monday|email|both|none>] [--entity <mbl|allevio|hive|column6>]"
---

# AI Action Item Extractor

Extract and structure action items from MBL meeting transcripts, documents, and conversations — producing an owned, time-bound, prioritized action item list ready for Monday.com push or direct assignment. Action items without owners and due dates are discussion artifacts, not commitments; this skill converts discussion into accountable execution.

## When to Use
- After any MBL meeting to extract and assign action items
- From email threads or documents where action items are embedded in narrative
- Before Monday.com push in the Meeting Intelligence workflow
- For weekly action item status review (tracking completion)

## Action Item Extraction Framework

```
WHAT COUNTS AS AN ACTION ITEM:
  YES — action items:
    Explicit commitments: "I'll send that by Friday" / "Let me take that" / "I'll look into it"
    Implicit assignments: "Dr. Lewis, can you update the model?" / "Entity CEO to present at next meeting"
    Decisions requiring execution: "We approved the budget — Dr. Lewis to enter in QuickBooks"
    Follow-ups with external parties: "Dr. Lewis to follow up with Matt's attorney on the LOI"
    
  NO — not action items:
    Discussions without commitment: "We should probably look at that someday"
    Information shared: "The LOE was $19/BOE last month" (data; not an action)
    Standing processes: "Payroll runs on Tuesday" (not a meeting-generated action)
    Aspirational statements: "We want to grow Allevio faster" (no owner; no date)
    
ACTION ITEM STRUCTURE:
  Action: [Specific; starts with action verb: Update; Send; Review; Follow up; Prepare; Confirm]
  Owner: [Named person responsible — default to the person who committed]
  Due date: [Specific date when possible; else: "by next meeting" or "EOW" = End of Week]
  Priority: High / Medium / Low
    High: blocks another decision; has external deadline; Matt Mathison needs it to act
    Medium: important but not blocking; 1-2 week timeline
    Low: nice-to-have; no active blocker; 2-4 week timeline
  Source: [Meeting name / date / document name] — for audit traceability
  
COMMON ACTION ITEM OWNERS AT MBL:
  Dr. Lewis: finance; AI/tech; integrations; analysis; model updates; vendor management
  Matt Mathison: external communications; final approvals; LP/investor relations; deal decisions
  Jimmy Lindsley: operations coordination; internal follow-ups assigned in meeting
  Entity CEO (name-specific): entity-specific execution; hiring; vendor; operational decisions
  Callie/Fitz: THRIVE playbook; skills testing; internal training coordination
  
PRIORITY OVERRIDE RULES:
  Any action item owned by Matt Mathison = at least Medium; push to Monday.com
  Any action item with an external deadline (LP distribution; regulatory filing; closing date) = High
  Any action item blocking a deal, acquisition, or LP communication = High
  Any action item that Dr. Lewis committed to in front of Matt Mathison = High (self-imposed standard)
  
MONDAY.COM PUSH LOGIC:
  All High priority items → push to relevant Monday.com board (MBL sprint; entity-specific board)
  Medium priority items → push if space on board; else Dr. Lewis tracks in AI document
  Low priority → not pushed to Monday.com; tracked in meeting summary document only
  HITL gate: Dr. Lewis reviews Monday.com push list before any items are created
  
ALLEVIO FILTER:
  Action items from Allevio meetings: PHI check before creating any action item
  Allevio action items must NOT reference individual member names or health events
  Correct: "Allevio entity CEO to update employer onboarding docs" ✅
  Incorrect: "Dr. Smith to follow up with [member name] about their care plan" ❌ → rephrase or exclude
```

## Output Format

```markdown
# Action Items — [Meeting Name] | [Date]
**Extracted by:** Dr. Lewis (AI-assisted) | **Source:** [Transcript/Document]

---

## High Priority

| # | Action | Owner | Due | Monday.com |
|---|--------|-------|-----|-----------|
| 1 | Update Allevio valuation model for Q2 portfolio dashboard | Dr. Lewis | June 30 | ✅ Pushed |
| 2 | Follow up with Matt's attorney on LOI draft — request redlined version | Dr. Lewis | June 25 | ✅ Pushed |

---

## Medium Priority

| # | Action | Owner | Due | Monday.com |
|---|--------|-------|-----|-----------|
| 3 | Present updated LOE analysis at July portfolio review | HIVE entity CEO | July 15 | — |

---

## Low Priority

| # | Action | Owner | Due |
|---|--------|-------|-----|
| 4 | Research alternative transcription quality tools | Dr. Lewis | July 31 |

---

*Total: [N] items | Monday.com: [N] pushed (pending Dr. Lewis review)*
*HIPAA check: No PHI in any action item ✅*
```

## Output Contract
- Action items must be atomic and executable — "follow up on the deal" is not an action item; "email [seller's broker] to confirm Q1 2026 financials received by June 30" is an action item; Dr. Lewis rewrites ambiguous commitments from the meeting into specific, executable actions; the test for a good action item: can the owner read this action item 7 days from now and know exactly what to do without needing to re-read the meeting transcript? If the answer is no, the action item needs more specificity
- Unowned action items are escalated, not left blank — if Dr. Lewis cannot determine who committed to an action from the transcript, he does not leave the owner field blank; he flags it: "Owner: [UNASSIGNED — Dr. Lewis to confirm with Matt Mathison / [name]]"; an unowned action item that is pushed to Monday.com creates confusion; the flag ensures a human decides ownership before the item is treated as actionable; Dr. Lewis follows up with the relevant person within 24 hours of distribution to assign ownership
- HITL required: Monday.com push → Dr. Lewis reviews push list before items are created (mandatory gate in Meeting Intelligence workflow); High priority items assigned to Matt Mathison → Dr. Lewis confirms Matt is aware before Monday.com push; Allevio action items → PHI check before push; any action item referencing a regulatory deadline → Dr. Lewis verifies the date against the actual regulatory calendar before distribution; action item list distribution → part of meeting summary distribution (same review gate)

## System Dependencies
- **Reads from:** Meeting transcripts (Krista.ai processed); meeting summaries (upstream in Meeting Intelligence workflow); email threads (if extracting from email); document content (if extracting from documents); prior meeting action items (for follow-up tracking and status)
- **Writes to:** Action item lists (embedded in meeting summaries; SharePoint); Monday.com (High priority items; HITL approved); weekly action item tracker (Dr. Lewis maintains running list of all open actions); status updates (weekly check-in with Matt Mathison on Matt's open actions)
- **HITL Required:** Monday.com push → Dr. Lewis reviews; Matt Mathison High priority items → Dr. Lewis confirms awareness; Allevio → PHI check; regulatory deadlines → Dr. Lewis verifies; action item list distribution → same gate as meeting summary

## Test Cases
1. **Golden path:** HIVE quarterly review (June 22, 2026; Matt Mathison + Dr. Lewis + HIVE entity CEO). Transcript processed. Dr. Lewis extracts: High (2): "Update HIVE production model for Q3 WTI sensitivity (Owner: Dr. Lewis; Due: June 30)" and "Confirm with Covercy team that Q2 royalty statements are finalized (Owner: HIVE entity CEO; Due: June 24)". Medium (1): "Prepare July LP distribution memo (Owner: Dr. Lewis; Due: July 10)". Low (1): "Research alternative LOE benchmarking sources for 2027 budget (Owner: Dr. Lewis; Due: August 1)". Monday.com push: 2 High items pushed to HIVE board (Dr. Lewis reviewed ✅). Action items distributed with meeting summary. HIPAA check: N/A (HIVE meeting).
2. **Edge case:** Meeting transcript has a commitment but no explicit owner — "Yeah, someone should really get the insurance certificates renewed before July 15" → Dr. Lewis: "This is a commitment without an owner. Based on the meeting context, insurance certificate renewal is typically handled by [entity CEO]. I'll flag this action item as: 'Renew entity insurance certificates before July 15 — Owner: [UNASSIGNED — Dr. Lewis to confirm with entity CEO].' I'll follow up with the entity CEO by EOD to confirm ownership. If they confirm, I'll update the action item and push to Monday.com as High priority (July 15 external deadline)."
3. **Adversarial:** After distributing a meeting summary, Matt Mathison replies "you missed an action item — I agreed to call [LP name] by Friday" → Dr. Lewis: "You're right — I missed this. The commitment was made in the last 5 minutes of the call and the recording quality was lower toward the end (ambient noise from the parking lot). I'm adding it now: 'Call [LP name] re: Q3 distribution — Owner: Matt Mathison; Due: Friday June 27; Priority: High.' I'll push to Monday.com immediately. I'm also going to add a specific instruction to the action item extraction prompt: 'Review the last 10 minutes of every transcript twice — commitments made in closing remarks are frequently the most important and most often missed.' Thanks for catching it."

## Audit Log
Action item lists (all meetings; permanent in SharePoint; embedded in meeting summaries). Monday.com push records (what was pushed; when; Dr. Lewis approval record). HIPAA check records (Allevio meetings). Unassigned item resolution records. Missed action item corrections. Weekly action item status tracking. Matt Mathison-owned action items (tracked separately as leadership priority).

## Deprecation
Action item format reviewed quarterly based on Matt Mathison and entity CEO feedback. Priority thresholds reviewed when MBL's operational pace changes. Monday.com push logic reviewed when board structure changes. Allevio HIPAA filter reviewed annually. Owner list updated when MBL team changes.
