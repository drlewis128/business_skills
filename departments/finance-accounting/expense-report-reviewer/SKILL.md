---
name: expense-report-reviewer
description: "Review and approve employee expense reports. Use when the user says 'expense report', 'expense review', 'employee expenses', 'T&E review', 'travel and entertainment', 'expense reimbursement', 'approve expenses', 'review expenses', 'expense policy', 'out of pocket expenses', or 'employee reimbursement'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--period <monthly|quarterly>]"
---

# Expense Report Reviewer

Review and approve employee expense reports — verifying that out-of-pocket business expenses are legitimate, policy-compliant, and properly documented before reimbursement. Expense management is a control function: unauthorized or personal expenses paid by the company are a form of embezzlement, even when unintentional. A well-run expense review catches policy violations, duplicate submissions, and unapproved purchases early.

## When to Use
- An employee submits an expense report for reimbursement
- Monthly expense reconciliation — review all credit card charges and expense submissions
- Matt Mathison asks about T&E spending for a portfolio company
- Establishing an expense policy for a new portfolio company
- An expense pattern seems irregular and needs investigation

## Expense Policy (MBL Default)

```
Standard MBL expense policy (adjust by entity):

Transportation:
  - Mileage: IRS rate ([current rate]¢/mile) — personal vehicle
  - Rideshare (Uber/Lyft): OK for business travel
  - Flights: Coach for domestic; business class requires CEO approval
  - Car rental: Compact or midsize; gas reimbursed with receipts

Meals:
  - Solo meals: Up to $50/meal (receipts required)
  - Client/prospect meals: Up to $100/person; business purpose required
  - Team meals: CEO or Dr. Lewis approval; attendees and purpose documented

Hotels:
  - Up to $250/night for major cities; $175/night standard markets
  - In-room dining: reimbursable with business purpose
  - Hotel bar / alcohol: reimbursable in moderation; excessive alcohol is not

Conference/Events:
  - Registration fees: Pre-approved; document the business purpose
  - Hotel at conference: Standard rate or conference rate, whichever is lower

Not reimbursable (ever):
  - Personal entertainment (sports, concerts, movies — unless client-facing)
  - Spouse/family member expenses
  - Traffic violations, parking tickets
  - Personal travel extending a business trip
  - Alcohol >$50 per event without CEO approval

Receipt requirement:
  - All expenses >$25 require a receipt
  - Receipts <$25: itemized description required
  - Missing receipt policy: one-time grace per quarter; second missing receipt = no reimbursement
```

## Output Format

```markdown
# Expense Report Review — <Company Name>
**Employee:** <Name> | **Role:** <Title>
**Period:** [Month / Quarter <YYYY>]
**Submission date:** <Date> | **Reviewed by:** Dr. John Lewis | **Review date:** <Date>

---

## Expense Summary

| Category | Submitted | Approved | Rejected | Notes |
|---------|----------|---------|---------|-------|
| Transportation | $[X] | $[X] | ($[X]) | |
| Meals (solo) | $[X] | $[X] | ($[X]) | |
| Meals (client) | $[X] | $[X] | ($[X]) | |
| Hotel | $[X] | $[X] | ($[X]) | |
| Conference / Events | $[X] | $[X] | ($[X]) | |
| Other | $[X] | $[X] | ($[X]) | |
| **Total** | **$[X]** | **$[X]** | **($[X])** | |

**Approved for reimbursement:** $[X]
**Rejected / requires documentation:** $[X]

---

## Line-Item Review

| Date | Description | Amount | Receipt? | Policy check | Decision | Notes |
|------|------------|--------|---------|-------------|---------|-------|
| [Date] | [Business meal — Client Name] | $[X] | ✅ | Attendees listed? Business purpose? | ✅ Approved / ❌ Rejected | [If rejected: reason] |
| [Date] | [Hotel — [City, Conference name]] | $[X] | ✅ | Within rate limit? | ✅ Approved | |
| [Date] | [Lyft — Airport to hotel] | $[X] | ✅ | Business travel purpose? | ✅ Approved | |
| [Date] | [Missing receipt item] | $[X] | ❌ | Policy: receipt required >$25 | ⚠️ Grace / ❌ Rejected | |
| [Date] | [Alcohol / bar charge] | $[X] | ✅ | Within $50 policy limit? | ✅ / ❌ | |

---

## Rejected Items

| Item | Amount | Reason | Employee notification |
|------|--------|--------|--------------------|
| [Item description] | $[X] | [Policy violation / Missing receipt / Personal expense / Over limit] | ✅ Notified / Pending |

---

## Flags

| Flag | Description | Severity | Action |
|------|------------|---------|--------|
| [Duplicate submission] | [Same receipt submitted twice — [dates]] | High | Reject duplicate; notify employee |
| [Excessive meal] | [Solo meal $[X] — exceeds $50 policy] | Medium | Reject overage |
| [Unapproved airfare class] | [Business class purchased without approval] | High | Reject overage; remind policy |
| [Pattern: consecutive high-expense periods] | [4 consecutive months above $2K/month] | Medium | Review with CEO |

---

## Approval Decision

**Total approved:** $[X]
**Approved by:** Dr. John Lewis
**Approval date:** <Date>
**Payment method:** ACH to employee bank on file
**Payment date:** [Next payroll cycle / [Date]]

**Matt Mathison flag:** [Required if total >$2K, if any flight/business class, or if any flags above are elevated]
```

## Output Contract
- Business purpose required for all meals and client entertainment — "dinner" is not a business purpose; "dinner with [Client name] to discuss [topic/opportunity]" is; every meal expense with a client must include who attended and the business context; expenses without this information are not approvable under IRS rules (entertainment deductibility requires documentation)
- Missing receipts handled per policy — one grace per quarter; second missing receipt = rejection; this policy must be consistently enforced; inconsistent enforcement creates resentment and undermines the control
- Rejected items always documented with specific reason and employee notification — an employee whose expense is rejected without explanation is confused; every rejection must include the specific policy provision being applied and the opportunity to resubmit with proper documentation where applicable
- Personal expenses never approved, regardless of who submitted — if a senior executive submits personal expenses, the same policy applies; personal expenses never get approved; flag to Matt Mathison if a senior person submits personal expenses, as it may indicate a misunderstanding of policy or an intentional control violation
- HITL required: Dr. Lewis reviews and approves all employee expense reports; CEO expenses reviewed by Dr. Lewis and Matt Mathison; any expense >$2K total, any business class flight, or any pattern of unusual expenses requires Matt Mathison notification; rejections of executive expenses require Matt Mathison awareness

## System Dependencies
- **Reads from:** Expense report submissions (Bill.com or manual submission), expense policy (SharePoint/Finance/Policies/), receipt images, QuickBooks (GL coding for approved expenses)
- **Writes to:** Expense approval documentation (SharePoint/Finance/Expenses/); employee reimbursement payment (Bill.com); QuickBooks (expense coding); flag log for pattern tracking
- **HITL Required:** Dr. Lewis reviews all; Matt Mathison reviews CEO expenses and unusual patterns; rejected executive expenses escalated to Matt Mathison

## Test Cases
1. **Golden path:** Allevio BD Manager expense report Q2 → Transportation: $287 (2 rideshares for client meetings, receipts attached, business purpose documented — approved); Meals: $189 (3 client meals, all <$100/person, attendees documented — approved); Hotel: $412 ($206/night × 2 nights, conference rate — approved); Conference registration: $375 (approved in advance — approved); Missing receipt: 1 item $34 (solo lunch — first missing receipt this quarter — grace approved with warning); Total submitted $1,263, approved $1,263 (minus $0 — grace applied); reimbursed via ACH next payroll cycle; no Matt Mathison flag required (below $2K threshold); employee notified of grace period used
2. **Edge case:** An expense report includes a $1,800 business-class flight from Phoenix to New York that was not pre-approved → reject the business-class premium; "Coach fare on the same flight is approximately $[X]. The policy requires CEO approval for business-class travel. Since this wasn't pre-approved, I'm approving the coach equivalent ($[X]) and rejecting the upgrade premium ($[X]). Going forward, please get approval before booking business class." Document the decision; notify Matt Mathison if this is a pattern for the same employee
3. **Adversarial:** A CEO submits an expense report that includes $400 in charges at a hotel bar (solo, no client documented) → the expense is out of policy — exceeds the $50 alcohol limit for personal/solo consumption; reject the excess: "Hotel bar charge of $400 on [date] — policy allows up to $50 for personal alcohol per event. Approving $50; rejecting $350. If this was a client event, please document the attendees and resubmit." Flag to Matt Mathison: "CEO expense report includes $400 hotel bar charge — policy limits solo alcohol to $50. Rejecting excess. Alerting you per protocol for executive expense flags."

## Audit Log
All expense reports retained by employee and period. Line-item approval and rejection decisions documented. Pattern flags tracked over time. Matt Mathison alerts for executive expenses documented. Rejected items with employee notification retained. Duplicate submissions flagged and documented.

## Deprecation
Retire when portfolio companies have dedicated HR or finance functions with expense management software (Expensify, Concur, or Brex) that automates policy checking, receipt attachment, and approval workflows, reducing manual review burden.
