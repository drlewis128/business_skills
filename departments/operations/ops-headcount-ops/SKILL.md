---
name: ops-headcount-ops
description: "Plan and manage operational headcount across MBL Partners portfolio. Use when the user says 'headcount', 'headcount planning', 'headcount plan', 'headcount management', 'headcount review', 'headcount budget', 'headcount tracker', 'headcount request', 'hire request', 'new hire', 'open role', 'open position', 'open headcount', 'backfill', 'backfill request', 'add headcount', 'headcount reduction', 'layoff', 'RIF', 'reduction in force', 'FTE', 'full-time equivalent', 'staff planning', 'staffing plan', 'workforce plan', 'workforce planning', 'employee count', 'team size', 'team growth', 'capacity planning for people', 'hiring plan', 'annual hiring plan', 'recruiting plan', 'recruiter', 'compensation planning', 'total comp', 'salary budget', 'payroll planning', 'people ops', 'people operations', 'HRIS', 'employee data', 'Allevio headcount', 'HIVE headcount', 'Column6 headcount', 'MBL headcount', or 'portfolio headcount'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--action <plan|review|approve|track|reduce|report>] [--role <specific-role>] [--type <new|backfill|contract|reduction>] [--period <monthly|quarterly|annual>]"
---

# Ops Headcount Ops

Plan and manage operational headcount across MBL Partners portfolio — tracking current headcount, reviewing and approving new hire requests, managing backfills, monitoring the salary budget against plan, and coordinating reductions in force when needed. Headcount is the largest single cost driver in most entities: payroll and benefits typically represent 50-70% of operating expenses; headcount growth that outpaces revenue growth compresses margins and erodes EBITDA; headcount reduction done poorly destroys morale and execution capability; headcount planning done well creates the operational leverage that allows entities to grow revenue faster than cost. Dr. Lewis reviews all significant headcount decisions to ensure they are consistent with the entity's financial model, the approved org design, and Matt Mathison's capital allocation priorities.

## When to Use
- A new hire or backfill is requested by an entity CEO
- Annual headcount and salary budget planning
- Monthly payroll review (comparing actual to budget)
- A headcount reduction is being considered
- Dr. Lewis's authorization threshold is reached

## Headcount Management Framework

```
HEADCOUNT AUTHORIZATION THRESHOLDS:

  Independent (entity CEO authority; Dr. Lewis informed):
    Backfill of an exact same role at same or lower compensation
    Contract/temp hire <90 days and <$15K total
    
  Dr. Lewis approval required:
    New roles (not backfills)
    Roles with base salary $40K-$100K
    Contract hires >90 days
    Promotions with compensation increase >15%
    
  Dr. Lewis + Matt Mathison approval required:
    Roles with base salary >$100K
    Any VP-level or above role (regardless of compensation)
    Headcount reduction affecting >3 people (per fin-cost-reduction-planner)
    Any hire that changes the entity's total headcount by >10% in 90 days

HEADCOUNT PLANNING CYCLE:

  ANNUAL PLANNING (November-December; for next year):
    Entity CEO submits headcount plan: current headcount + planned new roles for next year
    Format: role title; department; target hire date; base salary range; rationale
    Dr. Lewis reviews against:
      Current revenue and EBITDA margin
      Financial model projections (will revenue support the new headcount?)
      Org design (does this role fit the approved structure?)
    Matt Mathison approves the final headcount plan as part of the annual budget
    
  IN-YEAR HEADCOUNT REQUESTS:
    Entity CEO submits a hire request form (SharePoint or email to Dr. Lewis):
      Role title; department; reports to; base salary range; target start date
      Rationale: what problem does this role solve? What does the business lose without it?
    Dr. Lewis review: 3-5 business days
    If approved: proceed with recruiting; Dr. Lewis tracks against headcount budget
    If not approved: Dr. Lewis explains the gap and discusses alternatives
    
  HEADCOUNT TRACKER (maintained monthly):
    By entity: current FTE count; approved open roles; roles in recruiting; recently filled
    Total portfolio headcount; total portfolio payroll (annualized)
    YTD vs. budget: are we at, above, or below headcount plan?

PAYROLL MONITORING:

  MONTHLY PAYROLL REVIEW:
    Source: QuickBooks payroll data (by entity)
    Compare: actual payroll cost vs. budget
    Flag: actual >5% above budget → HIVE CEO or entity CEO explanation required
    Flag: actual >10% above budget → Dr. Lewis investigation
    
  COMMON PAYROLL ANOMALIES:
    New hire started before budgeted start date (early start)
    Salary settled higher than budgeted range
    Severance payment (terminated employee)
    Bonus payment not in the payroll budget
    Payroll processing error (wrong hours; wrong rate)
    
  BENEFITS AND TOTAL COMP:
    Benefits cost: approximately 18-25% on top of base salary (healthcare; 401k; etc.)
    Always budget with benefits loaded (not just base salary)
    HIVE: leaner benefits; smaller team
    Allevio: healthcare benefit is significant; monitor provider enrollment impact on cost
    Column6: standard tech/media benefits package

HEADCOUNT REDUCTION:

  REDUCTIONS FOLLOW fin-cost-reduction-planner:
    Tier 1-2: Dr. Lewis + entity CEO; no Matt Mathison approval needed (cost elimination not people)
    Tier 3-4: headcount reduction affecting >3 people → Matt Mathison approval before announcement
    
  PROCESS (when headcount reduction is decided):
    Legal review: WARN Act check (60 days notice required if 50+ employees; state laws vary)
    Severance: standard 1 week per year of service (minimum); Dr. Lewis approves exceptions
    Benefits: COBRA notification; benefits continuation per plan
    Access: deprovisioning must happen same day as termination (ops-data-governance)
    Communication: entity CEO communicates; Dr. Lewis available for questions
    Morale plan: how does the entity communicate to remaining employees?
```

## Output Format

```markdown
# Headcount Operations Report — [Month Year]
**Entity:** [All] | **Prepared by:** Dr. Lewis

---

## Portfolio Headcount Summary

| Entity | FTE (current) | Open roles | In recruiting | Payroll (annualized) | vs. Budget |
|--------|--------------|-----------|--------------|---------------------|-----------|
| Allevio | [N] | [N] | [N] | $[X] | [+/-N%] |
| HIVE | [N] | [N] | [N] | $[X] | [+/-N%] |
| Column6 | [N] | [N] | [N] | $[X] | [+/-N%] |
| MBL | [N] | [N] | [N] | $[X] | [+/-N%] |
| **Total** | [N] | [N] | [N] | **$[X]** | [+/-N%] |

---

## Pending Hire Requests

| Entity | Role | Salary range | Requester | Status | Dr. Lewis decision |
|--------|------|-------------|---------|--------|------------------|
| Allevio | Controller | $85-95K | CEO | Under review | — |
| Column6 | VP Agency Success | $120K+ | CEO | → Matt Mathison | Pending |

---

## Payroll Anomalies This Month

| Entity | Anomaly | Amount | Explanation | Status |
|--------|---------|--------|-------------|--------|
| [Entity] | Salary above budget | $[X] | Settled higher on candidate | Approved variance |
```

## Output Contract
- Every hire has a rationale before it's approved — "we need more people" is not a rationale; the rationale for a new hire is: "This role solves [specific problem]; without it, [specific consequence] happens; with it, [specific expected outcome]"; Dr. Lewis enforces this in the hire request process; a request without a clear rationale is returned to the entity CEO with one question: "What specifically does the business lose without this hire?"; the answer to that question is the rationale; if the entity CEO can't answer it, the hire may not be necessary
- Payroll vs. budget is a monthly financial control — headcount that is approved in the annual plan but costs more than budgeted (because candidates settled higher; because roles filled earlier than expected; because benefits costs are higher than estimated) is still a budget variance that needs explanation; the 5% and 10% thresholds exist because small variances compound across a year; a 7% payroll overrun across all entities represents a meaningful EBITDA impact; Dr. Lewis catches and explains this before it surprises Matt Mathison at the monthly financial review
- Headcount reduction >3 people requires Matt Mathison approval before announcement — not before planning; not after announcement; before announcement; the reason is simple: once the announcement is made, it cannot be taken back; Matt has a right to know before it happens; he may have context about the entity relationship or the timing that is relevant; if the decision is urgent (fraud; immediate budget crisis), Dr. Lewis calls Matt directly before the announcement is made
- HITL required: VP-level and above roles → Matt awareness (any VP+ hire); roles >$100K → Matt Mathison + Dr. Lewis approval; headcount reduction >3 people → Matt Mathison approval before announcement; any hire that changes entity headcount >10% in 90 days → Matt awareness; annual headcount plan → Matt Mathison approves as part of annual budget; promotions to VP-level → Matt awareness; severance packages >$25K for a single employee → Dr. Lewis approval; >$50K → Matt Mathison awareness

## System Dependencies
- **Reads from:** QuickBooks (payroll data by entity); entity CEO hire requests; annual budget (approved headcount plan); ops-org-design (approved structure — hire must fit the design); fin-budget-manager (salary budget tracking); ops-culture-ops (cultural fit considerations for key hires)
- **Writes to:** Headcount tracker (SharePoint → Operations → Headcount → [YYYY]); hire approval/denial communications; Matt Mathison briefings (VP+ hires; reductions >3 people; >10% headcount change); payroll anomaly reports; ops-action-tracker (recruiting actions for approved roles)
- **HITL Required:** VP+ hires → Matt awareness; roles >$100K → Matt + Dr. Lewis approval; reductions >3 people → Matt approval before announcement; >10% headcount change → Matt awareness; annual headcount plan → Matt approves in budget; severance >$50K → Matt awareness; Legal review for reductions (WARN Act; state laws) is mandatory regardless of size

## Test Cases
1. **Golden path:** Allevio CEO submits a hire request for a "Medical Billing Specialist" — base salary $62K; reports to Controller; rationale: "Current billing team is processing claims 48 hours slower than the 72-hour turnaround target; this is contributing to the DSO exceeding 35 days; we need more bandwidth to bring DSO back in line." Dr. Lewis review: (1) Is this within the approved org design? Yes — the Controller has capacity for this report. (2) Is the salary within range? $62K for a billing specialist with AdvancedMD experience is market rate. (3) Does the financial model support it? At current ARR, a $62K role loaded at 22% benefits = $75.6K total cost; the DSO improvement from 40 days to 35 days releases approximately $X of working capital. (4) Within Dr. Lewis's approval authority ($40K-$100K base). Approved. Action: Allevio CEO begins recruiting.
2. **Edge case:** An entity CEO hires a temporary contractor and gives them a 6-month engagement without getting Dr. Lewis approval (contract hire >90 days requires Dr. Lewis approval) → Dr. Lewis: "I've flagged a process gap: [Contractor Name] started with [Entity] on [date] as a 6-month contractor — this should have come through a hire request before the engagement started. I'm not reversing the hire; the person is already working and reversing creates operational disruption. But I want to understand: (1) What is the total cost of the engagement? ($[X] × 6 months = $[X].) Is this within the approved contractor budget? (2) Going forward: any contract engagement >90 days needs a hire request form before it starts — not as bureaucracy, but as a payroll budget control. I'll add this contractor to the headcount tracker retroactively."
3. **Adversarial:** An entity CEO wants to hire 4 people simultaneously in a month when the entity is 8% above headcount budget → Dr. Lewis: "I can't approve 4 new hires when the entity is already 8% above its headcount budget. The 8% overrun is already an anomaly I need to understand — what caused it? Before any new hires, I need: (1) An explanation for the current overrun; (2) A revised headcount plan showing how 4 new hires fit within the annual headcount budget — or a request to Matt Mathison to increase the budget. Options: (a) if the current overrun is temporary (e.g., someone who started early; will be offset by an open role going unfilled), then we can proceed with the most critical hire first; (b) if the overrun is structural, we need to solve that before adding more; (c) if the 4 hires are truly urgent, I'll take it to Matt with the full financial picture and your business case. Which situation are we in?"

## Audit Log
All hire requests retained (approved; denied; pending). Hire approval records retained (approver; rationale; salary decision). Annual headcount plans retained. Monthly payroll variance records retained. Headcount reduction records retained (Matt approval; legal review; severance records). Headcount tracker version history retained.

## Deprecation
Review authorization thresholds annually as entity revenues grow — the $100K senior hire threshold may need to move up as entities scale. Review quarterly when doing the financial plan. The framework itself is maintained indefinitely.
