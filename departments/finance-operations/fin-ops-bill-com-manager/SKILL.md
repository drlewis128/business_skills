---
name: fin-ops-bill-com-manager
description: "Manage Bill.com — approval workflow, vendor payments, and QuickBooks integration. Use when the user says 'Bill.com', 'bill.com setup', 'bill.com workflow', 'bill.com approval', 'AP automation', 'bill.com configuration', 'bill.com vendor', 'bill.com payment', 'bill.com sync', 'bill.com integration', 'bill.com access', 'bill.com user', 'configure bill.com', 'AP platform', 'bill.com error', 'bill.com automation', 'set up bill.com', or 'bill.com account'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <setup|review|configure|troubleshoot>] [--module <approvals|vendors|payments|integration>]"
---

# Bill.com Manager

Configure and manage Bill.com for MBL portfolio companies — establishing the approval workflow, vendor management, payment automation, and QuickBooks sync that make AP processing both efficient and controlled. Bill.com is the primary AP control layer for MBL portfolio companies: it enforces the approval matrix, maintains the vendor payment record, and syncs to QuickBooks to eliminate double-entry. When Bill.com is configured correctly, a vendor invoice goes from receipt → coding → approval → payment → QuickBooks entry with zero manual data entry duplication. When it's misconfigured, approvals are bypassed, vendors receive duplicate payments, and the QuickBooks sync creates duplicate entries that corrupt the financial statements.

## When to Use
- New portfolio company — set up Bill.com from scratch
- Approval workflow needs to be modified (new approver, new threshold)
- A payment was made without proper approval — investigate
- Bill.com and QuickBooks are out of sync — resolve
- A vendor needs to be added, updated, or deactivated in Bill.com
- Preparing for audit — pulling Bill.com approval records

## Bill.com Configuration Framework

```
Bill.com account setup (new company):

  COMPANY PROFILE:
    Company name: Legal entity name (matches QuickBooks)
    Fiscal year: January-December
    Time zone: MST (Mountain Standard Time for AZ entities)
    AP email inbox: Set a dedicated AP email (e.g., ap@allevio.com or bills@allevio.com)
      All vendor invoices should be forwarded or sent directly to this inbox
      Bill.com processes invoices from this inbox automatically (OCR extraction)
      
  QUICKBOOKS SYNC:
    Connect to QuickBooks Online: Settings → Integration → QuickBooks Online
    Sync frequency: Real-time (not batch)
    Sync direction: Bills from Bill.com → QuickBooks (Bill.com is source of truth for AP)
    Vendor sync: Yes — vendors in QBO sync to Bill.com
    Account mapping: Map Bill.com expense categories to QuickBooks GL accounts
    IMPORTANT: Do NOT enable "sync all QuickBooks transactions to Bill.com" — 
      only sync AP invoices; enabling full sync creates duplicates
      
  USER SETUP (Bill.com roles — principle of least privilege):
    Company Admin (Dr. Lewis): Full access — settings, all approvals, payments
    Manager (CEO): Approve invoices; cannot change settings or send payments without secondary approval
    Controller/Bookkeeper: Enter and code invoices; cannot approve or send payments
    Vendor-facing (optional): Vendors with a Bill.com vendor portal login — enter bank details directly
    
    Approval workflow configuration:
      Set approver(s) for each approval level before invoices flow through:
      Level 1 (<$1,000): Controller → Auto-approve OR Controller approval only
      Level 2 ($1,000-$5,000): Controller enters → CEO approves
      Level 3 ($5,000-$25,000): Controller enters → CEO approves → Dr. Lewis approves
      Level 4 (>$25,000): Controller enters → CEO approves → Dr. Lewis approves → Matt Mathison aware
      
      IMPORTANT: Do NOT use Auto-approve at any level without Dr. Lewis review
      Every invoice requires at least one human approval — no exceptions
      
  VENDOR MANAGEMENT IN BILL.COM:
    Add vendor: Only after fin-ops-vendor-setup process complete
    Payment method: ACH (preferred) → vendor enters bank details via Bill.com portal invite
    Check: Available for vendors who can't use ACH; address must be confirmed
    International: Wire transfer — requires additional setup and Matt Mathison approval
    
    Vendor portal invite: When adding a new ACH vendor:
      Settings → Vendors → [Vendor name] → Send Invite
      Vendor receives an email to enter their own bank details securely
      THIS IS THE PREFERRED METHOD — vendor enters their own bank details; reduces BEC risk
      
  PAYMENT SETTINGS:
    Payment method preference order: ACH first; check if ACH unavailable
    ACH processing time: 3-5 business days (submit Tuesday; arrive Friday)
    Check processing: 3-7 business days (mail)
    Payment approval (separate from invoice approval):
      Add payment authorizer: After invoice approved, payment requires additional authorization before sending
      Authorizer: Dr. Lewis (or CEO for batches <$5,000)
      This is the dual-control that prevents approved invoices from being paid to wrong accounts
      
BILL.COM TROUBLESHOOTING:

  Issue: Invoice approved in Bill.com but not appearing in QuickBooks
    Check: Settings → Integration → Sync history — is the sync running?
    Fix: Force sync; if sync error, disconnect and reconnect the integration
    Never: Create a duplicate entry in QuickBooks manually — this creates a double entry
    
  Issue: Duplicate vendor entries (same vendor appears twice)
    Cause: Bill.com and QuickBooks created two separate vendor records
    Fix: Merge duplicate vendors in QuickBooks; ensure Bill.com and QBO vendor IDs are linked correctly
    Prevention: Always add vendors in QuickBooks first; let the sync bring them to Bill.com
    
  Issue: Payment returned (ACH return)
    Cause: Invalid bank account or routing number for the vendor
    Bill.com will notify by email; funds return to the company account
    Action: Contact vendor; re-verify bank details (have them re-enter via Bill.com portal); retry payment
    Do NOT contact vendor by replying to the ACH return email — contact via known channel
    
  Issue: A payment went to the wrong vendor
    This is a serious situation — potentially fraud or BEC
    Escalate to Dr. Lewis immediately; do not attempt to resolve independently
    Dr. Lewis: Contact bank immediately to initiate ACH recall (possible if within 5 business days)
    Notify Matt Mathison; investigate how the wrong vendor bank details were in the system
```

## Output Format

```markdown
# Bill.com Configuration — [Entity]
**Date:** [Date] | **Company Admin:** Dr. Lewis | **Controller:** [Name]
**QuickBooks sync:** ✅ Connected / ❌ Error

---

## Approval Workflow Configuration

| Level | Amount range | Approver 1 | Approver 2 | Status |
|-------|-------------|-----------|-----------|--------|
| 1 | <$1,000 | Controller | — | ✅ Active |
| 2 | $1,000-$5,000 | CEO | — | ✅ Active |
| 3 | $5,000-$25,000 | CEO | Dr. Lewis | ✅ Active |
| 4 | >$25,000 | Dr. Lewis | Matt notified | ✅ Active |

**Auto-approve enabled?** ❌ No (never enabled)

---

## User Access Review

| User | Role | Can approve invoices | Can send payments | Status |
|------|------|---------------------|------------------|--------|
| Dr. Lewis | Company Admin | All levels | ✅ | ✅ |
| [CEO] | Manager | Up to $25K | With Dr. Lewis | ✅ |
| [Controller] | Clerk | None | None (enter only) | ✅ |
| [Former employee] | Manager | ✅ — ACTIVE ❌ | ✅ | ❌ Remove immediately |

---

## Vendor Payment Methods

| Vendor | Method | Status | Last verified |
|--------|--------|--------|--------------|
| AdvancedMD | ACH | ✅ Active | [Date] |
| Marshall Medical Billing | ACH | ✅ Active | [Date] |
| [New vendor] | ACH — portal invite pending | ⚠️ Pending | — |

---

## QuickBooks Sync Status

| Sync dimension | Status | Last sync | Issues |
|----------------|--------|---------|--------|
| Bills (AP) → QBO | ✅ | [Date/Time] | None |
| Vendors | ✅ | [Date/Time] | 1 duplicate — see below |
| Payments | ✅ | [Date/Time] | None |

**Open issues:** [Duplicate vendor: "AdvancedMD" and "Advanced MD Inc" — merge in QBO]

---

## Recent Activity Review (Dr. Lewis — monthly)

**Invoices approved without proper level?** [None / Specific]
**Payments made to new or changed bank accounts this month?** [None / [Vendor] bank account updated [Date] — verification confirmed [Date]]
**ACH returns this month?** [None / Specific]
**Sync errors this month?** [None / Specific]
```

## Output Contract
- No auto-approve at any level — Bill.com has an auto-approve feature that can be enabled to automatically approve invoices below a threshold; Dr. Lewis does not enable this for any MBL portfolio company; every invoice requires at least one human review; the controller enters and codes the invoice, and the designated approver (CEO or Dr. Lewis based on amount) approves it in Bill.com; the 30 seconds it takes the CEO to click "approve" in Bill.com is the control that prevents fraudulent invoices from being paid; auto-approve eliminates that control
- Departing employee Bill.com access is removed the same day — a departing controller or bookkeeper with Bill.com access can enter and code invoices; if they also have payment authorization, they can route payments to accounts they control; Dr. Lewis removes Bill.com access the day any employee with financial access departs, regardless of whether their departure is friendly or acrimonious; this is the same policy as QuickBooks access removal; Dr. Lewis audits the Bill.com user list quarterly and any inactive or unknown users are removed
- Payment to wrong account triggers immediate bank contact — if a payment is discovered to have gone to the wrong vendor bank account, the window for an ACH recall is approximately 5 business days; Dr. Lewis contacts the bank immediately and initiates the ACH recall; simultaneously, the investigation begins: how did the wrong bank account end up in the system? Was the vendor's bank account updated via an email request (BEC)? Was there a vendor setup error? The investigation result determines whether this is a fraud event (requiring law enforcement notification) or an operational error (requiring vendor setup process review)
- HITL required: Dr. Lewis owns the Bill.com configuration; controller enters invoices; CEO and Dr. Lewis approve per the matrix; Dr. Lewis approves all vendor bank account changes and all payment authorizations >$5K; any ACH return or payment anomaly escalated to Dr. Lewis immediately; access changes require Dr. Lewis execution same-day; wrong payment or suspected fraud escalated to Matt Mathison immediately

## System Dependencies
- **Reads from:** Approved vendor list (vendor master from fin-ops-vendor-setup); approved invoices (from fin-ops-ap-processor); approval authority matrix (from fin-ops-internal-controls-designer); QuickBooks (vendor and GL sync)
- **Writes to:** Bill.com (approval workflow, vendor master, payment records); QuickBooks (via sync — AP entries, payments); audit trail (Bill.com approval log, available for 7 years)
- **HITL Required:** Dr. Lewis owns configuration and approval final authority; CEO approves invoices per matrix; departing employee access removal is Dr. Lewis same-day action; wrong payments or fraud escalated to Matt Mathison immediately

## Test Cases
1. **Golden path:** Controller receives an AdvancedMD invoice via the Bill.com AP email inbox → Bill.com OCR extracts: vendor AdvancedMD, amount $1,850, date June 14; controller reviews, confirms coding (5210 Software/SaaS / Allevio), routes to CEO for approval (Level 2: $1K-$5K); CEO receives Bill.com approval notification, reviews PDF, approves June 14 at 11:30 AM; payment queued; Dr. Lewis reviews the payment queue (>$1K, he reviews individually); Dr. Lewis approves the payment execution for the Tuesday ACH batch; Bill.com submits ACH June 16 (Tuesday); AdvancedMD receives payment June 19 (Friday); Bill.com syncs payment to QuickBooks; QuickBooks shows bill paid June 16; bank feed matches the ACH debit June 16; complete cycle, zero manual duplication
2. **Edge case:** Bill.com sync error — QuickBooks shows 3 bills from this month not in QuickBooks → Controller notices during close prep: 3 Bill.com payments from June don't show in QuickBooks AP; Dr. Lewis checks the sync log: a sync error occurred June 10 at 2 AM (QuickBooks API timeout); Bill.com shows the 3 bills as synced but QuickBooks shows them as not received; fix: force a manual sync from Bill.com settings; if the force sync doesn't resolve, Dr. Lewis disconnects and reconnects the integration; the 3 missing bills appear in QuickBooks after reconnection; confirm amounts match exactly; do not manually enter the bills in QuickBooks — wait for the sync; if the sync can't be fixed before close, Dr. Lewis manually enters the 3 bills with a note to delete when the sync is restored
3. **Adversarial:** A controller leaves the company on Friday and over the weekend sends a payment approval via her still-active Bill.com account to a vendor she created → Monday morning, Dr. Lewis receives a Bill.com notification of a $4,200 payment approved and submitted by the former controller's account to "TechVision Consulting" — a vendor Dr. Lewis doesn't recognize; Dr. Lewis immediately logs into Bill.com: (1) revokes the payment if it hasn't been sent; (2) removes the former controller's access; (3) investigates TechVision Consulting (not in the approved vendor list; W-9 on file? CEO authorization?); (4) if the payment was already submitted — contacts the bank for ACH recall; (5) notifies the CEO and Matt Mathison of the unauthorized access and payment attempt; root cause: access was not removed on the employee's last day; Dr. Lewis implements same-day access removal protocol going forward

## Audit Log
All Bill.com approval records retained permanently (who approved, when, what amount). Payment records retained. Vendor bank account addition/modification records retained. Access changes retained. Sync error logs retained. ACH return records retained. Wrong payment/fraud events retained permanently.

## Deprecation
Retire when each portfolio company has a controller who owns day-to-day Bill.com operations — with Dr. Lewis as Company Admin, conducting monthly access and payment reviews, and approving all vendor bank account changes.
