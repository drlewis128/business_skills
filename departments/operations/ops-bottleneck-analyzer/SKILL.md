---
name: ops-bottleneck-analyzer
description: "Identify and resolve operational bottlenecks. Use when the user says 'bottleneck', 'what is slowing us down', 'throughput problem', 'process is slow', 'things are backing up', 'queue is growing', 'capacity constraint', 'things are getting stuck', 'backlog is building', 'why is this taking so long', 'operational constraint', 'where is the hold up', 'process delay', or 'throughput analysis'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--process <process or function name>] [--symptom <queue buildup|delays|errors|throughput drop>]"
---

# Ops Bottleneck Analyzer

Identify and resolve operational bottlenecks at MBL portfolio companies — the constraints that limit throughput, cause delays, and build backlogs. Every system has a bottleneck (the constraint that limits the rate of the whole system). The goal is not to eliminate all inefficiency everywhere — it's to identify and address the constraint that is actually limiting the output. Based on the Theory of Constraints: the throughput of the system equals the throughput of its bottleneck; improving anything other than the bottleneck is waste.

## When to Use
- A backlog is building in a specific part of the operation
- Cycle times are increasing without a clear explanation
- A specific team or step is consistently overloaded while others wait
- Matt Mathison asks "why is [process] taking so long?"
- Operational capacity is being added (headcount, tools) but throughput isn't improving
- An operational process has been mapped and improvement opportunities need to be sized

## Bottleneck Analysis Framework

```
Theory of Constraints (ToC) — 5 Focusing Steps:

Step 1 — IDENTIFY the constraint
  The bottleneck is the step with the longest queue ahead of it, the highest utilization,
  and/or the lowest throughput. Ask: Where does work pile up? Where do people wait?
  
Step 2 — EXPLOIT the constraint
  Get maximum output from the constraint before adding resources. 
  Is the constraint idle during lunch? Are non-constraint tasks being done at the constraint?
  Every minute the constraint is not producing = lost throughput for the whole system.
  
Step 3 — SUBORDINATE everything else to the constraint
  Other steps should pace themselves to feed the constraint but not exceed its capacity.
  Producing more before the constraint creates WIP (work in progress) pileup, not output.
  
Step 4 — ELEVATE the constraint
  If exploiting the constraint isn't enough: add capacity at the constraint only.
  Do NOT add capacity everywhere — only where the constraint is.
  
Step 5 — PREVENT inertia (find the new constraint)
  After resolving the bottleneck, a new one will emerge. Repeat the process.

Bottleneck identification questions:
  "Where does work sit waiting the longest?"
  "What step has the longest queue at the end of the day?"
  "What does everyone else wait for?"
  "What task, if it ran twice as fast, would most improve our output?"
  "What step are we most afraid of falling behind on?"

Common bottleneck types in portfolio companies:
  Approval bottleneck: work waits for a decision-maker (often Dr. Lewis or Matt Mathison)
  Skill bottleneck: one person has knowledge no one else has
  System bottleneck: a software tool is slow, has limited licenses, or requires manual input
  Handoff bottleneck: work moves between teams/departments and gets lost or delayed
  Capacity bottleneck: a step simply has insufficient capacity for the volume
```

## Output Format

```markdown
# Bottleneck Analysis — <Process / Function>
**Company:** <Entity> | **Date:** [Date]
**Symptom reported:** [What the user observed — e.g., "billing claims are taking 45 days to process"]
**Analyst:** Dr. John Lewis

---

## Current State Throughput

| Metric | Current | Target | Gap |
|--------|---------|--------|-----|
| Average cycle time (start to finish) | [X days] | [X days] | [Y days] |
| Queue at step [X] (avg backlog) | [N items] | 0 | [N items] |
| Throughput (units completed/period) | [N/week] | [N/week] | [N] |
| Step utilization (estimated) | [X%] | <80% | |

---

## Bottleneck Identification

**Observed evidence of the bottleneck:**
1. [Specific observation — e.g., "The claims queue at Step 4 (provider review) averages 22 claims at end of day vs. 2-3 at other steps"]
2. [Specific observation — e.g., "Claims cleared Steps 1-3 same-day but average 4 days in Step 4"]
3. [Specific observation]

**Bottleneck located at:** Step [X] — [Description of the step]
**Bottleneck type:** [Approval / Skill / System / Handoff / Capacity]

**Why this step is the constraint:**
[Specific analysis — what causes the constraint? Volume? Speed? Decision requirement? Skill gap?]

---

## Exploit Analysis (squeeze more from the constraint — before adding resources)

**Current constraint utilization:** [X% — is it fully utilized or losing time to non-constraint work?]
**Time lost to non-constraint activities at this step:**
- [E.g., "Provider spends 30% of time answering billing questions that aren't Step 4 work"]
- [E.g., "Step 4 is idle during lunch but work is available — 1 hr/day lost"]

**Exploit opportunities (no additional resources):**
| Action | Time saved | Effort to implement | Owner |
|--------|-----------|-------------------|-------|
| [Move non-Step 4 work off the constraint] | [X hrs/day] | [Low] | [Manager] |
| [Eliminate lunch idle time by batching work in advance] | [X hrs/day] | [Low] | [Process owner] |
| [Remove quality check that happens before Step 4 but adds no value] | [X min/claim] | [Low] | [Dr. Lewis] |

---

## Subordination Analysis (ensure other steps feed the constraint correctly)

**Are upstream steps overproducing and building WIP ahead of the constraint?**
[Yes — Step 2 is producing at 2× the rate the constraint can consume → implement pacing / pull system]
[No — upstream is appropriately paced]

**Are downstream steps starved because of the constraint?**
[Yes — Steps 5-8 are underutilized because they're waiting for Step 4 output → reassign downstream capacity to help the constraint during peak periods]

---

## Elevation Analysis (add capacity if exploit isn't enough)

**Is exploiting the constraint sufficient to close the throughput gap?**
[Yes — estimated exploit gains close the gap / No — exploit reduces gap but additional capacity still needed]

**If additional capacity is needed:**
- Option A: [Add a resource at Step 4 — e.g., hire a part-time claims reviewer]
  - Cost: $[X]/month | Throughput gain: [N claims/week] | ROI: [payback in X months]
- Option B: [Technology — e.g., automate the data entry portion of Step 4]
  - Cost: $[X] setup | Throughput gain: [N claims/week] | ROI: [payback in X months]
- Option C: [Redesign — e.g., move approval authority from provider to billing manager for claims <$500]
  - Cost: $0 | Throughput gain: estimated [N claims/week] | Risk: [any quality/accuracy concerns]

**Recommended option:** [A/B/C — why]
**Matt Mathison approval required:** [Yes if cost >$5K / No]

---

## Implementation Plan

| Priority | Action | Owner | By when | Expected gain |
|---------|--------|-------|---------|--------------|
| 1 (immediate — no cost) | [Exploit action 1] | [Owner] | [Date] | [X% throughput improvement] |
| 2 (short-term) | [Exploit action 2] | | | |
| 3 (requires approval) | [Elevation action] | Dr. Lewis | [Date — after approval] | |

---

## New Constraint Prediction

After resolving the current bottleneck, the next constraint is likely:
**Step [X]** — [Why: e.g., "Once Step 4 is cleared, Step 6 (insurance payment posting) becomes the slowest step at estimated 3 days average"]

**Recommendation:** Monitor Step 6 once Step 4 is resolved — don't optimize it yet until we confirm it becomes the constraint.
```

## Output Contract
- Identify one bottleneck at a time — the temptation is to identify every inefficiency in the process; the ToC insight is that improving non-constraints doesn't improve system output; the analysis focuses on the one step that is actually limiting throughput; secondary problems are documented but not prioritized until the primary constraint is resolved
- Exploit before elevating — adding capacity (people, tools, budget) to a constraint that isn't fully utilized is waste; the first question is always "can we get more from what we have?" — eliminating wasted time at the constraint, removing non-constraint work from the constraint, removing idle time; elevation (adding resources) only comes after exploitation is exhausted
- ROI is always calculated for elevation options — every proposal to add capacity at the constraint includes a cost, throughput gain estimate, and payback period; Matt Mathison approval is required for any elevation option >$5K
- The new constraint is predicted — solving the bottleneck moves it; the analysis always identifies what step is likely to become the next constraint so it can be monitored; the goal is continuous improvement, not a one-time fix
- HITL required: Dr. Lewis conducts or directs bottleneck analysis; process owners validate observations before action; elevation options reviewed with company CEO before presenting to Matt Mathison; actions implemented with Dr. Lewis coordination; follow-up measurement 30 days after implementation to confirm throughput improvement

## System Dependencies
- **Reads from:** Process timing data, queue depth observations, headcount and utilization estimates, system logs (if available), interviews with people working at each step
- **Writes to:** Bottleneck analysis report (SharePoint/Ops/<Company>/Process Improvement/); implementation action tracker; Matt Mathison brief (if elevation approval needed)
- **HITL Required:** Dr. Lewis leads analysis; process owners validate; CEO reviews elevation options; Matt Mathison approves >$5K elevation investment; 30-day follow-up measurement by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio — "billing claims are taking 45 days, they should take 20" → Step-by-step timing with billing team: Steps 1-3 (charge entry, coding check, clearinghouse submission) average 5 days total; Step 4 (provider review and signature for denied claims) averages 18 days — 22 claims in queue on average at end of day; Steps 5-8 (resubmission, follow-up, payment posting) average 4 days; Bottleneck: Step 4 (provider review) — approval bottleneck; Exploit: Provider is doing Step 4 work only 2 days/week (Tues/Thurs) — remaining claims wait until next session; Exploit action: schedule 4 days/week for Step 4 (30 min each) instead of 2 — zero cost; Estimated gain: from 18-day average to 9-day average in Step 4; After exploit, total cycle time projected at 18-22 days vs. 45 days current; follow-up in 30 days to confirm
2. **Edge case:** The bottleneck is Dr. Lewis (or Matt Mathison) because approvals route to them and they're the slowest step → This is a legitimate bottleneck finding and must be reported honestly; options: (a) delegate approval authority below the current threshold (e.g., move the $1K approval threshold to a controller), (b) establish a faster approval SLA (respond within 4 hours vs. "when I get to it"), (c) batch approvals into a scheduled window; the analysis doesn't avoid uncomfortable findings — if Dr. Lewis is the bottleneck, the analysis says so
3. **Adversarial:** Leadership wants to add 2 more billing staff to fix the claims backlog → Adding capacity at non-constraint steps doesn't improve throughput; respond: "Before we hire, let me show you where the backlog is actually building. The claims are clearing intake in 5 days — that's not the problem. The problem is the 18-day wait for provider review, which is 2 days/week and has 22 claims in queue. Adding billing staff won't touch the provider review step. What will fix it: adding 30 minutes of provider review time 2 more days a week. That's zero cost and cuts the cycle time in half. If we still need to hire after that, I'll tell you — but let's confirm the constraint first."

## Audit Log
Bottleneck analyses retained by company, process, and date. Throughput measurements before and after retained. Elevation option analyses and approvals retained. 30-day follow-up results retained. Actions implemented and owners documented.

## Deprecation
Retire when portfolio companies have dedicated operations managers with continuous improvement capability (Lean, Six Sigma) who own throughput analysis and constraint identification without Dr. Lewis involvement in each analysis.
