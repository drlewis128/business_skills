---
name: unit-economics-analyzer
description: "Analyze unit economics for a business or product. Use when the user says 'unit economics', 'LTV CAC', 'customer lifetime value', 'customer acquisition cost', 'LTV to CAC', 'payback period', 'contribution margin', 'gross margin per unit', 'economics per customer', 'profitability per customer', 'unit profitability', or 'analyze the economics per customer'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--model <subscription|transactional|per-unit>] [--segment <customer segment or 'all'>]"
---

# Unit Economics Analyzer

Calculate and analyze unit economics — the revenue, cost, and profitability metrics for a single customer, unit, or transaction. Unit economics tell management whether the business model works at the per-customer level: do we make more money from each customer than it costs to acquire and serve them? A business with great top-line growth but broken unit economics is burning cash on a model that doesn't scale. A business with strong unit economics can justify aggressive growth investment.

## When to Use
- Evaluating whether MBL should invest in a portfolio company's growth
- Matt Mathison asks "do the unit economics work for [Company]?"
- A portfolio company CEO is planning a significant customer acquisition investment
- Pricing decisions — before changing prices, understand the unit economic impact
- Comparing portfolio companies or evaluating a potential acquisition target
- A board member asks "what is the LTV/CAC ratio?"

## Unit Economics Framework

```
Core unit economics metrics:

1. LTV (Customer Lifetime Value)
   = Gross Margin per period × Average customer lifetime
   OR = Annual gross margin per customer / Churn rate
   
   For subscription businesses: LTV = (Monthly revenue − Monthly COGS) / Monthly churn rate

2. CAC (Customer Acquisition Cost)
   = Total sales & marketing spend / New customers acquired
   (in the same period — or on a blended basis)

3. LTV/CAC Ratio (the key health metric)
   <1×:  Unit economics are broken — losing money on every customer
   1-3×: Poor — payback too slow; model needs improvement
   3-5×: Healthy — standard benchmark for SaaS/subscription
   >5×:  Excellent — strong model with room for growth investment

4. Payback Period
   = CAC / Monthly Gross Profit per Customer
   Target: <18 months (sooner is better)
   
5. Contribution Margin per Unit
   = Revenue per unit − Variable costs per unit
   (excludes fixed costs, which don't scale with units)
```

## Output Format

```markdown
# Unit Economics Analysis — <Company Name>
**Segment / Product:** <All customers / [Specific segment]>
**Period:** <As of <Date> / YTD <Year>>
**Prepared by:** Dr. John Lewis

---

## Unit Economics Summary

| Metric | Value | Benchmark | Status |
|--------|-------|-----------|--------|
| **Revenue per customer (monthly/annual)** | $[X]/mo | — | |
| **Gross margin per customer** | $[X]/mo ([X%]) | — | |
| **CAC (fully-loaded)** | $[X] | — | |
| **LTV** | $[X] | — | |
| **LTV/CAC Ratio** | **[X.X]×** | ≥3× | 🟢/🟡/🔴 |
| **Payback period** | **[N] months** | <18 months | 🟢/🟡/🔴 |
| **Average customer lifetime** | [N] months | — | |
| **Monthly churn rate** | [X%] | <2% | 🟢/🟡/🔴 |

---

## Build — How Each Metric Was Calculated

### Revenue Per Customer
| | Value | Source |
|---|---|---|
| Average monthly recurring revenue (MRR) per customer | $[X] | [Contract average / QuickBooks] |
| Annual recurring revenue (ARR) per customer | $[X] | MRR × 12 |
| Revenue per unit / transaction (if applicable) | $[X] | [Product pricing] |

### Gross Margin Per Customer
| | Value |
|---|---|
| Revenue per customer | $[X] |
| − Direct cost of service (COGS per customer) | ($[X]) |
| = **Gross margin per customer** | **$[X]** |
| **Gross margin %** | **[X%]** |

**COGS per customer includes:** [List what's in COGS — e.g., "Implementation labor, support staff, infrastructure per practice"]
**COGS per customer excludes:** [List what's excluded from COGS — e.g., "G&A, sales, marketing — these are fixed/semi-fixed"]

### Customer Acquisition Cost (CAC)
| | Value | Notes |
|---|---|---|
| Total sales & marketing spend (period) | $[X] | [QuickBooks — S&M category] |
| ÷ New customers acquired (same period) | [N] | [Customer count] |
| = **Fully-loaded CAC** | **$[X]** | |

**Blended CAC note:** [If there are multiple acquisition channels with different CACs — e.g., "Referral channel CAC: $[X]; direct sales CAC: $[X]; blended: $[X]"]

### LTV Calculation
| | Value |
|---|---|
| Monthly gross margin per customer | $[X] |
| ÷ Monthly churn rate | [X%] |
| = **LTV** | **$[X]** |

**Churn basis:** [How churn was calculated — e.g., "Average 5% annual churn based on last 12 months: 1 of 14 practices discontinued. Monthly churn = 0.4%"]

---

## LTV/CAC Interpretation

**LTV/CAC of [X.X]×:**

[If ≥3×]: "Unit economics are healthy. For every $1 spent acquiring a customer, we generate $[X] in lifetime gross margin. This supports continued investment in customer acquisition."

[If 1-3×]: "Unit economics are marginal. Payback period of [N] months means we're carrying CAC for an extended period before customers become profitable. Improving [churn / gross margin / CAC] would strengthen the model."

[If <1×]: "Unit economics are currently negative. Each new customer costs more to acquire than the lifetime value they generate. This is unsustainable. Immediate action required on [churn / pricing / COGS / S&M efficiency]."

---

## Sensitivity Analysis

| Lever | Change | LTV/CAC impact |
|-------|--------|---------------|
| Increase price by 10% | Revenue per customer: $[X] → $[X] | LTV/CAC: [X.X]× → [X.X]× |
| Reduce churn by 1% | Churn: [X%] → [X-1%] | LTV: $[X] → $[X] |
| Reduce CAC by 20% | CAC: $[X] → $[X] | LTV/CAC: [X.X]× → [X.X]× |
| Improve gross margin by 5pp | GM: [X%] → [X+5%] | LTV: $[X] → $[X] |

**Highest-impact lever:** [The change that most improves LTV/CAC — the investment priority]

---

## Segment Comparison (if applicable)

| Segment | Revenue/customer | CAC | LTV | LTV/CAC | Payback |
|---------|----------------|-----|-----|---------|---------|
| [Segment A] | $[X] | $[X] | $[X] | [X.X]× | [N] mo |
| [Segment B] | $[X] | $[X] | $[X] | [X.X]× | [N] mo |
| **Blended** | **$[X]** | **$[X]** | **$[X]** | **[X.X]×** | **[N] mo** |

**Segment insight:** [Which segment has the best unit economics? Are there segments the company should prioritize or avoid?]
```

## Output Contract
- LTV/CAC always calculated with fully-loaded CAC — "blended" or "organic" CAC that excludes some sales and marketing costs inflates the ratio and leads to over-investment in acquisition; CAC must include all sales and marketing personnel, tools, and programs
- Churn must be based on actual data, not assumptions — LTV is only as reliable as the churn rate; an estimated churn rate must be labeled as an estimate; if the company is too young to have reliable churn data, use industry benchmarks and label them clearly
- Sensitivity analysis always shows the most impactful lever — management needs to know where to focus improvement effort; the sensitivity table must identify which lever has the highest LTV/CAC impact per unit of effort
- Segment analysis required when segments have materially different economics — a company with enterprise and SMB customers at the same blended LTV/CAC may be hiding that one segment has excellent economics and the other is a drag; segment analysis reveals where to invest growth resources
- HITL required: Dr. Lewis builds analysis; CEO confirms COGS per customer and churn calculation; Matt Mathison reviews unit economics before any major growth investment decision; any investment in customer acquisition >$25K based on unit economics requires Matt Mathison explicit approval on the economics

## System Dependencies
- **Reads from:** QuickBooks (revenue, COGS, S&M spend), customer data (count by period, churn events), contract pricing, customer cohort data
- **Writes to:** Unit economics analysis (SharePoint/Finance/Analysis/); investment case supporting document; board financial package
- **HITL Required:** Dr. Lewis builds; CEO validates assumptions; Matt Mathison reviews before major growth investment decisions; capital allocation >$25K based on unit economics requires Matt Mathison approval

## Test Cases
1. **Golden path:** Allevio unit economics analysis June 2026 → Revenue/practice: $2,200/month; COGS/practice: $587/month (implementation amortized + ongoing support); GM/practice: $1,613/month (73.3%); Churn: 1 of 14 practices in last 12 months = 7.1% annual = 0.6%/month; LTV: $1,613 / 0.006 = $268,833; Sales & marketing: $22K/month; new practices/month: 0.67 average (8/year); CAC: $22K / 0.67 = $32,800; LTV/CAC: $268,833 / $32,800 = 8.2× (excellent); Payback: $32,800 / $1,613 = 20 months (slightly above 18-month target); Sensitivity: reducing CAC to $25K via referral channel focus improves LTV/CAC to 10.8×; reducing churn by 2% (to 5.1%) extends LTV by $54K; highest impact lever: reduce CAC through referral program (lower cost of acquisition vs. direct outreach); Matt Mathison: "Unit economics strong — support growth investment; optimize CAC through referral channel development"
2. **Edge case:** A portfolio company presents unit economics based on cohort revenue without accounting for churn → the analysis is incomplete; LTV based on assumed average lifetime (e.g., "customers stay 3 years") rather than calculated from actual churn data is unreliable; if the company is early-stage and doesn't have 3 years of churn data, use the actual data available and extrapolate conservatively with an explicit assumption label; "Based on 18 months of data at 2.1% monthly churn, we're extrapolating to a 48-month average lifetime. Actual LTV may differ as the cohort matures."
3. **Adversarial:** A CEO wants to exclude the cost of the implementation team from COGS because "they don't scale linearly with customers" → the implementation team cost is a direct cost of acquiring and onboarding each new customer; even if it doesn't scale perfectly linearly (some efficiency at scale), it belongs in COGS for unit economics; excluding it overstates gross margin per customer and inflates LTV; the correct approach is to measure the actual implementation cost per customer (total implementation spend / new customers onboarded) and include it in COGS; if efficiency improves at scale, model that in the unit economics projections with a labeled assumption

## Audit Log
Unit economics analyses retained by entity and date. Assumption sets retained (churn rate basis, COGS components, CAC calculation). Investment decisions supported by unit economics retained with the analysis. Matt Mathison reviews documented.

## Deprecation
Retire when portfolio companies have dedicated FP&A or a CFO who maintains a live unit economics model with monthly refresh from QuickBooks data and presents it to the board as part of the standard financial package.
