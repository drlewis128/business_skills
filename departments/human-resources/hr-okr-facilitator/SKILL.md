---
name: hr-okr-facilitator
description: "Facilitate employee-level OKR setting and quarterly scoring for MBL Partners portfolio companies. Use when the user says 'employee OKRs', 'individual OKRs', 'set OKRs', 'OKR setting', 'OKR facilitation', 'quarterly OKRs', 'team OKRs', 'department OKRs', 'align OKRs', 'OKR alignment', 'OKR cascade', 'OKR scoring', 'score OKRs', 'OKR check-in', 'OKR review', 'OKR progress', 'how are OKRs going', 'OKR update', 'OKR miss', 'missed OKR', 'OKR conversation', 'what OKRs should they have', 'write OKRs', 'OKR writing', 'good OKRs', 'OKR quality', 'KR quality', 'key results', 'objectives and key results', or 'individual goal setting'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--employee <name>] [--quarter <YYYY-Q1|Q2|Q3|Q4>] [--action <set|score|review|cascade>]"
---

# HR OKR Facilitator

Facilitate employee-level OKR setting that cascades from entity OKRs — ensuring each employee has 2-3 objectives that connect their individual work to the entity's north star metrics, with key results that are measurable and scorecard-ready at quarter-end. OKRs work only when they are set before the quarter starts, scored honestly from data (not self-assessment), and connected to performance review and compensation.

## When to Use
- Beginning of a new quarter (OKR setting)
- Mid-quarter OKR check-in
- End-of-quarter OKR scoring
- Annual performance review needs individual OKRs as an input

## Employee OKR Framework

```
OKR DESIGN RULES:

  OBJECTIVES (the "O"):
    Qualitative: inspirational direction, not a metric
    Examples: "Deliver a great employer experience for Allevio clients"
    Not: "Increase employer GRR to 93%" (that's a KR, not an O)
    Max 3 objectives per employee per quarter
    
  KEY RESULTS (the "KR"):
    Quantitative: measurable from data, not self-assessment
    Examples: "Employer GRR for assigned accounts ≥91% at quarter-end"
    Not: "Be more proactive with employers" (unmeasurable)
    2-3 KRs per objective max
    KR source: pull from entity north star metrics where possible
    
  ENTITY NORTH STARS → EMPLOYEE KRs:
    Allevio (employer GRR ≥91%; claim ratio ≤87%):
      CS/Clinical: assigned employer GRR; member utilization; satisfaction score
      Sales: new employer pipeline; conversion rate; first enrollment date
    HIVE (landowner GRR ≥85%):
      Ops/Land: lease renewal rate; landowner contact frequency; dispute resolution time
      Finance: royalty payment accuracy; Covercy reconciliation timing
    Column6 (agency NRR ≥95%; VCR ≥92%):
      Commercial: account NRR; rebooking rate; agency contact frequency
      Ops: VCR compliance rate; delivery rate; make-good resolution time
      
SCORING (0.0 to 1.0 scale):
  Score from data, not self-assessment
  1.0: 100% of KR achieved
  0.7: 70% achieved — this is the "success" target in OKR methodology (not 1.0)
  0.5: 50% — partial; significant gap
  0.0: not started or no meaningful progress
  
  HEALTHY SCORE RANGE: 0.65-0.85
    Below 0.6 for 2 consecutive quarters: manager coaching conversation + root cause
    1.0 every quarter: KRs were too easy — raise ambition next quarter
    
  OKR SCORE ≠ PERFORMANCE RATING:
    OKRs measure effort + ambition + direction
    Performance rating considers broader context (teamwork, THRIVE behaviors, growth)
    OKR score is one major input to the annual performance review, not the only one

QUARTERLY CADENCE:
  Week 1 of quarter: OKRs set and approved by manager + Dr. Lewis confirms alignment
  Month 2 of quarter: mid-quarter check-in (10-min conversation; not a full review)
  Last week of quarter: scoring complete from data; manager and employee score independently; 
    reconcile divergence in a 30-min conversation
    
OKR CASCADE PROCESS:
  Step 1: Entity OKRs are set (by entity CEO; per ops-okr-program)
  Step 2: Department/team OKRs derived from entity OKRs
  Step 3: Employee OKRs derived from team OKRs
  Test: can you draw a line from each KR to an entity north star metric?
  If not: the KR is probably measuring activity, not outcome
```

## Output Format

```markdown
# Employee OKRs — [Name] | [Entity] | [Quarter YYYY]
**Cascades from:** [Entity OKR objective] | **Manager:** [Name] | **Set by:** [Date]

---

## Objective 1: [Qualitative statement]

| Key Result | Target | Mid-Q progress | Q-end score | Data source |
|-----------|--------|---------------|-------------|------------|
| [KR 1] | [X%] | [X%] | [0.0-1.0] | [AdvancedMD / Covercy / GoHighLevel] |
| [KR 2] | [X] | [X] | [0.0-1.0] | |

**Objective 1 score:** [Avg of KR scores]

---

## Objective 2: [Qualitative statement]
[same format]

---

## Overall OKR Score: [Avg of objective scores]
**Score interpretation:** 0.7-0.85 = on track / <0.6 = coaching needed / 1.0 = raise ambition

---

## Q+1 OKR Adjustments
- [ ] KRs adjusted based on this quarter's learnings: [what changed and why]
```

## Output Contract
- OKRs are set before the quarter starts — a goal set in Week 3 of the quarter is not an OKR; it is a post-facto rationalization of what the person was already doing; Dr. Lewis ensures entity OKRs are set in the last week of the prior quarter so employee OKRs can be set in Week 1 of the new quarter; any employee who does not have OKRs in Week 1 is a signal that their manager did not set entity OKRs on time
- KR scores come from data, not self-assessment — "I think I scored a 0.8 on that" is not a score; a score is derived from a specific number in a specific system (GRR from AdvancedMD; NRR from GoHighLevel; VCR from campaign dashboard; royalty payment accuracy from Covercy); if a KR cannot be scored from data, it is not a valid KR; Dr. Lewis works with the manager to rewrite unmeasurable KRs before the quarter starts
- A quarterly score of 1.0 triggers a KR ambition review — consistently scoring 1.0 means the targets were set too low; Dr. Lewis flags any employee who scores 1.0 in two consecutive quarters and requests that their manager raise ambition in the next quarter's OKR setting; the goal is a target that requires stretch effort (0.7-0.85 attainment) not a target set to be easily achieved
- HITL required: OKR set → manager approves; Dr. Lewis confirms cascade alignment; Q-end scoring → manager and employee score independently; divergence >0.2 → Dr. Lewis facilitated conversation; consecutive <0.6 score → Dr. Lewis coaching conversation with manager; entity OKR connection missing → Dr. Lewis flags before OKRs are finalized; annual review OKR input → Dr. Lewis reviews OKR history

## System Dependencies
- **Reads from:** ops-okr-program (entity-level OKRs; cascade source); hr-performance-review-cycle (OKRs as performance review input); entity KPI dashboards (AdvancedMD, Covercy, GoHighLevel, campaign dashboards for scoring); hr-job-profiler (role outcomes align with OKR objectives)
- **Writes to:** Employee OKR records (SharePoint → HR → OKRs → [Entity] → [Employee] → [Quarter]); quarterly score log; performance review input (annual); hr-pip-builder (consecutive <0.6 trigger)
- **HITL Required:** OKR set → manager approves + Dr. Lewis confirms cascade; scoring → manager + employee independently; divergence → Dr. Lewis facilitates; <0.6 consecutive → Dr. Lewis coaching; cascade gap → Dr. Lewis flags; annual review input → Dr. Lewis reviews

## Test Cases
1. **Golden path:** Allevio Care Coordinator Q1 OKRs. Objective 1: "Deliver outstanding care coordination for my panel." KR1: Panel member utilization rate ≥18% (source: AdvancedMD). KR2: Employer GRR for assigned accounts ≥91% (source: billing report). Q1 end: KR1 scored from data: 21% utilization = 1.0 (exceeded). KR2: 91.4% GRR = 0.93. Objective 1 score: 0.97. Overall OKR: 0.92. Note: KR1 was too easy — Dr. Lewis flags to raise to 22% next quarter.
2. **Edge case:** Manager proposes a KR of "be more proactive in communicating with landowners" for a HIVE ops role → Dr. Lewis: "That's not scoreable from data — we need a specific, measurable version. How about: 'Landowner contact frequency: 100% of active leases contacted at least monthly' (scoreable from communication log)? Or: 'Zero landowner complaints escalated to HIVE CEO (scored from CEO log)'? Let's pick the one that best captures what you actually need from this person."
3. **Adversarial:** Employee argues their Q2 OKR score should be 0.8 but manager scored it 0.5 → Dr. Lewis: "Let's go to the data. KR1 target was 91% employer GRR. AdvancedMD report shows 87.3% — that's below target. The 0.5 score from the manager reflects 87.3/91.0 = 96% of target, but on a 0-1 scale relative to the goal, 87.3% is below threshold. The employee argues external factors — enrollment delays. Let's discuss whether the KR should have been adjusted mid-quarter for the enrollment delay. That's a legitimate conversation. The score stands at 0.5 unless we retroactively adjust for the delay with documented rationale."

## Audit Log
All quarterly OKR records retained for 3 years. Scoring records (data source confirmed) retained. Divergence resolution records retained. Consecutive <0.6 coaching records retained. Annual review OKR input retained.

## Deprecation
OKR scoring methodology reviewed annually. Entity north star metric targets reviewed when business model changes. Cascade process updated when entity OKR format changes (ops-okr-program).
