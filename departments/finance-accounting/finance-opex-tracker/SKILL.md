---
name: finance-opex-tracker
description: "Track and manage operating expenses for MBL Partners portfolio entities. Use when the user says 'opex', 'operating expenses', 'expense tracking', 'expense management', 'expense control', 'cost control', 'expense report', 'expense budget', 'spending report', 'spending analysis', 'where are we spending', 'expense categories', 'expense by category', 'expense trend', 'expense vs. budget', 'expense overrun', 'overspent', 'over budget on expenses', 'expense audit', 'expense review', 'monthly expenses', 'quarterly expenses', 'G&A expenses', 'marketing expenses', 'technology expenses', 'operating costs', 'cost reduction', 'expense cut', 'where can we save', 'expense efficiency', 'expense rationalization', 'expense approval', 'spending approval', 'discretionary spending', 'non-discretionary spending', 'SaaS costs', 'vendor costs', 'subscription costs', or 'expense policy'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--category <ga|marketing|technology|cogs|all>] [--period <monthly|quarterly>] [--action <track|analyze|reduce|approve>]"
---

# Finance OpEx Tracker

Track and manage operating expenses for MBL Partners portfolio entities — maintaining a categorized, budget-vs.-actual expense view from QuickBooks, flagging overruns and unplanned spend, identifying savings opportunities, and ensuring expense approvals follow the portfolio authorization matrix. Cost discipline is a leadership behavior; the entity CEO and Dr. Lewis model it.

## When to Use
- Monthly: expense review as part of P&L close
- Quarterly: full OpEx analysis and trend review
- Identifying expense overruns or savings opportunities
- Approving a specific spend request

## OpEx Tracking Framework

```
EXPENSE CATEGORIES (ALLEVIO EXAMPLE — ADAPT PER ENTITY):

  COGS (Cost of Revenue — not OpEx, but tracked together):
    Clinical delivery (provider costs; lab; supplies)
    AdvancedMD platform fees
    Marshall Medical Billing fees
    
  SALES & MARKETING:
    AE compensation (base + variable; benefits load separate)
    Marketing agency or freelancer fees
    Advertising and demand gen spend (GoHighLevel, paid search, events)
    Content production
    CRM and marketing tools
    
  G&A (General & Administrative):
    Entity CEO compensation
    Administrative support
    Office costs (if applicable)
    Legal and professional fees (CPA; attorney; Dr. Lewis allocation)
    Insurance
    Travel and entertainment (T&E)
    
  TECHNOLOGY:
    GoHighLevel (entity subscription)
    Microsoft 365 (entity licenses)
    Other SaaS tools (per revops-tech-stack-manager inventory)
    IT support
    
EXPENSE APPROVAL AUTHORITY:
  <$500: entity CEO discretion; QuickBooks receipt required
  $500-$2,500: entity CEO approval; receipt required; logged within 24 hours
  $2,500-$10,000: entity CEO + Dr. Lewis approval; purchase order or written approval
  $10,000-$25,000: entity CEO + Dr. Lewis approval (48-hour response time)
  >$25,000: entity CEO + Dr. Lewis + Matt Mathison
  
EXPENSE FLAGS FOR REVIEW:
  Any line item >10% over budget: entity CEO explains within 48 hours
  Any unbudgeted item >$2,500: Dr. Lewis must approve before spend occurs
  T&E >$2K in any single month for any individual: Dr. Lewis reviews receipts
  New vendor (not in approved vendor list): entity CEO + Dr. Lewis approval
  
EXPENSE ANALYSIS DIMENSIONS:
  Monthly: total OpEx vs. budget; each category vs. budget; flags
  Quarterly: trend by category (is marketing spend improving efficiency?); YTD vs. plan
  Annual: full OpEx review; identify top cost reduction opportunities for next year budget
  
COST REDUCTION IDENTIFICATION:
  Step 1: rank all technology subscriptions by annual cost
  Step 2: for each subscription >$1,200/year: who uses it? Is there a cheaper alternative?
  Step 3: identify subscriptions that overlap in function
  Step 4: identify subscriptions with usage below 50% of licensed capacity
  Annual rationalization: remove at least 1 subscription per entity per year unless all are essential
  
ALLEVIO NOTE:
  Clinical COGS tracked separately from OpEx (HIPAA aggregate cost tracking)
  No per-member cost analysis in OpEx tracker; clinical cost is aggregate line item only
```

## Output Format

```markdown
# OpEx Report — [Entity] — [Month/Quarter Year]
**Source:** QuickBooks | **Prepared by:** Dr. Lewis

---

## OpEx Summary vs. Budget

| Category | Budget | Actual | Variance $ | Variance % | Status |
|---------|--------|--------|-----------|-----------|--------|
| Sales & Marketing | $X | $X | +/-$X | +/-X% | ✅/⚠️/🔴 |
| G&A | $X | $X | | | |
| Technology | $X | $X | | | |
| **Total OpEx** | **$X** | **$X** | | | |

---

## Flags

| Item | Budget | Actual | Variance | Action Required |
|------|--------|--------|---------|----------------|
| [Line item] | $X | $X | +$X (+X%) | Entity CEO explanation |
| [New vendor] | Not budgeted | $X | Unplanned | Retroactive approval needed |

---

## Cost Reduction Opportunities
[Any subscriptions flagged for rationalization; efficiency improvements identified]
```

## Output Contract
- Expense discipline in early-stage companies compounds into survival — the #1 cause of entity failure in portfolio companies is not revenue miss; it is uncontrolled expense growth that outpaces revenue growth; Dr. Lewis monitors monthly whether each entity's OpEx-to-revenue ratio is improving, stable, or declining; a rising ratio (expenses growing faster than revenue) is an early warning signal that requires entity CEO explanation and, if sustained, Matt Mathison's attention; the entity CEO's job is to grow revenue; Dr. Lewis's job is to ensure the cost structure grows at an appropriate pace relative to that revenue
- The expense approval authority matrix is not bureaucracy — it is risk management; when a new vendor is added without approval, Dr. Lewis doesn't know whether a BAA is required (Allevio), whether the tool overlaps with an existing subscription, or whether the cost is in the budget; the $2,500 threshold for Dr. Lewis approval exists because expenses at that level and above are significant enough to track specifically and potentially impact the entity's month-to-month cash flow; below $500 is fully within the entity CEO's judgment — they operate the business
- HITL required: >$2,500 unbudgeted → entity CEO + Dr. Lewis before spend; >$25K → Matt Mathison; new vendor → entity CEO + Dr. Lewis; Allevio new vendor accessing member data → BAA required (revops-data-governance); T&E review → Dr. Lewis; annual subscription rationalization → entity CEO + Dr. Lewis decide; cost reduction plan → entity CEO + Dr. Lewis; 10% overrun → entity CEO 48hr explanation

## System Dependencies
- **Reads from:** QuickBooks (all entity OpEx by category; vendor list; receipt records); finance-annual-budget-builder (expense budget for comparison); revops-tech-stack-manager (subscription inventory for technology category); entity CEO expense submissions and approvals
- **Writes to:** OpEx reports (SharePoint → [Entity] → Finance → OpEx → [YYYY-MM]); expense flag records; approval records; cost reduction opportunity tracking; annual subscription rationalization records; entity CEO expense policy compliance records
- **HITL Required:** >$2,500 unbudgeted → entity CEO + Dr. Lewis; >$25K → Matt Mathison; new vendor → entity CEO + Dr. Lewis; Allevio new vendor → BAA check; T&E >$2K → Dr. Lewis; annual rationalization → entity CEO + Dr. Lewis; 10% overrun → entity CEO 48hr

## Test Cases
1. **Golden path:** Allevio June 2026 OpEx report. Sales & Marketing: $22K actual vs. $24K plan (-$2K; -8.3% favorable — event postponed ✅). G&A: $18K actual vs. $17K plan (+$1K; +5.9% — 1 professional development expense; Dr. Lewis confirmed pre-approved ✅). Technology: $6K on plan ✅. Total OpEx: $46K vs. $48K plan (-$2K favorable). No flags. Annual subscription rationalization note: 1 project management tool ($1,800/year) being evaluated — entity CEO hasn't logged in for 3 months; recommend canceling at renewal (September). Entity CEO cancels in August; $150 savings per month going forward.
2. **Edge case:** Allevio entity CEO adds a new mental wellness platform subscription for employees ($3,600/year) without approval → Dr. Lewis: "The employee wellness platform sounds like a great benefit, and I'm supportive of the intent. Two things I need before this continues: (1) this subscription needs to be formally approved (>$2,500 threshold requires entity CEO + Dr. Lewis before spend — it's a new vendor, new cost, new category); (2) does this platform have access to any employee health or wellness data? If yes, we need to evaluate whether a BAA is required (Allevio is HIPAA-covered; any vendor touching health data — even indirectly — needs a BAA). I'll do the BAA evaluation; please send me the vendor's HIPAA documentation. Approved retroactively pending BAA confirmation."
3. **Adversarial:** Entity CEO argues that the expense approval process is "slowing the business down" → Dr. Lewis: "The process adds 48 hours for items >$10K and same-day response for items $2,500-$10K — that's my commitment. If I'm taking longer, tell me and I'll fix it. The process exists because we've had instances where: (1) a subscription was added that already exists in the tech stack under a different team's account; (2) a vendor was added that needed a BAA before any Allevio data could be shared; (3) a spend decision was made without budget awareness, and the month-end variance was a surprise to everyone. None of those are hypothetical — they've happened. The 48 hours adds up to almost nothing over a year; the problems it prevents are real. If specific scenarios genuinely can't wait, bring them to me directly and we move fast."

## Audit Log
Monthly OpEx reports (permanent). Expense flag records and entity CEO explanations. Approval records by authority level. New vendor approval records. T&E review records. Annual subscription rationalization records. Cost reduction implementation records. Allevio new vendor BAA evaluation records.

## Deprecation
Expense categories reviewed annually. Approval thresholds reviewed annually. Flag criteria reviewed when entity scale changes. Technology rationalization criteria reviewed when tech stack evolves. Allevio HIPAA vendor evaluation criteria reviewed when regulations change.
