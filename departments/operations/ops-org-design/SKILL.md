---
name: ops-org-design
description: "Design organizational structure for MBL Partners portfolio entities. Use when the user says 'org design', 'organizational design', 'org structure', 'organizational structure', 'org chart', 'organizational chart', 'reporting structure', 'reporting lines', 'span of control', 'management structure', 'team structure', 'company structure', 'entity structure', 'entity org design', 'department structure', 'role design', 'role clarity', 'accountability structure', 'RACI', 'responsibility matrix', 'decision rights', 'decision authority', 'who owns what', 'who decides', 'leadership structure', 'leadership design', 'executive team design', 'executive team structure', 'C-suite design', 'hiring for org design', 'promote or hire', 'management layer', 'span of control review', 'flat vs. hierarchical', 'matrix org', 'portfolio org design', 'entity org design', 'Allevio org design', 'HIVE org design', 'Column6 org design', or 'MBL org design'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6|mbl|all>] [--action <design|review|map|recommend|diagnose>] [--focus <structure|roles|accountability|hiring|spans>] [--stage <startup|growth|scale|transformation>]"
---

# Ops Org Design

Design organizational structure for MBL Partners portfolio entities — evaluating the current org, identifying structural gaps that are limiting execution, designing role clarity and accountability frameworks, and recommending org changes that support the entity's current and next growth stage. Org design is one of the highest-leverage operational interventions in a PE portfolio: the right structure removes friction from decisions, ensures accountability is clear, and creates a management system that scales; the wrong structure creates ambiguity, political conflict, missed accountability, and management bandwidth bottlenecks that slow execution and erode value creation. Dr. Lewis diagnoses structural problems and designs solutions; the entity CEO implements with Dr. Lewis's operational support; Matt Mathison approves any structural changes that affect the executive team or cost the entity more than a defined threshold.

## When to Use
- An entity is growing to the next stage and the current structure is not scaling
- Accountability is unclear (two people think they own the same thing; nobody owns something critical)
- An executive hire requires designing the role and reporting structure
- Entity CEO is experiencing management bandwidth overload (too many direct reports)
- Post-acquisition org integration design

## Org Design Framework

```
MBL ORG DESIGN PRINCIPLES:

  1. ACCOUNTABILITY IS SINGULAR:
     Every critical function has one owner (not shared ownership)
     Shared ownership = no owner = the function doesn't get done or gets done poorly
     
  2. STRUCTURE FOLLOWS STRATEGY:
     The org design should enable the entity's strategy
     If the strategy is employer group expansion → does the structure have a clear owner for sales?
     If the strategy is clinical excellence → does the clinical function report high?
     
  3. SPANS OF CONTROL:
     CEO: maximum 6-8 direct reports (beyond this = management overload)
     Manager: 4-7 direct reports (depends on role complexity)
     Under 3 direct reports: is there a management layer that doesn't need to exist?
     
  4. STAGE-APPROPRIATE STRUCTURE:
     Stage 1 (<$3M revenue): founder does everything; 1-2 key hires
     Stage 2 ($3-8M): functional leads in 2-3 key areas; CEO begins to delegate
     Stage 3 ($8-20M): full functional leadership; formalized accountability; board-ready
     Stage 4 ($20M+): division/business unit structure; professional management team
     
  5. DESIGN FOR DECISIONS:
     Good org design enables fast, clear decisions
     Org chart tells you: who decides what?
     If "who decides X?" has an unclear answer → the org design has a gap
     
  ENTITY STAGE ASSESSMENTS (current, approximate):
    Allevio: Stage 2-3 (employer group model; clinical operations; billing)
    HIVE: Stage 1-2 (lean operator; royalty model; limited staff need)
    Column6: Stage 2-3 (sales/agency success; campaign operations; tech)
    MBL: Portfolio holding structure (Dr. Lewis as Principal Systems Engineer + AI Director)

ORG DESIGN DIAGNOSIS:

  SYMPTOMS OF BAD ORG DESIGN:
    CEO is working >60 hours/week and still feels behind → span of control problem
    Same decisions are made twice or reversed → unclear decision authority
    "We dropped the ball on X" and it's not clear who dropped it → accountability gap
    Two leaders are in conflict over the same domain → overlapping ownership
    A key function has no leader → coverage gap
    
  DIAGNOSTIC QUESTIONS:
    For each critical function: Who owns it? Who decides? Who does the work?
    Are the answers to all three different people (ideal) or the same person (overloaded)?
    What decisions is the CEO making that should be delegated?
    What happens when the CEO is unavailable for 2 weeks?
    
  COMMON FIXES:
    Create a functional lead role (delegate a domain out of the CEO's span)
    Clarify decision rights (RACI: who is Responsible; Accountable; Consulted; Informed?)
    Restructure reporting lines (a function reporting to the wrong leader)
    Add a management layer (CEO → VP → managers; when span is too wide)
    Remove a management layer (extra layer adding process without value)

RACI FRAMEWORK:

  For critical decisions or processes:
    R — Responsible: who does the work?
    A — Accountable: who is answerable for the outcome? (only one person)
    C — Consulted: who is asked for input before the decision?
    I — Informed: who is told after the decision?
    
  Dr. Lewis uses RACI for:
    Capital allocation decisions: Matt (A); Dr. Lewis (R, C); entity CEO (C); Jimmy (I)
    Clinical quality decisions at Allevio: Allevio CEO (A); Medical Director (R); Dr. Lewis (I)
    Agency contract decisions at Column6: Column6 CEO (A); Dr. Lewis (C if >$100K)
```

## Output Format

```markdown
# Org Design Assessment — [Entity] — [Date]
**Prepared by:** Dr. Lewis | **For:** [Entity CEO] + Matt Mathison

---

## Current State

[Simple org chart or functional map — text-based]
CEO
├── [Role 1]
├── [Role 2]
├── [Role 3]
└── [Role 4]

**CEO direct reports:** [N] | **Management bandwidth:** [Adequate / Strained / Overloaded]

---

## Structural Gaps Identified

| Gap | Impact | Priority |
|-----|--------|---------|
| No dedicated sales/growth owner — CEO covering | Slows employer group expansion | High |
| Billing and clinical report to same person | No accountability separation for quality vs. cost | Medium |

---

## Recommended Design

[Updated org chart]

**Key changes:**
1. [Change 1]: [Rationale]
2. [Change 2]: [Rationale]

**Hiring required:** [N] new roles | Est. cost: $[X]/year

---

## Decision Rights (RACI — key decisions)

| Decision | Responsible | Accountable | Consulted | Informed |
|----------|------------|------------|---------|---------|
| New employer group pricing | Allevio CEO | Allevio CEO | Dr. Lewis | Matt |
| Clinical staff hire | Medical Dir. | Allevio CEO | HR | Dr. Lewis |
```

## Output Contract
- Accountability is singular before any design is approved — if the proposed org design has shared ownership of any critical function, Dr. Lewis sends it back with a specific question: "Who is the single person accountable for [function]?"; shared accountability is not an acceptable design outcome; it is a political compromise that protects two people from being evaluated at the cost of the function being poorly executed; Dr. Lewis will not present an org design to Matt Mathison that has shared accountability for a critical function
- Org changes are presented with the decision rights picture — a new org chart without a RACI for key decisions is an incomplete org design; the org chart tells you who reports to whom; the RACI tells you who decides what; both are required; Dr. Lewis completes the RACI for the top 5-10 decisions in the redesigned entity before the design is finalized; this prevents the "but I thought I owned that decision" conflict that emerges post-redesign
- Structure follows what the entity actually needs, not what the entity CEO wants to hear — an entity CEO who wants to keep 9 direct reports because "I like to be close to the work" is running a span-of-control problem that Dr. Lewis will name directly; the recommendation is based on the entity's strategy, stage, and execution capacity, not on the CEO's management style preference; Dr. Lewis presents the recommendation with the business case; if the CEO disagrees, the discussion goes to Matt Mathison with both perspectives
- HITL required: any executive-level role creation, elimination, or reporting change → Matt Mathison awareness before implementation; org design changes that add >$150K in annualized compensation → Matt Mathison approval; entity CEO role changes (adding or removing direct reports at the senior level) → Matt Mathison awareness; post-acquisition org integration design → Matt Mathison sign-off on the final structure; RACI for capital decisions → Matt Mathison reviews and confirms his role in the accountability matrix

## System Dependencies
- **Reads from:** Entity CEO discussions (diagnostic input); entity financial model (what roles can the entity afford at its current revenue stage?); fin-cfo-search (talent benchmarks for financial roles); ops-headcount-ops (headcount plan — org design is the structural input); ops-culture-ops (culture implications of org changes)
- **Writes to:** Org design documents (SharePoint → Operations → OrgDesign → [Entity] → [Date]); RACI matrices; Matt Mathison briefings (executive-level changes; cost-threshold changes); entity CEO briefings (recommendations); ops-headcount-ops (approved org design drives headcount plan)
- **HITL Required:** Executive-level role changes → Matt awareness; org changes >$150K annualized cost → Matt approval; post-acquisition org integration → Matt sign-off; RACI for capital decisions → Matt reviews his accountability role; CEO span-of-control disagreements → Dr. Lewis presents both positions to Matt

## Test Cases
1. **Golden path:** Allevio is at $7.2M revenue with 4 employer groups and the CEO has 7 direct reports (clinical; billing; sales; HR; operations; finance; marketing). CEO says she feels like she's "drowning." Dr. Lewis diagnostic: the 7 direct reports include 3 functional leads (clinical; billing; ops) and 4 individual contributors (HR; sales; finance; marketing) — the individual contributors are adding management workload that should be below a functional lead. Recommendation: create a "Chief Operating Officer" or "VP Operations" role that takes operations + HR + billing (3 direct reports); clinical stays with CEO; sales stays with CEO; finance/Dr. Lewis is the finance support. CEO goes from 7 to 4 direct reports. Annualized cost: +$85K for the VP Ops role. Matt awareness: "Allevio is adding a VP Operations role to address CEO span of control — incremental cost $85K/year; this is in budget given current ARR growth."
2. **Edge case:** An entity has two people who both believe they own the sales function (the CEO and a newly hired "head of growth") → Dr. Lewis: "I've identified a dual-ownership problem on the sales function — both [CEO] and [Head of Growth] believe they are accountable for employer group sales. This needs to be resolved before it becomes a relationship conflict. My recommendation: a 30-minute RACI conversation with both of them in the room. The question is simple: who is Accountable for 'employer group signed in a given quarter'? Only one person can be Accountable. My suggested resolution: [Head of Growth] is Accountable for new group sales; [CEO] is Accountable for overall employer revenue including retention and upsell; they are Consulted for each other. This is a clean split that doesn't undermine either person. Want me to facilitate?"
3. **Adversarial:** An entity CEO wants to create 3 new VP-level roles (adding approximately $450K in compensation) without a clear strategic rationale → Dr. Lewis: "Before taking this to Matt, I want to make sure the org design supports the strategy. Let me ask: what decisions or functions are currently being executed poorly because there's no VP-level leader? Can you walk me through the 3 roles and specifically what each will own that isn't currently owned? $450K in new VP comp is material at [entity]'s current revenue — it needs to create proportional execution improvement. If the answer is 'I need management support because I'm overloaded,' then I want to design the most efficient structure to solve that problem — which may be 1 strong COO rather than 3 VPs. Let me build the business case for the design before we ask Matt for approval."

## Audit Log
Org design documents retained (with dates and versions). Executive-level change records retained (Matt approval dates). Post-acquisition org integration records retained. RACI matrices retained. Diagnostic records retained (symptoms; assessment; recommendation).

## Deprecation
Org design is reviewed at each entity at least annually, and at every acquisition. The design framework (principles; stage-appropriate structure; RACI) is maintained indefinitely; specific org designs evolve as entities grow.
