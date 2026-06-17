---
name: fin-ops-ar-invoicer
description: "Create and send customer invoices — billing schedule management and invoice accuracy. Use when the user says 'create an invoice', 'send an invoice', 'billing', 'invoice the customer', 'AR invoicing', 'invoice management', 'billing schedule', 'send a bill', 'customer invoice', 'recurring billing', 'invoice accuracy', 'billing process', 'generate invoice', 'invoice template', 'monthly billing', 'invoice the client', or 'accounts receivable invoicing'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--customer <name>] [--amount <$>] [--type <one-time|recurring|milestone>]"
---

# AR Invoicer

Create and send accurate, timely customer invoices for MBL portfolio companies — managing the billing schedule, invoice accuracy, and delivery to drive fast payment. Invoicing is the trigger for all revenue realization: a service delivered but not invoiced is EBITDA left on the table. At PE portfolio scale, billing timeliness and accuracy directly drive DSO (days sales outstanding) — the most controllable AR metric. A practice that invoices 10 days late, on average, has added 10 days to its DSO with no operational benefit; the same EBITDA arrives 10 days later. Dr. Lewis enforces billing discipline as part of the VCP.

## When to Use
- Creating invoices for services delivered
- Setting up recurring billing for ongoing customers
- Billing schedule management — what needs to go out this week?
- Invoice accuracy review — before sending to a major customer
- Healthcare context: Allevio billing goes through Marshall Medical Billing (this skill covers direct/employer billing, not payer claims)

## AR Invoicing Framework

```
Invoice timing rules (the most important billing discipline):

  Immediate billing (bill same day as service/delivery):
    Project-based services with clear completion milestones
    Direct employer/employer group billing for healthcare services (Allevio PMPM contracts)
    Column6 campaign billings at end of flight (or as contracted schedule)
    
  Recurring billing (bill on consistent schedule regardless of communication):
    Monthly retainer or PMPM contracts: Bill on the 1st of each month for the current month
    Monthly subscriptions or recurring services: Bill on contract anniversary date
    Do not wait for customer approval to invoice on a recurring schedule — bill per the contract
    
  Milestone-based billing (bill when milestone is confirmed complete):
    Defined in the contract; requires internal confirmation that milestone is complete
    Do not bill before milestone is complete; do not wait more than 24 hours after completion
    
  Late billing cost: Each day of billing delay adds approximately 1 day to DSO
    At $100K/month revenue: 1 day of billing delay = $3.3K of cash delayed for the invoice cycle
    Over a year: Average 5-day billing delay = $1.2M of cash circulating in the billing gap
    This is not theoretical — it is recoverable by enforcing billing timeliness

Invoice accuracy requirements:

  Required fields on every invoice:
    Invoice number: Unique; sequential; cannot be reused
    Invoice date: Date of invoice creation (not date of service for professional services)
    Due date: Net 30 unless contract specifies otherwise; never leave blank
    Bill to: Customer legal name and billing contact exactly as they appear in the contract
    Service description: Clear description of what was delivered; not a generic line item
    Amount: Matches the contract rate or purchase order exactly
    Payment instructions: Bank/ACH details or mailing address for check
    
  Service description quality:
    ❌ Weak: "Professional services — June"
    ✅ Strong: "Primary care management services — June 2026 (Monthly rate per contract dated 2025-01-01)"
    ❌ Weak: "Campaign — Flight 3"
    ✅ Strong: "CTV campaign — Flight 3 (June 1-30, 2026): 12M impressions delivered per delivery report #DR-2026-06"
    
  Amount verification:
    Confirm invoice amount matches the contract rate or PO
    For variable-rate invoices: Attach supporting documentation (delivery report, usage data)
    For expense reimbursements: Attach receipts before sending
    
Allevio-specific — Employer PMPM Billing:
  Employer group PMPM (per member per month) contracts are direct-billed (not through payers)
  Bill: PMPM rate × member count as of 1st of the month
  Invoice date: 1st of the month
  Supporting documentation: Member roster (as of 1st) attached to invoice
  Due date: Net 15 (faster than standard; employer groups typically pay within 10-15 days)
  
Column6/Siprocal — Advertiser Campaign Billing:
  Advertiser billing trigger: End of campaign flight; or monthly for ongoing campaigns
  Invoice support: Delivery report from ad server (impressions, CPM, total spend)
  Invoice amount: Delivery report total × Column6 net rate per agreement
  Discrepancy tolerance: If advertiser's delivery numbers differ >5% from Column6's report — investigate before invoicing; agree on numbers first
```

## Output Format

```markdown
# Invoice — [Company] to [Customer]
**Invoice #:** [N] | **Invoice date:** [Date] | **Due date:** [Date]

---

## INVOICE

**From:** [Company legal name]
[Company address]
[Tax ID]

**Bill to:** [Customer legal name]
[Billing contact name and email]
[Customer billing address]

---

| Description | Period/Units | Rate | Amount |
|------------|-------------|------|--------|
| [Primary care management services] | [June 2026] | $[X]/month | $[X] |
| [OR: CTV campaign — Flight 3 (June 1-30)] | [12M impressions] | $[X] CPM net | $[X] |

**Subtotal:** $[X]
**Tax:** $[X] / Not applicable
**Total due:** $[X]

**Payment due:** [Date] (Net [30])

---

## Payment Instructions

**ACH (preferred):**
Bank: [Name]
Routing: [N]
Account: [N]
Account name: [Company name]

**Check payable to:** [Company legal name]
Mail to: [Address]

**Questions:** [Controller name] — [email] — [phone]

---

## Supporting Documentation Attached

☐ Member roster (Allevio PMPM — as of [Date])
☐ Delivery report (Column6 — [Report # and date])
☐ Project milestone confirmation (if milestone-based)

---

## Internal Invoice Record

| Field | Value |
|-------|-------|
| Billed by | [Controller] |
| Delivery method | [Email to billing@customer.com / Portal upload] |
| Confirmed delivered | [Yes/Pending] |
| Contract reference | [Contract dated / PO #] |
| Rate verification | ✅ Matches contract |
```

## Output Contract
- Invoice on time per the billing schedule — an invoice that goes out 5 days late is 5 days of DSO added with no business reason; Dr. Lewis enforces billing timeliness: recurring invoices go out on the 1st; project completion invoices go out within 24 hours of milestone completion; campaign flight invoices go out within 2 business days of flight end; if the billing schedule is not being followed, Dr. Lewis diagnoses the root cause (does the controller not have a billing calendar? Does the CEO need to approve before sending? Does the delivery data take too long to compile?) and fixes the process, not just the symptom
- Service description is specific and contract-referenced — a vague invoice description causes customer disputes that delay payment; when a customer's AP department receives an invoice that says "Professional services — June," they may not be able to match it to a purchase order or budget line without asking their internal team, which adds days; an invoice that says "Primary care management services — June 2026, monthly rate per services agreement dated January 1, 2025" can be processed immediately; Dr. Lewis requires specific, contract-referenced descriptions on all invoices
- Amount matches the contract exactly — invoicing at a different amount than the contract (even slightly) creates a dispute; the customer's AP team will flag the discrepancy, request documentation, and delay payment while the discrepancy is resolved; Dr. Lewis verifies that the invoice amount matches the current contract rate before the invoice is sent; for variable-rate invoices (PMPM with changing member counts, campaign delivery with variable impression volume), the supporting documentation is attached to the invoice so the customer can verify without requesting it
- HITL required: Controller creates invoices using the billing schedule and customer contracts; Dr. Lewis reviews any invoice >$10,000 for accuracy before it is sent; CEO reviews and approves any new billing arrangement or billing at a rate different from the existing contract; Matt Mathison is notified of any new major customer relationship that generates invoices >$50K/month

## System Dependencies
- **Reads from:** Customer contracts (SharePoint Legal), billing schedule (controller calendar), member roster (Allevio PMPM), delivery reports (Column6 ad server), QuickBooks open customer balance
- **Writes to:** QuickBooks AR (invoice posted); Bill.com or email delivery (invoice sent); AR aging report; customer payment portal if applicable
- **HITL Required:** Controller creates invoices; Dr. Lewis reviews invoices >$10K; CEO approves new billing arrangements; Matt Mathison notified of new major customer contracts

## Test Cases
1. **Golden path:** Allevio employer group PMPM billing — monthly cycle → Billing calendar: Invoice on 1st of month; employer group has 145 members as of June 1; PMPM rate: $85/member/month (per contract); invoice amount: 145 × $85 = $12,325; due date: June 15 (Net 15); member roster as of June 1 attached; invoice description: "Primary care management services — June 2026 (145 enrolled members × $85.00 PMPM per services agreement dated 2025-01-01)"; Dr. Lewis reviews (>$10K); rate ✅ matches contract; member count ✅ matches June 1 roster; invoice emailed to benefits@employer.com June 1 at 8am; delivery confirmed; payment received June 13 ($12,325 ✅)
2. **Edge case:** Column6 flight ends and the advertiser's reporting shows 11.2M impressions but Column6's ad server shows 12.1M impressions → Do not invoice at either number without resolving; 8% discrepancy is above the 5% tolerance; Dr. Lewis contacts the advertiser's agency traffic manager and Column6's ad ops team; both pull logs for the same time period; discrepancy typically resolves at one of: publisher-side filtering (advertiser using different attribution window); fraud filtering (one or both are filtering invalid traffic differently); once agreed, invoice at the agreed number; if the agreed number is 11.6M (split-the-difference negotiation), invoice at 11.6M with the discrepancy resolution note attached; do not hold payment indefinitely for an unresolved discrepancy — escalate to CEO and Matt Mathison if unresolved after 5 business days
3. **Adversarial:** A customer's AP team says "our terms are Net 60, not Net 30, so we're paying on Day 60" → Check the contract: if the contract specifies Net 30, the customer's internal AP terms are not the governing terms; Dr. Lewis confirms the contract language and responds: "Our agreement specifies Net 30 payment terms. Our invoice reflects those terms. Can you confirm when we can expect payment by [due date]?"; if the customer insists on Net 60 and is a material revenue source, Dr. Lewis escalates to the CEO — this is a commercial relationship decision, not an AP processing decision; if the contract is ambiguous, Dr. Lewis resolves the ambiguity in writing before the next invoice cycle; going forward, all new contracts specify payment terms explicitly

## Audit Log
All invoices retained in QuickBooks and document archive permanently. Invoice delivery confirmation retained. Contract rate verification retained. Delivery report attachments retained (Column6). Member roster snapshots retained (Allevio PMPM). Disputed invoice records retained with resolution.

## Deprecation
Retire when each portfolio company has a controller who owns the billing process — with Dr. Lewis reviewing invoices >$10K and Matt Mathison notified of new major customer billing arrangements.
