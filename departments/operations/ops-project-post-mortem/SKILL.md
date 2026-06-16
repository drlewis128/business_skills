---
name: ops-project-post-mortem
description: "Run a project post-mortem or retrospective. Use when the user says 'project post-mortem', 'project retrospective', 'project lessons learned', 'what went wrong on the project', 'project debrief', 'after-action review', 'project retrospective', 'what did we learn', 'project closeout review', 'project review meeting', 'post-project analysis', 'what worked and what didn't', or 'project wrap-up review'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--project <project name>] [--outcome <success|failure|mixed>]"
---

# Ops Project Post-Mortem

Run project post-mortems at MBL portfolio companies — structured retrospectives that extract actionable learning from completed projects, regardless of outcome. Post-mortems serve one purpose: making the next project better. They are not performance reviews, blame sessions, or celebration ceremonies. The value of a post-mortem is proportional to the honesty of the discussion — a post-mortem where everyone says "everything went great" produces nothing usable.

## When to Use
- A project has completed (successfully or not) and the team should capture learning
- A project has failed or been cancelled and the root cause needs to be identified
- A project was significantly over budget, over schedule, or reduced in scope
- Matt Mathison asks "what did we learn from [project]?"
- A similar project is being planned and the team wants to apply prior lessons

## Post-Mortem Framework

```
Three principles that make post-mortems work:
  1. Blameless: The goal is to understand what happened, not who to blame.
     Systems thinking: poor outcomes are usually caused by system failures, not individual failures.
     People who fear blame withhold the most useful information.
  
  2. Specific: "Communication was poor" is not a finding. 
     "The vendor's API documentation was inaccurate at v2.1 and wasn't caught until Week 4,
     causing a 2-week delay on the integration milestone" is a finding.
  
  3. Actionable: Every finding must generate a specific action or a deliberate decision not to act.
     "We need to communicate better next time" is not an action.
     "Dr. Lewis will send a weekly 3-bullet status update every Monday for all projects >6 weeks" is an action.

Post-mortem timing:
  Run within 2 weeks of project completion — memories are fresh, the team is available, and
  lessons apply directly to the next project in the pipeline.
  
  For failed/cancelled projects: run within 1 week while the information is most accessible.

Attendees:
  Project team (everyone who worked on it), not just leaders
  Dr. Lewis (facilitates or participates)
  Project sponsor (observes — not the focus of blame; provides organizational context)
  
Format: 90-minute facilitated session (or async if team is distributed)
```

## Output Format

```markdown
# Project Post-Mortem — <Project Name>
**Company:** <Entity> | **Date:** [Date]
**Project outcome:** ✅ Success / ❌ Failure / 🟡 Mixed
**Facilitator:** Dr. John Lewis | **Attendees:** [Names and roles]
**Project duration:** [Start → End] | **Budget:** $[Approved] → $[Actual]

---

## Project Summary

**What was the project?** [1-2 sentences — what did we set out to do?]
**What was the outcome?** [Honest assessment: Did we achieve what we planned? On time? On budget? At the planned scope?]

| Dimension | Planned | Actual | Variance | Assessment |
|-----------|---------|--------|---------|-----------|
| Duration | [X weeks] | [Y weeks] | [+/- Z weeks] | 🟢 On / 🔴 Over |
| Budget | $[X] | $[Y] | [$+/-Z] | 🟢 On / 🔴 Over |
| Scope | [Original scope] | [Final scope] | [Added / Reduced] | 🟢 On / 🟡 Changed |
| Quality | [Target outcome] | [Actual outcome] | | |

---

## What Went Well

(These are the practices, decisions, and behaviors to intentionally repeat.)

| What went well | Why it worked | Keep doing: specific action |
|---------------|--------------|---------------------------|
| [e.g., "Daily vendor standup in Week 2-3 caught the API issue early"] | [Tight feedback loop; issues surfaced before they became blockers] | [All vendor implementation projects use daily standup in the integration phase] |
| [e.g., "Matt Mathison was briefed in 3 sentences and never needed to ask for a status update"] | [Weekly brief established a trust rhythm] | [Continue weekly 3-sentence brief on all projects] |

---

## What Didn't Go Well

(These are the failures, gaps, and problems to understand and fix.)

| What went wrong | Root cause (not symptom) | Impact | Action to prevent recurrence |
|----------------|------------------------|--------|------------------------------|
| [e.g., "Data migration took 3 weeks instead of 1"] | [Legacy data wasn't audited before project start — didn't know 30% of records had format issues] | [2-week schedule slip; ~$4K additional labor] | [Add legacy data audit as a required milestone in all migration projects; completion gate before migration phase begins] |
| [e.g., "Vendor didn't deliver documentation on time"] | [No SLA on deliverables in the contract; verbal commitment only] | [1-week delay] | [Add delivery SLA with penalty clause to all vendor contracts; Dr. Lewis reviews before signing] |

---

## Root Cause Analysis (for the primary failure, if applicable)

**Primary failure:** [The most significant thing that went wrong]

**5 Whys:**
1. Why: [The failure occurred because...]
2. Why: [That happened because...]
3. Why: [That happened because...]
4. Why: [That happened because...]
5. Why: [Root cause — the underlying system or process failure]

**Root cause:** [Specific, systemic, actionable — not "people didn't communicate enough"]

---

## Surprises (things we didn't anticipate)

| Surprise | Impact | Would we have caught it with better planning? | How? |
|---------|--------|----------------------------------------------|------|
| [Surprise 1] | [Positive / Negative] | [Yes / No] | [Specific planning action] |

---

## Process Improvements

**These changes will be made to how we run projects:**

| Improvement | Change | Applies to | Owner | By when |
|------------|--------|-----------|-------|---------|
| [Add data audit milestone to migration projects] | [New gate in project plan template] | All migration projects | Dr. Lewis | [Date] |
| [Require SLA in all vendor contracts] | [Contract template update] | All future vendor contracts | Dr. Lewis | [Date] |

---

## What We Would Do Differently

If we could restart this project from Day 1, knowing what we know now:
1. [Specific decision or action we'd do differently]
2. [Specific decision or action we'd do differently]
3. [What we'd keep exactly the same]

---

## Output: Lessons Learned Summary

(This section is extracted and stored in the lessons learned library for future projects.)

**Project type:** [System implementation / Process redesign / Change management / Other]
**Primary lesson:** [The single most important thing someone planning a similar project should know]
**Traps to avoid:** [The 2-3 most costly mistakes made that a similar project should not repeat]
**What to replicate:** [The 1-2 practices that worked so well they should be standard on similar projects]
```

## Output Contract
- Blameless facilitation is non-negotiable — the facilitator (Dr. Lewis) redirects any discussion that attributes failure to an individual's character or competence and refocuses it on the system: "What process or planning decision made it likely that would happen?"; a post-mortem that ends with "it was X's fault" has produced nothing useful — the same failure will recur with the next person in that role; Dr. Lewis sets and enforces this norm at the start of each session
- Root cause goes to the 5th why — "the vendor was late" is a symptom; "we had no SLA in the contract because no one reviewed the contract before signing" is a root cause; "the 5 Whys" technique is applied to every significant failure finding; a root cause is reached when the next "why" is outside the control of anyone in the organization or when the answer is a systemic pattern rather than a single event
- Action items are specific and owned — "communicate better" is banned from the action column; every action has a verb, a specific change, an owner (one person), and a deadline; if a finding generates no actionable change, the post-mortem documents "deliberate no action: [reason]" — an explicit decision, not an oversight
- Lessons learned are extracted for future use — the summary section is written to be useful to someone who wasn't on the project; it is stored in the lessons learned library and referenced before similar projects begin; the system only works if the lessons are pulled forward — a post-mortem that generates lessons no one ever reads is a good meeting with no organizational value
- HITL required: Dr. Lewis facilitates all post-mortems; CEO and Matt Mathison receive summary for projects >$25K or projects with significant failure; action items tracked in Monday.com with owners; lessons learned summary filed in SharePoint and referenced in kickoff of similar future projects

## System Dependencies
- **Reads from:** Project plan, budget actuals, milestone tracker, incident reports (if any), team interviews
- **Writes to:** Post-mortem report (SharePoint/Projects/<Company>/<Project>/Post-Mortem/); Lessons Learned Library (SharePoint/Ops/<Company>/Lessons Learned/); action items (Monday.com); Matt Mathison brief (for >$25K or failed projects)
- **HITL Required:** Dr. Lewis facilitates; CEO/Matt Mathison receive summary for major projects; action items tracked by Dr. Lewis; lessons learned library updated by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio billing software migration — successful but 2 weeks late and $8K over budget → Post-mortem scheduled within 10 days of go-live; Attended by: billing team (4), project manager, Dr. Lewis (facilitator), CEO (observer); What went well: vendor UAT process was thorough (caught 3 defects before go-live), weekly Matt Mathison brief maintained trust throughout, change champion approach worked (billing lead trained first and supported peers); What went wrong: data audit happened in Week 3 (should have been Week 0) causing 2-week slip and $5K rework; no legacy data format specification in the vendor SOW; Action: All future migration projects must include a legacy data audit as a pre-project gate milestone (not within the project timeline); Dr. Lewis updates migration project template by month end; primary lesson: "Audit the data before the project begins, not during it — data quality issues are the most common cause of migration delay"
2. **Edge case:** A project was cancelled after 6 weeks and $15K spent — team morale is low → Run the post-mortem within 1 week; the goal is not to justify the cancellation but to learn: Was the cancellation decision correct? Was it made at the right time? What signals were there earlier that the project should be stopped? A cancelled project post-mortem often yields the most valuable learning because it surfaces the point at which the project was no longer viable and whether that was recognized in time; "How could we have known sooner?" is the most important question
3. **Adversarial:** Team says "we already know what went wrong — we don't need a post-mortem" → "Knowing what went wrong" and "knowing what to do differently next time" are different things; the post-mortem converts the first into the second; respond: "I believe you — but 'the data wasn't clean' isn't a lesson, it's a complaint. What I want to leave this meeting with is: (1) what process change prevents us from starting a data migration without auditing the data first, and (2) who owns making that change. That takes 60 minutes. Without it, the next migration project will have the same problem with the next team."

## Audit Log
All post-mortem reports retained by project and date. Root cause analyses retained. Action items and completion status retained. Lessons learned summaries extracted to lessons learned library. Matt Mathison briefs retained.

## Deprecation
Retire when portfolio companies have established post-mortem and lessons learned processes run by their own operations teams, with Dr. Lewis reviewing summaries rather than facilitating each session.
