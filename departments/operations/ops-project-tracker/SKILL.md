---
name: ops-project-tracker
description: "Track project status and report progress. Use when the user says 'project status', 'project update', 'how is the project going', 'project tracker', 'project report', 'project health', 'is the project on track', 'project dashboard', 'update on the project', 'project progress', 'project summary', 'are we on schedule', 'project risk', or 'project status report'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--project <project name>] [--format <one-pager|dashboard|brief>] [--audience <team|executive|Matt-Mathison>]"
---

# Ops Project Tracker

Track and report project status at MBL portfolio companies — giving Dr. Lewis, portfolio company leadership, and Matt Mathison clear, honest visibility into whether projects are on track, where risks exist, and what decisions are needed. Project tracking at portfolio scale is not about exhaustive documentation — it's about early warning and clear accountability. A project that is quietly failing is worse than a project that transparently reports problems, because transparent problems can be solved.

## When to Use
- A project update is needed for Matt Mathison, a CEO, or the Dr. Lewis weekly brief
- A project has multiple workstreams and needs consolidated tracking
- A project milestone has been missed and the impact needs to be assessed
- A project is being kicked off and needs a tracking structure established
- A portfolio company project touches Dr. Lewis resources and he needs visibility

## Project Tracking Framework

```
Project health indicators — three dimensions:
  Scope: Is the project still within its original definition?
    🟢 On scope | 🟡 Scope creep emerging | 🔴 Significant scope change — requires approval
  Schedule: Is the project on track to hit key milestones?
    🟢 On schedule | 🟡 Risk to milestone(s) | 🔴 Milestone missed or certain to slip
  Budget: Is the project within approved budget?
    🟢 Within budget | 🟡 Approaching ceiling | 🔴 Over budget or likely to exceed

Overall project status = the worst of the three dimensions.
A project that is on scope, on schedule, and over budget is a 🔴 project.

RACI for project management:
  Responsible: Does the work
  Accountable: Owns the outcome; the one person who answers for the result
  Consulted: Provides input before decisions
  Informed: Receives updates but doesn't make decisions

Escalation thresholds (any of these → Matt Mathison notification):
  Budget overrun > 20% of approved budget
  Schedule slip > 4 weeks on a milestone tied to a revenue or compliance event
  Scope change that affects another entity or significant capital allocation
  Project failure/cancellation after >$25K invested
  
Monday.com integration:
  All active projects tracked in Monday.com sprint boards
  Weekly status update posted by project owner by Monday 9 AM
  Dr. Lewis reviews and escalates per threshold above
```

## Output Format

```markdown
# Project Status Report — <Project Name>
**Company:** <Entity> | **Project owner:** [Name / Role]
**Date:** [Date] | **Period covered:** [Week of / Month of]
**Project phase:** [Initiation / Planning / Execution / Closeout]
**Accountable:** [The one person who owns the outcome]

---

## Health Dashboard

| Dimension | Status | Summary |
|---------|--------|---------|
| Scope | 🟢 / 🟡 / 🔴 | [One-sentence explanation] |
| Schedule | 🟢 / 🟡 / 🔴 | [One-sentence explanation] |
| Budget | 🟢 / 🟡 / 🔴 | [One-sentence explanation] |
| **Overall** | **🟢 / 🟡 / 🔴** | **[Overall status]** |

---

## Milestone Tracker

| Milestone | Owner | Due date | Status | Actual / Forecast |
|-----------|-------|---------|--------|-----------------|
| [Milestone 1] | [Name] | [Date] | ✅ Complete / 🟡 At risk / 🔴 Late | [Actual date or new forecast] |
| [Milestone 2] | | | | |
| [Next milestone] | | [Date] | 🔵 Not started | |

**Next milestone due:** [Milestone name] — [Date] — [Owner]
**Critical path risk:** [Is the next milestone on the critical path? What threatens it?]

---

## This Period (what happened)

**Completed:**
- [Specific accomplishment 1 — deliverable-focused]
- [Specific accomplishment 2]

**In progress:**
- [Work item 1] — [% complete or specific status]
- [Work item 2]

**Blocked:**
- [Block 1] — [What's blocking it] — [Owner of the resolution] — [Date unblock expected]
- [Block 2 — if any]

---

## Next Period (what's planned)

- [Planned action 1 — specific and owned]
- [Planned action 2]
- [Decision needed: [Topic] — from [Who] — by [Date]]

---

## Budget Summary

| Category | Approved | Spent to date | Committed | Remaining | Status |
|---------|---------|--------------|---------|----------|--------|
| Labor (Dr. Lewis time) | [N hrs] | [N hrs] | [N hrs] | [N hrs] | 🟢 / 🟡 / 🔴 |
| External vendors | $[X] | $[X] | $[X] | $[X] | |
| Software / tools | $[X] | $[X] | $[X] | $[X] | |
| **Total** | **$[X]** | **$[X]** | **$[X]** | **$[X]** | **🟢 / 🟡 / 🔴** |

**Budget forecast at completion:** $[X] (vs. $[X] approved — [over/under by X%])

---

## Decisions Needed

| Decision | Options | Needed from | By when | Impact if delayed |
|---------|---------|------------|---------|-----------------|
| [Decision topic] | [A or B] | [Dr. Lewis / Matt Mathison] | [Date] | [What slips if decision is delayed] |

---

## Risks and Issues

| Item | Type | Probability | Impact | Mitigation | Owner |
|------|------|------------|--------|-----------|-------|
| [Risk 1] | Risk (not yet happened) | 🔴 High / 🟡 Med / 🟢 Low | [Description] | [Specific mitigation action] | [Owner] |
| [Issue 1] | Issue (actively happening) | N/A | [Description] | [Resolution action] | |

---

## Matt Mathison Brief (when required)

Project [Name] at [Company]: [Status in 1 sentence — honest]. [Most significant risk or issue in 1 sentence]. [Decision or action needed from Matt Mathison — or "no action needed from you at this time"].
```

## Output Contract
- Overall status = worst dimension — a project report that says "overall green" when the schedule is red is misleading; the overall health indicator is always the worst of scope/schedule/budget; Matt Mathison's brief reflects the actual status, not the most favorable interpretation
- Blockers are named with owners and dates — "we're blocked" is not enough; the block is named specifically ("the Bill.com API credentials haven't been provided by the vendor"), the person who resolves it is named ("Dr. Lewis to follow up with vendor by Thursday"), and the date it's expected to be cleared is specified; unresolved blockers with no owner are escalated by Dr. Lewis
- Decisions are surfaced proactively — project owners often wait for a decision to be obviously overdue before raising it; the tracker surfaces decisions needed in the next 2 weeks with the impact of delay; Matt Mathison's decision items are never a surprise — they are flagged at the earliest point where the window for the decision opens
- Budget actuals are tracked, not estimated — "spent to date" is an actual figure from invoices, time logs, and commitments; "committed" is signed contracts or approved POs not yet invoiced; "remaining" is approved budget minus (spent + committed); a project that has spent $0 but has $50K committed is not at 0% — it's at 67% of budget
- HITL required: Dr. Lewis reviews all project status reports before Matt Mathison distribution; any 🔴 status on any dimension triggers Matt Mathison notification same day; budget overruns >20% require Matt Mathison notification and approval to continue; all milestone misses on compliance/revenue-tied milestones escalated same day

## System Dependencies
- **Reads from:** Monday.com sprint boards, project budget tracking, time logs (if Dr. Lewis hours tracked), vendor invoices and commitments
- **Writes to:** Project status report (SharePoint/Projects/<Company>/<Project>/); Monday.com update; Matt Mathison brief (when triggered); escalation notifications
- **HITL Required:** Dr. Lewis reviews before Matt Mathison distribution; 🔴 status triggers same-day notification; budget overruns require approval; milestone misses on critical path require same-day escalation

## Test Cases
1. **Golden path:** Allevio billing software migration — Week 6 status → Scope: 🟢 (no changes); Schedule: 🟡 (data migration milestone at risk — original August 1 target, now forecasting August 8 due to legacy data cleanup complexity); Budget: 🟢 ($42K spent of $65K approved — on track); Overall: 🟡; Milestone tracker: 3 of 6 complete, data migration at risk; This period: Completed vendor UAT Phase 1, identified 3,200 records with data quality issues requiring manual cleanup; In progress: Data cleanup (40% done); Blocked: Need IT to provide read access to legacy DB table — Dr. Lewis following up by Thursday; Next period: Complete data cleanup; begin parallel billing cycle test; Budget: $42K spent + $12K committed = $54K of $65K = $11K remaining — adequate; Risks: 1-week schedule slip on data migration may compress UAT window if not recovered; Matt Mathison brief: "Allevio billing migration is on scope and budget; 1-week schedule risk on the data migration milestone due to data quality issues discovered in legacy system. No action needed from you — Dr. Lewis managing recovery with vendor. Will escalate if slip exceeds 2 weeks."
2. **Edge case:** A project milestone is missed and the owner doesn't report it → Dr. Lewis's weekly Monday.com review catches the missed milestone; Dr. Lewis reaches out to the project owner same day: "I see the [milestone] wasn't marked complete by [date]. Can you give me a 2-sentence update on status and when you expect completion?" If no response by end of day, Dr. Lewis escalates to the CEO; the tracking function only works if Dr. Lewis actively monitors and escalates — passive tracking is not project management
3. **Adversarial:** A project owner marks everything "green" despite obvious delays → Red/yellow status is the system doing its job — the goal of tracking is early warning, not reporting success; when status seems disconnected from reality, Dr. Lewis asks specific questions: "The data migration was due August 1 and it's now August 8 with no completion — what's the current status?" If the owner still reports green, Dr. Lewis overrides: "I'm marking this amber in the report — when a milestone date has passed without completion, the schedule indicator is amber until the new date is confirmed and achievable."

## Audit Log
All project status reports retained by project and date. Escalation records retained. Budget tracking documented. Milestone completion and slippage records retained. Matt Mathison notifications retained. Post-project audit trail available for lessons learned.

## Deprecation
Retire when portfolio companies have dedicated project managers or operations managers who own project tracking, status reporting, and escalation protocols without Dr. Lewis involvement in each project update.
