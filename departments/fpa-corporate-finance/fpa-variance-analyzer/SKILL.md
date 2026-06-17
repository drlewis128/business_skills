---
name: fpa-variance-analyzer
description: "Analyze budget vs. actual variances with root cause and management commentary. Use when the user says 'variance analysis', 'budget vs actual', 'BvA', 'budget to actual', 'why did we miss budget', 'explain the variance', 'analyze variances', 'monthly variance', 'variance report', 'variance commentary', 'performance vs plan', 'actuals vs budget', 'why are we over budget', 'under budget', 'explain the miss', 'revenue miss', 'EBITDA variance', 'variance bridge', 'performance explanation', or 'budget performance'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <YYYY-MM or YTD>] [--focus <revenue|ebitda|expense|all>] [--threshold <$>]"
---

# Variance Analyzer

Analyze budget vs. actual variances for MBL portfolio companies — identifying the root cause of every material variance, categorizing it correctly, and producing management commentary that explains WHY the variance occurred and what (if anything) should be done about it. Variance analysis is where the budget becomes useful: the budget is a prediction; the actuals are reality; the variance is the gap between the two; the variance analysis is the explanation. A variance analysis that says "revenue was below budget because sales were lower than expected" is not analysis — it's a tautology. Dr. Lewis produces variance analyses that are specific, actionable, and honest.

## When to Use
- Monthly — as part of the financial package delivery to CEO (by BD7)
- Any month with a significant variance (EBITDA >$15K above or below budget)
- Matt Mathison's monthly brief — always includes the variance explanation
- Board preparation — the board will ask about variances; Dr. Lewis prepares the commentary

## Variance Analysis Framework

```
Variance root cause taxonomy:

  VOLUME: The quantity of the business activity was different than planned
    Example: Allevio had 1,150 members vs. 1,200 budgeted (−50 members)
    Math: −50 members × $85 PMPM = −$4,250 revenue miss
    Management response: Volume variance is a business execution issue — investigate why member adds are behind plan
    
  RATE / PRICE: The unit price or rate was different than planned
    Example: HIVE realized $62/bbl vs. $67/bbl budgeted WTI
    Math: Same production BOE × $5/bbl difference
    Management response: Rate variance from market = not actionable operationally; rate variance from contract = renegotiate
    
  MIX: The composition of the business activity was different, changing the average rate
    Example: Column6 had more lower-CPM digital impressions vs. higher-CPM CTV campaigns than budgeted
    Math: Same impression volume, but lower average CPM = lower revenue
    Management response: Mix variance is a sales execution issue — are we closing the right types of campaigns?
    
  TIMING: The activity happened but in a different period than planned
    Example: A new employer group expected to start July 1 started August 1 (30-day delay)
    Math: One month of lost revenue; recovers in August
    Management response: Timing variances typically self-correct; monitor whether the delay persists
    
  ONE-TIME: A non-recurring event caused the variance
    Example: A legal settlement of $45K appeared in operating expenses
    Math: $45K expense not in budget; will not recur
    Management response: Exclude from run-rate EBITDA analysis; note as non-recurring in the board presentation
    
  STRUCTURAL: A fundamental change in the business that is permanent
    Example: A key clinician resigned at Allevio and temporary staffing is replacing them at 1.5× cost
    Math: $12K/month higher COGS until the position is filled
    Management response: Structural variances require action — fix the underlying issue or revise the forecast permanently
    
Variance threshold (material = requires explanation):
  Revenue variance: >$10K in any month; >$25K YTD
  EBITDA variance: >$10K in any month; >$20K YTD
  Any individual expense line >$5K above budget in the month
  
EBITDA bridge format (required for all material variances):

  Budgeted EBITDA:                  $XXX
  + Revenue variance (detail below): +$XX
  − COGS variance (detail below):   −$XX
  − Opex variance (detail below):   −$XX
  = Actual EBITDA:                  $XXX
  
  Revenue variance detail:
    Volume effect [member/BOE/campaign count]: +/−$XX
    Rate/price effect [rate per unit]:         +/−$XX
    Mix effect [product/segment mix]:          +/−$XX
    Timing effect [period shift]:              +/−$XX
    One-time items:                            +/−$XX
    Total revenue variance:                    +/−$XX
    
Variance explanation quality standards:

  INSUFFICIENT (reject these):
    "Revenue was below budget due to lower sales"
    "Expenses came in higher than expected"
    "Market conditions impacted performance"
    
  ACCEPTABLE (minimum):
    "Revenue was $24K below budget, driven by 30 fewer members than planned at Allevio"
    "Operating expenses exceeded budget by $18K due to temporary staffing costs after [Clinician] resignation"
    "Column6 revenue was $35K below budget; Q3 advertising budgets were allocated later than expected by agency clients; campaigns are booking but shifted to Q4"
    
  EXCELLENT (target):
    "Revenue was $24K below budget (−7%). The entire miss is volume-driven: Allevio ended the month with 1,155 members vs. 1,200 budgeted. The shortfall is from [Employer Group A], which was expected to start July 1 but pushed to August 1 due to their open enrollment cycle. The delay is confirmed in writing; revenue recovers in August. PMPM rates are on budget. No structural concern."
```

## Output Format

```markdown
# Variance Analysis — [Entity] [Month YYYY]
**Period:** [Month] | **Prepared by:** Dr. Lewis | **As part of:** Monthly CEO Package

---

## Variance Summary

| Metric | Budget | Actual | Variance | % Variance | Material? |
|--------|--------|--------|---------|-----------|----------|
| Revenue | $[X]K | $[X]K | +/−$[X]K | [X]% | ✅/⚠️ |
| Gross Profit | $[X]K | $[X]K | +/−$[X]K | [X]% | ✅/⚠️ |
| Operating Expenses | $[X]K | $[X]K | +/−$[X]K | [X]% | ✅/⚠️ |
| **EBITDA** | **$[X]K** | **$[X]K** | **+/−$[X]K** | **[X]%** | **✅/⚠️** |

---

## EBITDA Bridge

| Component | Amount |
|-----------|--------|
| Budgeted EBITDA | $[X]K |
| + Revenue: Volume effect | +/−$[X]K |
| + Revenue: Rate/price effect | +/−$[X]K |
| + Revenue: Timing effect | +/−$[X]K |
| − COGS: Staffing variance | +/−$[X]K |
| − Opex: [Specific line] | +/−$[X]K |
| **= Actual EBITDA** | **$[X]K** |

---

## Variance Explanations

### Revenue — [+/−$X]K ([X]% [favorable/unfavorable])

**Root cause:** [Volume / Rate / Mix / Timing / One-time / Structural]
**Explanation:** [Specific, quantified, actionable explanation per quality standards above]
**Outlook:** [Will this reverse? Is the forecast updated? What action is being taken?]

### [Expense Line — +/−$X]K ([favorable/unfavorable])

**Root cause:** [Category]
**Explanation:** [Specific explanation]
**One-time or recurring?:** [One-time — not in forecast / Recurring — forecast updated]

---

## YTD Variance Summary

| Metric | Budget YTD | Actual YTD | Variance YTD | Full-Year Forecast |
|--------|-----------|-----------|-------------|-------------------|
| Revenue | $[X]K | $[X]K | +/−$[X]K | $[X]K |
| EBITDA | $[X]K | $[X]K | +/−$[X]K | $[X]K |

**Full-year EBITDA outlook:** $[X]K vs. $[X]K budget — [X]% [above/below] plan. [One sentence action or monitoring note.]

---

## CEO Commentary (3 bullets)

- **Revenue:** [Specific driver, amount, outlook]
- **EBITDA:** [Net variance, largest driver, management response]
- **Key watch item for next month:** [Specific — will the timing variance reverse? Is the structural issue being addressed?]
```

## Output Contract
- Every material variance has a root cause category and a specific explanation — the variance analysis is not complete if any line shows a material variance without a root cause category (Volume/Rate/Mix/Timing/One-time/Structural) and a specific explanation that answers: what specifically happened, how much did it contribute, and is this a temporary or permanent effect; the root cause category matters because it drives the management response (Volume = fix the sales process; Rate = assess the contract; Timing = monitor for reversal; Structural = take action)
- Favorable variances need explanation too — the reflex in variance analysis is to explain unfavorable variances (why did we miss?); favorable variances are equally important to explain because they may signal that the budget was too conservative (accrual was missing, costs shifted to next month, revenue was recognized early); a company that consistently runs 20% favorable on expenses may have a sandbagged budget or may have missing accruals; Dr. Lewis explains material favorable variances with the same rigor as unfavorable variances
- The EBITDA bridge is the management tool, not the detailed line-by-line — Matt Mathison and the CEO read the EBITDA bridge, not the 50-line P&L; the bridge shows where EBITDA came from and went relative to budget in 6-8 lines; Dr. Lewis constructs the bridge first and then provides the supporting detail for each bridge line item in the narrative section; the bridge provides the "what" and the narrative provides the "why and what next"
- HITL required: Dr. Lewis prepares the variance analysis; CEO receives it as part of the monthly financial package (BD7); Matt Mathison receives the variance explanation in the monthly brief for any month with EBITDA variance >$15K; any structural variance that requires a business response (addressing a resignation, recovering a lost customer, renegotiating a contract) is escalated to the CEO immediately, not held to the monthly financial package

## System Dependencies
- **Reads from:** QuickBooks actuals (P&L by line item); annual budget (loaded in QuickBooks); prior month rolling forecast; CEO/Dr. Lewis intelligence on business events (new hires, contract changes, market events); fin-ops-variance-explainer (operational-level variance support)
- **Writes to:** Monthly CEO financial package (variance section); Matt Mathison monthly brief (variance commentary); rolling forecast (if a structural variance triggers a forecast revision); board package (quarterly — YTD variance commentary)
- **HITL Required:** Dr. Lewis prepares; CEO reviews; Matt Mathison receives for material variances; structural variances that require business action escalated to CEO immediately

## Test Cases
1. **Golden path:** Allevio June variance — revenue $292K vs. $315K budget (−$23K, −7.3%) → Dr. Lewis investigates: Revenue miss is entirely volume-driven: 1,142 members vs. 1,200 budgeted (−58 members); PMPM rate is $85.50 (slightly above $85 budget — rate is fine); the 58-member shortfall is split: 30 from [Employer Group C] that delayed start to July (timing); 28 from expected new group [X] that didn't sign (volume/execution); COGS was $195K vs. $198K budget ($3K favorable — slightly fewer clinical hours needed); Opex was $98K (on budget); EBITDA: $292K − $195K − $98K = −$1K EBITDA, vs. budget $315K − $198K − $98K = $19K budget EBITDA; variance = −$20K; bridge: Budget EBITDA $19K; Revenue volume effect −$23K; COGS favorable +$3K; Actual EBITDA −$1K; explanation: "Revenue was $23K below budget. 30 members from [Group C] delayed start to July (timing; recovers next month). 28 members from [Group X] have not signed — we are actively pursuing but downgrading to Q4 probability. EBITDA −$20K vs. budget; timing variance of ~$11K should reverse in July; structural gap of ~$9K if [Group X] doesn't sign by Q3." CEO commentary: bullet 1 — Revenue: members below budget; timing issue + one execution miss. Forecast updated. Matt Mathison flag: $20K EBITDA variance, with explanation.
2. **Edge case:** HIVE has a favorable variance — EBITDA $85K vs. $48K budget (+$77K, 160% favorable) → Large favorable variance requires investigation: Is this real or is something wrong? Dr. Lewis investigates: WTI moved from $67 to $74/bbl (favorable rate variance: ~$28K); production was 1,050 BOE/day vs. 1,000 budgeted (favorable volume: ~$18K); LOE costs were lower than expected due to deferred maintenance (timing: $31K — costs will appear in July or August); Total: rate $28K + volume $18K + timing $31K = $77K. Dr. Lewis notes: $31K of the favorable variance is timing (deferred maintenance will appear next month); true outperformance is $46K ($28K rate + $18K volume); rolling forecast adjusted to restore $31K to July COGS; CEO and Matt Mathison notified: "HIVE EBITDA is $77K vs. $48K budget (+160%). $31K is deferred maintenance (timing — appears in July). True outperformance is $46K — driven by WTI at $74/bbl (vs. $67 budget) and above-plan production. Forecast updated."
3. **Adversarial:** CEO says "just say revenue was soft this month" for the Matt Mathison brief → Dr. Lewis declines: "I can't explain a $23K revenue miss as 'soft revenue' to Matt. He'll ask for the specifics. Let me give you what I can actually explain: 30 members are timing (Group C delayed to July — we have email confirmation), and 28 members are the Group X deal that hasn't closed. Which would you prefer I lead with in the brief? If you want, I'll draft both options and you choose." Dr. Lewis does not allow vague or misleading variance explanations to go to Matt Mathison regardless of what the CEO prefers; the THRIVE Truth value applies

## Audit Log
All variance analyses retained by period. Root cause categorizations retained. Management commentary retained. Matt Mathison brief variance sections retained. Any structural variance escalations retained. Forecast revisions triggered by variance analysis retained.

## Deprecation
Retire when each portfolio company has a CFO or FP&A analyst who prepares variance analysis — with Dr. Lewis reviewing before CEO delivery and Matt Mathison receiving the summary brief.
