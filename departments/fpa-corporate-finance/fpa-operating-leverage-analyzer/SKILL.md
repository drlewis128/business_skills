---
name: fpa-operating-leverage-analyzer
description: "Analyze operating leverage and break-even dynamics for portfolio companies. Use when the user says 'operating leverage', 'break-even analysis', 'fixed vs variable costs', 'contribution margin', 'break-even point', 'margin of safety', 'how much revenue do we need', 'minimum revenue', 'fixed cost analysis', 'variable cost analysis', 'cost structure', 'step costs', 'leverage ratio', 'earnings sensitivity to revenue', 'how much does EBITDA move per dollar of revenue', 'operating gearing', 'revenue sensitivity', 'cost leverage', or 'EBITDA sensitivity to revenue'."
metadata:
  version: 1.0.0
  tier: fpa
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--scenario <current|post-hire|post-capex>] [--action <analyze|model|stress-test>]"
---

# Operating Leverage Analyzer

Analyze operating leverage and break-even dynamics for MBL portfolio companies — quantifying how a change in revenue translates to a change in EBITDA based on the current cost structure. Operating leverage is one of the most important structural characteristics of a business: high operating leverage means each additional dollar of revenue drops almost entirely to EBITDA (good when growing, dangerous when revenue declines); low operating leverage means the business has high variable costs and lower margin volatility (more resilient to revenue declines, but less margin expansion as it grows). Dr. Lewis profiles the operating leverage for each portfolio company and factors it into budgeting, stress testing, and exit modeling.

## When to Use
- Annual budget — what is the operating leverage at the planned revenue level?
- Revenue declines — how bad would EBITDA be if revenue drops 10%, 20%?
- A new hire or CapEx increases the fixed cost base — how does this change leverage?
- Exit modeling — how sensitive is EBITDA to revenue in the exit year?
- Matt Mathison asks "how much does EBITDA move if revenue misses by $X?"

## Operating Leverage Framework

```
CORE CONCEPTS:

  Variable costs: Scale proportionally with revenue
    Examples: Clinical supplies (Allevio); production taxes as % of O&G revenue (HIVE); 
              media buy costs (Column6 programmatic); contract labor
    Variable cost ratio = Variable costs ÷ Revenue
    
  Fixed costs: Remain constant regardless of revenue level (within a range)
    Examples: Rent, base salaries, SaaS subscriptions, insurance, debt service
    Fixed cost base = Total fixed costs per period
    
  Step costs: Fixed within a range, then step up at a threshold
    Examples: Clinical staff (Allevio adds a clinician when patient panel is full)
              Account managers (Column6 adds an AM when campaign count exceeds capacity)
    Step cost trigger: The revenue/volume level that forces the next step
    
  Contribution margin = Revenue − Variable costs
  Contribution margin % = Contribution margin ÷ Revenue
  
  Break-even revenue = Fixed costs ÷ Contribution margin %
  Margin of safety = (Actual revenue − Break-even revenue) ÷ Actual revenue
    This is the % by which revenue can decline before the company loses money
    
  Operating leverage = % change in EBITDA ÷ % change in revenue
    If revenue increases 10% and EBITDA increases 25%, operating leverage = 2.5×
    Higher operating leverage = more EBITDA growth from revenue growth
    Higher operating leverage = more EBITDA decline from revenue decline (the same math works both ways)
    
OPERATING LEVERAGE PROFILE BY ENTITY:

  ALLEVIO — Healthcare MSO:
    Variable costs: Clinical supplies, lab costs, contract clinical labor (~65% of PMPM rate)
    Fixed costs: Clinic lease, base clinical salaries, admin staff, billing, insurance (~$350-400K base)
    Contribution margin: 35% of PMPM revenue (rough estimate at current structure)
    Break-even: $350K fixed ÷ 35% = $1.0M revenue threshold (~980 members at $85 PMPM)
    Margin of safety at 1,180 members: ($1.21M − $1.0M) ÷ $1.21M = 17% — reasonable cushion
    Operating leverage: At current scale ~2.5× (10% revenue change = ~25% EBITDA change)
    Step cost trigger: Next clinician hire needed at ~1,400 members (current PCP panel limit ~700/FTE)
    
  HIVE PARTNERS — O&G:
    Variable costs: Production taxes, royalties, gathering/transportation (~25-30% of revenue)
    Fixed costs: Base LOE contracts, G&A, overhead (~$180-220K annual regardless of production)
    WTI price is a "fixed revenue" driver — doesn't change with volume, but production does
    Contribution margin: ~70-75% of revenue (high fixed cost structure once well is producing)
    Break-even: ~$220K fixed ÷ 75% = $293K revenue = ~4,500 BOE/year = ~12 BOE/day
    Margin of safety at ~$870K revenue: ($870K − $293K) ÷ $870K = 66% — very high
    Operating leverage: Very high — O&G has high fixed costs; most production is at 70-80% margin above LOE
    
  COLUMN6 — CTV/Media:
    Variable costs: Media buy cost (the cost of the ad inventory — 45-60% of gross revenue)
    Fixed costs: Staff (4-6 FTE), technology platform, G&A (~$800-900K annual)
    Contribution margin: 40-55% of gross revenue (depends on CTV vs. display mix)
    Break-even: ~$850K fixed ÷ 47.5% avg contribution margin = $1.79M revenue
    Margin of safety at $2.35M revenue: ($2.35M − $1.79M) ÷ $2.35M = 24% — adequate
    Operating leverage: ~3.5× (10% revenue change → ~35% EBITDA change)
    Step cost trigger: Next AM hire needed when campaign count exceeds ~15/AM capacity
    
STEP COST ANALYSIS:
  For each step cost trigger:
    Identify: What event triggers the new hire / new lease / new license?
    Quantify: What is the fully-loaded cost of the step? (use fpa-headcount-cost-modeler)
    Impact: Post-step, what is the new break-even and the new operating leverage?
    Warning timeline: 60-90 days before the trigger is reached, notify the CEO to plan the hire/cost
    
  Step cost decision rule:
    Only add a step cost (hire, new facility, major CapEx) if the revenue trajectory supports it
    Do not add a step cost based on optimistic projections alone
    The CEO must approve all step costs >$25K; Matt Mathison approves >$50K
```

## Output Format

```markdown
# Operating Leverage Analysis — [Entity]
**Period:** [Current / Post-[Event]] | **Date:** [Date] | **Prepared by:** Dr. Lewis

---

## Cost Structure

| Cost Category | Annual Amount | Type | % of Revenue |
|--------------|--------------|------|-------------|
| [Clinical labor] | $[X]K | Variable (~65%) | [X]% |
| [Clinical supplies] | $[X]K | Variable | [X]% |
| [Base salaries] | $[X]K | Fixed | [X]% |
| [Rent] | $[X]K | Fixed | [X]% |
| [SaaS + insurance] | $[X]K | Fixed | [X]% |
| **Total variable costs** | **$[X]K** | | **[X]%** |
| **Total fixed costs** | **$[X]K** | | **[X]%** |
| **Total costs** | **$[X]K** | | **[X]%** |

---

## Break-Even Analysis

| Metric | Value |
|--------|-------|
| Contribution margin % | [X]% |
| Fixed cost base | $[X]K |
| **Break-even revenue** | **$[X]K** |
| Current LTM revenue | $[X]K |
| **Margin of safety** | **[X]%** |

*Revenue can decline by [X]% before the company reaches breakeven.*

---

## Operating Leverage Analysis

| Revenue Change | EBITDA Change | Operating Leverage |
|--------------|--------------|-------------------|
| +20% (+$[X]K) | +[X]% (+$[X]K) | [X.X]× |
| +10% (+$[X]K) | +[X]% (+$[X]K) | [X.X]× |
| −10% (−$[X]K) | −[X]% (−$[X]K) | [X.X]× (downside) |
| −20% (−$[X]K) | −[X]% (−$[X]K) | [X.X]× (downside) |

---

## Step Cost Alert (if approaching a trigger)

| Step Cost | Trigger | Current Level | Months to Trigger | Cost |
|-----------|---------|--------------|-----------------|------|
| [Next clinician hire] | [1,350 members] | [1,180 members] | [~8 months] | $[X]K |
| [Next AM hire] | [55 campaigns/mo] | [42 campaigns/mo] | [~6 months] | $[X]K |

**Action:** Alert CEO at [N] months before trigger; confirm hire plan at trigger minus 60 days.
```

## Output Contract
- Operating leverage is a double-edged sword — Dr. Lewis presents operating leverage as the amplifier it is: the same high operating leverage that creates 35% EBITDA growth from 10% revenue growth also creates 35% EBITDA decline from 10% revenue loss; the board and Matt Mathison must understand both sides; a business with 4× operating leverage is exciting in a bull case and alarming in a bear case; Dr. Lewis always shows both directions in the operating leverage table
- Break-even is the most important number for small businesses — for Allevio and Column6, which are not yet at scale, the break-even revenue is the survivability threshold; Dr. Lewis keeps the break-even calculation current and monitors the margin of safety; a margin of safety below 15% triggers a cost structure review; below 10% is a serious risk flag; the CEO needs to know how far above break-even the business is operating at all times
- Step costs change the structure — every time Allevio adds a clinician or Column6 adds an AM, the fixed cost base increases by $75-150K; this lowers the margin of safety and changes the operating leverage profile for the next revenue range; Dr. Lewis updates the operating leverage analysis any time a step cost is added; the CEO needs to understand that adding a new hire immediately reduces the margin of safety until revenue grows to absorb the new fixed cost
- HITL required: Dr. Lewis builds and maintains the analysis; CEO reviews the break-even and step cost trigger with awareness of the operational plan; step cost decisions (adding a clinician, an AM) require CEO approval + Dr. Lewis review; any step cost >$50K requires Matt Mathison awareness; Dr. Lewis presents the updated operating leverage analysis after any material step cost addition and at each board meeting

## System Dependencies
- **Reads from:** QuickBooks detailed P&L (to classify each expense as variable or fixed); fpa-headcount-cost-modeler (fully-loaded step cost calculations); fpa-cost-structure-analyzer (primary input — operating leverage analysis is the output of the cost structure work); fpa-unit-economics-modeler (per-unit variable cost data); fpa-rolling-forecast-updater (to model forward revenue against the break-even threshold); current headcount plan (for step cost trigger timing)
- **Writes to:** Operating leverage analysis (SharePoint/Finance/<Company>/CostStructure/[Date]_OperatingLeverage.xlsx); board financial package (cost structure section); annual budget (operating leverage context for the budget year); Matt Mathison monthly portfolio summary (margin of safety alert when <15%); step cost alerts (to CEO — 60-90 days before trigger)
- **HITL Required:** Dr. Lewis analyzes; CEO reviews and approves the cost structure classification (some costs are hybrid — Dr. Lewis categorizes conservatively as fixed when uncertain); step cost addition decisions (new hires, new capacity) require CEO + Dr. Lewis approval; Matt Mathison informed when margin of safety drops below 15%; Dr. Lewis does not approve step costs — the CEO does, with Dr. Lewis providing the operating leverage impact analysis

## Test Cases
1. **Golden path:** Allevio operating leverage analysis at current 1,180 members → Variable costs: clinical labor $485K (65% of $746K clinical revenue), supplies $45K; Fixed costs: admin staff $185K, clinic lease $84K, billing $36K, Dr. Lewis FP&A fee $48K, insurance $22K, SaaS $15K = $390K fixed; Contribution margin: ($1.21M − $530K variable) ÷ $1.21M = 56.2%; Break-even: $390K ÷ 56.2% = $694K = 681 members; Margin of safety: ($1.21M − $694K) ÷ $1.21M = 43% — excellent; Operating leverage: test 10% revenue decline: Revenue −$121K; EBITDA impact: −$68K (variable costs also decline by $68K; fixed costs unchanged); −$121K revenue × 56.2% CM = −$68K EBITDA; EBITDA at −10% revenue: $852K − $68K = $784K; leverage ratio: (−8%/$852K) ÷ (−10%/$1.21M) = 0.8× (at this scale, fixed costs are 32% of revenue — actually has modest leverage); Step cost alert: next clinician at 1,350 members; current 1,180 = ~7 months away at current growth rate; alert CEO to begin search process in 3 months
2. **Edge case:** Column6 loses a major account (−$350K annual revenue, −$29K/month) → Dr. Lewis immediately calculates the operating leverage impact: variable costs decline: $350K × (1 − 0.475 contribution margin) = $184K variable cost reduction; fixed cost unchanged at $850K; EBITDA impact: −$350K revenue + $184K variable cost savings = −$166K EBITDA; Column6 EBITDA drops from $280K to $114K; margin of safety was 24% — now: ($2.0M − $1.79M break-even) ÷ $2.0M = 10.5% (dangerously close to the <15% alert threshold); Dr. Lewis alerts CEO and Matt Mathison: "Losing the $350K account drops Column6's EBITDA from $280K to $114K and reduces our margin of safety to 10.5% — below the 15% alert level. We need to replace $350K of revenue within 2 quarters or consider a cost restructuring. The AM headcount is now over-staffed relative to the campaign count. I recommend: (1) freeze all new hires until revenue recovers; (2) CEO-level client retention review this week on the 3 next-largest accounts; (3) I'll rebuild the rolling forecast with and without replacement revenue." Matt Mathison receives the update
3. **Adversarial:** The CEO adds a new senior AM at $120K salary without informing Dr. Lewis, citing a great candidate opportunity → Dr. Lewis learns about the hire after the offer is signed: "I understand the hire is done and I'll fully support the onboarding. For future reference: this $120K salary (fully-loaded $150K with taxes and benefits) increases our fixed cost base and lowers the column6 margin of safety from 24% to 17.6%. It also changes our break-even revenue from $1.79M to $1.95M — which means we need $160K more revenue just to maintain the same EBITDA we have today. I need to be in the loop before offers are extended so I can model the operating leverage impact and flag any timing concerns. Going forward, any hire >$75K fully-loaded requires my review before the offer, per the approval matrix." Issue is corrected for future hires; Dr. Lewis updates the operating leverage analysis immediately

## Audit Log
All operating leverage analyses retained by entity and date. Step cost trigger alerts retained (date sent, metric level, response from CEO). Break-even calculation history retained (to show trend of margin of safety over time). Post-step-cost operating leverage updates retained. Board presentation cost structure slides retained.

## Deprecation
Retire when each portfolio company has a CFO who performs the monthly cost structure review — with Dr. Lewis reviewing the operating leverage profile annually and presenting the break-even and margin of safety to Matt Mathison in the board package.
