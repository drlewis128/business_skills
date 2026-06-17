---
name: fpa-distribution-decision-modeler
description: "Model and support distribution decisions for PE portfolio companies. Use when the user says 'distribution', 'distribution analysis', 'can we distribute', 'take money out', 'cash distribution', 'dividend', 'return capital', 'LP distribution', 'investor distribution', 'distributable cash', 'excess cash', 'can we pay a dividend', 'equity distribution', 'profit distribution', 'is the company ready to distribute', 'distribution policy', 'how much can we distribute', 'distribution threshold', 'return of capital', or 'cash to investors'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--amount <$>] [--purpose <interim|annual|exit>] [--action <analyze|model|recommend>]"
---

# Distribution Decision Modeler

Model and support distribution decisions for MBL Partners portfolio companies — determining when a portfolio company has sufficient cash above its operating reserve to distribute to MBL Partners, and providing the financial analysis for Matt Mathison's distribution authorization. Distributions are the mechanism by which the PE portfolio returns cash to the fund and, ultimately, to LPs. They improve DPI (Distributed to Paid-In) and reduce the hold period risk for LP capital. However, distributions must not impair the company's ability to operate, grow, and meet its financial obligations. Dr. Lewis is the gatekeeper for distribution eligibility; Matt Mathison makes the distribution decision.

## When to Use
- A portfolio company is generating sustained cash surplus — evaluate distribution eligibility
- Matt Mathison asks "can we take a distribution from [company]?"
- Annual financial planning — model expected distributions for the year
- A portfolio company reaches the >90 days cash reserve threshold
- LP report preparation — what distributions have been made? What is DPI?
- Pre-exit — what distributions can be made before a sale process (to improve LP returns)?

## Distribution Decision Framework

```
DISTRIBUTION ELIGIBILITY CRITERIA (ALL must be met):

  1. CASH THRESHOLD:
     Company must have >90 days of operating expenses in cash AFTER the distribution
     Operating expenses (monthly) = Fixed costs + Average variable costs
     Minimum cash reserve = 90 days × monthly operating expenses
     Distribution amount = Available cash − Minimum cash reserve − LOC paydown (if any)
     NEVER distribute below 90 days operating reserve
     
  2. COVENANT COMPLIANCE:
     All bank covenants must be in compliance (Debt/EBITDA, DSCR, minimum liquidity)
     The distribution must not cause a covenant breach (check: post-distribution covenant ratios)
     If the credit agreement requires bank consent for distributions above a certain amount: obtain consent
     
  3. ROLLING FORECAST POSITIVE:
     The 12-month rolling forecast must show the company remaining cash-positive after the distribution
     Dr. Lewis stress-tests: Does the Bear case forecast maintain 30+ days reserve after distribution?
     If the Bear case shows cash below 30 days within 12 months post-distribution: Do not distribute
     
  4. NO OPEN MATERIAL ISSUES:
     No active covenant breach discussions with the lender
     No pending litigation or regulatory matter that could result in a material cash claim
     No known customer cancellation that would materially impact cash generation
     
  5. MATT MATHISON APPROVAL:
     All distributions require Matt Mathison authorization — no exceptions
     Dr. Lewis provides the analysis; Matt Mathison makes the decision
     
DISTRIBUTION SIZING MODEL:
  Cash on hand: $[X]K
  Minimum reserve (90 days operating): $[X]K
  LOC balance to pay down first (if any): $[X]K (best practice: pay down LOC before distributing)
  Available for distribution = Cash − Reserve − LOC paydown = $[X]K
  
  Conservative distribution: 75% of available (leave 25% buffer for unexpected items)
  Full distribution: 100% of available (only when Bear case is strong and runway is comfortable)
  
DISTRIBUTION TYPES:
  Interim distribution: Made during the hold period when cash exceeds the threshold
    Improves DPI and LP returns during the hold
    Amount is based on the distribution model
    
  Annual distribution: End-of-year distribution based on the annual financial results
    Typically made after the annual audit is complete (if applicable)
    
  Recapitalization distribution: Refinancing the company at higher leverage and distributing the proceeds
    Requires bank financing — banks consent; Matt Mathison approves the transaction
    Increases DPI without a sale; increases leverage risk
    Only appropriate when the company's EBITDA trajectory strongly supports the additional debt
    
  Pre-exit distribution: A final distribution before the sale process
    Reduces the company's cash position (buyer will want adequate working capital at close)
    Must leave the company with at least the NWC peg at close
    Must be reviewed by outside counsel in the context of the pending sale
    
DPI TRACKING:
  DPI = Cumulative distributions received by MBL ÷ Equity invested at entry
  Each distribution increases DPI
  Current DPI by company:
    Allevio: $[X] distributed ÷ $2.4M invested = [X.X]× DPI
    HIVE: $[X] distributed ÷ $0.5M invested = [X.X]× DPI
    Column6: $[X] distributed ÷ $1.0M invested = [X.X]× DPI
  Fund DPI = Total distributions ÷ Total equity invested across all companies
```

## Output Format

```markdown
# Distribution Analysis — [Entity]
**Analysis date:** [Date] | **Prepared by:** Dr. Lewis | **Decision required from:** Matt Mathison

---

## Distribution Eligibility Check

| Criterion | Required | Current | Status |
|-----------|---------|---------|--------|
| Cash after distribution (90 days reserve) | >$[X]K | $[X]K | ✅ / ❌ |
| Debt/EBITDA post-distribution | <[X]× | [X]× | ✅ / ❌ |
| DSCR post-distribution | >[X]× | [X]× | ✅ / ❌ |
| 12-month Bear case cash | >30 days reserve | [X] days | ✅ / ❌ |
| Open material issues | None | [None / See issues] | ✅ / ❌ |

**All criteria met:** ✅ ELIGIBLE / ❌ NOT ELIGIBLE (reason: [criterion failed])

---

## Distribution Sizing

| Item | Amount |
|------|--------|
| Cash on hand | $[X]K |
| Minimum operating reserve (90 days) | ($[X]K) |
| LOC paydown (recommended first) | ($[X]K) |
| **Available for distribution** | **$[X]K** |
| **Recommended distribution (75%)** | **$[X]K** |
| **Maximum distribution (100% of available)** | **$[X]K** |

---

## Post-Distribution Projections

| Metric | Before Distribution | After Recommended Distribution |
|--------|--------------------|---------------------------------|
| Cash on hand | $[X]K | $[X]K |
| Cash runway | [N] days | [N] days (still >90 days) |
| Debt/EBITDA | [X]× | [X]× (unchanged — no debt change) |
| 12-month Bear case ending cash | $[X]K | $[X]K (>30 days reserve) |

---

## Recommendation

**ELIGIBLE — Recommend distribution of $[X]K**
Authorization required: **Matt Mathison**

**Impact on fund returns:**
- Equity invested: $[X]M
- Prior distributions: $[X]K (DPI [X.X]×)
- This distribution: +$[X]K
- Cumulative DPI after distribution: [X.X]×
- TVPI impact: Improves DPI by [X.X]×; RVPI unchanged
```

## Output Contract
- Never compromise the operating reserve — the 90-day minimum reserve is the non-negotiable threshold for distribution eligibility; no distribution is authorized if it would bring the cash balance below 90 days operating reserve; this is a hard rule, not a guideline; business needs are sometimes used to argue for exceptions ("we'll bring in the distribution next month when collections come in") — this is exactly the reasoning that leads to cash crises; the 90-day reserve is maintained first, always; the distribution happens only after the reserve is secured
- DPI improvement is real but not everything — distributions improve DPI (and LP satisfaction) and represent tangible capital returned; however, taking a distribution that impairs the company's ability to grow and exit at a higher value is a net negative for LP returns; a $200K distribution today vs. a $500K improvement in exit value (from investing that $200K in growth) is the wrong trade; Dr. Lewis models both: the financial impact of the distribution today vs. the financial impact of investing the cash in the business; Matt Mathison makes the decision with both analyses available
- Stress-test the Bear case — the Bear case forecast is the most important distribution check: the company must be able to survive its own Bear case with the post-distribution cash position; a company that barely meets the 90-day reserve under the Base case but falls below it in the Bear case should not distribute until the Bear case is more comfortable; Dr. Lewis never recommends a distribution that requires the Base case to hold in order to be safe
- HITL required: Dr. Lewis models and recommends; Matt Mathison authorizes all distributions — no exceptions; the CEO can request a distribution analysis, but the CEO cannot authorize a distribution from their own company; the distribution is a return of capital to MBL Partners, and that decision belongs to Matt Mathison; wire transfer of the distribution: per the wire authorization policy (any wire from a portfolio company to MBL requires Dr. Lewis + Matt Mathison authorization)

## System Dependencies
- **Reads from:** Bank account (current cash balance — confirmed from bank portal, not QuickBooks estimate); fpa-cash-runway-modeler (cash runway and 90-day reserve calculation); fpa-rolling-forecast-updater (12-month Bear case forecast for the stress test); fpa-debt-capacity-analyzer (covenant compliance check post-distribution); fpa-irr-model-builder (DPI calculation and impact on fund returns); credit agreement (distribution restrictions and bank consent requirements)
- **Writes to:** Distribution analysis and recommendation (SharePoint/Finance/MBL/Distributions/[Date]_[Entity]_DistributionAnalysis.pdf); Matt Mathison authorization memo (requires his sign-off before any wire is initiated); distribution record (SharePoint/Finance/MBL/Distributions/DistributionLog.xlsx — all distributions by date, amount, entity, authorization); LP report DPI update (after each distribution); bank wire authorization (per wire policy — Dr. Lewis + Matt Mathison)
- **HITL Required:** Dr. Lewis models; Matt Mathison authorizes; wire transfer requires both Dr. Lewis and Matt Mathison authorization; Dr. Lewis does not initiate a distribution wire without Matt Mathison's explicit written authorization; bank wire for distribution: phone verification call between Dr. Lewis and Matt Mathison required per the wire policy (fpa-wire-authorization)

## Test Cases
1. **Golden path:** Allevio cash at $315K; monthly operating expenses $60K; 90-day reserve = $180K; available = $315K − $180K = $135K; LOC balance $0 (no LOC paydown needed); recommended (75%) = $101K; Dr. Lewis checks covenants: post-distribution Debt/EBITDA = $0 ÷ $852K = 0.0× (no debt) ✅; Bear case (Allevio loses its largest group — 285 members): 12-month Bear cash projects to $145K ($145K > $180K reserve? — wait, $145K is below $180K minimum in the Bear case); Dr. Lewis revises: "Allevio is eligible for a distribution, but the Bear case (loss of largest employer group) projects cash below the 90-day reserve in the Bear case. I recommend a smaller distribution of $60K (vs. the $101K available) — this leaves $255K cash ($180K reserve + $75K buffer) which keeps the Bear case above the threshold." Matt Mathison reviews; approves $60K; wire authorized by Dr. Lewis + Matt Mathison
2. **Edge case:** HIVE has high cash ($185K) but WTI is at $51 (near stress trigger) → Distribution eligibility check: cash $185K; monthly operating at $51 WTI ≈ $45K; 90-day reserve = $135K; available = $50K; Bear case ($48 WTI): monthly cash burn −$22K; 12-month Bear case cash = $185K − ($22K × 12) = $185K − $264K = −$79K (BELOW ZERO); Distribution eligibility: ❌ NOT ELIGIBLE — Bear case shows negative cash within 12 months; Dr. Lewis recommendation: "HIVE does not qualify for a distribution at current WTI levels ($51). In the Bear case ($48 WTI), HIVE burns through all cash in 8.4 months. We need WTI to recover to at least $60 and sustained for 2+ months before the Bear case supports a distribution. I recommend holding the HIVE cash as a liquidity reserve and revisiting the distribution analysis when WTI recovers." Matt Mathison concurs; no distribution
3. **Adversarial:** Column6 CEO requests a $75K "bonus distribution" to the CEO personally (above their salary) as a performance incentive, styled as a "profit distribution" → Dr. Lewis evaluates: a distribution to an individual employee (vs. the equity owner MBL Partners) is not an equity distribution — it is compensation; Dr. Lewis responds: "A payment to you personally styled as a 'profit distribution' is actually compensation — it should be processed through payroll, not as an equity distribution, for both tax and accounting reasons. It would also require approval as a salary or bonus per the compensation approval matrix ($75K > $50K = CEO + Dr. Lewis + Matt Mathison approval). If you'd like to propose a performance bonus, let's structure it through the proper compensation process. The distribution mechanism is reserved for equity capital returned to MBL Partners as the equity owner." Issue corrected; the CEO is directed to the compensation approval process; Dr. Lewis documents the mislabeled payment request

## Audit Log
All distribution analyses retained with eligibility check documentation. All Matt Mathison authorization records retained permanently. All distribution wires retained (amount, date, authorization, confirmation). Distribution log maintained cumulatively (all distributions by company by date). DPI calculation updated after each distribution. LP report DPI tracking retained. Any declined distribution analysis retained (with reason).

## Deprecation
Retire when MBL Partners has a portfolio management process where the CFO or controller models distribution eligibility — with Dr. Lewis reviewing the analysis and Matt Mathison authorizing all distributions regardless of who models the eligibility.
