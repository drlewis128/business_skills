---
name: ops-workflow-optimizer
description: "Optimize a business workflow for efficiency. Use when the user says 'optimize this workflow', 'workflow optimization', 'streamline this process', 'improve efficiency', 'eliminate waste', 'make this process faster', 'reduce steps', 'lean out this process', 'remove unnecessary steps', 'improve the workflow', 'process efficiency', 'reduce cycle time', 'workflow redesign', or 'simplify this process'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--process <process name>] [--target <speed|cost|quality|compliance>]"
---

# Ops Workflow Optimizer

Optimize business workflows at MBL portfolio companies — systematically identifying and eliminating waste, redundancy, and friction in existing processes. Workflow optimization is not about cutting corners; it's about removing steps that don't add value so the steps that do can be done better and faster. Based on Lean principles: identify value, map the value stream, eliminate waste, create flow, pursue perfection.

## When to Use
- A process has been mapped (ops-process-mapper) and the next step is improvement
- A process is working but slower, more expensive, or more error-prone than it should be
- A team reports that a process "feels hard" or generates frequent frustration
- Volume is growing and the current process won't scale without optimization
- An automation or technology investment is being considered — optimize the process first, then automate

## Optimization Framework

```
Eight wastes (Lean DOWNTIME — eliminate these):
  D — Defects: errors, rework, corrections
  O — Overproduction: doing more than needed (reports no one reads, approvals for trivial amounts)
  W — Waiting: idle time while waiting for an input, decision, or upstream step
  N — Non-utilized talent: people doing tasks below their skill level or expertise
  T — Transportation: unnecessary movement of information or materials
  I — Inventory: excess WIP (work in process) building up between steps
  M — Motion: people doing unnecessary actions (finding files, re-entering data)
  E — Extra processing: steps that add no value (duplicate reviews, unnecessary approvals)

Optimization techniques by waste type:
  Defects: Add quality check at source; implement double-entry verification; use checklists
  Overproduction: Eliminate reports not consumed; reduce approval frequency for low-risk actions
  Waiting: Implement SLAs on handoffs; eliminate approval bottlenecks; use parallel processing
  Non-utilized talent: Delegate to lower-cost resources; automate routine tasks; elevate skilled staff
  Transportation: Consolidate handoffs; move decisions to where the work is
  Inventory: Pull system (downstream requests when ready); WIP limits; batch size reduction
  Motion: Standardize file naming and locations; eliminate re-entry between systems; templates
  Extra processing: Remove steps that don't add value; right-size approvals to risk

Automation candidates (automate AFTER optimizing the manual process):
  Ideal for automation: Rules-based decisions; repetitive data entry; status notifications
  Not ideal for automation: Complex judgment; exception handling; unstandardized inputs
  Automation investment: justify ROI before building (time saved × cost per hour × annual volume)
```

## Output Format

```markdown
# Workflow Optimization Report — <Process Name>
**Company:** <Entity> | **Date:** [Date]
**Current state:** [Brief description of the current workflow]
**Optimization target:** [Speed / Cost / Quality / Compliance / All]
**Analyst:** Dr. John Lewis

---

## Current State Assessment

**Process duration:** [X days / hours end-to-end]
**Number of steps:** [N]
**Number of handoffs:** [N]
**Number of decision points:** [N]
**Estimated labor cost per execution:** $[X] ([N min × N people × $X/hr])
**Error/rework rate:** [X%]
**Volume:** [N executions per week/month]

**Total annual cost of current process:** [Volume × cost per execution × 52] = $[X]/year

---

## Waste Inventory

| Waste type | Location in process | Impact | Priority |
|-----------|-------------------|--------|---------|
| Waiting | Step 4 — approval waits average 2 days | 2-day delay per instance | 🔴 High |
| Extra processing | Step 6 — second review adds no defect detection value | 30 min/execution | 🟡 Medium |
| Motion | Steps 3 and 7 — same data entered in two separate systems | 15 min/execution | 🟡 Medium |
| Defects | Step 2 — missing info requires rework in 30% of cases | 45 min rework per instance | 🔴 High |

**Total waste per execution:** [Sum minutes] = [X% of total cycle time]

---

## Optimization Recommendations

### Immediate (no tools, no budget, implement this week):

**Recommendation 1: [Brief title]**
- Waste eliminated: [Type]
- How: [Specific change — e.g., "Move approval authority for amounts <$1,000 from Dr. Lewis to Controller"]
- Time saved per execution: [X min / X days]
- Annual value: [Volume × time saved × labor rate] = $[X]/year
- Risk: [Low / describe any risk]

**Recommendation 2: [Brief title]**
- Waste eliminated: [Type]
- How: [Specific change]
- Time saved per execution: [X min]
- Annual value: $[X]/year
- Risk: [Low]

### Short-term (requires process change or coordination, 2-4 weeks):

**Recommendation 3: [Brief title]**
- Waste eliminated: [Type]
- How: [Specific change]
- Time saved per execution: [X min]
- Annual value: $[X]/year
- Investment required: [None / SOP update / Training time]
- Owner: [Role]

### Automation opportunity (evaluate after manual optimizations):

**Candidate: [Process step description]**
- Current: [Manual approach — time per execution]
- Proposed automation: [Tool or approach — e.g., "Automated Bill.com approval notification"]
- Setup cost estimate: $[X]
- Time saved per execution: [X min]
- Annual volume: [N]
- Annual savings: [Volume × time saved × labor rate] = $[X]/year
- **Payback period:** [Setup cost / annual savings] = [X months]
- Matt Mathison approval required: [Yes — cost >$5K / No]

---

## Optimized Future State

**New process duration:** [X days / hours] (vs. [X] current — [X%] reduction)
**Steps eliminated:** [N] steps removed
**Handoffs eliminated:** [N] handoffs removed
**Estimated labor cost per execution (future state):** $[X] (vs. $[X] current)
**Annual savings:** $[X]

---

## Implementation Plan

| Priority | Action | Owner | Timeline | Cost |
|---------|--------|-------|---------|------|
| 1 | [Immediate no-cost action] | [Owner] | This week | $0 |
| 2 | [Short-term action] | | 2 weeks | $0 |
| 3 | [SOP update] | Dr. Lewis | 1 week | $0 |
| 4 | [Automation evaluation] | Dr. Lewis | 30 days | $[X] |

---

## Matt Mathison Brief (if automation investment or significant process change)

Current [process] costs [Company] approximately $[X]/year in labor. With [2 specific changes], we project reducing that to $[X]/year — a $[X] annual savings. [Automation option] would cost $[X] to implement and pay back in [X months]. Recommendation: [proceed / evaluate further / table].
```

## Output Contract
- Optimize before automating — automating a broken process makes a broken process faster; the optimization analysis always precedes automation recommendations; if a step can be eliminated entirely, automating it is waste; the sequence is always: (1) eliminate waste, (2) standardize the optimized process, (3) automate if the ROI justifies it
- Value is quantified — every optimization recommendation includes an estimated time savings, volume, and annual value calculation; this converts "we should do this" into "this saves $X/year" which makes prioritization and approval straightforward; if a recommendation can't be quantified, the method is estimated (labor time × rate) rather than left qualitative
- Annual cost of the current process is always calculated — if you don't know what the current process costs, you can't prove the optimization was worth doing; the baseline (volume × time per execution × labor rate) establishes the benchmark; even rough estimates (±30%) are more useful than no estimate
- Automation ROI is a hard requirement — no automation recommendation is made without a payback period calculation; software tools, integrations, and AI automations are investments; the question is always "does the labor savings exceed the implementation and maintenance cost, and if so, in how long?"; recommendations with payback >18 months need a stronger justification
- HITL required: Dr. Lewis leads optimization analysis; process owners validate waste inventory; any process redesign implemented with process owner buy-in; automation investments >$5K require Matt Mathison approval; Dr. Lewis confirms ROI calculations with Finance before presenting automation recommendations

## System Dependencies
- **Reads from:** Current-state process map (ops-process-mapper), time-and-motion estimates, system data (if available), interviews with process practitioners
- **Writes to:** Optimization report (SharePoint/Ops/<Company>/Process Improvement/); implementation tracker; Matt Mathison brief (if investment required); updated SOP after optimization
- **HITL Required:** Dr. Lewis leads; process owners validate; CEO reviews significant changes; Matt Mathison approves automation investments >$5K; post-implementation measurement at 30 and 90 days

## Test Cases
1. **Golden path:** HIVE Partners — monthly production reporting takes 8 days end-to-end (target is 5 days by the 5th business day) → Waste inventory: Waiting at Step 3 (office coordinator waits for field supervisor email — average 3 days); Motion at Step 4 (data entered manually in Excel, then re-entered into Covercy); Defects at Step 2 (20% of submissions missing daily totals requiring a follow-up call); Recommendations: (1) Standardize submission template with required fields — reduces missing data defect from 20% to <5%; (2) Set submission SLA: field supervisor submits by noon on Day 2 — reduces waiting at Step 3 from 3 days to 1 day; (3) Connect field reporting template to Covercy import format — eliminate double entry (estimated 45 min/month); Post-optimization projection: 8 days → 4 days; Annual savings: 45 min/month × 12 × $45/hr = $405 (small but measurable); Cycle time improvement: 50%; Matt Mathison: no investment required — implement this week
2. **Edge case:** The team is resistant to optimization because they're comfortable with the current process → Resistance to change is a people problem, not a process problem; the optimization report doesn't change — the implementation approach changes; Dr. Lewis engages the team in identifying the waste ("what's the most frustrating part of this process for you?") which typically surfaces the same issues; when the team identifies the waste, they own the solution rather than resisting it
3. **Adversarial:** "We optimized this process 2 years ago — it's fine now" → Processes drift; systems change; volume changes; team composition changes; respond: "I hear you. The question isn't whether the optimization you did was good — it was. The question is whether the process still fits the current volume and team. You've grown from 15 to 42 employees since then. A process designed for 15 people often has friction at 42. If the analysis shows the current process is still optimal, we document that and move on. If it finds something, we'll have numbers to prove it's worth changing."

## Audit Log
All optimization reports retained by company, process, and date. Waste inventory and quantification documented. ROI calculations retained. Pre- and post-optimization metrics retained. Matt Mathison approvals for investments retained.

## Deprecation
Retire when portfolio companies have dedicated operations managers with Lean or continuous improvement backgrounds who lead optimization initiatives and present findings to Dr. Lewis for review rather than requiring Dr. Lewis to lead each analysis.
