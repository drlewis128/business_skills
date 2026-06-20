---
name: pe-benchmark-comparator
description: "Benchmark MBL Partners fund and portfolio performance against industry standards. Use when the user says 'benchmark', 'benchmarking', 'industry benchmark', 'fund benchmark', 'performance benchmark', 'how do we compare', 'how are we doing vs peers', 'peer comparison', 'peer benchmark', 'comparable funds', 'fund peer group', 'vintage year comparison', 'Cambridge Associates', 'Preqin', 'ILPA benchmark', 'ILPA standards', 'public market equivalent', 'PME', 'PME benchmark', 'direct alpha', 'MSCI', 'S&P benchmark', 'PE benchmark', 'LMM benchmark', 'lower middle market benchmark', 'top quartile', 'median performance', 'quartile ranking', 'fund ranking', 'portfolio company benchmark', 'entity benchmark', 'KPI benchmark', 'operational benchmark', 'EBITDA margin benchmark', 'revenue growth benchmark', 'DSO benchmark', 'NRR benchmark', 'GRR benchmark', 'sector benchmark', 'healthcare benchmark', 'energy benchmark', 'CTV benchmark', 'ad-tech benchmark', 'management benchmark', 'CEO benchmark', or 'LP benchmark question'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--scope <fund|allevio|hive|column6>] [--type <irr|moic|pme|operational|sector>] [--source <cambridge|preqin|ilpa|public>] [--action <compare|report|present>]"
---

# PE Benchmark Comparator

Benchmark MBL Partners fund and portfolio performance against industry standards — comparing fund-level IRR and MOIC against Cambridge Associates and Preqin LMM PE benchmarks, calculating Public Market Equivalent (PME) returns, and benchmarking portfolio company operational metrics against sector peers. Benchmarking serves two purposes: it calibrates MBL's honest assessment of its own performance ("are we actually good or just better than a low bar?"), and it supports LP reporting ("how does MBL compare to other options LPs have?"). LPs ask benchmark questions regularly; Dr. Lewis has current, defensible answers ready.

## When to Use
- LP asks how MBL compares to other PE funds
- Annual fund performance review (pe-fund-performance-review)
- Building the annual LP meeting presentation
- Validating whether portfolio company KPIs are strong or weak vs. sector

## Benchmarking Framework

```
FUND-LEVEL BENCHMARKS:

  PRIMARY SOURCES (use the most recent available data):
    Cambridge Associates U.S. Private Equity Index: quarterly; tracks pooled horizon returns
      Subsection: Lower Middle Market (LMM) or Small Buyout (varies by fund size definition)
      Metrics: median net IRR; top quartile IRR; median TVPI; top quartile TVPI by vintage year
    Preqin Private Equity Database: broader universe; available as subscription data
      Metrics: median net IRR; quartile rankings; by vintage year and strategy type
    ILPA Reporting Standards: do not provide returns benchmarks but define standard reporting format
    
  PUBLIC MARKET EQUIVALENT (PME):
    Definition: compares PE fund returns to what the same LP cash flows would have earned
    invested in a public market index (S&P 500; Russell 2000; MSCI)
    Calculation: invest capital calls in the index on the same dates; distribute proceeds on
    the same dates; compare ending value to PE fund ending value
    Direct Alpha method: most common PME variant in LP reporting
    Interpretation: PME > 1.0x means PE outperformed the public index; < 1.0x = underperformed
    
  VINTAGE YEAR MATCHING:
    Always compare MBL's fund to the same vintage year cohort
    A fund started in 2022 (depressed market) may show lower IRR than a 2020 fund (recovery market)
    without that implying worse management
    
  MBL FUND BENCHMARKING TARGETS:
    Net IRR: top quartile of LMM PE (typically ≥20% net IRR)
    TVPI: top quartile (typically ≥2.0x TVPI at fund maturity)
    PME: > 1.3x (meaningfully better than public market alternative)

PORTFOLIO COMPANY OPERATIONAL BENCHMARKS:

  ALLEVIO — Healthcare MSO Benchmarks:
    Employer GRR: employer group retention
      Good: >92%; Median: ~88-90%; Poor: <85%
    Claim ratio: clinical cost efficiency
      Good: <85%; Median: ~87-90%; Poor: >92%
    DSO: revenue cycle efficiency
      Good: <30 days; Median: ~35 days; Poor: >45 days
    PMPM premium equivalent: employer pricing vs. market
      Benchmark: industry PMPM by region (varies widely — use AHIP or Mercer data)
    Sources: MGMA (Medical Group Management Association); AHIP; HFMA (Healthcare Financial Management)
    
  HIVE — Oil & Gas Royalty Benchmarks:
    Landowner GRR: royalty owner retention
      Good: >90%; Median: ~85-88%; Poor: <80%
    Revenue per NRA: royalty income efficiency
      Benchmark: $/net royalty acre by basin (Uinta Basin comparables)
      Sources: DOGM production data; industry association reports
    DSO: royalty payment timeliness
      Good: <40 days; Median: ~45 days; Poor: >60 days
      
  COLUMN6 — CTV/Digital Media Benchmarks:
    Agency NRR: client retention + expansion
      Good: >100% (net expansion); Median: ~95%; Poor: <90%
    VCR: video completion rate (campaign quality)
      Good: >93%; Median: ~90-92%; Poor: <85%
    IVT rate: invalid traffic (inventory quality)
      Good: <1.5%; Median: ~2%; Poor: >3%
    DSO:
      Good: <50 days; Median: ~55 days; Poor: >65 days
    Sources: IAB (Internet Advertising Bureau); GroupM; eMarketer

PRESENTING BENCHMARKS TO LPs:

  CONTEXT ALWAYS ACCOMPANIES THE DATA:
    "MBL's fund net IRR of [X%] ranks in the top quartile of LMM PE funds
    of the same vintage (Cambridge Associates [Year] data: top quartile ≥[X%])"
    "MBL outperforms the public market equivalent by [X.Xx]x, meaning LP capital
    earned [X]% more than the same flows invested in the S&P 500"
    
  UNDERPERFORMANCE DISCLOSURE:
    If MBL is below top quartile: disclose the actual quartile and the reason
    "MBL's current net IRR of [X%] is in the [second/third] quartile due to the
    J-curve effect in the fund's early years; unrealized portfolio FMV positions
    us on a trajectory toward top-quartile returns by [Year]"
    Do not present only favorable benchmark comparisons and omit unfavorable ones
```

## Output Format

```markdown
# Performance Benchmark Report — [Fund Name] — [Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **Source:** Cambridge Associates [Year] / Preqin [Year]

---

## Fund vs. Benchmark

| Metric | MBL Fund | Top Quartile | Median | MBL Quartile |
|--------|---------|-------------|--------|-------------|
| Net IRR (inception-to-date) | [X%] | [X%] | [X%] | [1st / 2nd / 3rd] |
| TVPI | [X.Xx]x | [X.Xx]x | [X.Xx]x | |
| PME (vs. S&P 500) | [X.Xx]x | — | 1.0x | — |

---

## Portfolio Company vs. Sector Benchmark

| Metric | Allevio | Healthcare median | Status |
|--------|---------|------------------|--------|
| Employer GRR | [X%] | [X%] | ✅ / ⚠️ |
| Claim ratio | [X%] | [X%] | ✅ / ⚠️ |
| DSO | [N] days | [N] days | ✅ / ⚠️ |

| Metric | Column6 | CTV/Ad-tech median | Status |
|--------|---------|-------------------|--------|
| Agency NRR | [X%] | [X%] | ✅ / ⚠️ |
| VCR | [X%] | [X%] | ✅ / ⚠️ |
| IVT rate | [X%] | [X%] | ✅ / ⚠️ |
```

## Output Contract
- Benchmarks are quoted from the most recent available data with the source and date — a benchmark from 3 years ago may significantly misrepresent current performance standards; Dr. Lewis uses the most recent Cambridge Associates or Preqin data available; the source and data vintage are always cited ("Cambridge Associates U.S. Private Equity, LMM subset, [Year] vintage year, as of [Quarter Year]"); LPs who ask follow-up questions get precise sourcing; Dr. Lewis does not quote a benchmark from memory without checking the current data
- Unfavorable benchmark comparisons are disclosed alongside favorable ones — selecting only the benchmarks where MBL looks good and omitting the ones where it doesn't is misleading LP reporting; if MBL's net IRR is in the third quartile but its TVPI is in the first quartile (early J-curve makes IRR look low), both facts are presented with the correct context ("IRR is temporarily depressed due to J-curve; TVPI reflects strong unrealized portfolio value"); LPs who discover that unfavorable benchmarks were withheld lose trust — and PE fund management is a trust-based business
- PME is calculated with the same rigor as IRR — not estimated; the PME calculation uses the exact same dated cash flows as the IRR calculation (capital calls as index purchases; distributions as index sales) applied to a reference index (S&P 500 or Russell 2000); the resulting PME ratio shows whether PE outperformed the public alternative; Dr. Lewis maintains the PME calculation alongside the IRR model and updates it with the same frequency
- HITL required: benchmark data included in LP reports → Matt Mathison reviews before distribution; any benchmarking showing MBL below the median → Matt Mathison briefing with context before LP communication; PME calculation → fund administrator or independent calculation to verify; benchmark data sourcing questions from LPs → Dr. Lewis provides precise source documentation; annual LP meeting benchmark slides → Matt Mathison reviews before presentation

## System Dependencies
- **Reads from:** pe-irr-tracker (fund IRR for comparison); pe-moic-calculator (TVPI/DPI/RVPI for comparison); Cambridge Associates PE Index (subscription data); Preqin (subscription data); pe-portfolio-kpi-dashboard (entity operational metrics for operational benchmarking); industry association databases (MGMA; IAB; AHIP; DOGM)
- **Writes to:** Annual benchmark report (SharePoint → Portfolio → Benchmarks → [YYYY]); pe-lp-quarterly-report (benchmark context section); pe-lp-annual-meeting (full benchmark presentation); Matt Mathison annual review; pe-fund-performance-review (benchmark comparison)
- **HITL Required:** Benchmark data in LP reports → Matt reviews; below-median disclosure → Matt briefing; PME calculation → independent verification; LP sourcing questions → precise documentation; annual meeting benchmark slides → Matt reviews

## Test Cases
1. **Golden path:** Annual benchmark update. Cambridge Associates LMM PE [Year] vintage: top quartile net IRR 22%; median 15%. MBL fund net IRR: 19% (above median; below top quartile — 2nd quartile). TVPI: 1.62x (top quartile is 1.8x; median 1.4x — 2nd quartile). PME vs. S&P 500: 1.28x (MBL returned 28% more than the S&P 500 over the same period). Dr. Lewis presents to Matt: "MBL is in the 2nd quartile for net IRR and TVPI on a vintage-matched basis. The J-curve effect from early portfolio company investments is still suppressing our IRR. Based on current FMV trajectory, we project top quartile positioning by Year [N] as unrealized value converts to exits. PME at 1.28x is strong and demonstrates that LP capital is significantly better deployed in MBL than in the public market alternative."
2. **Edge case:** An LP questions the benchmarking, arguing that MBL is comparing itself to "wrong vintage" peer funds → Dr. Lewis: "Fair question — let me show you the vintage year matching methodology. We're comparing MBL Fund [I] (first close [Year]) to the Cambridge Associates LMM PE cohort for funds with first close in [Year range]. If you believe there's a more appropriate vintage match, I'd welcome the conversation — send me the specific peer set you'd like to see and I'll model it. My goal is the most accurate benchmark, not the most favorable one, so I'm open to any reasonable methodology critique."
3. **Adversarial:** Matt Mathison asks Dr. Lewis to present only the PME data (where MBL looks good) in the LP annual meeting and omit the IRR quartile data (where MBL is 2nd quartile) → Dr. Lewis: "I understand the instinct — our PME is strong and it's a compelling number. But I'd push back on omitting the IRR quartile for two reasons: (1) LPs will ask about IRR quartile ranking — it's the standard question at every annual meeting, and if we haven't pre-empted it, we'll be answering it defensively; (2) Selectively presenting data where we look good creates exactly the trust problem that makes LPs adversarial later. My recommendation: lead with the PME (it's the stronger story), then present the IRR quartile with context about the J-curve. Controlling the narrative is better than avoiding the data."

## Audit Log
All benchmark reports retained (with source data; date; methodology notes). PME calculations retained. LP meeting benchmark presentations retained. Matt Mathison briefings retained (below-median events; context). Cambridge Associates and Preqin data snapshots retained (with access dates).

## Deprecation
Benchmark comparison is an ongoing function for the life of each fund. Benchmark data sources are updated annually as new Cambridge Associates and Preqin data becomes available. Vintage year matching is confirmed annually.
