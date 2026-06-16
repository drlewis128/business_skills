---
name: hr-headcount-planner
description: "Build or review the headcount plan for a company or department. Use when the user says 'headcount plan', 'staffing plan', 'headcount planning', 'how many people do we need', 'workforce plan', 'hiring plan', 'staff plan', 'org capacity', 'do we need to hire', 'headcount budget', 'annual headcount', 'staffing model', or 'FTE plan'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <annual|quarterly>] [--year <YYYY>] [--department <dept or all>]"
---

# HR Headcount Planner

Build or review the headcount plan for an MBL portfolio company — the structured plan for how many people the company needs, in what roles, at what cost, and on what timeline. Headcount is almost always the largest cost item in the P&L, which means headcount decisions are capital allocation decisions. Adding a role too early burns cash; adding it too late constrains growth. The headcount plan makes these decisions explicit and connects them to revenue milestones and operational capacity.

## When to Use
- Annual planning cycle — building next year's headcount plan alongside the budget
- A CEO wants to hire but hasn't justified the ROI
- A department is overloaded and requesting additional staff
- Matt Mathison asks "how many people should [Company] have in [Year]?"
- A portfolio company is burning too fast and headcount needs to be reviewed
- A new portfolio company acquisition is being integrated — what does the combined org need?

## Headcount Planning Framework

```
Three headcount planning approaches:

1. REVENUE-DRIVEN (most common for growth companies):
   Revenue per employee = revenue target / headcount
   Benchmarks by company type:
   - Services/MSO (Allevio): $150K-$250K revenue/employee
   - O&G operations (HIVE): $500K-$2M revenue/employee (capital-intensive)
   - Media/SaaS: $200K-$400K revenue/employee
   Start with revenue target; work backward to headcount needed

2. OPERATIONAL CAPACITY (for operational bottlenecks):
   Units of work / capacity per person = FTEs needed
   Example: "We're running 12 practices; each practice manager handles 4 practices; 
             we need 3 practice managers."
   
3. MILESTONE-GATED (for early-stage growth):
   Hire X when [specific milestone]: revenue, customer count, patient count
   Example: "We hire the second controller when we exceed $5M revenue."

MBL headcount philosophy:
   - Hire behind the curve — confirm the need before the hire
   - Every new FTE has a business case: what does this person produce?
   - Contractors before FTEs — validate need with contract work first
   - Backfills are not automatic: is the role still needed? Can the org absorb it?
```

## Output Format

```markdown
# Headcount Plan — <Company Name> — [Year / Quarter]
**Prepared by:** Dr. John Lewis | **Date:** <Date>
**For review:** Matt Mathison / [CEO Name]
**Budget period:** [YYYY] | **Revenue target:** $[X]

---

## TL;DR

Total headcount: [N] FTEs (current) → [N] FTEs (end of period)
Net new hires: [N] | Backfills: [N] | Eliminations: [N]
Total headcount cost (fully-loaded): $[X] (current) → $[X] (end of period)
Highest-priority hire: [Role — why it's #1]
Matt Mathison decision needed: [Specific — or "Plan is within approved budget; no additional approval needed"]

---

## Current Headcount

| Department | Current FTEs | % of total | Cost (fully-loaded) |
|-----------|------------|-----------|-------------------|
| [Operations / Clinical] | [N] | [X%] | $[X] |
| [Finance] | [N] | | $[X] |
| [Admin/Executive] | [N] | | $[X] |
| [Sales/BD] | [N] | | $[X] |
| **Total** | **[N]** | **100%** | **$[X]** |

**Fully-loaded cost per employee:** $[X] (base + benefits + payroll taxes + equipment — typically 1.2-1.3× base salary)

---

## Headcount Plan — [Year]

### Priority 1 Hires (Q1-Q2 — fund with confidence)

| Role | Department | Level | Comp range | Start target | Business case |
|------|-----------|-------|-----------|-------------|--------------|
| [Controller] | Finance | Mid | $[X]-$[X] | [Month] | [Close process is unmanaged; books are 3 weeks late; risk to compliance] |
| | | | | | |

**Q1-Q2 headcount add:** [N] FTEs | Cost: $[X] annualized

### Priority 2 Hires (Q3-Q4 — milestone-gated)

| Role | Department | Level | Comp range | Hire trigger | Business case |
|------|-----------|-------|-----------|------------|--------------|
| [Practice Manager 4] | Operations | Mid | $[X]-$[X] | Practice count >12 | [Current managers are at 4:1 ratio; Practice 13 needs a manager] |
| | | | | | |

**Q3-Q4 headcount add (if milestones hit):** [N] FTEs | Cost: $[X] annualized

### Backfills

| Open position | Departing employee | Backfill approved? | Decision |
|--------------|------------------|------------------|---------|
| [Role] | [Name — departed/departing] | ✅ / 🔴 / ⚠️ Review | [Backfill same role / downlevel / eliminate / delay 90 days] |

---

## Revenue per Employee Analysis

| Metric | Current | Year-end target | Benchmark |
|--------|---------|----------------|-----------|
| Revenue | $[X] | $[X] | |
| Total FTEs | [N] | [N] | |
| Revenue per employee | $[X] | $[X] | $[X] (industry benchmark) |
| Total headcount cost | $[X] | $[X] | |
| Headcount as % of revenue | [X%] | [X%] | [X%] target |

**Assessment:** [Headcount-to-revenue ratio is healthy / we are over-staffed relative to revenue / we are understaffed — blocking growth]

---

## Headcount Cost Bridge

| Item | Annual cost |
|------|------------|
| Current total headcount cost | $[X] |
| + Priority 1 new hires (annualized) | +$[X] |
| + Priority 2 new hires (annualized, if triggered) | +$[X] |
| - Eliminations / non-backfills | -$[X] |
| **Projected year-end headcount cost** | **$[X]** |

**As % of revenue target:** [X%] — [within target / above target — needs adjustment]

---

## Elimination / Reduction Scenarios (if needed)

| Scenario | FTE reduction | Cost savings | Operational impact |
|---------|------------|------------|------------------|
| Eliminate [low-value role] | -[N] | $[X] | [Minimal — role absorbed by team] |
| Reduce [dept] from [N] to [N] | -[N] | $[X] | [Note: increases risk of [specific function]] |
| Freeze all non-essential hiring | -[N] (from plan) | $[X] | [Delays [milestone] by [timeframe]] |

---

## Headcount Decision Log

| Decision | Approved by | Date | Notes |
|---------|------------|------|-------|
| [Hire Controller by Q1] | Dr. Lewis | [Date] | [Business case cited] |
| [Defer [Role] to Q3] | Matt Mathison | [Date] | [Milestone not yet reached] |
```

## Output Contract
- Every hire has a business case — "we're busy" is not a business case; every new FTE in the headcount plan must have a specific justification: what does this person produce, what risk does their absence create, or what milestone requires them; a business case of one sentence is enough ("Close process is 3 weeks late because the bookkeeper is handling 3 companies; this hire brings it to 7 days") — but it must be there
- Fully-loaded cost always shown — base salary is not the cost of a hire; fully-loaded cost (base + benefits + payroll taxes + equipment + office space if applicable) is typically 1.25-1.35× base salary; the headcount plan always shows fully-loaded cost, not base salary, so that the financial impact on the P&L is accurate
- Revenue per employee always calculated — headcount as a percentage of revenue is the key efficiency metric; a company that is growing headcount faster than revenue is compressing margins; the headcount plan always includes this ratio so the decision is framed correctly
- Milestone gates on Priority 2 hires — hires that are needed "eventually" should be tied to a specific milestone (revenue level, customer count, patient count, production target); this prevents premature hiring while ensuring the hire happens when the trigger is met, without requiring a new approval process
- HITL required: Dr. Lewis builds the headcount plan and makes recommendations; Matt Mathison approves the annual headcount budget; individual hires above $100K base require Matt Mathison approval; all executive-level hires (director and above) require Matt Mathison approval; eliminations require Matt Mathison awareness regardless of level

## System Dependencies
- **Reads from:** Current org chart, payroll records (QuickBooks/payroll system), revenue forecast, operational capacity metrics (practices, BBL/day, etc.), prior year headcount plan
- **Writes to:** Headcount plan (SharePoint/HR/<Company>/Workforce Planning/); annual budget (headcount cost input); Matt Mathison headcount review
- **HITL Required:** Dr. Lewis builds plan; Matt Mathison approves annual headcount budget; individual hires >$100K base require Matt Mathison approval; eliminations require Matt Mathison awareness

## Test Cases
1. **Golden path:** Allevio annual headcount plan 2027 → Current: 18 FTEs across clinical ops, finance, admin; Revenue target: $4.2M (12 practices × $350K avg revenue); Revenue/employee target: $233K (Allevio benchmark: $200K-$250K); Current ratio: $3.4M / 18 = $189K — slightly below target (growth-stage acceptable); Priority 1: Controller (Month 1 — books are late, compliance at risk, $90K base / $117K fully-loaded); Bookkeeper part-time (Month 2 — controller will need support, $45K / $58K); Priority 2: Practice Manager 4 — hire when 13th practice onboards (milestone-gated, $75K / $98K); Backfill: Front desk coordinator departing — backfill approved (patient-facing role, cannot eliminate); Year-end: 21 FTEs; Year-end cost: $2.1M (vs. $1.85M current); As % of $4.2M revenue: 50% — appropriate for MSO at this scale
2. **Edge case:** A CEO wants to hire 5 people simultaneously because "we're growing" but revenue hasn't materialized yet → this is a burn rate risk; reframe: "Let's work backward from the revenue you're projecting. At $3M revenue and your current burn rate, adding 5 FTEs at roughly $400K/year fully-loaded increases your burn by 13%. If revenue doesn't hit $3M, you'll either need to reduce headcount or find additional capital. What I'd recommend: hire the 2 highest-priority roles now (the ones that directly enable revenue or prevent a compliance risk), milestone-gate the other 3 (hire when [specific trigger]), and review in Q2." Bring to Matt Mathison with the financial bridge showing cash impact.
3. **Adversarial:** Matt Mathison asks to eliminate a role to cut costs, but the role is performing a critical function that's not obvious from the title → before recommending elimination, document the actual function: "Before recommending we eliminate [role], let me map what this person actually does. Their title is 'admin coordinator' but they're managing all patient intake scheduling, which directly enables our $2,200/practice/month revenue. Eliminating this role would require distributing that work to practice managers who are already at capacity, or lose intake speed. Net assessment: this role is not a good elimination target. If we need $50K in savings, here are three alternatives that carry lower operational risk." Always investigate before eliminating.

## Audit Log
Headcount plans retained by company, year, and version. Approval decisions documented with approver and date. Milestone-gate triggers documented and tracked. Elimination decisions documented with business case. Revenue-per-employee ratio tracked quarter-over-quarter.

## Deprecation
Retire when each portfolio company has a dedicated HR function with annual headcount planning integrated into the budget process, with CEO and CFO-level ownership of headcount decisions and Dr. Lewis's role shifting to portfolio-level governance rather than individual company planning.
