---
name: financial-policy-builder
description: "Build financial policies and procedures. Use when the user says 'financial policy', 'expense policy', 'procurement policy', 'financial procedures', 'purchasing policy', 'travel policy', 'reimbursement policy', 'signing authority', 'delegation of authority', 'AP policy', 'financial controls policy', 'write the expense policy', or 'build a financial policy'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--policy <expense|procurement|signing-authority|ap|all>]"
---

# Financial Policy Builder

Build clear, right-sized financial policies for MBL portfolio companies — the documented rules that govern how money is spent, approved, and accounted for. Good financial policies are short, specific, and actually followed. Bad ones are 40-page documents that no one reads and that don't match how the company actually operates. The goal is a policy set that an employee can understand in 10 minutes and that meaningfully reduces financial risk.

## When to Use
- A new portfolio company doesn't have documented financial policies
- The current policies are outdated, missing key provisions, or not being followed
- Matt Mathison asks "do we have a policy for [expense / purchasing / signing authority]?"
- An audit revealed that policies are not documented
- A control gap assessment identified missing policy as a root cause
- A financial incident occurred that a policy would have prevented

## Policy Design Principles

```
Right-sized for the business:
  - A 5-person company doesn't need a 30-page procurement policy
  - A $10M company needs more rigor than a $1M company
  - Policies should match actual business risk, not theoretical best practice

Written to be followed, not filed:
  - Short enough to read in 10 minutes
  - Specific enough to answer "what do I do when [situation]?"
  - Includes examples of what's allowed and what's not

Mandatory policies for every MBL portfolio company:
  1. Expense reimbursement policy (T&E, out-of-pocket)
  2. Purchasing / procurement policy (who can buy what)
  3. Signing authority / delegation of authority matrix
  4. Vendor setup and payment policy (Bill.com workflow)
  5. CapEx authorization policy
  6. Financial reporting and close calendar
```

## Output Format

### Expense Reimbursement Policy

```markdown
# Expense Reimbursement Policy — <Company Name>
**Effective date:** <Date> | **Approved by:** Matt Mathison
**Applies to:** All employees and contractors

---

## Policy Statement
[Company] reimburses employees for necessary, reasonable business expenses incurred in the course of their duties. Personal expenses are not reimbursable. All expenses require appropriate documentation and approval.

## Covered Expenses and Limits

| Category | Limit | Documentation required |
|---------|-------|----------------------|
| **Meals — solo** | $50/meal | Receipt + business purpose |
| **Meals — client/prospect** | $100/person | Receipt + attendees + business purpose |
| **Meals — team** | CEO / Dr. Lewis approval | Receipt + attendees + occasion |
| **Hotels** | $250/night (major cities) / $175/night (standard) | Receipt; lowest available rate |
| **Airfare** | Coach class domestic | Receipt; book ≥7 days in advance |
| **Business class** | CEO approval required | Email approval before booking |
| **Rideshare (Uber/Lyft)** | Reasonable; no luxury tier | Receipt; business destination |
| **Mileage (personal vehicle)** | IRS rate ([rate]¢/mile) | Mileage log with destinations |
| **Parking** | Actual cost | Receipt if >$25 |
| **Conference registration** | Pre-approved | Approval email |
| **Office supplies** | <$100 without approval | Receipt |

## Not Reimbursable
- Personal travel, personal entertainment, family expenses
- Traffic fines, parking tickets
- Alcohol exceeding $50 per event without prior approval
- Items available via company accounts (order through the company, not personal card)

## Submission and Approval
- Submit within 30 days of expense
- Submit via [expense report system / email to Dr. Lewis]
- Approval: Dr. Lewis approves all expense reports
- Payment: within 10 business days of approval via payroll / ACH

## Receipt Requirements
- Required for all expenses >$25
- Missing receipts: one grace per quarter; second missing receipt = not reimbursed

**Policy questions:** Contact Dr. John Lewis — jlewis@mblpartners.com
```

---

### Delegation of Authority / Signing Authority Matrix

```markdown
# Delegation of Authority — <Company Name>
**Effective date:** <Date> | **Approved by:** Matt Mathison

| Transaction type | <$1,000 | $1K-$10K | $10K-$25K | >$25K |
|----------------|---------|---------|----------|-------|
| Vendor invoices (Bill.com) | Controller | Dr. Lewis | Dr. Lewis | Matt Mathison |
| Expense reports | Controller | Dr. Lewis | Dr. Lewis | Matt Mathison |
| Capital expenditures | N/A | Dr. Lewis | Matt Mathison | Matt Mathison + Board |
| Contracts / agreements | CEO | Dr. Lewis | Matt Mathison | Matt Mathison + Legal |
| Hiring decisions | — | Dr. Lewis (per budget) | CEO | Matt Mathison |
| Distributions / dividends | — | — | — | Matt Mathison + Board |
| New bank accounts | — | — | — | Matt Mathison |
| New vendor setup | Controller (after Dr. Lewis review) | | | Matt Mathison (new vendor >$10K/year) |

**Emergency purchases:** CEO may approve up to $2,500 in emergency situations; must notify Dr. Lewis within 24 hours.
```

---

### Vendor Setup and Payment Policy

```markdown
# Vendor Setup and Payment Policy — <Company Name>
**Effective date:** <Date>

## New Vendor Setup Requirements
1. EIN or SSN collected (W-9 required before first payment)
2. Banking information verified by phone call to vendor's main line — not by email
3. Bill.com entry completed by [Controller / Dr. Lewis]
4. Dr. Lewis review before first payment

## Invoice Approval Workflow (Bill.com)
- All invoices entered in Bill.com
- Approval thresholds: [see Delegation of Authority matrix]
- No payment without Bill.com approval completion
- ACH preferred over checks for all recurring vendors

## Payment Timing
- Pay on the due date — not early unless a discount >2% is available
- Early payment discounts >2%: always take

## Fraud Prevention
- Never change vendor banking information based on email — always call
- Duplicate invoices: check by invoice number before approval
- If a vendor requests unusual payment methods (wire to a new account): call and verify
```

## Output Contract

```markdown
# Financial Policies — Summary Table — <Company Name>

| Policy | Effective | Approved by | Review date | Location |
|--------|-----------|------------|------------|---------|
| Expense Reimbursement | [Date] | Matt Mathison | Annual — [Date] | SharePoint/Finance/Policies/ |
| Delegation of Authority | [Date] | Matt Mathison | Annual — [Date] | |
| Vendor Setup and Payment | [Date] | Matt Mathison | Annual — [Date] | |
| CapEx Authorization | [Date] | Matt Mathison | Annual — [Date] | |
| Financial Close Calendar | [Date] | Dr. Lewis | Annual — [Date] | |
```

## Output Contract (Skill)
- Every policy must have a clear approval statement — a policy that no one signed is not a policy; every financial policy must show Matt Mathison's approval date; policies without approval status are unenforced
- Policies must be short enough to actually read — if a policy requires 30 minutes to read, it won't be read; every policy produced should be readable in under 10 minutes; brevity is a policy design requirement, not a feature
- Delegation of authority always includes Matt Mathison's threshold — every policy must be clear about what requires Matt Mathison's approval; this is non-negotiable for financial decisions above $25K and for all strategic decisions (new bank accounts, distributions, new entities)
- Annual review required — policies that aren't reviewed become stale and eventually contradict how the company actually operates; every policy must have an annual review date and be updated when business conditions or thresholds change
- HITL required: Dr. Lewis drafts all financial policies; Matt Mathison approves before distribution; policies are distributed to all employees with confirmation of receipt; any policy exception requires Matt Mathison approval

## System Dependencies
- **Reads from:** Current financial procedures (informal or formal), audit findings, control gap assessments, industry benchmark policies
- **Writes to:** Financial policy documents (SharePoint/Finance/Policies/); employee handbook; new hire orientation materials
- **HITL Required:** Dr. Lewis drafts; Matt Mathison approves; all employees acknowledge receipt; policy exceptions require Matt Mathison

## Test Cases
1. **Golden path:** Allevio financial policy package (new company, no existing policies) → Dr. Lewis drafts: Expense Reimbursement, Delegation of Authority, Vendor Setup, CapEx Authorization; each 1-2 pages; reviewed with CEO for operational fit; Matt Mathison reviews and approves all 4 by email; distributed to all 6 employees via SharePoint link with acknowledgment form; CPA reviews for audit compatibility; policies live on SharePoint with effective date and review schedule; annual review scheduled for following June
2. **Edge case:** An employee has been submitting expense reports that comply with a policy that was never formally approved (the CEO made verbal rules) → formalize the existing practice: "The current informal expense policy is being formalized. I'll document it as written policy for Matt Mathison's review and approval. Any practices that are inconsistent with MBL standards (spending limits, approval thresholds) will be updated in the formal version. Employees will be notified of any changes from current practice." Do not retroactively apply a stricter formal policy to already-reimbursed expenses; apply the new policy from its effective date
3. **Adversarial:** A CEO wants to set their own approval limit at $50K without Matt Mathison oversight → the delegation of authority is not negotiable by the CEO unilaterally; it is set by Matt Mathison; respond: "The delegation of authority limits are set by Matt Mathison as managing partner. A CEO approval limit of $50K without Matt Mathison oversight is outside the standard MBL governance structure. If you believe the current threshold creates operational inefficiency, I can bring that to Matt Mathison with specific examples for his consideration — but the threshold itself is his decision to make, not mine to adjust."

## Audit Log
All policy documents retained with version history and approval dates. Employee acknowledgments retained. Policy exceptions documented with Matt Mathison approval. Annual review completions retained. Policy-related incidents (claims that someone "didn't know the policy") documented.

## Deprecation
Retire when portfolio companies have dedicated HR and legal functions with employee handbooks, documented policy management processes, and annual policy review cycles that operate independently of Dr. Lewis's direct authorship.
