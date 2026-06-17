---
name: fin-ops-payment-runner
description: "Run vendor payment batches — ACH, check, and wire payments with approval controls. Use when the user says 'run payments', 'pay vendors', 'payment batch', 'AP payment run', 'pay invoices', 'cut checks', 'ACH payment', 'wire transfer', 'payment approval', 'vendor payments', 'pay bills', 'payment schedule', 'when do we pay', 'payment processing', 'run the AP', 'bill payment', or 'pay these bills'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--date <payment date>] [--method <ach|check|wire>] [--amount <total batch $>]"
---

# Payment Runner

Execute vendor payment batches for MBL portfolio companies — running the weekly or bi-weekly AP payment cycle with proper approval, dual-control, and cash management discipline. Payment execution is the point of highest fraud risk in the AP cycle: a fraudulent payment that clears the bank cannot be easily recovered. At PE portfolio scale, every payment batch requires pre-approval by the authorized approver, a same-day review against the approved invoice list, and a post-payment confirmation that payments reached intended recipients. Dr. Lewis does not execute payments outside the normal cycle without a documented urgent justification.

## When to Use
- Weekly or bi-weekly AP payment run
- An urgent payment must be made outside the normal cycle
- A payment batch needs review before execution
- Reconciling post-payment bank activity to the payment batch

## Payment Run Framework

```
Payment run schedule (standard cadence):
  ACH payments: Run every Tuesday (3-day settlement; funds arrive Friday)
  Check payments: Run every Friday (mail same day; typically 2-5 days delivery)
  Wire transfers: Same-day for time-sensitive (>$10,000 only; Matt Mathison approval)
  
  Payment cycle:
    Monday: Controller pulls AP aging; selects invoices due this week + past due
    Tuesday AM: Payment list reviewed and approved before execution
    Tuesday AM: ACH batch submitted in Bill.com; CEO/Dr. Lewis confirms in Bill.com
    Tuesday-Friday: Monitor for returns or failures (NSF, invalid account)
    
  Invoice selection criteria:
    ✅ Include: Invoices due within 5 business days; past due invoices (pay immediately)
    ⚠️ Review: Invoices with open disputes or coding questions (hold until resolved)
    ❌ Exclude: Invoices not yet approved; invoices for new vendors without completed setup
    
  Early payment: Only if vendor offers a discount ≥1.5% for early payment (e.g., 2/10 net 30)
    Net 30 with 2% early: Annualized rate ~36% — always take it; pay early
    Net 30 with 0.5% early: Annualized ~9% — evaluate vs. cash need; usually not worth it
    
  Late payment: Do not strategically delay payment to preserve cash without CEO knowledge
    Late payment → damages vendor relationships; may trigger late fees; reflects on credit
    If cash is constrained → Dr. Lewis notifies CEO; CEO approves payment prioritization
    
Payment controls (pre-execution):

  BEFORE submitting any payment batch:
  ☐ Every invoice in the batch is in Bill.com with appropriate approval on file
  ☐ Total batch amount matches AP aging selected invoices
  ☐ No new vendors in the batch (new vendor without completed vendor-setup = flag)
  ☐ No bank detail changes since last payment to any vendor in the batch
  ☐ Cash balance post-payment is ≥ 30-day operating reserve
  
  Cash balance check (mandatory before each batch):
    Current bank balance + expected receipts this week − batch total = post-payment balance
    If post-payment balance < 30-day operating reserve → Dr. Lewis and CEO must approve
    30-day operating reserve = 30 days of cash operating expenses (payroll + fixed costs)
    
  Approval authority for payment execution:
    Batch <$5,000 total: Controller executes in Bill.com; CEO approve in Bill.com
    Batch $5,000-$25,000: CEO approves batch in Bill.com; controller executes
    Batch >$25,000: Dr. Lewis approves; CEO approves; controller executes
    Any single payment >$10,000: Dr. Lewis reviews the individual payment specifically
    Wire transfer: Matt Mathison approval for any wire >$10,000
    
  Post-payment review (day of payment):
    Confirm batch submitted successfully in Bill.com
    Pull bank transaction report next day — confirm expected debits posted
    Flag any payment that posted at a different amount than expected
    
  Payment exceptions (outside normal cycle):
    Only with documented urgent reason (late fee, service interruption, regulatory deadline)
    Out-of-cycle payment requires CEO email authorization before processing
    Out-of-cycle wire >$10,000 requires Matt Mathison authorization
```

## Output Format

```markdown
# Payment Run — [Entity] [Date]
**Payment date:** [Date] | **Method:** [ACH / Check / Wire / Mixed]
**Prepared by:** [Controller] | **Approved by:** [CEO / Dr. Lewis]

---

## Pre-Payment Checklist

☐ All invoices in batch approved in Bill.com
☐ Batch total matches AP aging selection: $[X]
☐ No new vendors in batch without completed vendor setup
☐ No bank detail changes this week for vendors in batch
☐ Cash balance post-payment: $[X] remaining (≥30-day reserve: $[X] ✅ / ❌ insufficient)

---

## Payment Batch Summary

| Vendor | Invoice # | Amount | Method | Due date | Status |
|--------|----------|--------|--------|---------|--------|
| [AdvancedMD] | [M-2026-089] | $[X] | ACH | [Date] | ✅ Include |
| [Marshall Medical Billing] | [MM-2026-44] | $[X] | ACH | [Date] | ✅ Include |
| [Rent — Scottsdale clinic] | [RENT-JUN] | $[X] | Check | [Date] | ✅ Include |
| **Total batch** | | **$[X]** | | | |

---

## Cash Balance Check

| | Amount |
|---|--------|
| Current bank balance | $[X] |
| + Expected receipts this week | +$[X] |
| − Payment batch total | −$[X] |
| **Post-payment balance** | **$[X]** |
| 30-day operating reserve required | $[X] |
| **Reserve coverage** | **✅ Sufficient / ❌ Below reserve — escalate** |

---

## Approval Record

**CEO approval:** [Name] — [Date/Time] in Bill.com
**Dr. Lewis approval (if >$25K):** [Date/Time] in Bill.com
**Batch executed:** [Date/Time] by [Controller]

---

## Post-Payment Confirmation

**Bank confirmation (next day):** [✅ All payments posted / ❌ [Payment] returned — [reason]]
**Any discrepancies:** [None / Specific]

---

## Matt Mathison Brief (if applicable)

Unusual payment or out-of-cycle wire: [Description; amount; reason; who approved; confirmation].
```

## Output Contract
- Cash balance check before every batch — no payment batch executes without confirming the post-payment cash balance exceeds the 30-day operating reserve; a company that runs a payment batch that depletes the reserve and then can't make payroll has an immediate crisis; Dr. Lewis calculates the post-payment balance for every batch and escalates to the CEO if the reserve is at risk; the CEO decides whether to defer any payments and which vendors to contact; Dr. Lewis does not make the deferral decision unilaterally
- No payment to an unapproved vendor — if any invoice in the payment batch is from a vendor without completed vendor setup, the payment for that vendor is removed from the batch; the vendor setup process runs first; the payment happens in the next batch cycle after setup is complete; no urgent payment can bypass the vendor setup controls because urgency is often exactly the mechanism used in vendor fraud
- Wire transfers require Matt Mathison approval — wires are the highest-risk payment method because they are typically irreversible once executed; any wire >$10,000 requires Matt Mathison's explicit email or text approval before execution; if Matt Mathison is unavailable, the wire is held; Dr. Lewis does not approve wire transfers on Matt Mathison's behalf; if a vendor is demanding wire payment urgently, that urgency is itself a fraud indicator that triggers additional scrutiny, not an expedited approval
- HITL required: Controller prepares the batch; CEO approves all batches; Dr. Lewis approves batches >$25K and any single payment >$10K; Matt Mathison approves all wires >$10K; post-payment confirmation reviewed by controller and flagged to Dr. Lewis if any payment returns or discrepancy appears

## System Dependencies
- **Reads from:** Bill.com approved invoices; QuickBooks AP aging; bank balance (bank portal or Bill.com cash balance); 30-day operating reserve calculation (fin-ops-cash-flow-tracker)
- **Writes to:** Bill.com payment batch record; QuickBooks payment entries (auto-sync from Bill.com); bank transaction records; payment approval log; Matt Mathison wire notification (if applicable)
- **HITL Required:** Controller prepares; CEO approves batch; Dr. Lewis approves >$25K; Matt Mathison approves wires >$10K; all out-of-cycle payments require CEO email authorization; post-payment: controller confirms bank posting

## Test Cases
1. **Golden path:** Allevio Tuesday ACH batch — $18,400 total (5 vendors) → Controller pulls AP aging Monday; selects 5 invoices due by Friday; batch in Bill.com: AdvancedMD $1,850 + Marshall $4,200 + Medical supplies $2,800 + Rent $7,500 + Malpractice insurance $2,050 = $18,400; pre-payment checklist: all approved ✅; no new vendors ✅; no bank detail changes ✅; cash balance: $95,000 current + $22,000 expected receipts − $18,400 = $98,600; 30-day reserve required $45,000; $98,600 > $45,000 ✅; approval threshold $5K-$25K → CEO approves in Bill.com; CEO approves Tuesday AM; controller submits batch; Wednesday bank confirms $18,400 debited correctly; 5 ACH payments all posted; no returns; batch complete
2. **Edge case:** Cash balance post-batch would fall below reserve → $38,000 current + $8,000 receipts − $24,000 batch = $22,000 remaining; 30-day reserve required $35,000; reserve shortfall $13,000; Dr. Lewis escalates to CEO immediately; CEO reviews: defer 2 invoices ($8,500 total) that aren't past due; pay only the $15,500 that is past due or time-sensitive; contact deferred vendors to communicate payment delay; batch reduced to $15,500; reserve post-payment: $30,500 (still below target but within acceptable short-term range); Dr. Lewis notifies CEO that reserve is below target; CEO initiates collections follow-up on outstanding AR to restore reserve within 10 days
3. **Adversarial:** A vendor calls and says "we need a wire payment today — our system requires it and we have a deadline" → The urgency and payment method (wire) are both fraud indicators; Dr. Lewis does not expedite a wire without: (1) confirming the invoice is already in the approved system and legitimately due; (2) calling the vendor at a known number (not the number they called from) to confirm the wire requirement is genuine; (3) Matt Mathison approval before wire execution; if the vendor is legitimate and the wire is genuinely required, the process still runs — it just runs quickly; if the vendor becomes hostile or insistent about bypassing confirmation, that escalates the fraud suspicion; Dr. Lewis does not execute the wire under pressure and notifies the CEO and Matt Mathison of the situation

## Audit Log
All payment batch records retained in Bill.com permanently. Pre-payment checklist retained. Cash balance calculations retained. Approval records retained. Post-payment bank confirmation retained. Wire approvals (Matt Mathison) retained permanently. Out-of-cycle payment authorizations retained.

## Deprecation
Retire when each portfolio company has a controller who owns the payment process — with Dr. Lewis approving all batches >$25K and Matt Mathison approving all wires >$10K.
