---
name: strategy-okr-tracker
description: "Track OKR progress — scoring, check-ins, and end-of-quarter retrospective. Use when the user says 'OKR tracking', 'OKR check-in', 'OKR progress', 'OKR score', 'track the OKRs', 'how are we doing on OKRs', 'OKR update', 'OKR review', 'OKR retrospective', 'end of quarter OKR', 'grade the OKRs', 'score the OKRs', 'quarterly OKR review', 'OKR status', 'key results tracking', or 'are we hitting our OKRs'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4>] [--year <YYYY>] [--type <check-in|end-of-quarter|annual-retro>]"
---

# OKR Tracker

Track OKR progress for MBL portfolio companies — conducting mid-quarter check-ins, end-of-quarter scoring, and retrospective analysis that closes the OKR loop and informs next-quarter objective setting. The OKR system only creates value if the cycle is closed: objectives are set, tracked, scored, and learned from before new objectives are set. Organizations that set OKRs but don't score them have a goal list, not an OKR system. At MBL portfolio scale, OKR tracking integrates with the weekly CEO dashboard (strategy-kpi-dashboard), the quarterly board report (strategy-board-reporting), and the next-quarter OKR build (strategy-company-okr-builder) — all three reference the current OKR tracking state.

## When to Use
- Mid-quarter OKR check-in (recommended Week 4-5 of each quarter)
- End-of-quarter OKR scoring (within 10 days of quarter-end)
- Annual OKR retrospective (at year-end; reviews all four quarters)
- A specific OKR is flagged as at-risk and needs a recovery plan
- Matt Mathison asks for a current OKR status

## OKR Tracking Framework

```
OKR scoring protocol:

  Scale: 0.0 to 1.0 per key result
    0.0: No progress
    0.3: Started but significantly behind
    0.5: Halfway to target (literal midpoint)
    0.7: Good progress; likely to hit if effort continues
    0.9: On track to hit target or minor miss acceptable
    1.0: Target met exactly
    
  Score calibration:
    1.0 every quarter = targets are not ambitious enough (ratchet up)
    0.3 average = targets are too ambitious (calibrate) OR execution is failing (diagnose)
    Healthy OKR score: 0.65-0.85 average over time (ambitious but achievable)
    
  Objective score = average of its Key Results (unweighted unless specified)
  Quarter score = average of all objectives
  
  Mid-quarter check-in (Week 4-5):
    Purpose: Catch problems early enough to course-correct
    Not for changing OKRs mid-quarter (OKRs are fixed once set; adjust next quarter)
    Exception: A key result becomes impossible due to external circumstances (e.g., regulation change)
    Action from mid-quarter: Escalate 🔴 KRs; allocate resources to recover 🟡 KRs; confirm 🟢 trajectory
    
  End-of-quarter scoring (10 days after quarter-end):
    Purpose: Final scores; candid assessment; input to next quarter
    Score each KR with evidence (not self-reporting; use KPI data)
    Identify learnings: What worked? What didn't? Was the KR well-designed?
    
  Retrospective analysis:
    Four questions:
      1. What did we accomplish that we planned? (On-track KRs)
      2. What did we commit to but not deliver? (Missed KRs — why?)
      3. What happened that we didn't plan? (Unplanned wins or losses)
      4. What should we do differently next quarter? (Process, resources, target calibration)
      
  OKR vs. KPI distinction (restate as needed):
    KPIs are always-on health metrics → never scored; always tracked
    OKRs are time-bounded improvements → scored quarterly; reset each quarter
    A KPI below target is a 🔴 on the dashboard → action required immediately
    An OKR below 0.7 at end-of-quarter → scored as-is; learning informs next quarter
```

## Output Format

```markdown
# OKR Tracking — [Company Name] [Q]/[Year]
**Type:** [Mid-quarter check-in / End-of-quarter score / Annual retrospective]
**Date:** [Date] | **Quarter:** Q[N] [Year] | **Week of quarter:** Week [N] / 13

---

## Quarter Score Summary

| Objective | KR count | Score | Status | Change since last check-in |
|---------|---------|-------|--------|--------------------------|
| O1: [Name] | [N] KRs | [0.X] | 🟢/🟡/🔴 | ↑/→/↓ |
| O2: [Name] | [N] KRs | [0.X] | | |
| O3: [Name] | [N] KRs | [0.X] | | |
| **Quarter average** | | **[0.X]** | | |

---

## O1: [Objective Name] — Score: [0.X]

| Key Result | Target | Current | Score | Status | Recovery action (if 🔴) |
|-----------|--------|---------|-------|--------|------------------------|
| KR1.1: [Hire NP to 4.0 FTE by Sept 30] | 4.0 FTE | 3.5 FTE | 0.7 | 🟡 | NP starts Oct 1 — 1 week late; score 0.85 projected EoQ |
| KR1.2: [Practice manager hired] | Hired + 30 days | Hired June 15 | 1.0 | 🟢 | — |
| KR1.3: [Provider utilization ≥90%] | ≥90% | 87% | 0.7 | 🟡 | Scheduling optimization underway |
| **O1 score** | | | **0.8** | 🟢 | |

---

## O2: [Objective Name] — Score: [0.X]

| Key Result | Target | Current | Score | Status | Recovery action (if 🔴) |
|-----------|--------|---------|-------|--------|------------------------|
| KR2.1: [Billing lag ≤35 days] | ≤35 days | 38 days | 0.6 | 🟡 | Marshall Medical escalation; target 35 by EoQ |
| KR2.2: [Claims denial rate <5%] | <5% | 4.2% | 0.9 | 🟢 | — |
| KR2.3: [Payer diversification — add 1 new commercial payer] | 1 new payer contract | Pending — application submitted | 0.4 | 🔴 | Payer credentialing timelines outside our control; score 0.4 is likely EoQ |
| **O2 score** | | | **0.63** | 🟡 | |

---

## 🔴 Key Results Requiring Action

**KR2.3 — New payer contract:** Credentialing is submitted; timeline not controllable; EoQ score expected 0.4. Learning: payer credentialing takes 90-180 days — this KR was not achievable in a single quarter; next quarter: set KR around credentialing milestones (application submitted, assigned, in review) rather than final contract signing.

---

## 🟡 Key Results At Risk

**KR1.1 — NP hire:** NP starting October 1 (1 week late vs. Sept 30 target). Score will be 0.85 at EoQ (missed by 1 week). No further action needed — on track; minor miss.

**KR2.1 — Billing lag:** Currently 38 days vs. 35-day target. Marshall Medical escalation underway. Target: 35 by EoQ. On track if escalation resolves this week.

---

## End-of-Quarter Retrospective (use at EoQ only)

### What We Accomplished

[List KRs at 0.8+ with 1-sentence note on what made them successful]

### What We Missed — and Why

| Missed KR | Final score | Root cause | Learning |
|-----------|------------|-----------|---------|
| KR2.3: New payer contract | 0.4 | Credentialing timeline (90-180 days; not 30-day quarter cycle) | Redesign KR around milestone stages, not final outcome |

### What Happened That We Didn't Plan

[Positive or negative unexpected developments — note for next OKR setting]

### Next-Quarter Recommendations

1. KR2.3 → redesign as milestones: "Credentialing application submitted (done) + assigned status + in-review status by [Date]"
2. [Other recommendation]

---

## Matt Mathison Brief (mid-quarter or EoQ)

OKR check-in [Company] [Q][Year] (Week [N]): Quarter score [0.X]. O1 [Name]: [0.X] 🟢 on track. O2 [Name]: [0.X] 🟡 — billing lag at 38 days (target 35; recovering); payer contract KR likely to miss (credentialing timeline). No 🔴 objectives. Action from Matt Mathison: [None / Discuss payer credentialing redesign for Q4 OKR / Allocate additional resource to billing lag recovery].
```

## Output Contract
- OKR scores are based on evidence, not self-assessment — each key result score is derived from the same data that drives the KPI dashboard (AdvancedMD, QuickBooks, Marshall Medical Billing, UT DOGM, ad server); a CEO who says "I feel like we're at a 0.8 on this KR" is offering an opinion, not a score; Dr. Lewis verifies the score against the data source before presenting it; if the data says 0.6 and the CEO says 0.8, the data wins; the KPI dashboard and the OKR tracker reference the same numbers
- OKRs don't change mid-quarter — the purpose of the OKR quarter is to commit to a direction and execute; changing OKRs mid-quarter because they are hard or because circumstances changed slightly undermines the commitment mechanism; Dr. Lewis holds the OKRs fixed through the quarter and scores them honestly at the end; the retrospective determines whether next quarter's OKRs need redesign; the only exception is a KR that has become literally impossible due to external circumstances beyond the company's control (e.g., a regulatory change eliminates a service line) — in that case, Dr. Lewis and the CEO document the reason for the abandonment and replace it with a relevant KR for the remaining quarter
- A score of 0.3 or below requires a retrospective conversation, not just a number — when a KR ends the quarter at 0.3 or below, there are three possible explanations: (1) the target was not achievable in the timeframe (calibration problem — fix next quarter); (2) execution failed (resource or prioritization problem — address in next quarter planning); (3) the KR was badly designed (not outcome-based; not measurable; change next quarter); Dr. Lewis presents the root cause analysis for any KR at 0.3 or below; "we just didn't get to it" is not a root cause
- HITL required: Dr. Lewis runs the OKR tracking process and produces the score update; CEO reviews for operational accuracy (particularly whether a KR is genuinely at the stated score or whether the CEO wants to adjust); Matt Mathison receives the quarterly score with the brief; any KR that is 🔴 at a mid-quarter check-in is escalated to Matt Mathison before the end-of-quarter brief (not after)

## System Dependencies
- **Reads from:** KPI dashboard data (strategy-kpi-dashboard — same data sources), OKR definitions (strategy-company-okr-builder), annual plan (strategy-annual-plan-builder — KRs derived from annual priorities), financial statements (QuickBooks), AdvancedMD data, Marshall Medical Billing data
- **Writes to:** OKR tracker document (SharePoint/Governance/<Company>/OKRs/[Year]/Q[N]/); board report OKR section (strategy-board-reporting); next-quarter OKR build context (strategy-company-okr-builder — retrospective informs next quarter)
- **HITL Required:** Dr. Lewis runs the process; CEO reviews scores; Matt Mathison receives quarterly update; 🔴 KRs at mid-quarter trigger immediate Matt Mathison notification; end-of-quarter retrospective discussed with CEO before finalized

## Test Cases
1. **Golden path:** Allevio Q2 OKR end-of-quarter scoring → O1 (Provider capacity and patient access): KR1.1 NP hired 0.85 (started July 1, 1 day late); KR1.2 Practice manager hired 1.0; KR1.3 Utilization ≥90% 0.6 (at 87% — NP still ramping); O1 score: 0.82 🟢; O2 (Revenue operations): KR2.1 Billing lag ≤35 days 0.65 (38 days, improving from 42); KR2.2 Denial rate <5% 0.9 (4.2%); KR2.3 New payer contract 0.4 (submitted, not approved — credentialing timeline); O2 score: 0.65 🟡; O3 (HIPAA and compliance readiness): KR3.1 Risk assessment complete 1.0; KR3.2 100% staff training 0.85 (1 staff member missed refresher — scheduled); KR3.3 SOP documentation 0.7 (14 of 20 SOPs documented); O3 score: 0.85 🟢; Quarter score: (0.82 + 0.65 + 0.85) / 3 = 0.77 — healthy; retrospective: KR2.3 redesign for Q3 (milestone stages, not final outcome); Matt Mathison brief: 0.77 quarter average; O2 at 0.65 due to payer credentialing timeline — KR redesigned for Q3; no 🔴 objectives; system is working
2. **Edge case:** Mid-quarter check-in Week 5 and a key objective is already at 0.2 (far behind) → This is a 🔴 situation requiring immediate action and Matt Mathison notification (don't wait for end-of-quarter scoring); Dr. Lewis presents to CEO: what happened? Is this a resource problem (add capacity), a priority conflict (the team is working on something else), or a target calibration problem (the KR was not realistic in a quarter)? Root cause determines the action; Matt Mathison brief sent same day: "[Company] O2 KR2.3 is at 0.2 at Week 5 — significantly behind; root cause: [specific]; action: [specific]; EoQ score projection: 0.3-0.4 — miss is confirmed; learning for Q3 OKR design"; Matt Mathison can offer resource (additional capital, Dr. Lewis time) or accept the miss and redesign for Q3
3. **Adversarial:** CEO asks to change a KR mid-quarter because "the market changed and this KR is no longer relevant" → Dr. Lewis evaluates: did the market actually change in a material, external way that makes the KR literally impossible? Or did the CEO's priorities shift because the KR became inconvenient? If the latter: OKRs don't change because they're hard; the quarter's score reflects the reality; the retrospective is where the redesign happens; if the former (genuine external change): Dr. Lewis documents the specific external event, the date it occurred, and why it makes the KR impossible; the KR is abandoned with documentation and the CEO proposes a substitute for the remaining quarter; the abandonment and the reason are preserved in the retrospective and reported to Matt Mathison

## Audit Log
All OKR scores retained by quarter and year. Mid-quarter check-in records retained. End-of-quarter retrospective retained. KR abandonment records and rationale retained. Annual retrospective retained. Matt Mathison communication records retained.

## Deprecation
Retire when portfolio companies have a strategy or operations function that runs the OKR cycle — with Dr. Lewis reviewing the scores for honesty and thesis alignment and Matt Mathison receiving the quarterly summary regardless of who produces the tracking.
