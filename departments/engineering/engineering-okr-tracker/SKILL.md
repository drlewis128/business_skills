---
name: engineering-okr-tracker
description: "Set and track engineering OKRs aligned to business objectives. Use when the user says 'engineering OKRs', 'engineering goals', 'quarterly objectives', 'engineering KR tracking', 'OKR progress', 'set engineering objectives', 'engineering quarterly goals', 'how is engineering tracking on goals', or 'engineering team objectives'."
metadata:
  version: 1.0.0
  tier: engineering
  owner: Dr. John Lewis
argument-hint: "[--quarter <Q1|Q2|Q3|Q4>] [--year <year>] [--mode <set|track|review>]"
---

# Engineering OKR Tracker

Set and track engineering OKRs aligned to MBL business objectives. OKRs work when they connect engineering work to business outcomes — "improve reliability" is a poor OKR; "reduce P1 incidents by 60% so customer onboarding is not blocked by outages" is good. This skill produces OKRs that are ambitious but measurable, and tracks progress in a format useful for Dr. Lewis's weekly review and Matt Mathison's quarterly summary.

## When to Use
- Beginning of a new quarter — setting engineering OKRs
- Mid-quarter check-in — tracking progress and adjusting
- End of quarter — retrospective scoring and learning
- Aligning engineering priorities after a business direction change
- Building engineering OKRs from the company OKRs (top-down cascade)

## OKR Framework

```
Objective:
  Qualitative, inspiring, directional
  Answers: "What do we want to achieve this quarter?"
  Example: "Make MBL's agent systems production-ready for portfolio company rollout"

Key Results (3-5 per Objective):
  Quantitative, measurable, time-bound
  Answers: "How will we know we achieved the Objective?"
  Example:
    KR1: OpenFang agent runtime achieves 99.5% uptime in production for 8 consecutive weeks
    KR2: Meeting Intelligence pipeline processes 100% of MBL meetings with <5% failure rate
    KR3: Agent system MTTR for P1 incidents <45 minutes (from baseline of 2.5 hours)
    KR4: On-call runbooks documented for all production alerts (currently 0/12)

Grading:
  0.0 = Did not start
  0.3 = Significant progress but missed
  0.7 = Hit most of it
  1.0 = Fully achieved
  Target grade: 0.7 (if 1.0 every quarter, goals were too easy)
```

## OKR Cascade (Business → Engineering)

```
Company OKR → Engineering OKR mapping:

Company: "Scale AI capabilities to portfolio companies by Q4"
  Engineering: "Build and validate the technical infrastructure for portfolio AI rollout"
    KR1: OpenFang deployed to Allevio staging with working agent integration
    KR2: Security review completed for portfolio data isolation pattern
    KR3: Integration playbook documented for 3 portfolio company stack types

Company: "Improve operational efficiency by 20%"
  Engineering: "Automate 5 manual operational workflows using agent skills"
    KR1: Meeting Intelligence pipeline automated (0→1 workflow)
    KR2: Weekly financial reconciliation automated (0→1 workflow)
    KR3: Agent monitoring dashboard live with zero manual data entry
```

## Output Format

```markdown
# Engineering OKRs — Q<N> <Year>
**Set date:** <date> | **Owner:** Dr. John Lewis
**Quarter:** <start date> → <end date>
**Status:** Setting / In progress / Complete

---

## Alignment to Business Objectives

| Business OKR | Engineering OKR |
|-------------|----------------|
| <Company OKR 1> | <Engineering OKR A> |
| <Company OKR 2> | <Engineering OKR B> |

---

## Objective 1: <Objective Statement>

**Why this matters:** <business impact — what gets better if we achieve this>

| Key Result | Baseline | Target | Week 4 | Week 8 | Week 13 | Grade |
|-----------|---------|--------|--------|--------|---------|-------|
| KR1: <metric> | <current value> | <target> | | | | |
| KR2: <metric> | | | | | | |
| KR3: <metric> | | | | | | |

**Status:** 🟢 On track / 🟡 At risk / 🔴 Off track
**Blocker:** <if at risk, what's blocking>

---

## Objective 2: <Objective Statement>

[Same format]

---

## Mid-Quarter Check-in (Week 6-7)

### Progress Assessment

| Objective | Current progress | Projected grade | Risk |
|-----------|----------------|----------------|------|
| Objective 1 | 65% | 0.7 | Low |
| Objective 2 | 30% | 0.4 | High |

### Adjustments

**Objective 2 is at risk:**
- **Root cause:** Allevio integration is more complex than estimated (compliance requirements add 3 weeks)
- **Options:** (A) Reduce scope — remove KR3; (B) Extend timeline to Q4; (C) Add resources
- **Decision:** [Dr. Lewis or Matt Mathison decides]

---

## End of Quarter Retrospective

| Objective | Final Grade | Key Achievement | Key Miss | Learning |
|-----------|-----------|----------------|----------|---------|
| Objective 1 | 0.8 | KR1, KR2, KR3 achieved | KR4: 10/12 runbooks | Underestimated alert mapping |
| Objective 2 | 0.5 | KR1 shipped | KR2, KR3 delayed | Allevio complexity not discovered in planning |

**Average grade:** <N> / 1.0
**Key learning for next quarter:** <what changes in how we plan>

---

## Matt Mathison Summary (Executive)

**Engineering Q<N> OKR Grade:** <grade>
**Headline achievement:** <biggest win>
**Missed:** <what didn't land and why>
**Q<N+1> implication:** <what this means for next quarter's plan>
```

## Output Contract
- Business alignment always documented — engineering OKRs not tied to business outcomes are activity metrics, not OKRs
- Baseline always captured at quarter start — can't measure progress without a starting point
- Mid-quarter check-in always scheduled — OKRs without checkpoints are set-and-forget (they fail)
- Grade target is 0.7, not 1.0 — document this explicitly; 1.0 every quarter = goals too easy
- HITL required: Dr. Lewis sets and owns engineering OKRs; Matt Mathison reviews and approves at quarter start; mid-quarter adjustments to scope or targets require Matt Mathison approval; retrospective shared with Matt Mathison

## System Dependencies
- **Reads from:** Company OKRs (Matt Mathison's office); engineering KPI dashboard; sprint metrics (Monday.com)
- **Writes to:** Engineering OKR document (SharePoint/Engineering); Monday.com OKR tracking board
- **HITL Required:** Dr. Lewis sets OKRs; Matt Mathison approves quarterly; mid-quarter scope changes require Matt Mathison approval

## Test Cases
1. **Golden path:** Q3 Engineering OKRs → Objective 1: "Production-ready agent infrastructure" (KR1: 99.5% uptime 8 weeks; KR2: Meeting Intelligence 95% success rate; KR3: MTTR <45 min; KR4: 12/12 runbooks); Objective 2: "Three operational workflows automated"; aligned to company OKRs on AI strategy and efficiency; baselines captured; Matt Mathison approves; mid-quarter check-in Week 7
2. **Edge case:** A business priority shifts mid-quarter (new portfolio acquisition) → mid-quarter OKR adjustment: suspend lower-priority KRs; add KRs for acquisition integration; document the change; Matt Mathison approves; don't maintain OKRs that no longer reflect business priorities
3. **Adversarial:** Engineering team wants OKRs that are 100% achievable to "look good" → 0.7 is the target for a reason; 1.0 every quarter means goals were not ambitious enough; sandbagged OKRs hide capacity that could be applied to harder problems; set genuinely ambitious targets; a 0.7 on hard goals beats a 1.0 on easy ones

## Audit Log
OKR documents retained quarterly. Grade history maintained. Adjustment decisions documented with rationale.

## Deprecation
Retire when engineering team is operating at full maturity with established OKR cadence and a self-managing team that no longer needs skill-guided OKR facilitation.
