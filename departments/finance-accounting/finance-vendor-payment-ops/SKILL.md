---
name: finance-vendor-payment-ops
description: "Manage vendor onboarding and payment operations for MBL Partners portfolio entities. Use when the user says 'vendor onboarding', 'new vendor', 'add a vendor', 'vendor setup', 'vendor management', 'vendor registration', 'vendor approval', 'vendor list', 'approved vendor list', 'vendor W-9', 'W-9 collection', 'vendor ACH', 'ACH setup', 'vendor bank setup', 'vendor payment setup', 'vendor payment terms', 'net 30 vendor', 'vendor contract', 'vendor agreement', 'vendor compliance', 'vendor audit', 'vendor review', 'vendor rationalization', 'vendor offboarding', 'stop paying a vendor', 'remove a vendor', 'vendor risk', 'vendor due diligence', 'is this vendor approved', 'who are our vendors', 'vendor spend analysis', 'vendor spend report', 'top vendors', 'spend by vendor', or 'vendor management policy'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--vendor <name>] [--action <onboard|audit|offboard|report>]"
---

# Finance Vendor Payment Ops

Manage vendor onboarding and payment operations for MBL Partners portfolio entities — vetting new vendors before first payment, collecting W-9s, setting up ACH payment details with verification controls, tracking approved vendor lists, and conducting annual vendor rationalization. Every vendor relationship is a financial commitment and a potential risk vector; vendor ops is where financial discipline and fraud prevention intersect.

## When to Use
- Adding a new vendor to the payment system
- Annual vendor audit and rationalization
- Verifying vendor legitimacy before a significant first payment
- Reviewing vendor spend by entity

## Vendor Payment Operations Framework

```
VENDOR ONBOARDING CHECKLIST (before first payment):
  1. W-9 collected: vendor provides IRS Form W-9 (required for 1099 if applicable)
  2. Business verification: entity name matches W-9; AZ Secretary of State (or relevant state) confirmation
  3. Bank account setup in Bill.com: ACH details entered; Dr. Lewis verifies (not entity CEO)
  4. BAA evaluation (Allevio): does this vendor have access to any Allevio member data?
      If yes → BAA required before onboarding (revops-data-governance process)
      If no → proceed without BAA (but document evaluation in vendor record)
  5. Vendor type classification: services (1099 if IC); product (no 1099); government/exempt (no 1099)
  6. Payment terms agreed: net 30 default; negotiate if vendor offers early pay discount >1.5%
  7. Contract or engagement letter on file (SharePoint → [Entity] → Finance → Vendors → Contracts)
  8. Approved vendor notification: entity CEO notified; Dr. Lewis confirms
  
APPROVED VENDOR LIST (per entity):
  Maintained in SharePoint + mirrored in Bill.com vendor database
  Reviewed: quarterly for additions/removals; annually for full rationalization
  Format: vendor name | type | annual spend | contract expiration | BAA required? | 1099?
  
VENDOR SPEND ANALYSIS (QUARTERLY):
  Pull top 10 vendors by spend per entity from QuickBooks
  Flag any vendor with spend >$15K/year but no contract on file
  Flag any vendor with >100% increase in spend vs. prior year (unexplained)
  Flag any inactive vendor (no invoices in 90 days) → candidate for offboarding
  
VENDOR OFFBOARDING:
  Trigger: contract expired; service no longer needed; vendor performance issue
  Process: (1) entity CEO confirms offboarding; (2) last invoice confirmed paid; (3) vendor removed from Bill.com active list; (4) W-9 retained for 1099 reporting if applicable; (5) contract archived in SharePoint
  
PAYMENT TERMS MANAGEMENT:
  Standard terms: net 30 (Allevio); net 30-45 (Column6 media vendors)
  Negotiate early payment discount: if vendor offers 1.5% net 10 → worth evaluating
    Math: 1.5% net 10 on $20K invoice = $300 savings vs. holding cash 20 more days → worth it
    Math: 0.5% net 10 → not worth the cash flow impact
  Avoid net 60+ terms unless vendor requires them (creates payable management complexity)
  
ALLEVIO VENDOR NOTE:
  Clinical vendors (labs; suppliers; providers) may require BAA even without explicit data sharing
  HIPAA "business associate" definition is broad — any vendor that performs services on behalf of Allevio that could involve PHI needs evaluation
  Dr. Lewis documents BAA evaluation for every clinical vendor even when BAA is not required
```

## Output Format

```markdown
# Vendor Onboarding Record — [Vendor Name] — [Entity]
**Date:** [Date] | **Onboarded by:** Dr. Lewis

---

## Onboarding Checklist
- [x] W-9 collected (file: SharePoint link)
- [x] Business verification (AZ SoS confirmation)
- [x] ACH setup in Bill.com (Dr. Lewis verified)
- [x] BAA evaluated: [Required / Not required / BAA signed]
- [x] Vendor classification: [Services IC / Product / Exempt]
- [x] Payment terms: Net [X]
- [x] Contract on file: [Y/N — SharePoint link]
- [x] Entity CEO notified

**Approved: Dr. Lewis | Date: [Date]**

---

## Quarterly Vendor Spend Report — [Entity] — Q[N] [Year]

| Rank | Vendor | Category | Q Spend | Annual Spend | Contract? | BAA? | Flag |
|------|--------|---------|---------|-------------|---------|------|------|
| 1 | [Vendor] | [Category] | $X | $X | ✅ | N/A | None |
```

## Output Contract
- The W-9 is both a tax compliance requirement and a fraud filter — a legitimate vendor can provide a W-9 immediately; a fraudulent vendor ("created" for a fake invoice scheme) often cannot; if a vendor is new, the invoice is unusually large, and W-9 collection is met with delays or excuses, Dr. Lewis holds payment until the W-9 arrives and the business is verified; this is not an obstacle to doing business — it is a 24-hour process for any legitimate vendor; the friction it creates for fraudulent invoices is intentional
- Annual vendor rationalization finds hidden recurring costs — most portfolio companies accumulate vendor relationships over time without ever pruning them; a $1,200/year subscription that was relevant in Q1 2025 may be irrelevant by Q4 2026 but continues to bill because no one reviews it; Dr. Lewis conducts the annual rationalization in November alongside the budget process, because the decisions made in rationalization directly feed the next year's technology and G&A budget; the question for each vendor is "if this vendor stopped billing tomorrow, would anyone notice, and would the business be harmed?" If the answer is no, the vendor is a rationalization candidate
- HITL required: new vendor → Dr. Lewis verifies before first payment; Allevio clinical vendor → BAA evaluation required; bank account change → Dr. Lewis phone verification; vendor spend >$15K without contract → entity CEO + Dr. Lewis; unexplained spend >100% increase → entity CEO investigates; vendor offboarding → entity CEO confirms; annual rationalization decisions → entity CEO + Dr. Lewis; 1099 vendor list → Dr. Lewis prepares for tax compliance (finance-1099-manager)

## System Dependencies
- **Reads from:** Bill.com (vendor database; payment history); QuickBooks (vendor spend by category; annual totals); SharePoint (contracts; W-9 files; BAA status); revops-data-governance (Allevio BAA tracking); IRS W-9 forms
- **Writes to:** Bill.com (approved vendor records; ACH details); QuickBooks (vendor master); SharePoint (vendor contracts; W-9 files; BAA evaluations; approved vendor list); entity CEO vendor notifications; annual rationalization decisions; 1099 candidate list (finance-1099-manager)
- **HITL Required:** New vendor → Dr. Lewis verifies; Allevio clinical vendor → BAA; bank change → Dr. Lewis phone; >$15K no contract → entity CEO + Dr. Lewis; 100% spend spike → entity CEO; offboarding → entity CEO; rationalization → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio onboards a new lab partner (Quest Diagnostics alternative; smaller regional lab). Onboarding: W-9 collected Day 1 ✅; AZ business verification ✅; ACH setup in Bill.com (Dr. Lewis enters; not entity CEO) ✅; BAA evaluation: lab handles Allevio member specimens — PHI is involved → BAA required; lab provides BAA template → Dr. Lewis and entity CEO review → BAA signed ✅; contract on file (3-year service agreement) ✅; net 30 payment terms ✅; entity CEO notified ✅. First invoice: $4,200 — entity CEO approved; Dr. Lewis reviewed; paid in next Tuesday payment run. Vendor record complete.
2. **Edge case:** An invoice arrives from a vendor Dr. Lewis doesn't recognize, claiming to be for "consulting services rendered to Allevio in June" for $7,800, with a new vendor bank account included → Dr. Lewis: "I'm holding this payment. Three red flags: (1) I don't recognize this vendor name in any of Allevio's approved vendor records or contracts; (2) the 'consulting services rendered' description has no corresponding engagement letter or purchase order; (3) there's a new bank account in the payment request rather than an established relationship. I'm contacting the entity CEO to ask if they engaged this consultant. If yes, I need the contract and W-9 before payment. If no, this is a fraudulent invoice and I'm documenting it as an attempted fraud incident."
3. **Adversarial:** Entity CEO adds a vendor to Bill.com themselves to pay a $1,500 invoice quickly → Dr. Lewis: "I understand the urgency — but vendor addition in Bill.com must go through me, even for small amounts. The reason: unauthorized vendor additions are how fraudulent invoices get paid. I'm not suggesting your judgment is wrong on this vendor — I'm saying the control needs to be consistent. Please send me the vendor name, invoice, and W-9, and I'll have this processed within 4 hours. Going forward, all new vendors come to me; I'll process same-day for anything <$5K with proper documentation."

## Audit Log
Vendor onboarding records (permanent; W-9 retained 7 years per IRS requirements). BAA evaluation records (Allevio; permanent). Bank account setup verification records. Annual rationalization decisions. Vendor offboarding records. Suspected fraud incident records. Quarterly vendor spend reports. 1099 candidate lists.

## Deprecation
Onboarding checklist reviewed annually. Allevio BAA evaluation criteria reviewed when HIPAA guidance changes. Payment terms defaults reviewed when entity cash position changes. Rationalization criteria reviewed annually. Vendor spend analysis thresholds reviewed when entity scale changes.
