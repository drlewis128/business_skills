---
name: hr-ops-review
description: "Run a quarterly or annual HR function operations review. Use when the user says 'HR ops review', 'HR function review', 'review the HR function', 'HR quarterly review', 'HR annual review', 'how is HR performing', 'HR function assessment', 'evaluate HR operations', 'HR retrospective', 'HR effectiveness', 'review our HR function', or 'is HR working'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name or MBL>] [--period <quarterly|annual>] [--quarter <Q[N] YYYY>]"
---

# HR Ops Review

Run quarterly and annual operations reviews of the HR function at MBL portfolio companies — a structured assessment of whether HR is working, what's broken, and what to change. The HR ops review is the mirror for the HR function itself: the same rigor applied to business operations should be applied to HR operations. A quarterly HR ops review is the mechanism that prevents the HR function from drifting into reactive administration rather than strategic people management.

## When to Use
- End of quarter — reviewing what HR accomplished, what didn't work, and what to carry forward
- Annual HR planning — grading the full year and setting direction for next year
- Matt Mathison asks "how is the HR function actually performing?"
- Dr. Lewis wants to identify where the HR function is creating risk vs. reducing it
- A portfolio company HR function is being assessed for the first time

## HR Ops Review Framework

```
Four review sections every quarter:
  1. OKR Grades — how did we perform against what we committed to?
  2. Metrics Review — what do the people numbers say about workforce health?
  3. Process Quality — are the HR processes working well, or creating friction?
  4. Start / Stop / Continue — what changes for next quarter?

Annual adds (Q4 only):
  5. Full-year OKR grades (aggregated from quarterly grades)
  6. HR capacity assessment — is Dr. Lewis time well-allocated?
  7. Portfolio comparison — where does each entity rank on HR health?
  8. Year-ahead HR priorities

Review principles:
  - Honest — if HR created problems this quarter, say so directly
  - Evidence-based — use metrics data, not impressions
  - Forward-looking — every observation leads to an action or a deliberate non-action
  - Matt Mathison always hears the brief — 3 sentences, honest
```

## Output Format

```markdown
# HR Function Operations Review — <Company Name or MBL Portfolio>
**Period:** [Q[N] YYYY / Annual YYYY] | **Date:** [Date]
**Prepared by:** Dr. John Lewis | **Reviewed with:** [CEO / Matt Mathison]

---

## Section 1: OKR Performance

**Overall HR OKR grade this quarter:** [X.X / 1.0]

| Objective | KR score | Notes |
|-----------|---------|-------|
| [Obj 1 — brief label] | [X.X] | [1-sentence on result] |
| [Obj 2] | [X.X] | |
| [Obj 3] | [X.X] | |

**Average:** [X.X]

**Headline:** [What drove this score? What was the most significant HR win and miss?]

---

## Section 2: Metrics Review

Pull from hr-metrics-dashboard for the period.

| Metric | Q[N] | Target | vs. Target | Trend vs. Q[N-1] |
|--------|------|--------|-----------|----------------|
| Voluntary turnover rate | [X%] | <15% | 🟢 / 🟡 / 🔴 | ↑ / → / ↓ |
| Regrettable turnover | [N] | 0 | | |
| Time to fill | [N days] | <45 | | |
| Offer acceptance rate | [X%] | >80% | | |
| I-9 compliance | [X%] | 100% | | |
| Performance review completion | [X%] | 100% | | |
| Payroll error rate | [X%] | <1% | | |

**Metrics headline:** [2 sentences — what the data tells us about workforce health this quarter]

**Metric that most concerns me:** [Be specific and honest — what number is moving in the wrong direction and why?]

---

## Section 3: Process Quality

Rate each HR process: 🟢 Working well / 🟡 Needs improvement / 🔴 Broken

| HR Process | Rating | Assessment |
|-----------|--------|-----------|
| Recruiting and hiring | 🟢 / 🟡 / 🔴 | [1-sentence honest assessment] |
| Onboarding | | |
| Performance management | | |
| Compensation and benefits administration | | |
| Leave management | | |
| Employee relations | | |
| HR compliance (I-9, posters, filings) | | |
| Payroll | | |
| Offboarding | | |

**Process improvement priority this quarter:** [The one or two processes most in need of attention]

**Process that's working best (and why):** [Name it — recognize what's working to maintain it]

---

## Section 4: Start / Stop / Continue

**START (things we should begin doing):**
- [Specific initiative, process, or habit — with rationale]
- [Start item 2]

**STOP (things we should stop doing):**
- [Specific activity, process, or habit that is creating waste or risk — with rationale]
- [Stop item 2]

**CONTINUE (things working well that we must maintain):**
- [Specific practice or process that's working — explicitly name it so it doesn't get deprioritized]
- [Continue item 2]

---

## Annual Additions (Q4 only)

### Full-Year OKR Summary
| Quarter | HR OKR grade |
|---------|-------------|
| Q1 | [X.X] |
| Q2 | [X.X] |
| Q3 | [X.X] |
| Q4 | [X.X] |
| **Full year** | **[Avg]** |

### HR Capacity Assessment
**Dr. Lewis HR hours this year (estimate):** [N hrs/week avg × 52] = [N] hours
**By function:** [Recruiting X%, ER X%, Compliance X%, Operations X%]
**Assessment:** [Is time well-allocated? What function is consuming disproportionate time? What should be delegated, automated, or systemized?]

### Portfolio Comparison (if multi-entity review)
| Entity | Turnover rate | Time to fill | I-9 compliance | ER cases | Overall HR health |
|--------|-------------|-------------|---------------|---------|-----------------|
| Allevio | | | | | 🟢 / 🟡 / 🔴 |
| HIVE Partners | | | | | |
| Column6 | | | | | |

**Portfolio headline:** [Where is HR strongest? Where does the most work need to happen?]

### Year-Ahead HR Priorities
1. [Priority 1 — specific, tied to company direction]
2. [Priority 2]
3. [Priority 3]

---

## Matt Mathison Brief (3 sentences)

HR function for [Q/Year]: [Overall grade and headline achievement]. [Honest assessment of what didn't work and what we're changing]. [Top HR priority for next quarter/year].
```

## Output Contract
- OKR grades are the anchor — the review starts with what HR committed to doing (the OKRs) and whether it was done; everything else is context around that honest accounting; a quarter where HR was extremely busy but scored 0.5 on its OKRs is a 0.5 quarter — the busyness doesn't change the result
- Process ratings are honest — a 🔴 rating on a broken process is a finding, not a failure; the purpose of this review is to surface problems so they can be fixed, not to defend the status quo; a review where everything is 🟢 is suspicious and should prompt follow-up questions
- Start/Stop/Continue is required every quarter — the "Stop" category is the most important; HR functions accumulate process debt just like software does; being explicit about what to stop prevents the function from growing increasingly complex without delivering additional value
- Matt Mathison gets the brief, not the full report — the full report is for Dr. Lewis and the CEO; Matt Mathison receives 3 honest sentences; if the HR function had a bad quarter, the brief says that with a recommended action, not a softened version of events
- HITL required: Dr. Lewis conducts the review; company CEO participates in the quarterly review (their perspective on how HR is performing is important — Dr. Lewis solicits it explicitly); Matt Mathison receives the brief and annual portfolio comparison; year-ahead priorities are reviewed with Matt Mathison before being finalized

## System Dependencies
- **Reads from:** HR OKR tracker (grades), HR metrics dashboard (period data), process notes and ER case log, compliance calendar (filings completed/missed)
- **Writes to:** HR ops review report (SharePoint/HR/Operations Reviews/); Matt Mathison brief; year-ahead priority document; process improvement action items
- **HITL Required:** Dr. Lewis conducts; CEO co-reviews quarterly; Matt Mathison receives brief and annual portfolio report; year-ahead priorities require Matt Mathison review

## Test Cases
1. **Golden path:** Allevio Q3 ops review → OKR grade: 0.82 (strong); Metrics: turnover 6.9% (🟢), regrettable: 1 biller departure (named — replacement offer out by July 31), time to fill 39 days (🟢), I-9 100% (🟢); Process: Recruiting 🟢, Onboarding 🟡 (new hire at Allevio received wrong healthcare system access on Day 1 — fixed by Day 3 but process gap identified), ER 🟢, Compliance 🟢; Start: Add IT to new hire onboarding checklist with 3-day access audit; Stop: Manual email reminders for reverification dates (automate with Outlook calendar); Continue: OIG monthly check running without issues; Matt Mathison brief: "HR at Allevio in Q3 scored 0.82 — strong quarter with one regrettable departure being replaced. One process gap in onboarding (access provisioning) identified and corrected with a checklist fix. Top priority for Q4: completing the compliance calendar automation so we're not running manual reverification reminders."
2. **Edge case:** Annual Q4 review reveals Dr. Lewis is spending 60% of HR time on one company (Allevio) out of 3 entities → The portfolio comparison and capacity assessment surfaces this; the response is not just "work more" but an honest assessment of whether Allevio's HR volume reflects a problem (high ER case load, high turnover, under-resourced), a growth stage (fast hiring), or an allocation mismatch; recommended action may be: Allevio needs its own part-time HR coordinator to handle administrative HR; Dr. Lewis focuses on judgment-level work; this is a capacity finding for Matt Mathison
3. **Adversarial:** "Skip the ops review this quarter, we're too busy" → HR ops reviews take 2 hours — they prevent the problems that consume 20 hours; respond: "I'll run it in 90 minutes and give you a 3-sentence brief. The reason I can't skip it is that this is how I catch the issues before they become expensive: a broken process I don't review becomes an ER claim next quarter, or I miss a filing and pay a penalty. Tell me a day this week and I'll run it solo and send you the brief."

## Audit Log
All HR ops review reports retained by period and company. Matt Mathison briefs retained. Annual portfolio comparisons retained. Start/Stop/Continue decisions retained. Capacity assessments retained. Year-ahead priorities retained.

## Deprecation
Retire when portfolio companies have dedicated HR managers who run their own quarterly HR ops reviews and present to Dr. Lewis in a supervisory capacity, and Dr. Lewis's role is annual portfolio-level review rather than entity-level quarterly review.
