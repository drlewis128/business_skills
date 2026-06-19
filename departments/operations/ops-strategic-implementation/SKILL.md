---
name: ops-strategic-implementation
description: "Track and manage strategic initiative implementation across MBL Partners portfolio. Use when the user says 'strategic initiative', 'strategic initiatives', 'strategic implementation', 'implement the strategy', 'strategic rollout', 'strategic project', 'strategic priority', 'implement the plan', 'initiative tracking', 'initiative status', 'initiative rollout', 'initiative management', 'initiative implementation', 'initiative progress', 'implementation plan', 'implementation tracking', 'implementation management', 'big bet', 'major initiative', 'portfolio initiative', 'cross-entity initiative', 'cross-portfolio initiative', 'execution plan', 'strategy execution', 'strategy to execution', 'strategic plan execution', 'deploy the strategy', 'launch the initiative', 'initiative kick-off', 'initiative launch', 'initiative debrief', or 'initiative close-out'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--initiative <name>] [--entity <allevio|hive|column6|mbl|cross-portfolio>] [--action <define|track|update|escalate|close>] [--phase <planning|launch|execution|optimization|complete>] [--horizon <q|h1|h2|annual>]"
---

# Ops Strategic Implementation

Track and manage strategic initiative implementation across MBL Partners portfolio — defining what a strategic initiative is (vs. a project or a task), designing the implementation structure, tracking progress against milestones, and surfacing execution risks to Matt Mathison before they become failures. Strategic initiatives are the portfolio's biggest bets: they take more than 90 days, require capital, cross functional boundaries, and determine whether the entity is executing on the value creation thesis the deal model assumed. Dr. Lewis is the implementation steward — not the executor, but the person who ensures the entity CEO has a clear implementation structure, is tracking against milestones, and isn't being surprised by execution risks that should have been flagged 30 days earlier.

## When to Use
- A strategic priority is approved at the Annual Strategy Session or QBR
- An initiative is more than 90 days in duration and requires capital
- Matt Mathison asks how a strategic initiative is tracking
- An initiative is stalled and needs a recovery plan

## Strategic Implementation Framework

```
INITIATIVE TAXONOMY:

  STRATEGIC INITIATIVE (this skill):
    Duration: >90 days
    Capital required: yes (any amount)
    Impact: changes entity trajectory (revenue; market position; cost structure)
    Reporting: to Matt Mathison quarterly (minimum); monthly if active phase
    Examples: Allevio employer group expansion into new geography; HIVE acreage acquisition;
    Column6 programmatic platform launch; MBL AI orchestration Phase 1

  PROJECT (ops-project-tracker):
    Duration: 30-90 days
    Capital: optional
    Impact: improves a specific function or process
    Reporting: to Dr. Lewis weekly; Matt Mathison on exception

  TASK (ops-action-tracker):
    Duration: <30 days
    Capital: no
    Reporting: Monday.com / weekly pulse

INITIATIVE STRUCTURE (every strategic initiative requires):

  1. INITIATIVE BRIEF (one page; required before funding):
     Initiative name
     Strategic context: how does this connect to the entity OKR / MBL investment thesis?
     Desired outcome: what is different when this is done? (specific; measurable)
     Success metrics: 2-3 KPIs that will indicate success
     Timeline: key milestones with dates
     Budget: total capital required + contingency
     Owner: entity CEO is accountable; day-to-day lead is [Name]
     Dependencies: what needs to be true for this to succeed?
     Risks: top 3 risks + mitigation plans
     Approval required: Matt Mathison sign-off before any spend

  2. MILESTONE TRACKER:
     Max 6 milestones per initiative (more = not real milestones)
     Format: Milestone name | Target date | Owner | Status | Notes
     Status: On track / At risk / Off track / Complete
     "At risk" = within 10 days of milestone date with <80% completion
     "Off track" = past milestone date without completion
     
  3. MONTHLY STATUS REPORT (while in active execution):
     3 sections: Progress (what happened); Risks (what threatens delivery); Decisions (what Matt needs to decide)
     Length: <1 page
     Delivery: by the 10th of each month during active phase
     
  4. INITIATIVE CLOSE-OUT (when complete):
     Outcome vs. objective: did we achieve what we set out to achieve?
     KPI movement: before vs. after on the 2-3 success metrics
     Lessons learned: what would we do differently?
     Capital efficiency: actual spend vs. budget; ROI realized vs. projected
     Matt Mathison receives close-out within 30 days of initiative completion

INITIATIVE HEALTH RATING:

  🟢 GREEN: On track; milestones being hit; no material risks
  🟡 YELLOW: 1-2 milestones at risk; risks identified and mitigation in progress
  🔴 RED: Off track; milestone(s) missed; capital at risk; escalation required

  RED ESCALATION: Dr. Lewis flags to Matt Mathison same day
    Message format: "[Initiative] is Red. [Milestone] was due [date] and is [N] days overdue.
    Risk to budget: $[X]. Risk to timeline: [N] weeks. Recommended action: [action].
    Do you want to: (a) continue with recovery plan; (b) scope-reduce; (c) pause?"

PORTFOLIO INITIATIVE DASHBOARD (maintained by Dr. Lewis):

  Active initiatives: [N]
  By entity: Allevio [N] | HIVE [N] | Column6 [N] | MBL [N]
  By status: 🟢 [N] | 🟡 [N] | 🔴 [N]
  Total capital committed: $[X]
  Total capital deployed: $[X]
  Expected completion dates: [list]
  
  Reviewed monthly (at Portfolio Financial Review); quarterly at QBR
```

## Output Format

```markdown
# Strategic Initiative Status Report — [Initiative Name]
**Entity:** [Allevio / HIVE / Column6 / MBL] | **Owner:** [Entity CEO / Name]
**Status:** 🟢 Green / 🟡 Yellow / 🔴 Red | **Reporting period:** [Month Year]

---

## Initiative Overview
- **Objective:** [One sentence]
- **Success metrics:** [KPI 1]; [KPI 2]
- **Budget:** $[X] total | $[X] deployed ([%])
- **Timeline:** [Start] → [Target completion]

---

## Milestone Tracker

| Milestone | Target | Owner | Status | Notes |
|-----------|--------|-------|--------|-------|
| [M1: Market research] | [Date] | [Name] | ✅ Complete | Completed on time |
| [M2: Pilot launch] | [Date] | [Name] | 🟡 At risk | 2 weeks behind — vendor delays |
| [M3: Full launch] | [Date] | [Name] | ⬜ Not started | Depends on M2 |

---

## This Period
**Progress:** [What happened — specific; 2-3 bullets]
**Risks:** [What threatens delivery — 1-2 specific risks with mitigation]
**Decisions required:** [What Matt needs to decide — if none: "No decisions required"]
```

## Output Contract
- Initiative briefs are required before any capital is deployed — the brief is not bureaucracy; it is the structure that separates a good idea (someone's enthusiasm) from a fundable initiative (a plan with a clear outcome, measurable success, and a realistic budget); Dr. Lewis will not route any capital request for a strategic initiative to Matt Mathison without a completed initiative brief; Matt Mathison will not approve capital without one; this protects both Matt and the entity CEO from well-intentioned but under-planned initiatives that consume capital without creating value
- Red status goes to Matt same day — Dr. Lewis does not let a Red initiative sit in a report until the next monthly meeting; the same-day escalation is a Matt Mathison trust requirement; Matt has explicitly said he doesn't want to find out about execution failures in the QBR (he wants to hear about them when they happen); the escalation message includes Dr. Lewis's recommended action — not just the problem; Matt decides; Dr. Lewis prepares the options
- Close-outs are mandatory — an initiative that completes without a close-out is an initiative that doesn't know if it succeeded; the close-out package captures outcome vs. objective, KPI movement, lessons learned, and capital efficiency; this data is fed into future initiative design (so MBL doesn't repeat the same mistakes); Matt Mathison reviews every close-out; the portfolio builds institutional memory through close-outs
- HITL required: Matt Mathison must approve every initiative brief before capital is deployed; initiative scope changes (adding budget; extending timeline; changing success metrics) require Matt notification and approval if they exceed 20% of original parameters; Red escalations go to Matt same day with explicit decision request; close-outs delivered to Matt within 30 days of completion; initiative cancellations (stopping mid-flight) require Matt's explicit approval with documented rationale

## System Dependencies
- **Reads from:** ops-okr-program (strategic initiatives should map to entity OKRs); fin-deal-financial-model (initiative ROI projections); fin-budget-manager (capital allocation available); ops-portfolio-cadence (initiative status is reviewed monthly and quarterly)
- **Writes to:** Initiative briefs (SharePoint → Operations → Initiatives → [Entity] → [Initiative name]); initiative close-outs (same path); Portfolio Oversight board (initiative health on Matt's view); ops-action-tracker (milestone actions tracked as action items); Matt Mathison briefings (Red escalations; close-out summaries)
- **HITL Required:** Initiative brief → Matt approval before capital deployed; budget overrun >20% → Matt notification; timeline extension >30 days → Matt notification; Red status → Matt same-day escalation; initiative cancellation → Matt approval; close-out → Matt review

## Test Cases
1. **Golden path:** Allevio geographic expansion initiative (enter Phoenix employer market). Initiative brief approved by Matt in January. Budget: $85K (marketing; sales hire; operational setup). 4 milestones: (1) Market research complete (Feb 15); (2) Sales hire placed (March 1); (3) Pilot employer group signed (April 30); (4) 3 employer groups active (June 30). Status through April: 🟢 Green. M1 complete. Sales hire placed (2 weeks late — adjusted M3 target by 2 weeks; Dr. Lewis notified Matt same day — Matt approved the timeline adjustment). M3 target reset to May 15. May: 2 employer groups signed. June 30: 3 groups active — initiative complete. Close-out delivered July 25: "Objective achieved. 3 employer groups added (target: 3). PMPM revenue added: $28K/month. Budget utilization: $78K of $85K (92%). ROI: 39% annualized on invested capital. Lesson: sales hire timeline should be front-loaded — we lost 2 weeks waiting for candidate acceptance."
2. **Edge case:** An initiative has a milestone that depends on a third party (a vendor who's late) and the entity CEO wants to request a timeline extension → Dr. Lewis: "Before I take this to Matt, I want to understand the impact and options. Vendor delay of 3 weeks means M2 shifts from April 15 to May 6. If M2 slips, M3 (full launch) shifts from June 1 to June 22 — still within Q2. This is a Yellow status update, not a Red: we have a mitigation plan (vendor has committed to May 6 delivery in writing). I'll notify Matt with: '[Initiative] is Yellow — vendor delivery slipped 3 weeks. Timeline impact: June 1 → June 22 launch. Budget impact: $0. Mitigation: vendor written commitment to May 6. No decisions required from Matt — keeping you informed.' Does that capture the situation accurately?"
3. **Adversarial:** Matt wants to launch a new strategic initiative but it doesn't have a clear success metric → Dr. Lewis: "I can't take this to a brief without a success metric — and more importantly, the initiative will be impossible to close out or score without one. Let me ask: what is different about [entity] when this initiative is done? What would you be able to say to an LP that you couldn't say today? If it's an employer group expansion: it's 'we added 5 new groups and $X of ARR.' If it's an AI system: it's 'we reduced administrative hours by 15% and Matt has a real-time dashboard.' Whatever the answer is — that's your success metric. Give me 2 minutes to work through it with you and I'll draft the brief. What does 'this worked' look like?"

## Audit Log
Initiative briefs retained (with Matt Mathison approval dates and approval notes). Monthly status reports retained. Capital deployment records retained (actual vs. budget). Red escalation records retained (with Matt's response and decision). Timeline and scope change records retained. Close-out packages retained.

## Deprecation
This skill governs strategic initiatives at the current portfolio scale (3 entities). As MBL grows its portfolio, the initiative tracking may migrate to a dedicated portfolio management tool; Dr. Lewis's role as initiative steward remains; the brief + milestone tracker + close-out framework is the enduring standard.
