---
name: fin-ops-1099-manager
description: "Manage 1099 filing — W-9 collection, vendor classification, and IRS reporting. Use when the user says '1099', '1099-NEC', '1099-MISC', '1099 filing', '1099 vendor', 'independent contractor 1099', '1099 reporting', 'file 1099s', '1099 form', 'W-9 collection', 'backup withholding', '1099 threshold', 'contractor reporting', '1099 deadline', 'IRS 1099', 'prepare 1099s', '1099 preparation', or 'who gets a 1099'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <YYYY>] [--stage <collect-w9s|prepare|file>]"
---

# 1099 Manager

Manage 1099 reporting for MBL portfolio companies — collecting W-9s throughout the year, classifying vendors correctly, preparing accurate 1099-NEC and 1099-MISC forms, and filing on time with the IRS and states. 1099 compliance is an area where small companies routinely fail — W-9s are not collected, vendors are misclassified, and forms are filed late or not at all; IRS penalties for 1099 failures accumulate quickly: $60-$330 per form, depending on how late; for a company with 30 1099 vendors and a late filing, the penalty exposure is $9,900 or more. Dr. Lewis enforces W-9 collection at vendor setup so 1099 preparation at year-end is a documentation exercise, not a scramble.

## When to Use
- Vendor is added to the approved list (collect W-9 before first payment)
- Q4 — review vendor payments and 1099 thresholds
- January — prepare and issue 1099-NEC forms (deadline: January 31)
- Late January — file 1099s with IRS (January 31 for 1099-NEC)
- A vendor disputes their 1099 amount

## 1099 Management Framework

```
1099-NEC (Nonemployee Compensation) — Most common for MBL portfolio companies:
  Who gets a 1099-NEC:
    ✅ Individual/sole proprietor/single-member LLC: $600+ in services during the year
    ✅ Partnership or LLC taxed as partnership: $600+ in services
    ❌ Corporation (C-Corp or S-Corp): Generally exempt (EXCEPTION: attorneys and medical providers)
    ❌ Payments for goods only (product purchases): Not reportable on 1099-NEC
    
  What is reported:
    Fees, commissions, prizes, awards for services (Box 1)
    NOT reported: Payments for goods, reimbursed expenses (separate from fees)
    
1099-MISC (Miscellaneous Income):
  Who gets a 1099-MISC:
    Rent payments >$600 (Box 1) — common for landlords who are individuals/LLCs
    Medical and health care payments >$600 (Box 6) — e.g., payments to individual physicians
    Attorneys >$600 regardless of entity type (Box 10 or Box 14)
    
  Allevio healthcare note: Payments to individual physicians or medical groups for referral
    relationships or medical director agreements may be reportable on 1099-MISC;
    AKS review required before any such arrangement — but if the arrangement exists,
    the 1099 reporting obligation follows automatically
    
Threshold: $600 per vendor per calendar year triggers a 1099 requirement
  Count all payments to the same vendor across the year (even across multiple invoices)
  Vendor with $598 in payments: No 1099 required
  Vendor with $601 in payments: 1099 required
  
Year-round 1099 preparation process:
  
  At vendor setup (fin-ops-vendor-setup):
    Collect W-9 from every US vendor
    Record in vendor master: Entity type; EIN/SSN; 1099 required (yes/no)
    Flag in QuickBooks: Set vendor as "Eligible for 1099" for individuals/partnerships
    
  Throughout the year:
    In QuickBooks, mark the correct expense accounts as 1099 eligible
    This ensures the year-end QuickBooks 1099 report pulls the correct amounts
    
  Q4 review (October-November):
    Pull QuickBooks 1099 vendor report showing payments YTD to 1099-eligible vendors
    Identify vendors approaching $600 threshold who don't have a W-9 on file yet
    Collect any missing W-9s before December 31 (easier to get in advance than in January)
    
  January 1-31: Prepare and issue 1099s:
    Step 1: Pull final 1099 report from QuickBooks (Vendors → 1099 Summary)
    Step 2: Verify: Each vendor's legal name, address, and TIN match the W-9 on file
    Step 3: Verify: Payment amounts are correct (any corrections/credits reflected?)
    Step 4: Prepare 1099-NEC forms:
      File with IRS: January 31 (e-file via Tax1099 or QuickBooks payroll module)
      Send to vendors: January 31 (by mail or electronic if vendor consented)
    Step 5: File 1099-MISC:
      Rents and other: February 28 (paper) or March 31 (e-file)
      Attorney/healthcare: January 31
      
  E-file threshold: If 10 or more 1099 forms, electronic filing is required by IRS
  
  Backup withholding:
    Required when: Vendor refuses to provide W-9, or IRS notifies of incorrect TIN
    Rate: 24% of all payments must be withheld and remitted to IRS
    Allevio/HIVE/Column6: Enforce W-9 collection at vendor setup to avoid backup withholding situations entirely
    
  Common 1099 mistakes:
    ❌ Paying a vendor $700 without a W-9 — now liable for backup withholding
    ❌ Issuing a 1099 to a corporation — only attorneys and medical providers (corporations) require it
    ❌ Wrong TIN on the 1099 — triggers an IRS B-Notice; requires correction
    ❌ Missing W-9 for a vendor who gets a 1099 — TIN may be missing or incorrect
    ❌ Using Payments instead of 1099 module in QuickBooks — misses the correct account tracking
```

## Output Format

```markdown
# 1099 Preparation — [Entity] Tax Year [YYYY]
**Prepared by:** Dr. Lewis + [Controller] | **Deadline:** January 31, [YYYY+1]

---

## 1099-NEC Summary

| Vendor | Entity type | EIN/SSN on file | Total payments | 1099 required | Amount to report |
|--------|------------|----------------|--------------|--------------|----------------|
| [Consultant A] | Individual | ✅ | $8,500 | ✅ Yes | $8,500 |
| [Cleaning LLC] | Partnership | ✅ | $3,360 | ✅ Yes | $3,360 |
| [AdvancedMD] | C-Corp | ✅ | $22,200 | ❌ No (Corp) | — |
| [Attorney ABC] | Corp | ✅ | $4,200 | ✅ Yes (attorney) | $4,200 |
| **Total 1099-NEC forms** | | | | **[N] forms** | **$[X]** |

---

## 1099-MISC Summary

| Vendor | Type | Total | Amount to report | Box |
|--------|------|-------|----------------|-----|
| [Landlord — individual] | Rent | $90,000 | $90,000 | Box 1 |
| **Total 1099-MISC forms** | | | **$[X]** | |

---

## W-9 Status Check

| 1099 vendor | W-9 on file | TIN confirmed | Status |
|------------|------------|--------------|--------|
| [Consultant A] | ✅ [Date] | ✅ | Ready |
| [Cleaning LLC] | ✅ [Date] | ✅ | Ready |
| [New contractor — December] | ❌ Missing | ❌ | ⚠️ Collect before filing |

---

## Backup Withholding

**Vendors without W-9 paid ≥$600:** [None / [Vendor] — $[X] paid; backup withholding applies]
**Backup withholding owed to IRS:** $[X] / None

---

## Filing Status

| Form | Count | E-file | Vendor copy | IRS copy | Status |
|------|-------|--------|------------|---------|--------|
| 1099-NEC | [N] | ✅ [Date] | ✅ Sent [Date] | ✅ Filed [Date] | ✅ Complete |
| 1099-MISC | [N] | ✅ [Date] | ✅ Sent [Date] | ✅ Filed [Date] | ✅ Complete |

**Late filing?** ❌ No — all filed by January 31
```

## Output Contract
- W-9 before first payment, always — the 1099 process starts at vendor setup; if a vendor is paid without a W-9, the company faces backup withholding obligations (24% of all payments must be withheld and remitted to IRS) and may not have the correct TIN for 1099 preparation; Dr. Lewis enforces the W-9-before-first-payment rule at vendor setup (fin-ops-vendor-setup) so that 1099 preparation in January is a clean exercise with all information on file; a missing W-9 discovered in January typically requires an urgent chase of the vendor, some of whom have become unreachable, and risks a late or incorrect filing
- Correct entity classification determines who gets a 1099 — incorrectly issuing a 1099 to a corporation (other than attorneys or medical providers) creates an IRS matching problem; incorrectly not issuing a 1099 to an individual contractor who earned $600+ creates an IRS penalty; the W-9 Box 3 (entity type) is the controlling document; Dr. Lewis records the entity type at vendor setup and sets the QuickBooks 1099 flag accordingly; any vendor whose entity type is unclear requires Dr. Lewis review before the first payment
- January 31 is the hard deadline for 1099-NEC — the IRS deadline for 1099-NEC (nonemployee compensation) is January 31 for both the vendor copy and the IRS copy; a late 1099-NEC incurs penalties starting at $60 per form (if filed within 30 days) and escalating to $330 per form for intentional disregard; for a company with 20 contractor vendors, the maximum penalty for intentional disregard is $6,600; Dr. Lewis starts preparing 1099s on January 1 (as soon as the prior year is closed) and aims to file by January 25 to have a 6-day buffer before the deadline
- HITL required: Controller pulls the QuickBooks 1099 report and assembles the draft; Dr. Lewis reviews the 1099 list for correct vendor classification, TIN accuracy, and amount accuracy before filing; any vendor with a missing W-9 is flagged to the controller for immediate collection; 1099s are submitted by Dr. Lewis or under Dr. Lewis direct supervision; Matt Mathison is notified if any 1099 situation involves a related-party payment or an attorney or healthcare payment that may have regulatory implications

## System Dependencies
- **Reads from:** QuickBooks (1099 vendor report, payment amounts by vendor); vendor W-9 files (SharePoint/Finance/<Company>/Vendors/W-9s/); vendor master (entity type, TIN, address from Bill.com/QuickBooks)
- **Writes to:** 1099-NEC and 1099-MISC forms (e-file to IRS via Tax1099 or QuickBooks 1099 module); vendor copy (mail or electronic); IRS filing confirmation (retain); QuickBooks (mark 1099 forms as issued)
- **HITL Required:** Controller prepares draft; Dr. Lewis reviews and approves all 1099s before filing; Dr. Lewis files or supervises filing; Matt Mathison notified of any related-party, attorney, or healthcare 1099 implications

## Test Cases
1. **Golden path:** Allevio tax year 2025 — 1099 preparation → January 1: Controller pulls QuickBooks 1099 vendor report; 8 vendors flagged as 1099-eligible; amounts range from $1,200 to $28,000; W-9s all on file from vendor setup process; entity types: 5 individuals/sole props, 2 partnerships, 1 attorney (corporation); 8 forms to prepare; 8 ≥ IRS e-file threshold (e-file required); Dr. Lewis reviews: amounts match QuickBooks vendor payment history ✅; TINs match W-9s ✅; attorney corporation included ✅; AdvancedMD (C-Corp) excluded ✅; e-file via Tax1099 January 20; IRS confirmation received; vendor copies mailed January 20; all delivered before January 31 deadline; no late filing penalties; Dr. Lewis retains copies and filing confirmation
2. **Edge case:** A cleaning service vendor was paid $1,800 during the year but never provided a W-9 → The vendor was added in August without following the vendor-setup process (control gap); backup withholding should have been applied to all payments but wasn't; Dr. Lewis assesses the situation: (1) request the W-9 immediately via phone + email; if the vendor is reachable and provides a W-9, proceed with 1099 preparation; (2) if the vendor doesn't respond by January 15, prepare the 1099 with the name and address on file and leave TIN blank with a note "TIN not obtained despite request"; IRS may assess a TIN missing penalty ($60) but this is better than not filing; (3) backup withholding was not applied — the company cannot retroactively withhold from past payments; Dr. Lewis documents the control failure and reinforces the W-9-before-first-payment rule with the controller going forward
3. **Adversarial:** A vendor calls in February and says "your 1099 shows $28,000 but I was only paid $22,000 — you need to issue a corrected 1099" → Dr. Lewis pulls the QuickBooks payment history for the vendor: 12 payments totaling $28,000 ✅; shows the vendor the payment detail (dates, invoice numbers, amounts); most common cause of discrepancy: one or more payments were refunded or credited but the vendor is not counting them; if the refund/credit was in the same year, the net should be used; if the refund was in a different year, the gross paid is what is reported; if the vendor identifies a specific payment they didn't receive ($6,000 payment #8), Dr. Lewis investigates: Was the payment returned? Did it go to the wrong bank account? If Dr. Lewis confirms the payment was genuinely not received, a corrected 1099 is appropriate; if the payment was received (bank confirms deposit), Dr. Lewis provides the bank ACH trace number and the issue is closed

## Audit Log
All W-9s retained permanently. QuickBooks 1099 vendor payment reports retained by year. 1099 forms issued retained for 7 years. IRS e-file confirmation receipts retained. Any backup withholding deposits retained. Vendor 1099 disputes and resolutions retained. Missing W-9 follow-up records retained.

## Deprecation
Retire when each portfolio company has a controller or outsourced tax preparer who manages 1099 filing — with Dr. Lewis reviewing the 1099 list before filing and Matt Mathison notified of any related-party, attorney, or healthcare 1099 implications.
