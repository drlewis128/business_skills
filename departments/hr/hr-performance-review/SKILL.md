---
name: hr-performance-review
description: "Conduct a structured annual or mid-year performance review. Use when the user says 'performance review', 'annual review', 'performance evaluation', 'mid-year review', 'employee performance', 'employee review', 'year-end review', 'conduct a performance review', 'review an employee', 'performance appraisal', 'annual performance evaluation', or 'employee performance assessment'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--role <title>] [--period <annual|mid-year>] [--year <YYYY>]"
---

# HR Performance Review

Conduct a structured annual or mid-year performance review for an MBL portfolio company employee. Performance reviews serve two purposes: they recognize and reinforce what's going well, and they surface what needs to improve with enough specificity that improvement is actually possible. A performance review that says "great attitude, keep it up" is worse than useless — it wastes time and gives the employee false comfort. A good review is honest, specific, tied to actual outcomes, and results in a clear understanding of what success looks like going forward.

## When to Use
- Annual performance review cycle (typically November-December for calendar-year cycle)
- Mid-year check-in (June-July) — calibrate and course-correct before year-end
- A manager needs help structuring a difficult review conversation
- An employee is on a performance improvement plan and the review needs to document outcomes
- Matt Mathison reviews a key leader's annual review

## Performance Review Framework

```
Four assessment dimensions:

1. RESULTS (50% weight):
   Did they accomplish what they committed to?
   Measured against: annual goals, OKRs, or role-specific outcomes
   Not: effort, hours, or intentions — outcomes

2. COMPETENCIES (25% weight):
   How did they do the work? — technical skill, communication, reliability, judgment
   Role-specific: a controller's competencies differ from a practice manager's

3. THRIVE ALIGNMENT (15% weight):
   Truth, Hustle, Respect, Integrity, Value, Enjoy
   Integrity and Truth are hard filters — a low score on either warrants serious attention
   regardless of results

4. GROWTH AND DEVELOPMENT (10% weight):
   Are they developing? Did they work on their identified growth areas?
   Trajectory matters as much as current performance

Rating scale:
  5 — Exceptional: significantly exceeded expectations; top performer
  4 — Strong: exceeded expectations in meaningful ways
  3 — Meets expectations: fully delivered on what was expected; solid performer
  2 — Developing: partially met expectations; improvement needed
  1 — Below expectations: did not meet expectations; action required

Note: A "3 — Meets expectations" is a good score. Do not inflate ratings.
"Meets expectations" means the person fully did their job.
Rating inflation makes the scale meaningless and misrepresents performance.
```

## Output Format

```markdown
# Performance Review — <Employee Name>
**Company:** <Entity> | **Role:** [Title] | **Department:** [Dept]
**Review period:** [Jan 1 – Dec 31, YYYY / Mid-year: Jan 1 – Jun 30, YYYY]
**Manager:** [Name] | **Reviewer:** Dr. John Lewis (for executive hires)
**Review date:** <Date>

---

## Section 1: Results (50% of overall rating)

**Annual goals / OKRs for [Year]:**

| Goal | Target | Actual | Rating (1-5) | Notes |
|------|--------|--------|-------------|-------|
| [Goal 1] | [Specific target] | [What happened] | /5 | [Context] |
| [Goal 2] | | | /5 | |
| [Goal 3] | | | /5 | |
| [Goal 4] | | | /5 | |

**Results section score:** [X]/5 (average of goal ratings, weighted by importance)

**Results narrative:**
[2-4 sentences: What did this person accomplish? What was the biggest win? Where did they fall short? Be specific — cite specific projects, metrics, or decisions.]

---

## Section 2: Competencies (25% of overall rating)

| Competency | Rating (1-5) | Evidence |
|-----------|-------------|---------|
| Technical proficiency — executes core role responsibilities with skill | /5 | [Specific example] |
| Execution — delivers on commitments; reliable; meets deadlines | /5 | |
| Communication — clear, proactive, forthright; doesn't hide bad news | /5 | |
| Judgment — makes good decisions; escalates appropriately; asks the right questions | /5 | |
| Collaboration — works well with team, customers, or partners | /5 | |
| [Role-specific competency — e.g., "Financial accuracy" for Finance] | /5 | |

**Competencies section score:** [X]/5

---

## Section 3: THRIVE Alignment (15% of overall rating)

| THRIVE value | Rating (1-5) | Evidence |
|-------------|-------------|---------|
| **Truth** — Are they honest about bad news? Do they share uncomfortable facts? | /5 | [Example] |
| **Hustle** — Do they bring energy and initiative? Self-motivated? | /5 | |
| **Respect** — Do they treat colleagues, customers, and partners with respect? | /5 | |
| **Integrity** — Do they do what they said they would? No shortcuts that compromise trust? | /5 | ⚠️ Hard filter |
| **Value** — Do they create clear value? Are they worth their cost to the business? | /5 | |
| **Enjoy** — Do they bring a positive, engaged presence? | /5 | |

**THRIVE section score:** [X]/5

**⚠️ Integrity or Truth score ≤2:** Requires serious conversation regardless of overall rating. A high-performing employee with integrity issues is a liability, not an asset.

---

## Section 4: Growth and Development (10% of overall rating)

| Development area (set in prior review) | Progress | Rating (1-5) |
|----------------------------------------|---------|-------------|
| [Development goal from prior review] | [What they did] | /5 |
| [Development goal] | | /5 |

**Growth section score:** [X]/5

---

## Overall Rating

| Section | Weight | Score | Weighted |
|---------|--------|-------|---------|
| Results | 50% | /5 | |
| Competencies | 25% | /5 | |
| THRIVE | 15% | /5 | |
| Growth | 10% | /5 | |
| **Overall** | **100%** | | **/5** |

**Overall rating:** ✅ Exceptional (4.5-5.0) / ✅ Strong (3.5-4.4) / ✅ Meets Expectations (2.5-3.4) / ⚠️ Developing (1.5-2.4) / 🔴 Below Expectations (<1.5)

---

## Compensation Decision

| Current comp | Market rate (50th pct) | Adjustment recommended | Basis |
|-------------|----------------------|----------------------|-------|
| $[X]/year | $[X]/year | $[X] increase / No change / [Note] | [Rating + market position] |

**Merit increase guideline:**
- Exceptional: 5-8% increase
- Strong: 3-5% increase
- Meets Expectations: 2-3% (cost of living + minor merit)
- Developing: 0-1% (no merit until improvement)
- Below Expectations: 0% (under improvement plan)

**Compensation decision requires Matt Mathison approval for:** [>$5K annual increase / Director and above / Any exception to guideline]

---

## Goals for [Next Year / Next Half]

| Goal | Target | How measured | Due |
|------|--------|-------------|-----|
| [Specific, measurable goal] | [What success looks like] | [Metric] | [Date] |
| [Goal 2] | | | |
| [Goal 3] | | | |

---

## Development Plan for Next Period

| Development area | Why it matters | Specific action | Timeline |
|----------------|---------------|----------------|---------|
| [Top development area] | [Impact on performance or career] | [Specific action — course, project, mentorship] | [Date] |
| [Development area 2] | | | |

---

## Employee Acknowledgment

"I have received and discussed this performance review. My signature does not necessarily indicate agreement with all assessments."

Employee signature: _________________________ Date: _____________
Manager signature: _________________________ Date: _____________
```

## Output Contract
- Ratings must have examples — a rating of any score without a supporting example is an impression, not an assessment; every dimension in the review requires a specific supporting example: a project, a decision, a behavior, a measurable outcome; "great communicator" is not evidence; "proactively flagged the $40K AP overdue before it became a payment default" is evidence
- Rating inflation explicitly prohibited — "Meets Expectations" is a good score; if every review in the company rates employees "Exceptional" or "Strong," the ratings have no meaning and the company cannot identify who its true top performers are; Dr. Lewis reviews rating distributions across the company to identify inflation patterns and addresses them directly with managers
- Integrity and Truth hard filter — a score of ≤2 on Integrity or Truth, regardless of overall rating, is escalated for a direct conversation; a "5 on results, 1 on Integrity" employee is not a strong performer — they're a risk; the review must document the specific integrity or truth concern with examples; Matt Mathison is notified of any ≤2 Integrity rating on a director or above
- Compensation decision tied to performance rating — merit increases follow the guideline; exceptions (market-rate corrections, retention situations) are approved by Matt Mathison; the performance review drives the compensation decision, not the other way around — do not inflate a rating to justify a compensation decision
- HITL required: Manager completes assessment with examples; Dr. Lewis reviews and approves rating for non-executive employees; Matt Mathison reviews executive-level reviews; compensation increases above threshold require Matt Mathison approval; Integrity ≤2 on any employee requires Dr. Lewis review and Matt Mathison notification for executives

## System Dependencies
- **Reads from:** Prior year goals, OKR tracker outcomes, 90-day review notes, mid-year review (if annual), manager 1:1 notes, compensation records
- **Writes to:** Performance review (SharePoint/HR/<Company>/Employees/<Name>/Performance/); compensation decision (payroll update after approval); development plan; next year goals
- **HITL Required:** Manager assesses; Dr. Lewis reviews and approves; Matt Mathison reviews executive reviews; compensation changes require approval; Integrity ≤2 always escalated

## Test Cases
1. **Golden path:** Allevio operations coordinator annual review → Results: Goal 1 (LOE tracking < budget variance) 4/5 — came in 3% over LOE target, caught late; Goal 2 (vendor call response time <24hr) 5/5 — exceeded every month; Goal 3 (onboard 2 new practices) 3/5 — 1 practice onboarded, 2nd delayed due to site issues beyond their control; Results avg: 4.0; Competencies: Technical 4/5, Execution 5/5 (never missed a deadline), Communication 3/5 (proactive sometimes, not consistently), Judgment 4/5; avg 4.0; THRIVE: all 4s except Hustle 5/5; avg 4.2; Growth: improved vendor call process ✅; overall: 4.0 Strong; compensation: at $58K, market is $62K; $4K increase recommended (6.9%); Strong rating justifies; Matt Mathison approval: required (>$5K threshold: no; bring anyway for awareness)
2. **Edge case:** An employee's results were excellent but their THRIVE/Integrity score is a 2 because they were observed telling a customer something that wasn't true about a service timeline → the high results don't offset the integrity issue; the review documents the specific incident, the integrity score, and the conversation that occurred; the overall rating cannot be "Exceptional" with an Integrity of 2; overall: "Strong" at best; development plan includes: "Truthful communication with customers — even when the news is bad, the approach is direct and honest. In Q1, the timeline given to [Customer] was significantly off from what we knew to be reality. Going forward, we discuss customer communication expectations before any customer-facing conversation."
3. **Adversarial:** A CEO rates all 8 of their direct reports as "Exceptional" (5/5) across the board → this is rating inflation that prevents the company from identifying true top performers, providing meaningful feedback to developing employees, and making defensible compensation decisions; Dr. Lewis has the conversation: "I want to make sure these ratings are as useful as possible. If all 8 reports are Exceptional, I'd expect each of them to have significant, documented accomplishments that exceeded what was expected. Can we walk through 2-3 of the ratings together? I want to make sure we're using the scale consistently — not to penalize your team, but to make their strong ratings meaningful when they're earned."

## Audit Log
All performance reviews retained by employee and date. Rating distributions tracked across managers. Compensation decisions and approvals retained. Integrity flags and escalations retained. Development plans and next-year goals retained. Employee acknowledgment signatures retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers with HRIS-integrated performance management workflows, calibration processes, and manager training on consistent rating standards that don't require Dr. Lewis's oversight for each review cycle.
