---
name: finance-hive-production-financials
description: "Track and report HIVE Partners oil and gas production financials. Use when the user says 'HIVE production', 'HIVE revenue', 'oil production', 'gas production', 'BOE production', 'barrels of oil equivalent', 'production revenue', 'realized WTI', 'WTI revenue', 'oil and gas revenue', 'HIVE financials', 'LOE', 'lease operating expense', 'lifting cost', 'cost per BOE', 'LOE per BOE', 'production economics', 'Uinta Basin production', 'HIVE monthly revenue', 'HIVE P&L', 'production income statement', 'HIVE income statement', 'working interest revenue', 'net revenue interest', 'NRI revenue', 'production report', 'production reconciliation', 'production vs. budget', 'HIVE gross margin', 'oil field economics', 'production efficiency', 'field operating cost', or 'well economics'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <report|reconcile|budget-vs-actual|wti-sensitivity>] [--wti <price>]"
---

# Finance HIVE Production Financials

Track and report HIVE Partners oil and gas production financials — calculating production revenue (BOE × realized WTI × NRI%), reconciling against LOE, generating the monthly HIVE income statement, and monitoring LOE per BOE against the $18/BOE benchmark. Production financials are the core scorecard for HIVE's working interest operations and the primary driver of LP distributable cash.

## When to Use
- Monthly HIVE production financial summary
- LOE per BOE efficiency tracking
- WTI price impact analysis
- Budget vs. actual production comparison

## HIVE Production Financial Framework

```
REVENUE CALCULATION (WORKING INTEREST PROPERTIES):

  Production Revenue = BOE produced × Realized WTI price × HIVE NRI%
    BOE: barrels of oil equivalent (1 BOE = 1 bbl oil = 6 MCF gas; tracked by operator reports)
    Realized WTI: HIVE's actual selling price (typically WTI spot +/- Uinta Basin differential)
    Uinta Basin differential: typically $2-4/bbl below WTI spot (landlocked basin premium)
    NRI%: HIVE's net revenue interest = working interest% × (1 - royalty burden%)
    
  Full Revenue Stack:
    Production revenue (working interest NRI): primary revenue
    + Royalty income (ORRI/landowner royalties): passive revenue (no LOE)
    = Total HIVE revenue
    
LOE (LEASE OPERATING EXPENSE):
  What it includes: labor; fuel; chemicals; water disposal; equipment maintenance; workovers
  What it excludes: capital costs (drilling; completion); G&A; depletion
  LOE per BOE benchmark: <$18/BOE (internal threshold; Uinta Basin context)
    ≤$15/BOE: highly efficient
    $15-18/BOE: good; within benchmark
    $18-22/BOE: elevated; entity CEO to explain by next month
    >$22/BOE: significant issue; Dr. Lewis + entity CEO investigate; Matt Mathison briefed
    
HIVE INCOME STATEMENT STRUCTURE:
  Revenue:
    Production revenue (working interest)
    Royalty income (ORRI + landowner)
    Total Revenue
  Operating Expenses:
    LOE (lease operating expense)
    G&A (entity-level operations; not field operations)
    D,D&A (depletion, depreciation, amortization — non-cash; calculated by CPA)
    Total Operating Expenses
  Operating Income (EBITDA proxy; before D,D&A)
  
WTI TRIGGER INTEGRATION:
  If realized WTI ≥$58: normal operations; acquisition mode if opportunity available
  If realized WTI <$58 for 2 consecutive weeks: acquisition pause triggered
    → Notify Matt Mathison immediately
    → Continue tracking LOE and distributions (pause = new acquisitions only)
    → Reforecast revenue at current WTI level
  WTI sensitivity: for each $1/bbl WTI change, HIVE revenue changes by approximately:
    [BOE/month × 0.01 × NRI%] per dollar of WTI change
    
BUDGET VS. ACTUAL:
  Monthly: compare production volume vs. budget; WTI vs. budget assumption; LOE vs. budget
  Variances:
    Production volume down >10%: entity CEO explains (workovers? downtime? natural decline?)
    LOE up >15%: entity CEO explains (one-time workover? structural increase?)
    WTI variance: macro factor; no entity CEO explanation needed; reforecast impact
```

## Output Format

```markdown
# HIVE Production Financial Summary — [Month Year]
**Prepared by:** Dr. Lewis | **Source:** Operator reports + Covercy

---

## Revenue

| Line | This Month | Budget | Variance | Notes |
|------|-----------|--------|---------|-------|
| Production (BOE) | X,XXX | X,XXX | +/-X% | |
| Realized WTI | $X.XX | $X.XX | +/-$X | Market-driven |
| NRI% | X% | | | Per lease terms |
| **Production Revenue** | **$X** | **$X** | **+/-X%** | |
| Royalty Income | $X | $X | | |
| **Total Revenue** | **$X** | **$X** | **+/-X%** | |

---

## Expenses

| Line | This Month | Budget | Variance |
|------|-----------|--------|---------|
| LOE Total | $X | $X | +/-X% |
| LOE per BOE | $X.XX | <$18 | ✅/⚠️/🔴 |
| G&A | $X | $X | |

---

## Operating Income (pre-D,D&A): $X
## WTI Status: $X.XX/bbl — [Above / Approaching / BELOW $58 trigger]
```

## Output Contract
- LOE per BOE is the single most important operational efficiency metric in HIVE's P&L — it is the one metric Dr. Lewis watches more closely than any other in the HIVE financial package; when LOE per BOE creeps above $18, the margin compression is immediate and structural; a working interest property earning $63/bbl revenue with $18/bbl LOE generates $45/bbl gross profit; at $22/bbl LOE, it generates $41/bbl — a 9% margin decline that compounds across every BOE produced; LOE increases rarely come from a single cause, so when the metric exceeds $18, Dr. Lewis asks for a workover-by-workover breakdown and identifies whether the increase is one-time (a scheduled maintenance workover) or structural (declining well productivity requiring more inputs per BOE)
- The WTI trigger is a governance mechanism, not a market forecast — Dr. Lewis does not predict whether WTI will stay above or below $58; that is unknowable; what Dr. Lewis does is apply the trigger mechanically: two consecutive weeks with realized WTI below $58 = acquisition pause + Matt Mathison notification; the trigger exists because acquisitions are multi-year capital commitments and deploying capital at $56/bbl WTI without a trigger analysis is undisciplined; the trigger is PAUSE not KILL — LOE gets paid, distributions continue if distributable, and the portfolio is maintained; only new acquisition commitments are paused
- HITL required: WTI trigger → Matt Mathison notification immediately (two-week mark); LOE per BOE >$22 → entity CEO + Dr. Lewis investigate; Matt Mathison briefed; production volume down >10% two months in a row → entity CEO explanation + Dr. Lewis escalates; monthly income statement → Dr. Lewis prepares; distribution calculation → finance-hive-lp-distribution skill; reforecast triggered by WTI miss → finance-reforecast-manager; Matt Mathison sees HIVE financials monthly in portfolio dashboard

## System Dependencies
- **Reads from:** Covercy (production volumes; LOE data; operator reports); EIA WTI price reference; QuickBooks (G&A; HIVE entity expenses); finance-hive-royalty-tracker (royalty income for month); HIVE lease schedule (NRI% by property); annual budget (production and LOE targets)
- **Writes to:** QuickBooks (HIVE monthly revenue entries; LOE entries); HIVE monthly financial package; finance-portfolio-dashboard (HIVE revenue section); finance-hive-lp-distribution (distributable cash inputs); Matt Mathison WTI trigger notifications; reforecast triggers to finance-reforecast-manager
- **HITL Required:** WTI trigger → Matt Mathison immediate; LOE >$22/BOE → entity CEO + Dr. Lewis investigate; production down >10% two months → entity CEO explanation; monthly income statement → Dr. Lewis prepares; reforecast trigger → finance-reforecast-manager; Matt Mathison → monthly portfolio dashboard

## Test Cases
1. **Golden path:** HIVE June 2026 production financials. Production: 4,100 BOE (budget: 4,000; +2.5% ✅). Realized WTI: $63.50/bbl (Uinta Basin differential -$2.80 from spot $66.30 ✅). NRI: 78%. Production revenue: 4,100 × $63.50 × 78% = $202,971. Royalty income: $43,800 (from finance-hive-royalty-tracker). Total revenue: $246,771. LOE: $64,580 ($15.75/BOE ✅ — under $18 benchmark; highly efficient). G&A: $22,400. Operating income (pre-D,D&A): $159,791. WTI status: $63.50 — above $58 trigger ✅. No trigger action. Income statement packaged for portfolio dashboard.
2. **Edge case:** HIVE September 2026: realized WTI = $57.20/bbl (week 1 of below-$58 trigger zone) → Dr. Lewis: "HIVE realized WTI has dipped to $57.20/bbl — this is below our $58/bbl acquisition threshold. This is week 1 of the trigger period. The trigger activates if WTI stays below $58 for 2 consecutive weeks. No acquisition pause yet. I'm tracking daily and will notify Matt Mathison immediately if we close week 2 below $58. In the meantime, I'm running the reforecast model at current WTI ($57.20) to understand the production revenue impact and have it ready for Matt Mathison when the trigger notification goes out. Current production revenue at $57.20: $182,247 vs. base case $202,971 (-$20,724; -10.2%). LOE unchanged at $15.75/BOE — still profitable but margin compressed."
3. **Adversarial:** Entity CEO reports LOE came in at $23.40/BOE (vs. $18 benchmark) but says "it's just a one-time workover; it'll come back down next month" → Dr. Lewis: "I hear that, and one-time workovers do happen. But $23.40/BOE is 30% above our benchmark — that's significant enough that I need to document it and brief Matt Mathison regardless of whether it's one-time. Here's what I need from the entity CEO this week: (1) Which specific wells had workovers in June? (2) What was the workover cost ($) and what was the expected production benefit? (3) Is there a decline rate concern that suggests recurring workovers will be needed? If the answers confirm a one-time event and next month's LOE returns below $18, we close the file. If July comes in above $18 again, we have a structural issue. I'm including the LOE variance with explanation in this month's HIVE financial package — Matt Mathison will see it."

## Audit Log
Monthly production financial reports (permanent). WTI trigger notification records (date; WTI level; Matt Mathison notification). LOE per BOE tracking (monthly series). Production volume vs. budget records. Operator report retention. Reforecast trigger records. Matt Mathison portfolio dashboard submissions. LOE variance investigation records. Acquisition pause records (trigger date; WTI at trigger; lift date and WTI when lifted).

## Deprecation
LOE per BOE benchmark reviewed annually (Uinta Basin cost inflation). NRI% schedule reviewed when lease acquisitions or divestitures occur. WTI trigger price reviewed annually by Matt Mathison. Budget assumptions reviewed in Q4 annual budget process. Uinta Basin differential assumptions reviewed annually.
