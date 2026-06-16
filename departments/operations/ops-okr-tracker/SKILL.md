---
name: ops-okr-tracker
description: "Set and track Operations OKRs. Use when the user says 'ops OKRs', 'operations objectives', 'OKR tracker', 'set OKRs for operations', 'quarterly objectives', 'operations goals', 'what are our OKRs', 'OKR review', 'OKR grade', 'key results', 'operations priorities', 'quarterly OKR', 'OKR planning', or 'operations strategy'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--action <set|review|grade>]"
---

# Ops OKR Tracker

Set and track Operations-specific OKRs at MBL portfolio companies — ensuring that operational priorities are translated into measurable commitments with clear accountability. Operations OKRs bridge the gap between strategic intent (grow the business, improve margins, build the team) and day-to-day execution (reduce denial rate, cut cycle time, implement the new system). The OKR framework applied to operations creates clarity about what matters most each quarter.

## When to Use
- Beginning of a quarter — setting Operations OKRs
- Mid-quarter review — checking progress and raising flags
- End of quarter — grading results and learning from what did and didn't happen
- An operational initiative needs to be structured as an OKR with measurable outcomes
- Operations priorities need to be communicated to Matt Mathison

## OKR Framework for Operations

```
OKR structure:
  Objective: What we're trying to accomplish — qualitative, inspiring, directional
    "Improve the billing operation at Allevio" — NOT an objective (too vague)
    "Build a billing function that consistently performs at or above industry benchmark" — objective
    
  Key Results: How we'll measure it — quantitative, binary-friendly, outcome-based
    "Submit all claims within 2 business days" — activity (what we'll do)
    "Achieve first-pass acceptance rate ≥95% for 3 consecutive months" — outcome (what will be true)

Operations OKR targets (MBL standard):
  Per entity per quarter: 2-3 Objectives maximum
  Per Objective: 2-4 Key Results
  Total Key Results per entity: 6-8 maximum
  Grade target: 0.7 is a strong quarter (moonshot OKRs should be hard)
  
Grade scale:
  1.0: Fully achieved — either the target was too easy, or exceptional execution
  0.7-0.9: Strong — stretch goal with real progress; this is the target range
  0.4-0.6: Mixed — partial progress; determine what blocked full achievement
  0.1-0.3: Minimal — either the goal was wrong, something blocked it, or the work didn't happen
  0.0: No progress — requires a specific explanation

Operations OKR categories (what Operations OKRs typically address):
  Process improvement: Reduce errors, cycle time, cost per unit
  Capability building: Implement a new system, build a new process
  Team: Hire, onboard, train, improve capacity
  Vendor/technology: Source, implement, or optimize a key vendor or tool
  Compliance/risk: Achieve or maintain regulatory compliance; close a risk gap
  Reporting: Establish metrics visibility that doesn't currently exist
```

## Output Format

```markdown
# Operations OKR Tracker — <Company Name>
**Quarter:** Q[N] [Year] | **Entity:** [Company]
**Set date:** [Date] | **Mid-quarter review:** [Date] | **Grade date:** [Date]
**OKR owner:** Dr. John Lewis | **Shared with:** [CEO, Matt Mathison]

---

## OKR Summary

| Objective | Status | Grade (at close) | Key results met |
|-----------|--------|-----------------|----------------|
| O1: [Objective] | 🟢/🟡/🔴 | [X.X] | [N/N KRs] |
| O2: [Objective] | | | |
| O3: [Objective] | | | |

**Quarterly grade:** [Weighted average] | **Quarter summary:** [2-sentence assessment]

---

## O1: [Objective Statement]

**Why this quarter:** [1-2 sentences — what makes this objective the right priority now]

| Key Result | Target | Current | Grade | Status |
|------------|--------|---------|-------|--------|
| KR1.1: [Specific measurable outcome] | [X] | [Current value] | [0.0-1.0] | 🟢/🟡/🔴 |
| KR1.2: [Second key result] | | | | |
| KR1.3: [Third key result if applicable] | | | | |

**O1 progress note:** [Honest 2-3 sentences on what's happening. If behind, what's blocking?]

**O1 grade at close:** [0.0-1.0] | **Grade rationale:** [Why this grade vs. the target]

---

## O2: [Objective Statement]

[Same structure as O1]

---

## O3: [Objective Statement] (if applicable)

[Same structure]

---

## Mid-Quarter Review (Week 6-7)

**Date:** [Date] | **Reviewer:** Dr. Lewis + [CEO]

**Status check:**
| KR | On track? | Action if behind |
|----|---------|----------------|
| KR1.1 | 🟢 / 🟡 Behind — [specific blocker] / 🔴 Off track | [Action] |

**Adjustments made:** [Any changes to targets or approach — with rationale. Note: Key Results should not change unless the business fundamentally changed. Grading standard stays fixed.]

**Matt Mathison flag needed:** [Yes — [specific issue] / No]

---

## End-of-Quarter Grade (Week 13)

**Final grades:**
| KR | Final result | Grade | Note |
|----|------------|-------|------|
| KR1.1 | [Final number] | [0.0-1.0] | |

**What we learned:**
- [What worked — specific]
- [What didn't work and why — honest, blameless]
- [What we'd do differently]

**Carry-forward to next quarter:** [KRs or themes that should become next quarter's OKRs]

---

## Matt Mathison Brief (3 sentences)

[Company] Ops Q[N] OKR grade: [X.X/1.0]. [Best result and biggest miss — specific]. [Carry-forward theme or next quarter's priority focus].
```

## Output Contract
- OKRs are set before the quarter — not retrospectively; the targets are locked at week 1; the only legitimate reason to change a Key Result mid-quarter is a fundamental change in business context (a system goes away, a contract is lost, the company pivots); normal difficulty is not a reason to lower the bar; grade what was set, not what became convenient
- Grades are honest — 0.7 is the target; a full 1.0 on all OKRs every quarter means the targets were too easy; a 0.3 quarter should produce a serious conversation, not a grade upgrade; Dr. Lewis grades his own OKRs and presents them to the CEO; the integrity of the OKR system depends on honest self-grading
- Key Results are outcomes, not activities — "implement the new vendor onboarding SOP" is an activity; "100% of new vendors onboarded with W-9 and BAA on file before first payment, tracked for 3 consecutive months" is a Key Result; activities can be completed without producing the intended outcome; Key Results are only complete when the outcome is measurable and verified
- HITL required: Dr. Lewis sets Operations OKRs; CEO reviews and aligns; Matt Mathison receives quarterly brief; mid-quarter review is a standing meeting between Dr. Lewis and CEO; any KR that is 🔴 at mid-quarter is surfaced to Matt Mathison if it has portfolio-level implications; OKR planning for next quarter begins in week 11 (before current quarter ends)

## System Dependencies
- **Reads from:** KPI dashboard (ops-kpi-dashboard), project status (Monday.com), milestone tracker (ops-milestone-manager), prior quarter OKRs and grades
- **Writes to:** OKR tracker (SharePoint/Ops/<Company>/Planning/OKRs/); Monday.com (OKR board); Matt Mathison quarterly brief; feeds: ops-ops-review (annual OKR compilation)
- **HITL Required:** Dr. Lewis sets; CEO reviews; Matt Mathison receives quarterly brief; 🔴 KRs at mid-quarter reviewed with CEO immediately; annual OKR grades included in ops-ops-review

## Test Cases
1. **Golden path:** Allevio Q3 OKRs → O1: "Build a denial management process that consistently performs at or above industry benchmark" — KR1.1: First-pass acceptance ≥95% for 2 consecutive months (0.8 — achieved month 2 of 2); KR1.2: Denial rate <8% by Sept 30 (0.5 — achieved 9.1%, target missed); KR1.3: Payer-specific modifier guide for top 5 payers complete (1.0 — done); O1 grade: 0.77; O2: "Implement vendor management process for all Tier 1 and 2 vendors" — KR2.1: Scorecards complete for all 3 Tier 1 vendors (1.0); KR2.2: Renewal calendar with 90-day lead times set (1.0); O2 grade: 1.0; Q3 overall: 0.88 — strong quarter; carry-forward: denial rate below benchmark is the Q4 stretch goal
2. **Edge case:** A key OKR is unachievable because an external dependency (vendor implementation) slipped → Grade what was achievable and note the external dependency; KR grade: 0.1 (vendor delivered documentation only; implementation deferred to Q4); rationale: vendor delay, not execution failure; carry-forward to Q4 with a tighter milestone tracker; Matt Mathison brief notes the external dependency; no grade inflation because the work didn't happen
3. **Adversarial:** "OKRs are too rigid — our work changes too much week to week" → The right response: OKRs are the anchor, not a prison; tactical work fluctuates; the OKRs tell you what to come back to; if the week's urgencies are constantly replacing the OKR work, that's a capacity or prioritization problem — the OKRs are revealing something important about how time is being allocated; respond: "Let's look at your OKRs and your actual weekly work. My bet is that OKR work is getting pre-empted by reactive work. That's useful to know — it means your highest priorities aren't actually getting the time they need."

## Audit Log
All OKR sets retained by company, quarter, and year. Mid-quarter review notes retained. Final grades retained with rationale. Matt Mathison briefs retained. Multi-year OKR history enables trend analysis at annual review (ops-ops-review).

## Deprecation
Retire when portfolio companies have their own OKR process owned by the CEO and operations leadership, with Dr. Lewis providing input as a strategic advisor rather than setting and tracking OKRs directly.
