---
name: finance-headcount-planner
description: "Plan and track headcount and personnel costs for MBL Partners portfolio entities. Use when the user says 'headcount plan', 'headcount budget', 'headcount planning', 'personnel plan', 'staffing plan', 'hiring plan', 'hire plan', 'workforce plan', 'how many people should we hire', 'what is the hiring budget', 'personnel budget', 'compensation plan', 'total comp', 'salary budget', 'payroll budget', 'payroll plan', 'headcount cost', 'cost per hire', 'cost per employee', 'FTE plan', 'FTE budget', 'full-time equivalent', 'headcount by role', 'headcount by department', 'headcount vs. revenue', 'revenue per employee', 'when should we hire', 'should we hire now', 'hire timing', 'headcount model', 'headcount vs. budget', 'over-headcount', 'under-headcount', 'headcount approval', or 'staffing request'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--role <ae|cs|marketing|operations|all>] [--action <plan|evaluate|approve|track>] [--period <quarterly|annual>]"
---

# Finance Headcount Planner

Plan and track headcount and personnel costs for MBL Partners portfolio entities — building the headcount budget that drives the largest single expense line in most entities, evaluating hire timing decisions based on revenue-per-employee productivity ratios and pipeline-supported revenue capacity, and ensuring all headcount additions have proper financial justification and approval. Hiring too fast destroys margins; hiring too slow loses market share. The headcount plan finds the right pace.

## When to Use
- Annual budget cycle: headcount plan as part of full budget
- New hire request: evaluating the financial case for a specific hire
- Mid-year: assessing whether the current headcount pace is sustainable
- Entity CEO requests: "should we hire another AE now?"

## Headcount Planning Framework

```
HEADCOUNT PLAN STRUCTURE:

  For each entity, Dr. Lewis maintains a headcount tracker with:
    Current role; name; start date; annual compensation (salary + benefits estimate); department
    Planned hires: role; planned start date; annual comp; business case reference
    Open roles: posted; target start date; comp range
    
  HEADCOUNT FINANCIAL SUMMARY:
    Total annual payroll: sum of all active employees × annual comp
    Benefits load: 20-25% of base salary (health; payroll tax; 401K if applicable)
    All-in cost per FTE: base + benefits load
    Annual payroll as % of revenue: track trend (target: declining with scale)
    
HIRE TIMING DECISION FRAMEWORK:
  Business case: what revenue or capacity does this hire enable?
    AE hire: pipeline math — can 1 AE generate $X ARR in year 1? Payback within 12 months?
      Allevio AE: $200K all-in cost / $26K avg ACV = 7.7 new employers needed to break even
      With 6-month ramp + 50% close rate on pipeline: does the pipeline support 7.7 new employers?
    CS hire: client load — at what CS:employer ratio does quality slip?
      Allevio CS benchmark: 1 CS lead per 40-50 active employers (before adding capacity)
    G&A hire: what specific task is this hire replacing? What is the cost vs. outsourcing?
    
  TIMING: do not hire ahead of need — hire 30-60 days before the position is at capacity
  Allevio: do not hire an AE to cover pipeline that doesn't yet exist — hire when Stage 4+ 
    pipeline demonstrates capacity need (30+ days sustained Stage 4 backlog)
    
HEADCOUNT APPROVAL AUTHORITY:
  Backfill (existing role; same comp): entity CEO + Dr. Lewis
  New role <$100K all-in: entity CEO + Dr. Lewis
  New role $100K-$200K all-in: entity CEO + Dr. Lewis + Matt Mathison notification
  New role >$200K all-in: entity CEO + Dr. Lewis + Matt Mathison approval
  Multiple simultaneous hires (same quarter): Matt Mathison notification regardless of amount
  
REVENUE PER EMPLOYEE (EFFICIENCY METRIC):
  Calculate quarterly: total entity revenue / total entity headcount
  Track trend: should increase over time as entity scales
  Benchmark: Allevio target ≥$280K revenue/FTE at maturity; Column6 target ≥$350K revenue/FTE
  Warning: revenue per employee declining over 2 quarters → headcount growing faster than revenue
  
HEADCOUNT TRACKING:
  Monthly: Dr. Lewis reviews actual headcount vs. planned; flag any unplanned additions
  Quarterly: payroll actuals vs. budget reviewed in entity P&L
  Annual: headcount plan built in annual budget process (finance-annual-budget-builder)
```

## Output Format

```markdown
# Headcount Plan — [Entity] — [Year/Quarter]
**Prepared by:** Dr. Lewis | **Status:** [Draft / Approved / Tracking]

---

## Current Headcount

| Role | Name | Dept | Start Date | All-in Cost | Status |
|------|------|------|-----------|------------|--------|
| AE | [Name] | Sales | Jan 2026 | $X | Active |
| CS Lead | [Name] | CS | Mar 2026 | $X | Active |

**Total headcount: N | Annual payroll: $X | Revenue/FTE: $X**

---

## Planned Hires

| Role | Dept | Planned Start | All-in Cost | Business Case | Status |
|------|------|-------------|------------|--------------|--------|
| AE #2 | Sales | Q1 2027 | $X | Pipeline at capacity Q4 2026 | Approved |

---

## Hire Evaluation — [Specific Role]

| Item | Value |
|------|-------|
| Role | |
| Business case | [What does this hire enable?] |
| All-in annual cost | $X |
| Payback analysis | [X new deals/clients needed; pipeline support] |
| Approval required | [Entity CEO + Dr. Lewis / + Matt Mathison] |
| **Recommendation** | **[Approve / Defer / Decline]** |
```

## Output Contract
- Every hire at a portfolio entity is a multi-year commitment, not a month-to-month expense — when Allevio hires an AE at $185K all-in annual cost, they are committing to $185K/year until that AE leaves or is let go; the pipeline must be able to support the payback ($26K ACV / 50% close rate on pipeline = 14 deals in pipeline to cover 7.7 new employers needed for break-even); if the pipeline doesn't support the hire, Dr. Lewis defers the recommendation until it does; this discipline protects entity cash runway and keeps the entity CEO from over-committing on the cost side before the revenue is visible
- The revenue-per-employee metric is the single best indicator of whether the entity is scaling efficiently — if Allevio has 4 employees at year 1 with $480K revenue ($120K/FTE) and 6 employees at year 2 with $900K revenue ($150K/FTE), they are scaling efficiently; if they have 6 employees at year 2 with $580K revenue ($97K/FTE), they are hiring faster than revenue growth; Dr. Lewis tracks this quarterly and flags declining revenue/FTE to the entity CEO as a hiring velocity signal — not a performance blame; the question is whether hiring was ahead of pipeline capacity
- HITL required: new hire <$100K → entity CEO + Dr. Lewis; $100K-$200K → entity CEO + Dr. Lewis + Matt Mathison notification; >$200K → Matt Mathison approval; multiple simultaneous hires → Matt Mathison notification; unplanned hire (not in headcount budget) → entity CEO + Dr. Lewis + budget impact assessment; revenue/FTE declining 2+ quarters → entity CEO + Dr. Lewis hiring pace review; backfill → entity CEO + Dr. Lewis

## System Dependencies
- **Reads from:** QuickBooks (payroll actuals; benefits costs); finance-annual-budget-builder (planned headcount budget); revops-quota-design-model (AE hire timing — pipeline capacity); revops-pipeline-health-monitor (pipeline depth → AE capacity trigger); entity CEO headcount requests
- **Writes to:** Headcount plans (SharePoint → [Entity] → Finance → Headcount → [Year]); QuickBooks headcount budget entries; Matt Mathison headcount notification records; hire approval records; revenue/FTE tracking; annual budget headcount section
- **HITL Required:** New hire → entity CEO + Dr. Lewis; >$200K → Matt Mathison; simultaneous hires → Matt Mathison notification; unplanned hire → entity CEO + Dr. Lewis + budget impact; revenue/FTE declining → entity CEO + Dr. Lewis review

## Test Cases
1. **Golden path:** Allevio AE hire evaluation (September 2026). Current: 1 AE; 21 active employers; pipeline Stage 4+: 34 employers. Revenue/FTE: $94K (improving from $78K last quarter ✅). AE capacity: current AE at ~85% of capacity (managing 21 active + 34 pipeline simultaneously). Business case: 1 AE can cover ~40 active accounts; at current pipeline close rate, adding 8-10 employers per quarter → AE at capacity by Q1 2027. All-in cost for new AE: $175K. Payback: $175K / ($26K ACV × 50% close rate × quarterly pipeline conversion) = approximately 3 quarters at expected pipeline pace. Recommendation: approve hire for Q4 2026 start (30-60 days before capacity constraint). Entity CEO + Dr. Lewis approve. Matt Mathison notified (>$100K new role). Hire initiated.
2. **Edge case:** Entity CEO wants to hire a CFO at $225K all-in as a "first finance hire" → Dr. Lewis: "A $225K CFO hire is a significant commitment — that's 25% of Allevio's current annual revenue allocated to one G&A role. Let me evaluate: (1) what specific finance tasks are not being done today that a CFO would own? (2) Which of those tasks require a CFO (vs. a senior accountant or outsourced CFO relationship for $60-80K/year)? (3) Is the company at a stage where a full-time CFO creates enough value to justify the cost differential? My instinct: a fractional CFO arrangement or a senior finance manager at $95-120K all-in may be the right next hire, with a full-time CFO planned for the next funding round or revenue milestone. Let me build the comparison analysis — 30 minutes. Matt Mathison should be in this conversation."
3. **Adversarial:** Entity CEO hired a coordinator without telling Dr. Lewis or getting approval ("it's just an administrative role at $42K") → Dr. Lewis: "I appreciate the urgency — and I understand that $42K feels small. But any hire requires entity CEO + Dr. Lewis approval (our threshold starts at the first dollar). Here's why: (1) I need to load this into QuickBooks as payroll and budget for the ongoing cost; (2) I need to update the revenue/FTE calculation; (3) if the hire brings the total entity payroll above a certain threshold, it triggers a Matt Mathison notification. None of these are punitive — they're accounting and portfolio oversight. Going forward, any hire — regardless of amount — comes to me before start date. I'll get this one documented now."

## Audit Log
Headcount plans (annual; permanent). Hire approval records. Matt Mathison notification records. Revenue/FTE quarterly tracking. Unplanned hire records. Payroll actuals vs. budget (monthly). Hire evaluation analyses. Entity CEO headcount request records.

## Deprecation
Headcount thresholds reviewed annually. Revenue/FTE benchmarks reviewed when entity business model matures. Approval authority reviewed when entity size changes. Hire timing framework reviewed when entity growth rate changes. AE payback model reviewed when ACV or close rate changes significantly.
