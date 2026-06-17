---
name: strategy-annual-plan-builder
description: "Build the annual strategic plan — situation analysis, priorities, resource allocation, and cascade. Use when the user says 'annual plan', 'strategic plan', 'annual planning', 'strategic planning', 'where are we going this year', 'company priorities', 'annual strategy', 'build the plan', 'planning cycle', 'strategy document', 'company strategy', 'strategic priorities for the year', 'one-year plan', or 'build our strategic plan'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <YYYY>] [--phase <input|analysis|decision|cascade|document>]"
---

# Annual Strategic Plan Builder

Build the annual strategic plan for MBL portfolio companies — taking the company from where it is to a clear set of priorities, resource commitments, and measurable goals for the year ahead. The annual plan is the highest-leverage document a leadership team produces: it forces honest assessment of current state, explicit choices about what to pursue and what not to, and a shared contract with every department about what success looks like. At MBL portfolio scale, the plan must be CEO-executable (not a consultant deck), Matt Mathison-aligned (on investment thesis and returns), and short enough to actually guide decisions throughout the year.

## When to Use
- Q4 — building next year's plan
- A new CEO or leadership team needs to articulate strategy
- Post-acquisition — building the 100-day plan and Year 1 strategy
- Matt Mathison asks for the portfolio company's strategy
- The company is drifting without clear annual priorities

## Strategic Planning Framework

```
Annual planning process (Q4 default):

Phase 1 — Situation Assessment (input gathering):
  External: Market trends; competitive dynamics; regulatory changes; customer behavior shifts
  Internal: Revenue vs. plan; gross margin trend; team capacity; operational health; top 3 wins; top 3 failures
  Portfolio context: How did this entity perform vs. MBL investment thesis?
  Questions to answer: What changed this year that we didn't expect? What did we learn?
  
Phase 2 — Strategic Analysis (make sense of it):
  Strategic options: What are the 3-5 things we could focus on next year?
  Prioritization criteria: Revenue impact / Risk / Resource requirement / Time to payback / Thesis alignment
  THRIVE filter: Does each option embody Truth, Hustle, Respect, Integrity, Value, Enjoy?
  Constraints: Capital available; team capacity; regulatory requirements; system dependencies
  
Phase 3 — Decision (lock priorities):
  MBL portfolio standard: 3 strategic priorities per year maximum
  Each priority: Statement + Why + What success looks like + Owner + Resources required
  Resource allocation: Where does capital and team time go? What are we explicitly deprioritizing?
  Matt Mathison alignment: Investment thesis check; return profile check
  
Phase 4 — Cascade (make it operational):
  Department OKRs derived from company priorities (Q1 OKRs set before Jan 15)
  Budget aligned to priorities (not historical allocation)
  Accountability: who owns what; review cadence
  
Phase 5 — Document (short and usable):
  5-10 page max; no filler
  CEO reads it weekly; department heads reference it monthly; Matt Mathison sees it annually
  
Allevio example priorities structure:
  Priority 1: Grow patient volume 20% — add one provider + referral network expansion
  Priority 2: Achieve HIPAA audit-ready state — rc-hipaa-security-program + rc-audit-plan-builder
  Priority 3: Reduce billing lag from 45 to 30 days — AdvancedMD workflow + Marshall Medical alignment
  
HIVE example priorities structure:
  Priority 1: Increase production to target BBL/day — completion crew + regulatory permits
  Priority 2: Reduce lifting cost per BOE — compression + artificial lift optimization
  Priority 3: Prepare for LP capital return event — distribution waterfall + Covercy accuracy
```

## Output Format

```markdown
# [Company Name] Annual Strategic Plan — [Year]
**Prepared:** [Date] | **CEO:** [Name] | **Matt Mathison aligned:** ✅ [Date]
**Version:** [1.0 — Final / 0.9 — Draft for CEO review]

---

## Executive Summary (half page)

**Company position:** [One paragraph — where we are, what we learned this year, what opportunity/risk defines next year]
**Strategic priorities:** [3 priorities — one sentence each]
**Resource commitment:** $[Total investment]; [N] headcount additions; [Key trade-offs — what we're not doing]
**Expected outcome:** [Revenue / EBITDA / production / key metric targets for year-end]

---

## Situation Assessment

**What worked this year:** [Top 3 wins — specific, measurable]
**What didn't work:** [Top 3 failures — honest, root cause]
**External changes:** [Market/competitive/regulatory shifts that affect next year]
**Thesis alignment:** [Is this company performing vs. the MBL investment thesis? Where ahead/behind?]

---

## Strategic Priorities — [Year]

### Priority 1: [Name]

**Why this, why now:** [Market opportunity or risk that makes this urgent]
**Definition of success (Dec 31, [Year]):** [Specific, measurable outcome]
**Key initiatives:** [3-5 initiatives that drive this priority]
**Owner:** [CEO / function head]
**Resources required:** $[X]; [N] people; [Key capabilities]
**Risk:** [Top 1-2 risks and mitigations]

### Priority 2: [Name]
[Same structure]

### Priority 3: [Name]
[Same structure]

---

## Resource Allocation

| Resource | Priority 1 | Priority 2 | Priority 3 | BAU | Total |
|---------|-----------|-----------|-----------|-----|-------|
| Capital | $[X] | $[X] | $[X] | $[X] | $[X] |
| Team capacity | [X]% | [X]% | [X]% | [X]% | 100% |
| CEO time | [X]% | [X]% | [X]% | [X]% | 100% |

**What we are explicitly not doing this year:** [3-5 items — clarity prevents drift]

---

## Annual Targets

| Metric | [Prior year actual] | [Year target] | Stretch |
|--------|-------------------|--------------|---------|
| Revenue | $[X] | $[X] | $[X] |
| EBITDA | $[X] / [X]% | $[X] / [X]% | |
| [Entity-specific: Patient volume / BBL/day / ARR] | | | |
| Headcount | [N] | [N] | |

---

## OKR Cascade (Q1 preview)

| Department | Q1 Objective | Derived from Priority |
|-----------|-------------|---------------------|
| [Dept 1] | [Q1 objective] | Priority [N] |
| [Dept 2] | | |

---

## Matt Mathison Brief

[Company] [Year] strategic plan: 3 priorities — [P1 headline], [P2 headline], [P3 headline]. Revenue target: $[X] vs. $[X] prior year. Capital required: $[X]. Thesis alignment: [Ahead / On track / Behind — specific]. Key risk: [Top 1]. CEO owns execution; Dr. Lewis monitors. Board/LP presentation: [Date or on request].
```

## Output Contract
- Three priorities maximum — more than three annual priorities means no priorities; the CEO and leadership team cannot execute on five simultaneous strategic priorities while running the business; Dr. Lewis challenges any planning process that produces more than three priorities by asking: "If you could only do one of these, which one?"; the priorities that survive that question are the real ones; the rest belong in a backlog
- Resource allocation must be explicit and honest — a strategic priority with no budget and no dedicated team capacity is a wish, not a priority; Dr. Lewis ensures the resource allocation table shows real numbers; if the total exceeds available capital or team capacity, something is cut; "we'll find the time" is not a resource plan
- The plan must be short enough to use — the test: can a department head read it in under 15 minutes and know exactly what they should be doing differently this year? If not, it's too long; the plan is not for investors or consultants — it's for the operating team; bullets and tables outperform prose; no filler sections (industry background, competitor biographies, market size definitions) unless they directly drive a decision
- HITL required: Dr. Lewis facilitates the planning process and produces the document; CEO reviews, edits, and approves the final plan; Matt Mathison receives the final plan with an alignment check (thesis and capital); department heads review and confirm their Q1 OKRs are derived from the three priorities; Matt Mathison approves capital commitments above existing budget authority

## System Dependencies
- **Reads from:** Prior year results (QuickBooks), OKR retrospective (department OKR trackers), risk register (rc-risk-register), budget plan (annual-budget-builder), investment thesis (strategy-investment-thesis), Matt Mathison prior-year strategic brief
- **Writes to:** Annual strategic plan (SharePoint/Strategy/<Company>/Plans/[Year]/); department OKR cascade; budget alignment (annual-budget-builder); Matt Mathison annual strategy brief; CEO weekly reference document
- **HITL Required:** Dr. Lewis facilitates; CEO approves; Matt Mathison aligns on thesis/capital; department heads confirm OKR derivation

## Test Cases
1. **Golden path:** Annual planning for Allevio — October planning cycle → Phase 1 input: Revenue $1.9M (vs. $2.0M target — 5% miss); missed from provider turnover in Q2; Q3 partially recovered; HIPAA audit prep delayed; billing lag improved from 52 to 44 days; 3 priorities finalized: (1) Provider stability + add 1 provider by Q2 (addresses revenue miss root cause); (2) HIPAA audit-ready by Q3 (overdue compliance milestone); (3) Billing lag to 35 days by year-end (revenue capture improvement); resource allocation: Priority 1 = $85K (provider recruitment + sign-on); Priority 2 = $15K (audit prep + attorney); Priority 3 = $0 additional (process improvement); total = $100K incremental; Revenue target $2.3M; EBITDA target 18%; Matt Mathison aligned December 1; department Q1 OKRs cascaded by January 10
2. **Edge case:** CEO wants to add a 4th priority (build a new product line) mid-planning → Dr. Lewis asks the priority question: "If you can only do 3 of the 4, which 3?" Works through the resource implications: the existing 3 priorities require $100K and 40% of CEO time; adding a 4th either takes resources from the existing 3 (which risks all three underperforming) or requires incremental capital and team; if the new product line is truly strategic, it can be Priority 1 and something else moves to 2025; Dr. Lewis does not add a 4th priority to the plan — instead helps the CEO choose among 4 what the top 3 are; documents the 4th as a "strategic backlog" item considered and deferred
3. **Adversarial:** "Let's just extend last year's plan with some updates" → Rolling the prior year plan without reassessment is how companies execute the wrong strategy confidently; the situation assessment (Phase 1) exists precisely because what was true last year may not be true this year — a provider departure, a payer contract change, a competitive entry all require strategy updates; Dr. Lewis conducts Phase 1 fresh every year and uses the findings to validate or update the priorities; if last year's priorities are still the right ones, the data will confirm it; if not, the assessment surfaces that before the company commits another year to the wrong direction

## Audit Log
Annual strategic plans retained permanently (PE portfolio history). CEO approval records retained. Matt Mathison alignment records retained. Department OKR cascade documents retained. Planning process notes retained.

## Deprecation
Retire when portfolio companies have a VP Strategy or Chief of Staff running the annual planning process — with Dr. Lewis reviewing the plan for thesis alignment and Matt Mathison receiving the final document directly.
