---
name: hr-attrition-analyzer
description: "Analyze employee attrition patterns at MBL Partners portfolio companies. Use when the user says 'attrition analysis', 'attrition report', 'turnover analysis', 'why are people leaving', 'departure patterns', 'attrition patterns', 'attrition root cause', 'attrition forecast', 'predict attrition', 'attrition trend', 'who is leaving', 'flight risk analysis', 'retention problem', 'retention analysis', 'exit pattern', 'what is causing turnover', 'attrition spike', 'high turnover', 'unplanned turnover', 'regrettable attrition', 'voluntary attrition', 'involuntary attrition', 'departure cohort', 'when are people leaving', 'how long before people leave', 'new hire turnover', '90-day turnover', or 'first-year attrition'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--period <ytd|rolling-12|quarter>] [--action <analyze|forecast|root-cause|cohort>]"
---

# HR Attrition Analyzer

Analyze employee attrition patterns — calculating rates, classifying departures, identifying root causes from exit interview data, and building forecasts that inform headcount planning. Attrition analysis converts a lagging indicator (people already left) into a leading action (what must change to retain the next wave). The goal is never to produce a report — it is to produce a decision.

## When to Use
- Voluntary attrition rate is above threshold (>15% annualized)
- A manager or department shows higher attrition than the entity average
- Entity CEO or Matt Mathison asks why turnover is elevated
- Annual planning needs an attrition forecast for headcount modeling

## Attrition Analysis Framework

```
ATTRITION CALCULATION:

  Monthly rate: (departures in month / avg headcount) × 100
  Annualized from monthly: monthly rate × 12
  Rolling 12-month: (total departures in 12 months / avg headcount in 12 months) × 100
  Avg headcount: (beginning headcount + ending headcount) / 2
  
  CLASSIFICATION (every departure classified):
    Voluntary: employee-initiated
    Involuntary: employer-initiated (termination; layoff)
    Regrettable: would have preferred to retain (from hr-exit-interview classification)
    Non-regrettable: performance-related; mutual separation; retirement; life change
    
  WHY CLASSIFICATION MATTERS:
    30% total attrition = crisis
    30% attrition = 5% regrettable + 25% non-regrettable (performance exits) = healthy culling
    The same number tells two completely different stories
    
COHORT ANALYSIS:

  TENURE COHORT:
    When are people leaving? (<90 days; 90-180 days; 6-12 months; 1-3 years; 3+ years)
    <90 days attrition: onboarding/hiring problem (bad hire or bad experience)
    6-12 months: disillusionment (reality didn't match recruitment pitch; role design issue)
    1-2 years: stagnation (no growth; comp fell behind market; management issue)
    3+ years: succession failure (no path forward; key moment of being passed over)
    
  MANAGER COHORT:
    Is attrition concentrated under one manager? (3+ departures in 90 days from same manager)
    Manager-correlated attrition = most important signal Dr. Lewis acts on
    
  FUNCTION COHORT:
    Is attrition concentrated in one department?
    
  ENTITY COHORT:
    Is one portfolio company above threshold while others are normal?

ROOT CAUSE ANALYSIS:
  Source 1: hr-exit-interview reason codes (A-H)
    A = Compensation | B = Growth | C = Management | D = Culture | E = Life/Personal |
    F = External opportunity | G = Workload | H = Role fit
  Source 2: hr-engagement-analyzer (correlation between low engagement and subsequent attrition)
  Source 3: hr-compensation-benchmarker (was compensation a contributing factor?)
  Source 4: hr-high-performer-identifier (who left — talent map position?)
  
  PATTERN FLAGS (trigger immediate action):
    2+ departures citing Management reason code from same manager in 90 days → 
      Dr. Lewis conversation with entity CEO; manager coaching initiated
    3+ departures citing Compensation in 180 days → comp band review (hr-salary-band-manager)
    3+ consecutive departures from same team → culture signal; engagement pulse check
    First-year attrition >25% → onboarding program review (hr-onboarding-planner)
    
ATTRITION FORECAST:
  Input: current FTE × trailing 12-month attrition rate by classification
  Output: expected departures per quarter (for headcount planning)
  Adjust for: known departures (announced); known retention risks (from hr-high-performer-identifier)
  Use in: hr-headcount-planner (replacement req cadence)
  
COST OF ATTRITION (quantify for entity CEO):
  Replacement cost per role: 50-75% of annual salary for individual contributors; 
    100-150% for managers; 200%+ for directors and above
  Components: time to fill × revenue impact per unfilled day + recruiting cost + ramp time
  Present total cost of voluntary regrettable attrition annually to entity CEO and Matt Mathison
  
  Example: 3 voluntary regrettable departures at Allevio (2 care coordinators + 1 director)
    Coordinator: $58K salary × 60% = $34,800 × 2 = $69,600
    Director: $110K × 150% = $165,000
    Total cost of 3 departures: $234,600
    "We spent $234,600 this year on attrition we could have partly prevented."
```

## Output Format

```markdown
# Attrition Analysis — [Entity] — [Period]
**Prepared by:** Dr. Lewis | **Period:** [Rolling 12 months / YTD / Quarter]

---

## Attrition Summary

| Metric | This period | Prior period | Target | Status |
|--------|------------|-------------|--------|--------|
| Total departures | X | X | — | — |
| Voluntary | X (X%) | | | |
| Involuntary | X (X%) | | | |
| Regrettable | X (X%) | | | |
| Annualized rate | X% | X% | <15% | ✅/⚠️/🔴 |

---

## Cohort Analysis

**By tenure at departure:**
| Tenure bracket | Departures | % of total | Signal |
|---------------|-----------|-----------|--------|
| <90 days | | | |
| 90d-12mo | | | |
| 1-3 years | | | |
| 3+ years | | | |

**Manager concentration:** [Any manager with 2+ departures in 90 days?]
**Function concentration:** [Any department above entity average?]

---

## Root Cause Summary (from exit interviews)
| Reason code | Count | % | Trend |
|------------|-------|---|-------|
| A — Compensation | | | |
| B — Growth | | | |
| C — Management | | | |
...

---

## Cost of Regrettable Attrition
**This period:** $[X] | **Annualized:** $[X]
**Calculation:** [Role count × replacement cost factor]

---

## Attrition Forecast (next 12 months)
**Expected departures:** [X] (based on trailing rate × current FTE)
**Known risks:** [High performer flight risks from talent review]
**Required replacement reqs:** [X] (feeds hr-headcount-planner)

---

## Actions Required
1. [Pattern flag → action → owner → due date]
```

## Output Contract
- Attrition is classified completely before analysis — an analysis that uses total departures without classifying voluntary/involuntary/regrettable/non-regrettable will produce misleading conclusions; Dr. Lewis requires complete classification of every departure before building any attrition analysis; if exit interview data is missing for a departure, Dr. Lewis flags it as "reason unknown" (which is itself a data quality signal — departure happened without exit interview); the classification is always done before the rate calculation is interpreted
- Manager-correlated attrition triggers action within 2 weeks — a manager who has lost 2+ employees in 90 days is a significant risk that cannot wait for the quarterly HR review; Dr. Lewis flags manager-correlated attrition immediately and brings it to the entity CEO within 5 business days; the action is a conversation with the entity CEO about whether the manager pattern is the cause and what intervention is appropriate (coaching; reassignment; team structure change)
- Cost of attrition is quantified in dollars, not just rates — entity CEOs respond to dollar amounts, not percentages; a 20% attrition rate is abstract; "$340,000 in replacement costs this year" is concrete; Dr. Lewis presents the cost of voluntary regrettable attrition annually to every entity CEO and in the Matt Mathison portfolio HR summary; this converts the attrition conversation from an HR metric to a business investment decision
- HITL required: attrition analysis → Dr. Lewis prepares; entity CEO review; manager-correlated attrition → Dr. Lewis + entity CEO within 5 business days; compensation pattern flag → comp band review with Dr. Lewis + entity CEO; culture pattern flag → engagement pulse within 2 weeks; cost of attrition → Dr. Lewis + entity CEO quarterly; Matt Mathison portfolio summary → Dr. Lewis compiles quarterly

## System Dependencies
- **Reads from:** hr-exit-interview (reason codes; regrettable classification); hr-engagement-analyzer (engagement → attrition correlation); hr-high-performer-identifier (who left — talent map position); hr-compensation-benchmarker (comp gap correlation); hr-performance-review-cycle (performance history of departed employees); HRIS (departure dates; tenure; role; manager)
- **Writes to:** Attrition analysis report (SharePoint → HR → Attrition → [Entity] → [Period]); hr-headcount-planner (forecast input); entity CEO action plan; Matt Mathison portfolio HR summary; manager coaching flag (to hr-coaching-guide if manager-correlated pattern); engagement pulse trigger (to hr-engagement-analyzer if culture pattern)
- **HITL Required:** Analysis preparation → Dr. Lewis; entity CEO review; manager pattern → Dr. Lewis + CEO within 5 days; compensation pattern → comp review; culture pattern → engagement pulse; cost presentation → Dr. Lewis + CEO quarterly; portfolio summary → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** Column6 rolling 12-month analysis. 3 departures: 1 voluntary regrettable (Senior AM; 14 months tenure; reason code B = Growth + A = Compensation); 1 voluntary non-regrettable (IC; 6 months; reason F = External opportunity — left for Google); 1 involuntary (failed PIP; 8 months). Annualized rate: 3/9 avg FTE = 33% — high. But regrettable rate: 1/9 = 11% — on target. Key insight: attrition looks alarming but the bulk is non-regrettable. Action: comp review for remaining AMs (reason code A pattern from 1 exit; monitor); check growth opportunities for high performers.
2. **Edge case:** Entity has had zero attrition all year → Dr. Lewis: "Zero attrition looks great but deserves a brief review. Is this a healthy, highly engaged team? Or are people afraid to leave? I'll cross-reference with eNPS — if eNPS is high and attrition is zero, we're in great shape. If eNPS is low and attrition is zero, people may be staying despite unhappiness, which is a flight risk bomb waiting to go off. I'll also check tenure distribution — if the team is locked at 2-3 years tenure with no recent promotions, we may be building up to a wave of simultaneous departures."
3. **Adversarial:** Entity CEO attributes all attrition to "they just weren't THRIVE aligned" without reviewing exit interview data → Dr. Lewis: "That may be true for some departures, but I want us to look at the data before settling on that narrative. The exit interview codes for the last 4 departures: Compensation (2 times), Management (1 time), Role fit (1 time). The Management code correlates with departures from [specific team]. Before we conclude it's a THRIVE issue, I'd like us to look at what 'Management' code means in context — it may be a specific manager's behavior, which is actionable. If it is a THRIVE issue, that's also actionable, but differently."

## Audit Log
Attrition analysis records retained 3 years (trend analysis). Classification records retained. Manager correlation flags retained. Cost of attrition calculations retained. Forecast accuracy records retained (actual vs. predicted). Matt Mathison portfolio summary records retained.

## Deprecation
Replacement cost factors reviewed annually. Attrition threshold values (15% regrettable) reviewed when industry benchmarks change. Root cause code scheme reviewed annually with hr-exit-interview updates.
