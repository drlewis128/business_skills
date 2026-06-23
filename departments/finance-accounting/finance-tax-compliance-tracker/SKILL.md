---
name: finance-tax-compliance-tracker
description: "Track and manage tax compliance for MBL Partners portfolio entities. Use when the user says 'tax compliance', 'tax filing', 'tax deadlines', 'entity tax', 'corporate tax', 'income tax', 'tax return', 'CPA', 'tax preparation', 'tax season', 'quarterly tax', 'estimated tax', 'estimated tax payment', 'quarterly estimated taxes', 'federal tax', 'state tax', 'Arizona tax', 'tax extension', 'file extension', 'tax calendar', 'tax due dates', 'tax filing status', 'tax deposit', 'tax payment due', 'IRS filing', 'state filing', 'Form 1120', 'Form 1120-S', 'Form 1065', 'corporate tax return', 'partnership tax return', 'S-corp tax', 'HIVE tax', 'Allevio tax', 'Column6 tax', 'MBL Partners tax', 'entity tax filing', 'tax planning', 'year-end tax', 'CPA coordination', 'QuickBooks for taxes', 'tax basis', or 'deferred tax'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--period <quarterly|annual>] [--action <track|estimate|coordinate|file>]"
---

# Finance Tax Compliance Tracker

Track and manage tax compliance for MBL Partners portfolio entities — maintaining a tax filing calendar, coordinating with the CPA for annual entity returns, managing estimated quarterly tax payments, and ensuring no entity misses a filing deadline. Tax compliance is a governance minimum; a missed filing or late payment adds penalties that are entirely avoidable with a well-managed calendar.

## When to Use
- Quarterly estimated tax payment due (April 15 / June 15 / September 15 / January 15)
- Annual tax return coordination with CPA (entity-level returns)
- Year-end QuickBooks prep and close for CPA handoff
- Evaluating an extension filing vs. on-time return

## Tax Compliance Framework

```
ENTITY TAX STRUCTURES:
  MBL Partners: LLC taxed as partnership → Form 1065 (due March 15; extension to September 15)
  HIVE Partners: LLC taxed as partnership → Form 1065 (due March 15; extension to September 15)
    LPs receive Schedule K-1 by March 15 (or extension date)
  Allevio: C-corp or S-corp (confirm with CPA) → Form 1120 or 1120-S (due April 15 / March 15)
  Column6: confirm with CPA (LLC/C-corp structure)
  
TAX FILING CALENDAR:

  QUARTERLY ESTIMATED TAX PAYMENTS (if entity has pass-through income to Dr. Lewis):
    Q1: April 15 (January-March income)
    Q2: June 15 (April-May income)
    Q3: September 15 (June-August income)
    Q4: January 15 of following year (September-December income)
    Basis: estimated federal and AZ income tax on portfolio income
    Dr. Lewis tracks pass-through income estimates and coordinates with CPA for payment amounts
    
  ANNUAL RETURNS:
    Partnerships (MBL; HIVE): March 15 (Form 1065); extension to September 15 (Form 7004)
    Corporations (Allevio; Column6): April 15 (Form 1120) or March 15 (Form 1120-S); extension available
    HIVE K-1s to LPs: by March 15 (or extended due date)
    
  PAYROLL TAX:
    Form 941 (quarterly): April 30 / July 31 / October 31 / January 31
    Form 940 (annual FUTA): January 31
    W-2 to employees: January 31
    Gusto handles payroll tax deposits automatically; Dr. Lewis reviews 941 before CPA files
    
YEAR-END QUICKBOOKS CLOSE (December 31):
  All accounts reconciled: bank; credit cards; AR; AP
  All accruals posted (earned but unpaid: accrued payroll; accrued interest; etc.)
  Prepaid expenses adjusted (depreciate correctly)
  Inventory if applicable (not typical for MBL entities)
  CPA receives QuickBooks access or data export by January 31 for each entity
  
CPA COORDINATION:
  MBL CPA: Dr. Lewis's primary contact for entity tax returns (confirm firm name with Dr. Lewis)
  Tax planning meeting: October-November (before year-end; discuss entity structure; income shifting)
  Data handoff: January 31 (QuickBooks access; payroll reports; 1099 records; contract summaries)
  Return review: Dr. Lewis reviews draft returns before signing/filing
  
ALLEVIO NOTE:
  No PHI in tax filings; clinical revenue appears as aggregate revenue line items only
  If Allevio has any insurance-related tax implications → CPA reviews
```

## Output Format

```markdown
# Tax Compliance Tracker — All Entities — [Year]
**Maintained by:** Dr. Lewis | **CPA:** [Firm Name] | **Updated:** [Date]

---

## Filing Calendar

| Entity | Form | Period | Due Date | Status | Notes |
|--------|------|--------|---------|--------|-------|
| MBL Partners | Form 1065 | 2026 annual | 3/15/27 | 🟡 Pending CPA | Extension filed ✅ |
| HIVE Partners | Form 1065 + K-1s | 2026 annual | 3/15/27 | 🟡 Pending CPA | |
| Allevio | Form 1120-S | 2026 annual | 3/15/27 | 🟡 Pending CPA | |
| All entities | Form 941 | Q2 2026 | 7/31/26 | ✅ Filed | Via Gusto |

---

## Estimated Tax Payments (Dr. Lewis pass-through)

| Quarter | Period | Due Date | Estimated Amount | Status |
|---------|--------|---------|----------------|--------|
| Q1 2026 | Jan-Mar | 4/15/26 | $X | ✅ Paid |
| Q2 2026 | Apr-May | 6/15/26 | $X | ✅ Paid |

---

## Year-End Close Status (December 31)

| Entity | QB Reconciled | Accruals Posted | CPA Handoff | Status |
|--------|-------------|----------------|------------|--------|
| MBL Partners | ✅ | ✅ | 1/28/27 | ✅ |
```

## Output Contract
- Tax deadlines are hard stops — a missed tax filing deadline generates a late filing penalty (typically 5% of tax owed per month for the first 5 months; up to 25%) plus interest; there is no business justification for paying an avoidable penalty; Dr. Lewis maintains a tax calendar and sets 30-day-ahead reminders for every filing deadline; if the entity's CPA needs more time, an extension is filed well before the deadline (extensions are filed, not assumed); the cost of filing an extension is zero; the cost of missing a deadline is hundreds or thousands of dollars plus potential IRS inquiry
- Year-end QuickBooks close is the most critical data accuracy event of the year — the CPA uses Dr. Lewis's QuickBooks data as the primary source for all entity tax returns; if QuickBooks has uncategorized transactions, unreconciled accounts, or missing accruals, the CPA will either ask Dr. Lewis to fix them (delaying the return) or make assumptions that may not be accurate; Dr. Lewis closes every entity's books by January 31 and hands off clean QuickBooks data to the CPA; this is not optional and it is not delegated — Dr. Lewis owns the year-end close for each entity
- HITL required: estimated tax payments → Dr. Lewis + CPA determine amounts; Dr. Lewis makes payment; annual return → Dr. Lewis reviews draft before entity CEO signs; extension filing → Dr. Lewis coordinates with CPA before deadline; year-end close → Dr. Lewis completes; CPA handoff → Dr. Lewis sends; K-1 issuance (HIVE) → CPA prepares; Dr. Lewis distributes; any IRS notice received → Dr. Lewis immediately; CPA flags tax planning opportunity → Dr. Lewis + Matt Mathison; Allevio tax filing → no PHI in returns

## System Dependencies
- **Reads from:** QuickBooks (all entity financial data; year-end close); Gusto (payroll reports; Form 941 data; W-2 data); finance-1099-manager (1099 records for CPA); finance-ap-manager (contractor 1099 inputs); HIVE Covercy (production income; royalty income; LP distributions for K-1 inputs); entity CEO signatures (tax return approval)
- **Writes to:** Tax filing calendar (SharePoint → Finance → Tax Compliance → [Year]); estimated tax payment records; QuickBooks (year-end close entries; accruals); CPA data handoff package; entity-level extension filing records; K-1 distribution records (HIVE); IRS notice response records
- **HITL Required:** Estimated payments → Dr. Lewis + CPA; annual return → entity CEO signs after Dr. Lewis review; extension → Dr. Lewis + CPA before deadline; year-end close → Dr. Lewis completes; K-1 → Dr. Lewis distributes; IRS notice → Dr. Lewis immediately; CPA tax planning → Dr. Lewis + Matt Mathison

## Test Cases
1. **Golden path:** MBL Partners 2026 annual tax compliance (year-end close and return). January 31, 2027: Dr. Lewis closes MBL Partners QuickBooks (all bank reconciliations complete ✅; all 2026 accruals posted ✅; 1099 records confirmed with finance-1099-manager ✅). January 31: CPA receives QuickBooks access. February 20: CPA sends draft Form 1065. Dr. Lewis reviews: income, expenses, and K-1 allocations match QuickBooks. February 25: Dr. Lewis approves draft; sends to Matt Mathison for signature. March 8: return filed (due date March 15 ✅). No extension needed. All K-1s distributed by March 12. No late filing penalty.
2. **Edge case:** CPA requests more time to complete HIVE Partners Form 1065 + K-1s (complex LP allocations and the WTI trigger mid-year created unusual income patterns) → Dr. Lewis: "I'll file Form 7004 (extension) for HIVE Partners before March 15 — this gives the CPA until September 15. The extension is a 6-month extension of time to file, not to pay (if any tax is owed, it should be paid by March 15). I need the CPA to estimate any HIVE-level taxes due by March 10 so we can include any payment with the extension. K-1s to LPs will also be delayed to the extended due date — I'll send LPs a notice by March 15 letting them know that K-1s will arrive by September 15 and that they can file their personal returns on extension as well."
3. **Adversarial:** Entity CEO asks if Dr. Lewis can skip estimated tax payments ("they're optional, right?") → Dr. Lewis: "Quarterly estimated tax payments are not optional if you have material pass-through income from the portfolio entities. The IRS requires estimated payments if you expect to owe $1,000 or more in tax for the year. Skipping them doesn't avoid the tax — it just means it's all due when you file, plus an underpayment penalty (typically calculated as the federal funds rate + 3%, applied to the underpaid amount for each quarter). The penalty isn't catastrophic, but it's entirely avoidable. My recommendation: continue making estimated payments per the CPA's schedule. If cash flow is genuinely constrained in a specific quarter, I can work with the CPA on a strategy — but skipping them as a routine practice creates a penalty that compounds quarterly."

## Audit Log
Tax filing calendar (annual; all entities). Estimated tax payment records (dates; amounts; entities). Annual return filing records (return type; CPA; date filed; extension status). Year-end QuickBooks close records. CPA data handoff records. K-1 distribution records (HIVE). IRS notice receipt and response records. Extension filing records. CPA tax planning meeting notes.

## Deprecation
Tax calendar updated when entity structures change (new entities; dissolution; restructuring). Filing deadlines reviewed when IRS tax law changes. CPA coordination process reviewed when CPA firm changes. Estimated payment amounts reviewed quarterly. Year-end close procedures reviewed when QuickBooks features change.
