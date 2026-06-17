---
name: fpa-portfolio-performance-model
description: "Track and analyze financial performance across the MBL portfolio. Use when the user says 'portfolio performance', 'portfolio model', 'portfolio summary', 'how is the portfolio doing', 'fund performance', 'portfolio companies performance', 'combined portfolio', 'portfolio view', 'portfolio financial review', 'fund financial summary', 'aggregate portfolio', 'portfolio EBITDA', 'portfolio return', 'fund-level metrics', 'portfolio health', 'which company is performing best', 'portfolio dashboard', 'fund performance report', 'LP portfolio update', or 'portfolio tracking'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--period <YYYY-MM or YYYY-QQ>] [--purpose <internal|lp|board>] [--entities <all|allevio|hive|column6>] [--action <build|update|present>]"
---

# Portfolio Performance Model

Track and analyze financial performance across the MBL Partners portfolio — presenting a consolidated view of each portfolio company's financial health, comparing actual performance to the deal model, and calculating fund-level returns at current valuations. The portfolio performance model is Matt Mathison's primary financial instrument for monitoring the health of his investments and communicating results to LPs. Dr. Lewis builds and maintains this model monthly, and presents a portfolio summary to Matt Mathison as part of the monthly financial review.

## When to Use
- Monthly portfolio review (Dr. Lewis presents to Matt Mathison, BD7 or soon after)
- Quarterly LP update — portfolio financial summary is the backbone of the LP report
- Annual LP report — full-year portfolio performance
- Matt Mathison asks "how is the portfolio doing?"
- A board or investor meeting — portfolio-level financial context
- A material event at one portfolio company (positive or negative) — update the portfolio model and notify Matt Mathison

## Portfolio Performance Framework

```
PORTFOLIO STRUCTURE (as of current):
  Allevio — Healthcare MSO, AZ, primary care employer groups
  HIVE Partners — O&G, Uinta Basin, UT
  Column6 / Siprocal — CTV/programmatic advertising, national

PORTFOLIO-LEVEL FINANCIAL SUMMARY:

  Revenue aggregation:
    Each portfolio company: LTM Revenue, vs. Prior Year, vs. Deal Model, % growth
    Portfolio total: Sum of all LTM revenues
    Portfolio revenue mix: % from Allevio / % from HIVE / % from Column6
    
  EBITDA aggregation:
    Each portfolio company: LTM EBITDA, EBITDA margin, vs. Prior Year, vs. Deal Model
    Portfolio total: Sum of all LTM EBITDAs
    Note: Portfolio EBITDA is NOT comparable across sectors — always show by company
    
  Return tracking:
    For each portfolio company:
      Equity invested (at entry + follow-on investments)
      Current implied equity value (at current trailing EBITDA × current market multiple)
      Unrealized gain/loss (implied value − invested capital)
      Current implied MOIC (implied value ÷ invested capital)
      Current implied IRR (XIRR of invested capital + implied current value + distributions received)
    Fund-level:
      Total equity invested (all portfolio companies + MBL operating costs)
      Total implied NAV (sum of implied equity values across portfolio)
      Fund-level TVPI = (DPI + RVPI) where:
        DPI = Distributed capital ÷ Called capital (from realized exits + distributions)
        RVPI = Residual value ÷ Called capital (unrealized value at current implied equity)
        TVPI = DPI + RVPI
      Fund-level Net IRR: XIRR of all capital calls and distributions including current residual value
      
PORTFOLIO COMPANY PERFORMANCE CARD (each company):

  Traffic light summary:
    Revenue: 🟢 Within 5% of deal model / 🟡 6-15% below / 🔴 >15% below
    EBITDA: 🟢 Within 5% / 🟡 6-15% below / 🔴 >15% below
    Cash: 🟢 >60 days reserve / 🟡 30-60 days / 🔴 <30 days
    Working capital: 🟢 NWC/Revenue <15% / 🟡 15-20% / 🔴 >20%
    
  Key operating metrics (company-specific):
    Allevio: Member count, PMPM rate, collections rate, denial rate
    HIVE: BOE/day, WTI realized price, LOE/BOE, operating netback
    Column6: Active campaigns, average campaign value, contribution margin %, CPM
    
  Deal model vs. actual:
    Entry EBITDA (at acquisition): $[X]K
    Current LTM EBITDA: $[X]K
    Deal model EBITDA (current year): $[X]K
    Variance: $[X]K ([X]% vs. plan)
    
  Risk flags:
    Any metric crossing a threshold → flag in the portfolio model
    Structural variance (not just timing) → Matt Mathison notification
    
DEAL MODEL BASELINE:
  At entry for each portfolio company, Dr. Lewis locks the deal model assumptions:
    Entry EBITDA: $[X]K (the normalized EBITDA used to price the deal)
    Growth assumption: [X]% per year revenue CAGR
    Exit EBITDA: $[X]K at Year [N]
    Entry multiple: [X.X]×
    Exit multiple: [X.X]×
    MOIC target: [X.X]×
    IRR target: [X]%
  Each monthly portfolio update compares actual to these locked assumptions
```

## Output Format

```markdown
# MBL Portfolio Performance Summary | [Month YYYY]
**Prepared by:** Dr. Lewis | **Matt Mathison reviewed:** ✅ | **LP visible:** [Yes / No]

---

## Portfolio Snapshot

| Company | LTM Revenue | vs. Deal Model | LTM EBITDA | vs. Deal Model | Implied MOIC | Implied IRR |
|---------|------------|----------------|-----------|----------------|-------------|------------|
| Allevio | $[X]M | [+/−X]% 🟢/🟡/🔴 | $[X]K | [+/−X]% 🟢/🟡/🔴 | [X.X]× | [X]% |
| HIVE Partners | $[X]M | [+/−X]% 🟢/🟡/🔴 | $[X]K | [+/−X]% 🟢/🟡/🔴 | [X.X]× | [X]% |
| Column6 | $[X]M | [+/−X]% 🟢/🟡/🔴 | $[X]K | [+/−X]% 🟢/🟡/🔴 | [X.X]× | [X]% |
| **Portfolio** | **$[X]M** | — | **$[X]K** | — | — | — |

---

## Fund-Level Returns

| Metric | Current | Target | Status |
|--------|---------|--------|--------|
| Total equity invested | $[X]M | — | — |
| Implied portfolio NAV | $[X]M | — | — |
| DPI | [X.X]× | >1.0× | 🟢/🟡/🔴 |
| RVPI | [X.X]× | — | — |
| **TVPI** | **[X.X]×** | **>2.0×** | 🟢/🟡/🔴 |
| **Fund Net IRR** | **[X]%** | **>20%** | 🟢/🟡/🔴 |

---

## Company Cards

### Allevio — Healthcare MSO
**Status:** 🟢 On track / 🟡 Watch / 🔴 Below plan

| Metric | Actual | Plan | vs. Plan |
|--------|--------|------|---------|
| Members | [N] | [N] | [+/−N] |
| PMPM | $[X] | $[X] | [+/−$X] |
| LTM Revenue | $[X]M | $[X]M | [+/−X]% |
| LTM EBITDA | $[X]K | $[X]K | [+/−X]% |
| Collections rate | [X]% | >95% | ✅/⚠️ |
| Cash reserve | [N] days | >30 days | ✅/⚠️ |

**Entry:** [Date] | **Equity invested:** $[X]M | **Implied MOIC:** [X.X]× | **Implied IRR:** [X]%

**Key issues / watch items:**
- [Issue or observation — specific and actionable]

---

### HIVE Partners — O&G
**Status:** 🟢 On track / 🟡 Watch / 🔴 Below plan

[Same structure with HIVE-specific metrics: BOE/day, WTI, LOE/BOE, netback]

---

### Column6 / Siprocal — CTV/Media
**Status:** 🟢 On track / 🟡 Watch / 🔴 Below plan

[Same structure with Column6-specific metrics: campaigns, avg campaign value, contribution margin, CPM]

---

## Portfolio Risk Flags

| Company | Risk | Severity | Action |
|---------|------|---------|--------|
| [Company] | [Risk description] | 🔴 / 🟡 | [Action required / Owner / Timeline] |

---

## Matt Mathison Bottom Line

[2-3 sentences: overall portfolio health, which company needs attention, and next action.]
```

## Output Contract
- The implied MOIC and IRR are estimates, not facts — the unrealized return metrics (implied MOIC, implied IRR) are calculated using current trailing EBITDA and current market multiples, which change with M&A market conditions; they should always be labeled "implied" or "unrealized" and never presented to LPs as realized returns; the actual return is only known at exit; the implied metrics are directionally useful for internal management and LP interim reporting but carry the caveat that both the EBITDA and the multiple could be different at actual exit date
- The deal model comparison is the most important longitudinal metric — knowing whether each portfolio company is ahead or behind the deal model is the most important tracking the portfolio model provides; if Allevio is ahead of the deal model, Dr. Lewis and Matt Mathison know the exit return is tracking above underwrite; if HIVE is behind the deal model due to declining WTI, the exit return is at risk and a strategic conversation about hold vs. exit timing is needed; the deal model baseline is locked at entry and never revised (even if the company evolves) — it's the accountability document for the original investment thesis
- Risk flags are immediate — when any portfolio company shows a metric crossing a threshold (EBITDA >15% below plan, cash <30 days, WTI below stress trigger), it surfaces in the portfolio model as a red flag and Matt Mathison is notified; Dr. Lewis does not wait for the end of the month to surface a crisis; the portfolio model is the surveillance system for the portfolio; a flag in the morning → Matt Mathison notification by end of day
- HITL required: Dr. Lewis builds and updates; Matt Mathison reviews monthly and approves before any LP distribution; fund-level return metrics reviewed by Matt Mathison and validated against the fund's legal documents (the LP agreement defines how returns are calculated for LP reporting purposes); implied valuations used in LP reports labeled as unrealized and estimates; all LP-facing portfolio performance content reviewed and approved by Matt Mathison before distribution

## System Dependencies
- **Reads from:** QuickBooks for each portfolio company (LTM actuals); fpa-rolling-forecast-updater for each company (current forecast vs. deal model); fpa-exit-value-model for each company (implied equity value calculation); fpa-unit-economics-modeler for each company (company-specific operating metrics); fpa-irr-model-builder (fund-level IRR/MOIC calculation); deal model baselines (locked at entry — stored in SharePoint/Finance/MBL/DealModels/); distribution records (actual cash returned to investors); capital call records
- **Writes to:** Portfolio performance summary (SharePoint/Finance/MBL/Portfolio/[YYYY-MM]_PortfolioSummary.xlsx); Matt Mathison monthly review package; LP quarterly report (portfolio section); LP annual report (full-year portfolio performance); board presentation (fund-level return context)
- **HITL Required:** Dr. Lewis builds and updates; Matt Mathison reviews before any LP distribution; risk flag notifications to Matt Mathison when thresholds crossed; implied valuations labeled as unrealized estimates in all LP communications; LP report portfolio section approved by Matt Mathison before distribution; Dr. Lewis does not distribute portfolio performance data to LPs directly — Matt Mathison distributes

## Test Cases
1. **Golden path:** Monthly portfolio review for Matt Mathison (BD7 after close) → Allevio: 1,180 members (plan 1,150 ✅), PMPM $85.50 (plan $85 ✅), LTM Revenue $1.21M (plan $1.18M ✅), LTM EBITDA $852K (plan $840K ✅), implied MOIC 2.8× (entry 2.3×), implied IRR 26%; HIVE: 980 BOE/day (plan 1,000 ⚠️), WTI $63.50 (plan $67 ⚠️), LTM EBITDA $295K (plan $380K 🔴 −22%), implied MOIC 1.9× (entry 2.1×), implied IRR 14%; Column6: 42 campaigns (plan 38 ✅), avg value $56K (plan $52K ✅), LTM Revenue $2.35M (plan $2.2M ✅), LTM EBITDA $280K (plan $260K ✅); Fund-level: TVPI 1.8× (target 2.0× — on track for Year 3 target); Dr. Lewis's bottom line to Matt Mathison: "Allevio and Column6 are both ahead of plan — strong month. HIVE is the watch item: EBITDA is $85K below plan due to WTI at $63.50 vs. $67 assumption and production 20 BOE/day light. WTI is the primary driver — if it recovers to $67, HIVE recovers to plan. Recommend: discuss with HIVE CEO the production gap cause — is this temporary or a decline trend? I'll update the rolling forecast once we have the answer."
2. **Edge case:** HIVE WTI crosses the $48/bbl stress protocol trigger mid-month → Dr. Lewis identifies this on the weekly WTI monitor; immediately updates the HIVE portfolio card with a 🔴 flag and the stress protocol trigger notation; notifies Matt Mathison same day: "WTI reached $47.80/bbl today — below the $48/bbl stress protocol trigger. HIVE stress protocol is now active. Per the protocol: HIVE CEO has been notified; capex spending is frozen above $5K; I am rebuilding the HIVE cash model at $47 WTI to determine cash runway. I'll have the updated model to you by end of business today. If WTI stays below $48 for 5+ business days, we should discuss the distribution policy and whether the LOC draw authorization should be put on standby." Matt Mathison receives the notification and the model same day; no delay
3. **Adversarial:** An LP sends a request directly to Dr. Lewis asking for "the latest portfolio performance data" before the quarterly LP report is published → Dr. Lewis response: "I appreciate you reaching out. All portfolio performance data and LP reporting flows through Matt Mathison — I can let him know you're looking for an update and he'll reach out to you directly. As a policy, I don't distribute portfolio financial data or interim performance metrics directly to LPs outside of the official reporting channels, to make sure everyone receives consistent information at the same time. Matt Mathison will be in touch." Dr. Lewis immediately notifies Matt Mathison of the request; does not provide any data to the LP; Matt Mathison handles the LP communication

## Audit Log
All monthly portfolio performance summaries retained by period. Deal model baselines retained permanently (locked at entry; never revised). Implied valuation calculations retained by period. Fund-level return calculations retained by period. LP distribution records retained permanently. Capital call records retained permanently. Risk flag notifications retained (with date, metric, and Matt Mathison notification record).

## Deprecation
Retire when MBL Partners has a dedicated portfolio management analyst or CFO who owns the monthly portfolio tracking — with Dr. Lewis reviewing the exit model inputs and Matt Mathison approving all LP-facing portfolio performance reporting.
