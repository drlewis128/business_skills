---
name: finance-1099-manager
description: "Manage annual 1099 preparation and filing for MBL Partners portfolio entities. Use when the user says '1099', '1099-NEC', '1099-MISC', '1099 filing', '1099 preparation', '1099 form', 'prepare 1099', 'send 1099', 'contractor 1099', '1099 contractor', '1099 deadline', '1099 due date', '1099 January 31', 'file 1099 with IRS', '1099 e-file', 'IRS 1099 filing', '1099 recipient copy', 'send 1099 to contractor', '1099 NEC', 'non-employee compensation', '1099 for services', '1099 for rent', '1099 for attorneys', '1099-MISC rent', 'backup withholding', '1096', 'form 1096', 'IRS information return', 'who gets a 1099', 'do I need to send a 1099', '$600 threshold', 'contractor payment threshold', 'W-9 for 1099', 'TIN verification', 'annual 1099 process', '1099 corrections', '1099 amendment', 'corrected 1099', or 'year-end 1099'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--year <YYYY>] [--action <prepare|file|distribute|correct>]"
---

# Finance 1099 Manager

Manage annual 1099 preparation and filing for MBL Partners portfolio entities — pulling all contractor and vendor payments from QuickBooks for the year, identifying those that meet the $600 threshold, verifying W-9 information, generating 1099-NEC forms, distributing to recipients by January 31, and filing with the IRS. 1099 compliance is a hard legal deadline; missing it creates per-form penalties.

## When to Use
- Annual 1099 preparation process (January; for prior year)
- Identifying which vendors/contractors require 1099s
- Issuing a corrected 1099 after filing
- W-9 collection for a new contractor (pre-payment gate)

## 1099 Management Framework

```
1099 TYPES APPLICABLE TO MBL ENTITIES:
  Form 1099-NEC (Non-Employee Compensation):
    Used for: payments to independent contractors; freelancers; service providers
    Threshold: total payments ≥$600 in the calendar year
    Deadline: January 31 (recipient copy AND IRS filing)
    
  Form 1099-MISC:
    Used for: rents paid ≥$600; royalties ≥$10; prize/award; other income types
    HIVE royalty payments: if HIVE pays royalties to mineral owners → 1099-MISC with royalty amount
    Deadline: January 31 (recipient copy); February 28 paper / March 31 e-file (IRS)
    
  Form 1096 (Annual Summary and Transmittal):
    Filed with IRS if submitting paper 1099s (summary cover sheet)
    E-filing: no 1096 required (Gusto or QuickBooks e-files for each form)
    
ANNUAL 1099 PROCESS:

  STEP 1 — PULL PAYMENT DATA (early January):
    QuickBooks report: all payments to vendors/contractors in prior year
    Filter: all 1099-eligible vendors (those marked as independent contractors; W-9 on file)
    Identify: anyone paid ≥$600 total
    
  STEP 2 — VERIFY W-9 INFORMATION:
    Every 1099 recipient must have a current W-9 on file
    Verify: name matches W-9; TIN (EIN or SSN) matches W-9; address current
    If no W-9: apply backup withholding at 24% for future payments; request W-9 immediately
    
  STEP 3 — GENERATE 1099 FORMS:
    Use Gusto (if payroll provider handles it) OR QuickBooks (built-in 1099 filing)
    Review each form before filing: name; TIN; payment amount; box number (Box 1 for NEC; Box 2 for royalties)
    
  STEP 4 — DISTRIBUTE TO RECIPIENTS (by January 31):
    Method: electronic delivery if contractor consents (Gusto delivers electronically)
    OR paper mail: postmarked by January 31
    Retain proof of delivery (Gusto confirmation; certified mail if paper)
    
  STEP 5 — FILE WITH IRS (by January 31 for 1099-NEC):
    E-file via Gusto or QuickBooks (IRS Fire system)
    E-filing is mandatory if filing 10 or more 1099s (IRS rule effective 2024)
    Retain copy of filing confirmation
    
PENALTIES FOR LATE / MISSING 1099s:
  Filed within 30 days of January 31: $60/form
  Filed February 1 – August 1: $130/form
  Filed after August 1 or not filed: $330/form
  Intentional disregard: $660/form
  Dr. Lewis treats January 31 as a hard deadline with no exceptions
  
1099 CORRECTIONS:
  If 1099 filed with incorrect amount or wrong TIN: file corrected 1099 as soon as discovered
  Send corrected form to recipient; file corrected form with IRS; mark as "CORRECTED"
  No additional penalty for correcting (if corrected promptly)
```

## Output Format

```markdown
# 1099 Filing Summary — [Entity] — [Tax Year]
**Filing date:** [Date] | **Prepared by:** Dr. Lewis | **Filed via:** Gusto / QuickBooks

---

## 1099-NEC Recipients

| Recipient | TIN (last 4) | 2026 Payments | Form | Delivered | IRS Filed |
|-----------|------------|--------------|------|----------|----------|
| [Contractor Name] | XXXX | $X,XXX | 1099-NEC | ✅ 1/28 | ✅ 1/30 |
| [Vendor Name] | XXXX | $X,XXX | 1099-NEC | ✅ 1/28 | ✅ 1/30 |

**Total 1099-NEC forms: N | Total non-employee compensation reported: $XX,XXX**

---

## 1099-MISC (Rents / Royalties)
[If applicable for HIVE or other entities]

---

## Non-Reportable Payments (excluded — below $600 or C-corp)
[If needed for audit trail]
```

## Output Contract
- The $600 threshold is a bright-line rule, not a suggestion — every contractor or service provider paid $600 or more in a calendar year receives a 1099-NEC; there is no exception for "small amounts" above $600; there is no exception because "they probably already track it themselves"; there is no exception for convenience; the threshold is $600, and any payment over that threshold requires a 1099; Dr. Lewis tracks contractor payments in QuickBooks throughout the year (not as a year-end surprise) so the January 1099 run is a reconciliation of known records, not a discovery exercise
- Corporations are generally exempt from 1099 reporting — payments to C-corps and S-corps do not require a 1099 (with limited exceptions: attorney fees paid to incorporated law firms; medical payments to incorporated medical providers); this is why the W-9 collection process (finance-contractor-payment-ops) captures entity type: sole proprietor and LLC payments require 1099; incorporated entities typically do not; Dr. Lewis verifies entity type from the W-9 before issuing a 1099 to avoid issuing unnecessary forms (which confuse recipients) or missing required forms (which creates IRS penalties)
- HITL required: all 1099 forms → Dr. Lewis reviews before filing; W-9 mismatch (TIN doesn't match name) → Dr. Lewis holds filing and contacts contractor for correction; backup withholding required (no W-9) → Dr. Lewis + entity CEO; corrected 1099 → Dr. Lewis issues immediately upon discovering error; entity CEO notification → when all 1099s are filed; Gusto/QuickBooks 1099 platform → Dr. Lewis confirms filing confirmation receipt; Allevio: clinical service providers (if paid as contractors) → 1099 applies; no PHI in 1099 (payment amount only; no service descriptions that could imply health information)

## System Dependencies
- **Reads from:** QuickBooks (annual payment records by vendor/contractor; 1099 eligibility flag); finance-contractor-payment-ops (contractor W-9 records; annual payment tracking); Bill.com (AP payment history for vendor 1099 identification); Gusto (if handling 1099-NEC for contractors paid through payroll provider)
- **Writes to:** 1099-NEC and 1099-MISC forms (generated in Gusto or QuickBooks); IRS filing records (e-file confirmation); recipient delivery records; QuickBooks (backup withholding entries if applicable); corrected 1099 records; annual 1099 completion records by entity
- **HITL Required:** All forms → Dr. Lewis reviews; W-9 mismatch → Dr. Lewis resolves; backup withholding → Dr. Lewis + entity CEO; corrected 1099 → Dr. Lewis issues; entity CEO notification → Dr. Lewis sends after filing; platform confirmation → Dr. Lewis confirms receipt; Allevio clinical contractor 1099 → form review for PHI-free format

## Test Cases
1. **Golden path:** Allevio 2026 1099 preparation (January 2027). QuickBooks report: all 2026 payments to non-payroll vendors/contractors. 1099-eligible: 4 contractors (all ≥$600; all W-9 on file; all sole proprietors or single-member LLCs). Contractor A: $8,400; Contractor B: $3,200; Contractor C: $1,800; Contractor D: $650. Excluded: Contractor E ($420 — below $600 threshold); Law Firm LLC ($4,200 — S-corp; W-9 confirms; no 1099 required for S-corp ✅). 4 forms generated in Gusto. Dr. Lewis reviews each: name ✅; TIN ✅; amount ✅; Box 1 (NEC) ✅. Delivered electronically via Gusto January 28. IRS e-filed January 29. Total reported: $14,050 across 4 forms. Filing confirmation retained.
2. **Edge case:** HIVE paid mineral royalties to 3 individual mineral rights owners in 2026 (aggregate: Owner A $4,200; Owner B $8,900; Owner C $1,100) → Dr. Lewis: "Royalty payments to mineral rights owners require 1099-MISC, Box 2 (royalties), not 1099-NEC. Threshold for royalties: ≥$10 (not $600). All 3 mineral rights owners receive 1099-MISC: Owner A: $4,200; Owner B: $8,900; Owner C: $1,100. I need W-9s for all 3 — let me check the file. If any are missing, I'll request them immediately (need before January 31). 1099-MISC deadline for recipient copy: January 31; for IRS paper filing: February 28; e-file: March 31. I'll target January 31 for all to align with 1099-NEC run. Generated in QuickBooks. HIVE entity CEO notified."
3. **Adversarial:** Dr. Lewis discovers in mid-February that a contractor was paid $3,800 in 2026 but their 1099 was not filed by January 31 → Dr. Lewis: "We missed the January 31 deadline for this contractor's 1099-NEC. The penalty for filing within 30 days of the deadline ($60/form) applies — I'll file the form today (February 12) to stay in the lower penalty tier. Steps: (1) Generate the 1099-NEC in Gusto now; (2) Deliver to contractor electronically or by mail today; (3) E-file with IRS today. Total cost: $60 IRS penalty + a note in the contractor's file. I'll also investigate why this contractor was missed in the January run: likely the W-9 was on file but the payment wasn't flagged as 1099-eligible in QuickBooks. I'll fix the QuickBooks 1099 tracking flag so this doesn't happen in future years. Entity CEO notified."

## Audit Log
Annual 1099 preparation and filing records (all entities; 7 years). W-9 records used for 1099 (7 years). IRS filing confirmation records. Recipient delivery confirmation records. Corrected 1099 records. Backup withholding records. Late filing penalty payment records. Contractor exclusion records (below threshold; C-corp). Royalty 1099-MISC records (HIVE). Annual 1099 completion sign-off.

## Deprecation
Threshold amounts reviewed when IRS changes 1099 requirements. Form types reviewed when IRS changes 1099 structures. E-filing mandatory threshold reviewed when IRS rules change. Gusto/QuickBooks 1099 platform reviewed annually. Penalty amounts reviewed when IRS adjusts penalty schedules. HIVE royalty 1099-MISC requirement reviewed when mineral rights ownership structure changes.
