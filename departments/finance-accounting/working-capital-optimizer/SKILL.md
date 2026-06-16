---
name: working-capital-optimizer
description: "Analyze and optimize working capital. Use when the user says 'working capital', 'optimize working capital', 'cash conversion cycle', 'improve cash flow', 'AR collections improvement', 'payment terms optimization', 'inventory management', 'working capital analysis', 'cash tied up in receivables', 'accelerate cash collection', or 'working capital efficiency'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--focus <ar|ap|inventory|all>] [--target <improve-dso|extend-dpo|reduce-inventory>]"
---

# Working Capital Optimizer

Analyze and optimize working capital — the cash tied up in the day-to-day operations of the business (receivables, inventory, payables). Working capital optimization is one of the highest-ROI financial improvements available to operating companies because it releases cash from the balance sheet without requiring revenue growth or cost cuts. Reducing DSO by 10 days in a $5M revenue company releases ~$137K in cash — at zero cost.

## When to Use
- Cash position is adequate but could be improved without borrowing
- DSO has been creeping up — collections are taking longer
- The company is growing and working capital is consuming more cash than expected
- Matt Mathison asks "how can we free up cash without cutting expenses?"
- Preparing for a sale — clean working capital position improves deal terms
- A portfolio company CEO doesn't understand why profits are strong but cash is tight

## Working Capital Framework

```
Working Capital = Current Assets − Current Liabilities
Cash Conversion Cycle (CCC) = DSO + DIO − DPO
  DSO: Days Sales Outstanding (how long to collect)
  DIO: Days Inventory Outstanding (how long inventory sits)
  DPO: Days Payable Outstanding (how long before we pay vendors)

Goal: Minimize CCC = Collect faster + Turn inventory faster + Pay vendors later

For service companies (Allevio):
  No inventory — CCC = DSO − DPO
  Reducing DSO by 1 day = releasing [Revenue/365] in cash per day

For oil & gas (HIVE):
  Revenue timing = production date → invoice date → collection date
  Production to payment typically 45-60 days — optimize by:
  (1) Faster invoicing after production (target: 5-7 days)
  (2) Shorter payment terms in gas purchase agreements
```

## Output Format

```markdown
# Working Capital Optimization Analysis — <Company Name>
**Period:** <As of <Date>>
**Prepared by:** Dr. John Lewis

---

## Current Working Capital Position

| Component | Balance | Change vs. Prior Period | Notes |
|-----------|---------|------------------------|-------|
| Cash | $[X] | $[±X] | [Not included in working capital optimization — separate] |
| Accounts Receivable | $[X] | $[±X] | [Growing / Stable / Declining] |
| Inventory | $[X] | $[±X] | [If applicable] |
| Prepaid Expenses | $[X] | $[±X] | |
| **Total Current Assets** | **$[X]** | | |
| | | | |
| Accounts Payable | $[X] | $[±X] | |
| Accrued Liabilities | $[X] | $[±X] | |
| **Total Current Liabilities** | **$[X]** | | |
| | | | |
| **Net Working Capital** | **$[X]** | **$[±X]** | |

---

## Cash Conversion Cycle

| Metric | Current | Target | Gap | Opportunity |
|--------|---------|--------|-----|------------|
| DSO (Days Sales Outstanding) | [N] days | [N] days | [N] days | $[X] cash if improved to target |
| DPO (Days Payable Outstanding) | [N] days | [N] days | [N] days | $[X] additional float |
| DIO (Days Inventory Outstanding) | [N] days / N/A | [N] days | | |
| **Cash Conversion Cycle** | **[N] days** | **[N] days** | **[N] days** | **$[X] total opportunity** |

**Cash opportunity calculation:**
  DSO improvement of [N] days × (Revenue / 365) = $[X]
  DPO improvement of [N] days × (COGS / 365) = $[X]
  **Total working capital optimization potential:** $[X]

---

## DSO Analysis — Accounts Receivable

| Month | Revenue | Month-end AR | DSO | vs. Terms |
|-------|---------|-------------|-----|-----------|
| [Month-3] | $[X] | $[X] | [N] days | [±N days vs. Net 30] |
| [Month-2] | $[X] | $[X] | [N] days | |
| [Month-1] | $[X] | $[X] | [N] days | |
| **Current** | **$[X]** | **$[X]** | **[N] days** | |

**DSO trend:** [Improving / Stable / Worsening]
**DSO root causes (if above target):**
- [Concentration in slow-paying clients? Who are the top 3 slow payers?]
- [Invoicing delays — are invoices sent the day after service delivery?]
- [Collections process — is there a defined follow-up cadence?]
- [Invoice disputes — are any clients disputing and delaying?]

### DSO Improvement Actions

| Action | DSO impact | Cash impact | Timeline | Owner |
|--------|-----------|------------|---------|-------|
| Invoice same-day (currently [N]-day lag) | −[N] days | +$[X] | Immediate | Controller |
| Add ACH payment option (reduce check processing time) | −[N] days | +$[X] | 30 days | IT / Finance |
| Implement 31-day reminder email (automated) | −[N] days | +$[X] | 30 days | Dr. Lewis |
| CEO call to [top slow-paying client] | −[N] days for that client | +$[X] | This week | CEO |
| Require credit card on file for clients <$5K/month | −[N] days | +$[X] | 60 days | CEO |

---

## DPO Analysis — Accounts Payable

| Vendor category | Current payment terms | Actual DPO | Opportunity |
|----------------|----------------------|-----------|------------|
| [Largest vendor] | Net [N] | [N] days | [Paying [N] days early — could defer $[X]] |
| [Second vendor] | Net [N] | [N] days | |
| [Vendors paying on time] | Net [N] | [N] days | ✅ Optimized |

**DPO improvement:** Pay on the due date, not before. For vendors being paid early, delay payment to the due date. Cash benefit: $[X] in additional float.
**Note:** Never extend payment beyond terms without vendor agreement — late payments damage vendor relationships.

---

## Recommended Actions (Priority Order)

| Priority | Action | Cash impact | Timeline | Owner |
|---------|--------|------------|---------|-------|
| 1 | [Highest impact — e.g., same-day invoicing] | +$[X] | Immediate | [Owner] |
| 2 | [Automated AR reminders] | +$[X] | 30 days | Dr. Lewis |
| 3 | [CEO call to slow-paying clients] | +$[X] | This week | CEO |
| 4 | [Optimize AP timing] | +$[X] | Immediate | Dr. Lewis |
| **Total** | | **+$[X]** | | |
```

## Output Contract
- Cash opportunity always calculated in dollars — "reduce DSO by 5 days" means nothing without knowing how much cash that releases; always calculate: days × (revenue / 365) = cash released; this is what motivates action
- Invoicing timing assessed as the first DSO lever — the most common and fixable DSO problem is invoicing lag: the company delivers the service but doesn't invoice for 5-10 days; DSO begins when the invoice is sent, not when the service is delivered; same-day invoicing is the lowest-cost, highest-impact DSO improvement
- DPO optimization never means late payment — extending payment terms must be within the agreed terms; paying on Day 30 when terms are Net 30 is cash optimization; paying on Day 45 when terms are Net 30 is late payment and damages vendor relationships; the distinction is critical
- Concentration analysis required when DSO is elevated — high DSO is often driven by 1-2 slow-paying clients; identifying the concentration and addressing it (direct contact, payment terms renegotiation) is more effective than policy changes that affect all clients
- HITL required: Dr. Lewis prepares analysis and implements AP timing changes; CEO implements client-facing changes (invoicing timing, payment terms, CEO collection calls); Matt Mathison reviews if working capital release opportunity >$50K or if a significant client relationship change is involved

## System Dependencies
- **Reads from:** QuickBooks (AR aging, AP aging, revenue, COGS), bank statements (actual payment timing vs. QuickBooks), invoicing records
- **Writes to:** Working capital analysis (SharePoint/Finance/Analysis/); updated AR and AP management policies; cash flow forecast
- **HITL Required:** Dr. Lewis prepares; CEO owns client-facing changes; Matt Mathison reviews for large working capital opportunities or significant client relationship changes

## Test Cases
1. **Golden path:** Allevio working capital analysis June 2026 → Current DSO: 37 days (target 30 days); gap: 7 days; cash opportunity: 7 × ($342K revenue / 30 days) = ~$79,800 if DSO hits target; Root cause: invoicing lag 3-4 days after practice closes billing cycle; AP timing: paying vendors on day 28 of Net 30 terms (leaving 2 days on table); Actions: (1) same-day invoicing after billing cycle close ($57K cash opportunity, 4-day DSO reduction); (2) optimize AP timing to Day 30 (+$6K float); (3) automated 25-day payment reminder email ($16K opportunity from 2 historically slow practices); total cash release: ~$79K; Dr. Lewis implements AP timing immediately; CEO implements same-day invoicing by July 1; automated reminders live by July 15
2. **Edge case:** A company with high DSO discovers that 80% of the elevated AR is from a single large client who always pays in 45-50 days despite Net 30 terms → the solution is client-specific, not a process change; CEO to contact the client's finance department directly: "We've noticed that payment from [Client] consistently arrives around Day 45-50 vs. our Net 30 terms. Is there something we can do to improve this — like getting on your weekly payment run rather than monthly?" Often a simple ask resolves the issue; if not, consider whether Net 45 terms (formalized late payment) are better than the friction of monthly collection calls
3. **Adversarial:** A CEO resists implementing automated AR reminders because "we don't want to annoy our clients with payment emails" → provide data: "Currently [X%] of our invoices are paid late. The financial impact is $[X] in cash that's sitting in our AR instead of our bank account. A professional payment reminder sent at Day 25 ('friendly reminder — your invoice due in 5 days') is standard practice and is typically appreciated by clients who track their payables carefully. Clients who find reminders annoying are the clients who delay payment, not the ones who pay on time. We can start with just the high-balance accounts to test the response."

## Audit Log
Working capital analyses retained by entity and date. DSO trends tracked monthly. Improvement actions logged with outcomes (actual DSO improvement vs. projected). Matt Mathison notifications documented. Client-specific payment terms changes retained.

## Deprecation
Retire when portfolio companies have dedicated AR management with automated invoicing systems (bill-on-delivery), automated payment reminders, and real-time working capital dashboards that surface opportunities without Dr. Lewis's manual analysis.
