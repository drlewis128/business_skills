---
name: finance-ap-manager
description: "Manage accounts payable for MBL Partners portfolio entities. Use when the user says 'accounts payable', 'AP', 'pay a vendor', 'vendor payment', 'pay an invoice', 'invoice approval', 'bill approval', 'Bill.com', 'bill payment', 'pay a bill', 'AP process', 'AP workflow', 'accounts payable management', 'vendor invoice', 'supplier invoice', 'outstanding bills', 'bills to pay', 'AP aging', 'invoice aging', 'payment schedule', 'payment run', 'when do we pay vendors', 'AP reconciliation', 'AP audit', 'duplicate invoice', 'fraudulent invoice', 'invoice fraud', 'AP controls', 'three-way match', 'purchase order', 'bill approval workflow', 'payment terms', 'net 30 payment', 'net 60 payment', 'early payment discount', 'AP dashboard', 'bills outstanding', or 'vendor bills'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--action <approve|pay|audit|reconcile|report>] [--vendor <name>] [--amount <threshold>]"
---

# Finance AP Manager

Manage accounts payable for MBL Partners portfolio entities — running the Bill.com-based invoice approval workflow, enforcing payment authorization controls, detecting duplicate or fraudulent invoices, and maintaining clean AP aging across all entities. AP discipline protects entity cash and prevents the fraud exposure that small companies are disproportionately vulnerable to.

## When to Use
- Weekly AP run: review and approve invoices for payment
- Onboarding a new vendor to the payment process
- AP aging review (monthly)
- Investigating a suspected duplicate or fraudulent invoice

## AP Management Framework

```
AP SYSTEM: Bill.com (primary) → QuickBooks (accounting sync)
  Bill.com: invoice receipt, approval routing, payment scheduling, ACH/check execution
  QuickBooks: GL entries, expense categorization, AP aging reporting
  Entity separation: separate Bill.com accounts per entity (same as GHL subaccount isolation)
  Dr. Lewis: Bill.com admin across all entity accounts
  
INVOICE APPROVAL WORKFLOW:
  Step 1: invoice received (Bill.com inbox or entity CEO upload)
  Step 2: auto-coding attempt (Bill.com AI suggests vendor, GL code, amount)
  Step 3: Dr. Lewis review: correct vendor? correct GL category? matches purchase order/contract?
  Step 4: approval routing by amount:
    <$500: entity CEO approves in Bill.com (self-service)
    $500-$5K: entity CEO approves; Dr. Lewis reviews within 24 hours
    >$5K: entity CEO approves; Dr. Lewis approves; payment queued
    >$25K: entity CEO + Dr. Lewis + Matt Mathison notification before payment
  Step 5: payment scheduled (Bill.com); executed on next payment run (twice weekly)
  
FRAUD PREVENTION CONTROLS:
  Duplicate check: Bill.com flags duplicate invoice numbers from same vendor
  New vendor check: Dr. Lewis verifies new vendors before first payment (W-9; legitimate business)
  Bank account change: any vendor bank account change → Dr. Lewis calls vendor directly to confirm
    (bank account change fraud is the #1 B2B payment fraud vector)
  Large unexpected invoice: any invoice >$10K from a vendor whose typical invoice is <$5K → Dr. Lewis flags
  
PAYMENT SCHEDULE:
  Twice weekly payment run: Tuesday and Thursday
  Payment terms honored: net 30 default; net 60 for specific large vendors; net 15 for agreed vendors
  Early payment discount: if vendor offers >1.5% net 10 discount → Dr. Lewis evaluates (often worth it)
  
AP AGING REVIEW (MONTHLY):
  0-30 days: normal
  31-60 days: review for missed invoices or disputed bills
  60-90 days: entity CEO notified; resolve or dispute within 30 days
  >90 days: escalate; potential vendor relationship risk; Dr. Lewis contacts vendor
  
ALLEVIO NOTE:
  Allevio AP includes clinical vendor payments (lab; supplies; provider contracts)
  These vendors may have access to PHI in their service delivery
  BAA required for any clinical vendor with data access before first payment
  BAA status tracked in revops-data-governance; Dr. Lewis confirms before new clinical vendor payment
```

## Output Format

```markdown
# AP Review — [Entity] — Week of [Date]
**System:** Bill.com | **Prepared by:** Dr. Lewis

---

## Invoices Pending Approval

| Vendor | Invoice # | Amount | Due Date | Category | Action |
|--------|---------|--------|---------|---------|--------|
| [Vendor] | [#] | $X | [Date] | [GL Category] | Approve / Hold / Flag |

---

## AP Aging Summary

| Bucket | Amount | Count | Action |
|--------|--------|-------|--------|
| 0-30 days | $X | N | Monitor |
| 31-60 days | $X | N | Review |
| 61-90 days | $X | N | Resolve |
| >90 days | $X | N | Escalate |

---

## Flags This Week
[Duplicate invoices / new vendors / bank account changes / unusual amounts]
```

## Output Contract
- Bank account change verification by phone call is non-negotiable — Dr. Lewis will not process any vendor payment to a changed bank account without a direct phone call to the vendor's known phone number (not a number provided in the bank change request email); this is the most common B2B payment fraud: criminals send a fake "bank account change" notification claiming to be an existing vendor; the email looks authentic; the only reliable defense is a verification call to the vendor's known contact; this protocol is applied consistently regardless of the vendor's size or how long they've been a vendor
- The twice-weekly payment run creates predictability for vendors and control for Dr. Lewis — vendors know when to expect payment (Tuesday and Thursday); Dr. Lewis reviews all items in a single focused session rather than approving payments ad hoc throughout the week; ad hoc approvals are where fraud slips through; batched approvals with a consistent review process are how AP fraud is caught; if an entity CEO wants to pay a vendor outside the Tuesday/Thursday cycle, they bring it to Dr. Lewis with a reason, and Dr. Lewis makes the call
- HITL required: any invoice >$5K → entity CEO + Dr. Lewis; >$25K → Matt Mathison notification; new vendor → Dr. Lewis verifies (W-9; business legitimacy); bank account change → Dr. Lewis calls vendor; invoice >$10K from vendor with typical <$5K history → Dr. Lewis flags before payment; Allevio clinical vendor → BAA confirmation; duplicate invoice → hold and investigate; >90 days AP → Dr. Lewis + entity CEO

## System Dependencies
- **Reads from:** Bill.com (invoice inbox; approval queue; payment history; vendor records); QuickBooks (GL codes; AP aging; prior payments for comparison); vendor contracts (expected invoice amounts and terms); revops-data-governance (Allevio vendor BAA status)
- **Writes to:** Bill.com (approved payments; vendor records; payment history); QuickBooks (GL entries via Bill.com sync; AP aging); entity CEO approval records; Matt Mathison notification records (>$25K); fraud investigation records; vendor onboarding records
- **HITL Required:** >$5K → entity CEO + Dr. Lewis; >$25K → Matt Mathison notification; new vendor → Dr. Lewis verifies; bank account change → Dr. Lewis calls vendor; Allevio clinical vendor → BAA; duplicate → hold; >90 days → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio Tuesday AP run. 7 invoices pending. 4 routine (<$500 each; entity CEO pre-approved); 2 mid-range ($1,800 AdvancedMD; $2,200 lab supply vendor — entity CEO approved; Dr. Lewis reviews: both match contracts ✅); 1 new vendor ($3,600 — medical waste disposal service). New vendor check: W-9 received ✅; business verified via AZ Secretary of State ✅; no Allevio member data access (no BAA needed; waste disposal = HIPAA physical safeguard, not data access ✅). All 7 approved. Payment run executed Thursday. AP aging: 0-30 days $12K (normal); 31-60 days $0; 60+ days $0.
2. **Edge case:** Entity CEO receives an email from "AdvancedMD" requesting a bank account change for future payments → Dr. Lewis: "Do not process this bank account change through email — this is the exact pattern used in business email compromise fraud. Before I update the AdvancedMD payment account in Bill.com, I'm calling AdvancedMD's main billing line at the number I have on file (not any number in this email) to verify the request. If the request is legitimate, AdvancedMD will confirm it on the phone and I'll update the account. If it's not, we've prevented a potentially significant fraudulent payment. Expect to hear from me within 2 hours with confirmation either way."
3. **Adversarial:** Entity CEO wants to do an urgent wire transfer outside the Bill.com payment run to "close a vendor relationship quickly" → Dr. Lewis: "Wire transfers are irreversible — once sent, they cannot be recalled. Before I process any wire transfer, I need: (1) a written approval from you specifying the vendor, amount, and purpose; (2) confirmation that this vendor exists and this payment is expected (I'll verify against our contract or previous invoices); (3) confirmation of the receiving bank account via the vendor's known contact, not just what's in the wire request. If all three are confirmed, I can process a wire on the same day. The extra 2 hours it takes to verify is the cost of never losing money to wire fraud. That's a trade I'll make every time."

## Audit Log
Weekly AP run records. Invoice approval records by authority level. New vendor onboarding records (W-9; business verification; Allevio BAA status). Bank account change verification records (phone call confirmation). Fraud investigation records. AP aging reports (monthly). Large invoice notification records. Matt Mathison notification records.

## Deprecation
Payment run schedule reviewed when entity payment volume changes. Approval thresholds reviewed annually. Bank account change protocol reviewed if Bill.com adds verification features. Fraud controls reviewed when new fraud patterns emerge. Allevio clinical vendor BAA process reviewed when HIPAA regulations change.
