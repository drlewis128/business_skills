---
name: hr-merit-review-manager
description: "Run the annual merit review and pay increase cycle for MBL Partners portfolio companies. Use when the user says 'merit review', 'merit increase', 'merit cycle', 'annual increase', 'salary increase', 'pay increase', 'raise', 'annual raise', 'cost of living increase', 'COLA', 'performance-based raise', 'merit budget', 'comp cycle', 'compensation cycle', 'annual comp review', 'who gets a raise', 'how much of a raise', 'merit pool', 'merit allocation', 'pay review', 'compensation review', 'equity adjustment', 'equity increase', 'off-cycle increase', 'market adjustment', 'retention adjustment', 'retention raise', or 'salary review'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|hive|column6>] [--year <YYYY>] [--action <plan|model|review|communicate>] [--budget <percent>]"
---

# HR Merit Review Manager

Run the annual merit review cycle — budgeting the merit pool, allocating increases based on performance ratings, applying equity adjustments for compression or market gaps, and communicating increases to employees by January 1 each year. Merit reviews that are delayed, inconsistent, or disconnected from performance signal that pay at MBL entities is not merit-based — this accelerates attrition of top performers.

## When to Use
- Q4 annual merit planning (budget and calibration)
- Allocating merit increases to individual employees
- Identifying equity adjustments needed alongside merit
- Off-cycle increases requested for retention or market realignment

## Merit Review Framework

```
ANNUAL MERIT CYCLE TIMELINE:

  October: Dr. Lewis requests merit budget from entity CEO
  November: Dr. Lewis and CEO calibrate performance ratings (input to merit allocation)
  December 1-15: merit increase modeling complete; increases approved by entity CEO
  December 15: Dr. Lewis and Matt Mathison review if total merit spend >$25K entity
  January 1: new salaries effective; employees notified

MERIT POOL SIZING:
  Merit pool = total eligible payroll × merit increase % budget
  Typical budget: 3-5% of total payroll (market standard; adjust for entity performance)
  Below 3%: signals entity is in financial constraint — CEO communicates this context to team
  Above 5%: Dr. Lewis flag to entity CEO; Matt Mathison notified if total spend increases >$25K vs. prior year
  
  Entity performance context:
    Allevio: GRR ≥91% and EBITDA on-plan → standard merit budget; below → constrained budget with CEO comms
    HIVE: WTI ≥$58 and production on-plan → standard; WTI pressure → constrained budget review
    Column6: agency NRR ≥95% → standard; below → constrained; CEO conversation required

MERIT ALLOCATION METHODOLOGY:
  Performance-driven (not cost-of-living-driven):
    Top performer (Exceeds): 5-7% increase
    Solid performer (Meets): 3-4% increase
    Below expectations (Developing): 0-2% (coaching plan in place)
    Performance concern (Not meeting): 0% (PIP in progress)
    
  Priority modifiers (applied after performance rating):
    Flight risk: additional 1-2% if comp is below 50th percentile and employee is critical
    Above band already: 0-1% max regardless of performance (prevent runaway above-band pay)
    Recent hire (<6 months): typically 0% (insufficient tenure for merit cycle)
    
  Equity adjustments (separate budget line):
    Below band floor after merit: bring to floor minimum (this is not merit — it is equity)
    Compression alerts from hr-salary-band-manager: address in same cycle as merit
    Equity adjustments are documented separately from merit for reporting transparency

CALIBRATION:
  Entity CEO and Dr. Lewis calibrate performance ratings before merit amounts are assigned
  Forced distribution NOT required — but if 80%+ of employees are "Exceeds," challenge the data
  One calibration meeting (60 min) per entity; Dr. Lewis facilitates
  
COMMUNICATION:
  Managers deliver merit increase conversations to direct reports (not HR)
  Dr. Lewis coaches managers on how to have the conversation before they deliver it
  Key message: "Your increase reflects your performance this year. Here's what drove it."
  No apologies for the amount — it is what it is; own it and explain it
  Employees who receive 0% increase: manager must have a specific, documented performance conversation
  
OFF-CYCLE INCREASES:
  Retention: Dr. Lewis + entity CEO approve; specific retention risk documented
  Market adjustment: triggered by hr-compensation-benchmarker showing >10% market gap; Dr. Lewis approves
  Counter-offer: Dr. Lewis and entity CEO evaluate; counter-offer generally discouraged
    (a person who accepted a counter-offer tends to leave within 12 months anyway)
```

## Output Format

```markdown
# Merit Review — [Entity] — [Year]
**Merit pool:** $[X] ([X%] of eligible payroll) | **Approved by:** Entity CEO + Dr. Lewis
**Effective:** January 1, [Year]

---

## Merit Allocation Summary

| Employee | Level | Current salary | Rating | Merit % | New salary | Equity adj. | Total change |
|----------|-------|--------------|--------|---------|-----------|-------------|-------------|
| [Name] | L3 | $[X] | Exceeds | 6% | $[X] | $0 | $[X] |
| [Name] | L2 | $[X] | Meets | 3% | $[X] | +$[X] (equity) | $[X] |

---

## Merit Pool Reconciliation

| Item | Amount |
|------|--------|
| Total merit increase cost (annualized) | $[X] |
| Total equity adjustment cost (annualized) | $[X] |
| **Total compensation change** | **$[X]** |
| As % of prior year payroll | [X%] |

---

## 0% Increase Recipients
- [Employee Name]: [documented performance context — specific reason; coaching plan in place / PIP]
```

## Output Contract
- Merit increases are communicated before they are effective — an employee who sees a higher salary on their January 1 paycheck without a prior conversation does not understand why; a manager who never has a merit conversation leaves the employee to guess whether the raise was meaningful or arbitrary; Dr. Lewis requires all merit conversations to happen in December (before effective date) using the structure prepared in this skill
- Zero-percent increases require a documented performance conversation — a 0% merit increase without a performance conversation is confusing and demoralizing; the employee either thinks it was a mistake or believes pay at this entity is not merit-based; a 0% increase is always accompanied by a specific, documented performance conversation that explains what needs to change and what the path to a merit increase looks like next year
- Off-cycle counter-offers require documented retention risk — "they have another offer" is not sufficient documentation; the documented case must include: why this employee is critical to retain; what their flight risk signal is; how this increase aligns with their band; and Dr. Lewis + entity CEO sign-off; the entity cannot afford to create a culture where every employee expects a raise only when they threaten to leave
- HITL required: merit pool budget → entity CEO approves; total spend >$25K increase vs. prior year → Matt Mathison notified; merit calibration → Dr. Lewis + entity CEO calibration meeting; individual increases → entity CEO approves final allocation; 0% recipients → Dr. Lewis + manager conversation protocol; off-cycle increases → Dr. Lewis + entity CEO; counter-offer → Dr. Lewis + CEO evaluate

## System Dependencies
- **Reads from:** hr-performance-review-cycle (ratings input); hr-salary-band-manager (band positions; compa-ratios; compression alerts); hr-compensation-benchmarker (market data for equity adjustments); HRIS (eligible payroll; tenure; recent hire flags); entity P&L (QuickBooks — merit budget vs. entity EBITDA)
- **Writes to:** Merit review model (SharePoint → HR → Merit → [Entity] → [Year]); HRIS (new salary effective date); payroll (QuickBooks — salary update); merit communication guide for managers; Matt Mathison notification (>$25K increase)
- **HITL Required:** Merit pool → entity CEO approves; >$25K total increase → Matt Mathison notified; calibration → Dr. Lewis + CEO; final allocation → CEO approves; 0% → manager conversation; off-cycle → Dr. Lewis + CEO; counter-offer → Dr. Lewis + CEO

## Test Cases
1. **Golden path:** Allevio merit cycle. 8 eligible employees. Merit budget: 4% of payroll ($380K eligible = $15,200 pool). Calibration: 2 Exceeds (5.5% each); 5 Meets (3% each); 1 Developing (0% + coaching plan). Plus equity: 1 employee below band floor after merit — $2,200 equity adj. Total spend: $17,400. Entity CEO approves. Managers deliver conversations by December 20. Effective January 1.
2. **Edge case:** HIVE enters a WTI pressure period ($57/bbl); HIVE CEO requests merit cycle to proceed at 1.5% instead of 3% → Dr. Lewis: "Understood. At 1.5% the merit pool is $5,400 (vs. $10,800 at 3%). I'll model the allocation at 1.5% and flag that 2 employees who are Exceeds performers will receive below-market increases this cycle. I recommend the CEO has individual retention conversations with both in January to acknowledge the constraint. I'll draft talking points."
3. **Adversarial:** A manager wants to give a team member the highest merit increase because "they're my most loyal person" without performance documentation → Dr. Lewis: "I understand the intent. To allocate from the Exceeds tier, I need the performance documentation from the review cycle. 'Loyal' is a relationship quality, not a performance outcome. If they delivered strong performance this year, let's document what they achieved and rate them Exceeds accordingly. Then the merit allocation follows. I can't allocate from the top tier without that documentation — it creates pay equity exposure."

## Audit Log
All merit models retained (date; pool size; allocation; CEO approval). Calibration meeting records retained. 0% recipient documentation retained. Off-cycle increase approvals retained. Matt Mathison notifications retained. Merit communication records retained.

## Deprecation
Merit cycle cadence and budget range reviewed annually by Dr. Lewis and entity CEO. Entity performance context thresholds reviewed when north star metric targets change (Allevio GRR, HIVE WTI, Column6 NRR).
