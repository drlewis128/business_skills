---
name: strategy-growth-roadmap
description: "Build the growth roadmap for a portfolio company — near and long-term growth initiatives. Use when the user says 'growth roadmap', 'growth plan', 'growth strategy', 'how do we grow', 'growth initiatives', 'growth opportunities', 'build the roadmap', 'growth path', 'revenue growth plan', 'growth levers', 'grow the business', 'revenue strategy', 'scale the company', 'growth priorities', 'growth trajectory', or 'how to grow faster'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--horizon <1yr|3yr|5yr>] [--focus <revenue|market|product|channel>]"
---

# Growth Roadmap

Build the growth roadmap for MBL portfolio companies — defining the specific, sequenced, and resourced initiatives that will compound revenue and EBITDA from current state to the exit value target. A growth roadmap is not a list of growth ideas — it is a sequenced plan that acknowledges constraints (capital, team, market), identifies the 3-5 highest-return growth levers, and times them to compound rather than compete. At PE portfolio scale, growth is the most reliable path to return: every dollar of additional EBITDA at exit is worth 6-9 dollars of exit value at the applied multiple.

## When to Use
- Annual planning — what is the growth plan for next year?
- A portfolio company is growing below thesis — what levers are available?
- Post-acquisition 100-day plan — what is the growth trajectory from here?
- Matt Mathison asks "how are we going to grow [Company]?"
- Exit preparation — what growth initiatives maximize exit value?

## Growth Roadmap Framework

```
Growth lever taxonomy:
  
  1. Core market penetration (lowest risk, highest certainty):
     More customers in the existing geography/segment using existing services
     Allevio: More physician practice affiliations; more patients per practice
     HIVE: More wells drilled in permitted acreage; production optimization
     Column6: More advertisers using existing programmatic infrastructure
     
  2. Service line expansion (medium risk, medium certainty):
     New services to existing customers
     Allevio: Add specialty services (mental health, PT) to existing primary care practices
     Column6: Add new ad formats (connected TV to mobile; gaming)
     
  3. Geographic expansion (medium-high risk, high capital):
     Same model, new geography
     Allevio: Tucson expansion after Scottsdale/Phoenix established
     
  4. Pricing optimization (fast impact, requires defensible differentiation):
     Raise price where value delivered exceeds current price
     Healthcare: Payer rate renegotiation; private pay premium services
     O&G: Commodity price is market — differentiate on production efficiency
     
  5. Channel expansion (high risk, potentially high reward):
     New routes to market
     Allevio: Telehealth as a complementary channel
     Column6: New publisher network segments (sports streaming, FAST channels)
     
  6. Acquisition-led growth (highest capital, potentially fastest scale):
     Tuck-in acquisitions that bolt additional revenue into the platform
     Allevio: Additional physician practices
     
Growth sequencing principle:
  Penetrate core → Expand service → Expand geography (not simultaneously)
  Doing all three at once: spreads management thin; increases execution risk; 
  rarely generates better results than depth-first sequential approach
  
  Year 1: Saturate the core; perfect the model
  Year 2: Expand service lines once core is working
  Year 3+: Geographic expansion with proven model
  
Growth vs. profitability tension:
  Growth initiatives reduce near-term EBITDA (hiring ahead of revenue; marketing spend)
  Exit value is EBITDA × multiple; must balance growth investment against EBITDA protection
  Rule: Growth that reduces EBITDA margin below [X]% is approved only if 
  recovery to target margin is modeled and visible within 18 months
```

## Output Format

```markdown
# Growth Roadmap — [Company Name]
**Date:** [Date] | **Horizon:** [1yr / 3yr] | **Analyst:** Dr. John Lewis
**Current revenue:** $[X]M | **Current EBITDA:** $[X]M ([X]%) | **Revenue target at [Year]:** $[X]M

---

## Growth Vision

**From:** $[X]M revenue / $[X]M EBITDA today
**To:** $[X]M revenue / $[X]M EBITDA by [Year]
**Path:** [Core penetration → service expansion / sequential geography / M&A tuck-in]

---

## Growth Lever Analysis

| Lever | Type | Revenue impact | EBITDA impact | Investment | Timeline | Risk | Priority |
|-------|------|--------------|--------------|-----------|---------|------|---------|
| [Add provider] | Core penetration | +$180K/yr | +$40K/yr | $85K | Year 1 | Low | 1 |
| [PT service line] | Service expansion | +$120K/yr | +$24K/yr | $35K | Year 2 | Med | 2 |
| [Telehealth] | Channel expansion | +$60K/yr | +$8K/yr | $45K | Year 2 | Med-High | 3 |
| [Tucson expansion] | Geographic | +$400K/yr | +$72K/yr | $250K | Year 3 | High | 4 |
| [Practice tuck-in M&A] | Acquisition | +$800K/yr | +$140K/yr | $1.1M | Year 2-3 | Med | 5 |

---

## Year 1 Growth Plan

**Focus:** [Core market penetration — maximum depth before breadth]

| Initiative | Revenue impact | EBITDA impact | Owner | Milestone | Capital |
|-----------|--------------|--------------|-------|---------|---------|
| [Hire 1 NP] | +$180K (ramp: 6mo) | +$40K | CEO | NP starts Q2 | $85K |
| [Referral expansion — 3 new specialists] | +$90K | +$20K | COO | 3 referrers by Q3 | $0 |
| [Billing lag 45→35 days] | +$25K cash release | +$0 EBITDA | Controller | Q3 | $0 |

**Year 1 total growth:** Revenue +$[X]K | EBITDA +$[X]K | Capital: $[X]K

---

## Year 2-3 Growth Plan (directional)

**Year 2 focus:** Service line expansion (dependent on Year 1 core stabilization)
**Condition:** Core model stable; EBITDA margin ≥18%; provider at full panel capacity

| Initiative | Year 2 | Year 3 | Condition to proceed |
|-----------|--------|--------|---------------------|
| [PT service line] | Launch | Scale | Year 1 EBITDA ≥$120K |
| [Tuck-in M&A] | Screen + execute | Integration | Capital available; thesis intact |
| [Geographic expansion] | Plan | Pilot | Core model proven; management depth |

---

## Revenue Bridge

| Component | Current | Year 1 | Year 2 | Year 3 |
|---------|---------|--------|--------|--------|
| Core (existing services, existing market) | $[X]M | $[X]M | $[X]M | $[X]M |
| Service expansion | — | — | +$[X]M | +$[X]M |
| Geographic / M&A | — | — | — | +$[X]M |
| **Total** | **$[X]M** | **$[X]M** | **$[X]M** | **$[X]M** |

---

## Matt Mathison Growth Brief

[Company] growth roadmap to [Year]: $[X]M → $[X]M revenue ([X]× growth). Year 1: core penetration — add provider ($180K), expand referral network ($90K), billing improvement ($25K cash). Year 2: service expansion (PT line $120K) + M&A screen. Year 3: geographic if model proven. Capital required: $[X]K Year 1; $[X]M Year 2-3 (including M&A). Risk: [Top 1 — execution / capital / market]. Thesis impact: [Growth roadmap delivers $[X]M EBITDA at exit = $[X]M exit value at [X]×]. Action from Matt Mathison: [Approve Year 1 capital / Review Year 2-3 plan at Q4 board].
```

## Output Contract
- Sequence growth initiatives, don't launch them simultaneously — the most common growth failure in PE portfolio companies is launching multiple growth initiatives at the same time (new service line + new geography + M&A) when the management team can only effectively execute one; the result is that all three initiatives execute at 60% rather than one initiative executing at 100%; Dr. Lewis builds the growth roadmap with explicit sequencing and preconditions — the second initiative only launches when the first one has met its milestone; the roadmap is gated, not open-ended
- Quantify every lever before prioritizing — a growth lever without a revenue and EBITDA estimate is a hypothesis; Dr. Lewis builds the quantified estimate for every lever before ranking priority; the priority ranking is based on the return-per-dollar-invested and certainty of execution, not on which initiative sounds most exciting; a boring core penetration initiative (adding a provider to an established practice) consistently outperforms a flashy service expansion because it is de-risked by the existing model
- Growth and EBITDA protection are both in the roadmap — a growth plan that projects revenue doubling but EBITDA flat or declining is not a value creation plan; the roadmap must show both the revenue growth and the EBITDA margin at each stage; growth that permanently impairs margin (e.g., hiring 5 people before the revenue to support them is signed) must be gated against a margin floor condition; Dr. Lewis sets and enforces the margin floor condition before approving growth capital
- HITL required: Dr. Lewis builds with CEO input on market and operational assumptions; CEO owns execution of Year 1 initiatives; Matt Mathison reviews the 3-year roadmap for thesis alignment and capital commitment; Year 2+ initiatives require Matt Mathison approval before capital is committed; significant strategic pivots (geographic expansion, M&A) require Matt Mathison advance approval

## System Dependencies
- **Reads from:** Market analysis (strategy-market-analyzer), VCP (strategy-value-creation-plan), competitive intelligence (strategy-competitive-intelligence), investment thesis (strategy-investment-thesis), financial performance (QuickBooks), capital available (strategy-capital-allocation)
- **Writes to:** Growth roadmap document (SharePoint/Strategy/<Company>/Growth/); annual strategic plan (strategy-annual-plan-builder); VCP update (growth initiatives become VCP items); Matt Mathison growth brief; exit plan (strategy-exit-planner — growth roadmap defines exit EBITDA)
- **HITL Required:** Dr. Lewis builds; CEO reviews and owns Year 1 execution; Matt Mathison approves roadmap; Year 2+ capital requires Matt Mathison advance approval; M&A component requires Matt Mathison throughout

## Test Cases
1. **Golden path:** Allevio 3-year growth roadmap → Current: $2.1M revenue, $380K EBITDA (18.1%); Year 1: add 1 NP (Year 2 full panel = +$180K), expand referral network (+$90K), billing improvement ($35K cash release) = $2.4M revenue, $430K EBITDA (17.9%); Year 2 condition check: EBITDA ≥$400K ✅ → launch PT service line ($35K investment; +$120K by Year 2 end); Year 2 also: screen 2-3 tuck-in M&A targets; Year 2 = $2.75M revenue, $520K EBITDA (18.9%); Year 3: if 1 tuck-in closes ($800K revenue addition at $140K EBITDA); no geographic expansion until Year 3 model proven; Year 3 = $3.55M revenue, $660K EBITDA (18.6%); exit at Year 5 target: $4.2M revenue, $850K EBITDA; at 8× = $6.8M exit value; Matt Mathison approves roadmap; Year 1 capital $85K approved; Year 2-3 capital reviewed at Q4 board
2. **Edge case:** CEO wants to add a telehealth service line in Year 1 alongside the provider hire → Year 1 simultaneous initiatives: provider hire + referral expansion + telehealth; assessment: provider hire is low-risk (established model); telehealth is a new service line requiring new technology, new workflows, and new payer contracting; running both simultaneously in Year 1 risks diluting CEO focus and underexecuting both; Dr. Lewis recommends: Year 1 = provider hire + referral (established levers); telehealth evaluation pilot (not full launch) in H2 Year 1 — understand payer reimbursement, technology cost, and patient demand without committing capital; launch telehealth in Year 2 if Year 1 core is on track; CEO agrees to the evaluation approach; roadmap updated
3. **Adversarial:** "Can we just project 15% revenue growth per year without mapping specific initiatives?" → 15% annual growth is a projection, not a roadmap; it doesn't tell the CEO what to do, doesn't identify the capital required, doesn't sequence the initiatives, and doesn't identify the risks; a financial projection of 15% without a bottom-up initiative map is optimism disguised as a plan; buyers in due diligence will ask: where does the growth come from? Which specific initiatives? Who owns them? What's the evidence they work?; Dr. Lewis builds the bottom-up initiative map that generates the growth number, not the top-down percentage; if the bottom-up initiatives can only support 11% growth, the plan reflects 11%

## Audit Log
Growth roadmaps retained annually. Initiative tracking vs. roadmap retained quarterly. Matt Mathison approval records retained. Gate/condition achievement records retained. Revenue bridge actuals vs. plan retained.

## Deprecation
Retire when portfolio companies have strategy or marketing leaders capable of building bottoms-up growth plans — with Dr. Lewis reviewing the plan for thesis alignment and financial accuracy rather than building it from scratch.
