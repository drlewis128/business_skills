---
name: fin-ops-variance-explainer
description: "Explain actual vs. budget variances with specific root causes and actions. Use when the user says 'variance explanation', 'explain the variance', 'why is revenue down', 'why is EBITDA off', 'budget vs. actual', 'variance analysis', 'explain the miss', 'EBITDA below budget', 'revenue below plan', 'expense over budget', 'what caused the variance', 'P&L variance', 'why are we off budget', 'actual vs. plan', 'explain the gap', 'budget bridge', or 'financial variance'."
metadata:
  version: 1.0.0
  tier: finance-operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <month/quarter>] [--line <revenue|EBITDA|expense|all>] [--budget <$X> --actual <$Y>]"
---

# Variance Explainer

Produce specific, root-cause variance explanations for MBL portfolio companies — translating the numbers on the P&L into actionable narrative that the CEO and Matt Mathison can act on. Variance analysis is not a description of what happened — it is an investigation into why it happened and what to do about it. The most common failure mode is vague explanation: "revenue was below plan due to market conditions" tells nobody anything actionable; "revenue was $42K below plan due to the NP vacancy (July 15 to August 12) — the replacement NP starts August 13, which should recover $28K of the gap in August and full recovery in September" is actionable. Dr. Lewis requires specific, quantified, actionable variance explanations before financial statements are delivered to the CEO.

## When to Use
- Monthly close — variance explanations prepared at BD6 with the financial statements
- Any P&L line that is >5% off budget (favorable or unfavorable)
- Mid-month performance check when the CEO asks "how are we tracking?"
- Quarterly board report prep (strategy-board-reporting integrates with this skill)
- Matt Mathison requests a specific variance explanation

## Variance Explanation Framework

```
Variance explanation standards:
  Minimum explanation quality: Specific (what happened) + Quantified ($amount) + Actionable (what's next)
  
  ❌ Unacceptable: "Revenue below plan due to lower patient volume."
  ✅ Acceptable: "Revenue $38K below plan (budget $285K; actual $247K). Volume was down
    8.1% (budget 280 visits; actual 257 visits). Root cause: Provider vacancy — Dr. Sarah
    Kim left July 8; replacement PA-C starts August 13. Lost visits × $148 avg rate = $34K
    of the variance. Additional $4K from 3 canceled employer group appointments (rescheduled
    to August). Recovery: PA-C starts August 13; projecting full recovery in September."
    
Root cause classification (identify which category):

  VOLUME variance: Fewer/more units than budgeted
    Ask: Why were there fewer/more? (Staffing? Demand? Market? Operational?)
    Quantify: Variance in units × budgeted rate per unit = volume impact
    
  RATE/PRICE variance: Revenue per unit or cost per unit differs from budget
    Ask: Why is the rate different? (Contract change? Payer mix shift? Vendor price increase?)
    Quantify: Actual volume × (actual rate − budget rate) = rate impact
    
  MIX variance: Same total units but different distribution
    Example: Allevio — total visits on plan but more lower-reimbursed Medicaid (lower rate) vs. private insurance (higher rate)
    Quantify: Actual visits by payer × (actual payer rate − blended budgeted rate)
    
  TIMING variance: Revenue or expense shifted to a different period (not a permanent change)
    Example: HIVE production payment arrived 3 weeks late due to operator delay
    Important: Timing variances resolve themselves — the action is confirming the timing, not changing the business
    Clearly distinguish from permanent variances: "This is a timing issue — payment arrived August 5; 
      July cash statement shows the gap; no EBITDA impact."
    
  ONE-TIME variance: Unusual item that won't recur
    Example: Legal fees for M&A due diligence; severance for a departing employee
    Identify: Is this truly one-time? Or is it symptomatic of a recurring issue?
    
  STRUCTURAL variance: The budget assumption was wrong or the business has changed
    Example: A payer renegotiated rates lower after the budget was set
    Action: Update the forward budget to reflect the new reality; explain to Matt Mathison
    
Bridge analysis (for EBITDA variances >$20K):

  Start: Budgeted EBITDA
  + / − Revenue volume variance
  + / − Revenue rate/price variance
  + / − Revenue mix variance
  + / − Expense variances (each major line)
  = Actual EBITDA
  
  Every line in the bridge should sum exactly to the difference between budgeted and actual EBITDA
  
Entity-specific common variances:

  ALLEVIO:
    Revenue variances: Provider vacancy, payer mix shift, visit volume, new employer groups ahead/behind schedule
    Expense variances: Locum provider cost (if vacancy covered by temp), billing denial rate, malpractice insurance change
    
  HIVE PARTNERS:
    Revenue variances: WTI price vs. assumption, production volume, production payment timing
    Expense variances: LOE per BOE vs. budget, workover/maintenance cost, mineral rights payments
    WTI sensitivity: $1/bbl price change × production volume × 365 days = annual revenue impact
    
  COLUMN6 / SIPROCAL:
    Revenue variances: Impression volume vs. plan, CPM rates vs. plan, advertiser spending patterns
    Expense variances: Traffic acquisition cost, platform fees, content/creative costs
```

## Output Format

```markdown
# Variance Explanation — [Entity] [Month] [Year]
**Variance type:** [Revenue / EBITDA / Expense / All]
**Budget:** $[X] | **Actual:** $[X] | **Variance:** $[X] ([+/-X]%) [Favorable/Unfavorable]

---

## BLUF

Revenue/EBITDA was $[X] [below/above] plan for [Month]. [One-sentence root cause summary].
[Recovery/action: one sentence.] Full detail below.

---

## EBITDA Bridge

| Component | $ Impact | Direction |
|-----------|---------|-----------|
| Budgeted EBITDA | $[X]K | — |
| Revenue: Volume variance | ($[X]K) | ↓ |
| Revenue: Rate/mix variance | ($[X]K) / +$[X]K | ↓/↑ |
| Expense: [Line item] | ($[X]K) / +$[X]K | ↓/↑ |
| Expense: [One-time item] | ($[X]K) | ↓ |
| **Actual EBITDA** | **$[X]K** | — |

---

## Line-by-Line Variance Detail

### Revenue: $[X] [below/above] plan

**Volume:** [N] [visits/BOE/impressions] vs. [N] budgeted = [N] shortfall
**Rate:** $[X] avg per unit vs. $[X] budgeted
**Mix:** [Payer mix shifted X% toward lower-rate Medicaid vs. budget assumption]
**Root cause:** [Specific — provider vacancy July 8-August 12; NP started July 16 (2 days delayed)]
**Duration:** [One-time / Temporary (through August 12) / Permanent (payer rate change effective 9/1)]
**Recovery:** [Full recovery September — no action required / Action: [specific]]

### [Expense line]: $[X] [above/below] plan

**Root cause:** [Specific — locum provider cost $18K for 4-week coverage during vacancy]
**Duration:** [One-time — locum contract ended August 12]
**Action:** [None required / Specific action]

---

## Forward Outlook

**August projection vs. plan:** [On plan / $[X]K below — PA-C starts August 13; 19 days of partial volume]
**September projection:** [On plan / $[X]K below — full provider capacity]
**Budget revision needed?** [No — timing variance resolves / Yes — specific reason]

---

## Matt Mathison Summary (if variance >$20K EBITDA)

[Entity] EBITDA was $[X]K below plan in [Month] ($[X]K actual vs. $[X]K budgeted, −[X]%). Root cause: [one paragraph, specific, with recovery timeline]. Action required: [None — self-correcting / Specific].
```

## Output Contract
- Root cause must be quantified — every variance explanation must include the dollar amount attributable to each root cause; if revenue is $38K below plan, the explanation must account for all $38K: "$34K from provider vacancy (volume impact) + $4K from canceled employer group appointments (timing, rescheduled to August)"; an explanation that identifies a cause without quantifying it ("revenue was down due to provider vacancy") doesn't allow the CEO or Matt Mathison to evaluate whether the cause fully explains the variance or whether there are additional issues
- Distinguish timing from structural — a timing variance (HIVE production payment arrived in August instead of July) self-corrects and requires no action; a structural variance (a payer renegotiated rates from $115 to $98 per visit) permanently changes the revenue model and requires a budget revision; conflating these two is dangerous because it leads to underestimating structural problems ("it's just timing") and over-correcting for timing issues; Dr. Lewis identifies the category of each variance explicitly in the explanation
- Favorable variances require explanation too — when expenses come in $15K below plan, the explanation is as important as an unfavorable variance; if it's because a planned hire hasn't started, that $15K will appear in future periods when the hire is made; if it's because a vendor renegotiation drove permanent savings, the budget should be updated; if it's because the controller forgot to accrue a known expense, the accrual needs to be posted; favorable variances that aren't explained can represent missing accruals or timing errors that will show up as unfavorable variances next month
- HITL required: Controller prepares the preliminary variance analysis; Dr. Lewis validates the root cause explanations and quantification before the financial package is delivered to the CEO; any EBITDA variance >$20K requires a Matt Mathison summary from Dr. Lewis; any structural variance (budget change needed) requires Dr. Lewis recommendation and CEO approval of the revised forward budget

## System Dependencies
- **Reads from:** QuickBooks P&L (actual); budget model (finance/budget spreadsheet or QuickBooks budget); operating data for root cause (AdvancedMD visit data for Allevio, Covercy production data for HIVE, ad server delivery data for Column6)
- **Writes to:** Variance explanation document (included in BD6 financial package); board report variance section (strategy-board-reporting); Matt Mathison brief (when >$20K EBITDA variance); forward budget revision (if structural variance identified)
- **HITL Required:** Controller prepares preliminary variance; Dr. Lewis validates and finalizes; CEO reviews with financial statements; Matt Mathison receives brief for variances >$20K EBITDA; forward budget revision requires CEO approval

## Test Cases
1. **Golden path:** Allevio July 2026 — Revenue $247K vs. budget $285K, −$38K (−13.3%) → Controller flags variance; Dr. Lewis investigates: AdvancedMD data shows 257 visits vs. 280 budgeted = 23 fewer visits; Dr. Sarah Kim departed July 8; clinic was covered by locum 2 weeks; 23 visits × $148 avg rate (blended payer mix) = $34K volume variance; remaining $4K = 3 canceled employer group visits rescheduled to August = timing variance; locum cost: $18K above budget for 4-week temporary coverage; EBITDA bridge: budget $85K; revenue volume variance −$34K; timing −$4K; locum expense −$18K; actual EBITDA $29K; variance explanation written: specific, quantified, with recovery timeline (PA-C starts August 13); Dr. Lewis delivers to CEO with financial statements; Matt Mathison receives brief (>$20K EBITDA impact)
2. **Edge case:** HIVE July 2026 — Revenue $0 vs. budget $185K (June production payment expected) → All $185K is a timing variance: operator confirmed the distribution check was delayed and will arrive August 5; Dr. Lewis documents as timing variance (no EBITDA impact — the revenue will be recorded when received); August will show $185K + the normal August production payment = $370K if both arrive in August; the variance explanation clearly states "This is a timing variance — no revenue is lost; June production check delayed by operator; expected August 5"; Matt Mathison is briefed because the variance is >$20K, but the brief clearly explains the timing nature and the confirmed receipt date
3. **Adversarial:** CEO receives the variance explanation and says "I don't want to send this to Matt — it looks bad. Can you soften it?" → Dr. Lewis is responsible for accurate variance explanations; "softening" a variance explanation by omitting the root cause or minimizing the impact is inconsistent with the fiduciary duty to LP and board; Dr. Lewis responds: "I understand the instinct, but Matt needs accurate information to do his job as managing partner. The explanation I have is factual and includes the recovery plan — that's the best way to present it. If we downplay the provider vacancy now and August recovery doesn't fully materialize, we'll have a harder conversation then. Let me make sure the recovery plan section is clear and compelling." Dr. Lewis presents the facts and the recovery; he does not omit or minimize

## Audit Log
All variance explanations retained by period. EBITDA bridge calculations retained. Matt Mathison briefings retained. Budget revision recommendations retained. Forward projections retained (for accuracy tracking vs. subsequent actuals).

## Deprecation
Retire when each portfolio company has a CFO or VP Finance who prepares variance explanations independently — with Dr. Lewis reviewing for accuracy and Matt Mathison receiving the briefings for variances >$20K EBITDA.
