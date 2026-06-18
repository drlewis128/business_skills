---
name: exec-annual-planning-kickoff
description: "Launch the MBL Partners annual planning cycle across the portfolio. Use when the user says 'annual planning', 'annual planning kickoff', 'start the annual planning', 'launch the planning cycle', 'annual plan', 'annual operating plan', 'next year planning', 'build the annual plan', 'kick off the planning', 'plan for next year', 'annual strategy', 'annual priorities', 'set the priorities for next year', 'annual review and planning', 'planning kickoff', 'what are we doing next year', 'strategic planning kickoff', 'kick off the strategy', 'portfolio planning', 'entity planning', 'annual roadmap', 'plan the year', 'Q4 planning', 'September planning', 'October planning', or 'year-ahead planning'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--year <YYYY>] [--entity <all|MBL|Allevio|HIVE|Column6>] [--phase <kickoff|discovery|priority-setting|plan-build|cascade>] [--action <launch|prepare|compile|finalize>]"
---

# Exec Annual Planning Kickoff

Launch the MBL Partners annual planning cycle across the portfolio — coordinating the September-through-January planning rhythm that produces the following year's priorities, operating plans, and capital allocation commitments. The annual planning kickoff is the highest-leverage planning event in the MBL calendar: it is the moment when MBL's strategic ambitions become specific plans with owners, deadlines, and budget commitments. Poorly run annual planning produces beautiful decks and weak execution. Well-run annual planning produces 3 priorities per entity that the team can cite from memory, capital aligned to those priorities, and a clear answer to "what does success look like for us in [year]?"

## When to Use
- September (annual planning kickoff launch)
- The planning cycle needs to be reset or accelerated
- A new entity has joined the portfolio and needs to be incorporated into the planning cadence
- Matt Mathison asks "what does our annual planning process look like?"

## Annual Planning Kickoff Framework

```
ANNUAL PLANNING CALENDAR (September → January):

  PHASE 1 — DISCOVERY (September - mid-October):
    Purpose: Assess the current state before building the future state.
    
    Inputs to gather (by September 30):
      □ Each entity: prior year performance vs. commitments (GRR/NRR/entity-specific metrics)
      □ Each entity: top 3 challenges and top 3 opportunities (entity CEO input)
      □ Each entity: capital needs estimate for the planning year
      □ Portfolio: LP expectations and capital availability (Matt Mathison)
      □ Portfolio: market conditions change since last year's plan
      □ Portfolio: THRIVE culture health assessment (exec-culture-builder Q3 output)
      
    Discovery meeting (October 1-15):
      Matt Mathison + Dr. Lewis: 2-hour portfolio discovery session
      Output: alignment on what changed, what matters, and what the planning year must prioritize
      
  PHASE 2 — PRIORITY SETTING (mid-October - November):
    Purpose: Define the 3 portfolio-level priorities that drive everything else.
    
    Priority-setting session (Matt Mathison + entity CEOs; November 1-15):
      Entity CEOs present their top 3 priority proposals (3 max per entity)
      Matt Mathison facilitates the portfolio-level priority selection
      Portfolio-level priorities are set: maximum 3 (exec-strategic-planning)
      Entity-level priorities are confirmed: maximum 3 per entity
      THRIVE filter applied to all priorities
      Capital implications of each priority are surfaced (exec-capital-allocation)
      
    Priority criteria:
      Is it in the top 3 things that create the most value?
      Is it achievable with available resources?
      Does it pass the THRIVE filter?
      Will it still matter in 12 months?
      
  PHASE 3 — OPERATING PLAN BUILD (November - December 15):
    Purpose: Translate priorities into a specific operating plan with milestones and owners.
    
    Each entity CEO builds their operating plan:
      □ For each entity priority: quarterly milestones, owners, resource requirements
      □ Budget by line item (major categories; not every $500 decision)
      □ Headcount plan (opens; timing; cost)
      □ Capital requests (structured per exec-capital-allocation)
      
    Dr. Lewis builds the MBL-level operating plan:
      □ AI strategy roadmap for the planning year (exec-ai-strategy-director)
      □ Technology investments planned (exec-technology-investment)
      □ Meeting intelligence and executive support cadence
      □ Deal activity targets and integration capacity
      
    Operating plan submission deadline: December 15
    Matt Mathison + Dr. Lewis review: December 16-20
    
  PHASE 4 — CASCADE AND ALIGNMENT (December - January 1):
    Purpose: Ensure the plan is understood at every level of the organization.
    
    December 20-31: Entity CEO cascades to their leadership teams
    January 1 (New Year): Each entity holds a priorities all-hands (exec-all-hands-planner)
    January 15: First entity-level 1-on-1 with the new year's plan in place
    
  PLANNING OUTPUT PACKAGE:
    □ MBL Portfolio Priority Card (3 priorities; one-page; designed for Matt to carry)
    □ Each entity 1-pager (3 priorities; North Star metric; capital budget; key milestone dates)
    □ Full operating plan (detailed; internal use only; SharePoint)
    □ Board update (December board: plan preview; January board: plan confirmation)
    □ LP communication (Q4 report: brief planning summary; full plan not disclosed to LPs)
```

## Output Format

```markdown
# Annual Planning Kickoff — [Year] — [Date]
**Initiated by:** Dr. Lewis | **Owned by:** Matt Mathison

---

## Planning Calendar

| Phase | Dates | Key output | Owner |
|-------|-------|-----------|-------|
| Discovery | Sept 1 - Oct 15 | Discovery session notes | Dr. Lewis |
| Priority Setting | Oct 15 - Nov 15 | 3 priorities per entity | Matt Mathison |
| Plan Build | Nov 15 - Dec 15 | Operating plans | Entity CEOs |
| Cascade | Dec 15 - Jan 1 | Team alignment | Entity CEOs |

---

## Discovery Inputs Tracker

| Entity | Prior year performance | Top 3 challenges | Capital estimate | Submitted |
|--------|----------------------|-----------------|-----------------|---------|
| Allevio | [GRR/NRR actuals] | [Challenges] | $[X] | ✅/⏳ |
| HIVE | ... | ... | ... | |
| Column6 | ... | ... | ... | |
| MBL | ... | ... | ... | |

---

## Priority Setting Output (when complete)

**MBL Portfolio Priorities [Year]:**
1. [Priority 1 — cross-portfolio]
2. [Priority 2]
3. [Priority 3]

**Allevio Priorities:** [3 priorities]
**HIVE Priorities:** [3 priorities]
**Column6 Priorities:** [3 priorities]

---

## Operating Plan Status

| Entity | Plan submitted | Matt review | Status |
|--------|--------------|------------|--------|
| Allevio | [Date] | [Date] | [Draft/Final] |
```

## Output Contract
- 3 priorities maximum per entity — the discipline of 3 priorities is the most important rule of annual planning; an entity with 7 priorities has no priorities; every year, entity CEOs will want to include more than 3 because everything feels important; Matt Mathison holds the 3-priority discipline; Dr. Lewis enforces it in the plan build phase; if a CEO submits an operating plan with 5 priorities, Dr. Lewis returns it with the question: "Which 3 of these 5 will you stake your year on?"
- Discovery before priorities — no priority-setting session happens before the discovery inputs are received; setting priorities without knowing the current state of each entity produces priorities that are disconnected from reality; entity CEOs who want to skip discovery to get to the planning "faster" are producing a lower-quality plan faster; Dr. Lewis enforces the discovery submission deadline (September 30) before scheduling the priority-setting sessions
- Cascade is not optional — a plan that Matt Mathison and the entity CEOs understand but the team doesn't know about is not an operating plan; it's a leadership agreement; the January all-hands (exec-all-hands-planner) is where the plan becomes the team's plan; Dr. Lewis tracks the cascade (did every entity do the all-hands? Was the team left with 3 priorities they can remember?); an entity that skips the cascade doesn't get to complain that the team isn't executing on the plan in Q2
- HITL required: Matt Mathison leads the priority-setting session and sets the portfolio-level priorities; entity CEO operating plans are reviewed by Matt before finalization; capital budget requests within the plans are approved per exec-capital-allocation thresholds; the board receives the plan preview (December) and confirmation (January) per exec-board-communication; LP communication on the plan is limited (summary only; no operating details) per exec-lp-reporting

## System Dependencies
- **Reads from:** exec-strategic-planning (multi-year strategic context — annual plan must align with the 3-year arc); exec-portfolio-review (Q3 actual performance — the primary discovery input); exec-capital-allocation (capital available for the planning year); exec-culture-builder (THRIVE culture health — informs people and culture priorities); exec-value-creation-plan (VCP milestones for the planning year → operating plan inputs); exec-kpi-dashboard (current entity metrics)
- **Writes to:** Annual planning package (SharePoint → ExecutiveSupport → Planning → [YYYY]); exec-action-tracker (operating plan milestones as action items); exec-capital-allocation (approved capital plan for the year); exec-board-communication (planning update for December and January board meetings); exec-lp-reporting (planning summary for Q4 LP report); exec-all-hands-planner (priorities cascade inputs for January all-hands)
- **HITL Required:** Matt Mathison leads the priority-setting session; entity operating plans reviewed by Matt; capital budget requests reviewed per thresholds; board planning update requires Matt approval; LP planning communication requires Matt approval; all entity CEO operating plans are finalized with Matt Mathison confirmation before December 20

## Test Cases
1. **Golden path:** September 1 planning kickoff; Dr. Lewis sends discovery input template to all entity CEOs and Matt Mathison; deadline September 30; all 4 inputs received by September 28 (Allevio: GRR 93%, top challenge is clinical enrollment pace; HIVE: leased acres on plan, top challenge is competing operator situation; Column6: VCR strong, top opportunity is holding company expansion). October 5: Matt + Dr. Lewis 2-hour discovery session; alignment: "The holding company expansion at Column6 is the highest-leverage portfolio growth opportunity for next year; Allevio clinical enrollment needs to be a named priority; HIVE stability is the goal — defend the position." November 10: priority-setting session with entity CEOs; 3 portfolio priorities confirmed; entity plans submitted December 14; Matt reviews December 17-19; plan finalized December 20; all-hands planned for January 5-8 per entity. Plan execution begins January 15.
2. **Edge case:** An entity CEO submits their operating plan on December 14 with 6 priorities → Dr. Lewis: "The plan has 6 priorities. Our process requires 3. I'm returning this with one question: if you could only accomplish 3 of these 6 in the next 12 months and everything else stayed the same, which 3 would create the most value? When I have those 3, I'll move the plan forward for Matt's review. This isn't optional — Matt will ask the same question in the review meeting." Entity CEO: "Understood. I'll send the revised plan by tomorrow." Revised plan: 3 priorities. Plan proceeds.
3. **Adversarial:** A board member asks to be included in the priority-setting session → Dr. Lewis: "I'd recommend against including the full board in the priority-setting session — that session is designed for the operating leadership team to work through trade-offs with Matt Mathison's facilitation, which works best as a smaller group. What I'd suggest instead: the board receives a formal briefing at the December board meeting with the resulting plan — where they can ask questions and provide guidance on any priorities they want to adjust. The board's role is governance over the plan, not co-authorship. Matt, would you like to include a specific board member in the discovery phase instead? That could address the engagement concern without changing the priority-setting dynamic." Matt: "Agreed. Invite the board chair to the discovery session only."

## Audit Log
All annual planning packages retained by year. Discovery input submissions retained (dates; what was submitted). Priority-setting session notes retained. Operating plan versions retained (draft; Matt review; final). Cascade completion records retained (which entities did the all-hands; when; what were the 3 stated priorities). Matt Mathison review records retained.

## Deprecation
Retire when MBL has a dedicated strategy or planning function who manages the annual planning cycle — with Dr. Lewis providing the AI and technology planning inputs and Matt Mathison retaining the priority-setting authority and board/LP communication responsibility.
