---
name: variance-analysis-tool
description: "Run a budget vs. actual variance analysis. Use when the user says 'variance analysis', 'budget vs actual', 'budget vs. actual', 'why are we over budget', 'why are we under budget', 'explain the variances', 'financial variance', 'actual vs budget report', 'over/under analysis', 'expense variance', 'revenue variance', or 'explain the financial results'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly|ytd>] [--focus <revenue|opex|ebitda|all>]"
---

# Variance Analysis Tool

Run a structured budget vs. actual variance analysis — identifying, quantifying, and explaining material financial variances between actual results and the approved budget (or prior period). Variance analysis is how management knows whether performance is in line with plan and, when it isn't, understands why. A variance analysis without a root cause explanation is just a table of numbers; the value is in the narrative.

## When to Use
- Monthly or quarterly financial close — results need to be explained
- Matt Mathison asks "why are the numbers different from budget?"
- Board package preparation — variance explanations are required for every material variance
- A portfolio company CEO presents results and management needs to understand the drivers
- Budget planning — understanding what drove past variances improves future forecast accuracy

## Variance Analysis Standards

```
Materiality threshold (what gets explained):

Revenue variances: >$10K or >5%, whichever is lower
Expense variances: >$5K or >10%, whichever is lower
(Adjust thresholds for company size — a $50M company has different materiality than a $1M company)

Variance types:
  Favorable (F): Actual revenue > budget, OR actual expense < budget
  Unfavorable (U): Actual revenue < budget, OR actual expense > budget

Root cause categories:
  Volume: More or fewer units/customers/transactions
  Price/Rate: Higher or lower rate per unit than assumed
  Mix: Different product/customer mix than budgeted
  Timing: Revenue/expense recognized in a different period
  One-time: Non-recurring item not in budget
  Budget error: The budget assumption was wrong
```

## Output Format

```markdown
# Variance Analysis — <Company Name>
**Period:** [Month / Quarter / YTD ending <date>]
**Prepared by:** Dr. John Lewis | **Date:** <date>

---

## TL;DR

**Overall:** Actual [revenue/EBITDA] was $[X] vs. $[X] budget — $[X] [favorable/unfavorable] ([X%]).
**Key driver:** [One-sentence explanation of the single most important variance]
**Action needed:** [Specific decision or action required from management, if any. "None — tracking to plan" is a valid response.]

---

## Revenue Variance

| Line | Actual | Budget | $ Var | % Var | F/U | Root cause |
|------|--------|--------|-------|-------|-----|-----------|
| [Revenue line 1] | $[X] | $[X] | $[X] | [X%] | F/U | [Volume / Price / Timing / Mix / One-time] |
| [Revenue line 2] | $[X] | $[X] | $[X] | | | |
| **Total Revenue** | **$[X]** | **$[X]** | **$[X]** | **[X%]** | **F/U** | |

**Revenue narrative:**
- [Largest variance]: $[X] [above/below] budget because [specific root cause]. [Is this expected to continue in future periods? Yes — new contract / No — one-time event]
- [Second variance if material]: $[X] variance driven by [reason]

---

## Gross Margin Variance

| | Actual | Budget | Variance |
|---|---|---|---|
| Revenue | $[X] | $[X] | $[X] F/U |
| COGS | $[X] | $[X] | $[X] F/U |
| **Gross Profit** | **$[X]** | **$[X]** | **$[X] F/U** |
| **Gross Margin %** | **[X%]** | **[X%]** | **[±X pp]** |

**Margin narrative:** [Did margin expand or contract vs. budget? Why? Is it structural or temporary?]

---

## Operating Expense Variance

| Expense Category | Actual | Budget | $ Var | % Var | F/U | Root cause |
|-----------------|--------|--------|-------|-------|-----|-----------|
| Salaries & Benefits | $[X] | $[X] | $[X] | [X%] | F/U | [Timing of hire / Turnover / Bonus] |
| Rent & Facilities | $[X] | $[X] | | | | |
| Technology & Software | $[X] | $[X] | | | | |
| Marketing | $[X] | $[X] | | | | |
| Professional Services | $[X] | $[X] | | | | |
| Travel & Entertainment | $[X] | $[X] | | | | |
| Other Operating | $[X] | $[X] | | | | |
| **Total OpEx** | **$[X]** | **$[X]** | **$[X]** | **[X%]** | **F/U** | |

**OpEx narrative:**
- [Largest unfavorable expense variance]: $[X] over budget because [reason]. Remaining budget for the year: $[X] — [on track / risk of further overrun]
- [Largest favorable expense variance]: $[X] under budget because [reason] — [is this a permanent saving or a timing difference to be spent later?]

---

## EBITDA Variance Bridge

```
Budget EBITDA:                    $[X]
+ Revenue variance (net):         +/- $[X]   [F/U]
+ Gross margin rate variance:     +/- $[X]   [F/U]
+ OpEx variance (favorable):      +  $[X]    [F]
- OpEx variance (unfavorable):    -  $[X]    [U]
= ACTUAL EBITDA:                  $[X]
```

**EBITDA narrative:** [The single most important explanation for EBITDA being above/below budget]

---

## Material Variances — Detailed Explanation

*Each variance exceeding materiality threshold gets its own paragraph.*

### 1. [Variance Item Name] — $[X] [Favorable/Unfavorable]

**What happened:** [Factual description of what drove the variance]
**Why it happened:** [Root cause — was it avoidable? Was it within management's control?]
**Is it recurring?** [Yes, and here's why / No — one-time event]
**Action (if unfavorable):** [What is management doing to address this? By when?]

### 2. [Variance Item Name] — $[X] [Favorable/Unfavorable]

[Same format]

---

## Full-Year Forecast Implication

Based on Q[N] variances, the current full-year forecast is:

| | Original Budget | Current Forecast | Change | Driver |
|---|---|---|---|---|
| Revenue | $[X] | $[X] | $[X] | [Key change] |
| EBITDA | $[X] | $[X] | $[X] | |

**Forecast risk:** [What could cause the forecast to be wrong — both upside and downside]
```

## Output Contract
- Every material variance must have a root cause — "revenue was below budget" is not a variance analysis; "revenue was below budget because the implementation of 2 new Allevio practices slipped from June to July (timing variance — expected to recover in Q3)" is a variance analysis; no unexplained variances
- Favorable variances explained as carefully as unfavorable — a favorable variance that is a timing difference (spent later) is different from a genuine saving; mischaracterizing timing differences as savings leads to over-optimistic forecasting
- EBITDA bridge always included — the bridge shows exactly how much of the EBITDA variance comes from revenue vs. gross margin vs. each expense line; it prevents finger-pointing and makes the analysis rigorous
- Full-year forecast always updated after material variances — a variance analysis that doesn't update the full-year outlook answers "what happened" but not "what does it mean"; the forward-looking implication is often the most important part
- HITL required: Dr. Lewis prepares; CFO or controller reviews root cause explanations for factual accuracy; Matt Mathison reviews before board or LP distribution; any forecast revision that changes full-year guidance by >5% requires Matt Mathison's explicit acknowledgment

## System Dependencies
- **Reads from:** QuickBooks (actual results), annual budget model (budget), prior period financials, management commentary from portfolio company CEO/CFO
- **Writes to:** Variance analysis document (SharePoint/Finance/Variance Analysis/); board package financial section; LP report narrative
- **HITL Required:** Dr. Lewis prepares; management verifies root causes; Matt Mathison approves before external sharing

## Test Cases
1. **Golden path:** HIVE Partners Q1 variance analysis → Revenue: $287K actual vs. $310K budget ($23K unfavorable, 7.4%) — root cause: oil price realized at $67.80/BBL vs. $72/BBL budget (price variance, not production); production was 142 BBL/day vs. 138 budget (volume favorable, offset); OpEx: $198K actual vs. $210K budget ($12K favorable, 5.7%) — lower LOE due to no pump maintenance in Q1; EBITDA: $89K vs. $100K budget ($11K unfavorable, 11%); bridge: budget $100K − $23K revenue − $2K margin rate + $12K LOE savings = $87K actual (reconciled); full-year implication: revised full-year revenue from $1.24M to $1.17M (lower oil price assumption maintained); forecast risk: price — hedges provide $62/BBL floor through Q4
2. **Edge case:** Every line item is slightly unfavorable, no single large variance — the analysis must synthesize: "Results for Q[N] are consistently below budget across all categories by 3-8%. No single large variance; the pattern suggests the budget was consistently optimistic. Recommend reviewing base assumptions for next year's budget — particularly [which assumptions were most consistently off]." This is a budget quality issue, not an operational crisis, and the analysis should say so
3. **Adversarial:** A portfolio company CEO wants the variance analysis to attribute an unfavorable expense variance to a "one-time" event, but the same event occurred in the prior period → this is not a one-time item; a one-time event by definition doesn't recur; the analysis must reflect the accurate characterization: "Professional services expense was $[X] over budget. This is the second consecutive quarter of this pattern. The root cause is [X]. This should be added to the ongoing budget rather than treated as a one-time item." Accurate variance categorization is a financial integrity issue

## Audit Log
Variance analyses retained by period and entity. Root cause explanations documented with management sign-off. Forecast revisions tracked with the variance trigger that drove the change. Matt Mathison review dates logged.

## Deprecation
Retire when portfolio companies have dedicated finance teams or FP&A functions that run their own variance analysis as part of a monthly close process, with software-assisted commentary generation.
