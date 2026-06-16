---
name: management-reporting-suite
description: "Build a management reporting package for internal leadership. Use when the user says 'management report', 'management reporting', 'internal financial report', 'weekly financial update', 'monthly management report', 'operating report', 'management dashboard', 'financial report for leadership', 'management financial package', 'internal reporting', or 'build the management report'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--cadence <weekly|monthly>] [--audience <matt|ceo|department-heads>]"
---

# Management Reporting Suite

Build a concise, action-oriented financial and operational management report for internal leadership — Matt Mathison, portfolio company CEOs, and department heads. Unlike board packages (which are formal, backward-looking, and presented to a governance body), management reports are working documents: fast to read, focused on what's actionable, and distributed frequently enough that leaders can course-correct in real time.

## When to Use
- Weekly financial pulse for Matt Mathison — cash, revenue, key flags
- Monthly management report for a portfolio company CEO
- An operating leader asks "how are we doing financially this month?"
- Building a standard management reporting cadence for a new portfolio company
- Matt Mathison wants a one-page financial and operational summary before a decision

## Management Reporting Design

```
Two cadences; two formats:

Weekly (Matt Mathison pulse):
  - Cash position (current week vs. prior week)
  - Revenue pacing (week-to-date vs. weekly target)
  - 3 flags: what is most important right now?
  - One action item
  Format: Under 200 words + one table. Read time: 60 seconds.

Monthly (Portfolio Company — CEO/Leadership):
  - Month scorecard (KPIs vs. targets)
  - Financial summary (revenue, EBITDA, cash)
  - Top 3 operational highlights
  - Top 3 problems to solve
  - Next month priorities
  Format: 1 page. Read time: 3 minutes.
```

## Output Format

### Weekly Version (Matt Mathison)

```markdown
# Weekly Financial Pulse — <Entity>
**Week of:** [Start date – End date]
**Prepared by:** Dr. John Lewis | **Sent:** [Day, Date]

---

| | This Week | Prior Week | Change |
|---|---|---|---|
| **Cash (operating account)** | $[X] | $[X] | $[±X] 🟢/🟡/🔴 |
| **Revenue (WTD)** | $[X] | $[X] target | [X%] of weekly target |
| **Outstanding AP** | $[X] | $[X] | $[±X] |
| **Outstanding AR (>30 days)** | $[X] | $[X] | $[±X] |

**🚩 This week's flags:**
1. [Most important thing Matt Mathison should know — specific and action-oriented]
2. [Second flag — or "No additional flags"]
3. [Third flag — or remove if not needed]

**✅ Action needed from Matt Mathison:** [Specific — approve X / decision on Y / review Z] or "None this week — tracking to plan."
```

---

### Monthly Version (CEO / Portfolio Company)

```markdown
# Monthly Management Report — <Company Name>
**Period:** <Month YYYY>
**Prepared by:** Dr. John Lewis | **For:** <CEO name>
**Distributed:** <Date> (within 10 days of month end)

---

## SCORECARD

| KPI | Target | Actual | Status | vs. Prior Month |
|-----|--------|--------|--------|----------------|
| [Revenue / ARR / Billings] | $[X] | $[X] | 🟢/🟡/🔴 | [±X%] |
| [Gross margin %] | [X%] | [X%] | 🟢/🟡/🔴 | [±Xpp] |
| [EBITDA] | $[X] | $[X] | 🟢/🟡/🔴 | |
| [Cash position] | >$[X] | $[X] | 🟢/🟡/🔴 | |
| [Primary operational KPI — e.g., active practices / BBL/day / active clients] | [Target] | [Actual] | 🟢/🟡/🔴 | |
| [Secondary operational KPI] | [Target] | [Actual] | | |

---

## FINANCIAL SUMMARY

| | [Month] | Budget | Variance | YTD | YTD Budget |
|---|---|---|---|---|---|
| Revenue | $[X] | $[X] | $[±X] | $[X] | $[X] |
| Gross Profit | $[X] | $[X] | | | |
| Gross Margin % | [X%] | [X%] | | | |
| OpEx | $[X] | $[X] | | | |
| EBITDA | $[X] | $[X] | $[±X] | | |
| Net Income | $[X] | $[X] | | | |
| Cash (EOM) | $[X] | | | | |

**Financial narrative (3 bullets max):**
- [Revenue]: [Observation — up/down vs. budget — 1 sentence reason]
- [EBITDA]: [Observation]
- [Cash]: [Observation — trend or point of note]

---

## THIS MONTH — WHAT HAPPENED

**Top 3 wins:**
1. [Most important positive — specific and quantified where possible]
2. [Second win]
3. [Third win]

**Top 3 problems to solve:**
1. [Most important problem — specific; what are we doing about it?]
2. [Second problem — who owns it / by when?]
3. [Third problem — or remove if not needed]

---

## NEXT MONTH — WHAT WE'RE FOCUSED ON

| Priority | Owner | Success looks like |
|---------|-------|------------------|
| 1. [Top priority] | [Name] | [Specific, measurable outcome] |
| 2. [Second priority] | | |
| 3. [Third priority] | | |

---

## DECISIONS NEEDED

| Decision | Context | Who decides | By when |
|---------|---------|------------|--------|
| [Specific decision] | [Brief context] | Matt Mathison / CEO | [Date] |
| [Second decision — or remove] | | | |

*If no decisions needed: "No decisions required this month. All priorities have clear ownership."*
```

## Output Contract
- Weekly version: under 200 words plus one table — length discipline is the point; if Matt Mathison has to read 400 words to get the weekly financial pulse, the cadence breaks down; ruthlessly cut to the most essential
- Action item always explicit — every weekly and monthly report must end with a specific action item or confirm that none is needed; "no action needed" is information; never leave the recipient uncertain about whether they need to do something
- Operational and financial KPIs always together — a management report that shows only financial data without operational context (practices, BBL/day, clients) is incomplete for operating company leaders; the scorecard must include the operational drivers of the financial results
- Problems always include ownership and timeline — "problem" without "who owns it" and "by when" is noise; if a problem is identified and there's no owner or timeline, that is itself a problem to flag
- HITL required: Dr. Lewis prepares; portfolio company CEO confirms operational data accuracy; Matt Mathison approves before any LP-facing distribution; weekly pulse reviewed by Dr. Lewis before sending

## System Dependencies
- **Reads from:** QuickBooks (financial data), bank accounts (cash position), payroll records, primary operational system (AdvancedMD for Allevio, Covercy for HIVE), AR/AP reports
- **Writes to:** Management report (SharePoint/Finance/Management Reports/); weekly Outlook/Teams message to Matt Mathison
- **HITL Required:** Dr. Lewis prepares; CEO reviews operational section; Dr. Lewis sends; Matt Mathison does not require approval for internal management reports (only for external distribution)

## Test Cases
1. **Golden path:** Allevio monthly management report for May 2026 → Scorecard: revenue $342K (target $320K — 🟢 +6.9%), gross margin 74.6% (target 72% — 🟢), EBITDA $57K (target $48K — 🟢), cash $234K (target >$200K — 🟢), active practices: 14 (target 14 — 🟢); Wins: (1) 2 new practices implemented — 4 days ahead of schedule; (2) LOE reduced by renegotiating supply agreement; (3) DSO improved from 42 to 37 days; Problems: (1) 1 practice is 45 days past due on their monthly fee — Morgan Sills owns, collection call scheduled June 12; (2) Implementation backlog growing — 3 practices in queue; may need additional implementation resource; Next month: (1) Onboard 2 practices in queue, (2) Resolve past-due account, (3) Evaluate implementation team capacity; Decisions: Dr. Lewis requesting Matt Mathison approval to hire 1 contract implementation specialist ($8K/month, 3-month term); distributed June 10 (Day 7 of close)
2. **Edge case:** The monthly report is ready but one KPI is missing because the operational system data isn't available yet → do not delay the report; send the available data with a placeholder: "Active practices — data pending (AdvancedMD export delayed; will update by [date])." A report that's slightly incomplete is better than a report that arrives late; the operational data can be sent as an update; financial data should not be held for operational data
3. **Adversarial:** A portfolio company CEO wants to remove the "problems to solve" section from the management report because "it makes us look bad" → the problems section is the most valuable part of the report for Dr. Lewis and Matt Mathison; omitting it creates the false impression that nothing needs attention; respond: "The problems section is there so we can resolve issues faster, not to assign blame. Everything in this section is known to you and me already — it just makes sure Matt has the same visibility. If any specific item concerns you, let's discuss the framing. But removing the section entirely means Matt doesn't know about issues until they're crises."

## Audit Log
Weekly pulses and monthly reports retained by period and entity. Distribution dates and recipients logged. Matt Mathison action item responses tracked. Problems-to-solve items tracked to resolution.

## Deprecation
Retire when portfolio companies have BI/dashboard tools (e.g., QuickBooks-connected dashboards, Looker, Tableau) that auto-generate management reports from live data, requiring human curation only of the narrative sections.
