---
name: exec-action-tracker
description: "Track, follow up on, and close executive action items across MBL Partners. Use when the user says 'action items', 'track action items', 'follow up on action items', 'what action items are open', 'what needs follow-up', 'open action items', 'action item review', 'action item tracker', 'what did we commit to', 'meeting commitments', 'what is pending', 'what is outstanding', 'what should we follow up on', 'who owes what', 'accountability tracker', 'follow-up tracker', 'open commitments', 'what is due this week', 'escalation tracker', 'what is overdue', 'push action items to Monday.com', 'Monday.com update', 'post to Monday', 'log the action items', 'weekly follow-up', or 'commitment review'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--source <meeting|LP|board|CEO|ad-hoc>] [--status <open|overdue|complete>] [--entity <all|MBL|Allevio|HIVE|Column6>] [--action <log|review|escalate|push-Monday>]"
---

# Exec Action Tracker

Track, follow up on, and close executive action items across MBL Partners — maintaining the accountability infrastructure that ensures commitments made in meetings, LP calls, and board sessions are actually executed and closed. Meeting intelligence without action tracking is noise: it records what was said but doesn't ensure anything gets done. The action tracker is the link between Matt Mathison's meetings (exec-meeting-prep), the weekly briefing (exec-ceo-briefing), and the portfolio operating rhythm. This is Meeting Intelligence Phase 2 — the weekly action item push to Monday.com.

## When to Use
- After any meeting (log action items within 24 hours)
- Monday morning (weekly action item review for the CEO briefing)
- An item is overdue (escalate per protocol)
- A board or LP commitment is due (proactive follow-up before the deadline)
- Matt Mathison asks "what's still open from the portfolio review?" or similar
- Preparing the executive dashboard (exec-kpi-dashboard) action item section

## Action Tracker Framework

```
ACTION ITEM STANDARDS:

  Every action item must have:
    □ Title: What is being done (verb + outcome, not "discuss X" — "decide on X by [date]")
    □ Owner: One name (not "the team" or "Dr. Lewis and the CEO")
    □ Due date: Specific date (not "next week" or "soon")
    □ Source: Where this came from (meeting title + date; LP call; board session)
    □ Status: Open / In Progress / Complete / Overdue / Cancelled
    □ Priority: P1 (blocks something else), P2 (has a hard deadline), P3 (important but flexible)
    
  Action items that fail these standards are rewritten before being logged.
  An action item that says "follow up on the thing we discussed" is not an action item.
  
ESCALATION PROTOCOL:

  Day 0: Action item logged
  Day 7 (7 days before due date): Dr. Lewis sends a reminder to the owner
  Day 0 (due date): If not complete, item is flagged as Overdue in the tracker
  Day 1 (1 day overdue): Dr. Lewis notifies the owner directly
  Day 7 (7 days overdue): Dr. Lewis escalates to Matt Mathison
  Day 14 (14 days overdue): Matt Mathison directly addresses with the owner
    ("this has been pending for 2 weeks — what needs to happen to close it?")
  Day 21 (21 days overdue): Matt Mathison decision: reroute, kill, or force completion
    The item is not allowed to stay "in progress" indefinitely
  
  Exceptions: Items with external dependencies (legal review, regulatory, partner timeline)
    These get a "waiting on external" flag and are not escalated until the external dependency
    resolves — but they are still reviewed weekly to confirm they haven't gone stale.

MONDAY.COM PUSH (Meeting Intelligence Phase 2):

  After every meeting that generates action items, Dr. Lewis pushes to the relevant
  Monday.com board within 24 hours:
    □ Board: MBL - Matt Mathison (all MBL-level items)
    □ Board: Allevio - Matt Mathison (Allevio items)
    □ Board: HIVE Partners (HIVE items)
    □ Board: Column6 (Column6 items)
    
  Monday.com item format:
    Item name: [Action title — verb + outcome]
    Owner: [One person from the Monday.com user list]
    Due date: [Specific date]
    Status: Working on it / Stuck / Done
    Notes: [Source meeting + date; any relevant context]
    
  Monday.com is the system of record for open action items.
  The exec-action-tracker is the intelligence layer that monitors Monday.com,
  identifies overdue items, and escalates appropriately.
  
WEEKLY ACTION ITEM REVIEW (Monday, before CEO briefing):

  Dr. Lewis reviews all open items in Monday.com:
    □ What closed since last week? (celebrate and confirm)
    □ What is now overdue? (flag for CEO briefing)
    □ What is due this week? (include in CEO briefing Decisions section)
    □ What external dependencies have resolved? (unblock waiting items)
    
  Output: Action item section of the CEO briefing (exec-ceo-briefing):
    "Decisions you need to make this week" = items due this week where Matt's input is needed
    "I'm handling" = items due this week where Dr. Lewis is the owner
    "Overdue items" = anything past due that hasn't been flagged yet

LP COMMITMENT TRACKING (special category):

  Any commitment Matt Mathison makes on an LP call or in LP correspondence is logged
  as a P1 action item immediately after the call.
  LP commitments have a zero-tolerance policy for overdue status — if a commitment
  to an LP is missed without proactive communication, it erodes the relationship.
  
  LP commitment protocol:
    Logged immediately after call (not "tomorrow")
    Reminder sent 3 days before due date (not 7)
    If at risk of missing: Matt is notified ASAP; a proactive LP email is drafted
    (exec-investor-relations) explaining the delay
```

## Output Format

```markdown
# Action Item Review — Week of [Date]
**Prepared by:** Dr. Lewis | **For:** exec-ceo-briefing

---

## Overdue Items (immediate attention)

| Item | Owner | Due | Days overdue | Escalation level |
|------|-------|-----|-------------|-----------------|
| [Item] | [Name] | [Date] | [N] | Day 7: Matt notification |

---

## Due This Week

| Item | Owner | Due | Priority | Source |
|------|-------|-----|---------|--------|
| [Item] | [Name] | [Date] | P1 | [Meeting name + date] |

---

## Completed Since Last Week

| Item | Owner | Completed | Source |
|------|-------|---------|--------|
| [Item] | [Name] | [Date] | [Meeting] |

---

## Monday.com Push — Pending Confirmation

| Item | Board | Owner | Status |
|------|-------|-------|--------|
| [Item] | [Board name] | [Name] | Pushed ✅ / Pending |

---

## Waiting on External (No escalation yet)

| Item | Owner | External dependency | Expected resolution |
|------|-------|-------------------|-------------------|
| [Item] | [Name] | [Who/what we're waiting on] | [Expected date] |
```

## Output Contract
- 24-hour logging rule — every action item from every meeting must be logged within 24 hours; an item logged 3 days later may be incomplete or forgotten; Dr. Lewis logs action items the same day as the meeting, preferably immediately after; if Dr. Lewis isn't in a meeting, Matt Mathison sends a post-meeting note and Dr. Lewis logs within 1 hour of receiving it
- One owner, one due date — action items with shared ownership are action items that don't get done; if two people own something, neither person feels fully responsible; Dr. Lewis rewrites any shared-ownership action item into two separate items, each with one owner; similarly, "ASAP" and "next week" are not due dates; a due date is a specific date
- LP commitments are P1, always — no LP commitment can be allowed to go past due without Matt Mathison awareness and a proactive communication plan; Dr. Lewis tracks LP commitments in a separate sub-view of the tracker and reviews them daily (not weekly); a missed LP commitment with no communication is a trust-destroying event; Dr. Lewis catches it before it happens
- HITL required: Dr. Lewis manages the action tracker and Monday.com push; Matt Mathison receives the weekly action item review as part of the CEO briefing; any 7-day overdue item triggers Matt notification; any LP commitment at risk of being missed triggers Matt notification immediately; Matt Mathison is the final escalation point for all 21-day overdue items; entity CEO overdue items (items they own) are escalated through Dr. Lewis to Matt Mathison

## System Dependencies
- **Reads from:** Krista meeting transcripts (action items extracted from meeting recordings — Meeting Intelligence Phase 2); exec-meeting-prep (post-meeting: what commitments were made); exec-ceo-briefing (decisions Matt makes in response to the CEO briefing become action items); exec-board-communication (post-board action items); exec-investor-relations (LP call commitments); exec-portfolio-review (quarterly review action items)
- **Writes to:** Monday.com boards (MBL, Allevio, HIVE, Column6 — action items pushed within 24 hours of each meeting); exec-ceo-briefing (overdue items and this-week decisions); exec-kpi-dashboard (action item completion rate as a portfolio operations metric); exec-portfolio-review (prior quarter action item status for the review);exec-investor-relations (LP commitment status)
- **HITL Required:** Dr. Lewis manages all logging and Monday.com pushes; Matt Mathison receives weekly review in CEO briefing; 7-day overdue items trigger Matt notification; LP commitment at-risk triggers Matt notification immediately; Matt Mathison is the final escalation for 21-day overdue items; entity CEO overdue items escalated through Dr. Lewis to Matt

## Test Cases
1. **Golden path:** Portfolio review on Thursday generates 6 action items; Dr. Lewis logs all 6 in Monday.com by Thursday 5 PM; two items are Dr. Lewis-owned (P2, due in 2 weeks), two are entity CEO-owned (P2, due in 10 days), two are Matt-owned (P1, due by next Tuesday); Monday morning weekly review: "Decisions due this week: 1. Allevio clinical budget approval (Matt owns — due Tuesday). 2. Column6 CSM job description review (Matt reviews — due Wednesday). I'm handling: strategy deck update (due Thursday), HIVE competing operator call (due Friday). No overdue items." Matt approves both items by Wednesday; Dr. Lewis marks complete; all 6 items cleared within 2 weeks. Completion rate: 100% on schedule.
2. **Edge case:** Allevio CEO misses a P2 action item (deliver updated claim ratio model) by 3 days → Dr. Lewis flags it as overdue on Day 1 (direct email to Allevio CEO); no response by Day 3 → Dr. Lewis escalates to Matt: "Allevio CEO has a 3-day overdue item — the updated claim ratio model that was due for the Board prep. I need this by Friday for the board package. I've emailed [CEO name] directly. Should I call them or would you prefer to reach out?" Matt: "Call them." Dr. Lewis calls; Allevio CEO: "I had it partly done — I'll finish it today." Model delivered same day. Action item closed Day 4. No board package impact.
3. **Adversarial:** Matt pushes back on the escalation timeline: "7 days overdue before I'm notified is too long — I'd rather know sooner." → Dr. Lewis: "Fair. Let me adjust: I'll notify you at Day 3 overdue for P1 items and Day 5 for P2 items. P3 items stay at Day 7. Does that work?" Matt: "Yes." Tracker updated; escalation thresholds adjusted; Dr. Lewis documents the change. Going forward: Matt is notified earlier; fewer surprises about stale action items.

## Audit Log
All action items retained (item; owner; source meeting; due date; actual completion date; escalation events). Monday.com push records retained (what was pushed; when; to which board). LP commitment records retained (separate sub-view; all commitments and status). Escalation records retained (when escalated; to whom; outcome). Overdue analysis retained quarterly (what categories of items go overdue most frequently; root cause).

## Deprecation
Retire when MBL has a Chief of Staff who manages action tracking and Monday.com operations — with Dr. Lewis providing AI strategy items and Krista integration inputs and Matt Mathison retaining the weekly review cadence.
