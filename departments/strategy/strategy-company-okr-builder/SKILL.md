---
name: strategy-company-okr-builder
description: "Build company-level OKRs — objectives and key results for the quarter or year. Use when the user says 'OKRs', 'objectives and key results', 'build OKRs', 'set OKRs', 'company OKRs', 'quarterly OKRs', 'annual OKRs', 'write the OKRs', 'OKR setting', 'OKR planning', 'define OKRs', 'OKR framework', 'set our objectives', 'OKR cascade', 'Q1 OKRs', 'draft our OKRs', or 'what are our objectives'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4|annual>] [--year <YYYY>] [--level <company|department>]"
---

# Company OKR Builder

Build company-level OKRs for MBL portfolio companies — translating the annual strategic plan into a quarterly/annual set of Objectives and Key Results that focus the organization on what matters most, create alignment across departments, and provide a shared accountability framework. OKRs at PE portfolio scale serve a specific purpose: they are the bridge between the annual strategic plan (what we're doing this year) and the daily work of each team member (what should I do today?). Without OKRs, the annual plan is a document that lives on SharePoint; with OKRs, it becomes a shared contract the CEO, Dr. Lewis, and Matt Mathison can track.

## When to Use
- Q4 — building Q1 and full-year OKRs before January 15
- Start of each quarter — finalizing next quarter's OKRs
- Annual planning — building the annual OKR cascade from strategic priorities
- A department needs to align their OKRs with company-level objectives
- Matt Mathison asks to see the company's OKRs for the quarter

## OKR Framework

```
OKR architecture (MBL standard):

  Objective: Qualitative statement of what we want to achieve
    Good objective: "Establish Allevio as the preferred primary care MSO partner in Scottsdale"
    Bad objective: "Grow revenue" (this is a metric, not an objective)
    Bad objective: "Maintain HIPAA compliance" (this is a standing obligation, not a stretch goal)
    Test: Can the team be genuinely motivated by this objective? Does it paint a picture of success?
    
  Key Results (KRs): Quantitative measures that determine whether the Objective was achieved
    Good KR: "Add 2 physician practice affiliations by June 30"
    Good KR: "Reach 2,200 patients under managed care by Q2 end"
    Bad KR: "Improve referral network" (not measurable)
    Bad KR: "Work on billing improvement" (activity, not outcome)
    Test: At the end of the period, is there zero ambiguity about whether this KR was achieved?
    Number: 3-5 KRs per Objective; if all KRs are achieved, the Objective was clearly achieved
    
  Company OKR structure:
    Objectives: 3 maximum at company level per quarter
    Key Results: 3-5 per Objective
    Cascade: Department OKRs are derived from company OKRs
    Grading: 0.0-1.0; target 0.7-0.9; 1.0 every period means the goals weren't ambitious enough
    
  OKRs vs. KPIs:
    KPIs: Measure ongoing health of business operations (always tracked; can be a standing metric)
    OKRs: Define specific improvements within a defined period (time-bounded; stretch)
    "Maintain EBITDA margin ≥18%" is a KPI; 
    "Improve EBITDA margin from 15% to 18% by Q4" is an OKR Key Result
    Mandatory business operations are KPIs, not OKRs
    
  Allevio example company OKRs (Q2):
    Objective 1: Establish a fully staffed, high-performing clinical team
      KR1: NP onboarded and at 50% panel capacity by April 30
      KR2: Staff turnover <1 departure in Q2
      KR3: Hire 1 practice manager to reduce CEO administrative burden
    Objective 2: Make our revenue engine reliable and predictable
      KR1: Billing lag reduced from 42 to 35 days by June 30
      KR2: Collect 100% of outstanding AR >90 days (currently $18K)
      KR3: Add 2 new payer contracts by Q2 end
    Objective 3: Build the compliance foundation for long-term growth
      KR1: HIPAA security risk assessment complete by May 15
      KR2: 100% of staff complete HIPAA training by April 30
      KR3: EHR upgrade scoped and vendor selected by June 30
```

## Output Format

```markdown
# Company OKRs — [Company Name] [Q/Annual Period]
**Period:** [Q1/Q2/Q3/Q4 Year] / [Annual Year]
**Prepared:** [Date] | **CEO approved:** [Date] | **Matt Mathison aligned:** [Date]
**Derived from:** [Annual strategic plan priorities 1, 2, 3]

---

## OKR Summary

| Objective | Key Results | Derived from priority | Q score |
|----------|-------------|----------------------|---------|
| [Objective 1 — short name] | [N] KRs | Priority [N] | [0.X] |
| [Objective 2] | | | |
| [Objective 3] | | | |

---

## Objective 1: [Full Objective Statement]

*[One sentence: why this objective matters this quarter / how it connects to the annual plan]*

| # | Key Result | Target | Measurement | Owner | Mid-Q check | Q-end score |
|---|-----------|--------|------------|-------|------------|------------|
| KR1 | [NP at 50% panel capacity] | April 30 | AdvancedMD patient schedule | CEO | [X]% | [0.X] |
| KR2 | [Staff turnover <1] | June 30 | HR headcount log | COO | [Status] | [0.X] |
| KR3 | [Practice manager hired] | May 31 | Offer accepted | CEO | [Status] | [0.X] |

**Objective 1 score:** [0.X] | **Assessment:** [On track / At risk / Complete]

---

## Objective 2: [Full Statement]

*[Context]*

| # | Key Result | Target | Measurement | Owner | Mid-Q check | Q-end score |
|---|-----------|--------|------------|-------|------------|------------|
| KR1 | [Billing lag ≤35 days] | June 30 | AR aging report / daily revenue | Controller | [X] days | |
| KR2 | [Collect AR >90 days] | June 30 | QuickBooks AR | Controller | $[X] remaining | |
| KR3 | [2 new payer contracts] | June 30 | Signed agreements | COO | [N] signed | |

**Objective 2 score:** [0.X]

---

## Objective 3: [Full Statement]

*[Context]*

| # | Key Result | Target | Measurement | Owner | Mid-Q check | Q-end score |
|---|-----------|--------|------------|-------|------------|------------|
| KR1 | [HIPAA risk assessment complete] | May 15 | Assessment document signed | Dr. Lewis | [Status] | |
| KR2 | [100% HIPAA training] | April 30 | LMS completion record | COO | [X]% complete | |
| KR3 | [EHR vendor selected] | June 30 | Vendor contract signed | CEO + Dr. Lewis | [Status] | |

**Objective 3 score:** [0.X]

---

## OKR Grading Guide

| Score | Meaning |
|-------|---------|
| 0.9-1.0 | Exceptional — or goal wasn't ambitious enough |
| 0.7-0.9 | Target range — strong execution with appropriate stretch |
| 0.5-0.7 | Made significant progress but didn't fully achieve |
| <0.5 | Significant gap — root cause review required |

**A score of 1.0 every quarter means you're not setting ambitious enough goals.**

---

## Department OKR Cascade Preview

| Department | Q Objective | Derived from company OKR |
|-----------|------------|--------------------------|
| Clinical (CEO) | [Get NP to full panel] | Objective 1 |
| Finance (Controller) | [Reduce billing lag] | Objective 2 |
| Compliance (Dr. Lewis) | [HIPAA risk assessment] | Objective 3 |

---

## Matt Mathison OKR Brief

[Company] [Q] OKRs: 3 objectives, [N] KRs total. Derived from Annual Priority 1 ([P1 name]), 2 ([P2 name]), 3 ([P3 name]). Key results with financial impact: [KR1 financial — billing lag = $25K cash]; [KR2 — new payer = $40K annual revenue]. CEO owns execution; Dr. Lewis tracks. Mid-quarter check-in: [Date]. End-of-quarter grading and retrospective: [Date].
```

## Output Contract
- OKRs measure outcomes, never activities — "work on billing improvement" is an activity; "reduce billing lag from 42 to 35 days by June 30" is an outcome; the difference is that one can be done without achieving anything and the other has a clear success state; Dr. Lewis challenges any Key Result that is phrased as an activity rather than a measurable outcome; rewriting every KR that contains "work on," "improve," "enhance," or "build" into a specific measurable outcome is a non-negotiable step in the OKR-building process
- Three objectives maximum — four or five company-level objectives means the company is trying to sprint in five directions simultaneously; the annual strategic plan has three priorities; the quarterly OKRs have three objectives that map to those priorities; if a CEO proposes four objectives, Dr. Lewis works with the CEO to collapse or defer one; the discipline of three objectives is the point — it forces real prioritization
- The connection to the annual plan is explicit — every objective in the quarterly OKRs is labeled with which annual strategic priority it derives from; if an objective doesn't connect to any of the three annual priorities, it's either a new priority (and needs Matt Mathison discussion) or it's operational BAU that should be a KPI, not an OKR; Dr. Lewis rejects any OKR that cannot be traced to an annual strategic priority
- HITL required: Dr. Lewis facilitates OKR building with CEO; CEO approves and must personally own at least one Objective; full leadership team reviews department OKR cascade; Matt Mathison receives OKRs and provides alignment (he doesn't set them — CEO owns OKRs); any change to OKRs mid-quarter requires CEO decision + Dr. Lewis documentation; OKR grading at quarter-end is shared with Matt Mathison

## System Dependencies
- **Reads from:** Annual strategic plan (strategy-annual-plan-builder), north star metric (strategy-north-star-builder), prior quarter OKR scores (execution tracker), financial baseline (QuickBooks), compliance plan (rc-compliance-ops-review)
- **Writes to:** OKR document (SharePoint/Strategy/<Company>/OKRs/[Quarter]/); execution tracker (strategy-execution-tracker); department OKR cascade; Matt Mathison OKR brief; quarterly board pre-read (strategy-board-prep)
- **HITL Required:** Dr. Lewis facilitates; CEO approves and owns; Matt Mathison receives and aligns; grading at quarter-end reviewed by Dr. Lewis + CEO; retrospective findings inform next quarter's OKR building

## Test Cases
1. **Golden path:** Allevio Q2 OKR building → Annual priorities: (1) Provider stability + add 1 provider; (2) HIPAA audit-ready; (3) Billing lag to 35 days; Q2 OKRs — Objective 1: "Build a stable, growing clinical team" (Priority 1); KRs: NP at 50% panel by April 30, staff turnover 0 in Q2, practice manager hired by May 31; Objective 2: "Make revenue capture predictable and reliable" (Priority 3); KRs: billing lag ≤35 days June 30, collect all AR >90 days, 2 new payer contracts; Objective 3: "Achieve HIPAA audit-ready status" (Priority 2); KRs: security risk assessment complete May 15, 100% staff HIPAA training April 30, EHR vendor selected June 30; CEO approves; Matt Mathison aligned; Dr. Lewis tracks progress with CEO in weekly check-in; mid-Q review: Objective 1 on track (NP started; manager hired); Objective 2 at risk (billing lag at 40 days — behind target); Objective 3 ahead (risk assessment complete May 8); Q2 scores: O1=0.83, O2=0.65, O3=0.90; overall 0.79 — in target range
2. **Edge case:** CEO proposes an OKR for "maintain excellent culture" → Culture is important but not an OKR — there is no measurable key result that captures "excellent culture" without being either a vanity metric (survey score from 5 employees) or an activity (hold 2 culture events); culture shows up in OKRs as staff turnover (retention KR), or hiring targets (team-building KR); Dr. Lewis works with the CEO to translate the culture intent into a measurable KR within an existing Objective (e.g., under "Build a stable clinical team" — add KR: "Employee NPS ≥30 as measured by Q2 anonymous survey"); this makes the culture intent trackable without standing as its own objective
3. **Adversarial:** Mid-quarter, the CEO asks to change a KR because "the target was too aggressive" → OKR changes mid-quarter undermine the commitment discipline that makes OKRs work; if a KR target changes whenever it looks hard to achieve, OKRs become a guaranteed scorecard rather than a stretch commitment; Dr. Lewis responds: "What happened that makes the target unachievable? Was the target wrong at the time of setting, or did something change in the environment?" If the target was set correctly and circumstances changed materially (a provider left; a payer removed a service), a documented mid-quarter adjustment may be appropriate — with the reason noted in the OKR record; if the target was always achievable and just requires more effort, it stays; the bar is high for mid-quarter OKR changes

## Audit Log
All quarterly OKRs retained. Quarter-end scores retained. Mid-quarter check-in notes retained. CEO approval records retained. Matt Mathison alignment records retained. Retrospective findings retained. OKR changes and rationale retained.

## Deprecation
Retire when portfolio companies have strong leadership capable of facilitating their own OKR process — with Dr. Lewis reviewing the OKRs for strategic alignment and thesis connection rather than facilitating the build from scratch.
