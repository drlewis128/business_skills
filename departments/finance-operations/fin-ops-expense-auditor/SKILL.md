---
name: fin-ops-expense-auditor
description: "Audit employee expense reports — policy compliance, receipt verification, and duplicate detection. Use when the user says 'expense report', 'expense audit', 'review expenses', 'expense policy', 'expense compliance', 'reimbursement review', 'T&E audit', 'travel and entertainment', 'expense report review', 'approve expenses', 'expense receipts', 'employee expenses', 'duplicate expense', 'expense abuse', 'expense policy violation', 'mileage reimbursement', 'expense report approval', or 'expense review'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--period <month or date range>] [--amount <$>]"
---

# Expense Auditor

Audit employee expense reports for MBL portfolio companies — verifying policy compliance, confirming receipts, detecting duplicates, and approving or rejecting reimbursement requests. Expense reimbursement is the finance area most likely to generate small-scale, ongoing misuse: personal meals claimed as business meals, hotel upgrades claimed at the company rate, mileage inflated, and personal Amazon orders included in business expense reports; individually, each instance is small; cumulatively across a team and year, the amount is significant and the behavior reflects a cultural norm about what is acceptable. Dr. Lewis enforces the expense policy consistently and without favoritism — including CEO expenses.

## When to Use
- An employee submits an expense report for reimbursement
- Monthly close — reviewing and approving all expense reports for the period
- A suspicious expense pattern is identified
- The expense policy needs to be drafted or updated
- CEO submits expenses for the quarter

## Expense Audit Framework

```
Expense policy standards (MBL portfolio default — customize per entity):

  MEALS:
    Business purpose required: Who attended (names and company), business purpose discussed
    Per-person limit: $75/person for business meals (client entertainment); $40/person for team meals
    Alcohol: Maximum $25/person; never if with a patient or in a clinical setting (Allevio)
    No personal meals: Regular meals while at home/office are not reimbursable
    Meals during travel: $60/day per diem or actual reasonable expenses with receipts
    
  TRAVEL — AIR:
    Domestic: Coach class required unless flight >4 hours (economy plus or business permitted >4 hours)
    International: Business class permitted for flights >8 hours (CEO approval)
    Advance booking: Book at least 14 days in advance; last-minute premium must be explained
    
  TRAVEL — HOTEL:
    Standard: Actual cost; reasonable business hotel (not luxury hotels without business reason)
    Per-night guidance: ≤$250/night in most markets; up to $350 in high-cost markets (NYC, SF, Chicago)
    Dr. Lewis reviews any hotel >$300/night
    
  TRAVEL — GROUND:
    Rental car: Economy or compact; GPS and insurance add-ons not reimbursed unless justified
    Mileage: IRS standard mileage rate (2024: $0.67/mile for business)
    Uber/rideshare: Actual cost; reasonable
    
  ENTERTAINMENT:
    Client/business entertainment: CEO approval required; business purpose must be documented
    Not reimbursable: Spouses/family included in entertainment unless CEO-approved; sporting events without client attendance; personal celebrations
    
  HOME OFFICE / TECHNOLOGY:
    Home internet: Not reimbursed (standard)
    Home office equipment: Requires CEO approval; policy may change for remote-first roles
    Cell phone: Company stipend if applicable per employment agreement
    
  RECEIPTS:
    Required for all expenses ≥$25
    Missing receipt: Requires written explanation + supervisor approval
    Credit card statement alone is NOT a receipt — itemized receipt required
    
Expense report audit steps:

  Step 1 — COMPLETENESS CHECK:
    ☐ All expenses have a business purpose description
    ☐ Receipts attached for all expenses ≥$25
    ☐ Missing receipt explanation provided (if applicable)
    ☐ Manager approval obtained before submission to finance
    
  Step 2 — POLICY COMPLIANCE CHECK:
    ☐ Meal per-person limits not exceeded
    ☐ Hotel per-night limits not exceeded (or explanation provided)
    ☐ Air class appropriate for flight length
    ☐ No personal items included (household goods, personal clothing, personal subscriptions)
    ☐ No spouse/family expenses (unless CEO-approved)
    
  Step 3 — DUPLICATE CHECK:
    Search prior expense reports: Same expense submitted in a prior period?
    Search AP system: Same receipt submitted via bill.com as a company invoice?
    Check credit card statement: Expense already paid by the company card?
    
  Step 4 — RECEIPT VALIDATION:
    Confirm receipt is original (not a screenshot of a screenshot)
    Confirm amount on receipt matches amount claimed
    Confirm date on receipt falls within the claimed expense period
    Confirm vendor on receipt is consistent with the described expense
    
  Step 5 — APPROVE OR FLAG:
    Approved: Add to the payment batch (next payroll or off-cycle reimbursement)
    Minor flag: Note the issue; approve the valid portion; request documentation for the flagged portion
    Policy violation: Reject the specific expense; explain why; request resubmission
    Potential fraud: Escalate to Dr. Lewis (do not discuss with the employee first)
    
  CEO expense report (reviewed by Dr. Lewis):
    Same policy applies to CEO as all other employees — no exceptions
    Dr. Lewis reviews CEO expense reports and presents any policy questions to Matt Mathison
    
  Expense policy document:
    Written policy should be acknowledged by all employees annually (signed or digital confirmation)
    New hires acknowledge at onboarding
    Policy updates distributed to all employees when changed
```

## Output Format

```markdown
# Expense Report Audit — [Employee Name] [Period]
**Entity:** [Company] | **Submitted:** [Date] | **Audited by:** Dr. Lewis / Controller
**Total claimed:** $[X] | **Total approved:** $[X] | **Total rejected:** $[X]

---

## Expense Detail

| Date | Description | Business purpose | Amount claimed | Receipt | Policy check | Approved amount | Notes |
|------|------------|----------------|--------------|---------|-------------|----------------|-------|
| [6/3] | Business dinner — Client XYZ | Discuss Q3 renewal | $186 (2 people) | ✅ | $150 limit (2 × $75) | $150 | Over limit by $36 — see flags |
| [6/5] | Hotel — Chicago | Client visit | $310/night × 2 = $620 | ✅ | >$250 limit | $620 | High-cost market; approved |
| [6/7] | Mileage — 145 miles | Drive to client site | $97.15 (145 × $0.67) | Google Maps | ✅ | $97.15 | |
| [6/8] | Amazon — kitchen items | "Office supplies" | $42 | ✅ | ❌ Personal | $0 | Kitchen items not reimbursable |
| **Total** | | | **$[X]** | | | **$[X]** | |

---

## Flags

| Expense | Issue | Resolution |
|---------|-------|-----------|
| Business dinner $186 | Exceeded $75/person limit by $36 | Approved $150; rejected $36 |
| Amazon kitchen items $42 | Personal expense — not reimbursable | Rejected $42 |

---

## Duplicate Check

**Duplicate found:** ❌ None / ✅ [Date] receipt submitted in [prior month] expense report

---

## Approval Decision

**Total approved:** $[X]
**Total rejected:** $[X] — [reasons above]
**Reimbursement method:** [Next payroll / Off-cycle / AP payment]
**Employee notified:** ✅ [Date] — email explaining approved and rejected amounts

---

## Policy Violations Log

| Employee | Date | Violation | Amount rejected | Repeat offense? |
|---------|------|-----------|----------------|----------------|
| [Name] | [Date] | Meal over per-person limit | $36 | [1st / 2nd / 3rd] |
```

## Output Contract
- Apply the expense policy to everyone including the CEO — the expense policy is a company-wide control; if the CEO submits expenses that violate the policy, Dr. Lewis applies the same standard; if the CEO has $200 in personal items on an expense report, Dr. Lewis rejects those items; if the CEO has a legitimate business reason that exceeds the standard policy limits (e.g., a last-minute flight at premium prices because of a deal that required immediate travel), Dr. Lewis approves it with the documented business reason; but Dr. Lewis does not approve CEO expense violations simply because the CEO submitted them; if the CEO disagrees, the dispute is escalated to Matt Mathison; the integrity of the expense process requires that no employee is above the policy
- Reject clearly personal expenses without guilt — personal items on expense reports (household items, personal subscriptions, family meals, personal clothing) are not ambiguous; they should be rejected clearly and promptly; Dr. Lewis communicates the rejection professionally: "I've approved $[X] of this expense report. I've excluded $[Y] for the kitchen supplies — those don't meet the business expense policy. Please remove them from future submissions or check with me in advance if you're unsure whether an expense qualifies." The rejection is not punitive; it is consistent policy enforcement; a pattern of personal expenses on business reports (3+ incidents) is escalated to the CEO (or Matt Mathison for CEO expense issues)
- Document the receipt requirement before the event, not after — the most common expense audit problem is missing receipts for meals and entertainment, because employees don't realize they need the itemized receipt (not just the credit card slip) until the auditor asks for it; Dr. Lewis includes receipt requirements in the expense policy and reminds employees at onboarding; for expenses >$100, Dr. Lewis may request that employees photograph receipts immediately and submit them within 48 hours rather than accumulating monthly; this prevents the "I can't find the receipt" situation that is technically a policy violation
- HITL required: Controller performs the initial expense audit checklist; Dr. Lewis reviews all expense reports >$500 and all CEO expense reports; any suspected fraud (fabricated receipts, systematic duplicate submissions) escalated to Dr. Lewis immediately and to Matt Mathison if confirmed; expense policy changes require CEO approval; third-offense policy violations escalated to CEO for HR action

## System Dependencies
- **Reads from:** Employee expense reports (expense system, email, or paper); receipts (attached to reports); prior expense reports (duplicate check); AP system (duplicate company invoice check); credit card statement (check if expense already paid by company card); IRS mileage rate (irs.gov, updated annually)
- **Writes to:** Approved expense list (added to AP payment batch or payroll reimbursement); QuickBooks (expense entries after approval); policy violation log; employee communication (approved/rejected notification); HR escalation (repeat violations)
- **HITL Required:** Controller audits all reports; Dr. Lewis reviews all reports >$500 and all CEO reports; suspected fraud escalated to Dr. Lewis immediately; policy violations (3rd offense) escalated to CEO for HR action; Matt Mathison notified if CEO expense violations or suspected fraud confirmed

## Test Cases
1. **Golden path:** Controller submits a $380 expense report (3-day out-of-town clinic visit) → Controller review: Day 1 hotel $228/night ✅ (within $250 limit); Day 2 hotel $228/night ✅; Day 1-3 per diem meals $60/day × 3 = $180 ✅; Uber rides $42 ✅; parking $22 ✅ (receipt attached); total: $228 + $228 + $180 + $42 + $22 = $700; report says $380 — discrepancy; re-check: report only covers Day 1 hotel and meals ($228 + $60 + $42 + $22 + $28 parking = $380); Days 2-3 hotel being submitted separately; within policy; all receipts attached; business purpose: annual conference (documented); approved: $380; reimbursement via next payroll
2. **Edge case:** An employee submits a receipt that appears to have been altered (amount appears different from the printed text) → Dr. Lewis flags the receipt: the printed amount at the top says $64 but the handwritten total at the bottom says $84; the reported expense is $84; this is potentially a fraudulent receipt; Dr. Lewis does not discuss with the employee yet; Dr. Lewis investigates: can the restaurant be called to confirm the check amount for that date? If the restaurant confirms the check was $64, the employee altered the receipt; Dr. Lewis escalates to the CEO immediately; the CEO decides on HR action; if the restaurant cannot confirm, Dr. Lewis requires the employee to provide the original credit card statement showing the charge amount; if the card shows $64, the report is adjusted and the employee is counseled; if the card shows $84, the receipt may not have been altered (printed vs. handwritten total discrepancy is common)
3. **Adversarial:** CEO submits a $4,200 quarterly expense report including $1,800 in family vacation expenses with a business meeting scheduled during the trip → Business portion of a mixed personal/business trip is reimbursable; family vacation expenses are not; Dr. Lewis reviews the itinerary: the business meeting was 1 day of a 5-day trip; allocating: hotel 1 of 5 days = 20% business; flights 100% if they would not have taken the trip without the meeting (reasonable for a destination meeting), or 50% if the meeting was added to an existing planned vacation; Dr. Lewis applies the allocation: flights $800 × 80% business = $640 approved; hotel $200/night × 1 business day = $200 approved; meals 1 day = $60 approved; other hotel nights and family expenses = $0; total approved: $900; rejected: $900 (the remaining vacation hotel); Dr. Lewis communicates the allocation to the CEO; if the CEO disagrees, the dispute goes to Matt Mathison

## Audit Log
All expense reports retained with receipts for 7 years (IRS requires business expense records for 3 years minimum; Dr. Lewis retains 7 for safety). Audit approval/rejection decisions retained. Policy violation log retained. CEO expense review records retained. Fraud escalations retained permanently. Employee acknowledgment of expense policy retained.

## Deprecation
Retire when each portfolio company has a controller who owns expense report processing — with Dr. Lewis reviewing all reports >$500 and all CEO reports, and Matt Mathison reviewing if CEO expense violations are identified.
