---
name: portops-review-monthly
description: "monthly portfolio ops review, 60 minute entity review, monthly review with entity CEOs, Dr. Lewis monthly ops call, portfolio monthly check-in, entity status monthly, 10 minutes per entity review, monthly BLUF to Matt, portfolio ops monthly agenda, monthly ops call facilitation, entity CEO monthly touchpoint, monthly action items Monday.com push, portfolio monthly report, ops monthly summary for managing partner, Matt Mathison monthly briefing, entity win and flag monthly, portfolio monthly meeting template, monthly review facilitator guide, action item capture monthly, portfolio ops status report"
metadata:
  version: 1.0.0
  tier: portfolio-operations
  owner: Dr. John Lewis
argument-hint: "entity names and date of review (e.g. 'Allevio, HIVE, Column6, MBL HoldCo — June 2026')"
---

# Portfolio Ops Monthly Review (60-Minute Format)

Dr. Lewis runs a structured 60-minute monthly review with all entity CEOs. Matt Mathison is not present — this is an ops-level accountability meeting, not an executive session. Output is a 1-page BLUF summary delivered to Matt and a set of action items pushed to Monday.com.

## When to Use
- Preparing the agenda and facilitator guide before the monthly call
- Capturing entity status, flags, wins, and action items during the call
- Generating Matt's 1-page BLUF post-call summary
- Pushing structured action items to Monday.com after the meeting

## Monthly Review Framework

```
MONTHLY PORTFOLIO OPS REVIEW — 60-MINUTE STRUCTURE
====================================================

PRE-CALL PREP (Dr. Lewis, 15 min before)
-----------------------------------------
- Pull prior month's action items from Monday.com (check close rate)
- Review each entity's KPI dashboard (flag any red metrics)
- Note any carry-forward issues from last month
- Confirm all 4 entity CEOs confirmed for attendance

CALL STRUCTURE
--------------
[0:00–0:10]  ENTITY 1 — ALLEVIO
  - KPI snapshot: revenue, member count, claim ratio, care coordination SLA
  - Top win this month (1)
  - Top flag this month (1) + mitigation status
  - Action items closed vs. open from last month
  - New action items (owner, due date)

[0:10–0:20]  ENTITY 2 — HIVE PARTNERS
  - KPI snapshot: production volume, operating costs, LP distributions, well status
  - Top win this month (1)
  - Top flag this month (1) + mitigation status
  - Action items closed vs. open from last month
  - New action items (owner, due date)

[0:20–0:30]  ENTITY 3 — COLUMN6 / SIPROCAL
  - KPI snapshot: media revenue, campaign delivery, platform uptime, client count
  - Top win this month (1)
  - Top flag this month (1) + mitigation status
  - Action items closed vs. open from last month
  - New action items (owner, due date)

[0:30–0:40]  ENTITY 4 — MBL HOLDCO / CROSS-ENTITY
  - Finance ops status (AP, AR, close timeline)
  - AI/Krista.ai initiative status
  - Shared services or cross-entity issues
  - New action items

[0:40–0:55]  PORTFOLIO TOPICS
  - Cross-entity dependencies or blockers
  - M&A pipeline update (if applicable — Morgan Sills input)
  - Talent or hiring flags
  - THRIVE culture signal (any concern flagged this month?)
  - Shared system issues (M365, Monday.com, QuickBooks, Krista.ai)

[0:55–1:00]  ACTION ITEM CLOSE
  - Dr. Lewis reads back all new action items: owner, task, due date
  - Confirm no ambiguity
  - Verbal commit from each owner

POST-CALL (Dr. Lewis, within 2 hours)
--------------------------------------
- Draft Matt's 1-page BLUF summary (template below)
- Push all action items to Monday.com (entity board, correct sprint)
- File meeting notes in SharePoint (Meeting Intelligence archive)
- Send BLUF to Matt + CC Jimmy Lindsley
```

## Output Format

```markdown
# Portfolio Ops Monthly Review — [Month YYYY]
**Prepared by:** Dr. John Lewis | **Sent to:** Matt Mathison | **CC:** Jimmy Lindsley
**Meeting Date:** [Date] | **Duration:** 60 min | **Attendees:** [List entity CEOs]

---

## BOTTOM LINE
[2–3 sentences: overall portfolio health, single most important flag, single most important win. No fluff.]

---

## ENTITY STATUS SUMMARY

| Entity     | Status  | Top Win                  | Top Flag                  | Open Actions |
|------------|---------|--------------------------|---------------------------|--------------|
| Allevio    | 🟢/🟡/🔴 | [Win]                   | [Flag]                    | [#]          |
| HIVE       | 🟢/🟡/🔴 | [Win]                   | [Flag]                    | [#]          |
| Column6    | 🟢/🟡/🔴 | [Win]                   | [Flag]                    | [#]          |
| MBL HoldCo | 🟢/🟡/🔴 | [Win]                   | [Flag]                    | [#]          |

---

## ACTION ITEMS (NEW THIS MONTH)

| # | Entity     | Action                        | Owner       | Due Date   |
|---|------------|-------------------------------|-------------|------------|
| 1 | [Entity]   | [Action]                      | [Name]      | [Date]     |
| 2 | [Entity]   | [Action]                      | [Name]      | [Date]     |

---

## FLAGS REQUIRING MATT'S AWARENESS
[Only include if a flag exceeds ops-level authority — escalation triggers listed here. If none, write "No escalations required."]

---

## NEXT MONTHLY REVIEW
Date: [Date] | Pre-read due: [Date - 2 days]
```

## Output Contract
- The 1-page BLUF to Matt is written to an executive who was not in the room — it must stand alone with zero assumed context. Every entity status, flag, and action item must be self-explanatory without the meeting notes. Matt should be able to read the summary in under 3 minutes and know exactly what is happening across the portfolio and what he needs to do, if anything.
- Action items pushed to Monday.com must include: entity board, task name, assigned owner, due date, and link back to the meeting notes in SharePoint. Vague action items ("follow up on X") are not acceptable — every item must have a specific deliverable and a named owner. Dr. Lewis is the default owner if no entity CEO accepted the action item.
- Status indicators (green/yellow/red) must reflect objective KPI performance, not CEO self-assessment. Yellow = one KPI below target or one unresolved flag. Red = two or more KPIs below target, a flag with no mitigation plan, or a THRIVE concern. Green requires both KPIs on track and no open flags from prior month. Dr. Lewis sets the indicator based on data, not sentiment.

## System Dependencies
**Reads from:** Monday.com (prior action items), KPI dashboards per entity, SharePoint (prior meeting notes), Krista.ai transcripts (if meeting is recorded)
**Writes to:** Monday.com (new action items per entity board), SharePoint (meeting notes archive), Matt's email (BLUF summary), Jimmy Lindsley (CC)
**HITL Required:** Dr. Lewis reviews and approves the BLUF before sending to Matt. Matt does not need to approve the BLUF — this is an informational summary, not a decision document. If any flag requires Matt's decision, Dr. Lewis flags it explicitly and schedules a separate 15-minute sync.

## Test Cases
- **Golden path:** All 4 CEOs attend, each entity has clean KPI data, 3–5 new action items total, BLUF drafted and sent within 2 hours, all action items in Monday.com by EOD.
- **Edge case:** One entity CEO absent — Dr. Lewis covers that entity from available data, notes the absence in the BLUF, and flags if it's a pattern (second consecutive absence escalates to Matt).
- **Adversarial:** Entity CEO disputes a red status indicator during the call — Dr. Lewis holds the data-based rating, documents the CEO's objection in meeting notes, and includes both the rating and the objection in the BLUF so Matt has full context.

## Audit Log
Every monthly review generates a dated meeting notes file in SharePoint under `/MBL Partners/Portfolio Ops/Monthly Reviews/[YYYY-MM]/`. The BLUF email to Matt and the Monday.com action item push are both logged with timestamps. If Krista.ai records the call, the transcript link is attached to the SharePoint file. Action item close rates are tracked month-over-month as a portfolio ops health metric reviewed in the quarterly session.

## Deprecation
This skill is superseded if MBL moves to a bi-weekly ops cadence or if entity count changes significantly (above 6 or below 3). At that point, the time allocation per entity and the agenda structure should be rebuilt from scratch using the then-current portfolio configuration. The quarterly review skill (portops-review-quarterly) takes precedence for months where the quarterly and monthly reviews coincide — do not run both.
