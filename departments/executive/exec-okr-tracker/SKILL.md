---
name: exec-okr-tracker
description: "Build and track OKRs (Objectives and Key Results) for MBL Partners and portfolio companies. Use when the user says 'OKRs', 'OKR', 'objectives and key results', 'build the OKRs', 'set the OKRs', 'write the OKRs', 'quarterly OKRs', 'annual OKRs', 'OKR review', 'OKR tracking', 'OKR update', 'what are our OKRs', 'check the OKR progress', 'OKR status', 'how are we doing on OKRs', 'OKR scoring', 'OKR grade', 'OKR completion', 'OKR score', 'review the objectives', 'key results', 'track the objectives', 'objective progress', 'goal tracking', 'quarterly goals', 'company goals', 'team goals', 'entity goals', 'what are we trying to accomplish this quarter', 'set the quarterly objectives', or 'quarterly planning'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--level <portfolio|entity|team>] [--period <Q1|Q2|Q3|Q4|annual>] [--action <build|review|score|update>]"
---

# Exec OKR Tracker

Build and track OKRs (Objectives and Key Results) for MBL Partners and portfolio companies — translating annual priorities (exec-strategic-planning; exec-annual-planning-kickoff) into quarterly measurable commitments with visible progress tracking. OKRs at MBL are not a goal-setting framework for its own sake — they are the accountability layer that connects the annual operating plan to weekly execution; the mechanism by which Matt Mathison and entity CEOs can ask "are we actually doing what we said we would do?" at any moment in the quarter. Good OKRs have 1 clear objective and 2-4 key results that are specific enough that any team member can determine whether the result has been achieved or not.

## When to Use
- Beginning of each quarter (build the quarter's OKRs from the annual plan)
- Mid-quarter OKR check-in (what's on track; what needs attention)
- End of quarter (score and debrief; inform the next quarter's OKRs)
- Annual OKRs are needed for a multi-year planning horizon
- An entity's OKR structure is unclear and needs to be rebuilt

## OKR Framework

```
OKR STRUCTURE:

  OBJECTIVE: What are we trying to accomplish? (Aspirational; directional; not a number)
    Good: "Establish Allevio as the trusted employer healthcare partner in the Phoenix market"
    Bad: "Grow by 15%" (that's a key result, not an objective)
    
  KEY RESULTS: How will we know we accomplished it? (Specific; measurable; time-bound)
    Good KR: "Signed employer group agreements with 3 net new groups by September 30"
    Good KR: "GRR at or above 92% at end of quarter"
    Bad KR: "Improve employer relationships" (not measurable)
    
  OKR RULES:
    □ 3-5 OKRs per entity per quarter (not 10)
    □ Each OKR has 1 objective and 2-4 key results
    □ Each key result has one owner and one due date
    □ OKRs cascade: portfolio OKRs → entity OKRs → team OKRs
    □ 70% completion = success (not 100% — OKRs should be ambitious)
    □ An OKR scored 100% was not ambitious enough

MBL PORTFOLIO OKR STRUCTURE (quarterly):

  PORTFOLIO-LEVEL OKRS (set by Matt Mathison; driven by annual priorities):
    These cascade into entity-level OKRs.
    Max: 3 portfolio-level OKRs per quarter.
    Example Q3:
      Objective 1: Accelerate Allevio's employer group expansion in Arizona
        KR1: Allevio reaches 16 active employer groups by September 30 (currently 12)
        KR2: 2 LOIs signed with new employer groups by August 15
        KR3: Allevio GRR at or above 91% at quarter-end
        
      Objective 2: Demonstrate Column6's holding company expansion playbook
        KR1: 1 new sibling agency relationship activated under the Gap Media holding company
        KR2: Column6 VCR at or above 92% for the quarter
        KR3: Agency NRR at or above 95% through Q3
        
      Objective 3: Advance MBL AI infrastructure to Phase 1
        KR1: Krista capability gaps 1 and 2 resolved by August 31
        KR2: Autonomous partner email operational (no browser fallback) by September 15
        KR3: Meeting intelligence pipeline (Krista → action items → Monday.com) live by September 30
        
ENTITY-LEVEL OKR REQUIREMENTS:

  Allevio OKRs must connect to:
    □ Employer group growth (GRR/NRR)
    □ Claim ratio management
    □ Clinical program enrollment
    □ One operational improvement priority
    
  HIVE OKRs must connect to:
    □ Leased acreage or royalty metric
    □ Landowner GRR
    □ One operational or competitive priority
    
  Column6 OKRs must connect to:
    □ VCR (target ≥92%)
    □ Agency NRR
    □ Relationship depth (Priority A count or holding company expansion)

OKR SCORING:

  End of quarter scoring for each key result:
    0.0 — Not achieved
    0.3 — Partial progress, significantly short of target
    0.7 — Mostly achieved; minor gap from target
    1.0 — Fully achieved
    
  OKR overall score: average of all key result scores
  
  Score interpretation:
    0.7-1.0 — Strong quarter; OKR was appropriately ambitious
    0.4-0.6 — Mixed quarter; some key results need investigation
    <0.4 — Difficult quarter; root cause analysis required (exec-team-accountability MISS categories)
    
  1.0 on every OKR: congratulate briefly; then ask "were these ambitious enough?"

QUARTERLY DEBRIEF (15 minutes; end of quarter):
  For each OKR:
    Score + evidence
    For any KR scored <0.7: what was the root cause? (A/B/C/D per exec-team-accountability)
    What carries forward to next quarter's OKRs?
    What was learned that changes the approach?
```

## Output Format

```markdown
# OKR Tracker — [Entity] — [Quarter Year]
**Owner:** [Entity CEO / Matt Mathison] | **Tracked by:** Dr. Lewis

---

## Quarter OKRs and Progress

### O1: [Objective 1 — aspirational statement]

| Key Result | Owner | Target | Current | Score |
|-----------|-------|--------|---------|-------|
| KR1: [Description] | [Name] | [Target] | [Current] | [0-1.0] |
| KR2: [Description] | [Name] | [Target] | [Current] | [0-1.0] |
| KR3: [Description] | [Name] | [Target] | [Current] | [0-1.0] |

**O1 Score:** [Average of KR scores]

---

### O2: [Objective 2]

[Same format]

---

## Quarter Summary Score

| OKR | Score | Status |
|-----|-------|--------|
| O1 | [Score] | 🟢/🟡/🔴 |
| O2 | [Score] | 🟢/🟡/🔴 |
| O3 | [Score] | 🟢/🟡/🔴 |
| **Overall** | **[Avg]** | **[Status]** |

---

## End-of-Quarter Debrief Notes

**What worked:** [Specific win with evidence]
**What didn't:** [Specific miss with root cause category A/B/C/D]
**Carries to next quarter:** [What unfinished or new OKR work to include next quarter]
```

## Output Contract
- OKRs are set before the quarter starts, not after — an OKR written on January 15 for Q1 (which ends March 31) is a goal set after 15 days of the quarter have passed; Dr. Lewis works with entity CEOs and Matt Mathison to have OKRs set and confirmed by the last week of the prior quarter (December 15 for Q1; March 15 for Q2; etc.); OKRs set mid-quarter are a planning process failure
- 70% = success; 100% = not ambitious enough — this is the hardest OKR cultural shift for MBL entity teams; teams accustomed to goal-setting systems where 100% is expected will sandbag OKRs to ensure full completion; Dr. Lewis explains the scoring model in every OKR kickoff: "If you score 100% on everything, your OKRs were too easy. If you score 40%, they were unrealistic or you had a very bad quarter. 70-80% on ambitious OKRs is exactly where we want to be." This framing requires Matt Mathison's active modeling — he cannot criticize 70% scores if the OKRs were set ambitiously
- OKRs are not KPIs — KPIs (exec-kpi-dashboard) track ongoing business health metrics; OKRs track the achievement of specific initiatives and improvements; the claim ratio is a KPI; "reduce the claim ratio from 91% to 87% by September 30 through the launch of the clinical intervention program" is a key result; both matter but they are different instruments; Dr. Lewis keeps the two distinct and does not let entity teams conflate them
- HITL required: Matt Mathison approves the portfolio-level OKRs before they are communicated; entity CEO OKRs are reviewed by Matt at the quarterly planning session; OKR debrief is part of the monthly entity CEO 1-on-1 (mid-quarter check) and the portfolio review (end-of-quarter scoring); any KR that is RED for 4 weeks straight is a Tier 3 alert equivalent — flagged to Matt within 24 hours

## System Dependencies
- **Reads from:** exec-annual-planning-kickoff (annual priorities cascade into quarterly OKRs); exec-strategic-planning (multi-year strategic context); exec-kpi-dashboard (current entity metrics — the baseline against which KRs are set); exec-team-accountability (OKR completion contributes to accountability review); exec-portfolio-review (end-of-quarter OKR scores feed directly into the portfolio review)
- **Writes to:** OKR tracker (SharePoint → ExecutiveSupport → OKRs → [Entity] → [YYYY]-Q[N]); exec-action-tracker (individual key result items are logged as action items); exec-portfolio-review (OKR scores are a key section of the quarterly review); exec-ceo-briefing (current OKR status in the what-happened and decisions sections); exec-kpi-dashboard (OKR completion rate as a portfolio operations metric)
- **HITL Required:** Portfolio-level OKRs approved by Matt Mathison; entity OKRs reviewed by Matt at quarterly planning; mid-quarter RED KRs flagged to Matt within 24 hours; end-of-quarter debrief is part of the portfolio review (Matt's meeting); any OKR change mid-quarter (scope, target, or owner) requires Matt Mathison awareness and entity CEO explanation of why the change is warranted

## Test Cases
1. **Golden path:** Q3 Allevio OKRs built by June 20: O1 — "Establish Allevio as the employer of choice for Phoenix-area mid-market employers": KR1 (16 active employer groups by Sept 30; current 12); KR2 (GRR ≥92% at quarter-end); KR3 (2 OE renewal completions with no churn). O2 — "Build clinical quality evidence that earns renewals": KR1 (clinical enrollment to 33%; current 28%); KR2 (claim ratio at or below 87%; current 89%). Matt approves; OKRs logged. Mid-quarter check (August): O1 — KR1 at 14 (on track to 16); KR2 — GRR 92.4% (on track); KR3 — 2 of 4 OE renewals complete (on track). O2 — KR1 at 30% (slightly behind); KR2 — claim ratio 88% (1 point behind). Adjustment: accelerate clinical team outreach in August. End of quarter: O1 score 0.87; O2 score 0.72. Overall: 0.80. Strong quarter.
2. **Edge case:** Entity CEO wants to change a key result mid-quarter because the target was too aggressive → Dr. Lewis: "I understand the pressure. Here's my recommendation: let's not change the target, but let's be honest in the scoring. If the original KR was 16 employer groups and we land at 14, that's a 0.7 — which is a successful quarter. Changing the target to 14 mid-quarter and then scoring 1.0 defeats the purpose of OKRs. The lesson for next quarter: we calibrate the target better. For this quarter: leave the target, score what we achieve, and learn from the gap. What's causing us to land at 14 instead of 16?" Entity CEO: "Two deals pushed to Q4." Dr. Lewis: "That's useful — log that as a Q4 carry-forward. The Q3 OKR stays at its original target."
3. **Adversarial:** Matt asks Dr. Lewis to set OKRs for an entity without involving the entity CEO → Dr. Lewis: "I'd recommend against setting entity OKRs without the entity CEO's involvement — OKRs that are imposed rather than co-created don't generate the same ownership and execution commitment. The entity CEO who sets their own OKRs (with Matt's guidance and approval) has a personal stake in achieving them. The entity CEO who receives OKRs from MBL has a compliance relationship, not an ownership relationship. What I can do: I'll build a draft OKR framework based on the annual plan and entity performance, share it with the entity CEO as a starting point, get their input on what's achievable and what's missing, then bring Matt the final set for approval. That takes one extra step but produces much better execution." Matt: "Agreed. Do it that way."

## Audit Log
All OKR documents retained by entity, quarter, and year. OKR build dates retained (were OKRs set before the quarter started?). Mid-quarter check-in records retained. End-of-quarter scoring records retained. Debrief notes retained. Target change requests retained (any mid-quarter OKR change — what was changed; who approved; why). Year-over-year OKR completion rates retained.

## Deprecation
Retire when each entity has a COO or Chief of Staff who manages the OKR cadence and tracking — with Dr. Lewis providing the portfolio-level OKR and Matt Mathison retaining the portfolio OKR approval authority and end-of-quarter review.
