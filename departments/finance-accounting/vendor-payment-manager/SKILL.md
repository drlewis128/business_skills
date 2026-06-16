---
name: vendor-payment-manager
description: "Manage vendor relationships and payment terms. Use when the user says 'vendor management', 'vendor payments', 'manage vendors', 'vendor terms', 'vendor setup', 'add a vendor', 'vendor database', 'vendor review', 'vendor contract review', 'preferred vendor', 'vendor consolidation', or 'vendor spending analysis'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <setup|review|terms|consolidate|analyze>] [--vendor <name>]"
---

# Vendor Payment Manager

Manage vendor relationships, payment terms, setup, and spending analytics — ensuring the right vendors are on the approved vendor list, are set up correctly in Bill.com, have appropriate payment terms, and are being used efficiently across the portfolio. Good vendor management reduces fraud risk, optimizes payment timing, eliminates duplicate or unauthorized vendors, and creates leverage for better pricing through volume consolidation.

## When to Use
- A new vendor needs to be added to Bill.com and QuickBooks
- A vendor's payment terms need to be negotiated or updated
- Quarterly vendor review — are we using the right vendors at the right prices?
- Matt Mathison asks "who are we spending the most money with?"
- Identifying opportunities to consolidate vendors across portfolio companies
- Reviewing vendor contracts before renewal

## Vendor Management Standards

```
New vendor setup requirements:
  ✓ Business verification: legal business name, EIN/SSN for 1099 vendors
  ✓ Banking verification: phone call to vendor's main line — verify bank info verbally
  ✓ W-9 on file: required before first payment to any unincorporated vendor
  ✓ Contract on file: for recurring vendors >$5K/year
  ✓ Bill.com setup: routing/account number entered only after phone verification

1099 threshold: Vendors paid >$600/year (non-employee individuals or unincorporated)
  → Collect W-9 before first payment
  → Track payments for year-end 1099 filing

Vendor review cadence:
  Monthly: Spending by vendor (top 10 by amount)
  Quarterly: Full vendor list review — active/inactive, terms, contract status
  Annually: Consolidation opportunities; pricing renegotiation for top vendors
```

## Output Format

```markdown
# Vendor Management Report — <Company Name>
**Period:** <Month or Quarter YYYY>
**Prepared by:** Dr. John Lewis

---

## Vendor Spend Summary

### Top Vendors by YTD Spend

| Rank | Vendor | Category | YTD Spend | Payment Terms | Contract on file | 1099? | W-9 on file |
|------|--------|---------|----------|--------------|----------------|-------|------------|
| 1 | [Vendor] | [Category] | $[X] | Net [N] | ✅ / ❌ | Y/N | ✅ / ❌ |
| 2 | | | | | | | |
| 3-10 | [etc.] | | | | | | |
| **Total top 10** | | | **$[X]** | | | | |
| All other vendors | | | $[X] | | | | |
| **Total vendor spend** | | | **$[X]** | | | | |

---

## New Vendor Setup (This Period)

| Vendor | Category | EIN/Type | Banking verified | W-9 | Contract | Added by | Dr. Lewis review |
|--------|---------|---------|-----------------|-----|---------|---------|-----------------|
| [Vendor] | [Category] | [EIN / individual] | ✅ — [verified via phone call to [number] on [date]] | ✅ | ✅ / N/A | [Name] | ✅ |

**New vendor flag:** Any new vendor >$10K/year or any new banking information requires Dr. Lewis review and Matt Mathison notification for vendors >$25K/year.

---

## Vendor Contract Status

| Vendor | Service | Annual spend | Contract expiry | Auto-renews? | Renewal action |
|--------|---------|------------|----------------|------------|---------------|
| [Vendor] | [Service] | $[X]/yr | [Date] | Y / N | [Renew / Renegotiate / Let expire] |
| [Vendor] | | | | | |

**Contracts expiring in next 90 days:** [List — initiate renewal conversations now]

---

## Payment Terms Optimization

| Vendor | Current terms | Proposed terms | Benefit | Action |
|--------|--------------|----------------|---------|--------|
| [Vendor — currently Net 15, could be Net 30] | Net 15 | Net 30 | $[X] additional cash float | Request change at next interaction |
| [Vendor — offers 2/10 discount] | Net 30 | 2/10 Net 30 | 2% discount = [X%] annualized | Always take the early payment discount |

**Early payment discounts available:** [List vendors with 2/10 or similar terms — always take these]

---

## Vendor Consolidation Opportunities (Quarterly)

| Category | Current vendors | Recommended consolidation | Estimated savings |
|---------|----------------|--------------------------|-----------------|
| [Software subscriptions] | [N] vendors | Consolidate to [N] | $[X]/year |
| [Professional services] | [N] vendors | One primary firm | $[X]/year |
| [Supply vendor] | [N] vendors at different portfolio companies | Portfolio-level contract | $[X]/year |

---

## 1099 Tracking (Year-to-Date)

| Vendor | Type | YTD Payments | W-9 on File | On track for 1099 |
|--------|------|-------------|-------------|------------------|
| [Vendor] | [Individual / LLC] | $[X] | ✅ / ❌ | Y (>$600) / N |

**1099 filing deadline:** January 31 of the following year.
**Missing W-9s:** [List vendors >$600 YTD without W-9 on file — collect immediately]

---

## Matt Mathison Flag

Vendor summary — [Company] [period]: Top vendor spend $[X] (top 10 vendors); [N] new vendors added (all verified); [N] contracts expiring in 90 days ([names]). Portfolio consolidation opportunity: [If any]. Decision needed: [New vendor >$25K / Contract renegotiation / Consolidation initiative] or "No decision needed — Dr. Lewis managing."
```

## Output Contract
- Banking information always verified by phone before first payment — the most critical vendor control; never add or update banking information based on email or document alone; always call the vendor's known phone number and verbally confirm; document the call (date, time, name of person, number called); this is the primary defense against ACH fraud
- W-9 collected before first payment for all 1099-eligible vendors — missing W-9s create year-end 1099 issues and potential penalties; the W-9 must be in the file before the first check is cut
- Contract on file for recurring vendors >$5K/year — verbal agreements with significant vendors are unenforceable and create disputes; recurring vendor relationships over $5K/year must have a written contract or service agreement
- Vendor consolidation opportunities always identified in quarterly review — as the portfolio grows, the same service category (IT support, legal, accounting, insurance) may be served by different vendors at each portfolio company; consolidating to portfolio-level contracts typically yields 10-30% cost savings
- HITL required: Dr. Lewis reviews all new vendor setups; Matt Mathison must be notified of new vendors >$25K/year; any change to existing vendor banking information requires Dr. Lewis verification; 1099 issuance requires CPA review

## System Dependencies
- **Reads from:** Bill.com (vendor database and payment history), QuickBooks (vendor spending by category), vendor contracts (SharePoint), W-9 file
- **Writes to:** Bill.com (vendor setup), QuickBooks (vendor file), W-9 file (SharePoint/Finance/Vendors/W9s/), 1099 tracker
- **HITL Required:** Dr. Lewis reviews new vendors; Matt Mathison notified >$25K; banking info changes require phone verification and Dr. Lewis sign-off; 1099 issuance with CPA

## Test Cases
1. **Golden path:** Allevio quarterly vendor review Q2 2026 → Total vendor spend: $198K; Top 3: payroll service $72K (contract in place, terms Net 15), IT support $24K (month-to-month — renegotiate to contract), medical supply vendor $18K (3 invoices, W-9 received, on track for 1099); New vendor: lab contractor $1,400 — verified via phone June 3, W-9 collected, Dr. Lewis approved; Contract expiring in 90 days: office lease (expires August 31 — CEO initiating renewal conversation); consolidation opportunity: 3 software subscriptions ($4,200/year) partially duplicative with Allevio's existing tech stack — recommend review to eliminate 1-2; Matt Mathison flag: office lease renewal upcoming, CEO managing
2. **Edge case:** A long-time vendor emails that their banking information has changed and attaches a new bank letter → do not update the bank information; this is the exact pattern of vendor impersonation fraud; call the vendor's phone number (the one previously used, not the one in the email); verify the change directly with a known contact; if the vendor confirms the change, update in Bill.com and document the call; if the vendor did not initiate the change, the email is fraudulent — do not pay; notify Matt Mathison and document the incident; consider alerting the actual vendor that someone may be impersonating them
3. **Adversarial:** A portfolio company CEO wants to add a vendor who is a personal friend without going through the normal setup process ("just pay them from the business") → the same controls apply to all vendors regardless of the requestor's relationship with the vendor; a personal friend providing services is a related-party transaction; collect the W-9, verify the banking information, document the business purpose of the services, and get a contract if recurring; this is not about distrust — it's about proper documentation that protects both the company and the vendor relationship; flag to Matt Mathison as a related-party transaction

## Audit Log
All vendor setup documentation retained by vendor (W-9, banking verification record, contract). Payment history by vendor available in Bill.com and QuickBooks. Banking information change verifications documented permanently. Quarterly vendor reviews retained. 1099 issuance records retained 7 years.

## Deprecation
Retire when portfolio companies have dedicated AP or procurement functions with vendor management systems that maintain the vendor database, verify banking information at setup, and track W-9 compliance without Dr. Lewis's direct involvement.
