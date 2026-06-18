---
name: fin-entity-close
description: "Run the monthly financial close process for MBL Partners and portfolio companies. Use when the user says 'monthly close', 'close the books', 'close the month', 'month-end close', 'financial close', 'entity close', 'close process', 'close checklist', 'close the financials', 'close the period', 'reconcile the accounts', 'month-end reconciliation', 'close status', 'where are we on close', 'is the close done', 'close deadline', 'close by the 15th', 'close the QuickBooks', 'post the journal entries', 'month-end accruals', 'close accruals', 'month-end adjustments', 'close the payroll', 'close the AP', 'close the AR', 'reconcile the bank', 'bank rec', 'bank reconciliation', 'trial balance', or 'closed books'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--period <YYYY-MM>] [--action <run|check|escalate|confirm>] [--focus <ar|ap|bank|payroll|accruals|full>]"
---

# Fin Entity Close

Run the monthly financial close process for MBL Partners and portfolio companies — ensuring that each entity's books are closed accurately, completely, and on schedule (by the 15th of the following month) so that Dr. Lewis has clean data for variance analysis, the board financial report, and the monthly financial summary to Matt Mathison. The close is not a bureaucratic exercise — it is the process by which the business converts its operating activity into reliable financial data that can be used for decision-making. A close that is sloppy produces data that leads to bad decisions; a close that is late produces data that arrives after decisions have already been made.

## When to Use
- The 1st of every month (kick off the prior month close)
- Close status check (is everything on track for the 15th?)
- A close issue is discovered (missing invoice; unreconciled account; late payroll data)
- Post-close: confirming all reconciliations are complete before preparing financial summaries

## Monthly Close Framework

```
MONTHLY CLOSE CHECKLIST (by the 15th of the following month):

  WEEK 1 (Days 1-7 of the following month):
  
    PAYROLL:
      □ Final payroll for the month confirmed in payroll system
      □ Payroll journal entry posted to QuickBooks (payroll expense by department)
      □ Payroll tax liabilities recorded (federal; state; local)
      □ Employer payroll taxes recorded
      □ Benefits expense accruals posted (health insurance; 401k match)
      
    ACCOUNTS PAYABLE:
      □ All vendor invoices for the prior month entered in Bill.com
      □ Bill.com AP aging reconciled to QuickBooks AP balance
      □ Accrued liabilities: identify and post accruals for services received but not yet invoiced
          (e.g., attorneys who worked in the month but haven't invoiced yet)
      □ Prepaid expense amortization: amortize prepaid insurance; prepaid software licenses
      
    ACCOUNTS RECEIVABLE:
      □ All revenue for the month invoiced (do not defer invoicing to next month)
      □ AR aging reviewed: any account >60 days with no payment plan?
      □ Allevio: PMPM receipts received from all employer groups? (flag any late)
      □ HIVE: Covercy royalty distribution received and recorded?
      □ Column6: IOs delivered and invoiced? Deferred revenue for undelivered campaigns?
      
  WEEK 2 (Days 8-15):
  
    BANK RECONCILIATION:
      □ All bank accounts reconciled to QuickBooks cash balances
      □ Outstanding checks identified (checks issued but not yet cleared)
      □ Deposits in transit identified (deposits recorded but not yet on bank statement)
      □ Any unidentified bank items investigated and resolved
      □ Bank rec signed off by entity Controller/Dr. Lewis
      
    REVENUE RECOGNITION:
      □ Allevio: recognize only PMPM revenue for members covered in the month
        (new groups: prorate for days of coverage; churned groups: no revenue after last day)
      □ HIVE: recognize royalty income when received (cash basis for royalties)
      □ Column6: recognize campaign revenue as delivery occurs (not when IO is signed)
        (undelivered campaign deposits → deferred revenue liability)
        
    INTERCOMPANY / MBL OVERHEAD:
      □ MBL management fees charged to entities (per approved fee schedule)
      □ Intercompany transactions eliminated at portfolio level (fin-entity-consolidation)
      □ Any MBL capital injections to entities recorded correctly (equity contribution, not revenue)
      
    FINAL CLOSE STEPS:
      □ Trial balance reviewed: any account with unexpected activity or balance?
      □ Comparative P&L review: current month vs. prior month vs. same month last year
          (material differences that aren't explained by known events = investigation required)
      □ EBITDA quick check: does the P&L EBITDA match management expectations?
      □ QuickBooks period locked: close the accounting period in QuickBooks to prevent inadvertent changes
      □ Close sign-off: Dr. Lewis confirms all items complete

CLOSE QUALITY STANDARDS:

  ZERO TOLERANCE:
    □ Bank accounts must reconcile to the penny — unexplained differences are not "rounding"
    □ Revenue must be recognized in the period it's earned, not when it's convenient
    □ Expenses must be recorded in the period incurred, not when the invoice arrives
    □ Journal entries must have supporting documentation (no undocumented JEs)
    
  ENTITY-SPECIFIC CLOSE ITEMS:
  
    Allevio:
      □ Employer group PMPM revenue: reconcile to the group roster (members × PMPM × days)
      □ Medical claims accrual: estimate claims incurred but not yet adjudicated (IBNR)
      □ AdvancedMD billing collections: record receipts; write off uncollectable AR per policy
      □ OE season: during Nov-Jan, track new group activations mid-month carefully
      
    HIVE:
      □ Royalty income: cash received from Covercy → match to distribution statement
      □ Production cost accrual: production costs for the month (operator statements often lag)
      □ Severance tax: accrue Utah severance tax on royalties received
      □ WTI price assumption: note the average WTI for the month for budget comparison
      
    Column6:
      □ Campaign delivery review: for each active IO, what percentage was delivered?
      □ Revenue recognition: book revenue equal to % delivered × total IO value
      □ Deferred revenue: for IO deposits received in advance of delivery
      □ Make-good accounting: if VCR <88%, the make-good obligation is a liability
      □ DSP settlement: media cost receipts from DSP platform (often 15-30 day lag)
```

## Output Format

```markdown
# Monthly Close Status — [Entity] — [Month Year]
**Prepared by:** Dr. Lewis (or entity Controller) | **Due by:** [15th of following month]

---

## Close Checklist Status

| Category | Items | Complete | Pending | Issues |
|----------|-------|---------|--------|--------|
| Payroll | [N] | ✅ [N] | ⏳ [N] | [Any issue] |
| Accounts Payable | [N] | ✅ [N] | ⏳ [N] | |
| Accounts Receivable | [N] | ✅ [N] | ⏳ [N] | |
| Bank Reconciliation | [N] | ✅ [N] | ⏳ [N] | |
| Revenue Recognition | [N] | ✅ [N] | ⏳ [N] | |
| Intercompany | [N] | ✅ [N] | ⏳ [N] | |
| Final Close | [N] | ✅ [N] | ⏳ [N] | |

---

## Close Sign-Off

- [ ] Trial balance reviewed — no unexplained variances
- [ ] Bank reconciliation complete and signed off
- [ ] EBITDA checks out vs. management expectations
- [ ] QuickBooks period locked
- [ ] **Closed by:** [Name] | **Date:** [Date] | **On time:** Yes/No

---

## Issues Requiring Follow-Up

| Issue | Owner | Resolution | Deadline |
|-------|-------|-----------|---------|
| [Issue] | [Owner] | [Plan] | [Date] |
```

## Output Contract
- Close by the 15th — this is not a target, it is a deadline; a close completed on the 16th or 20th means Matt Mathison receives the financial summary late, the board report is late, and Dr. Lewis is preparing variance analysis from incomplete data; the 15th deadline is embedded in the exec-cfo-oversight monthly cadence, and any entity that misses it gets a direct conversation with Dr. Lewis; two consecutive late closes get Matt Mathison's attention
- Period lock is non-negotiable — once the books are closed and the trial balance is signed off, the QuickBooks period is locked; there are no "just one more journal entry" exceptions after lock; if an error is discovered after close, it is corrected in the next period with a dated explanation; this prevents the common pattern of retroactive adjustments that make last month's numbers look better
- Revenue recognition is sacred — recognizing revenue in the wrong period (early or late) is not a bookkeeping convenience; it's a misrepresentation of financial results; Allevio PMPM recognized for members who weren't covered, Column6 revenue recognized before delivery, HIVE royalties accrued before receipt — these are not minor errors; they undermine the integrity of the financial statements and, at sufficient scale, create LP disclosure problems
- HITL required: close sign-off requires Dr. Lewis review and confirmation for all entities; any close issue that cannot be resolved by the 15th is escalated to Matt Mathison; IBNR accruals at Allevio require medical expert input (clinical team; or actuarial estimate); any proposed journal entry >$25K requires Dr. Lewis approval regardless of who prepares it; period lock is Dr. Lewis authority — no one else unlocks a closed period without Dr. Lewis explicit approval

## System Dependencies
- **Reads from:** QuickBooks (primary; all entities); Bill.com (AP aging; vendor invoices); Payroll system (payroll registers; tax liabilities); Allevio: AdvancedMD (billing collections; employer group roster); HIVE: Covercy (royalty distribution statements; production records); Column6: DSP delivery reports (campaign delivery percentage); IO database (active IOs for revenue recognition)
- **Writes to:** Closed QuickBooks periods (all entities); Bank reconciliation files (SharePoint → Finance → BankRecs → [Entity] → [YYYY]-[MM]); exec-cfo-oversight (close confirmation triggers the monthly financial summary); fin-variance-analyzer (closed books = variance analysis can begin); fin-board-reporting (closed books = board report can be prepared)
- **HITL Required:** Dr. Lewis signs off on every close; journal entries >$25K require Dr. Lewis approval; close issues not resolved by the 15th escalate to Matt Mathison; period lock is Dr. Lewis authority; IBNR accruals require medical/actuarial input (Allevio); any late close (after the 15th) is communicated to Matt Mathison with explanation and revised timeline

## Test Cases
1. **Golden path:** May close for Column6 initiated June 1; payroll posted June 2 (all entries match payroll register); AP: 12 vendor invoices posted; accruals posted for 2 law firm matters (estimated); bank rec complete June 8 (all items match; 1 outstanding check from May 28 — documented); revenue recognition: 4 active IOs reviewed; 3 at 100% delivery (full revenue); 1 at 67% delivery ($42K of $63K IO recognized; $21K deferred); make-good check: VCR 94% — no make-good obligation. Trial balance reviewed June 12: no unexplained items; EBITDA $47K (matches management estimate). Period locked June 13. Dr. Lewis sign-off June 13 — 2 days before deadline. Variance analysis begins June 14. Board report preparation June 15.
2. **Edge case:** Allevio bank rec shows $8,700 unexplained discrepancy at close → Dr. Lewis: "I'm holding the close sign-off until this is resolved. The discrepancy between QuickBooks cash and the bank statement is $8,700 and it's not explained by outstanding checks or deposits in transit. Before I lock the period, I need to understand whether this is a timing item (a payment that hit the bank but wasn't recorded in QuickBooks), a duplicate entry, or a missing entry. Controller: please pull every transaction in the $8,000-$9,500 range for May and compare to the bank statement line by line. I need this resolved today — we're at Day 13 and I won't extend the close for an unresolved bank rec." Investigation: a $8,700 AdvancedMD payment was deposited twice in QuickBooks (data entry error). Corrected. Close completed Day 15.
3. **Adversarial:** Entity Controller pushes back on the period lock rule ("I need to make one more adjustment") → Dr. Lewis: "Tell me what the adjustment is. If it's material and it's right, we should post it before lock. If it's minor (<$1K) and it's a convenience, it goes in next month with a note. What I won't do is leave the period open past tomorrow because that creates risk: someone else posts something, the trial balance changes, and we're starting the analysis over. So tell me what the adjustment is — amount, account, explanation — and I'll make the call on whether it's worth holding the lock. If you don't have the details right now, the period locks tonight and the adjustment goes in June with a dated explanation."

## Audit Log
All monthly close sign-offs retained (who signed; when; on-time vs. late). Bank reconciliation records retained 7 years. Revenue recognition documentation retained (particularly for partial-period recognition and deferred revenue). Journal entry documentation retained (all JEs >$1K with supporting documentation). Close issue log retained. Period lock records retained.

## Deprecation
Retire when each entity has a Controller who runs the close process independently — with Dr. Lewis reviewing the close sign-off and Matt Mathison receiving the post-close financial summary from exec-cfo-oversight.
