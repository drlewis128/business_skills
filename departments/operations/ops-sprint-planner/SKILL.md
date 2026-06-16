---
name: ops-sprint-planner
description: "Plan and run operational sprints and iteration cycles. Use when the user says 'sprint planning', 'sprint', 'plan a sprint', '2-week sprint', 'weekly sprint', 'sprint review', 'sprint retrospective', 'iteration planning', 'work planning', 'ops sprint', 'operations sprint', 'plan this week', 'prioritize work for the sprint', 'what do we work on this sprint', or 'sprint backlog'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--length <1-week|2-week>] [--action <plan|review|retro>]"
---

# Ops Sprint Planner

Plan and execute operational work sprints at MBL portfolio companies — applying agile-inspired sprint structure to operations work to create predictable delivery, visible priorities, and regular retrospection. Operational sprints are not software development sprints: they don't need story points, burndown charts, or velocity calculations. They need a clear weekly or biweekly cadence where the team agrees on what they'll accomplish, executes with focus, and reflects briefly on what worked. The sprint structure prevents the most common operational failure: everything is urgent, nothing is prioritized, and important work never gets done because reactive work crowds it out.

## When to Use
- Setting up a work cadence for an operations team or project
- Beginning of a new week or sprint — prioritizing work from the backlog
- Mid-sprint check-in — are we on track?
- End of sprint — review and retrospective
- The team is reactive and struggling to make progress on important work

## Sprint Framework

```
Sprint length options:
  1-week sprint: Best for fast-moving, unpredictable work; short feedback loop; higher overhead
  2-week sprint: Standard for most operations work; balances focus with flexibility
  
Sprint structure (2-week example):
  Monday Week 1, 9-10 AM: Sprint planning (pick the sprint goal, select work)
  Daily: 15-min standup (what did I do yesterday? What am I doing today? Any blockers?)
  Friday Week 2: Sprint review (what did we complete?) + retrospective (what can we improve?)
  
  Between sprints: backlog grooming — ensure upcoming work is ready to be worked
  
Sprint backlog management:
  Backlog = all work that needs to be done (not scheduled for this sprint)
  Sprint = subset of backlog selected for this cycle, based on priority and capacity
  Velocity = how much work the team actually completes per sprint (takes 3-5 sprints to know)
  
  Sprint commitment:
    Fill to 80% of estimated capacity — leave 20% for urgent/unexpected work
    If the team is consistently >100% utilized, reduce the sprint commitment
    If the team is consistently <70% utilized, increase the sprint commitment

Ops-specific adaptations:
  Maintenance work: BAU (business as usual) items are pre-allocated in sprint capacity
    Recommended: 30-40% of capacity for BAU/maintenance; 60-70% for project work
  Urgent items mid-sprint: Triage using P1/P2/P3 — only P1 and P2 displace committed sprint work
  OKR alignment: At least one sprint item per active OKR Key Result per sprint
  
Definition of Done (for operations):
  Work is "done" when: completed, documented (if SOP-level), communicated to affected parties
  "Done" is binary — partially done is not done; it's in-progress
```

## Output Format

```markdown
# Sprint Plan — <Company Name> | <Sprint Number>
**Sprint:** [Sprint #] | **Dates:** [Start date] to [End date]
**Team:** [Name(s)] | **Sprint goal:** [1-sentence goal for this sprint]
**Total capacity:** [N person-days] | **BAU allocation:** [N person-days (X%)] | **Available for sprint work:** [N person-days]
**Prepared by:** Dr. John Lewis | **Date:** [Date]

---

## Sprint Goal

[One sentence. What is the most important thing this team will accomplish in this sprint? Not a list — a single focus.]

---

## Sprint Backlog

| Priority | Item | OKR link | Owner | Est. (hrs) | Status |
|---------|------|---------|-------|-----------|--------|
| 🔴 1 | [Highest priority item] | [OKR] | [Name] | [N] | Not started |
| 🔴 2 | [Second priority] | | [Name] | [N] | |
| 🟡 3 | [Medium priority] | | | [N] | |
| 🟡 4 | | | | | |
| 🟢 5 | [Lower priority — do if capacity allows] | | | [N] | |

**Committed sprint total:** [N hrs] / [N capacity hrs] — [X%] loaded
**BAU items this sprint:** [List briefly — payroll run, weekly report, vendor follow-up]

---

## Daily Standup Log (optional — fill as sprint runs)

| Day | What we did | What's next | Blockers |
|-----|------------|------------|---------|
| Mon [Date] | | | |
| Tue | | | |
| ... | | | |

---

## Sprint Review (end of sprint)

**Sprint goal achieved:** ✅ Yes / ⚠️ Partial / ❌ No

| Item | Status | Notes |
|------|--------|-------|
| [Item 1] | ✅ Done / 🔄 Partial / 🔵 Not started | |
| [Item 2] | | |

**What we completed (summary):** [N items done; N hrs of work delivered]
**What we didn't complete:** [Item — why — moves to next sprint backlog]
**OKR progress:** [Which KRs moved this sprint?]

---

## Sprint Retrospective

**What went well:**
- [Specific — not "good teamwork"]

**What didn't go well:**
- [Specific — root cause if known]

**One improvement for next sprint:**
[Specific, actionable: "We will set a 4 PM cutoff for new requests that displace committed sprint work — anything after that goes to next sprint"]

---

## Next Sprint Preview

**Suggested sprint goal:** [Draft — to be confirmed in next sprint planning]
**High-priority backlog items for next sprint:**
1. [Item]
2. [Item]
3. [Item]
```

## Output Contract
- The sprint goal is singular — the sprint has one primary goal, not five; if the team can accomplish one important thing per sprint with discipline, they will accomplish 26 important things per year; "we're going to do everything" is not a sprint goal; the sprint goal forces a choice about what matters most this cycle
- BAU has reserved capacity — BAU work (weekly reports, payroll coordination, vendor follow-ups, standing meetings) consumes real capacity; pretending it doesn't leads to over-commitment and consistent non-delivery on project work; the sprint plan explicitly allocates BAU capacity before selecting project work; if BAU is taking >50% of capacity consistently, that's an important signal to surface to the CEO
- Incomplete work is tracked honestly — if an item from the sprint wasn't completed, it's not marked done; it moves to the next sprint backlog with a note about what didn't happen; a team that consistently over-commits and under-delivers needs a smaller sprint commitment, not more pressure; the retrospective addresses the pattern, not just the symptom
- One improvement per retrospective — the retrospective produces one specific, actionable improvement that will be implemented in the next sprint; vague improvements ("communicate better") are not improvements; specific process changes ("we will hold a 30-minute backlog grooming session every Thursday") are improvements
- HITL required: Dr. Lewis plans and facilitates for operations teams he directly oversees; team members own their committed sprint items; blockers escalated to Dr. Lewis within 24 hours; P1 interruptions to the sprint require Dr. Lewis triage; sprint review shared with CEO at end of each sprint

## System Dependencies
- **Reads from:** OKR tracker (ops-okr-tracker), project backlog (Monday.com), capacity data, prior sprint retrospective
- **Writes to:** Sprint plan and review (Monday.com sprint board + SharePoint/Ops/<Company>/Planning/Sprints/); retrospective log; OKR progress update
- **HITL Required:** Dr. Lewis facilitates sprint planning; team owns daily execution; blockers escalated to Dr. Lewis; CEO receives sprint review summary; P1 interruptions triaged by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio ops 2-week sprint → Goal: "Configure the denial management modifier guide in AdvancedMD and train billing team by end of sprint"; Capacity: 8 person-days; BAU: 2.5 days (weekly reports, payroll coordination, vendor follow-ups); Available: 5.5 days; Sprint backlog: (1) AdvancedMD modifier configuration — 2 days (🔴 priority); (2) Billing team training session — 0.5 day (🔴); (3) Vendor scorecard for AdvancedMD — 1 day (🟡); (4) Equipment register update — 0.5 day (🟢); Loaded: 4 days project work / 5.5 available = 73% (appropriate); Sprint review: items 1-3 done ✅; item 4 not started (capacity went to an unexpected vendor billing dispute — P2); Retro: "One improvement: vendor billing disputes will be batched on Fridays instead of handled immediately — unless P1"; next sprint goal drafted
2. **Edge case:** A P1 incident happens in week 1 of the sprint and consumes 2 full days → Re-triage sprint backlog immediately; remove lowest priority items to maintain a realistic commitment; communicate the change to CEO: "Sprint goal adjusted — AdvancedMD incident required 2 days of unplanned response; items 3 and 4 deferred to next sprint; item 1 (critical) still on track"; do not pretend the sprint is on track when it isn't
3. **Adversarial:** "We already have Monday.com for tracking — why do we need sprint structure?" → Monday.com is a tool; sprint structure is a rhythm; a board full of tasks with no cadence is a backlog without prioritization; the sprint answers "what do we commit to this week?" and "how did we do last week?"; without that cadence, every task competes equally and urgent always beats important; respond: "The sprint structure uses Monday.com — it just adds a 2-week prioritization cadence and a quick retrospective. It takes 90 minutes of planning per sprint. I've seen this double the throughput of ops teams in 6 weeks."

## Audit Log
All sprint plans and reviews retained by sprint number and company. Retrospective improvements retained and tracked. Velocity tracked per team over time. P1 interruptions to sprints documented. OKR progress attributable to specific sprint work.

## Deprecation
Retire when operations teams self-manage their sprints — planning, reviewing, and improving their cadence independently — with Dr. Lewis participating as a stakeholder who receives the sprint review rather than the facilitator who runs the sessions.
