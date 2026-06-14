---
name: supplier-onboarding-tracker
description: "Onboard new suppliers with a structured checklist. Use when the user says 'onboard a supplier', 'new vendor setup', 'add a vendor', 'supplier onboarding', 'set up a new supplier', 'vendor registration', 'add a new vendor to the system', 'new supplier checklist', or 'get a vendor into the system'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--supplier <name>] [--entity <MBL|Allevio|HIVE|Column6>] [--tier <A|B|C>]"
---

# Supplier Onboarding Tracker

Onboard new suppliers with a structured checklist that ensures they are properly vetted, documented, set up in payment systems, and compliant before the first order is placed. Skipping supplier onboarding creates operational, financial, and compliance risk: payments go to unverified bank accounts, W-9s are missing at tax time, HIPAA BAAs are unsigned, and insurance certificates expire unnoticed.

## When to Use
- New supplier selected and approved via vendor evaluation scorecard
- Emergency supplier needed — abbreviated onboarding, then complete full onboarding within 30 days
- Portfolio company acquired — need to onboard their existing suppliers into MBL systems
- Existing supplier changes legal entity, bank account, or contact — re-verify

## Supplier Tier Onboarding Requirements

```
Tier A (Strategic — >25% of category spend):
  Full onboarding: All items below + executive introduction + QBR schedule set up
  Timeline: 5-7 business days before first order

Tier B (Preferred — 10-25% of category spend):
  Standard onboarding: All required items below
  Timeline: 3-5 business days before first order

Tier C (Spot — <10% of spend; commodities):
  Abbreviated onboarding: Legal entity, W-9, bank details, COI
  Timeline: 1-2 business days
```

## Output Format

```markdown
# Supplier Onboarding — <Supplier Name>
**Date initiated:** <date> | **Owner:** Dr. John Lewis
**Supplier:** <legal entity name>
**Entity:** <MBL / Allevio / HIVE / Column6>
**Supplier tier:** A (Strategic) / B (Preferred) / C (Spot)
**First PO target date:** <date>

---

## Step 1: Legal & Compliance (required before any order)

| Item | Status | Due date | Notes |
|------|--------|---------|-------|
| Supplier legal entity confirmed (IRS name match) | ⏳ | <date> | Request W-9 |
| W-9 collected (US suppliers) | ⏳ | <date> | Required for 1099 reporting |
| Certificate of Insurance (COI) received | ⏳ | <date> | Min: $2M GL, $1M E&O |
| COI expiration tracked (calendar reminder set) | ⏳ | <date> | Recollect 30 days before expiry |
| HIPAA BAA executed (if PHI involved — Allevio) | ⏳ | <date> | **CRITICAL: do not order without BAA** |
| NDA executed (if confidential info shared) | ⏳ | <date> | |
| Supplier contract / MSA executed | ⏳ | <date> | |
| OSHA compliance confirmed (HIVE field contractors) | ⏳ | <date> | Certifications required |
| Debarred vendor check (federal contracts) | ⏳ | <date> | Check SAM.gov |
| Sanctions screening (OFAC) | ⏳ | <date> | Especially for international suppliers |

---

## Step 2: Financial Setup

| Item | Status | Due date | Notes |
|------|--------|---------|-------|
| Supplier added to QuickBooks | ⏳ | <date> | Vendor record created |
| ACH/bank details collected and verified | ⏳ | <date> | Call supplier to confirm — don't trust email alone |
| Bill.com vendor record created | ⏳ | <date> | Payment method configured |
| Payment terms confirmed | ⏳ | <date> | Net 30 / Net 45 |
| Invoice format and delivery method confirmed | ⏳ | <date> | Email to billing@entity.com |
| Credit check (Tier A only) | ⏳ | <date> | D&B or equivalent |

**SECURITY NOTE:** Never change bank account details based on an email alone. Always call the supplier's known contact number to verify. Business email compromise (BEC) frequently targets payment setup.

---

## Step 3: Operational Setup

| Item | Status | Due date | Notes |
|------|--------|---------|-------|
| Supplier contact directory updated | ⏳ | <date> | Primary + backup contacts; after-hours for critical suppliers |
| Delivery address confirmed | ⏳ | <date> | Ship-to address for POs |
| Lead time confirmed | ⏳ | <date> | Standard + expedited lead times |
| Ordering process confirmed | ⏳ | <date> | Portal / PO email / EDI |
| Supplier added to preferred supplier list | ⏳ | <date> | Procurement strategy alignment |
| Performance review cadence set (Tier A/B) | ⏳ | <date> | A: Quarterly; B: Semi-annual |

---

## Step 4: Tier A — Strategic Supplier (additional steps)

| Item | Status | Due date | Notes |
|------|--------|---------|-------|
| Executive introduction (Matt Mathison or entity CEO) | ⏳ | <date> | One-time kickoff call |
| Quarterly Business Review (QBR) schedule set | ⏳ | <date> | First QBR: 90 days post-onboarding |
| SLA and KPIs defined | ⏳ | <date> | Document in supplier file |
| Joint escalation path defined | ⏳ | <date> | Who calls whom when things go wrong |
| Annual review in calendar | ⏳ | <date> | Contract renewal + performance assessment |

---

## Onboarding Status Summary

| Step | Complete | Blockers |
|------|---------|---------|
| Legal & Compliance | ⏳ X/10 items | BAA pending |
| Financial Setup | ⏳ X/6 items | Bank details not confirmed |
| Operational Setup | ⏳ X/6 items | — |
| Tier A additions | ⏳ X/5 items | — |
| **Overall** | ⏳ **X/27 items** | **2 blockers** |

**Onboarding complete:** ⏳ Not yet — resolve blockers before first PO
```

## Output Contract
- Legal/compliance step always first — a supplier without a W-9 creates a tax liability; a supplier without a BAA creates a HIPAA violation; these block all orders
- Bank account verification always by phone — BEC (business email compromise) fraud targets exactly this step; never change payment details based on email alone
- COI expiration always tracked — an expired COI means the supplier is not insured; MBL has no coverage either
- HIPAA BAA flagged as critical blocker for Allevio — a PO to a clinical vendor without a BAA is a HIPAA violation regardless of dollar amount
- HITL required: Dr. Lewis manages onboarding; bank account details verified by Dr. Lewis (high-fraud-risk step); HIPAA BAA confirmed by Dr. Lewis before any Allevio order; Matt Mathison introduced for Tier A strategic suppliers; first PO blocked until onboarding complete

## System Dependencies
- **Reads from:** Vendor evaluation scorecard, contracts/BAA (SharePoint/Legal)
- **Writes to:** QuickBooks (vendor record), Bill.com (payment setup), supplier registry, preferred supplier list
- **HITL Required:** Dr. Lewis completes onboarding; bank verification by phone (Dr. Lewis); HIPAA BAA confirmed; Matt Mathison Tier A intro; first PO only after onboarding complete

## Test Cases
1. **Golden path:** Onboard Cardinal Health as Tier B preferred supplier for Allevio → Legal: W-9 received, COI: $5M GL confirmed, HIPAA BAA executed (Allevio clinical supplies); Financial: QuickBooks vendor created, bank details verified by phone (ACH confirmed), Bill.com record created, Net 30 confirmed; Operational: contacts loaded, 5-day lead time confirmed, email PO process; onboarding complete in 4 business days; first PO issued
2. **Edge case:** Emergency supplier needed today — can't wait for full onboarding → complete critical items only: W-9, HIPAA BAA (if Allevio), bank verification; issue PO after; complete remaining onboarding within 30 days; log as emergency exception; this is how emergency procurement works — fast, not sloppy; the BAA is never skippable even in emergencies
3. **Adversarial:** Supplier sends an email mid-relationship saying "we've changed our bank account — please update your records" → this is a classic BEC (business email compromise) scenario; never update bank details based on email alone; call the supplier's known contact using a previously verified phone number (not the number in the email); if they confirm the change verbally, then update the records; document the verification method; BEC fraud costs billions annually and specifically targets this scenario

## Audit Log
Onboarding checklist retained per supplier. Bank verification call logged (date, who called, who confirmed). HIPAA BAA copies in SharePoint/Legal/BAAs. COI expiration calendar maintained.

## Deprecation
Retire when MBL has a procurement platform with automated supplier onboarding, document collection, and compliance verification built in.
