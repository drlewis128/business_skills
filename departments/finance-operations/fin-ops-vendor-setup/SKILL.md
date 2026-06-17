---
name: fin-ops-vendor-setup
description: "Onboard a new vendor — W-9 collection, bank verification, approval, and vendor master setup. Use when the user says 'add a new vendor', 'new vendor setup', 'vendor onboarding', 'set up this vendor', 'vendor master', 'new supplier', 'add vendor to QuickBooks', 'vendor registration', 'new contractor setup', 'vendor approval', 'add payee', '1099 vendor', 'new service provider', 'vendor form W-9', or 'vendor bank details'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--vendor <vendor name>] [--type <vendor|contractor|1099|employee>] [--payment <ach|check|wire>]"
---

# Vendor Setup

Onboard new vendors for MBL portfolio companies — collecting required documentation, verifying payment details, obtaining approval, and establishing the vendor in Bill.com and QuickBooks. Vendor setup is the primary control against vendor fraud: a fraudulent vendor added to the approved list can generate fake invoices that pass the AP processing controls; the safeguards in vendor setup (W-9 verification, bank detail confirmation, approval before first payment) are the controls that prevent this. At portfolio scale, Dr. Lewis maintains a lean vendor list — every new vendor requires documented justification and approval, not just convenience.

## When to Use
- A new vendor or contractor relationship is being established
- A CEO or COO requests adding a new vendor to QuickBooks/Bill.com
- An invoice arrives from an unknown vendor (stop AP processing; run vendor setup first)
- An existing vendor changes their bank account details (treat as a new setup)
- Annual vendor list review — purging inactive vendors

## Vendor Setup Framework

```
Vendor setup process:

  Step 1 — BUSINESS JUSTIFICATION:
    Why are we adding this vendor? What service do they provide? Who authorized the relationship?
    Justification fields: Service description | CEO/COO who authorized | Contract or PO reference
    No justification = no vendor setup; Dr. Lewis requires a written or email authorization
    
  Step 2 — VENDOR DOCUMENTATION:
    W-9 Collection (mandatory for all US vendors and contractors):
      Send IRS Form W-9 request to vendor
      W-9 must be signed; box 3 (entity type) correctly checked; TIN correct
      Retain W-9 permanently (required for 1099 filing if payments ≥$600/year)
      
    Entity type determines payment treatment:
      Individual/Sole Prop/Single-member LLC: 1099-NEC if ≥$600/year services
      C-Corp or S-Corp: Generally no 1099 (exception: attorneys, medical payments)
      Partnership/LLC taxed as partnership: 1099-NEC if ≥$600/year services
      Corporation (general): No 1099 required
      
    Business verification (for all vendors >$1,000 expected annual spend):
      ☐ Verify business exists: Google Maps, state secretary of state lookup, BBB
      ☐ Confirm contact matches the expected relationship (not a spoofed contact)
      ☐ Check that website and email domain are consistent (not gmail for a claimed business)
      
    Bank detail collection (for ACH vendors):
      Preferred method: Vendor enters directly in Bill.com (Dr. Lewis sends a Bill.com vendor invite)
      Alternative: Voided check with routing/account number + bank name
      NEVER accept bank details by email without verbal or Bill.com portal confirmation
      Confirmation call: If bank details arrive by email, call a known phone number to confirm
        (not the number in the email — a number already on file or found on the vendor's website)
      Bank detail change red flag: If an existing vendor claims to have changed bank accounts,
        treat as a new setup; require full verification; call the known contact before updating
        
  Step 3 — APPROVAL:
    Vendor authorization levels:
      <$5,000 expected annual spend: Controller approval
      $5,000-$25,000 expected annual: CEO approval
      >$25,000 expected annual: Dr. Lewis approval
      Any vendor that could have regulatory implications (medical, legal, compliance): Dr. Lewis review
      
    Related-party check: Is this vendor related to any MBL employee, investor, or LP?
      If yes → rc-conflict-of-interest-manager review required before setup
      
  Step 4 — SYSTEM SETUP:
    Bill.com: Add vendor; set payment method; link bank account (ACH) or mailing address (check)
    QuickBooks: Add vendor with correct tax classification; link to Bill.com if integrated
    Vendor master record includes: Legal name; DBA; Address; EIN/SSN (masked); Payment method; W-9 on file (yes/no); 1099 required (yes/no); Authorized by; Date added; Spend category
    
  Step 5 — FIRST PAYMENT VERIFICATION:
    After first payment to new vendor: Confirm vendor received payment and amount is correct
    This catches bank detail errors before larger payments accumulate
    
  Annual vendor list review (Dr. Lewis + controller, Q1 each year):
    Purge inactive vendors: No payment in 18+ months → Deactivate (don't delete; retain history)
    Verify active vendors still have valid business relationships
    Confirm W-9s on file for all vendors where 1099 is required
```

## Output Format

```markdown
# Vendor Setup — [Vendor Name]
**Entity:** [Company] | **Date:** [Date] | **Processor:** Dr. Lewis / Controller

---

## Business Justification

**Service:** [What does this vendor do for us?]
**Authorized by:** [CEO / COO / Dr. Lewis] on [Date]
**Contract or PO:** [Reference or "No contract — one-time purchase at CEO authorization"]
**Expected annual spend:** $[X]

---

## Vendor Documentation

| Document | Status |
|---------|--------|
| W-9 received | ✅ [Date] / ❌ Pending |
| W-9 signature confirmed | ✅ / ❌ |
| Entity type | [Individual / Corp / Partnership / LLC] |
| 1099 required? | ✅ Yes — 1099-NEC if ≥$600 / ❌ No (corporation) |
| Business verification | ✅ Confirmed / ❌ Unable to verify — escalate |
| Related-party check | ✅ No relation / ⚠️ Related — rc-conflict-of-interest-manager required |

---

## Payment Setup

**Payment method:** [ACH / Check / Wire]
**Bank detail collection:** [Bill.com portal invite sent [Date] / Voided check received]
**Verbal confirmation of bank details:** ✅ [Date] — called [number] / N/A (portal entry)
**Bank detail change?** [Yes — re-verified / No — first setup]

---

## Approval

**Approval required:** [Controller / CEO / Dr. Lewis]
**Approval received:** [Name] on [Date]

---

## System Setup

**Bill.com:** ✅ Added [Date] | Payment method: [ACH/Check]
**QuickBooks:** ✅ Added [Date] | Tax class: [1099 / Non-1099]
**First payment verification:** [Planned after first payment to [Vendor]]

---

## Flags

[None / Related-party disclosure required / Bank detail received by email — verbal confirmation pending]
```

## Output Contract
- Never update bank details from an email request alone — business email compromise (BEC) is the #1 source of AP fraud; the attacker compromises a vendor's email account and sends a "please update our bank details" email; if bank details are updated without verification, the next payment goes to the attacker's account; Dr. Lewis requires: (1) the vendor enters their own bank details directly in Bill.com via portal invite, OR (2) if details come by any other method, a verbal confirmation call to a known phone number (not the number in the email); this applies to both new vendor setup and any change to existing vendor bank details; no exception for trusted vendors or "we've worked with them for years"
- W-9 before first payment — no vendor receives a payment without a W-9 on file (for US vendors/contractors); the W-9 is needed for accurate 1099 reporting; if the first payment is made before the W-9 is received, the company is exposed to backup withholding requirements and 1099 filing penalties; getting the W-9 first is also an authentication step — a vendor who can't provide a W-9 may not be a legitimate business; Dr. Lewis holds the first payment until the W-9 is received, signed, and filed
- Related-party check is mandatory before any setup — if the new vendor is the CEO's personal business, a company owned by a family member, or has any connection to an MBL investor or LP, the rc-conflict-of-interest-manager process runs before vendor setup is completed; related-party transactions are not prohibited but they require disclosure, FMV pricing documentation, and board awareness; setting up a related-party vendor without disclosure is an integrity violation under THRIVE
- HITL required: Controller processes vendor setup with Dr. Lewis review for any vendor >$5,000 annual; Dr. Lewis approves all vendors >$25,000 annual; any vendor with regulatory implications (medical, legal, compliance-related) requires Dr. Lewis review; Matt Mathison is notified of any related-party vendor; Dr. Lewis conducts the annual vendor list review

## System Dependencies
- **Reads from:** CEO/COO authorization (email or written), IRS W-9 form (from vendor), state secretary of state (business verification), existing vendor master (duplicate check), rc-conflict-of-interest-manager (related-party check)
- **Writes to:** Bill.com vendor master; QuickBooks vendor master; W-9 file (SharePoint/Finance/<Company>/Vendors/W-9s/); vendor approval record; 1099 tracking list
- **HITL Required:** Controller processes; Dr. Lewis approves new vendors >$25K annual; Matt Mathison notified of related-party vendors; bank detail changes require verbal confirmation regardless of amount

## Test Cases
1. **Golden path:** Allevio adds a new medical waste disposal vendor (BioMed Disposal LLC) → CEO authorizes by email ($6,000/year contract); Dr. Lewis approval threshold — $5K-$25K requires CEO approval (done); Dr. Lewis sends Bill.com vendor invite; BioMed enters bank details directly in portal; W-9 requested; W-9 received (Partnership; 1099 required); business verified (AZ state registration confirmed; website matches); no related-party connection; Dr. Lewis approves vendor setup; controller completes Bill.com + QuickBooks entries; 1099 flag set; first payment made after setup; Dr. Lewis confirms BioMed received payment correctly; vendor active
2. **Edge case:** Existing vendor (AdvancedMD) sends email saying "we've changed our banking details, please update to route payments to our new account" → This is a bank detail change — treat as a new setup verification regardless of trusted relationship; Dr. Lewis does NOT update from the email; Dr. Lewis calls AdvancedMD support at the known number from the AdvancedMD website (not any number in the email); verifies: was there an actual banking change? Gets confirmation in writing from a known AdvancedMD contact; if confirmed legitimate, sends Bill.com vendor portal invite for AdvancedMD to enter new details directly; updates after portal entry; if AdvancedMD cannot confirm, treats as BEC attempt and notifies CEO and Matt Mathison
3. **Adversarial:** CEO says "this is my friend's company — just add them to the vendor list, we're going to use them for IT support" → Relationship to CEO (friend's company) triggers related-party review; Dr. Lewis acknowledges the request and responds: "Happy to set them up — I need to document this as a related-party vendor per our controls. Can you confirm: do you have any ownership or financial interest in the company? If not, we just note it's a referral relationship." If CEO confirms no financial interest → note in the vendor record and proceed with standard setup; if CEO has ownership/financial interest → rc-conflict-of-interest-manager required; FMV documentation required; Dr. Lewis notifies Matt Mathison before any payment

## Audit Log
All vendor setup records retained permanently (W-9 and approval trail required for 1099 and fraud prevention purposes). Bank detail collection method and verification record retained permanently. Related-party disclosures retained permanently. Bank detail change events retained permanently. Annual vendor list review records retained.

## Deprecation
Retire when each portfolio company has a controller who owns the vendor master process — with Dr. Lewis reviewing the annual vendor list and approving new vendors above the >$25K threshold.
