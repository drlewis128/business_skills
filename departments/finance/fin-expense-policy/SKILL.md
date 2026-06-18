---
name: fin-expense-policy
description: "Enforce and manage the MBL expense policy for portfolio companies. Use when the user says 'expense policy', 'expense report', 'expense reimbursement', 'expense approval', 'expense review', 'expense control', 'T&E policy', 'travel policy', 'entertainment policy', 'expense limits', 'expense documentation', 'expense receipt', 'expense categories', 'approve the expense', 'reject the expense', 'expense out of policy', 'expense exception', 'corporate card', 'company card', 'expense management', 'expense audit', 'review the expenses', 'out of pocket expense', 'per diem', 'mileage reimbursement', 'conference expense', 'business meal', 'team expense', 'client entertainment', 'team building expense', or 'expense compliance'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--action <review|approve|reject|audit|policy>] [--category <travel|meals|entertainment|team|conference>] [--period <monthly|quarterly>]"
---

# Fin Expense Policy

Enforce and manage the MBL expense policy across portfolio companies — ensuring that all employee business expenses are legitimate, properly documented, pre-approved where required, and coded to the correct account. Expense management is a controls function, not a compliance exercise: the expense policy exists to protect the entities from financial leakage, maintain trust between employees and management, and ensure that every dollar spent on T&E creates business value proportionate to its cost. An expense policy that is enforced consistently signals to the organization that management pays attention; one that is enforced selectively signals that the rules are negotiable.

## When to Use
- Monthly expense report review (submitted expenses from all employees)
- Pre-approval for any expense >$500 (travel; events; equipment)
- An expense report is submitted that appears out of policy
- Annual expense policy review and communication
- Matt Mathison or an entity CEO asks about expense management practices

## Expense Policy Framework

```
MBL EXPENSE POLICY (applies to all entities; entity-specific notes where applicable):

  GENERAL PRINCIPLES:
    1. Business purpose required for every expense
    2. Receipts required for every expense >$25
    3. Expenses submitted within 30 days of incurrence
    4. Manager approval required before submission (not just before reimbursement)
    5. Original receipts only (no photocopies without explanation)

  PRE-APPROVAL THRESHOLDS (before spending, not after):
    <$100: No pre-approval required; submit within 30 days with receipt and business purpose
    $100-$500: Verbal approval from manager; submit receipt and business purpose
    $500-$2,500: Written email approval from entity CEO or Dr. Lewis before committing
    $2,500-$10,000: Dr. Lewis written approval before committing
    >$10,000: Matt Mathison approval (this is a capital allocation decision, not an expense)
    
  EXPENSE CATEGORIES AND LIMITS:

    TRAVEL (business travel only):
      Airfare: economy class required; business class not approved without Dr. Lewis exception
      Airfare booking: must be booked through approved booking method; >21 days advance required
        (advance booking requirement waived for emergency travel — document reason)
      Hotel: reasonable rate for the city (use common sense; NYC $300/night is reasonable;
               Phoenix $300/night requires explanation)
      Ground transportation: ride-share/taxi reasonable; rental car requires specific justification
      Meals while traveling: up to $75/day for all meals (no alcohol on company account)
      
    MEALS AND ENTERTAINMENT:
      Business meals: receipt required; attendees and business purpose required
      Meal with employees only: up to $25/person (team working lunch)
      Meal with clients/partners: up to $75/person with clear business purpose
      Alcohol: never reimbursed as a separate line item; modest inclusion in a business meal is acceptable
        (a bottle of wine at a client dinner — reasonable; a $400 bar tab — not)
      Entertainment (concerts; events; sports): requires Dr. Lewis pre-approval; client relationship purpose required
      
    CONFERENCES AND TRAINING:
      Registration: pre-approved in the annual budget; budget inclusion = approval
      Non-budgeted conference: Dr. Lewis approval before registration
      Travel associated with conference: standard travel policy applies
      
    TEAM EVENTS:
      Team meals and outings: pre-approval required for any team event >$50/person or >$500 total
      Entity-level team events: entity CEO approval; Dr. Lewis awareness
      All-hands or milestone events: budgeted in advance; entity CEO designs with Dr. Lewis review
      
    OFFICE AND EQUIPMENT:
      Office supplies: <$100 no pre-approval; >$100 entity Controller approval
      Technology equipment (laptops; monitors; peripherals): Dr. Lewis approval
      Subscriptions: must be on the approved vendor list; any new subscription >$100/month requires Dr. Lewis

  WHAT IS NOT REIMBURSABLE:
    □ Personal expenses of any kind (groceries; personal travel; family entertainment)
    □ Alcohol as a separate reimbursement item
    □ Fines and penalties (parking tickets; late fees)
    □ First-class or business-class airfare (without exception approval)
    □ Spa; massage; personal wellness
    □ Political donations
    □ Gifts >$50 per recipient per year (IRS limit; higher amounts are taxable)

EXPENSE REVIEW PROCESS:

  Monthly review by Dr. Lewis:
    □ All expense reports submitted (are all employees submitting on time?)
    □ Sampling review: review 100% of expenses >$500; 25% random sample of smaller expenses
    □ Policy violations: identify and categorize (unintentional error vs. pattern)
    □ Pattern analysis: any employee submitting unusual amounts or categories?
    
  Policy violation response:
    First offense (unintentional): education; expense rejected or adjusted; no further action
    Second offense (same category): written warning in HR file; manager notified
    Third offense or intentional violation: escalate to entity CEO; potential termination
    Intentional fraud (fabricated receipts; personal expenses disguised as business): immediate escalation
      to Matt Mathison + legal; termination decision with Matt
```

## Output Format

```markdown
# Monthly Expense Review — [Entity] — [Month Year]
**Reviewed by:** Dr. Lewis | **Submission deadline:** 30 days from expense date

---

## Summary

| Metric | Value | Status |
|--------|-------|--------|
| Total expense reports submitted | [N] | — |
| Total amount | $[X] | — |
| Expenses in policy | $[X] ([%]) | 🟢 |
| Expenses flagged for review | $[X] ([%]) | 🟡/🔴 |
| Expenses rejected | $[X] ([%]) | — |

---

## Flagged Expenses

| Employee | Amount | Category | Issue | Resolution |
|----------|--------|---------|-------|-----------|
| [Name] | $[X] | [Category] | [Policy issue] | [Approve/Reject/Adjust] |

---

## Policy Violations (if any)

| Employee | # Prior violations | Category | Action taken |
|---------|------------------|---------|-------------|
| [Name] | [N] | [Category] | [Warning/Escalation] |
```

## Output Contract
- Pre-approval is the control — a reimbursement approval after the fact is not a control; it's an auditing exercise for money already spent; MBL's expense controls are built around pre-approval for significant amounts; an employee who spends $3,000 on a conference without pre-approval and then submits for reimbursement has created a fait accompli; the organization learns that the policy is negotiable after the fact; Dr. Lewis enforces the pre-approval thresholds by rejecting (or adjusting) any expense that should have been pre-approved and wasn't
- Business purpose is not optional — "dinner" is not a business purpose; "dinner with [Name] from [Company] to discuss [specific topic]" is a business purpose; the purpose must be specific enough that someone reading it in an audit 3 years later would understand why the company paid for it; vague business purposes are sent back for clarification before reimbursement
- Consistent enforcement is the policy — an expense policy enforced for junior employees but overlooked for senior leaders destroys the culture around financial discipline; Dr. Lewis reviews and applies the same standard to all expense reports regardless of the employee's level; if an entity CEO submits an out-of-policy expense, Dr. Lewis addresses it the same way as a junior employee's out-of-policy expense; the first time a senior leader gets a free pass, the policy is functionally over
- HITL required: all expenses >$500 reviewed by Dr. Lewis before reimbursement; pre-approvals >$2,500 require Dr. Lewis written approval; expenses >$10K require Matt Mathison approval; intentional fraud or fabricated receipts go to Matt Mathison immediately (same day) with documentation; entity CEOs review their own expense reports with Dr. Lewis; pattern violations (3rd offense) escalate to Matt Mathison

## System Dependencies
- **Reads from:** Expense management system (entity-specific; or Bill.com expense module); receipts and documentation (attached to expense submissions); fin-budget-builder (approved budget by category — whether the expense was budgeted); approved vendor list (for subscription and service expenses); exec-capital-allocation (thresholds for expense pre-approval amounts)
- **Writes to:** Expense records (SharePoint → Finance → Expenses → [Entity] → [YYYY]-[MM]); QuickBooks (approved expenses posted to appropriate GL accounts); exec-action-tracker (expense policy violations and follow-up actions); fin-entity-close (approved expenses contribute to monthly expense accruals); fin-internal-controls (expense policy compliance metrics)
- **HITL Required:** Expenses >$500 reviewed by Dr. Lewis; pre-approvals >$2,500 require Dr. Lewis written sign-off; fraud/fabrication → Matt Mathison same day; policy violations logged; third violation escalates to Matt; entity CEO expense reports reviewed by Dr. Lewis same as any employee

## Test Cases
1. **Golden path:** Monthly expense review for HIVE; 8 expense reports totaling $3,450; largest: $1,850 for field operations manager travel (2 days in Denver for landowner meeting — pre-approved by entity CEO; receipts attached; business purpose documented: "Denver meeting with [Landowner Group] to negotiate lease renewal terms for [property]"); 3 smaller travel reimbursements <$200 each (all with receipts and purposes); 2 office supplies <$50 each (no pre-approval needed); 1 flagged: $280 meal for "team lunch" with no attendees listed. Dr. Lewis: "Return the $280 meal — need the names of attendees and business purpose before I'll approve." Employee responds within 24 hours with attendees (3 people; field team + HIVE CEO) and purpose (production strategy discussion following Q2 review). Approved.
2. **Edge case:** An entity CEO submits a $4,200 expense for a conference registration + hotel (no pre-approval) → Dr. Lewis: "I'm holding this reimbursement. The $4,200 conference expense required pre-approval — per policy, any expense $2,500-$10,000 needs Dr. Lewis written approval before committing. I understand this might feel like paperwork for a straightforward conference, but the pre-approval requirement exists precisely for expenses like this: significant, single-event, discretionary. For this one: if the conference has already happened, I'll approve it this time with a note that going forward, all conference expenses >$2,500 need pre-approval before registration. Was this conference in the approved budget?" CEO: "It was in the budget." Dr. Lewis: "Budget inclusion covers the fact that we planned for it — it doesn't replace the pre-approval workflow. Approved this time; pre-approval required next year."
3. **Adversarial:** An employee submits receipts that appear to be modified (amounts look altered) → Dr. Lewis: "I'm flagging this as a potential documentation integrity issue before making a final determination. The receipts for [expenses] appear to show modifications — specifically, [describe the anomaly: totals that don't add up; formatting inconsistent with normal receipts; etc.]. Before I reject or approve, I'm doing two things: (1) pulling the original vendor records if available (credit card statement; restaurant receipt lookup); (2) having a direct conversation with the employee — not an accusation, but an explanation that I need original, unmodified receipts. If the receipts turn out to be legitimate, this is resolved quickly. If they're fabricated, this goes to Matt Mathison and legal today." Documents everything. Conducts investigation within 24 hours.

## Audit Log
All expense reports retained 7 years. Pre-approval records retained. Policy violation records retained (by employee; by category; by resolution). Fraud investigation records retained. Monthly review sign-offs. Annual policy communication records.

## Deprecation
Retire when each entity has a Controller or Finance specialist who manages the expense review and enforcement — with Dr. Lewis providing the policy governance (pre-approval for >$2,500; fraud investigations; policy updates) and Matt Mathison retained for fraud decisions and expenses >$10K.
