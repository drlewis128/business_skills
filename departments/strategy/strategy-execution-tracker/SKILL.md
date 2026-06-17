---
name: strategy-execution-tracker
description: "Track execution of strategic priorities and OKRs — progress, blockers, and accountability. Use when the user says 'execution tracker', 'track progress', 'are we executing', 'OKR progress', 'initiative tracker', 'what is the status', 'priority tracker', 'are we on track', 'execution status', 'strategy execution', 'track the plan', 'progress update', 'weekly check-in', 'execution review', 'what is behind plan', or 'execution accountability'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <week|month|quarter>] [--scope <okr|vcp|annual-plan>]"
---

# Execution Tracker

Track execution of strategic priorities, OKRs, and VCP initiatives for MBL portfolio companies — maintaining visibility into what is on track, what is at risk, what is blocked, and what needs immediate intervention. Execution tracking is not reporting — it is early-warning detection that enables course correction before a strategy becomes a casualty of implementation friction. At PE portfolio scale, the strategy documents are rarely the problem; execution is where value creation succeeds or fails. Dr. Lewis tracks execution weekly with each portfolio company CEO and reports to Matt Mathison monthly with a clear picture of what's on track and what needs his attention.

## When to Use
- Weekly CEO check-in — what moved last week, what's blocked?
- Monthly Matt Mathison execution update — are we on track?
- Mid-quarter OKR check — which KRs are at risk?
- A VCP initiative has been stalled for 3+ weeks — needs diagnosis
- Matt Mathison asks "are we executing on the plan?"

## Execution Tracking Framework

```
Execution tracking layers:
  
  Weekly (CEO + Dr. Lewis):
    What was supposed to happen last week? What did happen?
    What is blocked? Who is the blocker? What unblocks it?
    What needs to happen this week to stay on track?
    Cadence: Monday or Tuesday; 30 minutes; CEO-led; Dr. Lewis tracks
    
  Monthly (Matt Mathison):
    OKR progress (0.0-1.0 current estimate for each KR)
    VCP initiative status (EBITDA impact realized vs. plan)
    What's at risk? What's the intervention?
    What decisions does Matt Mathison need to make?
    Cadence: 5th of following month; 15 minutes; written brief from Dr. Lewis
    
  Quarterly (Board):
    OKR final scores; retrospective
    VCP EBITDA realization; exit value impact
    Annual priorities: on track / at risk / behind
    Cadence: Board meeting; formal section
    
  Status categories (Dr. Lewis standard):
    🟢 On track: Milestone dates will be hit; no blockers; confidence ≥80%
    🟡 At risk: Behind or facing blockers; recovery possible; action required; confidence 50-80%
    🔴 Behind: Missed milestone; recovery unlikely without intervention; confidence <50%
    ✅ Complete: Done; impact realized
    ⏸ Paused: Deliberately paused (WTI trigger not met; gated on prior initiative); not abandoned
    ❌ Cancelled: Officially dropped; reason documented
    
  Blocker taxonomy:
    Capacity: Not enough people time to execute
    Capital: Approved but not yet deployed; or unapproved
    Decision: Waiting for a decision (CEO / Dr. Lewis / Matt Mathison)
    External: Vendor, regulatory, market dependency outside our control
    Information: Waiting for data or analysis to proceed
    
  Common execution failure patterns:
    Initiative without an owner: Work with multiple owners gets done by none
    Owner without authority: Assigned to someone who can't actually make the calls
    Too many simultaneous initiatives: >5 active at once = all underdone
    No milestone dates: Initiatives with just a quarter goal drift to the last week
    CEO not reviewing: If the CEO doesn't ask about progress, it won't happen
```

## Output Format

```markdown
# Execution Tracker — [Company Name]
**Period:** [Week of / Month / Quarter] | **Prepared by:** Dr. Lewis | **Date:** [Date]

---

## WEEKLY CEO CHECK-IN

**Date:** [Date] | **Participants:** CEO, Dr. Lewis

### Last Week: Commitments vs. Actuals

| Commitment | Owner | ✅ Done / ❌ Missed | Notes if missed |
|-----------|-------|-------------------|----------------|
| [NP credentialing submitted to Medicare] | CEO | ✅ Done | |
| [Billing audit scope sent to Marshall Medical] | Controller | ❌ Missed | Blocked: waiting on Controller to return from PTO |
| [HIPAA risk assessment draft reviewed] | Dr. Lewis | ✅ Done | |

### This Week's Commitments

| Commitment | Owner | Due | Success criteria |
|-----------|-------|-----|----------------|
| [Marshall Medical billing audit scope] | Controller | Fri | Scope document sent and confirmed received |
| [NP payer enrollment forms submitted] | Practice Manager | Wed | Forms submitted to all 3 payers |
| [HIPAA SRA report finalized] | Dr. Lewis | Thu | Signed by CEO |

### Blockers Requiring Escalation

| Blocker | Initiative affected | Type | Who unblocks it | Action |
|---------|-------------------|------|----------------|--------|
| [Controller PTO] | Billing audit | Capacity | CEO | CEO covers or delays 1 week (acceptable) |

---

## MONTHLY EXECUTION BRIEF (for Matt Mathison)

**Date:** [Date] | **Entity:** [Company]

### OKR Status (mid-quarter estimate)

| OKR | Key Results | Current score | Trend | Risk |
|-----|------------|--------------|-------|------|
| Objective 1: [Name] | 3 KRs | 0.7 | Stable | Low |
| Objective 2: [Name] | 3 KRs | 0.5 | Declining | High — see below |
| Objective 3: [Name] | 3 KRs | 0.85 | Improving | Low |

**At-risk KR deep dive:**
- KR2.2 (Billing lag ≤35 days): Currently 42 days (target 35 by June 30). Root cause: Marshall Medical implementation delay. Action: CEO escalation call to Marshall Medical this week + contingency of hiring internal billing manager evaluated (decision by June 1).

### VCP Initiative Status

| Initiative | Projected EBITDA impact | Realized YTD | Status | Action |
|-----------|------------------------|-------------|--------|--------|
| [NP hire] | +$40K Year 1 | +$12K (partial quarter) | 🟢 On track | |
| [Billing lag] | +$25K cash | $0 | 🔴 Behind | CEO escalation |
| [Payer diversification] | +$40K Year 2 | — | 🟡 At risk | 2 of 3 payer apps submitted |

**EBITDA impact realized:** $[X]K vs. plan $[X]K — [X]% of plan

### Matt Mathison Actions Required

| Action | Priority | Deadline | Context |
|--------|---------|---------|---------|
| [Approve billing manager hire at $55K if Marshall Medical doesn't resolve by June 1] | High | June 1 | Contingency for billing lag recovery |
| [None on other items] | | | |

---

## QUARTERLY EXECUTION RETROSPECTIVE

### OKR Final Scores

| Objective | Q target | Final score | Assessment |
|---------|---------|------------|-----------|
| O1 | 0.7-0.9 | 0.83 | ✅ Target range |
| O2 | 0.7-0.9 | 0.62 | ⚠️ Below target — root cause |
| O3 | 0.7-0.9 | 0.90 | ✅ Strong |

**O2 root cause (below target):** External blocker (Marshall Medical) delayed billing improvement; internal decision (manager hire) made late in quarter; recovery plan in place for Q3.

### What Worked / What Didn't

**Worked:** [List 2-3 practices that drove strong execution]
**Didn't:** [List 2-3 root causes of execution gaps]
**Q[N+1] changes:** [What will we do differently next quarter]
```

## Output Contract
- Execution tracking is early warning, not post-mortem — the value of the weekly CEO check-in is not learning that a commitment was missed a week later; it is identifying that a commitment is at risk before the missed deadline and creating a recovery plan; Dr. Lewis tracks not just whether last week's commitments were met but what's at risk this week that needs intervention now; the Monday check-in is detective work, not audit
- Every blocked initiative has a named unblocking action with a named owner and a date — "we're working on unblocking it" is not an acceptable blocker resolution; the unblocking action is specific: "CEO calls Marshall Medical VP of Operations by Thursday; if not resolved by Friday, CEO escalates to VP at Matt's direction"; blocked initiatives that don't have a specific unblocking action with an owner will not get unblocked; Dr. Lewis drives this specificity in every weekly check-in
- The monthly Matt Mathison brief surfaces only items requiring his attention — Matt Mathison should not receive a full weekly check-in-style status dump; the monthly brief filters to: (1) initiatives that are 🔴 Behind and need a decision, (2) OKRs that are at risk of ending the quarter below 0.7, (3) any EBITDA impact >$20K that is at risk; on-track items are summarized in one line; Matt Mathison's attention is a scarce resource and the brief respects that
- HITL required: Dr. Lewis conducts weekly CEO check-in and maintains the tracker; CEO owns execution and commits to weekly accountability; Matt Mathison receives monthly brief; any initiative requiring Matt Mathison decision is escalated immediately rather than waiting for the monthly cycle; at-risk OKRs that will miss without Matt Mathison support are escalated within the quarter, not at quarter-end

## System Dependencies
- **Reads from:** OKRs (strategy-company-okr-builder), VCP initiatives (strategy-value-creation-plan), annual strategic plan (strategy-annual-plan-builder), weekly CEO check-in notes
- **Writes to:** Execution tracker (SharePoint/Strategy/<Company>/Execution/); monthly Matt Mathison brief; quarterly retrospective; board pre-read execution section (strategy-board-prep)
- **HITL Required:** Dr. Lewis tracks; CEO commits and executes; Matt Mathison receives monthly brief and decides on escalated items; any initiative pause or cancel requires CEO + Dr. Lewis decision; OKR score changes require CEO acknowledgment

## Test Cases
1. **Golden path:** Week 6 of Q2 execution tracking for Allevio → Weekly check-in: NP enrolled with Medicare ✅; billing lag check: 41 days (target 35 by June 30 — 8-week trajectory needed, currently behind 1 week); Marshall Medical hasn't implemented process change; HIPAA training completion: 87% (target 100% by April 30 — 3 staff not yet complete; COO assigned to contact each this week); NP payer credentialing: submitted to 2 of 3 payers ✅ (3rd payer: application requires physician co-signature — CEO needed; CEO action committed for Wednesday); this week: CEO action on NP payer app + CEO call to Marshall Medical + COO follow-up on training completion; no Matt Mathison escalation needed this week; monthly brief due in 2 weeks — billing lag will be flagged as 🟡 At risk
2. **Edge case:** An OKR KR has been 🟡 At risk for 6 consecutive weeks without recovery → Persistent 🟡 status without recovery is a signal that the KR target is wrong, the owner is wrong, or there's a systemic blocker; Dr. Lewis escalates at 6 weeks: "Billing lag has been At Risk for 6 weeks. Root cause: Marshall Medical has not implemented the process change despite 3 CEO escalation calls. Decision needed: proceed with internal billing manager hire ($55K fully-loaded) as a contingency, or accept that this KR will score 0.5 this quarter and set a recovery target in Q3." CEO and Matt Mathison make the decision; Dr. Lewis documents; OKR status changes to reflect the decision (proceed or accept lower score)
3. **Adversarial:** "We don't need a weekly check-in — I trust the CEO to execute" → Trust and verification are not opposites; the weekly check-in is not an expression of distrust — it is the system that makes trust justified; without a regular check-in, execution gaps accumulate silently for months before appearing in quarterly financials; PE portfolio companies that skip weekly execution tracking consistently underperform companies that maintain it; Dr. Lewis recommends: even if the CEO is excellent and trusted, a 30-minute Monday call is the lowest-cost, highest-return management practice in the portfolio; if the CEO objects to the check-in, Dr. Lewis discusses the concern with Matt Mathison and finds a format that works (could be asynchronous — CEO sends a weekly written update)

## Audit Log
Weekly check-in notes retained. Monthly Matt Mathison brief retained. Quarterly retrospectives retained. OKR score history retained. Escalation records retained. Initiative status change history retained.

## Deprecation
Retire when portfolio companies have a Chief of Staff or VP Operations who manages internal execution tracking — with Dr. Lewis receiving the same weekly tracker and escalating thesis-level issues to Matt Mathison rather than tracking individual initiative milestones.
