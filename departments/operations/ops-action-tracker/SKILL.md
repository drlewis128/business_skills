---
name: ops-action-tracker
description: "Track and manage action items across MBL Partners portfolio. Use when the user says 'action items', 'action item', 'action tracker', 'track an action', 'add an action', 'open actions', 'outstanding actions', 'actions from the meeting', 'meeting actions', 'follow up', 'follow-up items', 'who is responsible', 'what needs to be done', 'action list', 'open tasks', 'task tracker', 'task list', 'tasks outstanding', 'next steps', 'commitments', 'commitments tracker', 'pending items', 'items outstanding', 'nothing falling through the cracks', 'overdue actions', 'escalate action', 'action owner', 'who owns this', 'assign an action', 'capture the action', or 'action log'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--source <meeting|decision|escalation|self-assigned>] [--entity <allevio|hive|column6|mbl|all>] [--action <add|update|review|escalate|close>] [--owner <specific-person|all>] [--status <open|overdue|blocked|complete>]"
---

# Ops Action Tracker

Track and manage action items across MBL Partners portfolio — capturing commitments made in meetings, decisions, and escalations; assigning clear owners and due dates; and following up until every item is closed or explicitly cancelled. The action tracker is the operational immune system: it ensures that decisions don't evaporate, commitments are honored, and nothing falls through the cracks between weekly conversations. Dr. Lewis is the action tracker steward — he does not just track; he follows up, escalates when needed, and surfaces the pattern of overdue items that reveals where execution is breaking down.

## When to Use
- After any meeting (capture actions from meeting notes or Krista.ai)
- Weekly review (check for overdue items; escalate as needed)
- Before a portfolio cadence meeting (pull open action report for Matt)
- An item has been open for >5 days without update

## Action Tracker Framework

```
ACTION ITEM ANATOMY (every action must have):

  Description: Specific, verb-first. "Dr. Lewis to renegotiate DSP contract — target 12% reduction"
    Not: "Handle the DSP thing"
    Not: "DSP contract" (noun, not an action)
    
  Owner: Single named person (not "Team"; not "Dr. Lewis / CEO")
    If it's unclear who owns it: Dr. Lewis assigns before the meeting ends
    
  Due date: Specific calendar date (not "soon"; not "next week")
    Default: 5 business days from assignment if not specified
    
  Source: Where did this action come from? (Meeting name; decision; escalation)
  
  Entity: Which portfolio entity does this action affect?
  
  Status: Not started / In progress / Blocked / Complete / Cancelled

ACTION TRACKING LIFECYCLE:

  CAPTURE (same day as the event):
    Meeting actions: captured from Krista.ai meeting notes or manual notes
    Decision actions: captured when a capital or strategic decision is made
    Escalation actions: captured when an issue is escalated to Matt Mathison
    
  ASSIGN (within 24 hours):
    Owner assigned (single person)
    Due date confirmed with the owner (if not already set)
    Added to Monday.com board for the relevant entity
    
  MONITOR (daily for high-priority; weekly for others):
    Dr. Lewis reviews action tracker daily (5 minutes)
    High-priority items: daily status check
    Standard items: status check at Day 3 if not complete
    
  ESCALATE (when overdue):
    Day 2 overdue: direct message to item owner ("Quick check — [action] was due yesterday")
    Day 5 overdue: notify entity CEO ("[Action] is 5 days overdue. What's blocking?")
    Day 10 overdue: notify Matt Mathison if action is on Portfolio Oversight board or blocking a capital decision
    
  CLOSE:
    When complete: mark Done in Monday.com; Dr. Lewis confirms completion is real (not just "done" status clicked)
    When cancelled: document why it was cancelled (no silent cancellations)

WEEKLY ACTION REVIEW (Monday):

  Pre-weekly-pulse, Dr. Lewis prepares the action review:
    Open items: [N] total
    Overdue items: [N] (list)
    Items due this week: [N] (list)
    Newly completed last week: [N] (wins)
    
  Format for Matt Mathison's weekly pulse:
    "3 open items from last week are now overdue. All are with [entity] team. I've followed up. 
    No capital decisions are blocked by open items."

CATEGORIES OF ACTIONS:

  1. CAPITAL DECISIONS: Approval needed for investment or spend
     Owner: Matt Mathison (to decide) or Dr. Lewis (to prepare analysis for Matt)
     Priority: High; due date is typically within 1 week
     
  2. OPERATIONAL ACTIONS: Entity CEO or team members to execute
     Priority: Normal; due date per commitment made
     
  3. DR. LEWIS DELIVERABLES: Financial models; reports; analyses
     Priority: High (Matt is waiting); Normal (entity CEO is waiting)
     
  4. INFORMATION REQUESTS: Someone asked for data or a document
     Priority: High if from Matt Mathison; Normal otherwise
     Due: 24 hours for Matt requests; 48 hours for entity CEO requests
     
  5. ESCALATIONS: Issues requiring resolution
     Owner: The person who can resolve it
     Priority: Urgent if blocking other actions
```

## Output Format

```markdown
# Action Tracker Weekly Review — [Date]
**Prepared by:** Dr. Lewis | **For:** Weekly Pulse briefing

---

## Open Items Summary: [N] total | [N] overdue | [N] due this week

---

## Overdue Items (requires attention)

| Item | Owner | Due | Days overdue | Escalated to | Status |
|------|-------|-----|-------------|-------------|--------|
| [Column6 DSP contract] | Dr. Lewis | [Date] | 3 | N/A (Dr. Lewis self-assigns today) | In progress |
| [Allevio employer list] | Allevio CEO | [Date] | 6 | Allevio CEO (DM sent) | Awaiting response |

---

## Due This Week

| Item | Owner | Due | Status |
|------|-------|-----|--------|
| [LP Q2 report draft] | Dr. Lewis | [Date] | In progress |
| [HIVE capex review] | Matt Mathison | [Date] | Not started — ping today |

---

## Completed Last Week (wins)

| Item | Owner | Completed |
|------|-------|---------|
| [DSP renegotiation] | Dr. Lewis | [Date] — saved $42K |
```

## Output Contract
- Same-day capture is the standard — action items captured the next day are action items that got forgotten overnight; Krista.ai pushes meeting actions to Monday.com automatically; for actions not captured by Krista.ai (decisions made in Slack; ad-hoc conversations), Dr. Lewis captures them within the same working day; an action item that exists in someone's memory but not in the tracker is a commitment that is at high risk of being dropped
- Single owner, always — the enemy of accountability is shared ownership; "Dr. Lewis and the CEO will work on this" means neither will do it; every action item has one named owner, even if multiple people are involved in the work; the owner is the person Dr. Lewis follows up with; if the action involves multiple people, the owner is the person coordinating the others; Dr. Lewis assigns before leaving any meeting
- Cancellations are explicit — an action that stops being relevant doesn't disappear from the tracker; it is marked "Cancelled" with a 1-sentence explanation of why; silent cancellations create a tracker that fills with ghost items and loses credibility; Matt Mathison can see cancelled items and the reason — this is not a failure log, it is a record of how priorities evolved
- HITL required: Matt Mathison's action items (actions assigned to him) are never silently marked overdue without a direct communication; Dr. Lewis sends a brief message before marking any Matt action as overdue; capital decision actions that are overdue get an immediate escalation path (Matt is notified); any action where the entity CEO is overdue by >5 days without explanation becomes a portfolio cadence agenda item for the next weekly pulse; actions that are "complete" in Monday.com but not verifiably complete in reality are marked "In progress" by Dr. Lewis until confirmed

## System Dependencies
- **Reads from:** ops-monday-manager (Monday.com is the action item system of record); Krista.ai (meeting action items pushed to Monday.com); ops-portfolio-cadence (cadence meetings generate actions); ops-weekly-pulse (weekly review surfaces overdue items)
- **Writes to:** Monday.com boards (action items live here); weekly pulse briefing; escalation communications (direct to entity CEOs; Matt Mathison); ops-portfolio-cadence (overdue items raised in cadence meetings)
- **HITL Required:** Matt's actions: direct communication before marking overdue; capital decision actions: immediate escalation; entity CEO overdue >5 days → portfolio cadence agenda item; "complete" actions verified by Dr. Lewis before status confirmed; cancelled actions require documented reason (not silent deletion)

## Test Cases
1. **Golden path:** Monday morning review; 12 open action items; 2 overdue: (1) "Allevio CEO to submit Q2 OKR scores" — due 3 days ago; Dr. Lewis DMs Allevio CEO: "Quick check — Q2 OKR scores were due Tuesday. Can you submit by end of day today? I need them for the QBR deck." CEO responds: "Will send by 3 PM." Marked "In progress, expect today." (2) "Dr. Lewis to deliver LP Q2 report draft to Matt" — due tomorrow; status "In progress" — on track. Weekly pulse note: "2 overdue items: Allevio OKR scores (CEO committed to today by 3 PM); LP report draft (due tomorrow — on track). No capital decisions blocked."
2. **Edge case:** An action item is "complete" in Monday.com but Dr. Lewis realizes the underlying work was done superficially (action: "Review Allevio vendor contracts" — owner marked it complete but only reviewed 3 of 12 contracts) → Dr. Lewis: "I'm reopening this action. When I asked for the status, the review was described as 'done' but only 3 of 12 contracts were actually reviewed. The action is incomplete. I'm changing the status back to 'In Progress' and adding specificity to the description: 'Review all 12 Allevio vendor contracts — [N]/12 complete as of [date].' The owner will have a cleaner definition of done: review all contracts, not some. This isn't a performance issue — it's a communication issue. The action description was too vague to create a clear definition of done."
3. **Adversarial:** Matt wants to stop tracking actions formally and just use email because Monday.com "feels like overhead" → Dr. Lewis: "I hear the friction — no one likes more tools. But before we abandon the tracker, let me show you the 90-day data: we've had 73 actions since we started tracking. Of those, 68 (93%) were closed. The 5 that were abandoned were all abandoned explicitly with a documented reason. Before we had the tracker, I had no reliable way to answer 'what is Matt waiting for from the CEO?' with confidence. The tracker makes the weekly pulse take 5 minutes instead of 20. My proposal: keep the tracker but simplify it. Matt gets a single weekly email with: open items he's waiting on; his own open items; and any overdue items. No Monday.com login required for Matt — he just reads the email and replies with any changes. I generate the email from Monday.com. Does that work?"

## Audit Log
Action item history retained (created; assigned; due dates; status changes; completion). Escalation records retained. Cancellation records retained (with reasons). Weekly review records retained. Completion verification records retained.

## Deprecation
Retire manual action tracking when Krista.ai's meeting intelligence integration fully automates the action capture → assignment → Monday.com pipeline with sufficient reliability that Dr. Lewis's manual review is no longer the primary quality control.
