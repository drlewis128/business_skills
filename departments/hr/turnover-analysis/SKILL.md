---
name: turnover-analysis
description: "Analyze employee turnover to identify trends, costs, and root causes. Use when the user says 'turnover analysis', 'employee turnover', 'attrition report', 'why are people leaving', 'turnover rate', 'retention analysis', 'attrition analysis', or 'what is our turnover'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <YYYY-MM to YYYY-MM>] [--segment <department|tenure|role-level>]"
---

# Turnover Analysis

Analyze employee turnover patterns, calculate the true cost of attrition, and surface root causes. High turnover is one of the most expensive and preventable operational problems.

## When to Use
- Quarterly retention review
- When turnover is spiking in a department
- Before requesting headcount (high turnover may be the real problem)
- After a wave of exits ("why did 3 people leave this quarter?")
- Annual planning (project replacement costs into budget)

## Turnover Metrics

### Key Rates

```
Turnover Rate = (Separations in Period / Avg Headcount in Period) × 100

Voluntary Turnover Rate = (Voluntary separations / Avg HC) × 100
Involuntary Turnover Rate = (Involuntary separations / Avg HC) × 100

Regrettable Turnover Rate = (Regrettable departures / Avg HC) × 100
```

**Industry benchmarks (general):**
- Overall: 10-15% annually is typical; < 10% is strong
- Regrettable: anything > 5% annually warrants investigation

### Turnover Cost Estimate
```
Cost per voluntary departure (typical knowledge worker) =
  50-200% of annual salary

Components:
  - Separation costs (HR admin, severance if applicable): 5-10%
  - Vacancy cost (lost productivity, overtime): 10-20%
  - Recruiting cost (job boards, recruiter fee, management time): 15-30%
  - Onboarding and ramp time (50-75% productivity for 3-6 months): 25-50%
  - Lost institutional knowledge: hard to quantify; often 20-50%
```

## Turnover Segmentation

Analyze by:
- **Department** — Which team has the highest turnover?
- **Tenure** — Are new hires leaving (< 90 days? < 1 year?)
- **Role level** — Individual contributor vs. manager vs. senior?
- **Voluntary vs. involuntary** — Different problems, different solutions
- **Regrettable vs. non-regrettable** — Did we lose top performers or manage out poor performers?
- **Manager** — Is one manager driving disproportionate departures?

## Root Cause Analysis Framework

### Flight Risk Signals
- Increase in PTO usage
- Disengagement in reviews / 1:1s
- Job market activity (LinkedIn changes)
- Skipped meetings, reduced communication
- Peer departures in the same team

### Common Root Causes
| Root Cause | Signal |
|-----------|--------|
| Manager issues | Turnover concentrated under one manager |
| Compensation | Exits citing "better offer" or market comparison |
| Growth / career | Mid-tenure exits (1-3 years) citing lack of advancement |
| Culture / values | Exit interviews cite culture or values misalignment |
| Overwork / burnout | Short-tenure exits; high-output employees leaving |
| Onboarding failure | < 90-day exits — poor first experience |

## Output Format

```markdown
# Turnover Analysis — <Entity>
**Period:** <period> | **Date:** <date>

## Key Metrics

| Metric | This Period | Prior Period | Benchmark | Status |
|--------|-----------|------------|----------|--------|
| Overall turnover | X% | X% | 10-15% | 🟢/🟡/🔴 |
| Voluntary turnover | X% | X% | | |
| Regrettable turnover | X% | X% | < 5% | |
| Avg tenure at exit | X months | X months | | |

## Annualized Turnover Cost
**Departures this period:** <N> voluntary
**Avg salary of departures:** $<N>
**Estimated cost per departure:** $<N> (100% of salary)
**Total estimated turnover cost:** **$<N>**

## Turnover by Department

| Department | Headcount | Departures | Rate | vs. Company Avg |
|-----------|----------|-----------|------|----------------|
| <Dept> | <N> | <N> | X% | ⬆️ Above avg |
| <Dept> | <N> | <N> | X% | ⬇️ Below avg |

## Patterns and Root Causes

### Pattern 1: <Name>
<Finding with evidence — e.g., "3 of 4 departures this quarter came from <manager>'s team">
**Likely cause:** <root cause>
**Recommended action:** <specific action>

## Early Warning — Flight Risks
<If any data is available on engagement or tenure — current employees who match the departure profile>

## Recommendations
1. <Priority action — with owner and timeline>
```

## Output Contract
- Annualized cost always calculated — makes turnover concrete for financial decision-making
- Manager-level concentration always analyzed — high turnover under one manager is an HR investigation item
- Regrettable vs. non-regrettable always separated — losing poor performers is not a problem
- HITL required before manager-specific findings are shared beyond HR and Dr. Lewis

## System Dependencies
- **Reads from:** HRIS termination data, exit interview data (provided)
- **Writes to:** Nothing (analysis report for HITL review)
- **HITL Required:** Dr. Lewis and HR lead review before sharing manager-specific turnover data

## Test Cases
1. **Golden path:** Quarterly analysis with 5 departures → cost estimate, department breakdown, 2 patterns identified with root cause hypotheses
2. **Edge case:** All departures in one quarter are involuntary (managed out) → surfaces as positive (improving team quality), notes to ensure PIPs were in place prior to all exits
3. **Adversarial:** Request to exclude regrettable departures from report → refuses, includes all categories with clear labels; omitting regrettable turnover hides the real problem

## Audit Log
Turnover analysis reports retained by entity and period. Departure records retained per FLSA/I-9 retention requirements.

## Deprecation
Retire when HRIS provides automated attrition dashboards with cohort analysis and cost modeling.
