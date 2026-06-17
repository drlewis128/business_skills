---
name: fpa-debt-capacity-analyzer
description: "Analyze debt capacity and leverage for portfolio companies. Use when the user says 'debt capacity', 'leverage analysis', 'how much debt can we take on', 'debt-to-EBITDA', 'credit analysis', 'leverage ratio', 'debt covenant', 'covenant compliance', 'line of credit', 'LOC availability', 'bank covenants', 'net debt', 'debt service coverage', 'DSCR', 'debt headroom', 'credit facility', 'term loan analysis', 'refinancing analysis', 'capital structure', 'debt structure', or 'leverage capacity'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--purpose <acquisition|operations|analysis>] [--action <analyze|monitor|covenant-check>]"
---

# Debt Capacity Analyzer

Analyze debt capacity and leverage structure for MBL portfolio companies — determining how much debt each company can sustainably service, monitoring covenant compliance, and supporting leverage decisions for acquisitions and capital structure optimization. Debt is a tool for generating returns in PE (leverage amplifies equity returns when used properly), but it is also a source of risk (too much debt can put a company in financial distress). Dr. Lewis maintains a clear view of each portfolio company's debt capacity, current leverage, and covenant headroom at all times.

## When to Use
- An acquisition is being financed with debt — how much debt can the target or acquirer support?
- Monthly close — confirm covenant compliance before the close period ends
- A portfolio company CEO asks "can we draw on the LOC for this?"
- Cash position declines — is the company at risk of breaching a covenant?
- Annual budget — model debt service capacity for the budget year
- Refinancing — evaluate whether current debt structure is optimal

## Debt Capacity Framework

```
LEVERAGE METRICS:

  Debt / EBITDA (primary leverage ratio):
    Definition: Total debt outstanding ÷ LTM EBITDA
    Industry norms:
      Healthcare services (Allevio): Comfortable <2.5×; stressed 2.5-4.0×; distressed >4.0×
      O&G (HIVE): Comfortable <2.0×; stressed 2.0-3.0×; distressed >3.0× (commodity exposure)
      Media/CTV (Column6): Comfortable <2.5×; stressed 2.5-4.0×; distressed >4.0×
    PE portfolio norms: Many PE deals carry 3-5× Debt/EBITDA at entry (leveraged buyout)
    MBL approach: Conservative leverage — minimize debt risk for small portfolio companies
    
  Debt Service Coverage Ratio (DSCR):
    Definition: EBITDA ÷ (Principal repayment + Interest payments) in a 12-month period
    Banks typically require DSCR >1.25× as a covenant
    Dr. Lewis targets DSCR >1.5× at all times (buffer above covenant)
    Below 1.25×: Covenant risk; below 1.0×: Cannot service debt from operations
    
  Interest Coverage Ratio:
    Definition: EBITDA ÷ Annual interest expense
    Minimum target: >3.0× (comfortable margin above interest payments)
    <2.0×: Tight; <1.0×: Operating loss is insufficient to cover interest — critical
    
  Net Debt = Total debt outstanding − Cash (above minimum operating reserve)
    Use net debt for leverage ratios when cash is meaningfully large
    
DEBT CAPACITY CALCULATION:
  Maximum sustainable debt = EBITDA × sector-appropriate maximum multiple
    Allevio max: $[X]K EBITDA × 2.5× = $[X]M maximum debt
    HIVE max: $[X]K EBITDA × 2.0× = $[X]M maximum debt
    Column6 max: $[X]K EBITDA × 2.5× = $[X]M maximum debt
  Current debt outstanding: $[X]M
  Available debt capacity: Maximum − Current = $[X]M headroom
  
COVENANT MONITORING:
  Common covenant types:
    Financial maintenance covenants (tested quarterly or monthly):
      Debt/EBITDA: Must stay below [X.X]× — Dr. Lewis monitors monthly
      DSCR: Must exceed [X.X]× — Dr. Lewis monitors monthly
      Minimum liquidity: Must maintain ≥$[X]K in cash or available LOC
    Negative covenants (restrictions on actions):
      No additional debt above approved levels without bank consent
      No material asset sales without bank consent
      No distributions if in breach of financial covenants
      Change of control: Bank consent required for any ownership change
    Reporting covenants:
      Monthly management accounts: Due [X] days after month-end
      Quarterly financial statements: Due [X] days after quarter-end
      Annual audited statements: Due [X] days after year-end
      Annual budget: Due [X] days before fiscal year-end
      
  Covenant breach protocol:
    If Dr. Lewis calculates that a covenant may be breached in the next 90 days:
      1. Alert CEO and Matt Mathison immediately (not at breach — before it)
      2. Model the scenarios: Can EBITDA improvement cure the breach? Can the debt be repaid?
      3. Contact the lender proactively to discuss a waiver or amendment (before breach, not after)
      4. Never let a covenant breach surprise the bank — proactive communication preserves the relationship
      
LINE OF CREDIT ANALYSIS:
  LOC purpose: Short-term working capital (not long-term financing)
  LOC structure: Revolving credit facility; drawn and repaid based on cash needs
  LOC availability = Total facility − Amount drawn
  Borrowing base: Some LOCs are borrowing-base limited (% of AR balance)
    Allevio: LOC may be limited by AR balance (standard for healthcare services)
    Draw authorization: Dr. Lewis + Matt Mathison (for draws >$50K)
  Monthly LOC monitoring: What is drawn? What is the availability? What is the cash balance?
```

## Output Format

```markdown
# Debt Capacity Analysis — [Entity]
**Date:** [Date] | **Prepared by:** Dr. Lewis | **Covenant test period:** [Month/Quarter]

---

## Current Leverage

| Metric | Current | Threshold/Target | Status |
|--------|---------|-----------------|--------|
| LTM EBITDA | $[X]K | — | — |
| Total debt outstanding | $[X]K | — | — |
| Debt / EBITDA | [X.X]× | <[X.X]× covenant / <[X.X]× target | ✅ / ⚠️ / 🔴 |
| DSCR (LTM) | [X.X]× | >[X.X]× covenant | ✅ / ⚠️ / 🔴 |
| Interest coverage | [X.X]× | >[X.X]× | ✅ / ⚠️ / 🔴 |
| LOC drawn | $[X]K of $[X]K facility | — | [X]% utilized |
| LOC availability | $[X]K | — | — |
| Cash on hand | $[X]K | >$[X]K minimum | ✅ / ⚠️ |

---

## Debt Capacity

| Item | Amount |
|------|--------|
| Maximum sustainable debt ([X.X]× EBITDA) | $[X]K |
| Current total debt outstanding | $[X]K |
| **Available debt capacity** | **$[X]K** |
| Current LOC availability | $[X]K |
| Total available funding | $[X]K |

---

## Covenant Compliance Summary

| Covenant | Requirement | Current | Headroom | Status |
|----------|------------|---------|---------|--------|
| Debt/EBITDA | <[X.X]× | [X.X]× | [X.X]× buffer | ✅ |
| DSCR | >[X.X]× | [X.X]× | [X.X]× buffer | ✅ |
| Minimum liquidity | >$[X]K | $[X]K | $[X]K buffer | ✅ |

**Next covenant test date:** [Date] | **Reporting due:** [Date and what]

---

## Debt Capacity Recommendation

Available for additional financing: **$[X]K**
Recommended use: [Acquisition bridge / Working capital / CapEx / Hold]
Risk: [Key risk to debt capacity — typically EBITDA decline or rate increase]
```

## Output Contract
- Lead with covenant status, not capacity — the first question in any debt analysis is whether the company is in compliance with its existing covenants; before discussing additional capacity, Dr. Lewis confirms that current covenants are met with adequate headroom; a company that is near a covenant breach cannot take on additional debt — it needs to manage down its current leverage; the capacity discussion is only relevant if current covenants are healthy
- Model forward covenant compliance — it is not enough to confirm that covenants are met today; Dr. Lewis models whether the covenants will remain met over the next 12 months based on the rolling forecast; if the forecast shows a covenant breach in 6 months, Dr. Lewis alerts the CEO and Matt Mathison now (not in 6 months); the early warning allows for covenant amendment negotiations from a position of strength rather than crisis
- LOC is working capital, not strategic capital — a line of credit is designed for short-term cash flow gaps (collections timing, payroll bridging, seasonal patterns); it should not be drawn to fund long-term investments, CapEx, or acquisitions; if a portfolio company is regularly fully drawing the LOC and not paying it down, that is a structural cash flow problem, not a temporary working capital need; Dr. Lewis distinguishes between these two situations and alerts Matt Mathison if LOC usage becomes structural
- HITL required: Dr. Lewis monitors and analyzes; CEO and Dr. Lewis authorized to draw on the LOC up to $50K; draws >$50K require Matt Mathison approval; any new debt facility, refinancing, or covenant amendment requires Matt Mathison approval + outside counsel review of the credit agreement; Dr. Lewis does not negotiate directly with lenders for facility amendments without Matt Mathison on the conversation; covenant breaches reported to Matt Mathison immediately — not after the bank calls

## System Dependencies
- **Reads from:** QuickBooks (debt balances, interest expense, principal payments — for DSCR calculation); bank statements (LOC drawn balance confirmation); credit agreements (covenant definitions, thresholds, reporting requirements — retained in SharePoint); fpa-cash-flow-model (13-week cash model — for LOC draw decisions); fpa-rolling-forecast-updater (forward EBITDA for projected covenant compliance); LTM financial statements (for DSCR and Debt/EBITDA ratios)
- **Writes to:** Covenant compliance certification (monthly — provided to bank per reporting covenant); debt capacity analysis (SharePoint/Finance/<Company>/DebtCapacity/[Date].xlsx); Matt Mathison monthly financial review (debt section); LOC draw authorization memos (when Dr. Lewis authorizes draws); credit agreement reporting package (financial statements + compliance certificate — per reporting covenant)
- **HITL Required:** Dr. Lewis monitors; CEO and Dr. Lewis jointly authorize LOC draws <$50K; Matt Mathison approves draws >$50K; all new facilities, amendments, and covenant waivers require Matt Mathison approval; covenant breach alerts to Matt Mathison immediately; Dr. Lewis does not sign any credit documents without Matt Mathison authorization

## Test Cases
1. **Golden path:** Allevio Q3 covenant compliance check → LOC balance: $85K drawn of $250K facility; Debt/EBITDA: $85K ÷ $852K LTM EBITDA = 0.10× (well below 2.5× threshold ✅); DSCR: $852K ÷ ($12K principal + $6K interest annually) = 47.3× (above 1.25× requirement ✅); interest coverage: $852K ÷ $6K interest = 142× (far above threshold ✅); minimum liquidity: $245K cash on hand vs. $100K minimum ✅; available LOC: $165K; available debt capacity: 2.5× × $852K − $85K drawn = $2.045M theoretical; Dr. Lewis assessment: "All covenants are comfortably met. LOC utilization is low ($85K of $250K). Debt capacity is substantial ($2.0M additional at 2.5× EBITDA threshold). Allevio is in excellent financial health from a leverage perspective." No action required; compliance certificate filed with the bank
2. **Edge case:** HIVE EBITDA declines due to WTI drop — Debt/EBITDA approaches covenant threshold → HIVE has $400K drawn on a term loan; EBITDA was $380K (1.05×); new WTI-adjusted EBITDA: $180K (2.22×); covenant: Debt/EBITDA <2.5×; current: 2.22× — within covenant but with only 0.28× headroom; Dr. Lewis models forward: if WTI stays at $50, next quarter EBITDA could be $120K; projected Debt/EBITDA: $400K ÷ $120K = 3.33× — breach; Dr. Lewis acts immediately: "HIVE's Debt/EBITDA ratio is projected to breach the 2.5× covenant in 90 days if WTI stays at $50. I recommend we contact the lender this week to discuss a covenant amendment or waiver before the breach occurs. The lender will be more cooperative when approached proactively than if we wait for the breach. I'm also building the HIVE cash conservation plan (CapEx freeze, distribution hold) to show the lender we're managing the situation." Matt Mathison is notified; lender conversation initiated within 3 days
3. **Adversarial:** The Column6 CEO asks to draw $180K on the LOC to fund a large campaign pre-buy (buying ad inventory in advance at a discount) → Dr. Lewis evaluates: current LOC: $200K facility; currently $0 drawn; available $200K; the campaign pre-buy will generate incremental revenue when the campaigns deliver (estimated $280K revenue on $180K inventory cost); this is a working capital bridge (buy inventory → sell to advertisers → receive payment); Dr. Lewis approves the strategic rationale but wants to confirm the advertiser commitment before the draw: "I can authorize the $180K LOC draw, but I need to confirm that the campaigns are pre-sold to advertisers before we draw on the facility — this should be a bridge to confirmed revenue, not speculative inventory. If the campaigns are sold, show me the insertion orders and I'll approve the draw. If we're buying on speculation, I'd limit the draw to $60K for the portion we're confident about and require Matt Mathison approval for the full $180K." CEO provides the signed insertion orders; Dr. Lewis approves the draw as a legitimate working capital use

## Audit Log
All covenant compliance certifications retained by period. All LOC draw authorizations retained (date, amount, Dr. Lewis approval, Matt Mathison approval where required). Annual credit agreement compliance review retained. Any covenant waiver or amendment retained permanently (with correspondence history). Debt capacity analyses retained by date. Lender communications retained.

## Deprecation
Retire when each portfolio company has a CFO who manages banking relationships and monitors covenant compliance — with Dr. Lewis reviewing the covenant compliance certificate quarterly and Matt Mathison approving any new facilities or material amendments.
