---
name: finance-invoice-processor
description: "Process incoming and outgoing invoices for MBL Partners portfolio entities. Use when the user says 'process an invoice', 'invoice processing', 'invoice workflow', 'invoice received', 'got an invoice', 'how to process this invoice', 'invoice in QuickBooks', 'code an invoice', 'GL code', 'expense coding', 'invoice entry', 'invoice approval', 'match invoice to PO', 'three-way match', '2-way match', 'invoice exception', 'invoice dispute', 'invoice discrepancy', 'wrong invoice amount', 'invoice error', 'duplicate invoice', 'send client invoice', 'create invoice', 'generate invoice', 'QuickBooks invoice', 'invoice in Bill.com', 'Bill.com invoice', 'invoice cycle', 'invoice close', 'monthly invoices', 'batch invoicing', 'invoice run', 'invoice reconciliation', 'invoice to payment', or 'payment processing'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--direction <inbound|outbound|both>] [--action <process|match|approve|dispute|generate>]"
---

# Finance Invoice Processor

Process incoming vendor invoices and generate outgoing client invoices for MBL Partners portfolio entities — applying GL coding, 2-way matching to contracts, flagging exceptions and discrepancies, and maintaining clean invoice records in QuickBooks and Bill.com. Invoice processing is the operational execution layer of AP and AR; accuracy here prevents downstream reconciliation nightmares.

## When to Use
- Processing a vendor invoice received in Bill.com
- Generating a client invoice in QuickBooks
- Investigating an invoice discrepancy or exception
- Monthly billing run (Allevio PMPM; Column6 IO milestones)

## Invoice Processing Framework

```
INBOUND INVOICE PROCESSING (VENDOR INVOICES):

  Step 1 — Receipt:
    Electronic: Bill.com inbox (preferred); scan/upload if paper
    Accepted formats: PDF; email PDF; Bill.com vendor portal
    
  Step 2 — Data extraction:
    Vendor name; invoice number; invoice date; due date; amount; line items
    Bill.com AI auto-extracts; Dr. Lewis verifies accuracy
    
  Step 3 — GL coding:
    Match vendor to approved vendor list; apply default GL code for that vendor type
    Entity tag: which entity is this invoice for? (entity isolation required)
    Budget check: does this invoice match the budgeted amount for this category?
    
  Step 4 — 2-way match (contract vs. invoice):
    Is there a contract or engagement letter for this vendor? (SharePoint → Vendors → Contracts)
    Does the invoice amount match the contracted rate?
    If no contract: is there a purchase order or email approval from entity CEO?
    Exception: amount differs from contract → hold invoice; Dr. Lewis contacts vendor
    
  Step 5 — Approval routing:
    Per finance-ap-manager approval thresholds
    Approved → Bill.com payment queue; executed on Tuesday/Thursday run
    
OUTBOUND INVOICE GENERATION (CLIENT INVOICES):

  ALLEVIO MONTHLY PMPM BILLING RUN:
    Trigger: 1st of month (prior month enrollment data from AdvancedMD via CS lead)
    QuickBooks: create invoice per employer; items: [Employer code] - PMPM × enrolled EE count × month
    HIPAA: invoice shows employer name; enrolled EE count (aggregate); PMPM rate; total amount
      NO individual employee names; NO health conditions; NO individual utilization data
    Delivery: QuickBooks email to employer HR/benefits contact
    
  COLUMN6 IO MILESTONE BILLING:
    Trigger: campaign delivery milestone reached (50% or 100% per IO terms)
    QuickBooks: create invoice per IO; items: [IO reference number] - campaign delivery × contracted rate
    Delivery: QuickBooks email to agency finance contact
    
INVOICE EXCEPTION HANDLING:
  Duplicate invoice: same vendor + same invoice number = automatic hold; contact vendor
  Amount discrepancy >5%: hold invoice; Dr. Lewis contacts vendor for correction or credit memo
  Missing purchase order: request entity CEO retroactive approval; document
  Unrecognized vendor: fraud screening (finance-vendor-payment-ops); hold until cleared
  
INVOICE RECORDKEEPING:
  All invoices retained: 7 years minimum (IRS requirement)
  Location: Bill.com (inbound); QuickBooks (both inbound and outbound)
  Naming convention: [Entity]-[Vendor/Client]-[YYYYMM]-[InvoiceNumber]
  Searchable: QuickBooks reporting; Bill.com history
```

## Output Format

```markdown
# Invoice Processing Log — [Entity] — [Period]
**Processed by:** Dr. Lewis | **System:** Bill.com + QuickBooks

---

## Inbound Invoices Processed

| Vendor | Invoice # | Amount | GL Code | Status | Notes |
|--------|---------|--------|---------|--------|-------|
| [Vendor] | [#] | $X | [Code] | Approved / Held / Exception | |

---

## Outbound Invoices Generated

| Client | Invoice # | Amount | Period | Status | Sent? |
|--------|---------|--------|--------|--------|-------|
| [Employer/Agency] | [#] | $X | [Month] | Draft / Sent | ✅ |

---

## Exceptions This Period
[Duplicate / Discrepancy / Missing PO / Unrecognized vendor — with resolution]
```

## Output Contract
- 2-way matching catches billing errors before payment, not after — vendors occasionally bill the wrong rate, bill for a deliverable that wasn't completed, or send duplicate invoices; a 2-way match process (contract vs. invoice) catches these before payment; recovering money after it's been paid is significantly harder than simply not paying an incorrect invoice; Dr. Lewis applies 2-way matching to every invoice >$500; for invoices <$500 from established vendors, a reasonableness check suffices (same vendor, similar amounts, same service)
- Allevio outbound invoice generation requires HIPAA discipline at the line-item level — every Allevio employer invoice template in QuickBooks is built to show: (1) the employer entity, (2) number of enrolled employees (aggregate), (3) PMPM rate, (4) total amount; it explicitly excludes individual employee names, employee IDs, health conditions, or utilization data; if QuickBooks ever generates an Allevio invoice with individual employee information in the line items, Dr. Lewis stops the send immediately, corrects the template, and re-sends; this is not hypothetical — invoice template errors happen and they create HIPAA exposure
- HITL required: invoice >$5K → entity CEO approval before payment (per AP approval thresholds); exception (duplicate/discrepancy) → Dr. Lewis investigates before payment; unrecognized vendor → fraud screening required; Allevio outbound invoice → Dr. Lewis verifies HIPAA-compliant format; invoice disputes from clients → entity CEO notified; 7-year retention confirmed for all invoices

## System Dependencies
- **Reads from:** Bill.com (inbound invoice inbox; vendor records; payment history); QuickBooks (GL codes; client records; outbound invoice templates); SharePoint (vendor contracts; engagement letters — for 2-way match); AdvancedMD (Allevio employer enrollment counts — CS lead provides aggregate); GoHighLevel (Column6 IO delivery tracking — for billing milestone trigger)
- **Writes to:** Bill.com (inbound invoice records; payment queue); QuickBooks (inbound GL entries; outbound client invoices); exception records; HIPAA-compliance invoice review records (Allevio); invoice audit trail
- **HITL Required:** >$5K inbound → entity CEO approval; exception → Dr. Lewis investigates; unrecognized vendor → fraud screening; Allevio outbound → HIPAA format verification; client disputes → entity CEO; 7-year retention confirmed

## Test Cases
1. **Golden path:** Allevio July billing run. CS lead provides enrollment data July 1: 21 active employers; enrollment counts provided (aggregate). Dr. Lewis creates 21 invoices in QuickBooks: each shows [Employer code] - [N enrolled EE] × $42 PMPM × July = [Total]. HIPAA review: all 21 invoices show only aggregate EE count; no individual names ✅. 21 invoices sent via QuickBooks email July 1. Simultaneously: 8 inbound vendor invoices processed in Bill.com; 6 match contracts ✅; 1 AdvancedMD invoice $200 above contract rate (held; Dr. Lewis contacts AdvancedMD; correction received July 3; approved; next payment run); 1 duplicate (same invoice number from prior month; held; vendor confirms duplicate; voided). Clean processing week.
2. **Edge case:** Entity CEO asks Dr. Lewis to put an individual employee's name on an Allevio invoice to help the employer's HR department track who the invoice is for → Dr. Lewis: "I can't put individual employee names on Allevio invoices — that's a HIPAA violation, even if it's for the employer's HR convenience. An Allevio employer receiving an invoice with their employees' names on it means PHI is traveling outside of a HIPAA-controlled environment. The employer's HR already has their own employee list; they can reconcile the enrolled count to their records without us providing the names. If the employer needs a separate enrollment roster, that's a CS-managed document with proper HIPAA controls, not an invoice line item. The invoice format stays as-is."
3. **Adversarial:** A vendor sends a corrected invoice for $1,800 more than the original (original $6,200; corrected $8,000) claiming "we forgot to bill for additional services" 45 days after the original was paid → Dr. Lewis: "I'm holding this corrected invoice. For a $1,800 increase on a paid invoice 45 days later, I need: (1) a written explanation of what 'additional services' were delivered and when; (2) evidence that these services were agreed to in our contract or a separate engagement; (3) entity CEO confirmation that additional services were received and are worth $1,800. If all three check out, I'll process the additional invoice. If the contract doesn't cover additional services or the entity CEO doesn't recall agreeing to them, I'll decline the invoice and request a credit memo for the correction."

## Audit Log
Invoice processing records (all inbound and outbound; 7-year retention). Exception records with resolution. 2-way match results. HIPAA format verification records (Allevio outbound). Duplicate detection records. Fraud screening records. Monthly billing run records. Client invoice delivery confirmation records.

## Deprecation
2-way match thresholds reviewed annually. Allevio invoice template reviewed when HIPAA guidance or enrollment tracking changes. Column6 billing milestone definitions reviewed when IO contract terms change. Exception handling reviewed when Bill.com capabilities change. Invoice naming convention reviewed when entity structure changes.
