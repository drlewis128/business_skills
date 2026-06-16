---
name: cost-reduction-analyzer
description: "Analyze costs and identify reduction opportunities. Use when the user says 'cost reduction', 'cut costs', 'reduce expenses', 'cost optimization', 'find savings', 'cost analysis', 'where can we save money', 'expense reduction', 'cost structure review', 'operating efficiency', 'cost benchmarking', 'margin improvement', or 'reduce operating expenses'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--focus <cogs|opex|specific-category>] [--target <dollar amount or %> ]"
---

# Cost Reduction Analyzer

Analyze a company's cost structure and identify specific, actionable cost reduction opportunities — without cutting what matters. Cost reduction is not the same as random expense cutting; it's the disciplined process of finding waste, inefficiency, and spending that isn't generating proportional value. Done well, cost reduction improves margins without damaging the business's ability to serve customers or grow. Done poorly, it destroys value by cutting the wrong things.

## When to Use
- EBITDA margin is below target and the company needs to improve profitability
- Matt Mathison asks "where can we reduce costs at [Company]?"
- A portfolio company is preparing for a sale and needs to improve EBITDA
- The annual budget cycle — validating that costs are efficient before approving next year's plan
- Revenue is declining and costs need to be right-sized to maintain profitability
- A specific cost category (technology, professional services, staffing) has grown above budget

## Cost Analysis Framework

```
Four categories of cost opportunity:

1. ELIMINATE: Spending that generates no value and can be stopped immediately.
   Examples: Unused software subscriptions, duplicate vendors, expired contracts
   Risk: Very low. Action: Stop immediately.

2. REDUCE: Spending that generates value but at a higher level than needed.
   Examples: Overstaffed teams, premium services where standard would work
   Risk: Low-medium. Action: Right-size; negotiate; restructure.

3. RENEGOTIATE: Spending at above-market rates or without volume leverage.
   Examples: Vendor contracts that haven't been renegotiated, insurance premiums
   Risk: Low. Action: Get competitive bids; negotiate at renewal.

4. DEFER: Spending that would be valuable but isn't critical right now.
   Examples: New hire that could wait 90 days, CapEx that can be postponed
   Risk: Low. Action: Delay without eliminating the capability.

Never cut without understanding the value:
  "How much revenue or customer retention does this cost support?"
  Cutting a customer success manager to save $80K who prevents $500K in churn is a bad trade.
```

## Output Format

```markdown
# Cost Reduction Analysis — <Company Name>
**Period analyzed:** [YTD / Last 12 months through <Date>]
**Total OpEx analyzed:** $[X]
**Prepared by:** Dr. John Lewis | **Date:** <Date>

---

## Cost Structure Overview

| Category | Annual Run Rate | % of Revenue | % of Total OpEx | YoY Change |
|---------|----------------|-------------|----------------|-----------|
| Salaries & Benefits | $[X] | [X%] | [X%] | [±X%] |
| Technology & Software | $[X] | [X%] | [X%] | [±X%] |
| Professional Services | $[X] | [X%] | [X%] | [±X%] |
| Rent & Facilities | $[X] | [X%] | [X%] | [±X%] |
| Marketing | $[X] | [X%] | [X%] | [±X%] |
| Travel & Entertainment | $[X] | [X%] | [X%] | [±X%] |
| Other | $[X] | [X%] | [X%] | [±X%] |
| **Total OpEx** | **$[X]** | **[X%]** | **100%** | **[±X%]** |

**Cost concentration:** [Top 2-3 categories represent [X%] of OpEx — focus here first]
**Cost trend:** [OpEx growing faster than revenue? At what rate? Since when?]

---

## Opportunity Analysis

### ELIMINATE (Zero Risk)

| Item | Current cost | Rationale | Savings | Timeline |
|------|-------------|-----------|---------|---------|
| [Unused SaaS subscription — [vendor]] | $[X]/year | [Last login: [date] / 0 users active] | $[X] | Cancel immediately |
| [Duplicate vendor — same service as [Vendor A]] | $[X]/year | [Overlap identified: [specific]] | $[X] | Cancel at renewal |
| [Expired auto-renewing contract] | $[X]/year | [Contract auto-renewed — no current business need] | $[X] | Cancel |
| **Eliminate subtotal** | | | **$[X]** | |

### REDUCE (Low Risk)

| Item | Current cost | Opportunity | Savings potential | Risk | Owner |
|------|-------------|------------|-----------------|------|-------|
| [Overstaffed function] | $[X]/year | [Reduce from [N] to [N-1] through attrition] | $[X] | Low — [function capacity analysis] | CEO |
| [Premium service where standard works] | $[X]/year | [Downgrade [vendor] from Premium to Standard tier] | $[X] | Low — [specific features not used] | Dr. Lewis |
| [T&E — above industry norm] | $[X]/year | [Implement per-diem policy; current spend is [X%] above industry] | $[X] | Low | [Policy change] |
| **Reduce subtotal** | | | **$[X]** | | |

### RENEGOTIATE (Medium Effort, High Return)

| Vendor | Current rate | Market rate | Savings potential | Approach | Deadline |
|--------|-------------|------------|-----------------|---------|---------|
| [Largest contract vendor] | $[X]/year | $[X]/year | $[X] | [Competitive bid + negotiation at renewal] | [Renewal date] |
| [Insurance premium] | $[X]/year | $[X] (estimated market) | $[X] | [Broker RFP — 90-day lead time] | [Renewal] |
| [Professional services retainer] | $[X]/month | $[X] (project-based might be better) | $[X] | [Restructure from retainer to project-based] | [Contract review] |
| **Renegotiate subtotal** | | | **$[X]** | | |

### DEFER (No Cash Cost — Just Timing)

| Item | Budget amount | Proposed deferral | Rationale | Cash benefit |
|------|--------------|-----------------|---------|-------------|
| [Planned hire — Q2] | $[X]/year | Defer to Q4 | [Revenue milestone not yet hit — trigger-based hiring] | $[X] for 6 months |
| [CapEx purchase] | $[X] | Defer 90 days | [Current equipment functioning; purchase when cash position improves] | $[X] timing benefit |
| **Defer subtotal** | | | | **$[X]** |

---

## Total Savings Summary

| Category | Savings Potential | Confidence | Implementation time |
|---------|-----------------|-----------|-------------------|
| Eliminate | $[X] | High — 100% certain | Immediate |
| Reduce | $[X] | Medium — requires management action | 30-90 days |
| Renegotiate | $[X] | Medium — depends on negotiation outcome | 60-180 days |
| Defer | $[X] | High — timing savings | Immediate |
| **Total** | **$[X]** | | |

**EBITDA margin impact:** Current EBITDA margin: [X%] → with savings: [X%] ([+Xpp improvement])

---

## What NOT to Cut

| Item | Current cost | Reason to protect |
|------|-------------|-----------------|
| [Customer-facing role] | $[X] | [This role prevents [X%] churn — cutting it risks $[X] in annual revenue] |
| [Core technology infrastructure] | $[X] | [Operational dependency — downtime risk if cut] |
| [Key relationship — professional advisor] | $[X] | [Returns [X]× in value — worth retaining] |

---

## Implementation Plan

| Initiative | Savings | Owner | Timeline | Decision needed |
|-----------|---------|-------|---------|----------------|
| 1. [Top opportunity] | $[X] | Dr. Lewis | [Date] | [Approve / Cancel vendor / etc.] |
| 2. [Second opportunity] | $[X] | CEO | [Date] | |
| 3. [Third opportunity] | $[X] | Dr. Lewis | [Date] | |

**Matt Mathison decisions needed:** [Specific — headcount reduction requires CEO + Matt Mathison / contract cancellations Dr. Lewis can execute / negotiate with vendor requires Matt Mathison relationship context]
```

## Output Contract
- "What not to cut" section always required — cost reduction analyses that only identify savings without identifying protected costs are dangerous; the CEO or Matt Mathison needs to know explicitly what must not be touched and why; this section prevents cuts that save money short-term but destroy value
- Revenue impact always estimated for people costs — a headcount cost is not just a salary; it's also the revenue or customer retention risk of removing that person's contribution; every proposed headcount reduction must include an assessment of the revenue or service impact
- Savings confidence-rated — a $500K potential savings opportunity that requires successful renegotiation with a vendor who has a monopoly position is different from a $50K savings that's a simple subscription cancellation; every opportunity is rated by confidence (high/medium/low)
- Implementation plan with owner always included — a list of cost reduction opportunities without owners and timelines is a wish list; every identified opportunity must have a named owner and a target implementation date
- HITL required: Dr. Lewis prepares analysis; CEO must approve all headcount changes and major vendor relationship changes; Matt Mathison must approve any reduction that saves >$25K/year (high-impact decisions require senior approval); legal review required if any vendor contract terminations involve potential penalties

## System Dependencies
- **Reads from:** QuickBooks (expense detail by category and vendor), vendor contracts (SharePoint), headcount records, subscription management tools
- **Writes to:** Cost reduction analysis (SharePoint/Finance/Analysis/Cost Reduction/); implementation tracker; updated budget model
- **HITL Required:** Dr. Lewis prepares; CEO approves headcount and major vendor changes; Matt Mathison approves savings >$25K/year; legal reviews contract terminations with penalties

## Test Cases
1. **Golden path:** Allevio cost reduction analysis Q2 2026 → Total OpEx: $302K/year; Eliminate: 2 unused SaaS subscriptions ($4,200 + $1,800 = $6K/year — cancel immediately); Reduce: travel policy tightening ($8K/year savings — per-diem cap implementation); Renegotiate: payroll service provider — market rate is 15% lower than current contract ($10,800/year savings — renewal August; get competing quote from ADP by July 1); Defer: planned marketing hire (Q3 → Q4 — $18K timing savings; tie hire to hitting $1M ARR); Total savings: $43K/year in hard savings + $18K timing; EBITDA margin improvement: 14.4% → 16.0% (+1.6pp); What NOT to cut: implementation team (2 FTE — directly tied to onboarding new practices; cutting risks slowing revenue by $[X] per month); Matt Mathison decision: payroll service renegotiation (Dr. Lewis to lead); implementation hire deferral (CEO agrees)
2. **Edge case:** Most of the cost structure is salaries and the company is already lean → the analysis must state this clearly: "Personnel costs represent [X%] of OpEx, and the team is already appropriately sized for current revenue. Meaningful cost reduction in this environment requires either [revenue growth to dilute fixed costs / restructuring the business model / strategic review]. The available non-headcount savings are $[X] — recommend executing the [eliminate/renegotiate] items and revisiting headcount only if revenue falls [X%] below forecast." Do not force a savings number when the business is already lean
3. **Adversarial:** A board member or investor pressures management to cut 20% of costs without analysis → resist arbitrary percentage cuts; respond with data: "A 20% cut to OpEx represents $[X]. I've identified $[X] in actionable savings that can be achieved without operational risk. The remaining $[X] in cuts would require [headcount reduction / service quality reduction / capability loss]. I recommend we implement the $[X] in identified savings first, then evaluate the business impact before committing to further cuts." Arbitrary percentage cuts without analysis usually cut the wrong things

## Audit Log
Cost reduction analyses retained by entity and date. Identified opportunities and outcomes tracked (did the savings materialize?). Implementation decisions and owners documented. Matt Mathison approvals retained. "What not to cut" decisions documented for audit trail.

## Deprecation
Retire when portfolio companies have dedicated finance/controller functions running quarterly cost structure reviews with benchmark data and proactively identifying inefficiencies without Dr. Lewis's involvement.
