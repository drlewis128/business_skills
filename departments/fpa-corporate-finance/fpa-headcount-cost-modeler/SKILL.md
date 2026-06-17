---
name: fpa-headcount-cost-modeler
description: "Model headcount plans and fully-loaded people costs for budgeting and planning. Use when the user says 'headcount model', 'headcount plan', 'people cost model', 'fully loaded cost', 'fully-loaded salary', 'model the hire', 'hiring cost', 'FTE cost', 'workforce cost', 'labor cost model', 'payroll model', 'headcount budget', 'plan headcount', 'hiring plan model', 'people budget', 'salary model', 'compensation planning', 'total cost of employment', 'cost per head', 'model the team cost', or 'headcount forecast'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--role <title>] [--salary <$>] [--start-date <YYYY-MM>] [--action <model|plan|compare>]"
---

# Headcount Cost Modeler

Model headcount plans and fully-loaded people costs for MBL portfolio companies — accurately quantifying the true cost of employment (not just base salary) so hiring decisions are made with correct financial information. Headcount is typically the largest single expense line for portfolio companies; an undermodeled hiring plan (one that ignores benefits, taxes, recruiting, and equipment costs) will produce a budget that's 25-35% too low on people costs. Dr. Lewis models every hire before it enters the budget, applies the correct fully-loaded multipliers, and pro-rates costs by start date.

## When to Use
- Annual budget process — headcount plan is built before the budget is finalized
- Any new hire being considered above the approved headcount plan
- CEO proposes adding headcount — requires an accurate cost model before approval
- FP&A review: does the current headcount cost match what was in the budget?
- Exit preparation: buyers will model the headcount cost structure independently; Dr. Lewis ensures the company's own model is accurate

## Headcount Cost Modeling Framework

```
Fully-loaded cost components:

  1. BASE SALARY:
     The compensation agreed with the employee or the target salary for the role
     Source: Offer letter (for new hires); compensation database (for existing employees)
     
  2. PAYROLL TAXES (employer-side):
     Social Security: 6.2% of wages up to $168,600 (2024 wage base; adjust for current year)
     Medicare: 1.45% of all wages (no cap); additional 0.9% for wages >$200K
     FUTA (Federal Unemployment): 6.0% of first $7,000 = $420/employee/year (usually effective 0.6% after FUTA credit)
     SUTA (State Unemployment): Varies by state; AZ = ~2.0% on first $8,000 = ~$160/year; UT = ~1.1% on first $44,800; NY = varies
     Total employer payroll taxes: typically 8-10% of base salary for most MBL employees
     
  3. BENEFITS:
     Health insurance (employer contribution): 
       MBL and Allevio: estimate $650-850/month per employee; family coverage $1,500-1,800/month
       Healthcare MSO context: Allevio may offer richer benefits to attract clinical staff
     Dental / Vision: $40-80/month per employee
     Life insurance: $10-30/month
     401(k) match: 3-6% of salary (if offered); some portfolio companies offer no match in early stage
     PTO payout risk: Not a direct cost, but an accrual; model PTO accrual if significant
     Total benefits: Typically $8,000-$15,000/year per employee; higher for clinical staff
     
  4. EQUIPMENT AND SETUP (one-time at hire):
     Laptop/computer: $1,000-$2,500
     Monitors, peripherals: $300-$800
     Software licenses: $200-$500/year (ongoing)
     Desk/office setup (if not remote): $300-$1,000 one-time
     Total one-time setup: $1,500-$3,800
     
  5. RECRUITING COST (one-time):
     Internal sourcing only: Dr. Lewis time at ~$150/hour × [hours]
     Recruiter/agency fee: Typically 15-20% of first-year salary for specialized roles
     Job posting costs: $200-$500
     Background check: $50-$150
     Total recruiting: $0 (internal) to 20% of salary
     
  FULLY-LOADED MULTIPLIER (rule of thumb):
     Without recruiting fee: Base × 1.20 to 1.30 (includes taxes + benefits)
     With recruiting fee: Base × 1.35 to 1.45 in Year 1 (one-time recruiting cost absorbed)
     Clinical staff (Allevio): Base × 1.25-1.35 (higher benefits package)
     
  PRO-RATED ANNUAL COST by start date:
     Start January 1: 100% of annual cost in Year 1
     Start April 1: 75% of annual cost in Year 1
     Start July 1: 50% of annual cost in Year 1
     Start October 1: 25% of annual cost in Year 1
     Formula: Annual cost × (Months remaining in fiscal year) ÷ 12
     
  HEADCOUNT PLAN FORMAT (portfolio-level):
     For each entity, maintain a headcount roster:
     | Role | Name (or TBD) | Base Salary | Start Date | Fully-Loaded Annual | Pro-Rated Year 1 |
     |------|--------------|------------|------------|---------------------|-----------------|
     
  BUDGET COMPARISON (each period):
     Actual headcount vs. budgeted headcount (count and cost)
     New hires: Did they start on schedule? Is the pro-rated cost correct?
     Departures: Was the cost removed from future periods in the forecast?
     Holds: Approved requisitions that are on hold (remove from current forecast; flag for risk)
     
  CLINICAL STAFF CONSIDERATIONS (ALLEVIO):
     Clinical staff require credentialing (2-4 week delay between hire date and billable start)
     Productivity ramp: New clinicians may not be at full capacity for 60-90 days
     Model the lag: Cost starts at hire; revenue contribution starts at credentialing completion
     Credentialing cost: $200-$500 in fees; up to 40 hours of admin time
```

## Output Format

```markdown
# Headcount Cost Model — [Entity] [Period / Decision]
**Prepared by:** Dr. Lewis | **Date:** [Date]
**CEO reviewed:** ✅/⚠️ | **Matt Mathison approved:** ✅/⚠️ (if above plan)

---

## Single Hire Analysis

| Component | Amount | Calculation |
|-----------|--------|-------------|
| Base salary | $[X],000 | Offer letter / target range |
| Payroll taxes (employer) | $[X],000 | [X]% of base (SS, Medicare, FUTA, SUTA) |
| Health insurance (employer) | $[X],000 | $[X]/mo × 12 |
| Dental/Vision/Life | $[X],000 | $[X]/mo × 12 |
| 401(k) match | $[X],000 | [X]% × base |
| Software licenses | $[X],000 | [Annual recurring] |
| Equipment (Year 1 only) | $[X],000 | [Laptop + peripherals] |
| Recruiting fee (Year 1 only) | $[X],000 | [X]% of base / Internal = $0 |
| **Annual fully-loaded cost** | **$[X],000** | **[X.X]× base** |
| **Pro-rated Year 1 cost** | **$[X],000** | **Start [Month]; [N]/12 of annual** |
| **Year 2+ annual cost** | **$[X],000** | **No recruiting fee; no setup costs** |

**Clinical note (if applicable):** [N]-week credentialing lag; revenue contribution begins [Month]; Year 1 productivity at [X]% of full run rate.

---

## Portfolio Headcount Plan

| Entity | Role | Type | Base | FLM Annual | Start | Yr 1 Cost |
|--------|------|------|------|-----------|-------|----------|
| Allevio | Clinician | New hire | $[X]K | $[X]K | [Month] | $[X]K |
| Allevio | Billing Coordinator | New hire | $[X]K | $[X]K | [Month] | $[X]K |
| HIVE | — | No new hires | — | — | — | — |
| Column6 | Account Manager | New hire | $[X]K | $[X]K | [Month] | $[X]K |
| MBL HoldCo | — | No new hires | — | — | — | — |
| **Total new hires** | | **[N]** | **$[X]K** | **$[X]K** | | **$[X]K** |

---

## Budget Variance — Actual vs. Plan

| Entity | Budgeted FTEs | Actual FTEs | Budgeted Cost | Actual Cost | Variance |
|--------|--------------|-------------|--------------|------------|---------|
| Allevio | [N] | [N] | $[X]K | $[X]K | +/−$[X]K |
| HIVE | [N] | [N] | $[X]K | $[X]K | +/−$[X]K |
| Column6 | [N] | [N] | $[X]K | $[X]K | +/−$[X]K |
| MBL HoldCo | [N] | [N] | $[X]K | $[X]K | +/−$[X]K |
| **Total** | **[N]** | **[N]** | **$[X]K** | **$[X]K** | **+/−$[X]K** |

**Explanation of variance:** [Specific: delayed start date, approved backfill, unplanned departure]
```

## Output Contract
- Never model only base salary — a hiring decision that is evaluated on base salary alone will produce a budget that understates the actual cost by 20-35%; Dr. Lewis refuses to present headcount analysis using only base salary; every hire is modeled at the fully-loaded cost; when a CEO says "we want to hire someone at $75K", Dr. Lewis responds with the fully-loaded cost ($93K-$100K) so the decision is made correctly; if a CEO genuinely cannot afford the fully-loaded cost, they cannot afford the hire — better to know before the offer is extended
- Pro-rate by start date — a hire starting October 1 costs 25% of the annual fully-loaded cost in the current fiscal year; a budget that loads the full annual cost regardless of start date will overstate headcount expense in the early periods and understate it in future periods; Dr. Lewis pro-rates every hire by the expected start date and builds the start date assumption into the model explicitly; if the start date changes (delayed offer acceptance, delayed start), the model is updated
- Track actual vs. plan for every headcount line — the headcount plan is not a "set it and forget it" — it's a living plan that is compared to actuals monthly; delayed starts (budgeted for July, actual September) are favorable variances but indicate the revenue ramp is also delayed; unplanned attrition is an unfavorable variance that frees up headcount budget but creates a delivery risk; Dr. Lewis tracks every open requisition, every new hire, and every departure against the headcount plan and explains variances in the monthly financial package
- HITL required: Dr. Lewis models every hire above plan before it is approved; new hires within the approved headcount plan are approved by the CEO; new hires above plan require CEO + Dr. Lewis approval (per approval matrix: <$75K salary = CEO; $75K-$150K = CEO + Dr. Lewis; >$150K = CEO + Dr. Lewis + Matt Mathison); Dr. Lewis does not approve a hire without the fully-loaded cost model in hand; the model is retained as documentation

## System Dependencies
- **Reads from:** Payroll records (Gusto/ADP/Paychex — actual headcount and salaries); QuickBooks P&L (payroll expense actuals); annual budget (budgeted headcount plan); offer letters (for new hires); state payroll tax rates (HR systems; updated annually for SUTA rate changes); benefits cost data (insurance carrier invoices); current headcount roster (HR system)
- **Writes to:** Headcount cost model (SharePoint/Finance/<Company>/Budget/HeadcountPlan/[Year].xlsx); annual budget (headcount section); rolling forecast (when actual vs. plan diverges); monthly variance report (headcount variance explanation); capital allocation memo (when headcount addition requires capital approval); payroll budget in QuickBooks
- **HITL Required:** Dr. Lewis models every hire; CEO approves within-plan hires; CEO + Dr. Lewis approve above-plan hires up to $150K; CEO + Dr. Lewis + Matt Mathison approve above-plan hires >$150K; no offer extended without cost model and proper approval

## Test Cases
1. **Golden path:** Allevio wants to hire a clinical coordinator at $52,000 starting July 1 → Dr. Lewis models: base $52K; payroll taxes $4.8K (SS 6.2% + Medicare 1.45% + FUTA $420 + SUTA AZ $160 = $4.8K); health insurance $8,400 (employer portion $700/mo); dental/vision/life $600; 401k match 0% (not yet offered); software/licensing $300; equipment $1,500; recruiting: internal only = $0 (Dr. Lewis estimated 8 hours at $150 = $1,200 but not charged to entity); annual fully-loaded cost $67,600 (1.30× base); pro-rated July 1 start: $67,600 × 6/12 = $33,800 Year 1 cost; within budget (approved in AOP); CEO approves; offer extended; Dr. Lewis updates the headcount plan and rolling forecast
2. **Edge case:** A clinical nurse practitioner at Allevio gives 2 weeks' notice — how does this affect the headcount model? → Dr. Lewis takes 3 actions: (1) removes the departing NP salary from the forecast starting Month 3 (after departure); (2) adds a backfill assumption: 8-week recruiting timeline + 2-4 week credentialing = revenue gap of 3 months; (3) adds a temp/locum clinician cost to cover the gap ($180/hour × 20 hours/week × 8 weeks = $28,800 temp cost during the gap); updates the rolling forecast: headcount cost favorable for 8 weeks (no NP salary), then temporary replacement cost $28,800, then new NP at full cost after hire; notifies CEO and Matt Mathison: "NP departure will create a revenue gap during recruiting and credentialing (~3 months). We'll use locum coverage at an estimated cost of $28.8K. I recommend we accelerate the recruiting timeline to minimize locum exposure."
3. **Adversarial:** The Allevio CEO presents a headcount budget to Matt Mathison using only base salaries (claiming a total headcount cost of $680K) → Dr. Lewis intercepts before the meeting: "The $680K figure is base salary only. Fully-loaded cost for this headcount plan is $882K — a $202K difference. I recommend we use the $882K number in the board package; presenting $680K as 'headcount cost' will understate our expense structure and create a budget variance issue in Q2. If Matt Mathison asks about the headcount cost trend, I want us to be using the right baseline." Dr. Lewis revises the board package headcount line to $882K before distribution; the CEO concurs

## Audit Log
All headcount models retained (by hire and by annual plan version). Approval records retained for all above-plan hires. Actual vs. plan comparison retained monthly. Departure and backfill records retained. Recruiting cost documentation retained. Year-end actual headcount and cost reconciled to plan and retained.

## Deprecation
Retire when each portfolio company has an HR director and CFO who own the headcount planning and cost modeling function — with Dr. Lewis reviewing the portfolio-level headcount cost before the board package is delivered.
