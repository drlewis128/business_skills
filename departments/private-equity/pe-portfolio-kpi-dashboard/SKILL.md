---
name: pe-portfolio-kpi-dashboard
description: "Build and maintain the MBL Partners portfolio KPI dashboard across all entities. Use when the user says 'portfolio dashboard', 'portfolio KPI', 'KPI dashboard', 'portfolio metrics', 'portfolio numbers', 'portfolio data', 'portfolio performance data', 'entity metrics', 'entity KPIs', 'entity dashboard', 'Allevio metrics', 'HIVE metrics', 'Column6 metrics', 'all entities', 'all companies', 'portfolio roll-up', 'roll-up report', 'consolidated portfolio', 'consolidated view', 'fund metrics', 'portfolio company data', 'monthly metrics', 'quarterly metrics', 'year to date', 'YTD performance', 'trailing twelve months', 'TTM', 'budget vs actual', 'actual vs budget', 'variance report', 'portfolio variance', 'financial summary', 'portfolio financial summary', 'EBITDA by entity', 'revenue by entity', 'portfolio revenue', 'portfolio EBITDA', 'fund-level dashboard', 'portfolio reporting package', or 'board package metrics'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|all>] [--period <monthly|quarterly|ytd|ttm>] [--action <build|update|pull|report>] [--audience <internal|board|lp>]"
---

# PE Portfolio KPI Dashboard

Build and maintain the MBL Partners portfolio KPI dashboard across all entities — aggregating financial and operational metrics from Allevio, HIVE Partners, and Column6/Siprocal into a single consolidated view for Matt Mathison and board-level reporting. The portfolio KPI dashboard is the single source of truth for how the portfolio is performing: it shows financial performance (revenue; EBITDA; cash) vs. budget and thesis across all entities; operational performance against each entity's North Star metrics; and trend data that reveals whether the portfolio is improving, deteriorating, or flat. Dr. Lewis maintains this dashboard with data pulled directly from entity financial systems — not self-reported by entity CEOs.

## When to Use
- Monthly portfolio dashboard update
- Board package preparation
- LP quarterly report data pull
- Matt Mathison asks for a portfolio performance summary

## Portfolio KPI Dashboard Framework

```
DASHBOARD STRUCTURE — THREE ENTITIES:

  ALLEVIO (Healthcare MSO) — Aggregate data only; no PHI:
    Financial KPIs:
      Revenue (monthly; YTD; TTM; vs. budget)
      EBITDA (monthly; YTD; TTM; vs. budget; % margin)
      Gross margin %
      Cash position (entity-level)
    Operational KPIs (North Star):
      Employer GRR (TTM) — target ≥91%
      Claim ratio (PMPM basis) — target ≤87%
      DSO — target ≤35 days
      Number of employer groups (total; active; new this quarter)
      Member count (aggregate — no individual data)
    Investment performance:
      EBITDA vs. thesis (entry EBITDA; current EBITDA; target exit EBITDA)
      Fair market value (per pe-fund-accounting quarterly valuation)
      MOIC-to-date (unrealized)
      
  HIVE PARTNERS (Oil & Gas Royalties):
    Financial KPIs:
      Royalty revenue (monthly; YTD; TTM; vs. budget)
      EBITDA (monthly; YTD; TTM; vs. budget)
      WTI price (current; 30-day avg; vs. budget assumption)
    Operational KPIs (North Star):
      Landowner GRR (TTM) — target ≥85%
      DSO — target ≤45 days
      Net royalty acreage (NRA) — current vs. entry
      Producing wells count
    Investment performance:
      Revenue per NRA (current vs. entry)
      EBITDA vs. thesis
      FMV vs. cost basis
      
  COLUMN6 / SIPROCAL (CTV/Mobile/Gaming):
    Financial KPIs:
      Revenue (monthly; YTD; TTM; vs. budget)
      Gross margin (campaign revenue less DSP/media costs)
      EBITDA (monthly; YTD; TTM; vs. budget)
    Operational KPIs (North Star):
      Agency NRR (TTM) — target ≥95%
      VCR (video completion rate) — target ≥92%
      IVT rate — target <2%
      DSO — target ≤55 days
      Active agency count
    Investment performance:
      Revenue per agency
      EBITDA vs. thesis
      FMV vs. cost basis

PORTFOLIO ROLL-UP (FUND LEVEL):

  TOTAL PORTFOLIO:
    Revenue (sum of all entities; vs. combined budget)
    EBITDA (sum; vs. combined budget)
    Total fair market value (sum of FMV per pe-fund-accounting)
    Total cost basis (sum of invested capital)
    Unrealized gain/loss (FMV - cost basis)
    
  FUND PERFORMANCE METRICS:
    TVPI (Total Value to Paid-In): (FMV + distributions) / capital called
    DPI (Distributions to Paid-In): cumulative distributions / capital called
    RVPI (Residual Value to Paid-In): FMV / capital called
    Note: IRR requires pe-irr-tracker for time-weighted calculation

DATA SOURCES AND PULL CADENCE:

  Monthly (by the 15th of the following month):
    QuickBooks: each entity P&L and balance sheet
    AdvancedMD: Allevio aggregate claims and revenue data (no PHI)
    Covercy: HIVE royalty revenue and landowner data
    DSP platforms: Column6 campaign performance (VCR; IVT; revenue)
    
  Quarterly:
    All monthly data + valuation update (pe-fund-accounting)
    Budget vs. actual full quarter analysis
    Fund-level TVPI/DPI/RVPI update
```

## Output Format

```markdown
# Portfolio KPI Dashboard — [Month/Quarter Year]
**Prepared by:** Dr. Lewis | **For:** Matt Mathison | **Data as of:** [Date]

---

## Portfolio Summary (All Entities)

| Metric | Allevio | HIVE | Column6 | Total |
|--------|---------|------|---------|-------|
| Revenue (MTD) | $[X] | $[X] | $[X] | $[X] |
| Revenue (YTD) | $[X] | $[X] | $[X] | $[X] |
| Revenue vs. budget | [+/-X%] | [+/-X%] | [+/-X%] | [+/-X%] |
| EBITDA (YTD) | $[X] | $[X] | $[X] | $[X] |
| EBITDA vs. budget | [+/-X%] | [+/-X%] | [+/-X%] | [+/-X%] |
| FMV | $[X] | $[X] | $[X] | $[X] |

---

## Entity North Star Metrics

| | Allevio | HIVE | Column6 |
|-|---------|------|---------|
| Primary North Star | Employer GRR × Claim Ratio | Landowner GRR | Agency NRR × VCR |
| Current value | [X%] × [X%] | [X%] | [X%] × [X%] |
| Target | ≥91% × ≤87% | ≥85% | ≥95% × ≥92% |
| Status | [🟢/🟡/🔴] | [🟢/🟡/🔴] | [🟢/🟡/🔴] |

---

## Fund Performance

| Metric | Current | Prior quarter | Change |
|--------|---------|--------------|-------|
| TVPI | [X.Xx] | [X.Xx] | [+/-X] |
| DPI | [X.Xx] | [X.Xx] | [+/-X] |
| RVPI | [X.Xx] | [X.Xx] | [+/-X] |
```

## Output Contract
- Dashboard data is pulled from source systems, not from entity CEO submissions — the portfolio KPI dashboard is only reliable if the data comes directly from QuickBooks, AdvancedMD (aggregate), Covercy, and DSP platforms; a dashboard that relies on entity CEOs to self-report their own performance metrics is a dashboard that will be optimistic in bad months and accurate in good ones; Dr. Lewis pulls the data directly from the source systems; where direct access is not available, Dr. Lewis requests the specific data from the entity CFO/controller with a verification that it ties to the financial statements
- Allevio data is aggregate and de-identified — every metric in the Allevio section of this dashboard is aggregate financial or operational data; "member count" means total enrolled members across all employer groups — it is a business metric, not a clinical record; "claim ratio" is a financial ratio (total claims paid / total premium equivalent); no individual member data, no clinical diagnoses, no procedure codes, no individual claim records appear anywhere in this dashboard; HIPAA is non-negotiable regardless of the business urgency of having individual-level data
- Variances greater than 10% require an explanation in the dashboard — a revenue variance of -12% against budget with no explanation is not useful; "Allevio revenue -12% vs. budget: two employer group renewals were deferred from Q3 to Q4 (contracts now signed; revenue recognition begins next month); underlying run-rate is on track" IS useful; Dr. Lewis accompanies every metric that is >10% off plan with a specific explanation and a current estimate of whether it will resolve in the current period or requires a forecast revision
- HITL required: any entity EBITDA >20% below budget → Matt Mathison same-day briefing (don't wait for the monthly report); fund TVPI declining quarter-over-quarter → Matt awareness in the dashboard briefing; FMV adjustment that is material (>10% change) → Matt Mathison valuation committee approval before the dashboard is updated; dashboard data that doesn't reconcile to financial statements → resolve before distributing (never send a dashboard with known data quality issues)

## System Dependencies
- **Reads from:** QuickBooks (entity P&Ls; balance sheets); AdvancedMD (Allevio aggregate claims and revenue — no PHI); Covercy (HIVE royalty data and landowner records); DSP platforms (Column6 campaign KPIs); pe-fund-accounting (FMV valuations; fund-level TVPI/DPI/RVPI); pe-portfolio-health-monitor (health scores); budget files (entity and fund-level budgets)
- **Writes to:** Portfolio KPI dashboard (SharePoint → Portfolio → Dashboard → [YYYY-MM]); Matt Mathison monthly briefing data; pe-portfolio-reporting (LP quarterly data pull); pe-fund-accounting (FMV data input); board package (pe-lp-quarterly-report supporting data)
- **HITL Required:** Entity EBITDA >20% below budget → Matt same-day; TVPI declining QoQ → Matt awareness; material FMV change → Matt valuation committee; data reconciliation issues → resolve before distribution

## Test Cases
1. **Golden path:** Monthly pull on the 14th. QuickBooks pull complete for all 3 entities. AdvancedMD aggregate report: Allevio claim ratio 85.4%; employer GRR 91.8%. Covercy: HIVE royalty revenue $[X]; landowner GRR 88.2%. DSP reports: Column6 VCR 93.1%; IVT 1.6%; agency NRR 96.3%. All entities: revenue within 5% of budget. EBITDA: Allevio +2% (green); HIVE -6% (yellow — WTI lower than budget assumption); Column6 +8% (green). Fund TVPI: 1.42x (up from 1.38x last quarter — positive). Dashboard distributed to Matt Mathison by EOD the 14th.
2. **Edge case:** QuickBooks data for Allevio shows a $180K revenue item in the month that doesn't appear in AdvancedMD collections data → Dr. Lewis: "There's a $180K revenue discrepancy between QuickBooks and AdvancedMD for Allevio in [Month]. Before I publish the dashboard, I need the Allevio CFO to reconcile this — possibilities include a timing difference (revenue recognized before cash collection); an entry error; or a non-medical revenue item that wouldn't appear in AdvancedMD. I'm not distributing the dashboard until this is resolved. Expected resolution: 2 business days."
3. **Adversarial:** An entity CEO asks Dr. Lewis to "adjust" the budget assumption for next month's dashboard because "the original budget was too aggressive" → Dr. Lewis: "Changing the budget benchmark on a rolling basis defeats the purpose of variance analysis — if we change the budget when we're behind, we lose visibility into whether we're actually on track. I'm going to keep the original budget as the benchmark and show the actual variance, with an explanation of the cause. If Matt Mathison decides that the original budget needs to be formally revised (with a re-forecast for the full year), that's a decision Matt makes — not one we make unilaterally at the entity level. I'll flag this budget reforecast request to Matt in the monthly briefing."

## Audit Log
All dashboard versions retained (monthly; with data pull date and source). Data reconciliation issues documented. Variance explanations retained. Matt Mathison briefing records retained. Budget revision records retained (with Matt Mathison approval). FMV update records retained (with valuation committee approval).

## Deprecation
Portfolio KPI dashboard is maintained for the life of each fund investment. Entity-specific sections are retired as entities are exited. Dashboard format is reviewed annually and updated after each board meeting cycle based on feedback from Matt Mathison and LPs.
