---
name: portops-mbl-system-ops
description: "monitor mbl system health, check M365 uptime, krista.ai health check, quickbooks sync status, bill.com availability, gohighlevel crm status, monday.com board health, system outage alert, saas health dashboard, IT ops monitor, open support ticket tracker, last sync timestamp review, system incident monitor, matt mathison workflow outage escalation, meeting intelligence system dependency, weekly briefing system dependency, action item workflow dependency, integration connector health, holdco tech stack health, weekly system ops report for dr lewis, krista connector success rate"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "<'daily' | 'weekly' | system-name for point check>"
---

# MBL System Ops

MBL HoldCo's AI orchestration strategy depends entirely on six core systems remaining operational and integrated — a silent degradation in any one of them corrupts downstream workflows (meeting summaries, pre-meeting prep, AP approvals, action tracking) without surfacing obvious errors to end users. This skill monitors system health, Krista.ai connector success rates, open incident tickets, and SaaS costs weekly for Dr. Lewis, with immediate escalation when Matt Mathison's mission-critical workflows are disrupted.

## When to Use

- Morning system health check before daily operations begin
- When a user reports that a workflow (pre-meeting prep, weekly briefing, action item push) is broken
- Before deploying any integration change or Krista.ai skill update that touches core systems
- Monthly SaaS cost review against overhead budget
- When a vendor support ticket has been open more than 48 hours without resolution

## MBL System Ops Framework

```
SYSTEM INVENTORY
  M365 suite: Outlook (email), Teams (calls/chat), SharePoint (document store), OneDrive (sync)
  Krista.ai: AI orchestration layer; conversation agent; meeting transcription pipeline
  QuickBooks Online: Financial system of record; bank feed; chart of accounts
  Bill.com: AP management; vendor payment queue; approval workflow
  GoHighLevel CRM: MBL + North Vista contact database; pipeline; email automation
  Monday.com: Sprint boards; project tracking; Matt's action item system
  Integration health: Krista.ai connectors to all five systems above

M365 TENANT HEALTH
  Exchange Online: Email flow status; delivery queue health; spam filter alerts
  Teams: Call quality score (target >4.0 MOS); meeting recording availability
  SharePoint: Sync status; storage utilization; permission anomaly flags
  License utilization: Assigned vs available seats per product SKU
  Security alerts: Open alerts from Microsoft Defender or Secure Score degradation
  Status source: M365 Admin Center service health dashboard

KRISTA.AI STATUS
  Platform uptime: Target 99.5% monthly (per SLA)
  Active workflow count: Number of workflows running vs configured
  Connector health (per integration):
    Krista to M365: Last run timestamp; success rate (7-day); last error
    Krista to Monday.com: Last run timestamp; success rate (7-day); last error
    Krista to GoHighLevel: Last run timestamp; success rate (7-day); last error
    Krista to QuickBooks: Last run timestamp; success rate (7-day); last error
    Krista to Bill.com: Last run timestamp; success rate (7-day); last error
  Threshold: Any connector <95% success rate over 7 days flagged immediately
  Transcription pipeline: Active / degraded / down; last successful transcript timestamp

QUICKBOOKS DATA INTEGRITY
  Bank feed status: Connected / disconnected; last successful sync timestamp
  Reconciliation lag: Days since last completed reconciliation (target <5 days)
  Data anomaly flags: Duplicate transactions; uncategorized items >$500; missing payees
  Backup status: Last backup timestamp; backup location confirmed
  Open issues: Any unresolved sync errors or bank feed disconnections

BILL.COM PAYMENT QUEUE
  Pending approvals: Count and total dollar amount awaiting Dr. Lewis or Matt approval
  Payment failures: Any payments that failed processing in the past 7 days with root cause
  Unauthorized vendor flags: Payments to vendors not in the approved vendor registry
  Scheduled payments next 7 days: Count and total; confirmation all are authorized
  Payment schedule compliance: All bills paid within terms (target 100% on-time)

GOHIGHLEVEL CRM HEALTH
  Contact database: Total contacts; duplicates detected; incomplete records (no email)
  Automation status: Active automations count; failed automation runs in past 7 days
  Pipeline health: Open opportunities count; stale opportunities (no activity >30 days)
  Email deliverability: Bounce rate (target <2%); spam complaint rate (target <0.1%)
  New lead flow: Leads added past 7 days; routing confirmation to correct pipeline stage

MONDAY.COM BOARD HEALTH
  Board count: Total active boards; boards owned by Matt Mathison specifically
  Overdue items: Tasks past due date; overdue items on Matt's boards flagged separately
  Stale boards: Boards with no update in >14 days flagged for review
  Automation health: Monday.com automations success rate; failed automation runs
  Krista.ai push integration: Meeting intelligence action items pushing successfully

ESCALATION PROTOCOL
  P1 systems (Matt workflow-critical): M365, Krista.ai, Monday.com
  P1 outage trigger: Any P1 system reaches RED status
  Escalation sequence: Dr. Lewis alerted immediately -> vendor support opened within 30 min
    -> Matt Mathison notified via Teams if outage exceeds 2 hours during business hours
  P2 systems: Bill.com, QuickBooks, GoHighLevel CRM
  P2 outage trigger: Any P2 system reaches RED for >4 hours
  P2 escalation: Dr. Lewis alerted; vendor support opened; Matt informed in weekly report
```

## Output Format

```markdown
## MBL System Ops Report — [Date]

**Overall Status: ALL SYSTEMS OPERATIONAL / [X] SYSTEM(S) DEGRADED / CRITICAL — [system] DOWN**

### Immediate Alerts
- [CRITICAL] [System] is DOWN — Matt's [workflow] is affected — Escalation: [status]
- None [OK]

### System Status Dashboard
| System | Status | Last Sync | Open Tickets | Notes |
|--------|--------|-----------|--------------|-------|
| M365 (Outlook) | GREEN | [timestamp] | [n] | [note] |
| M365 (Teams) | GREEN | [timestamp] | [n] | [note] |
| M365 (SharePoint) | GREEN | [timestamp] | [n] | [note] |
| Krista.ai | GREEN | [timestamp] | [n] | [note] |
| QuickBooks | GREEN | [timestamp] | [n] | [note] |
| Bill.com | GREEN | [timestamp] | [n] | [note] |
| GoHighLevel | GREEN | [timestamp] | [n] | [note] |
| Monday.com | GREEN | [timestamp] | [n] | [note] |

### Matt's Workflow Dependencies
| Workflow | Required Systems | Status |
|----------|-----------------|--------|
| Pre-Meeting Prep | M365, Krista.ai, Monday.com | GREEN / YELLOW / RED |
| Weekly Briefing | M365, Krista.ai | GREEN / YELLOW / RED |
| Action Item Tracking | Monday.com, Krista.ai | GREEN / YELLOW / RED |
| AP Approvals | Bill.com, M365 | GREEN / YELLOW / RED |

### Krista.ai Connector Health (7-Day)
| Connector | Last Run | Success Rate | Status |
|-----------|----------|-------------|--------|
| -> M365 | [timestamp] | XX% | GREEN / YELLOW / RED |
| -> Monday.com | [timestamp] | XX% | GREEN / YELLOW / RED |
| -> GoHighLevel | [timestamp] | XX% | GREEN / YELLOW / RED |
| -> QuickBooks | [timestamp] | XX% | GREEN / YELLOW / RED |
| -> Bill.com | [timestamp] | XX% | GREEN / YELLOW / RED |

### Open Tickets >48 Hours
- [System] | [Ticket ID] | [Description] | [Age] | [ETA]
- None [OK]

### Monthly SaaS Cost
| System | Cost | Budget | Variance | Trend |
|--------|------|--------|----------|-------|
[rows]
| **Total SaaS** | **$X** | **$X** | **$X** | [direction] |

### Action Items
- [ ] [Owner] [Action] by [Date]

_Health checks run: [timestamp]. Next scheduled check: [timestamp]._
```

## Output Contract

- M365, Krista.ai, and Monday.com are classified as Matt's P1 mission-critical systems because they are the three-system backbone of his pre-meeting prep, weekly briefing, and action item workflows — an outage in any one of these directly degrades Matt's ability to run informed meetings and track commitments. Any RED status on these three triggers an immediate alert to Dr. Lewis, not a scheduled report, with a vendor escalation initiated within 30 minutes of detection regardless of time of day.

- Krista.ai connector success rates below 95% over a 7-day window indicate systemic integration drift rather than random failures and must be flagged because a degraded connector silently corrupts downstream workflows (missed Monday.com pushes, incomplete meeting summaries, CRM records not updating) without surfacing obvious errors to end users. Dr. Lewis investigates connector logs before escalating to Krista.ai support to provide a specific error context that accelerates resolution.

- SaaS cost tracking is maintained monthly to surface seat creep, tier upgrades, and billing anomalies before they reach the overhead budget review. A system cost increase greater than 10% versus the prior month triggers a usage audit to determine whether the increase is authorized (new headcount, feature upgrade) or erroneous (billing error, duplicate subscription). Findings feed directly into the overhead monitor skill's tech stack category.

## System Dependencies

**Reads from:** M365 Admin Center (service health, license data, security alerts); Krista.ai platform dashboard (connector logs, workflow run counts, error rates); QuickBooks status page and bank feed logs; Bill.com service status and payment queue; GoHighLevel system status and automation logs; Monday.com status page and board activity; vendor support portals (open ticket status)
**Writes to:** Monday.com (system health card, open incident tasks for P1/P2 issues); Dr. Lewis weekly digest (all system statuses); immediate Teams alert to Dr. Lewis on RED status detection; Outlook notification to Matt if any outage exceeds 2 hours during business hours
**HITL Required:** Dr. Lewis reviews all P1 and P2 tickets and approves vendor escalation language before it is sent; Matt is notified directly (not only Dr. Lewis) if any outage exceeds 2 hours during business hours or affects an active Matt workflow

## Test Cases

- **Golden path:** All 8 systems GREEN, all Krista.ai connectors at or above 95% success, no open tickets older than 48 hours, SaaS costs within budget — weekly report generates with all-green summary and no escalations required.
- **Edge case:** Monday.com reports a partial outage where board views load but automations fail — skill must classify as YELLOW degraded (not GREEN), identify which Matt workflows are impacted (action item push fails, pre-meeting card creation fails), open a vendor ticket with specific symptom description, and flag in the Matt workflow dependency section.
- **Adversarial:** Krista.ai connector to M365 shows 100% success rate in the platform dashboard but meeting summaries are not arriving in SharePoint — skill must cross-validate connector metrics against actual output artifacts (summary count in SharePoint for the period) rather than trusting dashboard metrics alone, surfacing the discrepancy as a P1 issue requiring immediate investigation.

## Audit Log

Every system health check is timestamped and retained for 90 days with status per system, open ticket counts, and connector success rates. Outage events (RED status) are logged with start time, duration, affected workflows, escalation actions taken, vendor ticket numbers, and resolution confirmation. SaaS cost snapshots are archived monthly and reconciled against Bill.com actuals quarterly. All Matt Mathison notifications are logged with send timestamp and acknowledgment where available, creating an incident record for post-mortem review.

## Deprecation

This skill is superseded if MBL HoldCo deploys a unified IT monitoring platform such as Datadog or PagerDuty with native SaaS health integrations and automated alerting for all six core systems. At that point, the system status dashboard and incident alerting sections are replaced by platform-native alerts, and this skill retains only the Matt workflow dependency map and monthly SaaS cost tracking logic. Do not deprecate until the replacement platform provides full coverage of all six systems, including Krista.ai connector-level metrics.
