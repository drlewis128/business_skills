---
name: reporting-cadence-builder
description: "Build a structured reporting cadence for the organization. Use when the user says 'reporting cadence', 'when should reports go out', 'reporting schedule', 'executive reporting', 'who gets what report when', 'standardize reporting', 'build a reporting rhythm', 'report calendar', or 'establish reporting schedule'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--company <MBL|Allevio|HIVE|Column6>] [--audience <executive|operational|portfolio>]"
---

# Reporting Cadence Builder

Build a structured reporting cadence that delivers the right data to the right people at the right time. Reporting without a cadence is reactive — someone asks a question, a report gets built, it gets forgotten. A cadence makes reporting proactive and reliable: Matt Mathison knows he'll see the portfolio summary on Monday morning; portfolio company leads know they'll see their KPI dashboard weekly; Dr. Lewis has a review rhythm that doesn't require constant prompting.

## When to Use
- Building MBL's reporting rhythm for the first time
- Reporting is ad hoc and reactive — standardize it
- Portfolio company needs a reporting structure
- A new stakeholder joins — what do they receive and when?
- Matt Mathison is asking the same questions repeatedly — build a report that preempts them

## Report Calendar Design

```
Frequency hierarchy:
  Real-time: Dashboards — always current; stakeholder checks themselves
  Daily: Pipeline health, critical alerts — operational monitoring
  Weekly: KPI summaries, product health, sales pipeline — operational rhythm
  Monthly: Portfolio performance, financial review, OKR progress — strategic review
  Quarterly: OKR grades, strategy review, LP reporting (HIVE) — executive cycle
  Annual: Annual planning, budget, strategic roadmap — leadership cycle

The golden rule: match report frequency to decision frequency
  If a decision is made weekly → weekly report
  If a decision is made monthly → monthly report
  If it never drives a decision → don't report it
```

## MBL Standard Reporting Cadence

```
Monday (weekly):
  8am: Portfolio KPI summary → Matt Mathison (email)
  9am: Meeting Intelligence health → Dr. Lewis (Teams message)
  10am: Sprint planning (with engineering) — live meeting

Wednesday (biweekly):
  Product review → Dr. Lewis + engineering — live meeting

Thursday (weekly):
  9am: OKR pulse → Dr. Lewis self-review (dashboard check)
  2pm: Operations / CS review (if applicable)

Friday (biweekly):
  Sprint retrospective → Dr. Lewis + engineering — live meeting

Monthly (1st Monday):
  Allevio RCM summary → Allevio ops lead (email)
  Portfolio performance report → Matt Mathison (live review meeting)
  Financial variance report → Matt Mathison + CFO

Monthly (last Friday):
  Feedback synthesis report → Dr. Lewis review (internal)

Quarterly (end of quarter):
  OKR grades → Matt Mathison
  Data quality audit → Dr. Lewis
  HIPAA compliance report → Allevio (Allevio privacy officer)
  HIVE LP report → HIVE GP + Dr. Lewis
```

## Output Format

```markdown
# Reporting Cadence — <Company>
**Date:** <date> | **Author:** Dr. John Lewis
**Scope:** Full organization / <specific function>

---

## Report Calendar

| Report | Audience | Frequency | Day/Time | Channel | Owner | Status |
|--------|---------|---------|---------|---------|-------|--------|
| Portfolio KPI summary | Matt Mathison | Weekly | Mon 8am | Email + Teams | Dr. Lewis | 🟢 Active |
| Meeting Intelligence health | Dr. Lewis | Weekly | Mon 9am | Teams (self) | Dr. Lewis | 🟢 Active |
| Sprint planning | Engineering + Dr. Lewis | Weekly | Mon 10am | Live meeting | Dr. Lewis | 🟢 Active |
| Product review | Engineering + Dr. Lewis | Biweekly | Wed 2pm | Live meeting | Dr. Lewis | 🟢 Active |
| Portfolio performance | Matt Mathison | Monthly | 1st Mon | Live meeting | Dr. Lewis | 🟡 Building |
| Financial variance | Matt + CFO | Monthly | 1st Mon | Email | CFO/Dr. Lewis | 🟡 Building |
| OKR grades | Matt Mathison | Quarterly | End of quarter | Email | Dr. Lewis | 🟢 Active |
| HIVE LP report | HIVE GP | Quarterly | Per schedule | Package | Dr. Lewis + HIVE GP | 🟢 Active |
| HIPAA compliance | Allevio privacy officer | Quarterly | Per schedule | Report | Allevio PO | 🟡 Building |

---

## Report Specifications

### Weekly: Portfolio KPI Summary

**Audience:** Matt Mathison
**Purpose:** Answer "How is the portfolio doing this week?" without a meeting
**Format:** Email with 3-5 metrics; < 200 words; traffic light status
**Time to read:** < 2 minutes
**Data sources:** BigQuery portfolio mart; refreshed by 7am Monday
**Owner:** Dr. Lewis
**Escalation:** If any metric is Red, Dr. Lewis calls Matt before the email goes out

**Template:**
```
Subject: Portfolio KPI — Week of [date]

Matt,

[2 green things, 1 concern, 1 action needed]

ARR: $X (+8% MoM) 🟢
Pipeline: $Y (-12% WoW) 🟡 — investigating deal slippage
AI projects: 3/4 on track 🟢 | HIVE onboarding at risk 🔴

Action needed: HIVE AI onboarding — [brief context] — decision by [date]

Full dashboard: [link]
```

---

## Reporting RACI

| Report | Responsible (builds) | Accountable (owns accuracy) | Consulted | Informed |
|--------|---------------------|--------------------------|---------|---------|
| Portfolio KPI | Dr. Lewis | Dr. Lewis | Data sources | Matt Mathison |
| Financial variance | CFO | Dr. Lewis | QuickBooks data | Matt Mathison |
| LP report (HIVE) | HIVE GP | Dr. Lewis | Covercy | LP list |
| HIPAA compliance | Allevio privacy officer | Allevio CEO | Dr. Lewis | Matt Mathison |

---

## Report Health Metrics

| Report | Last sent | On time? | Recipient opened? | Action taken? |
|--------|----------|---------|-----------------|--------------|
| Portfolio KPI | <date> | ✅ | Yes (4 opens) | Yes — meeting scheduled |
| Meeting Intelligence | <date> | ✅ | N/A (self) | Yes — sprint action |
| Financial variance | <date> | ❌ 2 days late | Yes | Pending |
```

## Output Contract
- Every report has a named owner (Responsible) and an accountability owner — shared ownership = no ownership
- Every report has an explicit audience and purpose — a report without a decision it enables shouldn't exist
- Escalation protocol for Red metrics always defined — reactive escalation is too slow
- Report health tracked — if a report is never opened, it's not serving a purpose
- HITL required: Dr. Lewis reviews cadence design; Matt Mathison approves his own reporting schedule; LP reports (HIVE) require legal review before distribution; HIPAA compliance reports require Allevio privacy officer sign-off

## System Dependencies
- **Reads from:** BigQuery marts, Metabase dashboards, QuickBooks, GoHighLevel, Krista.ai
- **Writes to:** Reports (Outlook email, Teams, SharePoint); report calendar (SharePoint)
- **HITL Required:** Dr. Lewis owns cadence; Matt Mathison approves his reports; LP reports require legal; HIPAA reports require Allevio privacy officer

## Test Cases
1. **Golden path:** MBL full reporting cadence → Weekly: portfolio KPI (Matt, Monday), meeting intelligence health (Dr. Lewis, Monday); Monthly: portfolio performance review (Matt, 1st Monday), financial variance (CFO + Matt); Quarterly: OKR grades, HIVE LP report, HIPAA compliance; all reports have owners, audiences, templates, and escalation paths; report health tracked in a simple log
2. **Edge case:** Matt Mathison wants to add a daily report to the cadence → daily reports only work if a decision is made daily based on them; ask: "what decision do you make every day that this data would inform?" if the answer is "I just want to see it," the daily cadence is anxiety management, not decision support; recommend a live dashboard instead of a daily email; dashboards serve "see when I want" needs; reports serve "send when actionable" needs
3. **Adversarial:** Reporting cadence is being created but stakeholders say they don't read reports → understand why: too long, wrong format, wrong timing, doesn't answer their question; before building more reports, audit what's being read (email open rates, dashboard usage); start with the format the stakeholder will actually consume (email vs. Teams vs. dashboard vs. live meeting); the best report is the one that gets used

## Audit Log
Reporting cadence versioned. Report health log maintained monthly. Open rate and action tracking documented.

## Deprecation
Retire when each function has an autonomous reporting rhythm with self-maintaining dashboards and the reporting cadence is documented in each team's operating model.
