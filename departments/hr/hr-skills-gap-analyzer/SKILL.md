---
name: hr-skills-gap-analyzer
description: "Analyze skills gaps across a team or company. Use when the user says 'skills gap', 'capability gap', 'team skills assessment', 'what skills are we missing', 'skills inventory', 'competency gap', 'skills analysis', 'do we have the skills to execute', 'team capability assessment', 'skills needed for growth', 'hire vs train decision', or 'build vs buy skills'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--department <dept or all>] [--trigger <strategic-initiative|role-change|growth-plan>]"
---

# HR Skills Gap Analyzer

Analyze skills gaps across a team or company at MBL portfolio companies — identifying the difference between the capabilities needed to execute the strategy and the capabilities the team currently has. Skills gap analysis answers the "build vs. buy" question: which gaps can be closed through training and development, and which require hiring? At MBL scale, this analysis directly informs headcount planning and training budget decisions.

## When to Use
- A new strategic initiative requires capabilities the team may not have
- Annual planning — assessing whether the current team can execute next year's plan
- A department is underperforming and the root cause may be a capability gap
- A portfolio company is preparing for significant growth and needs to stress-test team readiness
- Matt Mathison asks "do we have the team to execute this plan?"
- The training needs assessment identified major gaps requiring a hiring vs. training decision

## Skills Gap Framework

```
Skills gap analysis framework:

Step 1 — DEFINE REQUIRED CAPABILITIES:
  What skills does the team need to execute the strategy?
  Source: Strategic plan, OKRs, new initiatives, growth targets
  Separate: Current-role capabilities vs. Future-state capabilities

Step 2 — ASSESS CURRENT CAPABILITIES:
  What skills does the team currently have?
  Source: Performance reviews, manager assessment, self-assessment
  Rating: 1 (no capability) — 3 (adequate) — 5 (expert)

Step 3 — IDENTIFY AND PRIORITIZE GAPS:
  Gap = Required capability — Current capability
  Priority = Gap severity × Business impact of the capability

Step 4 — BUILD VS. BUY DECISION:
  Build (train/develop): Capability can realistically be built in the required timeframe
  Buy (hire): Capability gap is too large, timeline too short, or expertise too deep to train
  Restructure: Capability exists but is in the wrong place in the org; realign

Build vs. buy decision framework:
  Build when: Gap is <2 levels on 5-point scale; timeline is >6 months; 
              training is available; employee motivation is high
  Buy when: Gap is >2 levels; timeline is <3 months; expertise is highly specialized;
             or building would distract from core work
```

## Output Format

```markdown
# Skills Gap Analysis — <Company Name>
**Department(s):** [All / Specific] | **Strategic context:** [Initiative or plan driving the analysis]
**Prepared by:** Dr. John Lewis | **Date:** <Date>
**For:** [CEO / Matt Mathison]

---

## Strategic Capabilities Required

Based on [Company]'s [Year] plan / [Initiative], the following capabilities are needed:

| Capability | Why it matters | Required by | Current importance |
|-----------|---------------|-----------|------------------|
| [e.g., Revenue cycle management (Allevio)] | [Expanding to 15 practices requires RCM expertise] | [Q2 2027] | 🔴 Critical / 🟡 Important / 🟢 Supporting |
| [e.g., Production data analytics (HIVE)] | [LOE optimization requires analysis] | [Q1 2027] | |
| [e.g., Enterprise sales process] | | | |

---

## Current Team Capability Assessment

| Team member | Role | Capability 1 | Capability 2 | Capability 3 | Notes |
|------------|------|------------|------------|------------|-------|
| [Name] | [Role] | [1-5] | [1-5] | [1-5] | |
| [Name] | | | | | |
| **Team average** | | **[X]/5** | **[X]/5** | **[X]/5** | |

---

## Gap Analysis Matrix

| Capability | Required level | Current level | Gap | Priority | Build or Buy |
|-----------|--------------|-------------|-----|---------|------------|
| [Capability 1] | 4/5 | 2/5 | -2 | 🔴 Critical | Buy — gap too large for timeline |
| [Capability 2] | 3/5 | 2/5 | -1 | 🟡 Important | Build — 6-month development plan |
| [Capability 3] | 3/5 | 3/5 | 0 | 🟢 Current | No action needed |
| [Capability 4] | 4/5 | 1/5 | -3 | 🔴 Critical | Buy — specialty expertise required |

---

## Build vs. Buy Decisions

### Build (Train/Develop)

| Capability | Who needs it | How to build | Timeline | Cost |
|-----------|------------|------------|---------|------|
| [Capability X] | [Name(s) / whole team] | [Training program / mentorship / on-the-job] | [Months] | $[X] |
| | | | | |

### Buy (Hire)

| Capability gap | Role to hire | Level | Timeline | Est. cost |
|--------------|------------|-------|---------|---------|
| [Capability Y] | [Role title] | [Level] | [Hire by: Date] | $[X]/year (fully-loaded) |
| | | | | |

### Restructure (Internal Realignment)

| Capability | Currently owned by | Should be owned by | Action |
|-----------|------------------|------------------|--------|
| [Capability Z] | [Person/Dept A — has the skill but it's in the wrong place] | [Dept B] | [Reassign responsibility] |

---

## Priority Recommendations

| Priority | Action | Investment | Timeline | Impact |
|---------|--------|-----------|---------|--------|
| 1 | [Hire [Role] to close [Critical capability] gap] | $[X]/year | [Date] | [Strategy enabler — without this, plan is at risk] |
| 2 | [Build [Capability] for [Team] via [Method]] | $[X] | [Timeline] | [Improves execution quality] |
| 3 | [Restructure — move [Capability] from [A] to [B]] | No cost | Immediate | [Better alignment] |

**Total investment to close critical gaps:** $[X]/year
**Risk if critical gaps are not closed:** [Specific — strategic initiative delayed / compliance risk / operational constraint]
**Matt Mathison decision needed:** [Yes — hire approval + training budget / No — within Dr. Lewis authority]

---

## Capability Roadmap (12-month view)

| Month | Capability milestone |
|-------|---------------------|
| Month 1 | [Hire for [Role] initiated] |
| Month 3 | [Training program for [Capability] begins] |
| Month 6 | [[Team] capable of [Capability] at required level] |
| Month 9 | [New hire fully integrated] |
| Month 12 | [All critical capability gaps closed] |
```

## Output Contract
- Strategy drives the capability requirements — the skills gap analysis is not a general "what are our weaknesses" exercise; it's anchored to the specific strategy or initiative that requires certain capabilities; a skills gap that doesn't affect anything the company is trying to do in the next 12 months is a lower priority than one that directly determines whether a strategic initiative can succeed
- Build vs. buy always explicitly decided — every identified gap gets a build/buy/restructure recommendation; "we'll figure it out" is not a decision; the decision must be made before the hiring plan and training budget are set; leaving it ambiguous causes both plans to be under-resourced
- Gap severity drives the recommendation — a gap of 1 level on a 5-point scale is buildable in 3-6 months with the right development support; a gap of 3+ levels is almost always a hire (building 3 levels of expertise from scratch is a years-long process, not a training program); the recommendation follows the data
- Timeline is explicit — capability gaps without a clear "needed by" date are treated as lower urgency; every critical gap has a timeline because the hiring decision requires lead time (4-6 weeks for most roles, 8-12 weeks for executive), and the training decision requires time to build the capability
- HITL required: Dr. Lewis conducts the analysis with manager input; CEO input on strategic capability requirements; Matt Mathison makes hire/train decisions for investments above $50K annually (new FTE) or $10K (training program); restructure decisions reviewed with CEO before implementation

## System Dependencies
- **Reads from:** Strategic plan / annual OKRs, performance review assessments, manager assessments of team capability, headcount plan, training needs assessment
- **Writes to:** Skills gap analysis (SharePoint/HR/<Company>/Workforce Planning/); headcount plan input; training budget input; Matt Mathison workforce brief
- **HITL Required:** Dr. Lewis conducts with manager input; Matt Mathison makes hire decisions for new FTEs; training investments >$10K require Matt Mathison; restructure decisions reviewed with CEO

## Test Cases
1. **Golden path:** Allevio skills gap analysis — scaling from 12 to 20 practices in 2027 → Strategic requirement: practice operations management at scale requires regional management capability (currently: 1 manager per 4 practices; at 20 practices: need regional structure); Gap analysis: no regional operations manager capability exists (0/5 vs. required 4/5); build vs. buy: gap is 4 levels, timeline is 6 months — Buy: hire Regional Operations Manager by Q1 2027; also required: billing/RCM scalability at volume (current billing team handles 12 practices; 20 practices may exceed capacity); gap: 2 levels — Build: train current billing coordinator on EHR batch billing features (4-month training plan) + hire part-time billing support (if volume requires); total: 1 new hire (Regional Ops Mgr, $85K base) + $500 training investment; Matt Mathison: hire approval required; training: Dr. Lewis authority
2. **Edge case:** The analysis reveals a critical capability gap but the hire would take 6 months and the initiative launches in 3 months → build a bridging plan: (a) can a consultant or contractor fill the gap for 3-6 months while the permanent hire is recruited? (b) can the initiative be phased to start with the capabilities the team already has and add the new capability later? (c) can the launch be delayed to allow the hire to complete? present all three options to Matt Mathison with tradeoffs; do not present only the problem; present the options
3. **Adversarial:** A CEO is resistant to the skills gap analysis because "it will tell me I need to hire more people and I can't afford that" → reframe: "The analysis doesn't prescribe hiring — it identifies gaps. For each gap, we evaluate build vs. buy. Some gaps are cheapest to close with a $500 training program; some require a hire. What the analysis tells us is which gaps are actually costing us something by not being closed — so we can make the investment decision with accurate information rather than hoping the gap resolves itself."

## Audit Log
Skills gap analyses retained by company, initiative, and date. Build vs. buy decisions documented. Hire approvals retained. Training investments and outcomes tracked. Capability milestones and actual achievement dates documented.

## Deprecation
Retire when portfolio companies have strategic workforce planning processes with annual skills assessments, HRIS-integrated capability tracking, and management teams trained to identify and escalate capability gaps as part of standard business planning — rather than requiring Dr. Lewis to conduct point-in-time analyses.
