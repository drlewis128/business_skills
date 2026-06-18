---
name: fin-variance-analyzer
description: "Analyze budget vs. actual financial variances for MBL Partners and portfolio companies. Use when the user says 'variance analysis', 'budget vs actual', 'budget variance', 'why are we over budget', 'why are we under budget', 'explain the variance', 'analyze the variance', 'what's different from plan', 'performance vs budget', 'actual vs plan', 'monthly variance', 'quarterly variance', 'revenue miss', 'expense overrun', 'EBITDA miss', 'why did we miss', 'what drove the variance', 'variance report', 'budget analysis', 'actuals review', 'P&L review', 'monthly P&L', 'quarterly P&L', 'financial performance review', 'results analysis', 'what happened this month financially', 'close results', or 'financial results'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--period <monthly|quarterly|ytd>] [--focus <revenue|expense|ebitda|cash>] [--action <analyze|explain|escalate|report>]"
---

# Fin Variance Analyzer

Analyze budget vs. actual financial variances for MBL Partners and portfolio companies — identifying the root causes of financial performance differences, distinguishing timing effects from structural issues, and surfacing the information Matt Mathison and entity CEOs need to make corrections before variances compound. Variance analysis at MBL is not a reporting exercise — it is a diagnostic function: the goal is not to explain away differences but to understand what's actually happening in the business and what, if anything, needs to change.

## When to Use
- Monthly close is complete (by the 15th; analysis by the 20th)
- A significant revenue or expense variance is discovered mid-month
- Matt Mathison asks "why did we miss plan?"
- An entity CEO wants to understand the financial results before presenting to Matt
- Preparing the monthly financial summary (exec-cfo-oversight)

## Variance Analysis Framework

```
VARIANCE CATEGORIES:

  For every variance >$10K or >5% of the budget line, categorize:

    A — TIMING: The revenue or expense occurred, just in a different period
        Examples: Contract signed but not invoiced yet; prepaid expense hitting wrong month
        Implication: Expected to correct in next 1-2 periods; no structural concern
        Flag threshold: Timing variances should resolve within 60 days; if they don't, reclassify
        
    B — VOLUME: More or fewer units than planned
        Examples: Fewer employer groups won than budgeted; higher headcount than planned
        Implication: Operational issue — the business is not executing at the planned rate
        Flag threshold: Volume variance on revenue = immediate management attention
        
    C — PRICE / RATE: Same volume as planned, different price or cost rate
        Examples: PMPM rate negotiated lower than budget; medical cost per claim higher than assumed
        Implication: Market or negotiation outcome — may require pricing or cost strategy adjustment
        Flag threshold: Price/rate variance >5% is a structural signal
        
    D — MIX: Revenue or cost composition changed
        Examples: More employer groups in a lower-PMPM tier; higher-cost claims mix
        Implication: Business composition is shifting; model assumptions need updating
        Flag threshold: Mix variances that persist >2 months require model revision
        
    E — ONE-TIME / UNPLANNED: A specific event not in the budget
        Examples: Legal settlement; severance; a large non-recurring contract win
        Implication: Doesn't affect ongoing run rate; should be noted and excluded from trend analysis

REVENUE VARIANCE PROTOCOL:

  If revenue is below plan by >10% in any month:
    □ Identify which revenue driver caused the shortfall (volume vs. price vs. timing vs. mix)
    □ Is the miss in one customer/segment or broad-based?
    □ Is this a one-month event or a trend (2+ months)?
    □ What is the current best estimate for the full year given the revised trajectory?
    □ What management action, if any, is being taken?
    
  Escalation rule:
    5-10% revenue miss: Flag in monthly financial summary
    >10% revenue miss: Matt Mathison notification within 24 hours of close
    >15% miss for 2+ months: Reforecast trigger (fin-budget-builder reforecast protocol)
    
EXPENSE VARIANCE PROTOCOL:

  If any expense category is above plan by >10%:
    □ Identify the specific line item(s) driving the variance
    □ Is it timing (accrual timing; invoice timing) or structural (new recurring cost)?
    □ Was the expense authorized? (Was it in the budget or was it an unbudgeted spend?)
    □ If unbudgeted: was the approval threshold honored? (exec-capital-allocation)
    □ Is this expected to continue or was it a one-time event?
    
EBITDA VARIANCE BRIDGE:

  When presenting EBITDA results, use the variance bridge format:
    Budget EBITDA: $[X]
    + Revenue variance: $[+/-X] ([explanation])
    - Cost variance: $[+/-X] ([explanation])
    = Actual EBITDA: $[X]
    
  This shows exactly how the EBITDA result was produced and makes every variance visible

ENTITY-SPECIFIC VARIANCE SIGNALS:

  Allevio:
    Revenue: AdvancedMD collection rate — if below 93%, investigate AR aging immediately
    COGS: Claim ratio — monthly claim cost vs. premium revenue; >89% triggers concern
    Watch: PMPM timing (employer groups pay monthly; timing shifts happen at OE renewal)
    
  HIVE:
    Revenue: Royalty receipts vs. Covercy expected distributions (reconcile monthly)
    COGS: Production costs per BOE vs. plan; WTI price vs. budget assumption
    Watch: WTI strip vs. budget assumption; flag if WTI drops >$5 below budget assumption
    
  Column6:
    Revenue: IO bookings vs. plan; VCR vs. plan (underdelivery triggers make-goods)
    COGS: Media cost (DSP spend) vs. plan; CPM vs. budget assumption
    Watch: Agency concentration — if top agency shifts IO timing, revenue variance will be large
```

## Output Format

```markdown
# Monthly Variance Analysis — [Entity] — [Month Year]
**Prepared by:** Dr. Lewis | **Close date:** [Date] | **Sent to Matt:** [Date]

---

## EBITDA Bridge

| | Budget | Actual | Variance | %  |
|-|--------|--------|---------|-----|
| Revenue | $X | $X | $[+/-X] | [+/-%] |
| COGS | $X | $X | $[+/-X] | [+/-%] |
| Gross profit | $X | $X | $[+/-X] | [+/-%] |
| Payroll | $X | $X | $[+/-X] | [+/-%] |
| Other opex | $X | $X | $[+/-X] | [+/-%] |
| **EBITDA** | **$X** | **$X** | **$[+/-X]** | **[+/-%]** |

---

## Variance Explanations

| Line item | Variance | Category | Explanation | Persistent? |
|-----------|---------|---------|-------------|------------|
| [Revenue line] | $[+/-X] | [A/B/C/D/E] | [Specific explanation] | Yes/No |
| [Expense line] | $[+/-X] | [A/B/C/D/E] | [Specific explanation] | Yes/No |

---

## YTD Summary

| | YTD Budget | YTD Actual | YTD Variance | Full-year outlook |
|-|-----------|-----------|------------|-----------------|
| Revenue | $X | $X | $[+/-X] | $[X] (vs. budget $[X]) |
| EBITDA | $X | $X | $[+/-X] | $[X] (vs. budget $[X]) |

---

## Management Actions

[For any B or C category variance that's persistent, what is being done about it?]

---

## Escalation Status

| Flag | Threshold met? | Matt notification? |
|------|--------------|------------------|
| Revenue miss >10% | Yes/No | [Date if yes] |
| Expense overrun >10% | Yes/No | [Date if yes] |
| Reforecast trigger | Yes/No | [Date if yes] |
```

## Output Contract
- Root cause, not description — "Revenue was below plan by $145K" is a description; "Revenue was below plan by $145K because 2 employer group activations scheduled for Q2 were delayed to Q3 — the groups are signed but the activation timeline slipped due to benefits administration setup; we expect the revenue in Q3 and the YTD miss will reverse by September" is a root cause analysis; Dr. Lewis does not submit a variance report that describes what happened without explaining why
- Category matters — categorizing each significant variance as A/B/C/D/E is not bureaucracy; it determines the response; a timing variance requires patience; a volume variance requires operational intervention; a price variance requires strategic response; if you can't categorize it, you can't manage it
- Persistent variances get revised projections — a variance that's been categorized as "timing" for 3 consecutive months is no longer a timing variance; it's a structural miss that hasn't been acknowledged; Dr. Lewis flags any variance that was categorized as timing or one-time in month 1 and has not resolved by month 3; the revised projection updates the full-year outlook so Matt Mathison always has an honest view of where the entity is tracking
- HITL required: monthly variance analysis sent to Matt Mathison by the 20th; any revenue miss >10% goes to Matt within 24 hours of the close; reforecast decisions require Matt authorization; entity CEOs receive the variance analysis before it goes to Matt (no surprises rule — entity CEO should never learn about a significant variance from Matt); management action items from variance analysis are logged in exec-action-tracker

## System Dependencies
- **Reads from:** QuickBooks (monthly actuals — the data source for all actual figures); fin-budget-builder (the approved budget — the benchmark for all variance calculations); fin-entity-close (the close process produces the actuals that the variance analysis uses); Allevio: AdvancedMD (collection rate data); HIVE: Covercy (royalty receipts vs. expected distributions); Column6: DSP reports (IO delivery vs. booked)
- **Writes to:** Monthly variance reports (SharePoint → Finance → VarianceReports → [Entity] → [YYYY]-[MM]); exec-cfo-oversight (monthly financial summary includes the variance analysis); exec-board-reporting (board package includes variance analysis); fin-budget-builder (persistent variances trigger reforecast); exec-action-tracker (management actions from variance analysis); exec-kpi-dashboard (variance status updates the financial health indicators)
- **HITL Required:** Matt Mathison receives the monthly variance report by the 20th; revenue miss >10% goes to Matt within 24 hours; entity CEO reviews before Matt sees it; reforecast requires Matt authorization; any unbudgeted expense discovered in the variance analysis is escalated per exec-capital-allocation thresholds regardless of whether it already occurred

## Test Cases
1. **Golden path:** Allevio closes May; revenue $1.18M vs. budget $1.25M (-5.6%); EBITDA $198K vs. budget $240K (-17.5%); Dr. Lewis analysis: Revenue variance: $70K timing (B) — 1 employer group activation delayed from May to June; confirmed by entity CEO; $5K price (C) — one renewal negotiated $3 PMPM below budget; minor. Expense variance: $28K over on clinical staffing (B) — accelerated 2nd coordinator hire from July to May; Dr. Lewis approved; intentional. EBITDA bridge presented to Matt: "Revenue -$70K timing + -$5K price = -$75K. Expense +$28K intentional early hire. Net EBITDA -$42K vs. -$57K shown (timing offset by prior month surplus). Full-year outlook: budget EBITDA $640K; current outlook $610K assuming June activation confirms. Watch: the $3 PMPM renewal rate — if this is a trend, I'll flag it." Matt: "The timing variance I can live with. Flag if the price variance repeats at the next renewal."
2. **Edge case:** HIVE revenue variance shows +$85K above plan because WTI spiked unexpectedly → Dr. Lewis: "HIVE is above plan by $85K (Category E — one-time favorable). WTI averaged $74 in May vs. the $62 budget assumption. I'm not adjusting the full-year outlook upward based on one month — the strip pricing shows a return to $64 in Q3. I'm noting the $85K favorable variance as a buffer against the Q3 production cost increase we know is coming. If WTI stays above $70 for 2 more months, I'll update the full-year forecast upward. For now: favorable but not banked."
3. **Adversarial:** Entity CEO disputes the variance analysis ("those numbers are wrong") → Dr. Lewis: "The actuals come directly from QuickBooks — specifically from [account/journal reference]. If the QuickBooks entries are incorrect, that's a close quality issue we need to fix before presenting these numbers to Matt. Can you walk me through what you believe the correct numbers should be and where the difference originates? If it's a journal entry error, I'll coordinate with your Controller to correct it. If it's a timing accrual, I'll note the accrual in the analysis. What I can't do is present Matt with numbers I'm not confident in — so let's get this resolved today before the 20th deadline."

## Audit Log
All variance reports retained by entity and month. Root cause categorizations retained. Escalation records retained (when Matt was notified; what was communicated; response). Reforecast triggers and decisions retained. Management action items from variance analysis tracked through exec-action-tracker.

## Deprecation
Retire when each entity has a Controller who performs the monthly variance analysis — with Dr. Lewis reviewing the Controller's analysis and Matt Mathison receiving the executive summary.
