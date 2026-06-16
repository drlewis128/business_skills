---
name: ops-weekly-ops-report
description: "Generate a weekly operations status report. Use when the user says 'weekly ops report', 'weekly operations update', 'weekly status', 'ops status report', 'weekly report', 'what happened this week in ops', 'weekly operations summary', 'weekly update', 'ops weekly', 'this week in operations', 'operational update for the week', or 'weekly operational summary'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--week <YYYY-Www or date>]"
---

# Ops Weekly Operations Report

Generate the weekly operations status report at MBL portfolio companies — providing Matt Mathison and company leadership with a concise, structured update on what happened this week, what needs attention, and what's coming next. The weekly report is the primary communication mechanism between operational execution and executive oversight. It should take 5 minutes to read and 20 minutes to prepare; any longer on either end means it's doing too much.

## When to Use
- Every Monday morning (or end of prior week) — recurring cadence
- When Matt Mathison asks "how did the week go at [Company]?"
- Before a standing weekly call — as pre-read material
- After a significant event that needs to be communicated

## Weekly Report Framework

```
Report principles:
  BLUF always: Start with the 1-sentence bottom line
  Red flags first: Bad news goes at the top, not buried
  Specifics only: "Sales were up" is not a report; "$84K vs. $78K plan (+8%)" is
  Actions, not observations: Every problem statement ends with a named action
  Prep time: 20 minutes maximum — if it takes longer, the template is wrong
  
Sections (in order):
  1. Bottom Line (1-2 sentences): What's the overall ops health this week?
  2. Metrics Snapshot: 5-7 key numbers, this week vs. last week and vs. target
  3. Top 3 priorities this week: What actually happened? Progress/done/blocked?
  4. Issues requiring attention: Problems that need a decision or awareness
  5. Look ahead: Key activities and milestones next week
  6. Matt Mathison call-outs: Anything specific Matt Mathison needs to know or decide

Report cadence:
  Weekly: Brief snapshot (this template)
  Monthly: Deeper KPI review (ops-kpi-dashboard)
  Quarterly: OKR grades + ops review (ops-ops-review)
  Annual: Full retrospective + forward plan (ops-ops-review — annual version)
```

## Output Format

```markdown
# Weekly Ops Report — <Company Name>
**Week of:** [Date] | **Prepared by:** Dr. John Lewis | **Date:** [Date]

---

## Bottom Line

[1-2 sentences. Overall: operations are [strong/mixed/under pressure] this week. [Most important single fact — good or bad.]]

---

## Metrics Snapshot

| Metric | This week | Last week | Target | Status |
|--------|-----------|----------|--------|--------|
| [Claims submitted — Allevio] | [X] | [X] | [X/wk] | 🟢/🟡/🔴 |
| [First-pass acceptance rate] | [X%] | [X%] | [≥95%] | |
| [Open AR >60 days — Allevio] | $[X] | $[X] | [<$X] | |
| [BBL/day — HIVE] | [X] | [X] | [X target] | |
| [LOE/BOE — HIVE] | $[X] | $[X] | [<$X] | |
| [Open Tier 1 issues] | [N] | [N] | [0] | |
| [Open positions] | [N] | [N] | [<N] | |

---

## This Week's Top 3

**Priority 1: [What it was]**
Status: ✅ Done / 🔄 In progress / 🔴 Blocked
[2-3 sentences. What happened. If blocked — what's blocking and what's the plan.]

**Priority 2: [What it was]**
Status: ✅ / 🔄 / 🔴
[2-3 sentences.]

**Priority 3: [What it was]**
Status: ✅ / 🔄 / 🔴
[2-3 sentences.]

---

## Issues Requiring Attention

**🔴 Needs decision/action this week:**
- [Issue] — [Specific ask: approve $[X] / choose option A or B / contact vendor] — Owner: [Name]

**🟡 Monitoring (no action needed yet, but tracking):**
- [Issue] — [What we're watching for] — Review: [Date]

---

## Look Ahead: Next Week

Key activities and milestones:
- [Vendor implementation kickoff — Tuesday]
- [Payroll run — Thursday]
- [Insurance renewal decision due — Friday]
- [KPI dashboard update — Monday]

**Decisions needed next week:**
- [Decision] — context: [brief] — deadline: [Date]

---

## Matt Mathison Call-Outs

[Use this section only when there's something specific Matt Mathison needs to know or act on.]

🔴 **Action needed:** [What — by when]
🟡 **FYI:** [Information he should have — no action needed]

[If nothing: "No call-outs this week — nothing requiring Matt Mathison attention."]
```

## Output Contract
- Bottom line first — always — the bottom line is the first thing in the report; Matt Mathison reads many reports; he should know the answer to "how is [Company] doing?" from the first 2 sentences; if the answer requires reading the full report to understand, the bottom line section needs to be revised
- Issues have owners and actions — every problem in the "Issues" section has a named owner and a specific action or ask; "the denial rate is high" is an observation; "denial rate at 11% — root cause analysis in progress; billing manager presenting findings to Dr. Lewis by Thursday" is an issue entry; ownerless issues don't get resolved
- The report is honest — if it was a bad week, say so; temptation is to present the week as better than it was; the weekly report is a management tool, not a marketing document; Matt Mathison can only help if he has accurate information; a report that makes things sound better than they are is a liability, not an asset
- Metrics come from authoritative sources — numbers in the snapshot come from AdvancedMD, Covercy, QuickBooks, or Monday.com — not recollection; if the system isn't updated, update it before pulling the report; a report with stale numbers is worse than no report
- HITL required: Dr. Lewis prepares and reviews; CEO receives and reviews (primary audience); Matt Mathison receives brief summary or the full report depending on entity maturity; any item in the "Matt Mathison call-outs" section is communicated directly, not just included in the report

## System Dependencies
- **Reads from:** KPI dashboard (ops-kpi-dashboard), Monday.com (priorities, issues), AdvancedMD/Covercy/QuickBooks (metric data), incident log, milestone tracker (ops-milestone-manager)
- **Writes to:** Weekly report (SharePoint/Ops/<Company>/Reporting/WeeklyOps/); distributed via Teams or email to CEO and Matt Mathison (as appropriate)
- **HITL Required:** Dr. Lewis prepares; CEO reviews; Matt Mathison for call-outs only; any report showing >2 🔴 metrics is flagged to Matt Mathison via direct message in addition to the report

## Test Cases
1. **Golden path:** Allevio week ending June 20 → Bottom line: "Operations are mixed this week — billing volume strong but denial rate crept up again, and the AdvancedMD configuration fix is overdue." Metrics: claims submitted 384 (🟢 vs. 380 target); first-pass acceptance 93% (🟡 vs. 95% target); open AR >60 days $42K (🟢); open positions 1 (🟡 — offer pending); Priority 1: AdvancedMD modifier configuration — In progress (vendor call Thursday; config expected live by Friday); Priority 2: New billing specialist onboarded Week 1 (✅ — started Monday, assigned to peer buddy, access provisioned); Priority 3: Q3 OKR mid-quarter review — Done (presented to CEO Tuesday — filed in SharePoint); Issues: denial rate 11% — root cause: modifier rules; configuration fix in progress; Look ahead: AdvancedMD config go-live verification, payroll run, vendor scorecard due for AdvancedMD; Matt Mathison: no call-outs
2. **Edge case:** A significant incident happened this week (AdvancedMD outage, 2.5 hours) → The weekly report should summarize the incident, not re-explain it; "AdvancedMD outage Tuesday — 2.5 hours — managed per incident response plan; system restored; paper claims submitted electronically; no patient impact; post-mortem scheduled for June 25"; the full incident record is already filed separately; the weekly report gives the 2-sentence summary
3. **Adversarial:** "We don't need a formal weekly report — I'd rather just talk" → Verbal updates are good; they don't replace documentation; respond: "Let's keep the weekly call — and I'll send a 1-page written update before it. That way the call is for decisions and nuance, not for me recapping the week. The written update is also what I pull from when Matt Mathison asks how the quarter went; otherwise I'm working from memory."

## Audit Log
All weekly reports retained by company and week. Metric histories derivable from report archives. Issue tracking from open to close traceable across weekly reports. Matt Mathison call-outs retained.

## Deprecation
Retire when portfolio companies have operations teams that generate their own weekly reports, with Dr. Lewis receiving the report rather than preparing it, reviewing it for accuracy and escalation decisions.
