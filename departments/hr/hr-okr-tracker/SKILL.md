---
name: hr-okr-tracker
description: "Set and track HR function OKRs. Use when the user says 'HR OKRs', 'HR goals', 'HR objectives', 'HR quarterly goals', 'people team OKRs', 'HR function goals', 'track HR OKRs', 'HR goal setting', 'HR objective and key results', 'HR strategy goals', 'people strategy OKRs', or 'what should HR focus on'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or MBL>] [--period <Q[N] YYYY | annual YYYY>] [--action <set|review|grade>]"
---

# HR OKR Tracker

Set and track OKRs for the HR function at MBL portfolio companies — the specific objectives and measurable key results that define what HR is trying to accomplish in a given quarter or year. HR OKRs translate the company's workforce priorities into specific, measurable commitments. They keep the HR function focused and accountable rather than reactive. Without OKRs, HR can be busy all quarter without moving the needle on what actually matters.

## When to Use
- Beginning of a new quarter — setting HR OKRs aligned to company priorities
- Mid-quarter review — assessing progress and adjusting if needed
- End of quarter — grading completion and preparing next quarter's OKRs
- Annual planning — setting year-level HR objectives that cascade to quarterly OKRs
- Matt Mathison asks "what is HR working on this quarter?"

## OKR Framework for HR

```
OKR structure:
  Objective: Qualitative statement of what HR is trying to achieve
  Key Results (KRs): 2-4 measurable outcomes that define success (not activities)
  
  KRs must be measurable: "Reduce time to fill from 52 to 38 days" not "improve hiring"
  KRs are binary at quarter-end: achieved or not (with a score 0.0-1.0)
  
HR OKR categories — the functions HR should have goals in:
  1. Talent Acquisition: hiring efficiency, quality, and speed
  2. Retention: reducing voluntary and regrettable turnover
  3. Performance: review completion, PIP outcomes, rating quality
  4. Compliance: I-9, wage-hour, policy compliance rates
  5. Development: training completion, promotion rates, skills gap closure
  6. Culture: engagement scores, recognition program activity
  7. HR Function: process efficiency, Matt Mathison satisfaction, Dr. Lewis capacity

OKR setting rules:
  - Each quarter: 2-3 Objectives; 2-4 KRs per Objective
  - Too many OKRs = no priorities; 6-8 total KRs per quarter is the practical limit
  - At least one OKR must be tied to a current company priority (hiring plan, retention risk, etc.)
  - KRs are set before the quarter begins; mid-quarter changes require documented reason
  - End-of-quarter grade: 0.0 (not started) to 1.0 (fully achieved); 0.7 is a strong quarter
  - "Moonshot" KRs expected to score 0.7 max; "Committed" KRs expected to score 1.0

Annual HR Objectives template (customize per company):
  1. Build a workforce that can execute this year's operating plan
  2. Create an HR infrastructure that can scale to [N] employees
  3. Establish MBL-standard HR compliance across all entities
```

## Output Format

```markdown
# HR OKRs — <Company Name or MBL>
**Period:** [Q[N] YYYY / Annual YYYY]
**HR Lead:** Dr. John Lewis
**Set date:** [Date] | **Review date:** [Mid-quarter date] | **Grade date:** [Last day of quarter]

---

## Objective 1: [Qualitative objective statement]

**Why this objective:** [1 sentence — what company or workforce problem does this solve?]

| # | Key Result | Baseline | Target | Mid-Q Status | Final Score |
|---|-----------|---------|--------|-------------|------------|
| 1.1 | [Measurable KR] | [Current] | [Goal] | [X.X] | |
| 1.2 | [Measurable KR] | | | | |
| 1.3 | [Measurable KR] | | | | |

**Q-end narrative:** [When grading: what happened, what drove the score]

---

## Objective 2: [Qualitative objective statement]

**Why this objective:** [1 sentence]

| # | Key Result | Baseline | Target | Mid-Q Status | Final Score |
|---|-----------|---------|--------|-------------|------------|
| 2.1 | | | | | |
| 2.2 | | | | | |

**Q-end narrative:**

---

## Objective 3: [Qualitative objective statement]

**Why this objective:** [1 sentence]

| # | Key Result | Baseline | Target | Mid-Q Status | Final Score |
|---|-----------|---------|--------|-------------|------------|
| 3.1 | | | | | |
| 3.2 | | | | | |

**Q-end narrative:**

---

## Quarter Summary

**Overall HR OKR grade:** [Avg of all KR scores = X.X/1.0]
**Strong score (0.7+):** [List KRs that hit or exceeded target]
**Missed:** [List KRs that underperformed — with honest reason]
**Carry forward to next quarter:** [KRs or themes that didn't complete and should continue]

---

## Next Quarter Setup

Based on this quarter's performance and company priorities:
**Proposed focus areas for Q[N+1]:** [2-3 bullet points — not yet full OKRs]

---

## Matt Mathison Brief (3 sentences)

HR OKRs for [Q/Year]: [Overall grade and most significant achievement]. [What didn't hit and why — honest]. [What we're carrying into next quarter].
```

## Output Format Examples

```
Example OKRs — Allevio Q3 2026:

OBJECTIVE 1: Build a full clinical billing team by September 30
  KR 1.1: Fill 3 open billing specialist roles by August 31 (baseline: 0/3; target: 3/3)
  KR 1.2: Achieve <40-day time to fill on all Q3 hires (baseline: 52 days; target: <40)
  KR 1.3: 100% offer acceptance on Q3 offers (baseline: 78%; target: 100%)

OBJECTIVE 2: Reduce voluntary turnover from 14% to under 10% annualized
  KR 2.1: Complete stay interviews with all 12-month+ employees by August 15
  KR 2.2: Identify and address top 3 controllable turnover drivers by September 1
  KR 2.3: Zero regrettable departures in Q3 (baseline: 1 in Q2; target: 0)

OBJECTIVE 3: Achieve full HR compliance readiness for Allevio audit
  KR 3.1: 100% I-9 compliance across all 42 employees by July 31
  KR 3.2: OIG LEIE monthly check automated and documented by August 1
  KR 3.3: All employees acknowledge updated Code of Conduct by September 30
```

## Output Contract
- KRs are outcomes, not activities — "conduct stay interviews" is an activity; "identify top 3 controllable turnover drivers" is an outcome; OKRs track results, not effort; a KR that is fully completed but produces no result is a process failure, not an OKR
- Grading is honest — 0.7 on a moonshot KR is success; 0.5 on a committed KR requires explanation; inflating OKR scores is equivalent to inflating performance reviews — it destroys the value of the system; Dr. Lewis grades honestly and explains misses rather than adjusting the target post-hoc
- Volume is limited — 6-8 total KRs per quarter; more than that and the OKR list becomes a to-do list; if more items need to be tracked, they belong in a project tracker, not the OKR
- OKRs align to company priorities — at least one OKR is always tied to a current company priority (the hiring plan, a retention risk, a compliance gap, an operational initiative); HR OKRs that are disconnected from company direction are an internal HR hobby, not strategy
- HITL required: Dr. Lewis sets and grades all HR OKRs; Matt Mathison reviews quarterly grades and next-quarter proposed OKRs (brief); company CEO reviews OKRs that affect their team or operations; OKR changes mid-quarter require documented reason and Dr. Lewis approval

## System Dependencies
- **Reads from:** HR metrics dashboard (current quarter baseline data), company OKRs (to align HR OKRs), prior quarter grades
- **Writes to:** HR OKR tracker (SharePoint/HR/OKRs/); Matt Mathison quarterly brief; annual HR planning document
- **HITL Required:** Dr. Lewis sets and grades; Matt Mathison reviews quarterly; company CEO reviewed for company-affecting OKRs

## Test Cases
1. **Golden path:** Q3 Allevio OKR set → 3 objectives (hiring, retention, compliance), 8 KRs; all KRs have numerical baselines and targets; mid-quarter check (July 15): 3 hires completed (KR 1.1 on track), time to fill averaging 41 days (KR 1.2 at risk — 1 day over); OIG automation in progress (KR 3.2 at risk, behind by 2 weeks); adjustments noted; Q3 grade: Obj 1 = 0.85 (3 hires complete, avg time to fill 39 days, 1 counteroffer accepted so KR 1.3 = 0.8); Obj 2 = 0.70 (stay interviews done, 3 drivers identified, 0 regrettable departures = 1.0, but driver actions partially complete); Obj 3 = 0.90 (I-9 100%, OIG automated, Code of Conduct 95% — 2 employees out on leave); overall: 0.82 — strong quarter
2. **Edge case:** A key KR becomes impossible mid-quarter because of external change (e.g., a hiring freeze from Matt Mathison cancels KR 1.1 requiring 3 new hires) → Document the change with date and reason: "KR 1.1 suspended per Matt Mathison directive on [Date] — hiring freeze initiated." Grade as N/A (does not count against or for the overall score); carry the need into next quarter if the freeze lifts; this is the appropriate response — not grading a suspended KR as 0.0
3. **Adversarial:** A CEO says "OKRs are corporate overhead, just get the work done" → Respond: "The OKR is three objectives and eight numbers. The 15 minutes it takes to set them prevents the situation where HR is genuinely busy all quarter but hasn't made progress on the actual workforce problems — filling the billing team, reducing the turnover rate. I can reduce it to two objectives if that's better. What I won't do is eliminate the tracking, because without it, we're guessing whether the HR work is actually working."

## Audit Log
All quarterly OKRs retained with set dates, mid-quarter reviews, and final grades. Matt Mathison reviews documented. OKR changes mid-quarter with reasons documented. Annual OKR planning documentation retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers who own and grade their own OKRs with Dr. Lewis in an oversight capacity, and the OKR process is embedded in the company's standard planning cycle (Monday.com sprint boards or equivalent).
