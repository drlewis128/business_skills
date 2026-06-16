---
name: hr-exit-interview-analyzer
description: "Analyze exit interview data and surface trends. Use when the user says 'exit interview', 'analyze departures', 'why are people leaving', 'turnover analysis', 'attrition analysis', 'exit trends', 'analyze exit interviews', 'why did employees leave', 'departure patterns', 'retention intelligence', 'what are we learning from departures', or 'exit feedback'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or 'portfolio'>] [--period <qtd|ytd|trailing-12>] [--department <dept or all>]"
---

# HR Exit Interview Analyzer

Conduct and analyze exit interviews to surface patterns in why employees leave MBL portfolio companies. Exit interviews are the cheapest, most honest source of organizational feedback — departing employees have nothing to lose by being direct. The analysis converts individual exit conversations into patterns and recommendations that help the company retain the employees it wants to keep. Ignored, exit interview data is just paperwork. Analyzed, it's a retention roadmap.

## When to Use
- A voluntary departure is occurring and an exit interview needs to be conducted
- Quarterly or annually — analyzing exit interview patterns across departures
- Turnover is higher than expected and the root cause needs to be identified
- Matt Mathison asks "why are people leaving [Company]?"
- A department has had multiple departures in a short period

## Exit Interview Framework

```
Exit interview structure — three modes:

1. INDIVIDUAL EXIT CONVERSATION (departing employee):
   Format: 30-min call with Dr. Lewis (not the hiring manager — reduces defensiveness)
   Timing: Within the last 3 days of employment
   Goal: Honest feedback in a safe setting; not a retention attempt
   Tone: Curious, not defensive; listen, don't argue

2. INDIVIDUAL ANALYSIS (after each departure):
   Categorize the departure: voluntary controllable / voluntary uncontrollable / involuntary
   Identify primary reason category: Compensation / Manager / Growth / Culture / Personal / 
                                      Work quality / Role fit / External opportunity
   Document key quotes (anonymized in aggregation)

3. PORTFOLIO / PERIOD ANALYSIS (quarterly/annual):
   Count departures by category and reason
   Identify patterns: Is one department losing people? One type of employee? One reason recurring?
   Calculate voluntary turnover rate and cost
   Produce recommendations: What should change?
```

## Output Format

### Individual Exit Interview

```markdown
# Exit Interview — <Employee Name> (Confidential)
**Company:** <Entity> | **Role:** [Title] | **Department:** [Dept]
**Tenure:** [X months/years] | **Exit date:** [Date]
**Interviewer:** Dr. John Lewis | **Date:** <Date>
**Departure type:** Voluntary — controllable / Voluntary — uncontrollable / Involuntary

---

## Primary Departure Reason (select one)
- [ ] Compensation — below market or below expectations
- [ ] Manager / leadership — relationship or management style issues
- [ ] Growth / advancement — no clear path forward
- [ ] Culture fit — values or environment mismatch
- [ ] Work quality / workload — too much, too little, or wrong type of work
- [ ] Role fit — role didn't match what was described or evolved in an unexpected direction
- [ ] External opportunity — compelling opportunity, not necessarily driven by dissatisfaction
- [ ] Personal reasons — relocation, family, health, etc.
- [ ] Other: ________________

**Was this departure preventable?** Yes / No / Possibly

---

## Exit Interview Responses

**1. What motivated you to start looking for a new opportunity?**
> [Direct quote or paraphrase]

**2. What could we have done differently to keep you?**
> [Direct quote or paraphrase]

**3. What did you find most valuable about working here?**
> [Direct quote or paraphrase]

**4. What's the one thing you'd tell us to improve?**
> [Direct quote or paraphrase]

**5. How would you describe the culture to someone considering joining?**
> [Direct quote or paraphrase]

**6. Would you return to [Company] in the future?**
> Yes / Maybe / No | [Reason]

**7. Would you refer others to [Company]?**
> Yes / Maybe / No | [Reason]

---

## Actionable Insights from This Exit

| Insight | Actionable? | Recommended action | Owner |
|--------|------------|------------------|-------|
| [e.g., "Felt compensation hadn't kept pace with market"] | ✅ | Compensation benchmark for role | Dr. Lewis |
| [e.g., "Manager feedback was inconsistent"] | ✅ | Manager coaching conversation | Dr. Lewis |
| [e.g., "Moving to new city — personal"] | ❌ | No action needed | — |

**Share with Matt Mathison?** [Yes — if insight is actionable and involves leadership / structure / comp / No — personal departure with no organizational signal]
```

---

### Portfolio / Period Analysis

```markdown
# Exit Interview Analysis — <Company / Portfolio> — [Period]
**Departures analyzed:** [N] | **Period:** [Q[N] / YTD / Trailing 12 months]
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison

---

## Departure Summary

| Category | Count | % of departures | Voluntary? |
|---------|-------|----------------|----------|
| Compensation | [N] | [X%] | [Y/N] |
| Manager / leadership | [N] | [X%] | |
| Growth / advancement | [N] | [X%] | |
| Culture fit | [N] | [X%] | |
| Personal reasons | [N] | [X%] | |
| Role fit | [N] | [X%] | |
| External opportunity | [N] | [X%] | |
| Involuntary | [N] | [X%] | N |

**Voluntary turnover rate:** [N departures] / [avg headcount] = [X%]
**Voluntary controllable turnover rate:** [N controllable] / [avg headcount] = [X%]
**Industry benchmark voluntary turnover:** [X%] (industry average)

---

## Cost of Turnover

| Metric | Amount |
|--------|--------|
| Avg tenure of departing employees | [X] months |
| Avg salary of departing employees | $[X] |
| Recruiting cost per hire (est.) | $[X] (1.5-2× monthly salary) |
| Lost productivity during ramp (est.) | $[X] (2-3 months avg) |
| **Estimated total cost of departures** | **$[X]** |

---

## Pattern Analysis

**Top 3 recurring themes across exit interviews:**
1. [Theme — e.g., "Compensation hasn't kept pace with market for 3 of 5 departures"] — **Frequency:** [N/X]
2. [Theme — e.g., "No clear promotion path"] — **Frequency:** [N/X]
3. [Theme — e.g., "Manager communication style"] — **Frequency:** [N/X]

**Department with highest voluntary controllable turnover:** [Dept] — [X%]

**Employee profile most likely to depart:** [e.g., "Mid-level contributors 18-36 months of tenure; most cite compensation and growth"]

---

## Recommendations

| Priority | Recommendation | Estimated cost | Expected impact | Owner | Timeline |
|---------|---------------|---------------|----------------|-------|---------|
| 1 | [Conduct compensation review for mid-level roles] | $[X] | [Reduce turnover by est. 30%] | Dr. Lewis | [60 days] |
| 2 | [Manager coaching on consistent feedback] | Low | | | |
| 3 | [Define growth paths for mid-level contributors] | Low | | | |

---

## What We Should NOT Change

[Based on exit interviews, these factors were consistently cited as positives — don't accidentally eliminate them in other changes: e.g., "Remote flexibility", "Collaborative team culture", "Access to senior leadership"]
```

## Output Contract
- Individual exit interviews are confidential — individual exit interview responses are not shared verbatim with the hiring manager or CEO; they inform aggregate analysis and recommendations only; if a departing employee says "my manager is dismissive and I never received feedback," Dr. Lewis uses this to inform a manager coaching conversation but does not attribute it to the specific departing employee
- Departure categorization always distinguishes controllable vs. uncontrollable — a departure for personal relocation is not a retention failure; a departure because pay was below market is; voluntary controllable turnover rate is the metric that matters for action; lumping all turnover together obscures the signal
- Cost of turnover always calculated — "we lost a few people" sounds less urgent than "$180K in turnover cost this year from 3 mid-level departures"; the cost of turnover calculation motivates action; if the cost of a compensation adjustment is $30K/year and the cost of continued turnover is $60K/year, the business case is clear
- "What NOT to change" section always present — exit interviews are often used to diagnose problems; the analysis also identifies what's working and should be preserved; organizations that only fix problems sometimes break things that were working; the "don't change" section is as important as the recommendations
- HITL required: Dr. Lewis conducts all exit interviews; individual exit notes are confidential; quarterly analysis shared with Matt Mathison; recommendations above $10K investment require Matt Mathison approval; manager-specific findings handled by Dr. Lewis before going to the CEO to avoid creating adversarial dynamics

## System Dependencies
- **Reads from:** Exit interview notes, departure records (reason categories), payroll records (salary, tenure), headcount tracking, industry turnover benchmarks
- **Writes to:** Individual exit interview notes (SharePoint/HR/<Company>/Exit Interviews/ — confidential); quarterly exit analysis (SharePoint/HR/People Analytics/); Matt Mathison quarterly HR brief
- **HITL Required:** Dr. Lewis conducts exit interviews; individual data confidential; quarterly analysis to Matt Mathison; recommendations requiring investment require Matt Mathison approval

## Test Cases
1. **Golden path:** Q2 2026 exit analysis — Allevio (3 voluntary departures, 1 involuntary) → Voluntary: coordinator (compensation — $52K vs. $58K market); clinical coordinator (personal relocation — not controllable); front desk (manager communication — "never knew if I was doing well or not"); involuntary: not counted in voluntary rate; controllable voluntary: 2 of 18 headcount = 11% (industry avg for healthcare support: 22% — we're below average); cost: estimated $25K; Pattern: compensation in range for front desk (1 case not a pattern); manager feedback consistency = pattern emerging (2 of 3 controllable exits mentioned feedback gaps in different ways); Recommendation #1: Implement structured bi-weekly 1:1 template for all managers — low cost, high impact; Recommendation #2: Compensation benchmark for all roles (1 case of $6K gap — not systemic, but worth validating); What NOT to change: "schedule flexibility" and "collaborative team" cited positively in 2 of 3 exit interviews
2. **Edge case:** An employee's exit interview reveals that a manager has been engaging in retaliatory behavior toward an employee who raised a concern → this is no longer an exit interview situation; it is an employee relations incident; Dr. Lewis stops the exit process, documents what was shared, escalates immediately to Matt Mathison and legal counsel if the claim is substantive; the departing employee's information becomes evidence in an HR investigation, which requires explicit handling; Dr. Lewis explains the pivot: "What you've shared is serious and I want to make sure it's handled properly — this is now an employee relations matter, not just exit feedback."
3. **Adversarial:** A CEO says "don't tell me what the exit interviews say — I don't want to hear it" → this is a management avoidance problem; respond: "I hear that you'd rather focus on the team that's here. But exit interviews are our cheapest signal about what to fix. If 3 of 5 recent exits cite the same issue, and we don't address it, we'll lose 3-5 more people on the same issue. That's $200K+ in turnover cost and operational disruption. I'll keep it brief — one page, quarterly, with only the 2-3 things we should actually act on. What I won't do is sit on patterns that are costing us people and money."

## Audit Log
Individual exit interview notes retained confidentially by employee and date. Departure reason categorizations retained. Quarterly analysis reports retained. Recommendations and implementation outcomes tracked. Confidential notes access restricted to Dr. Lewis and Matt Mathison.

## Deprecation
Retire when portfolio companies have HR managers who conduct exit interviews, HRIS systems that track departure reason codes, and quarterly HR analytics reviews that don't require Dr. Lewis to manually conduct and analyze each exit interview.
