---
name: fpa-capital-allocation-modeler
description: "Model and recommend capital allocation decisions across portfolio companies. Use when the user says 'capital allocation', 'where to invest', 'investment priority', 'allocate capital', 'which company gets the money', 'portfolio investment decision', 'return on capital', 'ROIC', 'capital deployment', 'reinvestment decision', 'investment return', 'where should we put the money', 'best use of capital', 'capital priorities', 'resource allocation', 'investment framework', 'portfolio-level investment', 'capital committee', or 'where to deploy capital'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--decision <description>] [--amount <$>] [--options <N>] [--horizon <years>] [--action <model|recommend|present>]"
---

# Capital Allocation Modeler

Model capital allocation decisions for MBL Partners — evaluating competing uses of capital across portfolio companies and recommending where each dollar creates the most value. Capital allocation is the highest-leverage financial decision Matt Mathison and Dr. Lewis make: investing in the right place compounds; investing in the wrong place consumes capital that could have been working harder elsewhere. Every dollar allocated to a low-return use is a dollar not compounding at the best available return. Dr. Lewis models capital allocation decisions with IRR, MOIC, and payback — and recommends based on the Bear case, not the Base case.

## When to Use
- Any capital deployment decision >$25K (requires Matt Mathison involvement per approval matrix)
- Portfolio-level capital allocation: which company should receive the next growth investment?
- CapEx decisions: does the return justify the outlay?
- Acquisition financing: how should MBL fund an add-on acquisition (debt vs. equity vs. cash)?
- Distribution decisions: should MBL distribute cash or reinvest it into the portfolio?
- M&A evaluation: what return does a potential acquisition produce at various entry prices?

## Capital Allocation Framework

```
Return on Investment metrics (use all three — they tell different parts of the story):

  MOIC (Multiple on Invested Capital):
    Formula: Total value returned ÷ Capital invested
    What it answers: How many times did we get our money back?
    Limitation: Does not account for how long the capital was deployed
    Target for PE portfolio investments: >2.0× MOIC
    Target for CapEx decisions: >1.5× MOIC over useful life
    
  IRR (Internal Rate of Return):
    Formula: =XIRR(cash flows, dates)
    What it answers: What is the annualized return on the capital?
    Limitation: Assumes reinvestment of cash flows at the IRR rate (often unrealistic)
    Target for PE investments: >20% IRR
    Target for CapEx decisions: >15% IRR
    
  Payback period:
    Formula: Capital invested ÷ Annual incremental cash flow generated
    What it answers: How many months/years to recover the investment?
    Target for operational investments: <24 months
    Target for major CapEx: <48 months
    
Opportunity cost framing (always apply):
  Every capital allocation decision competes against alternatives
  Alternative 1: Deploy capital elsewhere in the portfolio (what return does Company X generate vs. Company Y?)
  Alternative 2: Hold cash in money market (currently ~5% risk-free rate)
  Alternative 3: Reduce debt (known return = the interest rate saved)
  Alternative 4: Return capital to LPs (when the best internal investments are below the cost of capital)
  
  Decision rule: Deploy capital to the highest risk-adjusted return opportunity
  Adjust for risk: A higher-return opportunity in a more uncertain business is not necessarily better
  
Capital allocation decision types:

  TYPE 1 — Growth Investment (revenue-generating):
    Hiring above plan to support growth
    Marketing/sales investment to acquire customers
    New service or product launch
    Return calculation: Incremental revenue × Gross margin − Investment ÷ Investment
    Risk: Revenue may not materialize (use probability-weighted scenarios)
    
  TYPE 2 — Operational CapEx (cost-reduction):
    Technology investment that reduces manual labor
    Equipment upgrade that reduces LOE at HIVE
    System upgrade that eliminates a manual process
    Return calculation: Annual cost savings ÷ Investment = simple payback
    Risk: Cost savings may not fully materialize or take longer to realize
    
  TYPE 3 — Acquisition / Add-on (portfolio expansion):
    Acquisition of a business (Allevio add-on, HIVE acreage purchase, Column6 channel buy)
    Return calculation: Full LBO/acquisition model (fpa-financial-model-builder with M&A overlay)
    Risk: Integration complexity, synergy achievement, multiple contraction at exit
    
  TYPE 4 — Distribution (returning capital to LPs):
    When: No internal investment opportunity meets the return threshold
    When: Portfolio company is generating excess cash above the operating reserve
    Distribution model: Distribution waterfall (per LP agreement)
    Risk: Re-deploying insufficient capital for unforeseen needs (always maintain minimum cash)
    
Portfolio company ranking (capital prioritization):
  Rank each portfolio company on: Return on capital deployed, Unit economics trajectory, 
  Execution track record, Stage of value creation (early = higher return potential; late = lower)
  Current ranking guidance (update quarterly):
    Allevio: High growth potential; PMPM-based model with strong LTV/CAC; HIPAA constraint
    HIVE: Commodity price exposure limits return predictability; WTI breakeven is the key risk
    Column6: Revenue diversification benefit; programmatic margin at risk from market pricing pressure
```

## Output Format

```markdown
# Capital Allocation Analysis — [Decision Topic]
**Amount under evaluation:** $[X]K | **Decision required by:** [Date]
**Prepared by:** Dr. Lewis | **Matt Mathison review required:** ✅ (>$25K)

---

## Competing Uses of Capital

| Option | Investment | IRR | MOIC | Payback | Risk | Recommendation |
|--------|-----------|-----|------|---------|------|---------------|
| [Option A — Growth hire] | $[X]K | [X]% | [X.X]× | [N] mo | Medium | ✅ |
| [Option B — CapEx] | $[X]K | [X]% | [X.X]× | [N] mo | Low | ⚠️ |
| [Option C — Hold cash] | $[X]K | ~5% | 1.0× | 12 mo | Very Low | Alternative |
| [Option D — Debt reduction] | $[X]K | Prime+2% | 1.0× | Immediate | Very Low | Alternative |

---

## Recommended Option: [Option A]

**Investment:** $[X]K | **Bear case IRR:** [X]% | **Base case IRR:** [X]% | **MOIC:** [X.X]× (base)

**Investment thesis:** [2-3 sentences: why this use of capital creates the most value]

**Bear case outcome:** If revenue assumptions don't materialize: [EBITDA impact]; cash still positive at [X]K; investment can be stopped/reversed at [trigger point]

**Payback trigger:** [Specific metric that confirms the investment is working]

---

## Opportunity Cost

If $[X]K is deployed to [Option A] instead of [Option C — hold cash], the net benefit is:
[Option A IRR] − 5% risk-free = [X]% excess return on $[X]K = $[X]K additional value per year (base case)

---

## Matt Mathison Approval Brief

**Capital allocation decision — $[X]K:** Recommend deploying to [Option A]. Base case IRR [X]%; MOIC [X.X]×; payback [N] months. Bear case [outcome]. Next-best alternative: [Option D at X%]. Decision required by [date] to [reason]. Recommend: approve.
```

## Output Contract
- Base the decision on the Bear case — the capital allocation recommendation is based on the Bear case outcome, not the Base case; the Base case tells you how much you can make; the Bear case tells you whether you can afford to be wrong; Dr. Lewis recommends capital deployment only when the Bear case outcome is acceptable (positive cash, covenants maintained, no survival risk); he presents the Base case to show the upside and the Bear case as the floor; a decision that is only justified by the Base case or Bull case is a speculative investment, and Dr. Lewis labels it as such
- Opportunity cost is always explicit — the recommendation is not complete if it only shows the return on the proposed investment; it must also show the next-best alternative and quantify the difference; if deploying $50K into Allevio hiring yields a 25% IRR and holding the cash in a money market yields 5%, the opportunity cost of not hiring is 20% × $50K = $10K per year; this framing makes the decision concrete and defensible to Matt Mathison and the board
- Portfolio-level thinking — individual decisions are evaluated in the context of the whole portfolio; deploying capital into HIVE during a period of WTI uncertainty (low confidence Bear case) while Allevio has unmet growth capital needs (high-confidence investment opportunity) is a portfolio-level error; Dr. Lewis maintains a simple capital prioritization ranking (above) and updates it quarterly; the ranking is the tiebreaker when two investments have similar returns
- HITL required: Dr. Lewis builds the model and recommendation; CEO reviews the entity-level recommendation; Matt Mathison approves all capital deployments >$25K per the approval matrix; distributions >$50K require Matt Mathison approval; acquisitions require Matt Mathison + outside counsel review; no capital deployment begins before Matt Mathison approval is received in writing (email or signed memo)

## System Dependencies
- **Reads from:** Cash position (QuickBooks); LOC availability (bank statement); financial model for each entity (fpa-financial-model-builder); unit economics (fpa-unit-economics-modeler); scenario analysis (fpa-scenario-planner); approval matrix (fin-ops-approval-matrix-manager); distribution waterfall (LP agreement); IRR/MOIC models (fpa-irr-model-builder)
- **Writes to:** Capital allocation memo (SharePoint/Finance/MBL/CapitalAllocation/[Decision]_[Date].pdf); Matt Mathison decision brief; board financial package (capital allocation section, quarterly); investment register (tracking all deployed capital and realized returns); distribution records (when applicable)
- **HITL Required:** Dr. Lewis models; CEO reviews; Matt Mathison approves >$25K; Matt Mathison + outside counsel for acquisitions; no action before written approval; post-investment tracking of actual vs. modeled returns (accountability)

## Test Cases
1. **Golden path:** Allevio wants to hire a dedicated sales person at $75K base + recruiting costs (~$95K fully loaded) → Dr. Lewis models three options: (A) approve the hire, (B) continue with CEO-led sales (no incremental cost), (C) outsource to a fractional BD resource at $3K/month; Option A: if the hire closes 3 employer groups in Year 1 (Bear), each with 50 members at $85 PMPM: incremental revenue $153K, gross margin $54K, net of salary = −$41K Year 1 (investment year), +$54K Year 2+; IRR 28%; MOIC 3.2× over 3 years; payback 22 months; Option B: CEO can close 1-2 groups/year (opportunity cost: 1 group/year lost); Option C: fractional BD at $36K/year; Dr. Lewis recommends Option A with a 24-month payback milestone: "If the hire has not closed 3 groups by Month 18, we revisit the investment"; Matt Mathison approves Option A with the payback trigger documented
2. **Edge case:** MBL has $300K of excess cash — should it distribute, reinvest in the portfolio, or hold? → Dr. Lewis models all three: Distribution: $300K × LP distribution waterfall = [X]% to LPs; Reinvestment: which portfolio company has the best risk-adjusted return? (Allevio hiring program at 25% IRR; HIVE well completion at 18% IRR but high commodity risk); Hold: money market at 5% APY = $15K/year; Dr. Lewis recommends: distribute $150K (maintaining 90 days of operating reserve across the portfolio); reinvest $100K in Allevio hiring program (highest risk-adjusted return); hold $50K as buffer; Matt Mathison reviews the distribution memo and approves; distribution executed per LP waterfall
3. **Adversarial:** The HIVE operator proposes a $200K well completion — "the IRR is 35%" → Dr. Lewis examines the operator's model: the 35% IRR assumes $67/bbl WTI flat for 20 years, which is unrealistic; Dr. Lewis re-runs at Bear WTI ($50/bbl) for the first 5 years: IRR drops to 12%; at $45/bbl (below stress protocol), IRR is negative in Year 1; MOIC at Bear: 1.6× (below MBL's 2.0× threshold); Dr. Lewis presents to Matt Mathison: "The operator's 35% IRR uses an unrealistic flat WTI assumption. At our Bear case ($50/bbl for 5 years), IRR is 12% and MOIC is 1.6× — below our 2.0× threshold. Recommend decline unless we can structure a WTI floor or reduce the $200K capital commitment." Matt Mathison declines the investment as proposed; Dr. Lewis communicates back to the operator with the specific return threshold required

## Audit Log
All capital allocation decisions retained with model files and rationale. Approval records retained (CEO review, Matt Mathison approval). Distribution records retained (per LP agreement requirements). Post-investment return tracking (actual vs. modeled — checked at 12 months, 24 months, 36 months). Portfolio capital prioritization ranking updated quarterly.

## Deprecation
Retire when MBL Partners has a dedicated investment professional managing capital allocation — with Dr. Lewis contributing the operational financial model and Matt Mathison approving all deployments above $25K.
