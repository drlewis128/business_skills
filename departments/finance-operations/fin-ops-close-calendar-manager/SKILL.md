---
name: fin-ops-close-calendar-manager
description: "Manage the monthly financial close — close calendar, task sequencing, and deadline accountability. Use when the user says 'month-end close', 'close the books', 'month-end', 'financial close', 'close calendar', 'close process', 'close checklist', 'accounting close', 'month-end process', 'close the month', 'financial reporting close', 'close timeline', 'accounting tasks', 'when do the books close', 'close deadline', or 'book close'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--month <MM-YYYY>] [--stage <planning|executing|review>]"
---

# Close Calendar Manager

Manage the monthly financial close for MBL portfolio companies — creating and executing the close calendar, sequencing the tasks correctly, holding owners accountable to deadlines, and delivering accurate financial statements by the board reporting deadline. The close process is the foundation of financial governance: if the books don't close on time and accurately, the LP report is late, the board report is inaccurate, and the CEO is managing without a financial compass. At PE portfolio scale, Dr. Lewis targets a 7-business-day close (financial statements complete by BD7) to support the 10-business-day board reporting deadline.

## When to Use
- First business day of each month — initiate close for the prior month
- During close — tracking task completion and owner accountability
- A close task is delayed — diagnosing and recovering
- Annual planning — designing the close calendar for the new year
- Onboarding a new controller — establishing the close process

## Close Calendar Framework

```
Standard 7-business-day close calendar:

  PRE-CLOSE PREP (last 3 business days of the month):
    BD-3: Controller prepares the close checklist; confirms all recurring entries are ready
    BD-2: Ensure all vendor invoices for the month are in Bill.com/QuickBooks (coding complete)
    BD-1: Bank deposits and payments confirmed through month-end; no outstanding transactions

  DAY 1 (Business Day 1 — first business day of new month):
    08:00 AM: Bank statements available (online) — download and begin reconciliation
    AM: Close previous month in all credit card and expense systems (Expensify/Divvy/AmEx)
    AM: Stop posting to prior month in QuickBooks (set period close lock)
    PM: All employee expense reports submitted and approved for the prior month
    
  DAY 2 (Business Day 2):
    AM: Bank reconciliation complete for operating accounts
    AM: Credit card statements reconciled to expense reports
    AM: All AP invoices for the month posted in QuickBooks (no backdating after BD2)
    PM: AR invoices confirmed — all revenue for the month is invoiced (fin-ops-ar-invoicer)
    PM: Payroll entries confirmed posted (payroll processor confirms)
    
  DAY 3 (Business Day 3):
    AM: Adjusting journal entries prepared and entered:
      - Prepaid expense amortization
      - Accrued liabilities (services received but not yet invoiced)
      - Deferred revenue (cash received but not yet earned)
      - Depreciation
      - Payroll accrual for days worked but not paid by month-end
    PM: Intercompany entries (if any cross-entity transactions) confirmed and eliminated
    
  DAY 4 (Business Day 4):
    AM: Balance sheet account reconciliations complete:
      - Cash: bank statement to QuickBooks (fin-ops-bank-reconciler)
      - AR: aging to QuickBooks; unapplied cash resolved (fin-ops-cash-application)
      - Prepaid expenses: schedule to balance
      - Fixed assets: depreciation schedule to balance (fin-ops-fixed-asset-manager)
      - AP: aging to QuickBooks; statement reconciliations for top 5 vendors
      - Credit cards: statement to QuickBooks
      - Loans/notes payable: lender statement to QuickBooks
    PM: P&L preliminary review — controller checks for obvious anomalies before submission to Dr. Lewis
    
  DAY 5 (Business Day 5):
    AM: Controller delivers preliminary financial statements to Dr. Lewis:
      P&L (month + YTD vs. budget), Balance sheet, Cash flow statement
    AM: Dr. Lewis reviews — flags questions and adjustments
    PM: Controller makes corrections; second pass delivered by 4pm
    
  DAY 6 (Business Day 6):
    AM: Final financial statements (P&L, BS, CF) — Dr. Lewis signs off
    AM: QuickBooks period lock set for the closed month (no further posting)
    AM: Variance explanations prepared (fin-ops-variance-explainer)
    PM: Financial statements and variance explanations delivered to CEO
    
  DAY 7 (Business Day 7):
    AM: CEO reviews financial statements
    PM: Board report draft prepared using BD6 financials (strategy-board-reporting)
    PM: LP report inputs ready (strategy-lp-reporting, if quarterly)
    
  Close health targets:
    BD5 delivery: Preliminary financials to Dr. Lewis — non-negotiable
    BD6 sign-off: Dr. Lewis approves — non-negotiable
    BD7 CEO delivery: Financial statements in CEO's hands — non-negotiable
    BD10 board report: Board report distributed — per board reporting standard
    
  Close failure modes (most common):
    Missing AP invoices: Vendors haven't sent invoices yet → accrue based on contract/estimate
    Unapplied cash in AR: Payments received but not matched → assign to correct invoice
    Missing payroll data: Payroll processor hasn't provided the journal entry → escalate Day 2
    Bank reconciliation discrepancy: Unknown transaction → investigate; do not skip reconciliation
```

## Output Format

```markdown
# Close Calendar — [Entity] [Month] [Year]
**Close target:** BD7 (preliminary BD5, CEO delivery BD7)
**Close manager:** Dr. Lewis | **Controller:** [Name]

---

## Close Status Dashboard

| Task | Owner | Due | Status | Notes |
|------|-------|-----|--------|-------|
| Period lock set | Controller | BD1 AM | ✅/❌ | |
| Bank reconciliation | Controller | BD2 AM | ✅/❌ | |
| Credit card recon | Controller | BD2 AM | ✅/❌ | |
| All AP invoices posted | Controller | BD2 PM | ✅/❌ | |
| Payroll entries confirmed | Payroll | BD2 PM | ✅/❌ | |
| Adjusting journal entries | Controller | BD3 PM | ✅/❌ | |
| Balance sheet reconciliations | Controller | BD4 PM | ✅/❌ | |
| Preliminary financials to Dr. Lewis | Controller | BD5 AM | ✅/❌ | |
| Dr. Lewis review complete | Dr. Lewis | BD5 PM | ✅/❌ | |
| Final financials signed off | Dr. Lewis | BD6 AM | ✅/❌ | |
| Variance explanations | Controller | BD6 AM | ✅/❌ | |
| Financial statements to CEO | Dr. Lewis | BD6 PM | ✅/❌ | |
| Board report draft | Dr. Lewis | BD7 PM | ✅/❌ | |

**Close status:** 🟢 On track / 🟡 At risk / 🔴 Behind

---

## [Month] [Year] — Key Figures (after sign-off)

| Metric | Budget | Actual | Variance |
|--------|--------|--------|---------|
| Revenue | $[X]K | $[X]K | [+/-X]% |
| EBITDA | $[X]K | $[X]K | [+/-X]% |
| EBITDA margin | [X]% | [X]% | |
| Cash (EOM) | — | $[X]K | |

---

## Open Items / Flags

| Issue | Owner | Resolution | Impact on close |
|-------|-------|-----------|----------------|
| [Vendor invoice not received — accrued $[X]K] | Controller | Accrual posted | Minor — will true-up next month |
| [Bank discrepancy $240 — investigating] | Controller | Resolved BD4 PM | None |

---

## Close Retrospective (after BD6 sign-off)

**Was BD5 preliminary met?** ✅ Yes / ❌ No — [reason]
**Was BD6 sign-off met?** ✅ Yes / ❌ No — [reason]
**Biggest bottleneck this month:** [Specific — bank rec took 4 hours due to credit card statement delay]
**Process improvement for next month:** [Specific — set credit card statement download as BD1 task]
```

## Output Contract
- BD5 preliminary delivery is non-negotiable — the controller delivers preliminary financials to Dr. Lewis by the morning of Business Day 5, every month; if the controller delivers on BD6 instead, the review and correction cycle compresses into BD6, quality suffers, and the CEO delivery on BD7 is at risk; Dr. Lewis treats the BD5 delivery as a hard deadline; if the controller has a structural bottleneck that prevents BD5 delivery (e.g., a particular reconciliation always takes until BD5 to complete), Dr. Lewis redesigns the close sequence to resolve it, not accommodates the delay as acceptable
- Accrue what hasn't been invoiced — a month-end close that only includes received invoices understates liabilities and overstates EBITDA; for every service received but not yet invoiced (utilities, professional services with irregular billing, subcontractor work not yet invoiced), the controller prepares an accrual entry; the accrual reverses next month when the actual invoice arrives; the CEO should see a P&L that reflects the actual cost of running the business this month, not just the invoices that happened to arrive before month-end
- Period lock after BD2 posting cutoff — once Business Day 2 passes, no prior-month transactions are posted without Dr. Lewis approval; a "clean" close requires a stable period; late-arriving invoices that should have been in the prior month go into the next month (or are accrued); backdating transactions into closed periods creates a moving financial picture that cannot be trusted; the period lock in QuickBooks enforces this discipline mechanically
- HITL required: Controller executes the close checklist; Dr. Lewis reviews preliminary financials on BD5 and approves final financials on BD6; CEO receives and reviews on BD7; Matt Mathison receives the board report on BD10; any significant variance (>10% from budget) requires variance explanation before CEO delivery; any accounting issue that affects the accuracy of a prior period requires Dr. Lewis judgment on restatement vs. current-period correction

## System Dependencies
- **Reads from:** Bank statements (bank portal), QuickBooks AP/AR/GL, Bill.com approved invoices, payroll processor journal entry, expense reports (expense system), fixed asset depreciation schedule, prior month close file
- **Writes to:** QuickBooks (adjusting journal entries, period lock); close checklist (SharePoint/Finance/<Company>/Closes/[Month]/); financial statements delivered to CEO; board report inputs (strategy-board-reporting)
- **HITL Required:** Controller executes; Dr. Lewis reviews and approves financials; CEO receives BD7; Matt Mathison receives BD10 board report; Dr. Lewis approves any backdating or prior-period adjustments

## Test Cases
1. **Golden path:** Allevio June 2026 close → BD1 (July 1): Period lock set; bank statements downloaded; BD2 (July 2): Bank rec complete; all AP posted; payroll entry confirmed; BD3 (July 3): Adjusting entries: prepaid amortization $1,200; accrued liability for cleaning service not yet invoiced $280; BD4 (July 7): BS reconciliations: cash ✅; AR aging matches QuickBooks ✅; fixed assets ✅; AP ✅; preliminary review: EBITDA $62K vs. $85K budget — Dr. Lewis will ask about the $23K variance; BD5 (July 8): Preliminary P&L delivered to Dr. Lewis 9am; Dr. Lewis reviews — flags: why is EBITDA $23K below budget? Controller explains: provider vacancy (NP started June 15 — only 10 days of revenue); Dr. Lewis satisfied; BD6 (July 9): Final financials signed off; period lock confirmed; variance explanation drafted; BD6 PM: financials delivered to CEO; CEO acknowledges; BD7: board report draft complete
2. **Edge case:** Credit card statement for AmEx arrives 5 days late (Day BD6 instead of BD2) → Credit card reconciliation cannot wait until Day BD6 and still hit the BD6 sign-off target; Dr. Lewis runs the close without the credit card reconciliation on BD5 preliminary, with a flag: "Credit card statement not yet received — estimated $3,200 in June charges based on trailing average; amount will be corrected when statement arrives"; when the statement arrives on BD6, the actual charges ($3,450) are entered; BD6 sign-off includes the actual amount; total impact: $250 variance from estimate — not material; reopen QuickBooks June with Dr. Lewis approval; post credit card entry; close again; BD6 sign-off confirmed; process improvement: set up automatic credit card statement download to eliminate waiting
3. **Adversarial:** CEO asks Dr. Lewis to hold the close open and backdate a large expense to June because "it was really a June cost" → Backdating to an already-closed period is not appropriate unless there is a material error that warrants a restatement; a CEO preference to put a cost in an earlier period for budget management optics is not a restatement trigger; Dr. Lewis explains: "I can book this as a June accrual if the service was genuinely received in June and we haven't invoiced it yet — that's the correct accounting treatment. If the invoice just arrived and the expense is legitimately July, it goes in July. What specifically happened in June that we need to record?" If the CEO insists on backdating for optics, Dr. Lewis flags it to Matt Mathison; accuracy of financial records is an Integrity issue under THRIVE

## Audit Log
All close checklists retained by month. BD5 and BD6 delivery timestamps retained. Financial statements retained by month permanently. Adjusting journal entries retained with controller approval. Period lock settings retained. Restatement events (if any) retained permanently with rationale.

## Deprecation
Retire when each portfolio company has a controller and CFO who own the close process — with Dr. Lewis reviewing the BD5 preliminary financials for reasonableness and Matt Mathison receiving the board report on BD10.
