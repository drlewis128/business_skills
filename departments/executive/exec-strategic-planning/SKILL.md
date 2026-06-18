---
name: exec-strategic-planning
description: "Build and run the annual strategic planning process for MBL Partners and portfolio companies. Use when the user says 'strategic plan', 'annual plan', 'strategy session', 'annual planning', 'strategy planning', 'build a strategy', 'plan for next year', 'annual strategy', 'strategic priorities', 'strategic goals', 'planning cycle', 'what are our priorities', 'what should we focus on next year', 'strategy for the portfolio', 'MBL strategy', 'Allevio strategy', 'HIVE strategy', 'Column6 strategy', 'portfolio strategy', 'three-year plan', 'strategic roadmap', 'planning retreat', 'strategy retreat', 'strategic framework', 'company strategy', or 'operating plan'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--year <YYYY>] [--action <build|review|update|present>] [--phase <discovery|draft|finalize|cascade>]"
---

# Exec Strategic Planning

Build and run the annual strategic planning process for MBL Partners and portfolio companies — from setting the thesis and priorities through to OKR cascade and entity-level operating plans. Strategic planning at MBL is not a bureaucratic exercise; it is the forcing function that allocates finite management attention and capital to the initiatives most likely to compound value. Every planning cycle produces a clear answer to: what are the 3 priorities that matter this year, and how do we know we're winning?

## When to Use
- Q4 (October-November): Annual planning cycle for the following year
- A new portfolio company joins MBL (build the first 12-month operating thesis)
- A major market shift requires a mid-year strategy refresh
- Matt Mathison needs a portfolio-level strategy brief for a board or LP meeting
- An entity CEO needs help structuring their annual plan for Matt's review

## Strategic Planning Framework

```
ANNUAL PLANNING PROCESS — MBL HOLDINGS:

  PHASE 1: DISCOVERY (September → Mid-October)
  
    MBL Level:
      □ What did the portfolio do vs. plan this year? (Performance vs. thesis)
      □ What did the market do? (Macro trends affecting each entity)
      □ What do the entity CEOs believe? (Bottom-up inputs from Allevio, HIVE, Column6)
      □ What does Matt Mathison see from LP and board conversations? (Top-down signal)
      □ What capability gaps hurt us this year? (Honest post-mortem)
      
    Entity Level (run simultaneously with entity CEO):
      □ Revenue vs. plan; key growth drivers and drags
      □ Top 3 operational wins; top 3 operational misses
      □ Talent: who is performing, who is struggling, who do we need
      □ Market: did the ICP shift? What did competitors do?
      □ Technology: what investments need to be made to scale?
      
  PHASE 2: PRIORITY SETTING (Mid-October → November)
  
    MBL PRIORITY RULE: 3 priorities maximum at the portfolio level.
      - Priority 1: Must-win (existential or highest-leverage)
      - Priority 2: Value acceleration (highest ROI for available capital/attention)
      - Priority 3: Foundation (required for priorities 1-2 to succeed)
      More than 3 portfolio-level priorities = no priorities.
      
    THRIVE FILTER ON PRIORITIES:
      T — Is this grounded in honest assessment of current state?
      H — Does this require real hustle, or is it easy and therefore low-leverage?
      R — Is this respectful of the entity teams who have to execute it?
      I — Is this the right thing to do for LPs, employees, and customers?
      V — Will this create demonstrable value within 12 months?
      E — Can the team get behind this with genuine energy?
      Any priority that fails I (Integrity) is killed immediately.
      
    ENTITY PRIORITY CASCADE:
      After MBL priorities are set: each entity CEO builds their 3 entity-level priorities
      that directly support the MBL priorities. Entity priorities that don't connect to
      MBL portfolio priorities need justification or they are reprioritized.
      
  PHASE 3: OPERATING PLAN BUILD (November → December 15)
  
    For each priority, define:
      □ Specific outcome (measurable result by December 31 of plan year)
      □ Key initiatives (what will we do to achieve the outcome?)
      □ Owner (who is accountable? One name, not a team)
      □ Resources required (capital, headcount, technology)
      □ Leading indicators (how do we know we're on track before year-end?)
      □ Kill criteria (what would make us stop or pivot this priority?)
      
    RESOURCE ALLOCATION DISCIPLINE:
      Priorities 1 and 2 get the best people and first capital.
      Priority 3 gets what's left.
      "We'll figure out the resources later" = the plan is a wish list, not a plan.
      
  PHASE 4: CASCADE AND ALIGNMENT (December → January 1)
  
    MBL → Entity CEOs: Each entity receives the portfolio priorities + their own priorities
    Entity CEO → Entity leadership team: OKR cascade (exec-okr-tracker)
    Matt Mathison annual kickoff: All-hands presentation of priorities (exec-all-hands-planner)
    
MBL-SPECIFIC PLANNING CONTEXT:

  MBL Partners (holding level):
    Primary value levers: acquire well, operate better, exit at premium multiple
    Planning focuses on: deal flow, portfolio operations, AI strategy, capital deployment
    Dr. Lewis inputs: AI strategy, technology infrastructure, operational leverage through AI
    Matt Mathison inputs: LP relationships, deal thesis, portfolio direction
    
  Allevio:
    Primary value lever: expand employer group count + reduce claim ratio → higher PMPM margin
    Planning focus: new employer group sales, clinical program expansion, RCM efficiency
    Key planning metric: GRR >90% + NRR >100% + average claim ratio trend
    
  HIVE Partners:
    Primary value lever: leased acres + development activity → LP distributions
    Planning focus: lease renewals, new landowner relationships, production optimization
    Key planning metric: total royalties distributed + GRR >85%
    
  Column6:
    Primary value lever: agency relationship depth + IO booking velocity
    Planning focus: Priority A agency expansion, new brand acquisition, VCR performance
    Key planning metric: NRR >90% + agency relationship depth (contacts per Priority A agency)
```

## Output Format

```markdown
# [Entity] Strategic Plan [YYYY]
**Prepared for:** Matt Mathison | **Date:** [Date]
**Planning phase:** Discovery / Priority Setting / Operating Plan / Final

---

## Current State Assessment

**Performance vs. prior year thesis:**
| Metric | Target | Actual | Assessment |
|--------|--------|--------|-----------|
| [Key metric 1] | [X] | [Y] | ✅ / ⚠️ / ❌ |

**Top 3 wins:** [What worked]
**Top 3 misses:** [Honest — what didn't, and why]
**Key insight for next year:** [The one thing that changes the strategy]

---

## Portfolio Priorities [YYYY] — 3 Maximum

**Priority 1 — [Name]:**
- Outcome: [Specific, measurable result by Dec 31, YYYY]
- Key initiatives: [1-3 specific actions]
- Owner: [One name]
- Leading indicator: [How we track progress quarterly]
- Kill criteria: [What makes us stop]

**Priority 2 — [Name]:** [Same structure]

**Priority 3 — [Name]:** [Same structure]

---

## THRIVE Validation

| Filter | Priority 1 | Priority 2 | Priority 3 |
|--------|-----------|-----------|-----------|
| Truth | ✅ / ❌ | | |
| Hustle | | | |
| Respect | | | |
| Integrity | | | |
| Value | | | |
| Enjoy | | | |

**Any ❌ on Integrity = priority is killed. No exceptions.**

---

## Resource Requirements

| Resource | Priority 1 | Priority 2 | Priority 3 |
|---------|-----------|-----------|-----------|
| Capital | $[X] | $[X] | $[X] |
| Headcount | [N] | [N] | [N] |
| Technology | [What] | [What] | [What] |
```

## Output Contract
- 3 priorities maximum — if the output contains more than 3 portfolio-level priorities, it is wrong; ask which 3 matter most; the answer "all of them" is not acceptable at MBL because Matt Mathison does not have unlimited time and capital, and neither do the entity CEOs; a plan with 8 priorities is a plan that accomplishes nothing because attention and capital are split too thin; Dr. Lewis enforces the 3-priority rule every year
- Every priority needs an owner who is one person — not "the leadership team" or "the entity" or "Matt and John"; one human being wakes up every morning accountable for whether this priority succeeds; if the owner isn't named, the priority isn't funded; this is the accountability principle that separates planning from wishful thinking
- THRIVE filter is non-negotiable — any priority that fails the Integrity test is killed in planning, before resources are committed; discovering that a priority violates Integrity after launch is more expensive than killing it in October; Dr. Lewis applies the THRIVE filter explicitly to every priority before it is presented to Matt Mathison
- HITL required: Matt Mathison approves all portfolio-level priorities before the planning cascade begins; entity CEOs present their entity priorities to Matt by December 1 for alignment; Dr. Lewis facilitates the THRIVE filter review for each priority; any mid-year priority change requires Matt Mathison approval; capital commitment for any plan priority >$250K requires Matt Mathison sign-off

## System Dependencies
- **Reads from:** Prior year entity performance data (QuickBooks — actual vs. budget; Monday.com — initiative completion rates); entity CEO assessments (SharePoint/Strategy/[Entity]/AnnualPlanning/[YYYY]/EntityCEOAssessment.pdf); market intelligence (exec-vision-setting — macro trends and competitive signals); prior year strategic plan (SharePoint/Strategy/MBL/AnnualPlan/[YYYY-1]_StrategicPlan.pdf); exec-okr-tracker (prior year OKR completion rates — did we hit what we committed to?)
- **Writes to:** Annual strategic plan (SharePoint/Strategy/MBL/AnnualPlan/[YYYY]_StrategicPlan.pdf); entity strategic plans (SharePoint/Strategy/[Entity]/AnnualPlan/[YYYY]_[Entity]Plan.pdf); OKR cascade (exec-okr-tracker — priority-to-OKR mapping); resource allocation decisions (QuickBooks — capital commitment tracking); Monday.com board (exec-action-tracker — planning milestones and deadlines)
- **HITL Required:** Matt Mathison approves all portfolio-level priorities; entity CEOs present entity plans to Matt by December 1; Dr. Lewis THRIVE filter review before presentation; capital commitments >$250K require Matt Mathison sign-off; any mid-year strategy change requires Matt Mathison approval

## Test Cases
1. **Golden path:** Q4 annual planning cycle; Dr. Lewis runs discovery interviews with each entity CEO (October); synthesizes into a portfolio assessment; presents to Matt: "Allevio is GRR-strong but NRR flat — the growth lever is new employer groups, not retention; HIVE lease renewal risk is the biggest capital concern; Column6 is IO-velocity constrained, not account-constrained — the constraint is CSM bandwidth for Priority A agencies." Matt responds: "Right — so Priority 1 is Allevio new employer group sales, Priority 2 is Column6 CSM hire + Priority A expansion, Priority 3 is HIVE lease renewals before the competitor gets there." Priorities set; THRIVE filter passes; entity CEOs cascade to their OKRs by December 1; all-hands kickoff January 5.
2. **Edge case:** Column6 CEO presents 8 priorities in their entity plan → Dr. Lewis: "Eight priorities is zero priorities. We need to cut to three. What is the single most important thing Column6 must accomplish this year to support the portfolio Priority 2? Start there." Column6 CEO: "IO booking velocity — we need to close $2M in new IOs from Priority A agencies." Dr. Lewis: "That's Priority 1. What's the constraint? CSM bandwidth?" Column6 CEO: "Yes." Dr. Lewis: "Then Priority 2 is hire one senior CSM by February 1 and get them fully ramped by Q2. Everything else follows from those two." Five priorities dropped; plan is now executable.
3. **Adversarial:** Entity CEO pushes back on the THRIVE Integrity filter: "The data is a little uncertain — I'd rather say we'll 'pursue' this than commit to a specific outcome." → Dr. Lewis: "If you're not willing to name a specific outcome, you're telling me you don't actually believe in this priority. That's the Integrity filter working as designed. Either name a measurable outcome — even a conservative one — or this doesn't go in the plan. Saying 'we'll try' with portfolio capital is not something Matt will approve, and it's not something I'll put in front of him."

## Audit Log
Annual strategic plans retained by entity and year. Planning meeting notes retained. THRIVE filter assessments retained. Resource allocation decisions retained. Mid-year strategy change records retained (what changed; why; Matt approval date). OKR cascade records retained.

## Deprecation
Retire when MBL has a Chief Strategy Officer who owns the planning process — with Dr. Lewis reviewing the THRIVE filter outputs and Matt Mathison approving all portfolio-level priorities annually.
