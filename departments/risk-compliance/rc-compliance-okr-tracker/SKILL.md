---
name: rc-compliance-okr-tracker
description: "Set and track quarterly compliance OKRs — program effectiveness goals, completion targets, and maturity milestones. Use when the user says 'compliance OKRs', 'compliance goals', 'compliance objectives', 'compliance program goals', 'quarterly compliance goals', 'annual compliance plan', 'compliance roadmap', 'compliance maturity', 'what are we trying to accomplish in compliance', 'compliance priorities', 'compliance planning', 'compliance targets for the quarter', or 'set compliance goals'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4|annual>] [--action <set|review|close>]"
---

# Compliance OKR Tracker

Set and track quarterly compliance program OKRs at MBL portfolio companies — moving the compliance function from reactive (responding to incidents and audits) to proactive (building program maturity against defined goals). Compliance OKRs translate the annual compliance plan into specific, measurable quarterly deliverables so that compliance program progress can be evaluated, communicated to leadership, and course-corrected before the year is over. The THRIVE framework guides priority-setting: Hustle means compliance progress is measurable; Value means every OKR has a clear risk-reduction or operational benefit; Truth means OKR completion is reported honestly.

## When to Use
- Q4 of current year — setting OKRs for the coming year
- Start of each quarter — reviewing and confirming quarterly OKRs
- Mid-quarter review — are OKRs on track?
- End of quarter — closing OKRs with completion status
- Annual program review — how did compliance perform against annual goals?

## OKR Framework

```
MBL compliance OKR structure:
  Objective: Qualitative, directional goal — where we want to be by end of period
  Key Results: 3-5 measurable outcomes that define success for the objective; each is binary (done/not done) or metric-based (X% completion)
  
  OKR scoring: 0.0 (not started) → 0.3 (in progress) → 0.7 (substantially complete) → 1.0 (fully complete)
  Target score: 0.7-0.9 (0.6 = needs attention; <0.5 = missed; 1.0 every quarter = goals too easy)
  
Annual compliance program areas (OKR candidates):
  
  Program foundation:
    - Policy development and maintenance (rc-policy-manager)
    - Training program completion (rc-compliance-training-builder)
    - Compliance calendar execution (rc-compliance-calendar)
    
  Risk and control:
    - Risk register updates (rc-risk-register)
    - Internal audit plan execution (rc-audit-plan-builder)
    - Control testing completion (rc-controls-tester)
    - Finding remediation rates (rc-control-deficiency-tracker)
    
  Regulatory:
    - HIPAA program maintenance (rc-hipaa-security-program)
    - OIG LEIE annual check (rc-sanctions-screener)
    - Licensing and regulatory filings (rc-licensing-tracker)
    - Employment law compliance (rc-employment-compliance)
    
  Incident and crisis:
    - Incident response plan testing (rc-bcp-builder)
    - Crisis communication plan maintenance (rc-crisis-communicator)
    
  Vendor and privacy:
    - BAA completion rate (rc-third-party-compliance)
    - Privacy program milestones (rc-privacy-program-builder)
    
Standard annual OKR cadence (example starting framework):
  Q1: Program foundation — policies current; training plan launched; audit plan approved
  Q2: Controls and risk — Q2 audit executed; controls testing cycle complete; risk register refreshed
  Q3: Regulatory cycle — mid-year regulatory check; licensing review; HIPAA risk analysis update
  Q4: Year-end — OIG LEIE check; annual compliance calendar built; OKR retrospective; next year plan
  
OKR setting principles for compliance:
  - Not everything is an OKR — mandatory ongoing operations (HIPAA training, monthly financials) are operational cadences tracked via KPIs, not OKRs; OKRs are for program improvements, new builds, and maturity advances
  - 3 objectives per quarter maximum — compliance is one person at MBL scale; 3 objectives with 3-5 KRs each = 9-15 deliverables; more than that dilutes focus
  - Every KR must be verifiable — "improve compliance culture" is not a KR; "100% of employees acknowledge updated Code of Conduct by [Date]" is a KR
```

## Output Format

```markdown
# Compliance OKR Tracker — <Company Name>
**Period:** [Q/Year] | **Date:** [Date]
**Program owner:** Dr. John Lewis | **CEO aligned:** ✅ [Date]

---

## OKR Summary

| Objective | Score | Status |
|-----------|-------|--------|
| O1: [Objective name] | [0.0-1.0] | 🟢 On track / 🟡 At risk / 🔴 Off track |
| O2: [Objective name] | | |
| O3: [Objective name] | | |
| **Overall quarter** | [Avg] | |

---

## O1: [Objective name]

**Objective:** [Qualitative goal — where we want to be by end of quarter]
**Motivation:** [Why this matters this quarter — risk reduction, regulatory requirement, audit finding, maturity milestone]

| Key Result | Target | Current | Score | Status |
|-----------|--------|---------|-------|--------|
| KR1: [Specific, measurable] | [Target] | [Actual] | [0-1.0] | ✅ / 🟡 / 🔴 |
| KR2: | | | | |
| KR3: | | | | |

**O1 Score:** [Average of KRs] | **Blocker:** [If any — what is blocking completion]
**Owner:** Dr. Lewis | **CEO touchpoint:** [Date of last update to CEO]

---

## O2: [Objective name]

[Same structure]

---

## O3: [Objective name]

[Same structure]

---

## Quarterly Retrospective (end of quarter)

**What we accomplished:** [Top 2-3 specific wins]
**What we missed:** [What scored <0.7 and why]
**What we learned:** [Non-obvious insight — what changed our approach]
**Carry-forward:** [KRs that move to next quarter and why]

---

## Matt Mathison Brief

[Company] compliance OKRs [Quarter]: Overall [X]/1.0. [Objective 1]: [Score]; [Objective 2]: [Score]; [Objective 3]: [Score]. Top accomplishment: [What]. At risk: [What — if anything]. Next quarter focus: [Preview of O1-O3].

---

## Annual OKR Summary (Q4)

| Quarter | O1 | O2 | O3 | Avg score |
|---------|-----|-----|-----|----------|
| Q1 | [Score] | [Score] | [Score] | [Avg] |
| Q2 | | | | |
| Q3 | | | | |
| Q4 | | | | |
| **Year** | | | | |

**Program maturity progression:** [Where we started vs. where we ended — qualitative assessment]
**Top compliance wins of the year:** [3-5 specific accomplishments]
**Unresolved risks entering next year:** [What remains open]
```

## Output Contract
- OKRs are set with the CEO and reviewed with the CEO — compliance OKRs are not Dr. Lewis's personal to-do list; they represent the compliance program that the CEO is accountable for operating; the CEO sets strategic direction (what the company needs); Dr. Lewis builds the specific OKRs (how we get there); the CEO reviews and approves quarterly OKRs at the start of each quarter; mid-quarter updates are shared; end-of-quarter scores are reviewed; this creates shared ownership of the compliance program — not just a report the CEO receives
- Score honestly — an OKR that scores 1.0 every quarter either has goals that are too easy or is being scored defensively; a program where goals are consistently achieved at 0.7-0.9 with honest analysis of what was missed is more credible than a program that always reports 1.0; if an OKR scores 0.4, that is important information: what blocked progress? Is it resource constraints? Scope underestimation? A change in priority? That analysis drives better planning for the next quarter
- Compliance OKRs are not a substitute for mandatory operations — mandatory compliance activities (HIPAA training, OIG LEIE check, required audits) occur regardless of whether they are OKRs; OKRs are for improving the program, not for tracking the floor of what is legally required; if HIPAA training doesn't complete, it is a KPI failure and a compliance incident — not an OKR miss; Dr. Lewis distinguishes clearly between "must do regardless" (KPI) and "should do to improve" (OKR)
- HITL required: Dr. Lewis owns the compliance OKR program; CEO reviews and approves quarterly OKRs at the start of each quarter; Matt Mathison receives the quarterly OKR brief; annual OKR summary is part of the annual compliance program review (rc-compliance-ops-review); Matt Mathison annual program review includes OKR score history

## System Dependencies
- **Reads from:** Annual compliance plan (rc-audit-plan-builder, rc-compliance-calendar), prior quarter OKR retrospective, CEO strategic priorities, risk register (rc-risk-register), KPI dashboard (rc-compliance-kpi-dashboard)
- **Writes to:** Quarterly OKR document (SharePoint/RC/<Company>/OKRs/); CEO quarterly review presentation; Matt Mathison quarterly brief; annual program review (rc-compliance-ops-review)
- **HITL Required:** Dr. Lewis owns; CEO approves quarterly OKRs; Matt Mathison receives quarterly brief; annual OKR summary to Matt Mathison

## Test Cases
1. **Golden path:** Q1 OKR setting for Allevio → Dr. Lewis reviews prior year findings (2 Medium controls unresolved from Q4 audit), risk register (PHI access controls rated High), and annual compliance plan; sets 3 objectives: O1 "Close all open control findings by Q1 end" (KRs: resolve 2 Medium findings by Feb 28; verify with re-test by Mar 15; report findings-free to CEO by Mar 31); O2 "Complete HIPAA Security Risk Analysis update" (KRs: threat inventory updated; gap analysis complete; risk register updated; management action plan drafted — all by Mar 31); O3 "Launch compliance training for 3 new hires" (KRs: HIPAA day-1 completion; BBP day-1 completion; anti-harassment day-30 completion — all 3 new hires); CEO reviews and approves in first week of January; OKR document saved to SharePoint; quarterly cadence launched
2. **Edge case:** A regulatory action in Q2 forces a pivot away from planned OKRs → A DOL audit opens mid-Q2; Dr. Lewis must spend significant time on document production and attorney coordination; planned Q2 OKR "Complete vendor security questionnaires for all Tier 1 vendors" will not be completed; Q2 mid-quarter update: O2 — security questionnaires are At Risk (current score 0.2); Dr. Lewis updates CEO: "DOL response is consuming audit cycles; recommending OKR is extended to Q3 with full completion by September"; CEO agrees; Q2 OKR retrospective documents the reallocation of capacity; the extended deadline is documented with rationale; this is not an OKR failure — it is an operational priority shift documented appropriately
3. **Adversarial:** "Let's set OKRs for things we're already doing so we look good" → Setting OKRs for work that is already complete or in-progress makes the scoring feel good but produces no improvement; OKRs should represent stretch goals within reach — not completed work; Dr. Lewis sets OKRs that represent genuine program improvement over the current baseline; if the question is "should the annual OIG LEIE check be an OKR?", the answer is no — it is a mandatory operation and an OKR for it adds no accountability beyond what is already required; Dr. Lewis reserves OKRs for the improvements that would not happen without a specific quarterly commitment

## Audit Log
Quarterly OKR documents retained 3 years. CEO approval records retained. OKR retrospectives retained. Annual OKR summary retained permanently as program history. Matt Mathison briefs retained.

## Deprecation
Retire when the compliance program has sufficient maturity that OKR tracking is integrated into the annual compliance plan and management reporting process — with Dr. Lewis using the OKR system as a planning tool but no longer needing this skill to generate the structure.
