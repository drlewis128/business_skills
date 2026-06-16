---
name: financial-ratio-analyzer
description: "Calculate and interpret key financial ratios. Use when the user says 'financial ratios', 'calculate ratios', 'liquidity ratios', 'profitability ratios', 'leverage ratios', 'current ratio', 'debt to equity', 'return on equity', 'financial health ratios', 'analyze the balance sheet', 'quick ratio', 'interest coverage', 'EBITDA multiple', or 'financial metrics analysis'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-MM or YYYY>] [--focus <liquidity|profitability|leverage|all>]"
---

# Financial Ratio Analyzer

Calculate and interpret the key financial ratios that reveal a company's liquidity, profitability, leverage, and operating efficiency. Financial ratios translate raw financial statement numbers into comparable, benchmark-able metrics — allowing management, investors, and lenders to assess financial health in a standard format. For MBL, ratios are used to monitor portfolio company health, assess covenant compliance, and benchmark performance against industry standards.

## When to Use
- Quarterly financial health check on a portfolio company
- Matt Mathison asks "is [Company] financially healthy?"
- A lender or investor asks for key financial metrics
- Covenant compliance check — some loan agreements have financial ratio covenants
- Evaluating a potential acquisition target's financial health
- Comparing a portfolio company to industry benchmarks

## Key Financial Ratios

```
Four ratio categories:

1. LIQUIDITY — Can the company meet short-term obligations?
   Current Ratio = Current Assets / Current Liabilities (target: >1.5×)
   Quick Ratio = (Current Assets − Inventory) / Current Liabilities (target: >1.0×)
   Cash Ratio = Cash / Current Liabilities (target: >0.5×)

2. PROFITABILITY — How efficiently is the company generating profit?
   Gross Margin % = Gross Profit / Revenue
   EBITDA Margin % = EBITDA / Revenue
   Net Margin % = Net Income / Revenue
   Return on Equity (ROE) = Net Income / Total Equity
   Return on Assets (ROA) = Net Income / Total Assets

3. LEVERAGE — How much debt is the company carrying?
   Debt/EBITDA = Total Debt / EBITDA (target: <3.0× for most operating companies)
   Debt/Equity = Total Debt / Total Equity
   Interest Coverage = EBITDA / Interest Expense (target: >3.0×)
   Net Debt = Total Debt − Cash

4. EFFICIENCY — How well is the company using its assets?
   DSO (Days Sales Outstanding) = AR / (Revenue / 365)
   DPO (Days Payable Outstanding) = AP / (COGS / 365)
   Asset Turnover = Revenue / Total Assets
   Working Capital = Current Assets − Current Liabilities
```

## Output Format

```markdown
# Financial Ratio Analysis — <Company Name>
**Period:** [Quarter / Year ending <Date>]
**Prepared by:** Dr. John Lewis | **Date:** <Date>

---

## Ratio Summary

| Category | Ratio | Value | Benchmark | Status | Trend |
|---------|-------|-------|-----------|--------|-------|
| **Liquidity** | Current Ratio | [X.X]× | >1.5× | 🟢/🟡/🔴 | ↑/→/↓ |
| | Quick Ratio | [X.X]× | >1.0× | 🟢/🟡/🔴 | |
| | Cash Ratio | [X.X]× | >0.5× | 🟢/🟡/🔴 | |
| **Profitability** | Gross Margin % | [X%] | [Industry: X%] | 🟢/🟡/🔴 | |
| | EBITDA Margin % | [X%] | [Industry: X%] | 🟢/🟡/🔴 | |
| | Net Margin % | [X%] | [Industry: X%] | 🟢/🟡/🔴 | |
| | ROE | [X%] | >15% | 🟢/🟡/🔴 | |
| **Leverage** | Debt/EBITDA | [X.X]× | <3.0× | 🟢/🟡/🔴 | |
| | Interest Coverage | [X.X]× | >3.0× | 🟢/🟡/🔴 | |
| | Net Debt/(Cash) | $[X] / ($[X]) | — | | |
| **Efficiency** | DSO | [N] days | <[N] days | 🟢/🟡/🔴 | |
| | DPO | [N] days | — | | |
| | Working Capital | $[X] | Positive | 🟢/🟡/🔴 | |

---

## Liquidity Analysis

**Current Ratio: [X.X]×**
Current Assets: $[X] | Current Liabilities: $[X]
[Interpretation: "Current ratio of [X.X]× means the company has $[X] in current assets for every $1 of current liabilities — [strong / adequate / concerning]. The largest current asset is [cash/AR/inventory: $X]."]

**Quick Ratio: [X.X]×**
[Interpretation: Quick ratio excludes inventory — for service companies like Allevio, quick ratio = current ratio since inventory is minimal.]

**Working Capital: $[X]**
[Interpretation: Positive working capital of $[X] means the company has a comfortable short-term buffer. [Any specific concern: AR quality, concentration risk, etc.]]

---

## Profitability Analysis

| Metric | Current | Prior Period | Industry Benchmark |
|--------|---------|------------|-------------------|
| Gross Margin % | [X%] | [X%] | [X%] |
| EBITDA Margin % | [X%] | [X%] | [X%] |
| Net Margin % | [X%] | [X%] | [X%] |
| ROE | [X%] | [X%] | [X%] |

**Profitability narrative:** [Is the company improving or declining? What's driving margin performance? How does it compare to industry?]

**Industry benchmarks used:** [Source — e.g., "Healthcare MSO industry EBITDA margins: 10-20%; Allevio is at [X%]"]

---

## Leverage Analysis

**Debt/EBITDA: [X.X]×**
Total Debt: $[X] | EBITDA (annualized): $[X]
[Interpretation: "Debt/EBITDA of [X.X]× is [well within / approaching / exceeding] the [3.0×] threshold. The company [would / would not] need to reduce leverage before taking on additional debt."]

**Interest Coverage: [X.X]×**
EBITDA: $[X] | Interest Expense: $[X]
[Interpretation: "Interest coverage of [X.X]× means EBITDA covers interest expense [X]× — [strong / marginal / insufficient]."]

**Covenant check (if applicable):**
[Lender covenant: Debt/EBITDA <[X]× | Current: [X.X]× | Status: ✅ Compliant / ❌ Breach / ⚠️ Approaching]

---

## Efficiency Analysis

**DSO: [N] days**
[Interpretation: "DSO of [N] days vs. Net 30 terms means clients are paying [on time / [N] days late on average]. [Target: 35-40 days for Net 30 terms.]"]

**DPO: [N] days**
[Interpretation: "Paying vendors in [N] days vs. [N]-day terms — [optimizing cash timing / paying too early]."]

---

## Financial Health Summary

| Dimension | Health | Key finding |
|---------|--------|------------|
| Liquidity | 🟢/🟡/🔴 | [1 sentence] |
| Profitability | 🟢/🟡/🔴 | [1 sentence] |
| Leverage | 🟢/🟡/🔴 | [1 sentence] |
| Efficiency | 🟢/🟡/🔴 | [1 sentence] |

**Overall financial health:** 🟢 Strong / 🟡 Adequate — watch [area] / 🔴 Concerning — action needed on [area]

**Primary action recommendation:** [The one thing management should focus on to most improve financial health]
```

## Output Contract
- Industry benchmarks always cited with source — a ratio without a benchmark is context-free; every profitability metric must be compared against an industry standard (healthcare MSO, oil & gas, media/ad-tech); if no reliable benchmark is available, state "benchmark not available" rather than using a generic number
- Trend direction always shown — a single-period ratio tells where the company is; the trend tells where it's going; prior period comparison and trend direction (up/down/stable) must always be shown
- Debt covenant compliance explicitly checked — if the company has a credit facility or term loan with financial covenants, the ratio analysis must include the covenant thresholds and current compliance status; approaching a covenant limit within 20% is a flag that should reach Matt Mathison
- Primary action recommendation always included — a ratio analysis that lists the numbers without a recommendation is information without insight; the analysis must conclude with the one highest-priority financial health action
- HITL required: Dr. Lewis calculates ratios from QuickBooks data; CPA validates lender covenant calculations; Matt Mathison reviews for covenant-sensitive situations and any ratios indicating financial stress (current ratio <1.0, debt/EBITDA >4×, or interest coverage <2×)

## System Dependencies
- **Reads from:** QuickBooks (balance sheet and P&L for all periods), lender agreements (for covenant thresholds), industry benchmarks
- **Writes to:** Financial ratio analysis (SharePoint/Finance/Analysis/); board financial package; lender covenant compliance certificate
- **HITL Required:** Dr. Lewis calculates; CPA reviews covenant calculations; Matt Mathison reviews on covenant risk or financial stress indicators

## Test Cases
1. **Golden path:** Allevio financial ratio analysis Q2 2026 → Current ratio: $612K/$187K = 3.3× (🟢 strong liquidity); Gross margin: 74.6% (🟢 above healthcare MSO benchmark of 65-72%); EBITDA margin: 14.4% (🟢 at high end of MSO benchmark 10-20%); Net margin: 10.8%; No debt — leverage ratios N/A; DSO: 37 days (🟡 slightly above 35-day target, improving from 42 days in Q1); Working capital: $425K (positive — strong); Overall: 🟢 Strong on all dimensions; Primary recommendation: continue DSO improvement initiative — 37 days is good but 30 days would release $28K in working capital
2. **Edge case:** A company has a credit facility with a 3.0× Debt/EBITDA covenant, and the current ratio is 3.1× — within 3% of the limit → flag immediately to Matt Mathison: "HIVE's Debt/EBITDA ratio is 3.1× — within 3% of the 3.0× covenant limit. If Q3 EBITDA comes in below budget by any amount, we risk a technical covenant breach. Recommend: (1) Review loan agreement — is there a cure period if breached? (2) Contact lender proactively — better to disclose proactively than breach without notice; (3) Consider accelerating Q3 production if possible to improve EBITDA." A covenant approaching its limit is a time-sensitive issue
3. **Adversarial:** A CEO presents investor materials with EBITDA margin calculated without subtracting certain "non-cash" expenses, resulting in an inflated margin → the standard EBITDA definition (Earnings Before Interest, Tax, Depreciation, and Amortization) is well-defined; selective exclusion of additional items (stock compensation, restructuring charges, one-time items) produces "adjusted EBITDA" which is a non-GAAP measure; if adjusted EBITDA is presented, it must be clearly labeled as "Adjusted EBITDA" with a full reconciliation to GAAP EBITDA; presenting adjusted EBITDA as EBITDA without disclosure is misleading to investors and lenders

## Audit Log
Financial ratio analyses retained by entity and period. Industry benchmarks and sources documented. Covenant compliance calculations retained. Matt Mathison alerts for covenant concerns documented. Trend data maintained across periods for pattern analysis.

## Deprecation
Retire when portfolio companies have CFOs who maintain a live financial dashboard with key ratios auto-calculated from QuickBooks data, and when lender covenant compliance is monitored through dedicated treasury management software.
