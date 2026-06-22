---
name: hr-compensation-benchmarker
description: "Benchmark compensation for roles at MBL Partners portfolio companies. Use when the user says 'compensation benchmark', 'salary benchmark', 'what should we pay', 'market rate', 'salary range', 'pay benchmark', 'competitive compensation', 'market comp', 'comp analysis', 'are we paying market', 'salary survey', 'comp benchmarking', 'pay equity', 'compa-ratio', 'compensation study', 'pay study', 'is this salary competitive', 'how much should this role pay', 'what does a controller make', 'salary data', 'Levels.fyi', 'LinkedIn salary', 'Glassdoor salary', 'MGMA salary', 'pay rate', 'market pay', 'above market', 'below market', 'at market', 'compensation philosophy', 'pay philosophy', 'total rewards', 'salary bands', or 'pay grades'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--role <role-title>] [--level <ic|manager|director|vp>] [--location <az|ut|remote>] [--action <benchmark|review|equity-analysis>]"
---

# HR Compensation Benchmarker

Research and document market compensation for a specific role at a specific entity — providing a data-backed salary range (floor/target/stretch) and identifying any pay equity gaps in the current team. MBL's compensation philosophy: pay at the 50th-75th percentile of market to attract and retain THRIVE-aligned talent without overpaying; we compete on mission and culture at the 25th percentile and lose the candidates we want.

## When to Use
- Defining comp range for a new role (inputs to hr-job-profiler)
- Annual comp review to assess whether bands are still market-competitive
- Pay equity analysis when team composition changes significantly
- A retention conversation where compensation is identified as a risk factor

## Compensation Benchmarking Framework

```
DATA SOURCES BY ROLE TYPE:

  TECHNOLOGY / CORPORATE ROLES (MBL and Column6):
    Levels.fyi: tech-specific; excellent for engineering, product, data roles
    LinkedIn Salary Insights: broad coverage; filter by location and company size
    Glassdoor: self-reported; use for directional validation only
    Payscale: good for small company and AZ/UT local market data
    
  HEALTHCARE ROLES (Allevio):
    MGMA (Medical Group Management Association): gold standard for clinical and admin roles
    AHIMA: healthcare information management roles
    Bureau of Labor Statistics (BLS): national benchmarks; use as floor
    AZ Dept. of Health: AZ-specific healthcare wage data (Maricopa/Pima counties)
    
  OIL & GAS ROLES (HIVE):
    SPE (Society of Petroleum Engineers) salary survey: annual
    Rigzone Salary Survey: upstream roles
    Indeed / LinkedIn: UT-based energy roles; Vernal/Uinta Basin area
    
  GENERAL COMMERCIAL / OPERATIONAL:
    LinkedIn Salary Insights (primary)
    Robert Half Salary Guide: annual; good for finance, admin, ops roles
    Indeed Salary: broad; directional

BENCHMARKING METHODOLOGY:

  1. DEFINE THE BENCHMARK JOB:
     Match role title to benchmark title (often different from internal title)
     Specify: years of experience; individual contributor vs. manager; 
       scope (team size; revenue responsibility; geographic market)
     
  2. LOCATION ADJUSTMENT:
     Phoenix, AZ: 0.85× San Francisco; 0.90× New York; 1.05× national average
     Salt Lake City / Vernal, UT: 0.80× San Francisco; national average for SLC; 
       Uinta Basin (Vernal) is below SLC rates for most roles
     Remote: typically 85-95% of candidate's local market (MBL does not pay SF rates for remote)
     
  3. COMPANY SIZE ADJUSTMENT:
     MBL portfolio companies ($3M-$25M revenue): typically 80-90% of large company rates
     Must-offset with equity or strong mission story at <90% of market
     
  4. THREE-POINT RANGE:
     Floor (25th percentile): bottom of competitive range; risks attrition of average performers
     Target (50th-75th percentile): MBL philosophy anchor; strong competitive
     Stretch (90th percentile): reserved for exceptional candidates; Dr. Lewis explicit approval
     
  5. TOTAL COMPENSATION CHECK:
     Salary alone is not the benchmark — total comp = salary + bonus + equity + benefits
     When comparing to a competitor's offer, compare total comp packages

  FULLY-LOADED COST:
     Year 1: salary × 1.35-1.45× (includes FICA, benefits, recruiting cost amortization)
     Year 2+: salary × 1.25-1.35×
     Budget: always present fully-loaded cost to entity CEO for headcount approval

PAY EQUITY ANALYSIS:
  Run when: 2+ people are doing the same role; team composition has changed
  Calculate compa-ratio: individual salary / midpoint of salary range
  Target: 0.90-1.10 compa-ratio (within 10% of range midpoint)
  Flag: anyone below 0.85 (underpaid risk) or above 1.15 (above range — succession risk)
  Protected class analysis: any significant gap by gender, race, or age = legal risk + EEOC risk
  Dr. Lewis reviews equity analysis before any pay adjustments
```

## Output Format

```markdown
# Compensation Benchmark — [Role Title] | [Entity] | [Location] — [Date]
**Sources used:** [LinkedIn Salary / MGMA / SPE / other] | **Reviewed by:** Dr. Lewis

---

## Benchmark Range

| Level | Annual salary | Notes |
|-------|-------------|-------|
| Floor (25th pctl) | $[X] | Bottom of competitive range |
| Target (50th-75th pctl) | $[X] | MBL philosophy anchor |
| Stretch (90th pctl) | $[X] | Exceptional candidate; Dr. Lewis approval |

**Fully-loaded cost (Year 1):** $[Floor-Stretch × 1.35-1.45]
**Fully-loaded cost (Year 2+):** $[Floor-Stretch × 1.25-1.35]

---

## Market Context
- Geographic adjustment: [AZ / UT / Remote] vs. national: [X%] adjustment applied
- Company size adjustment: [X%] applied (small co. vs. large co. data)
- Total comp note: [salary-only comparison is misleading if equity/bonus differs significantly]

---

## Pay Equity Check (if team context provided)

| Employee | Current salary | Range midpoint | Compa-ratio | Flag |
|----------|--------------|---------------|------------|------|
| [Name — de-identified if needed] | $[X] | $[X] | [X.XX] | Green / Yellow / Red |
```

## Output Contract
- At least 2 data sources are used for every benchmark — a single data source can be biased (Glassdoor skews toward dissatisfied employees; LinkedIn skews toward active job seekers); Dr. Lewis uses at least 2 independent sources for every benchmark and notes any significant discrepancy between them; when sources diverge by >15%, the methodology is documented explicitly and the range reflects the most defensible anchor point
- Location and company size adjustments are always applied — quoting a San Francisco Glassdoor salary for a Phoenix-based role without adjustment overstates the local market by 15-20%; this causes the entity to either overpay or anchor expectations incorrectly with candidates; Dr. Lewis applies both geographic and company size adjustments to every benchmark before presenting the range
- Fully-loaded cost is always presented alongside salary — a CEO who approves a $90K salary hire without seeing the $121K-$130K fully-loaded cost does not have full budget visibility; Dr. Lewis presents fully-loaded Year 1 and Year 2+ cost in every benchmark output; this number goes into the annual budget model
- HITL required: benchmark → Dr. Lewis approves before use in offer or role profile; pay equity analysis → Dr. Lewis reviews before any adjustments; compensation below 0.85 compa-ratio → Dr. Lewis initiates correction discussion with entity CEO; stretch comp (90th percentile) → Dr. Lewis explicit approval; VP+ comp → Matt Mathison approves

## System Dependencies
- **Reads from:** MGMA/SPE/LinkedIn Salary/Levels.fyi (external data sources); hr-salary-band-manager (existing bands for comparison); HRIS (current team comp for equity analysis); hr-job-profiler (role context for benchmarking)
- **Writes to:** Compensation benchmark document (SharePoint → HR → Compensation → [Entity] → [Role] → [Date]); hr-job-profiler (comp range input); hr-salary-band-manager (band update trigger if market has moved); pay equity analysis file; entity CEO budget notification
- **HITL Required:** Benchmark approval → Dr. Lewis; pay equity analysis → Dr. Lewis reviews; below 0.85 compa-ratio → Dr. Lewis + entity CEO; stretch approval → Dr. Lewis; VP+ comp → Matt Mathison

## Test Cases
1. **Golden path:** Allevio needs to benchmark a Care Coordinator (Phoenix, AZ; individual contributor; 2-3 years healthcare experience). Sources: BLS Occupational Employment Data (Phoenix MSA; SOC code 21-1094); MGMA 2024 survey (non-physician admin staff); LinkedIn Salary (AZ; healthcare). Floor: $48K; Target: $54-58K; Stretch: $64K. Fully-loaded Year 1: $65K-$93K. Dr. Lewis approves. Added to role profile.
2. **Edge case:** Two Care Coordinators at Allevio — one hired 3 years ago at $48K (now at $50K with 2% annual raises) and one hired last year at $56K (market rate) → compa-ratio: Employee A: 0.86 (below target range midpoint of $58K); Employee B: 0.97. Dr. Lewis: "Employee A is at risk of attrition due to comp lag. I'm recommending an equity adjustment to $54K at next review cycle — bringing them to 0.93 compa-ratio. This is a $4K cost to the entity. I'll document the rationale and present to Allevio CEO."
3. **Adversarial:** Entity CEO wants to hire a VP of Sales at Column6 at $180K because "that's what they're asking for" — without running a benchmark → Dr. Lewis: "I'll benchmark this before we authorize. VP Sales in digital media, Phoenix market, $50M-$100M revenue scope: target range $130-160K; stretch $175K. At $180K we're above stretch. That might be the right call if this candidate is exceptional, but I want you to make that decision with the data. I'll have the benchmark to you within 24 hours."

## Audit Log
All compensation benchmarks retained (date; sources; range; adjustments applied). Pay equity analysis retained (3 years; EEOC compliance). Stretch compensation approvals retained. VP+ Matt Mathison approvals retained.

## Deprecation
Benchmark sources reviewed annually (MGMA, SPE, LinkedIn surveys are updated annually). Location adjustment factors reviewed annually against published metro market data. Company size adjustment reviewed when entity revenue scale changes materially.
