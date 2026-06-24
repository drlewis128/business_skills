---
name: meet-action-item-extractor
description: "extract action items from meeting, identify action items transcript, assign action items owners, action item deadline inference, monday.com task creation meeting, meeting follow up tasks, action item priority flagging, deduplicate action items across meetings, track action items commitments, meeting tasks for matt mathison, action item owner assignment, extract commitments meeting transcript, action item rollup, open action items meeting, action item format monday, meeting accountability tasks, action item due date, action item escalation, meeting output tasks, action item registry mbl"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[processed transcript ID or transcript text]"
---

# Meeting Action Item Extractor

This skill scans processed meeting transcripts to identify, assign, and format all action items captured during MBL meetings, then prepares them for push to Monday.com and inclusion in the weekly summary for Matt Mathison. It distinguishes genuine commitments from discussion noise, infers deadlines where none are stated, and deduplicates items that appear across multiple meetings.

## When to Use

- A processed transcript is ready and action items must be extracted before the weekly summary is built
- Matt Mathison requests a list of open action items across all entities from the current week
- A Monday.com board needs to be updated with new tasks from a completed meeting
- You need to check whether an action item from a prior week was re-committed in this week's meeting

## Action Item Extractor Framework

```
IDENTIFICATION CRITERIA
─────────────────────────────
HARD SIGNALS:
  - "[Name] will [verb phrase]"
  - "I'll take [deliverable]"
  - "Action on [name] to [verb phrase]"
  - "[Name] owns [deliverable]"
  - "Can you [name] handle [task]?" + affirmative response

SOFT SIGNALS (require confirmation via context):
  - "[Name] mentioned [task]" — only count if followed by acknowledgment
  - Rhetorical ownership ("someone should...") — NOT an action item unless named
  - Questions left open — flag as UNRESOLVED, not action item

EXCLUSION RULES:
  - Discussion of what should be done without named owner → OPEN QUESTION
  - Past-tense references to prior actions → check against prior action log
  - Matt Mathison making a suggestion to others → action item on recipient, not Matt

OWNER ASSIGNMENT
─────────────────────────────
PRIORITY MAPPING:
  Level 1 — Matt Mathison: strategic decisions, approvals, or commitments he made personally
  Level 2 — Entity CEO / Ops Lead: tactical execution within their entity
  Level 3 — MBL Team Member: research, coordination, documentation tasks
  Level 4 — External Party: vendor, partner, or prospect commitment — track separately

If owner is ambiguous: flag for HITL. Do NOT assign a default owner.

DEADLINE INFERENCE
─────────────────────────────
EXPLICIT:       Use stated date/time directly
RELATIVE:       "by end of week" → Friday 5PM local; "next meeting" → calendar lookup; "soon" → 5 business days
NONE STATED:    Assign default = 5 business days, flag as INFERRED
CRITICAL ITEMS: If escalation or Matt Mathison dependency, default = 2 business days

PRIORITY FLAGGING
─────────────────────────────
🔴 URGENT:    Blocks another action item; Matt Mathison dependency; revenue impact stated
🟡 HIGH:      Entity CEO deliverable; this-week deadline; named in last week's summary
🟢 STANDARD:  Routine task; team-level owner; no stated urgency

DEDUPLICATION
─────────────────────────────
- Compare against open action item registry before adding new item
- If same owner + similar deliverable + open status → flag as RE-COMMIT, not new item
- Re-commits escalate priority automatically
- If item was marked COMPLETE in registry but re-raised in meeting → reopen with note

MONDAY.COM TASK FORMAT
─────────────────────────────
Item Name:    [Action Item text — max 80 chars]
Assigned To:  [Owner full name]
Due Date:     [YYYY-MM-DD]
Status:       Not Started
Group:        [Entity name — Allevio | HIVE | Column6 | MBL HoldCo]
Priority:     [Urgent | High | Medium]
Notes:        [Source meeting ID + timestamp + verbatim quote]
```

## Output Format

```markdown
## Action Items — [Meeting Name] | [DATE]

**Source Transcript ID:** [ID]
**Extracted:** [n] items | **Deduplicated:** [n] re-commits | **Flagged for HITL:** [n]

---

### URGENT
| # | Action Item | Owner | Due | Priority | Source |
|---|-------------|-------|-----|----------|--------|
| 1 | [text] | [name] | [date] | 🔴 URGENT | [HH:MM:SS] |

### HIGH
| # | Action Item | Owner | Due | Priority | Source |
|---|-------------|-------|-----|----------|--------|

### STANDARD
| # | Action Item | Owner | Due | Priority | Source |
|---|-------------|-------|-----|----------|--------|

---

### RE-COMMITS (Previously Open Items)
- [Item text] — Owner: [name] — Originally due: [date] — Re-committed: [date]

### UNRESOLVED (Owner Unknown — HITL Required)
- [Item text] — Source: [HH:MM:SS] — Context: [brief]

---

**Monday.com Push Status:** [READY | PENDING HITL | BLOCKED — HIPAA HOLD]
```

## Output Contract

- **Every action item must have a named human owner before it is pushed to Monday.com or included in any summary sent to Matt Mathison.** Action items without owners are organizational debt — they create the illusion of accountability without the reality. Matt Mathison operates in a high-trust, high-velocity environment and relies on Monday.com as a ground-truth task board. An unowned task on that board undermines the system's credibility and forces him to spend time clarifying what should have been resolved during processing.

- **Re-commits must be flagged explicitly and escalated in priority rather than treated as new items.** When the same person re-commits to the same deliverable in a second or third meeting, it is a reliability signal — not a routine task update. Dr. Lewis uses re-commit patterns to identify execution risk at the entity level and may escalate to Matt Mathison. Silently overwriting a prior open item as if it were new hides this signal and defeats the purpose of cross-meeting tracking.

- **Deadline inference must be marked as INFERRED on any item where no explicit date was stated.** Matt Mathison and entity CEOs make resource allocation decisions based on due dates in Monday.com. A silently inferred date presented as a stated commitment creates false confidence and can result in missed handoffs or misaligned expectations between parties. The INFERRED tag preserves the distinction while still providing a working deadline for tracking.

## System Dependencies

### Reads from
- Processed transcript output from meet-transcript-processor
- Open action item registry (SharePoint or Monday.com — cross-meeting deduplication)
- MBL staff directory (owner name resolution and entity assignment)
- Microsoft Outlook calendar (deadline inference for "next meeting" references)

### Writes to
- Monday.com task board (per entity group)
- Open action item registry (new items + re-commit updates)
- Weekly summary input queue (for meet-weekly-summary-builder)

### HITL Required
- Any action item with no identifiable owner
- Any re-commit item before priority escalation is applied
- Action items attributed to Matt Mathison — Dr. Lewis confirms before pushing to his board
- Any item from an Allevio meeting that references member-level detail (HIPAA adjacency)

## Test Cases

1. **Golden path:** A 30-minute HIVE Partners LP update call produces a transcript with five clear action items: two owned by the HIVE ops lead (due end of week), one by Dr. Lewis (due in 2 days), one by Matt Mathison (approval needed), and one by an LP (external). All are named, all have inferable deadlines, none duplicate prior open items. The extractor produces a clean five-row table, pushes four items to Monday.com (external LP item tracked separately), and queues the output for the weekly summary builder.

2. **Edge case:** A Column6 media review meeting contains a discussion where Matt Mathison says "someone should pull the Q2 CTV performance numbers before next week." No named recipient responds affirmatively. The extractor flags this as UNRESOLVED (no named owner) rather than assigning it to the meeting facilitator. Dr. Lewis receives a HITL prompt to assign the owner before the item is pushed to Monday.com.

3. **Adversarial case:** An Allevio operations meeting produces an action item reading "follow up on the Martinez case status before Thursday." The item contains what appears to be a patient surname. The extractor detects a potential PHI-adjacent reference, halts push to Monday.com for this item only, and flags it for Dr. Lewis HITL review. If Dr. Lewis confirms the reference is to a vendor named Martinez (not a patient), the item is cleared and pushed. If it is patient-adjacent, it is redacted before any further routing.

## Audit Log

Each skill run logs the transcript ID, number of items extracted, number of re-commits identified, number of HITL flags raised, and Monday.com push status for each item. The audit log entry also records the inferred vs. stated deadline count and any PHI-adjacent flags triggered during extraction. Logs are stored in the MBL AI audit trail with a 7-year retention minimum, consistent with HIPAA business associate obligations for Allevio-related processing.

## Deprecation

This skill should be reviewed if Monday.com introduces a native AI action item extraction integration that ingests meeting transcripts directly — at that point, the formatting and push steps may be redundant. It should also be re-evaluated if MBL migrates its task management system away from Monday.com in a future phase. Any deprecation requires Dr. Lewis to validate that the replacement system captures all fields (owner, deadline, priority, source quote, entity group) before this skill is retired.
