---
name: fin-ebitda-optimizer
description: "Identify and execute EBITDA improvement opportunities for MBL Partners portfolio companies. Use when the user says 'EBITDA improvement', 'improve EBITDA', 'increase EBITDA', 'EBITDA optimization', 'grow EBITDA', 'EBITDA uplift', 'EBITDA expansion', 'margin improvement', 'improve margins', 'increase margins', 'margin expansion', 'operating leverage', 'cost reduction', 'reduce costs', 'cut costs', 'expense reduction', 'revenue per employee', 'productivity improvement', 'EBITDA levers', 'what moves the EBITDA', 'improve profitability', 'profitability improvement', 'where do we make money', 'EBITDA bridge', 'EBITDA waterfall', 'EBITDA analysis', 'what is our EBITDA', 'EBITDA multiple', 'maximize exit value', or 'earnings improvement'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <Allevio|HIVE|Column6>] [--lever <revenue|cogs|opex|headcount|pricing>] [--horizon <90day|1yr|3yr>] [--action <identify|prioritize|model|track>]"
---

# Fin EBITDA Optimizer

Identify and execute EBITDA improvement opportunities across MBL Partners portfolio companies — closing the gap between current EBITDA margins and the margins that maximize entity value and LP returns. EBITDA optimization at MBL is not cost-cutting for its own sake; it is the disciplined identification of the specific actions — on revenue, pricing, cost structure, and operational efficiency — that create the most durable EBITDA improvement with the least disruption to the business. At a typical PE exit multiple of 7-9×, every $100K of EBITDA improvement is worth $700K-$900K in enterprise value.

## When to Use
- A quarterly review reveals EBITDA below plan or below target margin
- Annual value creation planning (what's the EBITDA goal for the year and how do we get there?)
- Pre-exit preparation (maximizing EBITDA in the 12-24 months before sale)
- Matt Mathison asks "what's our path to [X%] EBITDA margin?"
- A specific entity is identified as having significant EBITDA improvement potential

## EBITDA Optimization Framework

```
THE 3 EBITDA LEVERS:

  LEVER 1 — REVENUE GROWTH (highest multiple impact; hardest to sustain):
    Revenue expansion is the most powerful EBITDA lever because:
      - Revenue growth with fixed costs creates operating leverage
      - Each additional dollar of revenue above the break-even generates ~100% gross margin
      - Revenue growth is reflected in the exit multiple (growth premium)
      
    Revenue levers by entity:
      Allevio: new employer group acquisition (each group = ~$430K ARR); PMPM rate increases at renewal
      HIVE: new landowner leases; acreage expansion; production improvement
      Column6: new agency wins; holding company expansion; CPM rate improvement
      
  LEVER 2 — GROSS MARGIN IMPROVEMENT (direct to EBITDA; entity-specific):
    Allevio: claim ratio reduction (each 1% = significant EBITDA impact)
             Better claim management → clinical programs → better outcomes → lower cost
    HIVE: production cost per BOE reduction (operational efficiency; vendor negotiations)
    Column6: media cost efficiency (better DSP optimization; inventory quality)
             VCR improvement → premium pricing → CPM expansion
             
  LEVER 3 — OPERATING EXPENSE REDUCTION (clearest to calculate; lowest strategic risk):
    NOT: across-the-board cuts (destroys morale; damages customer relationships)
    YES: specific eliminations — expenses that don't generate proportionate value
    
    Process for identifying OPEX cuts:
      1. Build a full operating cost tree (every line item; by frequency; by department)
      2. For each line item: "If we eliminated this tomorrow, what specific revenue or customer would we lose?"
      3. Items with no clear revenue connection → candidates for elimination
      4. Items with unclear connections → probe for actual business value
      5. Rank by: (cost saved) / (risk to revenue or customer relationship)
      
ENTITY-SPECIFIC EBITDA IMPROVEMENT PLAYBOOKS:

  ALLEVIO — TARGET: ≥10% EBITDA MARGIN (currently ~7-9%):
  
    Highest-impact levers (in order):
      1. Claim ratio reduction: get from 89% toward 87%
         Action: clinical intervention enrollment; chronic condition management; preventive programs
         Impact: each 1% improvement in claim ratio = ~$50K-$80K EBITDA (varies with revenue)
         Timeline: 6-12 months (clinical program effects lag by 90-180 days)
         
      2. PMPM rate improvement at renewal: move from $420 toward $440-$450
         Action: demonstrate outcomes data (lower claim ratio = negotiating leverage)
         Impact: $10/PMPM × 1,020 members = $122K ARR
         Timeline: annual renewal cycle
         
      3. G&A leverage: as employer group count grows, G&A as % of revenue should decline
         G&A at 12 groups: ~$X; at 16 groups: ~$X (same G&A; more revenue)
         
  HIVE — TARGET: ≥25% EBITDA MARGIN (royalty business should have high margins):
  
    Highest-impact levers:
      1. Royalty income optimization: more acreage; better operators
         Action: targeted landowner relationship → lease conversion
         Impact: each additional acre at current royalty rate = $[X] revenue
         
      2. Production cost efficiency: negotiate vendor rates; optimize operating schedule
         Action: annual vendor review; competitive bidding for operational services
         Impact: 5% production cost reduction = $[X] EBITDA
         
      3. Overhead leverage: HIVE overhead should be minimal relative to royalty income
         Target: G&A <15% of revenue
         
  COLUMN6 — TARGET: ≥18% EBITDA MARGIN:
  
    Highest-impact levers:
      1. VCR improvement → premium CPM pricing
         Action: inventory quality; targeting optimization; viewability improvement
         Impact: each 1% VCR improvement → ~$0.50-$1.00 CPM premium → $[X] EBITDA
         
      2. Agency NRR expansion: upsell within existing agency relationships
         Action: expand from IO-by-IO to programmatic; introduce new inventory categories
         Impact: 10% expansion per agency × 8 agencies = significant NRR improvement
         
      3. DSP cost efficiency: media cost is the largest COGS; negotiate better rates
         Action: volume commitments → preferential DSP pricing; technology investment
         
EBITDA IMPROVEMENT TRACKING:

  For each identified initiative:
    Initiative: [Description]
    Expected EBITDA impact: $[X]
    Expected timeline: [When will this show up in EBITDA?]
    Current status: [Not started / In progress / Delivered]
    Actual EBITDA delivered (vs. expected): $[X]
    
  Aggregate:
    Total EBITDA improvement target: $[X]
    Total delivered to date: $[X]
    Delivery rate: [%]
```

## Output Format

```markdown
# EBITDA Optimization Plan — [Entity] — [Year]
**Prepared by:** Dr. Lewis | **Entity CEO:** [Name] | **Reviewed by:** Matt Mathison

---

## Current State vs. Target

| Metric | Current | Target | Gap | Timeline |
|--------|---------|--------|-----|---------|
| Revenue | $[X] | $[X] | $[X] | [Year] |
| EBITDA | $[X] | $[X] | $[X] | [Year] |
| EBITDA Margin | [%] | [%] | [pts] | [Year] |
| Exit value (at [N]× EBITDA) | $[X] | $[X] | $[X] | [Year] |

---

## EBITDA Improvement Initiatives

| # | Initiative | Lever | Expected impact | Timeline | Owner | Status |
|---|-----------|-------|----------------|---------|-------|--------|
| 1 | [Initiative] | [Revenue/COGS/Opex] | $[X] EBITDA | [Q/Year] | [Name] | [Status] |

**Total targeted improvement:** $[X]
**Exit value created at [N]x:** $[X]

---

## Initiative Priority Matrix

High impact / Low risk: DO FIRST
High impact / High risk: DO WITH MITIGATION
Low impact / Low risk: DO IF EASY
Low impact / High risk: DON'T DO

[Place each initiative in the matrix]
```

## Output Contract
- Exit value context is mandatory — every EBITDA improvement initiative in the MBL context should be presented with its exit value implication; a $100K EBITDA improvement sounds like a management objective; "$700K-$900K in exit value at a 7-9× multiple" is an investor-grade motivation; Dr. Lewis always frames EBITDA improvement in terms of what it means for the entity's valuation and LP returns — this is how Matt Mathison thinks about it and this is how the entity CEO should think about it
- Lever sequence: revenue first, then gross margin, then opex — the sequence matters because the levers have different profiles: revenue improvements increase the multiple; gross margin improvements are direct-to-EBITDA; opex cuts can be reversed or create cost savings that are visible in the short term but damage the business in the long term; Dr. Lewis evaluates the full lever set before recommending opex cuts; any opex cut above $50K is evaluated against its risk to revenue and customer relationships first
- Initiatives need owners with timelines — an EBITDA improvement initiative without a named owner and a specific delivery date is a list of wishes, not a plan; Dr. Lewis logs all initiatives in exec-action-tracker with a named owner (entity CEO; Dr. Lewis; specific named person) and a target delivery quarter; unowned initiatives don't get done; the quarterly portfolio review (exec-portfolio-review) includes EBITDA improvement initiative status
- HITL required: EBITDA optimization plans reviewed by Matt Mathison; any initiative involving a significant headcount reduction (>3 people) or a customer-facing service reduction requires Matt Mathison approval before execution; pricing changes at any entity require Matt Mathison awareness and entity CEO approval; the annual VCP update (exec-value-creation-plan) incorporates the EBITDA targets set in the optimization plan

## System Dependencies
- **Reads from:** fin-financial-model (current EBITDA and trajectory); fin-variance-analyzer (where are the current EBITDA gaps?); exec-value-creation-plan (VCP EBITDA targets — what did we commit to?); fin-kpi-dashboard (entity margin metrics); Allevio: fin-allevio-claim-ratio (biggest single EBITDA lever); Column6: fin-column6-media-cost (COGS lever)
- **Writes to:** EBITDA improvement plans (SharePoint → Finance → EBITDAOptimization → [Entity] → [YYYY]); exec-action-tracker (initiative owners and deadlines); exec-value-creation-plan (EBITDA targets update); exec-portfolio-review (initiative status in quarterly review); exec-exit-planning (EBITDA improvement plan feeds into exit preparation)
- **HITL Required:** EBITDA plan reviewed by Matt Mathison; headcount reductions >3 require Matt approval before execution; pricing changes require Matt awareness; VCP EBITDA target updates require Matt approval; all exit-prep EBITDA initiatives coordinated with exec-exit-planning timeline

## Test Cases
1. **Golden path:** Allevio EBITDA optimization plan — current margin 7.2%; target 10% in 18 months; gap: $285K EBITDA. Three initiatives: (1) Claim ratio: 89% → 87% via clinical program expansion — $180K EBITDA impact; 12-month timeline; owner: Allevio CEO + clinical team; (2) PMPM rate increase at October OE renewal: $420 → $432 — $122K ARR → $80K EBITDA; 10-month timeline; owner: Allevio CEO negotiates; (3) G&A leverage: headcount grows faster than G&A; no headcount reduction — natural leverage. Total: $260K targeted. Exit value impact: $260K × 7.5× = $1.95M exit value created. Matt: "The clinical program investment to get the claim ratio down is the right lever — it also creates the outcomes data we need for the PMPM renewal conversation. That's a virtuous cycle. Approve the plan."
2. **Edge case:** Entity CEO proposes a $200K cost reduction through elimination of a customer success position → Dr. Lewis: "Before I model this, I need to understand the revenue protection angle. The customer success role is directly tied to Allevio's OE renewal process — they manage 8 of the 12 employer group relationships. My question: if we eliminate this role, what happens to renewal conversations in October? If there's a clear owner for those 8 relationships, the cut may be viable. If the relationships become unowned, we're risking retention of $1.4M of ARR to save $95K — a 14:1 risk-to-savings ratio. My recommendation: don't make this cut until we have a clear plan for who owns the 8 relationships. I'll model the alternatives."
3. **Adversarial:** Matt asks for a plan that gets Allevio to 15% EBITDA margin within 12 months → Dr. Lewis: "At current revenue, getting to 15% EBITDA in 12 months would require an additional $350K in EBITDA. Let me be direct about what that would require: I can model a path to $280K (10% margin) through the claim ratio and PMPM lever. Getting to 15% in 12 months — without a significant revenue jump — would require expense cuts that I'm not confident can be made without damaging the employer group relationships or the clinical capabilities that drive the claim ratio improvement. I can build the 15% model to show you what it would require, so you can evaluate whether the operational risks are acceptable. But my honest recommendation is: 10% in 12 months is a strong result; 15% in 12 months is achievable only with risk I'd want us to consciously accept. Should I build the full 15% scenario so we can see what it costs?"

## Audit Log
All EBITDA optimization plans retained by entity and year. Initiative tracking (planned impact; actual delivery; timeline accuracy). Headcount decision documentation. Pricing change documentation. Matt Mathison approval records for significant changes.

## Deprecation
The EBITDA optimization function is a permanent element of MBL's value creation model. Retire the skill when each entity has a CFO and COO who manage operational efficiency — with Dr. Lewis providing the portfolio-level EBITDA performance view and Matt Mathison retaining approval authority for initiatives that carry operational or strategic risk.
