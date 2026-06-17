---
name: fpa-benchmarking-analyzer
description: "Benchmark portfolio company financials against industry comparables. Use when the user says 'benchmark', 'industry benchmark', 'comparable companies', 'comps', 'industry comparison', 'how do we compare to peers', 'peer comparison', 'industry average', 'industry standard', 'how are we vs the market', 'competitive benchmarking', 'financial benchmarking', 'operational benchmarks', 'KPI benchmarks', 'margin benchmarks', 'industry comps', 'sector benchmarking', 'market comparison', 'peer group analysis', 'compare to industry', or 'benchmark our performance'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--sector <healthcare|oil-gas|media|general>] [--metrics <financial|operational|all>] [--action <analyze|present>]"
---

# Benchmarking Analyzer

Benchmark MBL portfolio company financial and operational performance against industry comparables — identifying where each company outperforms peers and where there is a gap to close. Benchmarking serves three purposes: (1) it validates that the business is performing well (or identifies that it is not) relative to what is achievable in that market, (2) it provides context for LP and board reporting (performance that looks modest in isolation may be strong relative to peers), and (3) it identifies specific improvement opportunities (if HIVE's LOE/BOE is 40% above the sector benchmark, that's a quantified target for the operations team). Dr. Lewis benchmarks each portfolio company annually and includes the most relevant benchmarks in the board package.

## When to Use
- Annual board and LP meeting — benchmark context for portfolio company performance
- A portfolio company's margins appear low — is this a company problem or a sector norm?
- Exit preparation — buyers and their advisors will benchmark the company; Dr. Lewis prepares first
- A portfolio company CEO requests peer comparison to support a business case
- FP&A annual planning — benchmarks inform what EBITDA margins are achievable at scale

## Benchmarking Framework

```
ALLEVIO — Healthcare MSO Benchmarks:

  Revenue benchmarks:
    PMPM rate: $75-110/PMPM for employer-sponsored primary care models (Allevio targets $85-90)
    Revenue per member per year: $900-1,200 range for comparable MSOs
    Revenue growth rate: 15-25% annual for high-growth direct primary care; 8-15% for established
    
  Profitability benchmarks:
    Gross margin: 30-45% for primary care MSO models (clinical cost is the variable cost driver)
    EBITDA margin: 15-30% for direct primary care practices at scale
    EBITDA margin at Allevio's revenue scale (~$1.2M LTM): 20-30% target (earlier stage)
    
  Operational benchmarks:
    Patient visits per provider per day: 12-18 for primary care (capacity utilization metric)
    Panel size per provider: 750-1,500 patients per full-time PCP
    Collections rate: >95% of billed charges should be collected (across payer + commercial)
    Denial rate: <5% clean claim denial rate; >8% = problem with billing/coding
    Days in AR (commercial): <30 days; (payer): <60 days
    
  Valuation benchmarks (for exit):
    Direct primary care / MSO transactions: 7-12× EV/EBITDA (premium for growth + recurring revenue)
    Comparable transactions: Oak Street Health, Privia Health, Aledade platform companies
    Enterprise value per member: $1,500-$3,000 per enrolled member (for high-quality MSO platforms)
    
HIVE PARTNERS — Oil & Gas (Uinta Basin) Benchmarks:

  Production benchmarks:
    LOE (Lease Operating Expense) per BOE: $15-25/BOE (industry midpoint $18-20; Uinta Basin tends toward $20-25 due to infrastructure)
    Production taxes: 6-8% of revenue (Utah severance + ad valorem)
    Operating netback per BOE: >$30/BOE at $65/bbl WTI is target
    Production decline rate: 10-15%/year for conventional wells; 25-40% for unconventional
    
  Financial benchmarks:
    EBITDA margin: 40-65% for small O&G producers at $65-70/bbl WTI
    Debt/EBITDA: <2.0× for sustainable small O&G producers (above 3.0× = stressed)
    F&D cost per BOE: <$15/BOE for a good well program
    
  Valuation benchmarks (for exit):
    Small O&G producer transactions: 3-6× EV/EBITDA (commodity exposure discount)
    Enterprise value per BOE/day: $20,000-$50,000 per BOE/day (proven reserves basis)
    WTI price sensitivity: At $65/bbl WTI, EV/EBITDA multiple of 5-6× is reasonable; drops to 3-4× at $50/bbl
    
COLUMN6 / SIPROCAL — CTV / Programmatic Media Benchmarks:

  Revenue benchmarks:
    CTV market growth: 15-20% annual industry growth (CTV advertising is taking share from linear TV)
    CPM benchmarks: CTV $18-45/CPM (premium content); Digital/programmatic $4-12/CPM
    Gross take rate (gross margin): 40-55% for profitable programmatic operators (after media buy cost)
    Revenue growth target: 15-25% for CTV-focused operators with good execution
    
  Financial benchmarks:
    EBITDA margin: 10-20% for mid-size CTV operators at $3-10M revenue scale
    G&A as % of revenue: 15-25% (high at small scale; should compress toward 12-15% at $5M+)
    
  Valuation benchmarks (for exit):
    CTV / programmatic transactions: 6-10× EV/EBITDA (growth premium + recurring revenue credit)
    Revenue multiple: 1.5-3.0× EV/Revenue for high-growth CTV platforms
    Strategic vs. financial buyer: Strategic buyers (larger media companies, DSPs) pay 1.5-2× what financial buyers pay
    
PORTFOLIO-LEVEL BENCHMARKS (cross-sector):
  Revenue growth: Top-quartile PE portfolio companies = >20% annual revenue growth
  EBITDA margin: Top-quartile PE portfolio = >25% EBITDA margin at scale
  EBITDA growth: Top-quartile PE = >30% annual EBITDA growth in first 3 years
  Return targets: Gross IRR >25%; MOIC >2.5× (for top-quartile PE fund performance)
```

## Output Format

```markdown
# Benchmarking Analysis — [Entity] vs. Industry Peers | [Date]
**Sector:** [Healthcare MSO / O&G / CTV Media] | **Prepared by:** Dr. Lewis

---

## Financial Benchmarks

| Metric | [Entity] Actual | Sector Median | Top Quartile | vs. Median |
|--------|----------------|--------------|-------------|-----------|
| Revenue growth (LTM) | [X]% | [X]% | [X]% | ↑ Ahead / ↓ Behind |
| Gross margin | [X]% | [X]% | [X]% | ↑/↓ |
| EBITDA margin | [X]% | [X]% | [X]% | ↑/↓ |
| [DSO] | [X] days | [X] days | [X] days | ↑/↓ |
| [LOE per BOE / PMPM / Gross take rate] | [X] | [X] | [X] | ↑/↓ |

---

## Operational Benchmarks

| Metric | [Entity] | Sector Median | Top Quartile | Status |
|--------|---------|--------------|-------------|--------|
| [PMPM rate] | $[X] | $[X] | $[X] | ✅ Above median |
| [Denial rate] | [X]% | [X]% | <[X]% | ⚠️ At median |
| [LOE/BOE] | $[X] | $[X] | $[X] | 🔴 Below median |

---

## Valuation Context

| Metric | [Entity] Implied | Sector Range | Basis |
|--------|-----------------|-------------|-------|
| EV/EBITDA (implied) | [X.X]× | [X.X-X.X]× | [Entry multiple vs. current comparable transactions] |
| Revenue multiple | [X.X]× | [X.X-X.X]× | — |
| Enterprise value per [member/BOE] | $[X]K | $[X-X]K | [Comparable transactions] |

---

## Key Gaps and Opportunities

| Metric | [Entity] | Median | Gap | Improvement Opportunity |
|--------|---------|--------|-----|------------------------|
| [EBITDA margin] | [X]% | [X]% | −[X] bps | [Identify specific cost reduction or revenue improvement] |
| [LOE/BOE] | $[X] | $[X] | +$[X] | [Maintenance contract renegotiation; production optimization] |
| [Denial rate] | [X]% | [X]% | +[X] bps | [Coding audit; credential maintenance with Marshall Medical] |

**EBITDA impact of closing key gap:** If [Entity]'s [metric] improved from [X] to sector median [X]: +$[X]K EBITDA (annualized).
```

## Output Contract
- Benchmarks must be sourced and current — an industry benchmark that is 5 years old is not a benchmark — it's history; Dr. Lewis uses sources that are recent (within 2 years) for each sector: healthcare MSO benchmarks from MGMA (Medical Group Management Association) or healthcare industry reports; O&G benchmarks from EIA production data and industry analyst reports; CTV/media benchmarks from IAB and eMarketer research; when Dr. Lewis cannot find a current source, he labels the benchmark as "estimated based on [source]" rather than presenting it as authoritative; a benchmark with a citation is credible; a benchmark without one is an opinion
- Valuation benchmarks have the most direct business impact — the most valuable benchmarking output for Matt Mathison is the valuation context: "Allevio is trading at an implied 7.2× EV/EBITDA vs. comparable MSO transactions averaging 9× — there is a 1.8× multiple gap that, if closed, would add $2.1M to the exit value"; this framing turns benchmarking from an academic exercise into a value creation roadmap; Dr. Lewis always calculates the dollar impact of the benchmark gap where the gap is material
- Be honest about below-benchmark performance — if HIVE's LOE per BOE is 40% above the sector benchmark, Dr. Lewis says so clearly; a benchmarking report that presents only favorable comparisons is not a benchmarking report — it is marketing; the board and Matt Mathison need to know where performance is below sector median so they can make informed decisions about whether to invest in improvement or factor the gap into exit pricing expectations
- HITL required: Dr. Lewis builds the benchmarking analysis; CEO reviews and may provide context for why certain metrics are above or below industry (not all gaps are problems — some are intentional tradeoffs); Matt Mathison reviews the benchmarking in the board package; valuation benchmark changes that materially affect the exit value forecast require Matt Mathison discussion before the board presentation; any benchmark data used in LP communications reviewed by Matt Mathison for accuracy and source quality

## System Dependencies
- **Reads from:** QuickBooks actuals (for the company's own metrics); fpa-unit-economics-modeler (per-unit metrics for benchmarking); industry sources: MGMA (healthcare), EIA/API (O&G), IAB/eMarketer (CTV); comparable company transaction data (investment banking league tables, public filings, industry news); working capital analysis (fpa-working-capital-analyzer — DSO/DPO benchmarks); valuation sources (recent comparable transactions in each sector)
- **Writes to:** Benchmarking analysis (SharePoint/Finance/<Company>/Benchmarking/[Period].xlsx); board financial package (benchmarking section); LP annual report (peer comparison); exit preparation data room (competitive positioning); value creation plan (improvement opportunities identified through benchmarking)
- **HITL Required:** Dr. Lewis analyzes; CEO provides context for metrics that appear below benchmark; Matt Mathison reviews before board or LP presentation; any external use of competitor data must comply with applicable confidentiality and securities laws — coordinated with Matt Mathison

## Test Cases
1. **Golden path:** Allevio annual benchmarking for the board → Dr. Lewis pulls MGMA annual survey data for primary care PMPM rates: median $82, top quartile $95; Allevio at $85.50 = above median, below top quartile; collections rate: industry benchmark >95%; Allevio at 93.2% = slightly below (denial rate review recommended); EBITDA margin: sector median 22%, top quartile 28%; Allevio at 30% = top quartile for this revenue scale ✅; valuation: comparable MSO transactions 8.5× EV/EBITDA median; implied Allevio exit EV at $820K EBITDA × 8.5× = $6.97M; key insight: "Allevio's EBITDA margin is already top-quartile; the opportunity is in PMPM rate ($85 vs. $95 top quartile = +$145K revenue opportunity if achieved) and collections rate improvement (+$28K revenue from 95% vs. 93%)"; board presentation includes the gap and improvement plan
2. **Edge case:** HIVE LOE per BOE is $23, significantly above the $18-20 sector benchmark → Dr. Lewis quantifies: HIVE production ~950 BOE/day × 365 = 346,750 BOE/year; at $23 vs. $19 median = $4/BOE gap × 346,750 BOE = $1.39M/year EBITDA gap; Dr. Lewis investigates: root cause is a maintenance contract renewed at a premium rate in Q1; the contract is up for renegotiation in 18 months; Dr. Lewis builds the action plan: "The $4/BOE LOE gap is worth $1.39M in annualized EBITDA if closed. Primary driver: maintenance contract at premium rate. Action: begin renegotiation 6 months before contract expiry (Q3 next year). If LOE can be reduced to $20/BOE, exit EBITDA improves by $1.0M, adding approximately $5M to exit EV at 5× multiple." Matt Mathison priorities the HIVE operational improvement for the value creation plan
3. **Adversarial:** The Column6 CEO asks to exclude the CPM benchmark comparison from the board deck because "our CPM is below market and it makes us look bad" → Dr. Lewis responds: "I understand the concern, but the board is going to compare our CPM to industry benchmarks on their own — they have access to the same IAB data. If we don't show it, the omission will be more conspicuous than the gap. What I'd recommend: show the benchmark, explain why our CPM is where it is (we prioritize volume relationships with agencies vs. premium direct-to-brand rates), and show the path to CPM improvement (CTV mix increasing from 35% to 55% of revenue over 2 years, which will blend the CPM up). The framing is 'strategic positioning that we're actively optimizing' — that's honest and has a plan behind it." CEO agrees; benchmark stays in the deck with the improvement narrative

## Audit Log
All benchmarking analyses retained by year. Source documentation for all benchmarks retained. Valuation comparable transaction data retained. Gap analysis and improvement plans retained. Board presentation benchmark slides retained. Year-over-year benchmark trend maintained (how is the company tracking vs. sector over time?).

## Deprecation
Retire when each portfolio company has a CFO who maintains industry benchmarking — with Dr. Lewis reviewing the valuation benchmarks annually and Matt Mathison approving the benchmark presentation in the board package.
