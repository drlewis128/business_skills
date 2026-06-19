---
name: ops-hive-production-tracker
description: "Track and report HIVE Partners oil and gas production data in the Uinta Basin. Use when the user says 'production tracker', 'production tracking', 'production data', 'production report', 'production update', 'production volumes', 'production rates', 'BOE production', 'barrels of oil', 'oil production', 'gas production', 'Mcf production', 'production history', 'production trend', 'production decline', 'production decline rate', 'well production', 'well performance', 'well data', 'HIVE production', 'Uinta production', 'monthly production', 'quarterly production', 'annual production', 'production forecast', 'production budget', 'production vs. budget', 'production by well', 'production by operator', 'decline curve', 'type curve', 'EUR', 'estimated ultimate recovery', 'production optimization', 'production downtime', 'production curtailment', 'WTI production impact', or 'royalty production data'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <report|analyze|forecast|compare|alert>] [--view <by-well|by-operator|portfolio|trend>] [--metric <volume|rate|decline|comparison>]"
---

# Ops HIVE Production Tracker

Track and report HIVE Partners oil and gas production data — monitoring production volumes by well and operator, tracking production trends and decline rates, comparing actual production to budget, and alerting Dr. Lewis and the HIVE CEO when production anomalies signal equipment issues, operator problems, or economic triggers (WTI). Production is the fundamental driver of HIVE's royalty income: production volume × realized price × royalty rate = royalty revenue; every point of production tracking connects directly to the HIVE financial model and LP returns. Dr. Lewis maintains the production tracking at the portfolio level — actuals vs. budget, trend analysis, WTI sensitivity — while the HIVE CEO and operations team work with individual well data.

## When to Use
- Monthly production report processing (from Covercy / operator statements)
- Production vs. budget comparison (monthly)
- WTI sensitivity analysis (when WTI is near the $58/bbl trigger)
- A well shows unexpected production decline
- Quarterly HIVE financial review (production data is the foundation)

## Production Tracking Framework

```
PRODUCTION METRICS:

  PRIMARY METRICS:
    Total production (BOE/month): barrels of oil equivalent — combines oil and gas
    Production by well: which wells are producing and at what rate
    Production by operator: which operators generate the most production
    Realized price ($/BOE): price received after adjustments (vs. WTI benchmark)
    Production costs ($/BOE): operating cost per barrel (not Dr. Lewis's primary — but context)
    
  DERIVED FINANCIAL METRICS (HIVE context):
    Monthly royalty income = production (BOE) × realized price × royalty rate (%) × HIVE WI%
    Vs. budget: compare to the model from the HIVE financial plan
    WTI sensitivity: at current production, what is the royalty income at WTI $50/$60/$70/$80?
    
  WELL METRICS:
    Initial production rate (IP): the first 30-day average production rate after completing a well
    Decline rate: % production decline month-over-month (natural decline in oil wells)
    EUR (Estimated Ultimate Recovery): total oil expected from a well over its life
    Uplift from workovers or optimization: production improvement from operations activity

MONTHLY PRODUCTION PROCESSING:

  STEP 1 — RECEIVE STATEMENTS (by the 25th of the following month):
    Operator statements arrive via Covercy or PDF
    Log: production volumes by well; realized price; deductions; net royalty
    
  STEP 2 — RECONCILE TO PRIOR MONTH:
    Compare: actual vs. prior month (volume trend; price trend)
    Flag: any well with >15% production decline month-over-month (potential equipment issue)
    Flag: any realized price deviation >10% below WTI benchmark (pricing dispute signal)
    
  STEP 3 — COMPARE TO BUDGET:
    Annual production plan: expected volumes by quarter
    Monthly: actual vs. budget; year-to-date vs. budget
    If YTD is >10% below budget: flag to HIVE CEO and Dr. Lewis for root cause
    
  STEP 4 — WTI SENSITIVITY UPDATE:
    Current WTI: [$/bbl]
    Current production (trailing month): [N BOE/month]
    Monthly royalty income at current WTI: $[X]
    Monthly royalty income at WTI $58 (trigger): $[X]
    WTI trigger status: Above trigger ($[current] vs. $58 trigger)
    
  STEP 5 — MONTHLY PRODUCTION REPORT:
    Format: table + 3-month trend + budget comparison + WTI status
    Delivered to: HIVE CEO + Dr. Lewis (then Dr. Lewis → Matt Mathison as needed)

PRODUCTION DECLINE MANAGEMENT:

  NATURAL DECLINE:
    Oil wells decline naturally over time (typical Uinta Basin decline curve)
    Expected: 15-30% first-year decline; 10-15% subsequent years (varies by formation)
    Monitor: is the actual decline tracking within expected range?
    
  ANOMALOUS DECLINE:
    >15% single-month decline in a producing well → flag for investigation
    Common causes: mechanical failure; pump issue; salt water disposal constraint; operator operational issue
    HIVE CEO engages operator: "What is causing the production decline on [Well ID]?"
    
  PRODUCTION RESPONSE:
    Workover (repair): operator costs shared by working interest owners; HIVE may participate
    Production optimization: rod pump optimization; gas lift; pressure management
    New well (infill): only when WTI is above trigger; economics justify new capital
```

## Output Format

```markdown
# HIVE Production Report — [Month Year]
**Prepared by:** HIVE Operations | **Reviewed by:** Dr. Lewis | **For:** HIVE CEO + Matt Mathison

---

## Portfolio Summary

| Metric | This month | Prior month | Change | Budget | vs. Budget |
|--------|-----------|------------|--------|--------|-----------|
| Total production (BOE) | [N] | [N] | [%] | [N] | [+/-N%] |
| Realized price ($/BOE) | $[X] | $[X] | [%] | $[X] | [+/-N%] |
| Royalty income | $[X] | $[X] | [%] | $[X] | [+/-N%] |

**WTI:** $[X]/bbl | Trigger: $58/bbl | Status: 🟢 Above trigger / 🔴 Below trigger

---

## Production by Operator

| Operator | BOE/month | vs. Prior | Realized price | Flag |
|----------|-----------|----------|---------------|------|
| [Operator A] | [N] | [+/-N%] | $[X]/BOE | None |
| [Operator B] | [N] | -18% | $[X]/BOE | ⚠️ Decline — investigating |

---

## Well Flags

| Well | Operator | BOE/day | vs. Prior | Signal | Action |
|------|----------|---------|----------|--------|--------|
| [Well ID] | [Op] | [N] | -18% | Equipment suspected | Operator notified |

---

## WTI Sensitivity (current production)
At $50/bbl: $[X]/month royalty | At $60: $[X]/month | At $70: $[X]/month | At $80: $[X]/month
```

## Output Contract
- Production data is reconciled to the penny before it becomes financial data — the production report is not just an operator summary; it's the input to HIVE's financial records; every BOE figure in the monthly production report is reconciled to the Covercy record before it is used in any financial calculation; a production figure that is wrong by 5% creates a royalty income error that flows into QuickBooks and then into the LP report; Dr. Lewis ensures the reconciliation step is completed before the numbers are treated as final
- WTI sensitivity is updated every month with current production data — the WTI sensitivity table in the production report is not a static model from the deal model; it is updated monthly with the actual trailing production volumes; this gives Matt Mathison a current-state picture: "At today's WTI and today's production, HIVE's monthly royalty income is $X; if WTI dropped to $58, it would be $Y"; a static sensitivity model from 18 months ago is useless for current decision-making
- Anomalous production decline triggers operator engagement, not just documentation — a well with a >15% single-month decline is not just logged in the report; it generates a specific request to the operator within 5 business days: "We observed a [N%] production decline in Well [ID] from [Month] to [Month]. Can you confirm whether this is a mechanical issue, a planned operational decision, or a natural decline? If mechanical: what is the repair timeline?"; passive documentation of production problems gives operators no incentive to resolve them; proactive engagement does
- HITL required: production >10% below budget for 2+ consecutive months → Dr. Lewis briefing to Matt Mathison with root cause; WTI below trigger for 2 consecutive weeks → Matt Mathison notification per fin-hive-capex-tracker (capex pause); anomalous production decline in a well generating >20% of HIVE royalties → HIVE CEO same-day notification; realized price deviation >10% below WTI benchmark → Dr. Lewis review of pricing arrangements; production forecast changes that affect the LP returns model → Matt Mathison awareness

## System Dependencies
- **Reads from:** Covercy (primary production data source — operator royalty statements); Utah DOGM filings (independent production verification); fin-hive-royalty-accounting (royalty income reconciliation); ops-hive-operator-relations (operator health context for production anomalies); fin-hive-capex-tracker (WTI trigger status)
- **Writes to:** Monthly production reports (SharePoint → HIVE → Operations → Production → [YYYY]); HIVE CEO briefings (anomalous declines; budget variance); Matt Mathison notifications (>10% below budget 2+ months; WTI trigger); fin-hive-royalty-accounting (production data for royalty income calculation); LP returns model (production inputs); Covercy reconciliation records
- **HITL Required:** Production >10% below budget × 2 months → Matt briefing; WTI trigger status → Matt per capex-tracker protocol; anomalous decline in major well (>20% HIVE royalty) → HIVE CEO same day; realized price deviation >10% below WTI → Dr. Lewis review; LP model changes from production forecast revision → Matt awareness

## Test Cases
1. **Golden path:** Monthly production review. Total portfolio: 4,820 BOE; budget: 4,900 BOE; variance -1.6% — within tolerance. Realized price: $62.40/BOE; WTI $64.20; realized is 97.2% of WTI — within tolerance (pricing deductions normal). Royalty income: $48,200 (vs. budget $49,000; -1.6%). WTI: $64.20 — above $58 trigger; no capex changes. One flag: Well #HIVE-W-022 (Operator B) — production 89 BOE/day vs. 112 BOE/day prior month (-20.5%). Dr. Lewis to HIVE CEO: "Well #022 is down 20.5% — flagging for investigation with Operator B. Please engage Operator B's production team for a root cause by Friday."
2. **Edge case:** WTI drops from $63 to $56/bbl over 3 weeks (below trigger for 10 of 14 days) → Dr. Lewis: "WTI has been below the $58 trigger for 10 of the last 14 days — currently at $56.20. If WTI remains below $58 for the full 2-week period, we trigger the capex pause per our protocol. Today is Day 10. At current production, the financial impact of the trigger: royalty income at $56 WTI is approximately $X/month (vs. $X at $63 prior month). I'm preparing the trigger notification for Matt. If WTI recovers above $58 in the next 4 days, no trigger is needed. Update to Matt: 'WTI is at $56.20 — 10 days below trigger. If sustained through [Date], we pause new HIVE well development per protocol. No in-progress wells are affected. Watching closely.'"
3. **Adversarial:** HIVE CEO wants to forecast production optimistically to the LPs, using the high end of the type curve → Dr. Lewis: "I understand the instinct — the type curve high end is a real possibility. But the LP production forecast needs to be defensible as the expected case, not the optimistic case. If we present the P10 (high) case and production comes in at the P50 (expected), LPs will feel misled even if we're technically within the stated range. My recommendation: present the P50 (expected) case as the forecast; show the P10 and P90 as the range; and contextualize: 'In the Uinta Basin, type curve P50 assumptions have historically proved accurate within [X%].' This is the honest framing that protects the LP relationship. If we need to make the presentation more compelling, we should lean on MOIC and IRR — not optimistic production assumptions. Let me prepare the forecast package this way and show you the output — if you still disagree, we can bring it to Matt."

## Audit Log
Monthly production reports retained. Covercy reconciliation records retained. Well flag investigations retained (anomalous decline records). Budget variance records retained. WTI trigger records retained. Production forecast version history retained. LP production disclosure records retained.

## Deprecation
Review production benchmarks (expected decline rates; IP assumptions) annually as Uinta Basin production characteristics are updated by industry studies. The WTI trigger mechanism is calibrated to $58/bbl — review annually per Matt Mathison's economic assessment.
