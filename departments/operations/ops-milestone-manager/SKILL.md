---
name: ops-milestone-manager
description: "Track project milestones and critical path. Use when the user says 'milestones', 'milestone tracker', 'are we on track', 'critical path', 'milestone schedule', 'key deliverables', 'milestone at risk', 'milestone missed', 'project timeline', 'track deliverables', 'when is this due', 'milestone dashboard', 'project schedule', or 'project dependencies'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--project <project name>] [--action <set|review|recover>]"
---

# Ops Milestone Manager

Track project milestones and critical path at MBL portfolio companies — maintaining clear visibility into key deliverables, their dates, dependencies, and whether the project is on track. Milestone management is distinct from task management: tasks are the work; milestones are the checkpoints that prove meaningful progress. A project can have 500 tasks and be completely off track; a project with 10 well-defined milestones and honest status tracking is manageable.

## When to Use
- Setting up milestone structure at the start of a project
- Weekly project review — checking status of approaching milestones
- A milestone has been missed and recovery planning is needed
- Multiple projects are running simultaneously and milestone conflicts need to be identified
- Matt Mathison needs a project timeline briefing

## Milestone Framework

```
Milestone definition — what makes a good milestone:
  Binary: Either complete or not complete (not "80% done")
  Deliverable-based: Produces something tangible (document, system, decision, launch)
  Date-specific: A specific date, not "end of Q3"
  Dependency-mapped: Which milestones must precede this one?
  
  Bad milestone: "Complete the software evaluation"
  Good milestone: "Software evaluation report delivered to CEO — approved or revised — by July 15"

Critical path:
  The sequence of milestones where any slip delays the project end date.
  Non-critical milestones have float — they can slip without affecting the end date.
  Critical path milestones get the most attention and earliest warning.

Milestone status definitions:
  🟢 On track: Will complete by planned date with high confidence
  🟡 At risk: May slip — specific threat identified; mitigation underway
  🔴 Missed: Past due date without completion — need recovery plan
  ✅ Complete: Done and accepted by the appropriate reviewer
  🔵 Not started: Hasn't begun; predecessor not yet complete

Recovery planning for missed milestones:
  First: Determine the impact on the end date (is this on the critical path?)
  Second: Find the cause (resource, dependency, scope, external factor?)
  Third: Options to recover: compress downstream schedule, add resources, reduce scope
  Fourth: If end date must move, notify stakeholders immediately — no surprises
```

## Output Format

```markdown
# Milestone Tracker — <Project Name>
**Company:** <Entity> | **Project owner:** [Name]
**Project start:** [Date] | **Target end:** [Date]
**Dr. Lewis review:** [Date] | **Matt Mathison brief:** [Required if 🔴 / Not required]

---

## Milestone Schedule

| # | Milestone | Owner | Planned date | Status | Actual/Forecast | Predecessors |
|---|-----------|-------|-------------|--------|----------------|------------|
| M1 | [First deliverable] | [Name] | [Date] | ✅ | [Actual date] | — |
| M2 | [Second deliverable] | [Name] | [Date] | 🟢 | [Date] | M1 |
| M3 | [Decision milestone] | [Name] | [Date] | 🟡 At risk | [New forecast] | M2 |
| M4 | [Go-live] | [Name] | [Date] | 🔵 | | M3 |

**Critical path:** M1 → M2 → M3 → M4 → [Project end]
**Current critical path status:** 🟢 / 🟡 / 🔴

---

## At-Risk and Missed Milestones

### 🟡 At Risk: M3 — [Milestone name]

**Original date:** [Date] | **Current forecast:** [Date] | **Slip:** [N days]
**Why at risk:** [Specific cause — not "things are running behind"]
**Is this on the critical path?** [Yes — slip moves end date / No — has X days of float]
**Mitigation in progress:** [What is being done to prevent the slip or limit its impact]
**Decision needed:** [Do we compress the downstream schedule, accept the slip, or escalate to Matt Mathison?]

---

## Timeline View

```
[Gantt-style text view if helpful]
Month 1: [M1]✅ ------- [M2]✅
Month 2:           ------- [M3]🟡 ----------
Month 3:                              [M4]🔵
```

---

## Recovery Plan (if milestone missed)

**Missed milestone:** [Name] — [Days late]
**Impact on project end date:** [+N days / No impact — not critical path]
**Recovery option A:** [Compress downstream task X by using parallel workstreams — saves N days]
**Recovery option B:** [Reduce scope: defer [feature] to Phase 2 — saves N days]
**Recovery option C:** [Add resource: [role] for [N weeks] at $[X] — recovers N days]
**Recommended:** [Option — rationale]
**New committed end date:** [Date]
**Matt Mathison notification required:** [Yes — end date moved more than 2 weeks / No]
```

## Output Contract
- Milestones are binary — "M3 is 75% complete" is not a milestone status; it's a task status; milestones are either done or not; if M3 requires 5 deliverables and 4 are done, M3 is not complete; mark it 🟡 At risk with the specific remaining item and expected completion date; binary status forces clarity and prevents false confidence
- Critical path is always identified — not all milestones are equal; the critical path milestones are the ones that, if they slip, move the project end date; these get priority attention, early escalation, and most of the recovery effort; non-critical milestones with float can slip without consequence (within the float window)
- Missed milestones are reported same day — a milestone that was due Monday and is not complete by Monday close gets a 🔴 status update and a recovery plan initiated by Dr. Lewis on Tuesday; the Matt Mathison brief is sent if the missed milestone is on the critical path or if the end date is threatened; no waiting until the weekly project review to surface a missed deadline
- Recovery plans have options and a cost — the recovery plan presents multiple options (compress, reduce scope, add resource) with their respective costs and trade-offs; Dr. Lewis recommends one; the decision to accept a delayed end date or invest in recovery belongs to the project sponsor or Matt Mathison depending on magnitude
- HITL required: Dr. Lewis reviews milestone status weekly; project owner updates status by Monday 9 AM in Monday.com; critical path milestones reviewed with CEO quarterly; Matt Mathison notified when end date moves >2 weeks on any project he's aware of; recovery options >$5K require Matt Mathison approval

## System Dependencies
- **Reads from:** Monday.com sprint boards, project plan, vendor timelines, resource availability
- **Writes to:** Milestone tracker (Monday.com + SharePoint/Projects/<Company>/<Project>/); recovery plan; Matt Mathison notification
- **HITL Required:** Dr. Lewis reviews weekly; project owner updates daily status; Matt Mathison notified for end-date moves >2 weeks; recovery investments >$5K require approval

## Test Cases
1. **Golden path:** Allevio billing migration — 6 milestones, 16-week project → M1 (requirements signed off) ✅; M2 (vendor configuration complete) ✅; M3 (data migration) 🟡 at risk — forecast slips 1 week due to legacy data quality; not on critical path (2 weeks of float); mitigation: compression of parallel tasks; end date unaffected; Matt Mathison: no notification needed; M4-M6 not started
2. **Edge case:** M4 (go-live) is missed because the vendor can't deliver on the committed date → Vendor-caused delay; Dr. Lewis activates vendor SLA enforcement (per ops-vendor-manager); recovery: vendor commits to new date with penalty clause activated; Matt Mathison notified (critical path miss with >2-week end date impact); options presented: (A) accept new date, (B) source a second vendor for parallel track; Dr. Lewis recommends A with SLA credit applied
3. **Adversarial:** Project owner reports "we're on track" but M3 date has passed without completion → The milestone tracker is the record; when Monday.com shows M3 as past-due without a ✅, the status is 🔴 regardless of verbal assurances; Dr. Lewis asks for a specific completion date and changes the status to 🔴 in the tracker; verbal "on track" without documented completion doesn't count

## Audit Log
All milestone trackers retained by project and date. Status change history retained. Recovery plans documented. Matt Mathison notifications retained. End-date changes recorded with reasons.

## Deprecation
Retire when portfolio companies have dedicated project managers who own milestone tracking in a PMO-standard system (Jira, Monday.com enterprise, Smartsheet) without Dr. Lewis reviewing each milestone directly.
