---
name: finance-hive-operating-budget
description: "Build and manage the HIVE Partners annual operating budget. Use when the user says 'HIVE budget', 'HIVE operating budget', 'HIVE annual budget', 'budget for HIVE', 'oil and gas budget', 'LOE budget', 'LOE forecast', 'G&A budget HIVE', 'HIVE expense budget', 'HIVE revenue budget', 'production budget HIVE', 'WTI budget assumption', 'HIVE financial plan', 'HIVE financial forecast', 'HIVE budget vs actual', 'HIVE budget variance', 'capital budget HIVE', 'CapEx budget HIVE', 'HIVE workover budget', 'HIVE maintenance budget', 'HIVE G&A allocation', 'distribution forecast HIVE', 'HIVE cash flow plan', 'HIVE annual plan', or 'HIVE budget submission'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--year <YYYY>] [--wti-base <price>] [--action <build|review|variance|reforecast>]"
---

# Finance HIVE Operating Budget

Build and manage the HIVE Partners annual operating budget — projecting production volumes, revenue at bear/base/bull WTI, LOE, G&A, and capital allocations for the coming year. The HIVE budget is submitted to Matt Mathison for approval by December 1 alongside all entity budgets and loaded into QuickBooks by December 15. The WTI assumption is the most consequential single input and drives the bear/base/bull scenario structure.

## When to Use
- Q4 annual budget preparation (October–November)
- Mid-year reforecast (May/August, or when WTI trigger fires)
- Monthly budget vs. actual analysis
- Distributable cash forecast for LP planning

## HIVE Operating Budget Framework

```
BUDGET STRUCTURE:

  REVENUE SECTION:
    Production volume (BOE/month): based on current production × expected decline rate
      Year 1: prior year production × (1 - expected annual decline rate, typically 12-18%)
      Operating budget assumes no new acquisitions (acquisitions modeled separately in finance-hive-acquisition-model)
    WTI scenarios:
      Bear: $48/bbl (acquisition pause scenario; full year)
      Base: $62/bbl (planning assumption)
      Bull: $75/bbl (upside case)
    Uinta Basin differential: -$3.00/bbl assumed (review annually)
    Royalty income: based on prior year royalty + expected production decline on ORRI properties
    
  LOE SECTION:
    Per-property LOE based on prior year actual + expected increase (CPI; fuel; labor)
    Target: <$18/BOE blended across all properties
    Workover allowance: scheduled workovers (if known) + contingency reserve (typically 10% of LOE budget)
    
  G&A SECTION:
    HIVE entity-level: entity CEO compensation; admin; insurance; accounting/legal
    MBL management fee allocation: if applicable per partnership agreement
    
  CAPITAL SECTION:
    Infrastructure CapEx: approved capital improvements to existing properties
    Workover capital: major workovers capitalized (vs. expensed in LOE)
    NO new acquisition CapEx in operating budget (modeled separately)
    
  DISTRIBUTION FORECAST:
    Bear/base/bull distributable cash calculation per quarter
    LP distribution forecast for LP planning purposes
    
BUDGET PROCESS:
  October 1: Dr. Lewis initiates HIVE budget; pulls prior year actuals; reviews production decline rate
  October 15: Entity CEO (HIVE) provides operator LOE expectations for coming year
  November 1: Dr. Lewis completes bear/base/bull revenue model; LOE budget; G&A budget
  November 15: Dr. Lewis + entity CEO review; entity CEO approves
  December 1: HIVE budget submitted to Matt Mathison for approval
  December 15: Budget loaded to QuickBooks; Covercy updated with production assumptions
  
WTI TRIGGER INTERACTION:
  Base case budget uses $62/bbl WTI assumption
  If during budget season WTI is <$58: base case lowered to $55; bear case $45; bull $68
  Bear case ($48) budget shows: LOE still gets paid; distributions reduced; acquisitions paused
  If bear case shows negative distributable cash: Dr. Lewis flags LOE reduction opportunities to entity CEO
  
MID-YEAR REFORECAST TRIGGERS:
  Revenue variance >15% for 2 consecutive months
  LOE per BOE exceeds $22 (structural, not one-time)
  WTI trigger fires (automatic reforecast at new WTI level)
  Significant new acquisition closes (adds production to budget)
```

## Output Format

```markdown
# HIVE Operating Budget — [Year]
**Prepared by:** Dr. Lewis | **Approved by:** Entity CEO [Date] → Matt Mathison [Date]
**WTI Scenarios:** Bear $48 | Base $62 | Bull $75

---

## Revenue Budget

| Line | Bear $48 | Base $62 | Bull $75 |
|------|---------|---------|---------|
| Production (BOE/yr) | X,XXX | X,XXX | X,XXX |
| Production Revenue | $X | $X | $X |
| Royalty Income | $X | $X | $X |
| **Total Revenue** | **$X** | **$X** | **$X** |

---

## Expense Budget

| Line | Budget | Notes |
|------|--------|-------|
| LOE | $X | $XX/BOE blended |
| Workover allowance | $X | |
| G&A | $X | |
| **Total Expenses** | **$X** | |

---

## Distributable Cash Forecast (Base Case)

| Quarter | Revenue | LOE+G&A | Operating Reserve | Distributable |
|---------|---------|---------|-------------------|--------------|
| Q1 | $X | $X | ($X) | $X |
| Q2 | $X | $X | ($X) | $X |
| **Full Year** | **$X** | **$X** | | **$X** |

---

## WTI Status: Budget loaded ✅ | WTI trigger monitoring: Active
```

## Output Contract
- The HIVE budget is a planning tool, not a commitment — oil and gas production is inherently variable (production decline rates are estimates; WTI is unknowable; workovers happen unpredictably); Dr. Lewis sets expectations with Matt Mathison and LPs that the budget represents the best estimate at the time of construction, not a guaranteed outcome; what the budget does is establish a baseline against which actual performance is measured monthly (budget vs. actual in finance-hive-production-financials), identify when a reforecast is needed (>15% revenue miss two consecutive months), and provide LP distribution forecasts that are explicitly scenario-based
- The WTI assumption is the one input that must always be disclosed and never assumed away — when Dr. Lewis delivers the HIVE budget to Matt Mathison, the WTI assumption is in the title of the document and in the first line of the executive summary; "here is the HIVE 2027 budget at base WTI $62/bbl" is the framing; Matt Mathison approves the budget knowing exactly what WTI assumption underlies it; this discipline prevents the "we made budget" claim when WTI happened to be $78 or the "we missed budget" confusion when WTI was $45 and the budget assumed $62 — both are macro events, not management performance
- HITL required: budget → entity CEO approves; Dr. Lewis reviews; Matt Mathison approves by December 1; QuickBooks load → Dr. Lewis; LOE budget → entity CEO inputs operator expectations; WTI assumption → Dr. Lewis sets; bear case shows negative distributable cash → Dr. Lewis + entity CEO review LOE reduction options; Matt Mathison; reforecast trigger → finance-reforecast-manager; distribution forecast → finance-hive-lp-distribution uses for LP planning

## System Dependencies
- **Reads from:** QuickBooks (prior year HIVE actuals; LOE; G&A; revenue by month); Covercy (production history; royalty income history); EIA WTI price data (historical and forward expectations); operator LOE estimates from entity CEO; finance-hive-production-financials (monthly actual baseline); finance-hive-royalty-tracker (royalty income baseline)
- **Writes to:** QuickBooks (annual budget entries by account; HIVE entity); Covercy (production volume assumptions); HIVE annual budget document (SharePoint → HIVE → Finance → Budgets → [Year]); Matt Mathison budget approval records; finance-hive-lp-distribution (distribution forecast reference); reforecast inputs to finance-reforecast-manager
- **HITL Required:** Entity CEO approves → mandatory; Matt Mathison approves → mandatory by December 1; QuickBooks load → Dr. Lewis; bear case negative distributable → entity CEO + Dr. Lewis + Matt Mathison; WTI trigger → automatic reforecast; reforecast → finance-reforecast-manager

## Test Cases
1. **Golden path:** HIVE 2027 budget (October-November 2026 preparation). Prior year production: 4,100 BOE/month average. Assumed 2027 decline: 15% → 3,485 BOE/month. WTI scenarios: Bear $48 / Base $62 / Bull $75. Uinta differential -$3. LOE: prior year $15.75/BOE + 5% CPI = $16.54/BOE. LOE budget: 3,485 × $16.54 × 12 = $692K. Workover allowance: $70K (10% of LOE budget). G&A: $280K. Total expenses: $1.042M. Base case revenue: 3,485 BOE/month × $59 realized × 78% NRI × 12 months = $2.31M + royalty income $520K = $2.83M. Base case distributable cash: $2.83M - $1.042M = $1.788M (quarterly: ~$447K). Entity CEO approves November 14. Submitted to Matt Mathison November 30. Approved December 1. Loaded to QuickBooks December 14.
2. **Edge case:** During budget preparation, realized WTI drops to $56/bbl (trigger approaching zone) → Dr. Lewis adjusts: "With WTI currently at $56, I'm adjusting the budget WTI scenarios. New scenarios: Bear $44 / Base $55 / Bull $68. At base $55: HIVE 2027 revenue = $2.41M (vs. $2.83M at $62 base — $420K reduction). Distributable cash at base $55: $1.37M/year ($340K quarterly). At bear $44: distributable cash drops to $680K — still positive but below the $20K quarterly distribution threshold in Q1 if production decline is steeper than expected. I'm showing Matt Mathison this clearly: at $44 WTI, HIVE remains LOE-positive but LP distributions would be minimal. This gives him the full picture for the acquisition pause decision if the trigger fires."
3. **Adversarial:** Entity CEO wants to budget 2027 production at 2026 production levels (no decline assumed) to show stronger returns to LPs → Dr. Lewis: "I understand the instinct — a flat production assumption makes the budget look better for LP communications. But assuming no decline on maturing Uinta Basin wells is not defensible. Our actual wells declined at 14-18% in 2026. If I use a 0% decline in the budget and actual production declines 15%, we'll miss the LP distribution forecast by $280K in year one alone. LPs who planned around that forecast will be significantly disappointed. My recommendation: use 12% decline (conservative but realistic). We can show LPs the budget with the assumption clearly stated ('assumes 12% annual production decline; actual decline may vary'). LP trust is built by transparency and accurate forecasting, not by optimistic numbers that underperform. If we consistently deliver close to budget, that's the track record that attracts more LP capital."

## Audit Log
Annual budget records (permanent). Matt Mathison approval records. QuickBooks budget load records. WTI assumption documentation (stated at time of budget). Prior year actual vs. budget variance (for next year calibration). Reforecast records (trigger; date; revised budget). LOE per BOE budget vs. actual tracking. Distribution forecast vs. actual.

## Deprecation
WTI scenario ranges reviewed annually by Matt Mathison. Decline rate assumptions reviewed when Uinta Basin reservoir data updates. LOE per BOE benchmark reviewed annually. Budget process timeline reviewed if entity structure changes. Distribution forecast methodology reviewed when LP reporting format changes.
