---
name: finance-allevio-billing-manager
description: "Manage employer billing operations for Allevio. Use when the user says 'Allevio billing', 'employer billing', 'PMPM billing', 'send invoice Allevio', 'Allevio invoice', 'employer invoice', 'bill the employer', 'monthly billing run', 'billing cycle Allevio', 'billing reconciliation Allevio', 'employer payment', 'employer pay', 'employer hasn't paid', 'billing dispute Allevio', 'invoice dispute Allevio', 'incorrect billing', 'enrollment billing', 'billing for enrolled employees', 'bill employees at employer', 'Allevio payment received', 'employer payment terms', 'net 30 Allevio', 'monthly invoice Allevio', 'billing automation', 'billing system Allevio', 'Allevio accounts receivable setup', 'generate Allevio invoice', 'who gets billed at Allevio', 'HR contact billing', or 'employer billing contact'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--employer <code>] [--action <generate|send|reconcile|dispute>] [--period <month-year>]"
---

# Finance Allevio Billing Manager

Manage employer billing operations for Allevio — generating monthly PMPM invoices, distributing to employer billing contacts, tracking payment receipt, and managing billing disputes. Allevio billing is highly sensitive: every invoice must use aggregate employer-level data only (enrolled employee count × PMPM rate = invoice total), never individual employee names or health data. The billing process directly drives Allevio's DSO and cash flow.

## When to Use
- Monthly billing run (generate and send PMPM invoices to all enrolled employers)
- Tracking employer payment receipt
- Billing dispute from an employer
- Retroactive enrollment adjustment (invoice correction)

## Allevio Billing Framework

```
BILLING CYCLE:
  Run date: 1st of each month (or first business day)
  Invoice period: current month's services
  Note: bill in advance for the month of service (not in arrears)
    "January 2027 invoice" sent on January 1 for January services
  Payment terms: Net 30 (payment due 30th of the month or first business day of next month)
  
INVOICE STRUCTURE (HIPAA-COMPLIANT FORMAT):
  Invoice to: employer HR contact (name and email on file)
  Invoice includes:
    Employer code (not company name if sensitive — confirm format with entity CEO)
    Billing period: January 1–31, 2027
    Enrolled employee count: XX employees
    PMPM rate: $XXX per enrolled employee per month
    Invoice total: $X,XXX
    Payment due: January 30, 2027
    Payment instructions: ACH preferred (bank details on invoice) OR check
  Invoice NEVER includes:
    Individual employee names
    Employee IDs or SSNs
    Health plan tier (individual vs. family — not applicable for Allevio MSO PMPM)
    Utilization data, diagnoses, or any clinical information
    
BILLING DISTRIBUTION:
  Method: email from Allevio billing address to employer HR contact
  CS lead provides billing contact update if employer HR contact changes
  Confirmation: Dr. Lewis sends and tracks confirmation receipts
  
PAYMENT TRACKING (QuickBooks AR):
  Invoice created in QuickBooks on run date
  Payment received: matched to invoice in QuickBooks; AR cleared
  DSO target: <40 days (Allevio benchmark)
  30-day: gentle reminder if not paid (automated or CS-sent)
  45-day: entity CEO or CS lead direct outreach
  60-day+: finance-collections-manager escalation protocol
  
BILLING DISPUTES:
  Employers may dispute enrollment count (most common: "we had fewer employees enrolled")
  Response: CS lead verifies enrollment count with employer → Dr. Lewis issues corrected invoice if warranted
  Billing dispute is never about clinical services → refer all clinical questions to CS lead or clinical team
  Dispute resolution target: 5 business days
  
RETROACTIVE BILLING ADJUSTMENTS:
  Enrollment count corrected: issue credit memo (if over-billed) or supplemental invoice (if under-billed)
  PMPM rate change at renewal: effective as of contract renewal date; communicate 30 days in advance
  New employer proration: first invoice includes prorated amount (not full month)
```

## Output Format

```markdown
# Allevio Monthly Billing Run — [Month Year]
**Run date:** [Date] | **Billing contact:** Dr. Lewis | **HIPAA:** Aggregate-only ✅

---

## Invoices Generated

| Employer Code | Enrolled EE | PMPM | Invoice Amount | Sent To | Status |
|--------------|------------|------|---------------|---------|--------|
| [EMP-001] | XX | $XXX | $X,XXX | [HR Contact Email] | Sent ✅ |
| [EMP-002] | XX | $XXX | $X,XXX | [HR Contact Email] | Sent ✅ |
| **Total MRR Billed** | | | **$XX,XXX** | | |

*No individual employee names or health data in any invoice. HIPAA format verified.*

---

## Payment Tracking (As of [Date])

| Employer Code | Invoice Amount | Payment Received | Days Outstanding | Status |
|--------------|--------------|----------------|-----------------|--------|
| [EMP-001] | $X,XXX | $X,XXX [Date] | 8 | ✅ |
| [EMP-003] | $X,XXX | Pending | 22 | On track |
| [EMP-006] | $X,XXX | Pending | 38 | Reminder sent |
```

## Output Contract
- Every Allevio invoice is reviewed for HIPAA compliance before it is sent — Dr. Lewis reviews the invoice template each month to confirm that individual employee names are not included; that enrolled employee count is shown as a number only (not a list); that no health conditions, utilization data, or clinical information is present; this takes less than 60 seconds per invoice run but prevents a HIPAA breach from occurring in the billing process; if Allevio's billing system generates an invoice that includes more than aggregate data, Dr. Lewis halts the billing run and escalates to the entity CEO before sending; a HIPAA breach in employer billing communications is a material business risk for Allevio's employer relationships
- DSO <40 days is a financial health metric, not just an accounting metric — when Allevio's DSO rises above 40 days, it means employers are slow-paying, which compresses Allevio's cash position; at 45 days, the CS lead needs to reach out because the relationship context (not just the invoice) matters; at 60 days, collections protocol begins; Dr. Lewis tracks DSO monthly and reports it in the HIVE financial package; an Allevio DSO creeping toward 50-55 days is a cash flow warning sign that Dr. Lewis surfaces to the entity CEO before it becomes a crisis
- HITL required: monthly billing run → Dr. Lewis generates and sends; HIPAA format → Dr. Lewis verifies before each send; billing dispute → CS lead + entity CEO review before issuing correction; credit memo > $3K → entity CEO approves; new employer billing contact → CS lead confirms; PMPM rate change → entity CEO + Dr. Lewis notify employer 30 days in advance; DSO >40 days → entity CEO notified; 60+ day past due → finance-collections-manager protocol; Matt Mathison receives DSO in monthly portfolio dashboard

## System Dependencies
- **Reads from:** Allevio enrollment system (enrolled EE counts by employer; billing contact info); employer contracts (PMPM rates; payment terms; renewal dates); finance-allevio-revenue-recognition (revenue amounts for cross-reference); QuickBooks (AR accounts; invoice creation)
- **Writes to:** QuickBooks (invoices; AR entries; payment receipts; credit memos); employer billing email records (SharePoint → Allevio → Finance → Billing → [Month]); finance-ar-manager (AR aging inputs); finance-collections-manager (60+ day accounts); HIPAA billing format verification records
- **HITL Required:** Monthly run → Dr. Lewis generates; HIPAA check → Dr. Lewis verifies; dispute → CS lead + entity CEO; credit memo >$3K → entity CEO approves; new billing contact → CS lead confirms; PMPM rate change → entity CEO + Dr. Lewis notify; DSO >40 days → entity CEO; 60+ days → collections protocol

## Test Cases
1. **Golden path:** Allevio July 2026 billing run (July 1). 8 employers enrolled. Dr. Lewis pulls enrollment counts from CS lead aggregate report (received June 30). Reviews invoice template: employer code ✅; enrolled EE count (aggregate number only) ✅; PMPM rate ✅; invoice total ✅; no individual names ✅; no clinical data ✅. Generates 8 invoices in QuickBooks. Sends to employer HR billing contacts July 1. Total MRR billed: $48,240. By July 15: 6 of 8 employers have paid. July 22: reminder sent to 2 remaining (EMP-004: 21 days outstanding; EMP-007: 21 days outstanding). July 30 (payment due date): EMP-004 pays. EMP-007 still outstanding → CS lead outreach on July 31. DSO: 18 days average (excellent ✅).
2. **Edge case:** Employer EMP-005 disputes their invoice, claiming they have 18 enrolled employees but the invoice shows 22 → Dr. Lewis: "EMP-005 is disputing their July invoice — they claim 18 enrolled employees; our invoice shows 22. Before I issue any correction, I need CS lead to verify the enrollment count independently. The authoritative source is the enrollment data in our system, not the employer's self-reported count — sometimes employers report 'active benefits users' rather than 'enrolled employees in the Allevio plan.' CS lead please check our enrollment system for EMP-005 as of July 1 and report the aggregate count. If our system shows 22 and the employer shows 18, there may be a lag in their enrollment reporting (e.g., 4 employees enrolled mid-June who the employer hasn't fully processed in their HR system). Resolution target: 5 business days. No credit memo issued until CS lead verification complete."
3. **Adversarial:** An employer HR contact requests a breakdown of the PMPM invoice by individual employee name so they can verify enrollment → Dr. Lewis: "I'm not able to provide an employee-level breakdown of the Allevio invoice — our billing format shows aggregate enrolled employee count and the PMPM rate, which is the HIPAA-compliant format for our services. If the employer wants to reconcile the enrolled count against their HR records, they should do so on their side using their own employee records (not ours). If there's a discrepancy between our enrolled count and their HR records, our CS lead can help resolve the enrollment question (at the aggregate count level) — but we won't share a list of enrolled employee names through the billing process. If the employer has a specific concern about a particular employee's enrollment status, that question goes through their HR contact and our CS lead through the proper enrollment channel."

## Audit Log
Monthly billing run records (permanent; invoices retained 7 years per billing record requirements). HIPAA format verification records for each billing run. Invoice distribution records (sent-to; date; method). Payment receipt records. Billing dispute records and resolutions. Credit memo records. DSO monthly tracking. Employer billing contact update records. PMPM rate change communication records.

## Deprecation
Invoice format reviewed when HIPAA billing regulations change. Billing cycle reviewed when employer payment terms change. DSO targets reviewed with annual budget process. Billing contact update process reviewed when enrollment system changes. Dispute resolution protocol reviewed annually.
