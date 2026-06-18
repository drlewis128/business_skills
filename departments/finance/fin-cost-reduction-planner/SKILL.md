---
name: fin-cost-reduction-planner
description: "Plan and execute entity cost reduction initiatives with THRIVE filter. Use when the user says 'cost reduction', 'cut costs', 'reduce costs', 'cost cutting', 'cost savings', 'cost optimization', 'reduce expenses', 'lower expenses', 'expense reduction', 'opex reduction', 'trim the budget', 'tighten the budget', 'find savings', 'identify savings', 'cost analysis', 'quick wins', 'cost efficiency', 'eliminate waste', 'reduce burn', 'cash conservation', 'cost rationalization', 'cost restructuring', 'headcount reduction', 'layoff planning', 'RIF', 'reduction in force', 'vendor renegotiation', 'renegotiate vendors', 'vendor rationalization', 'reduce vendor spend', 'cancel subscriptions', 'software rationalization', 'SaaS rationalization', 'overhead reduction', 'structural cost', 'one-time cost', 'cost initiative', or 'find efficiencies'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--target <dollar-amount>] [--action <analyze|plan|execute|track>] [--focus <quick-wins|headcount|vendor|structural|all>] [--timeline <30-days|90-days|annual>]"
---

# Fin Cost Reduction Planner

Plan and execute entity cost reduction initiatives with THRIVE filter — identifying, sizing, and prioritizing cost reduction opportunities across the MBL portfolio, ensuring every cost reduction is evaluated for its THRIVE alignment (particularly the Integrity and Value filters), and tracking actual savings against targets. Cost reduction is not inherently THRIVE-aligned: cutting costs that damage quality, hurt employees unfairly, or destroy value in service of short-term EBITDA is a THRIVE failure. The framework distinguishes between eliminating waste (always good), renegotiating value-for-money (good), reducing quality to save money (bad), and cutting people thoughtlessly (THRIVE violation). EBITDA improvement through cost reduction must be genuine and sustainable, not accounting magic.

## When to Use
- Entity EBITDA is below target and cost lever is being considered
- A specific budget line is being reviewed for rationalization
- Vendor contracts are up for renewal (proactive renegotiation)
- Matt Mathison asks for a cost reduction plan for an entity
- Pre-exit EBITDA optimization (with disclosure — this is not hiding costs)

## Cost Reduction Framework

```
THRIVE FILTER FOR COST REDUCTION:

  BEFORE ANY COST REDUCTION:
    T (Truth): Is the cost reduction solving a real problem, or manufacturing short-term EBITDA?
    H (Hustle): Are we applying real effort to find the right savings, not the easy ones?
    R (Respect): Does this reduction treat vendors, employees, and customers with respect?
    I (Integrity): Is this an honest improvement in efficiency, not a cut that creates hidden costs later?
    V (Value): Does the cost reduction preserve or improve the value delivered?
    E (Enjoy): Can the team implement this without morale damage?
    
  RED FLAGS (THRIVE violations):
    Cutting customer-facing quality to reduce EBITDA (integrity + value)
    Laying off employees for short-term EBITDA when the business is healthy (respect + integrity)
    Renegotiating vendor contracts by exploiting relationship leverage (respect)
    Creating "savings" by deferring maintenance or required spending (truth)
    Eliminating controls to reduce overhead (integrity)

COST REDUCTION HIERARCHY (in order of priority):

  TIER 1 — WASTE ELIMINATION (always pursue; no THRIVE risk):
    Unused software licenses (SaaS tools not being used)
    Duplicate vendors (two vendors doing the same thing)
    Manual processes that AI/automation can replace (efficiency, not cuts)
    Unused physical space or subscriptions
    Over-specified services (paying enterprise price for basic usage)
    
  TIER 2 — VENDOR RENEGOTIATION (pursue at contract renewal):
    Annual software renewals: negotiate 10-20% reduction for multi-year commitment
    Key service vendors: benchmark and renegotiate if above market rate
    Rule: never renegotiate by threatening to leave if we intend to stay (integrity)
    Rule: do renegotiate based on genuine market alternatives and volume
    
  TIER 3 — STRUCTURAL COST REDUCTION (evaluate carefully):
    Headcount: only if there is genuine over-staffing or role duplication
    Headcount: never as a response to a temporary revenue dip (hire-behind-the-curve rule)
    Process consolidation: combine roles where workload genuinely supports it
    Shared services: move entity-level function to MBL shared services (saves entity OpEx)
    
  TIER 4 — STRATEGIC TRADE-OFFS (require Matt Mathison):
    Major service quality reductions that improve margin but affect customer experience
    Significant technology investment elimination that has OpEx impact
    Any structural change affecting >3 headcount or >$200K annualized

COST REDUCTION ANALYSIS FORMAT:

  For each opportunity:
    Description: [Specific cost item]
    Current annual cost: $[X]
    Proposed action: [Cancel / Renegotiate / Consolidate / Reduce]
    Estimated savings: $[X] annualized
    Implementation complexity: [Low / Medium / High]
    THRIVE risk: [None / Low / Medium / High] — justify any rating above None
    Implementation timeline: [Immediate / 30 days / 90 days]
    One-time costs to implement: $[X] (if any)
    Net savings (after implementation costs): $[X]
    
HEADCOUNT REDUCTION PROTOCOL (if required):

  Rules:
    Headcount reduction >3 people: requires Matt Mathison approval before announcement
    Headcount reduction of any size: legal review of termination documentation
    No reduction for short-term EBITDA that reverses within 6 months
    
  Criteria for a justified reduction:
    The role is genuinely eliminated (not filled by someone else immediately)
    The work was truly discretionary or is being automated
    The business can serve customers at current quality without the role
    
  Process:
    1. Identify the reduction and justification in writing
    2. Legal review: proper documentation; severance per agreement; WARN Act if >50
    3. Matt Mathison approval (>3 headcount)
    4. Entity CEO executes (not Dr. Lewis — Dr. Lewis provides the financial framework)
    5. Dr. Lewis confirms the savings are realized in the next payroll cycle
```

## Output Format

```markdown
# Cost Reduction Plan — [Entity Name]
**Prepared by:** Dr. Lewis | **Period:** [Month/Year] | **Target:** $[X] annualized savings

---

## Opportunity Summary

| # | Category | Description | Annual cost | Proposed saving | THRIVE risk | Timeline |
|---|---------|------------|------------|----------------|------------|---------|
| 1 | Waste | [Unused license] | $[X] | $[X] | None | Immediate |
| 2 | Vendor | [Software renewal] | $[X] | $[X] | Low | 30 days |
| 3 | Structural | [Role consolidation] | $[X] | $[X] | Medium | 90 days |

**Total identified savings:** $[X] annualized
**Savings requiring Matt approval:** $[X] (Tier 4 items)

---

## THRIVE Assessment

| THRIVE dimension | Status | Notes |
|-----------------|--------|-------|
| Truth: real savings? | ✅ / ⚠️ | |
| Respect: vendor/employee impact? | ✅ / ⚠️ | |
| Integrity: no hidden costs? | ✅ / ⚠️ | |
| Value: service quality preserved? | ✅ / ⚠️ | |

---

## Savings Tracker (Running)

| Item | Target | Realized to date | Start date | Status |
|------|--------|-----------------|-----------|--------|
| [Item 1] | $[X] | $[X] | [Date] | ✅ Complete / 🔄 In progress |
```

## Output Contract
- Savings must show up in the P&L — a cost reduction that is "identified" but never actually reduces spend is not a real saving; Dr. Lewis tracks the realization of every planned saving against the monthly P&L; an "identified saving" is a hypothesis; a realized saving is what shows up as a lower expense line in the next close; the savings tracker is updated monthly until every identified saving is confirmed in the P&L or reclassified as unrealized
- THRIVE filter is not optional — every cost reduction, regardless of size, is passed through the THRIVE filter before implementation; a cost reduction that has a Medium or High THRIVE risk is not automatically blocked, but it requires an explicit discussion with the entity CEO and (for Tier 3-4 reductions) with Matt Mathison; the THRIVE filter prevents cost reduction from becoming a vehicle for short-term thinking that damages the long-term business
- Headcount is last, not first — the cost reduction framework deliberately puts waste elimination and vendor renegotiation ahead of headcount decisions; in most situations, $50-150K of annualized savings can be found in waste and vendor categories without touching headcount; Dr. Lewis exhausts Tier 1 and Tier 2 before presenting any Tier 3 headcount options; if headcount is required, the decision is the entity CEO's to execute (with Matt's approval) — Dr. Lewis provides the financial analysis, not the termination decisions
- HITL required: all Tier 4 (>3 headcount or >$200K annualized) require Matt Mathison approval before announcement; any headcount reduction requires legal review; vendor renegotiations affecting >$50K annual contracts flagged to entity CEO; Dr. Lewis presents the full cost reduction plan to Matt Mathison before implementation of any Tier 3-4 items; THRIVE assessment is included in every plan; Matt approves the plan, entity CEO executes

## System Dependencies
- **Reads from:** QuickBooks by entity (current cost structure by line item); vendor contracts (SharePoint — renewal dates; terms); headcount records (payroll); SaaS subscription list (IT/operations); fin-budget-builder (current budget vs. actual spend by line)
- **Writes to:** Cost reduction plan (SharePoint → Finance → [Entity] → CostReduction → [YYYY]-[MM]); exec-cfo-oversight (realized savings in monthly financial summary); fin-budget-builder (revised budget reflecting realized savings); fin-ebitda-optimizer (cost reduction is one of the 3 EBITDA levers)
- **HITL Required:** Tier 4 items (>3 headcount or >$200K) require Matt approval; any headcount reduction requires legal review + entity CEO execution; THRIVE risk Medium/High requires explicit discussion before proceeding; cost reduction plan reviewed by Matt before Tier 3-4 implementation; entity CEO briefed on the plan and owns execution

## Test Cases
1. **Golden path:** Column6 cost reduction target: $120K annualized; analysis finds: (1) 4 unused SaaS tools ($28K/year — cancel immediately); (2) DSP platform tool duplicating ad verification functionality (consolidate to 1 vendor — $34K/year; 30-day transition); (3) legal services vendor at above-market rate for routine contract reviews (renegotiate at renewal in 60 days — $18K estimated saving); (4) one open headcount requisition that can be deprioritized for 2 quarters (saves $42K in loaded compensation for 2 quarters = $84K one-time; not annualized). Total: $80K annualized (Tier 1-2 waste and vendor) + $84K one-time (headcount defer = Tier 3, no actual reduction). THRIVE: all Green. No headcount reductions. Implementation plan presented to Column6 CEO and Dr. Lewis. Matt notified ($84K headcount deferral: Tier 3 — below the >3-headcount threshold).
2. **Edge case:** Matt asks for a $350K annualized cost reduction at Allevio to improve EBITDA for exit prep, but the only way to achieve that target is through significant headcount reductions → Dr. Lewis: "I've done the full cost analysis. Tier 1 (waste) and Tier 2 (vendor) yield $85K annualized — real savings, no THRIVE risk. The remaining $265K to hit the $350K target requires Tier 3 headcount reductions: specifically, 4 roles that could be consolidated or eliminated. Before I model this, I need to flag the THRIVE dimension: are these reductions justified by genuine workload reduction, or are we manufacturing EBITDA for the sale process? If buyers discover in diligence that we cut headcount 3 months before the process and the remaining team is at capacity, they'll reverse the EBITDA add-back. The QoE firm will ask whether the headcount reduction is sustainable. My recommendation: take the $85K real savings, present it honestly in the exit package, and focus on the revenue growth story. The $265K headcount option is available but it's the wrong move for this situation."
3. **Adversarial:** Entity CEO wants to eliminate the Dr. Lewis finance oversight fee ($48K/year) as a cost reduction → Dr. Lewis: "I have an obvious conflict of interest on this one, so I'm routing it directly to Matt Mathison. That's appropriate. What I will say factually: the finance oversight function (monthly close, financial controls, audit preparation, LP reporting, payables oversight) is currently performed by me. If the fee is eliminated, the function doesn't disappear — it needs to be performed by someone. The cost of a part-time fractional CFO in the market is $8K-$15K/month ($96K-$180K/year). The cost of a full-time Controller is $110K-$140K fully-loaded. The $48K fee is below market for the scope of work. But Matt should evaluate whether the right answer is to hire internal finance staff at this stage, which would cost more than $48K. This is Matt's decision — I'll stay out of the final call."

## Audit Log
All cost reduction plans retained. Savings tracker records retained monthly until all savings are realized (or reclassified). THRIVE assessment records retained. Headcount reduction approvals retained permanently. Vendor renegotiation records retained. Matt Mathison approval records for Tier 3-4 items.

## Deprecation
Retire when each portfolio entity has a CFO or Finance Director who manages the cost reduction analysis — with Dr. Lewis providing the portfolio-level THRIVE filter oversight and Matt Mathison retaining approval authority over significant reductions.
