---
name: exec-capital-allocation
description: "Plan and track capital allocation across MBL Partners and portfolio entities. Use when the user says 'capital allocation', 'allocate capital', 'capital deployment', 'where should we invest', 'capital plan', 'investment budget', 'how much should we put into Allevio', 'how much into HIVE', 'how much into Column6', 'capital decision', 'portfolio capital', 'capital weighting', 'follow-on investment', 'additional capital', 'deploy capital', 'capital priorities', 'capital budget', 'investment plan', 'capital spend', 'where to put money', 'portfolio weighting', 'capital allocation model', 'capital structure', 'liquidity', 'capital reserve', 'return on deployed capital', or 'capital return'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--amount <$>] [--action <plan|allocate|track|rebalance|report>] [--horizon <annual|quarterly|ad-hoc>]"
---

# Exec Capital Allocation

Plan and track capital allocation across MBL Partners and portfolio entities — ensuring that available capital is deployed where it generates the highest risk-adjusted return, that capital priorities are aligned with annual strategic priorities, and that Matt Mathison has a clear picture of where portfolio capital is committed, available, and at risk. Capital allocation at MBL is the most consequential executive decision function; every dollar deployed in one entity is a dollar not available for another, and every dollar returned to LPs is a dollar that compounds the trust relationship.

## When to Use
- Annual planning (set the capital allocation plan for the year ahead)
- An entity CEO requests additional capital (evaluate, prioritize, or decline)
- A significant opportunity arises mid-year (M&A; expansion; technology investment)
- Quarterly capital deployment review (how are we tracking vs. the annual capital plan?)
- An entity is underperforming (does a capital adjustment accelerate recovery or protect returns?)

## Capital Allocation Framework

```
CAPITAL ALLOCATION PRINCIPLES AT MBL:

  1. STRATEGIC PRIORITY ALIGNMENT:
     Capital allocation follows strategic priorities (exec-strategic-planning).
     Priority 1 gets first capital consideration; Priority 3 gets what's left.
     Any capital allocation that doesn't connect to a strategic priority requires
     Matt Mathison explicit approval and a documented rationale.
     
  2. RETURN HURDLE:
     All capital deployments must have an expected return above the hurdle rate.
     MBL hurdle rate: >20% IRR (or equivalent ROI within 24 months for operational investments)
     Exception: capital required to maintain compliance, licensing, or regulatory standing
     (no IRR hurdle applies — these are cost-of-doing-business investments)
     
  3. CONCENTRATION LIMITS:
     No single entity receives >50% of available annual deployment capital.
     Rationale: portfolio diversification; single-entity concentration = single-entity risk.
     Exception: Matt Mathison can override with explicit approval and LP notification.
     
  4. CAPITAL RESERVE:
     MBL maintains a minimum capital reserve of 15% of total available capital
     for unplanned opportunities (M&A deal in the pipeline; regulatory emergency).
     Capital reserve is not available for planned operational deployments.
     
  5. THRIVE FILTER ON CAPITAL:
     Every capital allocation >$100K runs through exec-decision-framework THRIVE filter.
     Capital deployed in a direction that fails the Integrity test is not deployed.
     Period.

ANNUAL CAPITAL PLAN STRUCTURE:

  Total available capital = Beginning capital + LP commitments + distributions received
  
  Allocation model:
    Entity investments: [% of total]
      Allevio: $[X]M (% of total) — purpose: [specific initiative]
      HIVE Partners: $[X]M (% of total) — purpose: [specific initiative]
      Column6: $[X]M (% of total) — purpose: [specific initiative]
    MBL operations: $[X]M (% of total) — Dr. Lewis AI infrastructure; overhead; G&A
    Reserve: $[X]M (15% minimum) — unplanned opportunities
    LP distributions: $[X]M — planned returns to LPs
    
  Quarterly tracking:
    □ Capital deployed this quarter vs. plan
    □ Capital remaining vs. plan
    □ Reserve status (has any reserve been used? for what?)
    □ Return on deployed capital (are the investments hitting their projected IRR?)

CAPITAL DEPLOYMENT DECISION MATRIX:

  Entity CEO requests additional capital (unplanned):
    Step 1: What is the specific use of capital? (Hire; technology; acquisition; working capital)
    Step 2: What is the expected return? (IRR or ROI with timeline)
    Step 3: Is this aligned with strategic priorities?
    Step 4: THRIVE filter (exec-decision-framework)
    Step 5: Does the deployment stay within concentration limits?
    Step 6: Does it exceed the capital reserve threshold?
    
    If all pass: Matt Mathison approval required (exec-decision-framework thresholds apply)
    If any fail: Dr. Lewis returns to entity CEO with specific objection and asks for a redesign

ENTITY-SPECIFIC CAPITAL DEPLOYMENT PATTERNS:

  Allevio (healthcare MSO):
    Primary capital needs: clinical program expansion; technology (AdvancedMD upgrades);
      new employer group sales capacity (headcount); M&A (acquiring additional employer groups)
    Capital efficiency signal: IRR driven by claim ratio reduction + GRR above 90%
    Capital red flag: capital deployed in Allevio while claim ratio is rising (putting more
      into a leaky bucket — fix the claim ratio before adding capital)
      
  HIVE Partners (oil & gas):
    Primary capital needs: lease bonus payments; well development support;
      landowner communication infrastructure; technology (Covercy integration)
    Capital efficiency signal: leased acres × avg royalty rate → total royalties distributed
    Capital red flag: capital deployed in HIVE without confirmed lease negotiation progress
      (don't fund landowner outreach before the negotiation strategy is defined)
      
  Column6 (CTV/digital media):
    Primary capital needs: CSM headcount; technology (platform improvements; attribution);
      agency relationship programs
    Capital efficiency signal: NRR > 90% + IO booking velocity growing quarter-over-quarter
    Capital red flag: additional sales headcount deployed while CSM capacity is over-stretched
      (more new business into a service-constrained system accelerates churn, not growth)
```

## Output Format

```markdown
# MBL Capital Allocation Plan — [YYYY] / Q[X] Update
**Prepared by:** Dr. Lewis | **Date:** [Date]
**Matt Mathison review:** [Date]

---

## Capital Position

| Category | Amount | % of total |
|---------|--------|-----------|
| Total available capital | $[X]M | 100% |
| Committed (entity investments + ops) | $[X]M | [X]% |
| Reserve | $[X]M | [X]% (min 15%) |
| Planned distributions | $[X]M | [X]% |

---

## Entity Allocation — Year to Date

| Entity | Plan | Deployed YTD | Remaining | Return status |
|--------|------|-------------|-----------|--------------|
| Allevio | $[X]M | $[X]M | $[X]M | On target / Behind / Ahead |
| HIVE | $[X]M | $[X]M | $[X]M | On target / Behind / Ahead |
| Column6 | $[X]M | $[X]M | $[X]M | On target / Behind / Ahead |
| MBL Operations | $[X]M | $[X]M | $[X]M | On target / Behind / Ahead |

---

## Unplanned Capital Requests This Quarter

| Entity | Request | Amount | Recommendation | Status |
|--------|---------|--------|---------------|--------|
| [Entity] | [Purpose] | $[X] | GO / NO-GO / Hold | [Matt decision] |

---

## Reserve Status

**Reserve used this quarter:** $[X] for [Purpose]
**Reserve remaining:** $[X]M ([X]% of total — minimum is 15%)
```

## Output Contract
- No capital is deployed without Matt Mathison awareness — the capital allocation plan is reviewed by Matt Mathison before the year begins, and any unplanned deployment >$50K is communicated to Matt before commitment; "I thought you'd be fine with it" is not a substitute for explicit approval; Dr. Lewis maintains the capital tracker in real-time and flags any deployment approaching the Matt-notification threshold
- Return tracking closes the capital loop — deploying capital is half the discipline; tracking the return on deployed capital is the other half; Dr. Lewis reviews capital deployment returns quarterly (is the CSM hire generating the expected ARR? Is the clinical program expansion reducing the claim ratio?); if a capital deployment is tracking below its projected return, Dr. Lewis flags it to Matt with a specific recommendation (continue / adjust / exit)
- Concentration limits protect the portfolio — no single entity receives more than 50% of annual deployment capital without Matt Mathison explicit approval and LP notification; a portfolio that over-concentrates in one entity is a portfolio that has made a strategic bet with LP money without their awareness; the concentration limit is a governance protection, not just a financial preference
- HITL required: Matt Mathison reviews and approves the annual capital allocation plan; unplanned deployments >$50K require Matt notification; deployments >$250K require Matt explicit approval; THRIVE filter required for all deployments >$100K; reserve usage (any amount) requires Matt awareness before use; quarterly return tracking presented to Matt; LP notification required for any single-entity allocation exceeding 50% concentration limit

## System Dependencies
- **Reads from:** Available capital data (QuickBooks — cash and committed capital); entity deployment requests (entity CEO → Dr. Lewis → exec-decision-framework); exec-strategic-planning (priorities that capital must support); exec-kpi-dashboard (entity performance — return tracking); exec-lp-reporting (LP distributions and capital structure commitments); entity IRR models (SharePoint/Finance/IRRModels/[Entity]/); exec-decision-framework (THRIVE filter and approval thresholds)
- **Writes to:** Capital allocation tracker (QuickBooks + SharePoint/Finance/CapitalAllocation/[YYYY]_AllocationPlan.xlsx); exec-kpi-dashboard (capital deployed metric); exec-lp-reporting (capital deployment section of quarterly LP report); entity CEO capital notification (what was approved; amount; expected return; tracking metrics); Monday.com (capital deployment milestones in exec-action-tracker)
- **HITL Required:** Matt Mathison approves annual plan; unplanned deployments >$50K require Matt notification; >$250K require Matt explicit approval; THRIVE filter for all >$100K; reserve usage requires Matt awareness; quarterly return tracking to Matt; LP notification for >50% concentration in one entity

## Test Cases
1. **Golden path:** Q4 annual capital planning; Dr. Lewis presents draft allocation: Allevio $1.2M (clinical expansion + OE season capacity); HIVE $800K (lease bonus reserve + Covercy integration); Column6 $500K (senior CSM hire + attribution technology); MBL Ops $400K (Dr. Lewis AI infrastructure; G&A); Reserve $600K (17%); LP distributions $1M. Matt reviews: "Column6 attribution technology — is that $200K well-spent before we've proven the CSM hire works?" Dr. Lewis: "Fair question. I'd suggest we make the CSM hire first ($180K salary, starts in February) and gate the attribution technology decision on Q1 CSM performance. That frees up $200K for the reserve or Allevio." Matt: "Do it." Capital plan adjusted; Matt approves; entity CEOs notified of their allocation by January 10.
2. **Edge case:** HIVE entity CEO requests an additional $300K in Q2 for lease bonuses on a new landowner opportunity → Dr. Lewis evaluates: return model shows $300K in lease bonuses → 3,000 leased acres → estimated royalties of $120K/year at current production rates → breakeven in year 3; THRIVE filter passes; concentration check: HIVE YTD total would reach $1.1M vs. the $800K plan — still under the 50% concentration limit; reserve impact: drawing $300K from reserve reduces it to 12% (below the 15% minimum); Dr. Lewis to Matt: "This is a GO on the investment thesis and THRIVE, but it breaks our 15% reserve minimum. I recommend we fund $200K from the HIVE allocation and put $100K on a 60-day hold pending Q2 portfolio cash position. If Q2 operating cash is on plan, we fund the rest in July." Matt: "Agreed. Let's do it that way."
3. **Adversarial:** Allevio entity CEO pushes back: "The $1.2M you allocated to Allevio isn't enough — we need $1.8M to hit the clinical program targets." → Dr. Lewis: "Walk me through the additional $600K. What specifically does it fund, and what's the expected return?" Allevio CEO: "It funds 3 more clinical care coordinators." Dr. Lewis: "OK. At $80K each fully-loaded, that's $240K in headcount. What's the revenue impact? Our model shows the clinical program reduces claim ratio by 2 points per new group — does adding 3 coordinators accelerate that?" Allevio CEO: "Yes — we can handle 30% more high-risk member cases." Dr. Lewis: "If that drives 30% faster claim ratio improvement, that's a significant ROI on the headcount. I'll model it and present to Matt. But the $600K doesn't come from the reserve — it would need to come from reducing another entity's allocation or finding an alternative capital source. Let me bring Matt a specific trade-off." Dr. Lewis models; presents to Matt; Matt approves $300K additional (2 coordinators, not 3) with a Q3 review on the claim ratio impact.

## Audit Log
All capital allocation plans retained by year. Matt Mathison approval records retained. Entity CEO capital request records retained (what was requested; what was approved; what the expected return was). Actual capital deployed vs. plan retained quarterly. Return tracking records retained. Reserve usage records retained. LP concentration notifications retained.

## Deprecation
Retire when MBL has a Chief Financial Officer who manages capital allocation — with Matt Mathison retaining final approval authority and Dr. Lewis retaining the technology and AI investment inputs and the THRIVE filter review.
