---
name: meet-action-item-closer
description: "follow up on open action items, drive action item closure, open action item dashboard, overdue action item alerts, action item owner notification, entity CEO overdue notification, Matt Mathison overdue item summary, action item closure rate tracking, action item aging analysis, escalate overdue action items, action items overdue 14 days, THRIVE integrity commitment keeping, action item completion tracking, meeting action item follow-up, action item owner accountability, overdue meeting commitments, action item 3 day warning, action item due date alert, action item 1 day overdue notification, meeting commitment closure"
metadata:
  version: 1.0.0
  tier: meeting-intelligence
  owner: Dr. John Lewis
argument-hint: "[entity filter or 'all', optional date range]"
---

# Meeting Action Item Closer

This skill tracks all open action items generated from meeting intelligence, sends structured alerts at 3 days before due, on the due date, and 1 day after due, and escalates items overdue more than 14 days to entity CEOs and Matt Mathison. Closing on commitments made in meetings is a direct expression of MBL's THRIVE value of Integrity — this skill exists to ensure that commitments do not silently die in a transcript.

## When to Use

- Daily action item alert cycle runs (morning check for today's and 3-day-out items)
- An action item crosses the 1-day-overdue threshold and the owner needs a direct notification
- The weekly meeting intelligence cycle includes Matt Mathison's overdue item summary
- An action item ages past 14 days without closure and requires entity CEO + Matt Mathison escalation

## Action Item Closer Framework

```
ACTION ITEM CLOSURE TRACKER — [DATE]
=====================================

SECTION 1: OPEN ACTION ITEM DASHBOARD
  | ID  | Action Item | Owner | Entity | Due Date | Age (days) | Status    | Priority |
  |-----|-------------|-------|--------|----------|------------|-----------|----------|
  | ... | ...         | ...   | ...    | ...      | ...        | Open/Late | H/M/L    |

  Summary counts:
  - Total open: [N]
  - Due in 3 days: [N]
  - Due today: [N]
  - Overdue 1 day: [N]
  - Overdue >14 days (ESCALATED): [N]

SECTION 2: 3-DAY ALERT NOTIFICATIONS
  For each item due in 3 business days:
  - Action item text
  - Owner name + contact
  - Due date
  - Source meeting (date + meeting name)
  - Notification sent: [YES / NO]
  - Notification method: [Monday.com / Email / Both]
  Message template:
  "Reminder: [action item] is due in 3 days ([due date]). This commitment was made
   in [meeting name] on [date]. Please confirm completion or flag any blockers to
   Dr. Lewis."

SECTION 3: DUE-DATE ALERT NOTIFICATIONS
  For each item due today:
  - Action item text + owner
  - Completion confirmation requested
  Message template:
  "[Action item] is due today. Please mark complete in Monday.com or reply with
   status. If blocked, flag immediately — Dr. Lewis can assist with escalation."

SECTION 4: 1-DAY OVERDUE ALERTS
  For each item 1 day overdue:
  - Action item text + owner
  - Original due date
  - Days overdue
  - Escalation path if not resolved in 48 hours
  Message template:
  "[Action item] was due [date] and is now 1 day overdue. Please update status
   in Monday.com today. If this commitment cannot be met, Dr. Lewis needs to know
   so the team can adjust."

SECTION 5: OVERDUE >14 DAYS — ESCALATION
  For each item overdue more than 14 days:
  - Action item text + owner
  - Original due date + days overdue
  - Previous notification history (dates of prior alerts)
  - Entity CEO notification: [YES / NO — date sent]
  - Matt Mathison notification: [YES / NO — date sent]
  - Escalation action recommended: [replace owner / adjust scope / close as won't-do]
  Escalation message template:
  "This action item has been open for [N] days past its due date with no closure:
   [action item text]. Owner: [name]. Originally committed in [meeting] on [date].
   Prior reminders sent: [dates]. Recommended action: [recommendation]."

SECTION 6: CLOSURE RATE TRACKING
  | Entity   | Assigned (30d) | Closed on Time | Late Close | Still Open | Rate % |
  |----------|----------------|----------------|------------|------------|--------|
  | MBL      | ...            | ...            | ...        | ...        | ...%   |
  | Allevio  | ...            | ...            | ...        | ...        | ...%   |
  | HIVE     | ...            | ...            | ...        | ...        | ...%   |
  | Column6  | ...            | ...            | ...        | ...        | ...%   |
  Target closure rate: ≥80% on-time closure for all entities

SECTION 7: AGING ANALYSIS
  - Items 0-3 days old: [N] — [expected — normal pipeline]
  - Items 4-7 days old: [N] — [monitor]
  - Items 8-14 days old: [N] — [at risk; owner outreach recommended]
  - Items >14 days old: [N] — [ESCALATED]
  - Oldest open item: [description; owner; age; entity]

SECTION 8: MATT MATHISON WEEKLY SUMMARY
  - BLUF: [closure rate this week; # overdue >14 days; top escalation]
  - Items needing Matt's direct attention: [list with recommended action]
  - Closure rate by entity (weekly): [table]
  - Trend vs. prior week: [improving / declining / stable]
  - THRIVE Integrity note: [if closure rate drops below 70% for any entity, flag explicitly]
```

## Output Format

```markdown
## Action Item Status — [DATE]

**Open Items:** [N total] | **Due in 3 Days:** [N] | **Due Today:** [N] | **Overdue:** [N] | **Escalated (>14d):** [N]

**Closure Rate (30-day rolling):**
| Entity | Rate | vs. Target (≥80%) |
|--------|------|-------------------|
| ...    | ...% | ✓ / ⚠             |

**Notifications Sent Today:**
- 3-day alerts: [N owners notified]
- Due-date alerts: [N owners notified]
- 1-day overdue: [N owners notified]

**Escalated to Entity CEOs:** [N items; list]
**Escalated to Matt Mathison:** [N items; list]

**Matt Mathison Weekly Overdue Summary:**
[BLUF + top escalations + closure trend]
```

## Output Contract

- **Notification timing is non-negotiable and cannot be batched or delayed.** The 3-day alert, due-date alert, and 1-day overdue alert are generated at fixed times regardless of other pipeline activity. If the pipeline is delayed for any reason, action item notifications are the last output to be deferred — they have a direct impact on organizational commitments and Matt Mathison's ability to hold the team accountable. A missed notification window is treated as a pipeline failure and logged in the pipeline health report.

- **Escalation at 14 days is automatic and cannot be suppressed without Dr. Lewis override.** When an action item passes 14 days overdue, the entity CEO and Matt Mathison are notified without any additional approval step. The escalation message includes the full history of prior notifications, the original meeting source, and a specific recommended resolution (reassign, descope, or formally close as won't-do). Suppressing an escalation because the owner says they are "working on it" is not sufficient — the escalation is a management visibility event, not a punitive action.

- **Closure rate below 80% for any entity is a THRIVE Integrity flag.** MBL's Integrity value means commitments made in meetings are commitments kept. When any entity's on-time closure rate drops below 80% in a 30-day rolling window, this is surfaced in Matt Mathison's weekly summary as an Integrity signal, not just a metrics miss. The framing is explicit: the entity's leadership is not keeping the commitments they make in meetings. Matt Mathison decides whether this requires a direct leadership conversation; Dr. Lewis ensures the signal reaches him with enough context to act.

## System Dependencies

### Reads from
- Monday.com: all action items across MBL and portfolio entity boards (status, due dates, owners)
- Meeting intelligence action item extraction outputs (source of new items)
- Prior notification log (to avoid duplicate alerts)

### Writes to
- Monday.com: notification comments on action item cards; status updates when escalated
- Email: owner notifications (3-day; due-date; 1-day overdue alerts)
- Matt Mathison weekly summary (action item section)
- Entity CEO escalation notifications (>14 day items)
- SharePoint: /Meeting Intelligence/Action-Items/escalation-log.md

### HITL Required
- Dr. Lewis: reviews >14-day escalation list before entity CEO notifications are sent
- Entity CEOs: receive escalation notifications; no approval required for Dr. Lewis to send
- Matt Mathison: receives weekly overdue summary; his attention items flagged explicitly

## Test Cases

1. **Golden path:** Monday morning run — 45 open items, 3 due in 3 days (3-day alerts sent), 2 due today (due-date alerts sent), 1 overdue 1 day (1-day alert sent), 0 items >14 days — all notifications generated and logged within 15 minutes of pipeline run.
2. **Edge case:** An action item owner has left the company since the item was assigned. The 1-day overdue alert would go to a disabled email address. Tracker must detect the invalid owner, flag the item for Dr. Lewis reassignment, escalate immediately (regardless of age) since there is no owner to follow up with, and hold the notification until Dr. Lewis assigns a new owner.
3. **Adversarial:** A Monday.com integration failure means action item status updates from the prior 3 days are missing. Tracker must not generate false overdue alerts for items that may have been closed during the outage. It must flag the data gap, pause overdue alerts for affected items, notify Dr. Lewis of the integration issue, and resume normal operation only after Monday.com data is confirmed current.

## Audit Log

Every notification sent and every escalation generated is logged with the timestamp, action item ID, recipient, channel (email/Monday.com), and delivery status. Escalation events (>14 days) are also logged in a separate escalation register in SharePoint. The closure rate report is generated weekly and archived monthly. All logs are retained for 2 years per the Meeting Intelligence retention policy.

## Deprecation

This skill is deprecated when MBL's Monday.com configuration supports native due-date alerting, escalation workflows, and closure rate reporting with the same entity-level granularity and Matt Mathison briefing format this skill provides. Until Monday.com natively handles cross-entity rollup and the THRIVE Integrity framing of closure rate reporting, this skill remains active. Dr. Lewis approves deprecation after a 30-day parallel validation.
