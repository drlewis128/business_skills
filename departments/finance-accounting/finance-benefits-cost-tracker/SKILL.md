---
name: finance-benefits-cost-tracker
description: "Track and analyze employee benefits costs for MBL Partners portfolio entities. Use when the user says 'benefits cost', 'benefits expense', 'health insurance cost', 'employee benefits', 'benefits tracking', 'benefits budget', 'benefits spend', 'health plan cost', 'employee health insurance', 'benefits per employee', 'cost per employee benefits', 'benefits renewal', 'insurance renewal', 'open enrollment', 'benefits analysis', 'total compensation benefits', 'PEPM benefits', 'per employee per month benefits', 'employer contribution', 'benefits contribution', 'how much does benefits cost', 'benefits as percent of payroll', 'benefits benchmarking', 'total benefits cost', 'benefits ledger', 'benefits invoice', 'health insurance invoice', 'dental vision cost', 'benefits audit', 'benefits rationalization', 'are we overpaying for benefits', 'shop benefits', or 'benefits plan comparison'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--period <monthly|quarterly|annual>] [--action <track|reconcile|benchmark|renewal>]"
---

# Finance Benefits Cost Tracker

Track and analyze employee benefits costs for MBL Partners portfolio entities — reconciling benefits invoices, calculating cost per employee, benchmarking against budget, and managing annual renewal decisions. Benefits are typically the second-largest employer cost after base salary; tracking PEPM (per employee per month) allows accurate headcount cost modeling and benefit-vs-compensation tradeoff analysis.

## When to Use
- Monthly benefits invoice reconciliation
- Annual benefits renewal decision
- Adding or terminating an employee (enrollment change)
- Benefits cost as percent of total compensation (quarterly)

## Benefits Cost Tracking Framework

```
BENEFITS CATEGORIES TRACKED:

  Medical (health insurance):
    Most significant cost; employer typically pays 60-80% of employee premium
    PEPM: varies by plan; track employer-share PEPM by entity
    
  Dental: usually $25-50/employee/month (employer portion)
  Vision: usually $8-15/employee/month (employer portion)
  Life / AD&D: usually $5-15/employee/month (employer portion)
  Disability (STD/LTD): usually $15-30/employee/month combined employer portion
  
COST TRACKING METHOD:
  Monthly: benefits provider invoices → Bill.com inbox → Dr. Lewis codes to entity GL → QuickBooks
  GL coding: benefits expense → COGS (if clinical employee; Allevio) or G&A (admin/sales)
  Per-employee reconciliation: invoice should match headcount × premium rate
  Enrollment changes: when employee added/removed → verify next invoice reflects change
  
KEY METRICS:
  PEPM (employer share): total employer benefits cost / employee count
  Benefits as % of gross payroll: typically 15-25% for well-managed small companies
  Benefits cost per entity: track monthly and quarterly vs. budget
  
ANNUAL RENEWAL PROCESS (Q3 — July/August preparation for January 1 effective date):
  Step 1: Broker (or Dr. Lewis) requests renewal options from current carrier
  Step 2: Dr. Lewis requests competing quotes (2-3 carriers minimum)
  Step 3: Compare: premium cost; plan design; network quality; employee deductibles
  Step 4: If >10% premium increase from current carrier → requires competing quote process
  Step 5: Entity CEO + Dr. Lewis decide on plan selection; present to employees during open enrollment
  Step 6: Matt Mathison notified if annual benefits cost change >$30K across entities
  
ENROLLMENT CHANGE MANAGEMENT:
  New hire: complete enrollment within 30 days of hire date (qualifying event window)
    Missing 30-day window: employee waits for next open enrollment (usually December)
  Life event: marriage/divorce/birth/adoption → 30-day qualifying event window
  Termination: coverage ends on last day of month of termination (AZ standard); COBRA option available
  
ALLEVIO NOTE:
  Allevio employee benefits are entirely separate from the MSO's member benefits product
  Clinical staff benefits: standard employer group health plan (not Allevio member health benefits)
  No HIPAA concern with employer group health plan administration — this is standard HR function
  But: if Allevio uses a PEO that also administers the member benefits → BAA evaluation for PEO
  
BENEFITS COST MODEL:
  Used in finance-headcount-planner for all-in cost calculations
  Standard: $800-1,200/employee/month total employer benefits cost (Phoenix metro; small group)
  Allevio AE all-in cost example: $200K base OTE + $14,400 benefits + payroll taxes → ~$230K all-in
```

## Output Format

```markdown
# Benefits Cost Tracker — [Entity] — [Month/Quarter Year]
**Invoices reconciled:** [Provider names] | **Reconciled by:** Dr. Lewis

---

## Monthly Benefits Cost Summary

| Plan | Employees Covered | Employer PEPM | Monthly Employer Cost |
|------|-----------------|--------------|---------------------|
| Medical | N | $X | $X |
| Dental | N | $X | $X |
| Vision | N | $X | $X |
| Life/AD&D | N | $X | $X |
| **Total** | | **$X PEPM avg** | **$X** |

**Benefits as % of gross payroll:** X%
**Budget variance:** +/-$X

---

## Enrollment Changes This Month
- [New hire: Name added to medical/dental/vision — effective Date]
- [Termination: Name removed — COBRA notice sent Date]
```

## Output Contract
- Benefits invoice reconciliation is a fraud-prevention exercise, not just bookkeeping — insurance carriers occasionally make billing errors (billing for a terminated employee; adding a dependent not enrolled; wrong premium rate); Dr. Lewis reconciles every invoice to the enrolled employee list before approving payment; catching a $450/month billing error for a terminated employee takes 5 minutes in reconciliation and $5,400/year if missed; the cost of not reconciling benefits invoices is always higher than the time spent doing it
- PEPM is the right unit for managing benefits costs at scale — "we pay $X,000/month in benefits" is a number that fluctuates with headcount; PEPM stays stable and reveals the true cost structure; when Allevio adds an AE, Dr. Lewis can tell the entity CEO immediately what the benefits cost addition will be (approximately $900-1,100/month in PEPM × 1 new employee); this makes hiring decisions financially transparent rather than approximate
- HITL required: benefits renewal → entity CEO + Dr. Lewis decide; plan selection → entity CEO approves; >$30K annual cost change → Matt Mathison notified; new hire enrollment → HR/entity CEO confirms within 30-day window; termination COBRA notice → entity CEO ensures HR process complete; new benefits provider → entity CEO + Dr. Lewis select; Allevio PEO BAA evaluation → Dr. Lewis assesses; premium increase >10% → Dr. Lewis requests competing quotes

## System Dependencies
- **Reads from:** Benefits provider invoices (Bill.com inbox); Gusto (enrolled employee list; premium deductions per employee); QuickBooks (benefits expense accounts by entity; payroll comparison); finance-headcount-planner (headcount for reconciliation baseline)
- **Writes to:** Bill.com (invoice approvals); QuickBooks (benefits expense GL entries by entity); enrollment change records; annual renewal decision records; COBRA notice records; Matt Mathison benefits cost notification records
- **HITL Required:** Renewal → entity CEO + Dr. Lewis; >$30K change → Matt Mathison; enrollment → HR/entity CEO 30-day window; termination COBRA → entity CEO; new provider → entity CEO + Dr. Lewis; Allevio PEO → BAA evaluation; premium >10% increase → Dr. Lewis competing quotes

## Test Cases
1. **Golden path:** Allevio June 2026 benefits reconciliation. Enrolled: 5 employees. Invoices received: Medical ($4,320 = 5 employees × $864 PEPM employer share); Dental ($165 = 5 × $33); Vision ($55 = 5 × $11); Life ($60 = 5 × $12). Total employer cost: $4,600. Prior month: $4,600 (no headcount change ✅). Benefits as % of June gross payroll ($18,400): 25% (acceptable for small group ✅). Bill.com approval sent. QuickBooks: $4,600 to G&A-Benefits expense (admin/sales staff). No enrollment changes.
2. **Edge case:** Medical carrier invoice shows 6 employees covered; Allevio has 5 enrolled (one employee terminated May 31) → Dr. Lewis: "The June medical invoice shows 6 covered employees; Allevio has 5 active employees as of June 1 (after [Name] was terminated May 31). The extra $864 on this invoice is a billing error — the carrier continued coverage past the termination date. I'm holding the invoice and contacting the carrier for a corrected invoice showing 5 employees effective June 1. I'll also verify that [Name]'s COBRA election notice was sent within 30 days of termination (due by June 30). Estimated correction: -$864; corrected invoice approved next business day."
3. **Adversarial:** Entity CEO wants to drop dental and vision coverage to save money ("nobody uses it anyway") → Dr. Lewis: "Before we eliminate dental/vision, let me quantify the impact. Combined employer cost: dental $165 + vision $55 = $220/month for 5 employees. Annual savings: $2,640. Annual risk: compensation benchmarking shows dental/vision are standard at peer companies (even at startups); removing them makes us below-market on total comp at a time when we're trying to hire and retain. The $2,640/year savings is real but small — less than 2 weeks of one employee's gross pay. My recommendation: keep the coverage during our growth phase; the talent retention value exceeds the cost by a significant margin. If we're looking to reduce benefits cost meaningfully, the conversation should be about restructuring medical plan design (higher deductible; lower premium) rather than eliminating ancillary benefits."

## Audit Log
Monthly benefits invoice reconciliation records. Bill.com invoice approval records. QuickBooks benefits expense entries. Enrollment change records (new hires; terminations; life events). COBRA notice records. Annual renewal decision records. Competing quote records. Matt Mathison notification records (>$30K annual change). PEPM historical tracking. Allevio PEO BAA evaluation records.

## Deprecation
PEPM benchmarks reviewed annually (market changes). Enrollment change process reviewed when providers change. Renewal process reviewed when group insurance regulations change. Allevio PEO BAA evaluation reviewed when clinical operations structure changes. Benefits budget targets reviewed with annual budget process.
