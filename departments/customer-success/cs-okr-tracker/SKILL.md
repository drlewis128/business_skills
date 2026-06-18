---
name: cs-okr-tracker
description: "Track and manage CS team OKRs for MBL portfolio companies. Use when the user says 'CS OKRs', 'customer success OKRs', 'CS objectives', 'CS key results', 'OKR for CS', 'set CS OKRs', 'CS quarterly objectives', 'CS team goals', 'CS annual goals', 'CS goals', 'CS team OKR', 'quarterly CS goals', 'CS goal setting', 'CS priority setting', 'what should CS be focused on', 'CS team priorities', 'CS strategic priorities', 'CS roadmap', 'CS plan', 'CS annual plan', 'CS priorities this quarter', or 'what are CS goals for the year'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4|annual>] [--action <set|track|review|report>]"
---

# CS OKR Tracker

Track and manage CS team OKRs for MBL portfolio companies — setting the right quarterly objectives that align CS execution with MBL's portfolio growth targets, tracking progress rigorously, and surfacing blockers before they become misses. Dr. Lewis sets CS OKRs in alignment with the CEO of each portfolio company and reviews progress weekly; Matt Mathison receives a quarterly OKR summary.

## When to Use
- Start of each quarter (set OKRs for the new quarter)
- Weekly CS team review (track OKR progress; flag off-track key results)
- End of quarter (grade OKRs; set next quarter OKRs)
- Annual planning (set annual CS objectives aligned with company growth targets)

## CS OKR Framework

```
OKR PHILOSOPHY FOR CS:
  Objectives set the direction — "Where are we trying to go this quarter?"
  Key results measure the progress — "How will we know we're getting there?"
  OKRs should be ambitious but achievable — a 70% score on an ambitious OKR is better
    than a 100% score on a trivially easy one; Dr. Lewis targets OKRs that a high-performing
    CS team achieves 70-80% of the time
  CS OKRs drive the business outcomes that Matt Mathison cares about:
    GRR, NRR, churn rate, and expansion ARR — these should appear as key results
    
STANDARD CS OKR TEMPLATE (per entity, per quarter):

  OBJECTIVE 1: Protect existing revenue (retention)
    KR 1.1: GRR ≥ [target]% for the quarter
    KR 1.2: Churn ARR ≤ $[X]K for the quarter
    KR 1.3: ≤ [N] voluntary churn events (customer chose to leave)
    
  OBJECTIVE 2: Deliver excellent customer outcomes
    KR 2.1: 100% of Priority A accounts receive a QBR this quarter
    KR 2.2: Avg TTV for new accounts ≤ [target] days (entity-specific)
    KR 2.3: ≥ 80% of accounts at Green health by end of quarter
    KR 2.4: NPS survey completed with ≥ 60% response rate; score ≥ [target]
    
  OBJECTIVE 3: Grow existing customer revenue (expansion)
    KR 3.1: NRR ≥ [target]% for the quarter (GRR + expansion − downgrades)
    KR 3.2: ≥ $[X]K expansion ARR identified and proposed
    KR 3.3: ≥ [N] expansion opportunities qualified
    
  OBJECTIVE 4: Build CS team capability
    KR 4.1: All CS reps complete monthly 1:1 with Dr. Lewis
    KR 4.2: [Specific skill development milestone — e.g., "all reps shadow a Dr. Lewis QBR by end of Q2"]
    KR 4.3: CS hiring: [specific milestone — e.g., "first CSM hired and in onboarding by June 30"]

ENTITY-SPECIFIC OKR CALIBRATION:

  ALLEVIO:
    GRR target: >90% (employer group retention)
    Voluntary churn threshold: ≤2 employer groups per quarter
    TTV target: ≤84 days (12 weeks from contract to first member enrolled)
    Expansion opportunities: focus on existing groups with 2nd locations; dependent expansion
    Q1/Q4 capacity: Open enrollment season — QBRs may be deprioritized in favor of
      onboarding support; adjust OKRs for Q4 to reflect this reality
      
  COLUMN6:
    GRR target: >70% (IO-based relationships are more volatile — benchmark accordingly)
    TTV target: ≤5 business days from signed IO to first impression served
    Expansion: focus on DMA expansion; additional brand IOs; spend increase in existing relationships
    
  HIVE:
    GRR target: >85% (leases have multi-year terms; churn is rare but costly)
    TTV target: ≤45 days from signed LOI to executed lease
    Expansion: focus on additional parcels from existing landowners; referrals

WEEKLY OKR REVIEW:
  Every Monday: Dr. Lewis reviews key result progress (% complete toward target)
  Any KR below 60% of target at mid-quarter: FLAG — identify blocker; assign remediation action
  Any KR that will miss its target: Dr. Lewis notifies the CEO of the portfolio company;
    builds a recovery plan or adjusts the forecast
  OKR progress logged in SharePoint each week with a RAG status:
    Green: On track to meet or exceed
    Yellow: At risk; needs attention; action assigned
    Red: Will miss; CEO notified; forecast updated

QUARTERLY GRADING:
  Grade each KR: 0.0 (missed); 0.3-0.5 (partial); 0.7 (met); 1.0 (exceeded)
  Target average KR grade: 0.7-0.8 (ambitious but achievable standard)
  Grade each Objective: average of KR grades
  Overall CS OKR score: average of Objective grades
  Dr. Lewis reviews the grades with the CEO; uses the grade to set next quarter's ambition level
```

## Output Format

```markdown
# CS OKR Tracker — [Entity] | Q[X] [YYYY]
**Period:** [Start date] to [End date] | **CS Owner:** Dr. Lewis
**Overall score (end of quarter):** [X.X] / 1.0

---

## OKR Progress

### O1: Protect existing revenue (retention)
| Key Result | Target | Current | % complete | Status |
|-----------|--------|---------|-----------|--------|
| GRR ≥ 90% | ≥90% | [X]% | [X]% | 🟢/🟡/🔴 |
| Churn ARR ≤ $100K | ≤$100K | $[X]K | — | 🟢/🟡/🔴 |
| Voluntary churn ≤ 2 | ≤2 | [N] | — | 🟢/🟡/🔴 |

### O2: Deliver excellent customer outcomes
[Same table structure]

### O3: Grow existing customer revenue
[Same table structure]

### O4: Build CS team capability
[Same table structure]

---

## Off-Track Key Results (Yellow and Red)

| Key Result | Status | Blocker | Remediation | Owner | Due |
|-----------|--------|---------|------------|-------|-----|
| [KR X.X] | 🔴 | [Root cause] | [Specific action] | Dr. Lewis | [Date] |

---

## Quarter-End Grade (filled at end of quarter)

| Objective | KR grades | Obj. grade |
|-----------|----------|-----------|
| O1: Retain | [0.7, 1.0, 0.5] | 0.73 |
| O2: Outcomes | | |
| O3: Expand | | |
| O4: Capability | | |
| **Overall** | | **[X.X]** |
```

## Output Contract
- OKRs are set with the CEO, not for the CEO — the CS OKRs are built with input from the CEO of the portfolio company; a Dr. Lewis-only OKR set that doesn't reflect the CEO's priorities for the quarter is an OKR set that will be ignored at the quarterly review; Dr. Lewis proposes the draft OKRs; the CEO approves and may modify; the final OKRs are both parties' commitments to the quarter
- Weekly tracking is non-negotiable — OKRs that are only reviewed at quarter-end are not OKRs; they are annual goals that we pretend we cared about quarterly; Dr. Lewis reviews KR progress every Monday; a KR at 40% completion at mid-quarter with no intervention is a failed OKR by design; early detection of at-risk KRs is the only way to recover them
- Honest grading builds credibility — a team that consistently gives themselves 0.9-1.0 on every OKR has set their OKRs too easy; a team that consistently gives themselves 0.3-0.5 has set their OKRs too hard; Dr. Lewis targets 0.7 as the right grade — ambitious enough to push the team, achievable enough to motivate; when grades are below 0.7, the after-action discussion asks "were the OKRs set correctly?" before "did the team work hard enough?"
- HITL required: Dr. Lewis proposes CS OKRs; CEO of the portfolio company approves before the quarter starts; CEO is notified of any Red OKR at mid-quarter; Matt Mathison receives the quarterly OKR grade summary; any OKR that is structurally at risk (systemic blocker) is escalated to Matt Mathison before it becomes a miss; Dr. Lewis does not start the next quarter without a formal grade on the prior quarter's OKRs

## System Dependencies
- **Reads from:** cs-kpi-dashboard (GRR, NRR, churn rate — KR data sources); cs-health-score-tracker (health distribution — KR data); cs-qbr-preparer (QBR completion rate — KR data); cs-onboarding-coordinator (TTV — KR data); cs-nps-program (NPS score and response rate — KR data); cs-expansion-spotter (expansion ARR pipeline — KR data); cs-coaching-framework (rep development milestones — KR data for capability OKRs)
- **Writes to:** OKR tracker (SharePoint/CustomerSuccess/<Company>/OKRs/Q[X]_[YYYY]_OKRTracker.pdf); weekly status update (email to CEO — RAG status of KRs); mid-quarter at-risk notification (CEO and Matt Mathison — for Red OKRs); quarterly grade report (SharePoint/CustomerSuccess/<Company>/OKRs/Q[X]_[YYYY]_OKRGrade.pdf); Matt Mathison quarterly summary (aggregate OKR grades across entities)
- **HITL Required:** CEO approves OKRs at quarter start; CEO notified of Red OKRs at mid-quarter; Matt Mathison receives quarterly grade summary; any structural blocker requires Matt Mathison escalation; Dr. Lewis grades OKRs honestly at quarter-end and presents to CEO; next-quarter OKRs require CEO approval before the quarter starts

## Test Cases
1. **Golden path:** Q2 Allevio OKR review at week 8 of 13 — O1 (Retain): GRR 91.4% of 90% target (Green); Churn ARR $42K of $100K target (Green); 1 voluntary churn (target ≤2, Green) → O2 (Outcomes): QBR completion 100% Priority A (Green); TTV 81 days vs. 84-day target (Green); Health distribution 18G/3Y/0R (Green); NPS survey sent but response rate 52% vs. 60% target (Yellow) → O3 (Expand): NRR 102.3% vs. 100% target (Green); expansion identified: $89K of $75K target (Green — exceeded); O4 (Build): All reps completed June 1:1 ✅; first CSM shadowed a Dr. Lewis QBR ✅; CS hiring: CSM offer accepted, starts July 1 ✅ → Only Yellow KR: NPS response rate; Dr. Lewis: "We need to re-send the NPS to the 10 non-responders with a personal note from the CS rep. Target: get to 14 responses (64%) before June 30." Re-send sent; 6 more responses; response rate: 64% → Green; Q2 grade at quarter-end: O1: 1.0; O2: 0.85; O3: 1.0; O4: 1.0; Overall: 0.96
2. **Edge case:** At week 6 of Q3, churn ARR is already at $95K of a $100K target — a single large account ($120K ACV) is showing Red health signals → Dr. Lewis: "This is a Red OKR situation — we're likely to miss the churn ARR target if [Account A] churns. I'm notifying the CEO today. Here's the math: if [Account A] churns, churn ARR is $215K — more than double the target. The churn ARR OKR target needs a recovery plan or a forecast update. CEO: I need your help on the [Account A] intervention. I'm also reviewing whether our $100K target was calibrated correctly given that we have one account at 17% of total ARR — single-account concentration risk." CEO briefed; CEO-led intervention on [Account A]; account retained; churn ARR ends at $95K; OKR grade: 0.95 (met)
3. **Adversarial:** At quarter-end grade, a CS rep argues their OKR grade should be higher because "we had two accounts acquired in M&A — that's involuntary churn, not our fault" → Dr. Lewis: "You're right that acquisition-driven churn is outside our control — and I've already classified both events as involuntary in the churn log. But the OKR was set on total churn ARR, not voluntary churn ARR. We set it that way because total churn is what affects GRR, regardless of cause. The M&A churn is a lesson about concentration risk in the portfolio — two of your accounts were in the same industry that went through consolidation; we should build earlier warning into our model for industry-level risk. For this quarter: the grade is what the data shows. Next quarter's OKR will be adjusted to separate voluntary vs. involuntary churn as separate KRs — that's a better model." Grade stands; OKR structure improved for next quarter

## Audit Log
All OKR tracker documents retained by entity, quarter, and year. CEO approval records retained. Weekly status updates retained. Mid-quarter at-risk notifications retained. Quarterly grade reports retained. Matt Mathison quarterly summaries retained.

## Deprecation
Retire when each portfolio company has a dedicated OKR management tool (Lattice; 15Five; Betterworks) — with Dr. Lewis reviewing the OKR framework annually and the CEO approving all CS OKRs before each quarter starts.
