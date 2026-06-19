---
name: ops-monday-manager
description: "Manage MBL Partners Monday.com boards, workflows, and project tracking. Use when the user says 'Monday.com', 'monday board', 'monday workflow', 'create a monday item', 'update monday', 'monday task', 'monday project', 'monday sprint', 'monday automation', 'monday dashboard', 'monday pulse', 'monday status', 'monday update', 'track on monday', 'add to monday', 'monday board setup', 'monday board design', 'monday board template', 'monday integration', 'create a board', 'create a task', 'create an item', 'new monday item', 'monday action item', 'push to monday', 'monday push', 'meeting action to monday', 'add action item', 'meeting intelligence monday', 'monday reporting', 'monday status report', 'monday metrics', or 'monday OKR'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--board <mbl-portfolio|allevio|hive|column6|ai-projects|specific>] [--action <create-item|update|dashboard|automation|design|report>] [--entity <all|specific>] [--type <task|project|okr|sprint|action>]"
---

# Ops Monday Manager

Manage MBL Partners Monday.com boards, workflows, and project tracking — configuring boards, creating and updating items, designing automations, and ensuring Monday.com is the reliable source of truth for project status, action items, and OKR progress across the MBL portfolio. Monday.com is MBL's primary work management system: it connects to Krista.ai for meeting intelligence (action items from meetings push directly to Monday.com boards), tracks portfolio projects, and gives Matt Mathison a clear view of what is in progress across the organization without requiring him to ask for status updates.

## When to Use
- Creating or updating a Monday.com item (action item; project; task)
- Designing a new board for an entity or project
- Setting up a Monday.com automation
- Meeting action items need to be pushed to Monday.com
- Matt Mathison asks for the status of a project or initiative

## Monday.com Framework

```
MBL MONDAY.COM ARCHITECTURE:

  WORKSPACE STRUCTURE:
    MBL Portfolio (main workspace)
    ├── Portfolio Oversight (Matt Mathison primary board)
    ├── AI Projects & Systems (Dr. Lewis primary board)
    ├── Allevio (Allevio entity board)
    ├── HIVE Partners (HIVE entity board)
    ├── Column6 / Siprocal (Column6 entity board)
    └── Meeting Intelligence (Krista.ai integration board)
    
  PORTFOLIO OVERSIGHT BOARD (Matt Mathison's view):
    Purpose: Single view of all cross-portfolio priorities
    Groups:
      - Strategic Initiatives (Matt's active priorities)
      - Capital Decisions (pending capital approvals)
      - Escalations (anything requiring Matt's decision)
      - Completed This Week (wins to acknowledge)
    Columns: Item | Entity | Owner | Priority | Status | Due Date | Notes
    Update cadence: Monday pulse pushes updates; Dr. Lewis reviews daily
    
  AI PROJECTS BOARD (Dr. Lewis primary):
    Purpose: Track all AI systems, integrations, and Krista.ai workflow development
    Groups:
      - Active Development
      - Pending HITL Approval
      - Testing/Validation
      - Deployed
      - Backlog
    Columns: Item | System | Phase | Status | Blockers | Est. completion
    
  ENTITY BOARDS (one per entity):
    Purpose: Track entity-level projects and priorities
    Standard groups:
      - Now (this week)
      - Next (coming 30 days)
      - Later (30-90 days)
      - Blocked (needs resolution)
      - Done (rolling archive)
    Owner: Entity CEO manages board; Dr. Lewis has view access
    
  MEETING INTELLIGENCE BOARD (Krista.ai integration):
    Purpose: Receive action items from meeting transcriptions automatically
    Source: Krista.ai → Monday.com MCP integration
    Columns: Action Item | Meeting | Assigned To | Due Date | Status
    Process: Action items identified by Krista.ai → pushed to this board → entity CEO assigns

ACTION ITEM WORKFLOW (from meetings):

  STEP 1 — MEETING CAPTURE (Krista.ai):
    Krista.ai transcribes and identifies action items from MBL meetings
    Format: "[Person] will [action] by [date]"
    
  STEP 2 — MONDAY.COM PUSH (via MCP integration):
    Action items pushed to Meeting Intelligence board automatically
    Each item: Action description | Responsible party | Deadline | Meeting source
    
  STEP 3 — ASSIGNMENT AND TRACKING:
    Dr. Lewis reviews board after each meeting (same day)
    Items assigned to correct owner; due dates confirmed
    Blocked items: move to Blocked group with blocker description
    
  STEP 4 — WEEKLY STATUS PULSE:
    Monday: Dr. Lewis reviews all boards for overdue items
    Items overdue >2 days: follow up with item owner
    Items overdue >5 days: escalate to entity CEO
    Items assigned to entity CEO overdue >5 days: Dr. Lewis notifies Matt

BOARD DESIGN PRINCIPLES:

  □ Maximum 6 status options (too many = no one knows which to use)
  □ Standard statuses: Not started / In progress / Blocked / Done / Cancelled
  □ Due dates on every item (undated items are wishes, not commitments)
  □ Every item has a single owner (not "Team" — one named person)
  □ Subitems for complex tasks (main item = milestone; subitems = tasks)
  □ Automations for status changes (Done → notify Matt if on Portfolio board)
  □ Dashboard for Matt: filter to his direct assignments + Escalations group

MONDAY.COM AUTOMATIONS (key automations to configure):

  1. When item moves to "Escalations" group → notify Matt Mathison
  2. When due date passes and status ≠ Done → notify item owner
  3. When status = "Blocked" → notify Dr. Lewis
  4. When Krista.ai action item created → assign to responsible party
  5. When item in "Capital Decisions" group is approved → move to "Portfolio Oversight" / In Progress
```

## Output Format

```markdown
# Monday.com Board Update — [Board Name] — [Date]
**Updated by:** Dr. Lewis | **For:** Matt Mathison / Entity CEO

---

## New Items Added

| Item | Board | Owner | Due | Priority |
|------|-------|-------|-----|---------|
| [Action from Monday pulse meeting] | Portfolio Oversight | [Owner] | [Date] | High |

---

## Overdue Items (attention required)

| Item | Board | Owner | Due | Days overdue | Action |
|------|-------|-------|-----|-------------|--------|
| [Item] | [Board] | [Owner] | [Date] | [N] | Follow up sent |

---

## Blocked Items

| Item | Board | Blocker | Escalate to |
|------|-------|---------|------------|
| [Item] | [Board] | [Description] | [Person] |
```

## Output Contract
- Every action item gets a due date and owner before leaving Dr. Lewis's inbox — an action item without a due date and a named owner is a wish; when Krista.ai pushes action items from meetings, Dr. Lewis reviews the same day, assigns a named owner (not "Team"), and sets a specific due date; items that arrive without clear ownership or dates are clarified with the entity CEO before the end of the day; undated items on Monday.com are a process failure
- Overdue items are not silently ignored — the Monday.com board is not a graveyard; Dr. Lewis reviews all boards every Monday and flags items that are overdue; the escalation cadence is: Day 2 overdue = owner follow-up; Day 5 overdue = entity CEO notification; Day 10 overdue = Matt Mathison awareness (if the item was on the Portfolio Oversight board or is blocking a capital decision)
- Matt's board is always current — the Portfolio Oversight board is the one board that Dr. Lewis maintains to a higher standard than any other; it reflects what is actually happening in the portfolio, not what was planned; a board that shows items as "In Progress" when they are actually stalled is worse than no board; Matt trusts the Portfolio Oversight board because Dr. Lewis keeps it honest
- HITL required: Matt Mathison is the only one who can move items into or out of the "Capital Decisions" group (those require his attention and decision); any automation that notifies external parties (LPs; board members) requires explicit configuration approval from Matt; Monday.com board access for entity CEOs is view-only for the Portfolio Oversight board (they don't edit Matt's view); Dr. Lewis has admin access to configure boards and automations

## System Dependencies
- **Reads from:** Krista.ai (meeting action items via MCP integration); ops-portfolio-cadence (meeting structure informs board design); ops-okr-program (OKR items on Monday.com boards); ops-action-tracker (action items tracked here)
- **Writes to:** Monday.com boards (all entities); Portfolio Oversight (Matt Mathison's primary board); Meeting Intelligence board (Krista.ai push destination); automations (configured per board design)
- **HITL Required:** Matt Mathison owns Portfolio Oversight board priorities; Capital Decisions group requires Matt to move/decide; external notification automations require Matt approval; board access control (who sees what) designed by Dr. Lewis, approved by Matt for Portfolio Oversight; new entity boards require entity CEO co-design

## Test Cases
1. **Golden path:** Monday morning post-weekly-pulse; 4 action items identified in the meeting: (1) Dr. Lewis to renew Column6 DSP contract — due Friday; (2) Allevio CEO to confirm employer group renewal list — due Wednesday; (3) Matt to review HIVE capex plan — due Thursday; (4) Dr. Lewis to prepare LP Q2 report draft — due next Monday. All 4 pushed to Monday.com: Portfolio Oversight board (items 1, 3, 4); Allevio board (item 2 — direct to Allevio CEO). Due dates set. Owners confirmed. By Wednesday: item 2 (Allevio CEO) shows "In Progress" — on track. Item 3 (Matt) is "Not Started" — flagged with a 1-line reminder: "Matt — HIVE capex plan is on your Monday.com board, due Thursday. Let me know if you need the financial summary again."
2. **Edge case:** Krista.ai pushes an action item that says "John will handle the vendor thing" — too vague to be actionable → Dr. Lewis: "This action item from the Monday Krista.ai board is too vague to track: 'John will handle the vendor thing.' I'm pulling the meeting transcript context. The discussion was about the Column6 DSP cost increase — John (Dr. Lewis) agreed to renegotiate the DSP contract. I'm updating this item to: 'Dr. Lewis: Renegotiate The Trade Desk contract — target 12% reduction; complete by June 30.' Added to AI Projects board + Portfolio Oversight board. Owner: Dr. Lewis. Due: June 30."
3. **Adversarial:** An entity CEO doesn't update their Monday.com board and items sit "Not Started" for 3 weeks → Dr. Lewis: "I've noticed [Entity CEO]'s Monday.com board has 7 items that have been 'Not Started' for 3 or more weeks. Before escalating, I want to understand if: (a) the items are actually being worked but not updated (board maintenance failure); (b) the items are genuinely stalled (need to understand why); or (c) the items are no longer relevant (should be cancelled or deprioritized). I'm reaching out to [Entity CEO] directly: 'I noticed [N] items on your Monday.com board haven't been updated in 3 weeks. Can you spend 10 minutes updating statuses so I have an accurate picture for Matt's weekly pulse? If any of these are blocked, let me know and I'll help clear the path.' If I don't hear back in 24 hours, I'm flagging to Matt."

## Audit Log
Board configuration history retained (design changes). Action item creation and completion records retained (Krista.ai → Monday.com pipeline). Overdue item escalation records retained. Board access control records retained. Automation configuration records retained.

## Deprecation
Retire or rebuild when Monday.com is replaced by a different project management system, or when Krista.ai's meeting intelligence integration matures to a point where action items are routed directly to entity CEOs without Dr. Lewis's manual review layer.
