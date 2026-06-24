---
name: meet-jimmy-cc-formatter
description: "format meeting intelligence for Jimmy Lindsley CC, Jimmy Lindsley operations MBL, Jimmy Lindsley receives weekly summary CC, Jimmy Lindsley same document as Matt, operational items flagged for Jimmy, Jimmy Lindsley action items in Monday.com, Jimmy follow-up protocol, Jimmy action items assigned, Jimmy operational briefing additions, operational context for Jimmy Lindsley, Jimmy Lindsley meeting intelligence role, CC format for MBL ops, Jimmy Lindsley CC on meeting summaries, Jimmy Lindsley Monday.com push, Jimmy operational items separate section"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[week ending date, optional: 'check Jimmy action items' to review his Monday.com items]"
---

# Jimmy Lindsley CC Formatter

This skill manages the meeting intelligence distribution to Jimmy Lindsley, confirming he receives the same weekly brief as Matt Mathison via CC, flagging any operational action items assigned to Jimmy for Monday.com push, and handling the rare case where operationally relevant context exists only for Jimmy — which receives a separate operational note, never a modification to Matt's brief.

## When to Use

- The Matt Mathison weekly brief is ready for delivery and Jimmy's CC delivery needs to be confirmed
- Action items from the week's meetings have been assigned to Jimmy Lindsley and need to be pushed to his Monday.com board
- An operational topic surfaces in meeting intelligence that is relevant only to Jimmy (not to Matt) and needs a separate operational note
- Dr. Lewis audits Jimmy's action item pipeline to confirm his items are being tracked and followed up on

## Jimmy CC Framework

```
JIMMY LINDSLEY CC FORMAT CHECK — WEEK ENDING [DATE]
=====================================================

SECTION 1: CC DELIVERY CONFIRMATION
  Standard: Jimmy receives exactly the same document as Matt Mathison
  - Matt Mathison brief: [approved / not yet approved — DO NOT send Jimmy's CC until Matt brief approved]
  - Jimmy's CC address: [Jimmy's current MBL email]
  - Delivery method: CC on the same email thread as Matt's delivery (not a separate email)
  - Content: IDENTICAL to Matt's brief — no additions, no modifications, no separate section
  - Timing: sent simultaneously with Matt's delivery (same email send)
  - Confirmation: CC delivery logged alongside Matt's delivery in distribution log

  CC status check:
  [ ] Matt brief approved by Dr. Lewis
  [ ] Jimmy's email confirmed current
  [ ] CC will be sent on the same email as Matt (not a separate send)
  [ ] Content verified identical to Matt's brief (no Jimmy-specific modifications)

SECTION 2: JIMMY'S ACTION ITEMS — MONDAY.COM PUSH
  From this week's meeting intelligence, identify all action items assigned to Jimmy Lindsley:
  
  | Action Item | Assigned In | Meeting Date | Due Date | Board | Status |
  |-------------|-------------|--------------|----------|-------|--------|
  | ...         | ...         | ...          | ...      | ...   | Open   |

  Monday.com push protocol:
  - Jimmy's board: [MBL Operations board — confirm current board name]
  - Column mapping: Action / Assigned To: Jimmy Lindsley / Due Date / Meeting Source / Status: Open
  - Push timing: same day as action item extraction (not held for weekly brief cycle)
  - Notification: Jimmy receives Monday.com in-app notification when item is created
  - Confirmation: push logged in action item log with Monday.com card ID

  Action items for Jimmy this week: [N]
  Push status: COMPLETE / PENDING / FAILED — [reason if failed]

SECTION 3: JIMMY FOLLOW-UP PROTOCOL
  For action items previously assigned to Jimmy:
  | Item | Due Date | Age | Status | Follow-Up Sent |
  |------|----------|-----|--------|----------------|
  | ...  | ...      | ... | Open   | [date / NO]    |

  Overdue items for Jimmy:
  - Items overdue 1 day: [N] — [1-day alert sent: YES/NO]
  - Items overdue >14 days: [N] — [Dr. Lewis escalation: YES/NO]
  
  Note: Jimmy's overdue items follow the same escalation protocol as all other owners.
  At >14 days overdue: Dr. Lewis notifies Jimmy directly (not Matt Mathison first for operational items)
  unless the item is directly blocking Matt Mathison's priorities.

SECTION 4: JIMMY-ONLY OPERATIONAL CONTEXT (RARE)
  Trigger: An operational topic from meeting intelligence is relevant to Jimmy's responsibilities
  but does not meet the bar for inclusion in Matt's brief (not decision-level; operational detail only)
  
  Standard: This section is used SPARINGLY. Most operational context either belongs in Matt's brief
  or in the entity CEO's brief. Jimmy-only context is for operational coordination items that:
  - Are below Matt Mathison's decision threshold (purely operational execution)
  - Are not in any entity CEO's brief (MBL-level ops only)
  - Would benefit Jimmy's operational awareness without adding noise to Matt's brief

  If triggered:
  - Topic: [description]
  - Why it's Jimmy-only (not in Matt's brief): [rationale]
  - Dr. Lewis approval required before sending: [YES — this is not a standard delivery]
  - Format: separate email from Dr. Lewis to Jimmy (not a modification to Matt's brief)
  - Subject line: "MBL Ops Note — [topic] — [date]"
  
  This week's Jimmy-only context: NONE / [topic if applicable]

SECTION 5: DISTRIBUTION LOG
  | Recipient | Channel | Content | Sent Time | Confirmation |
  |-----------|---------|---------|-----------|--------------|
  | Matt Mathison | Email | Weekly Brief | [time] | [Y/N] |
  | Jimmy Lindsley | Email CC | Same as Matt | [time] | [Y/N] |
  | Jimmy (Monday.com) | App notification | Action items | [time] | [Y/N] |
```

## Output Format

```markdown
## Jimmy Lindsley CC — Week of [DATE]

**CC Status:** DELIVERED / PENDING / FAILED
**Content:** Identical to Matt Mathison brief (confirmed)
**Sent:** [timestamp] MST

**Jimmy's Action Items This Week:**
| Action | Due | Monday.com Status |
|--------|-----|-------------------|
| [item] | ... | PUSHED / PENDING  |

**Jimmy Items Overdue:** [N] | **Escalated:** [N]

**Jimmy-Only Operational Note:** NONE / SENT — [topic]
```

## Output Contract

- **Jimmy receives the identical document Matt receives — not a version tailored for operations.** The one-brief discipline is intentional: Matt and Jimmy share the same information baseline, which eliminates the risk of Jimmy having operational context that Matt doesn't and creates implicit accountability (Jimmy knows what Matt knows, so Jimmy cannot claim surprise when Matt asks about an operational matter). Any instinct to "add operational detail for Jimmy" is resolved by either adding it to Matt's brief (if it meets the bar) or sending a separate operational note — never by creating a parallel version of the weekly brief.

- **Jimmy's Monday.com action items are pushed immediately upon extraction, not held for the weekly brief cycle.** Action items assigned to Jimmy in any meeting travel to his Monday.com board the same day the meeting is processed — they do not wait for the Monday morning delivery. This matters because Jimmy manages MBL operations, and a 3-5 day delay between a meeting generating an action item and Jimmy receiving it in his task system is operationally unacceptable. The weekly brief is an awareness tool; Monday.com is the execution tool, and those two pipelines run on different clocks.

- **Jimmy-only operational context is the exception, not the expectation.** The skill includes a Jimmy-only section specifically to prevent the alternative: someone adding Jimmy-relevant operational detail to Matt's weekly brief, inflating it past the 200-word limit. When operational context exists that is below Matt's decision threshold, Dr. Lewis evaluates whether it belongs in an entity CEO's brief or in a direct Dr. Lewis-to-Jimmy operational note. The latter is used sparingly and always with Dr. Lewis approval — it is not a routine output of the meeting intelligence system.

## System Dependencies

### Reads from
- Matt Mathison approved weekly brief (must be approved before Jimmy CC is sent)
- Action item extraction output (to identify Jimmy-assigned items)
- Jimmy's Monday.com board (to confirm prior item status and detect new pushes)
- Prior week's Jimmy action item log (for overdue tracking)

### Writes to
- Email: Jimmy Lindsley CC (same email thread as Matt Mathison delivery)
- Monday.com: Jimmy Lindsley operational board (action item cards)
- Distribution log: SharePoint /Meeting Intelligence/Distribution-Logs/[date]-distribution.md
- Dr. Lewis escalation queue (Jimmy items overdue >14 days)

### HITL Required
- Dr. Lewis: approves Matt brief before Jimmy CC goes out; approves any Jimmy-only operational notes; reviews >14-day Jimmy overdue items before escalating
- Jimmy Lindsley: receives CC and Monday.com items; no role in preparation
- Matt Mathison: no role in Jimmy's CC — he simply receives the primary delivery; Jimmy's CC is operational infrastructure

## Test Cases

1. **Golden path:** Matt brief approved at 8:45am Monday, Jimmy CC sent simultaneously at 8:45am, 2 action items pushed to Jimmy's Monday.com board on the prior Friday (extracted from Thursday meetings), no Jimmy-only context this week — clean distribution log, all confirmations received.
2. **Edge case:** Jimmy has a previously assigned action item that is overdue by 8 days and his Monday.com card shows no progress update. The CC formatter flags this for Dr. Lewis review (not yet at 14-day escalation threshold but approaching it) and sends a direct follow-up to Jimmy's Monday.com card as a reminder comment. Dr. Lewis decides whether a direct message to Jimmy is warranted before the 14-day escalation triggers.
3. **Adversarial:** A team member suggests adding a "Jimmy section" to the weekly brief for operational context that doesn't belong in Matt's summary. The CC formatter must surface this request to Dr. Lewis with a clear explanation of why a Jimmy-specific section in Matt's brief violates the one-brief discipline — and propose the correct alternative: either include it in Matt's brief if it meets his decision bar, or send a separate Jimmy-only operational note with Dr. Lewis approval. The weekly brief stays single-version.

## Audit Log

Every CC delivery is logged in the weekly distribution log alongside Matt's primary delivery, with the send timestamp, content version (confirming identical to Matt's), and delivery confirmation status. Jimmy's Monday.com action item pushes are logged in the action item log with push timestamps and Monday.com card IDs. Jimmy-only operational notes (rare) are logged separately in the distribution log with Dr. Lewis approval documented. All records retained for 3 years.

## Deprecation

This skill is deprecated when the meeting intelligence distribution system natively handles multi-recipient delivery (Matt primary + Jimmy CC) with delivery confirmation, and Jimmy's Monday.com action item pipeline is automated directly from the action item extraction step without a separate formatting or push step. Deprecation requires Dr. Lewis confirmation that automated CC delivery is reliable and that Jimmy's action item pipeline is functioning correctly without manual oversight.
