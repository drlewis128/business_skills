---
name: ops-ops-review
description: "Run a quarterly or annual operations review. Use when the user says 'ops review', 'operations review', 'quarterly ops review', 'annual ops review', 'QBR', 'quarterly business review', 'ops retrospective', 'annual retrospective', 'quarterly review', 'annual review for operations', 'end of quarter ops', 'operations assessment', 'annual operations summary', or 'quarterly operations assessment'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4|annual>] [--year <YYYY>]"
---

# Ops Ops Review

Run structured quarterly and annual operations reviews at MBL portfolio companies — assessing performance against OKRs, KPIs, and operational commitments, identifying what worked and what didn't, and building the improvement agenda for the next period. The ops review is the accountability mechanism that closes the management loop: we set goals, we executed, we measured, we learned, we plan the next cycle.

## When to Use
- End of quarter — Q review (grading OKRs, KPI trend assessment, priorities for next quarter)
- End of year — Annual review (full retrospective, year-ahead planning, portfolio comparison)
- Before a board meeting or investor update that includes operational performance
- When Matt Mathison asks for an operations assessment at a portfolio company

## Review Framework

```
Quarterly review scope:
  OKR grades: How did we do vs. what we committed to?
  KPI trend: Are the core metrics moving in the right direction?
  Process health: Are key processes stable, improving, or degrading?
  People: Is the team at capacity? Any gaps emerging?
  Issues: What got resolved? What's still open?
  Next quarter priorities: What are the top 3 operational bets for Q[N+1]?

Annual review adds:
  Full-year OKR retrospective: All 4 quarters graded and trended
  Year-over-year KPI comparison: Metric movement over 12 months
  Capacity assessment: Is the operations function sized right for where the business is going?
  Portfolio comparison: How does this entity compare to peers in the portfolio?
  Year-ahead operating plan: What does the operations function commit to for next year?

Review format:
  Quarterly: 90-minute meeting with CEO; Dr. Lewis presents; action items assigned
  Annual: Half-day session with CEO and Matt Mathison; strategy discussion included
  Output: Written review document distributed within 24 hours of meeting
```

## Output Format

```markdown
# Operations Review — <Company Name>
**Period:** Q[N] [Year] / Annual [Year]
**Review date:** [Date] | **Participants:** [Dr. Lewis, CEO, [Matt Mathison for annual]]
**Prepared by:** Dr. John Lewis

---

## Executive Summary

[3-5 sentences. What happened this quarter/year? What's the headline story? Where did operations perform above expectations? Where did it fall short? What's the one thing that needs to change going forward?]

**Overall ops assessment:** 🟢 Strong / 🟡 Mixed — improving / 🟡 Mixed — declining / 🔴 Underperforming

---

## Section 1: OKR Grades

| Objective | Q[N] or Annual | Grade | KRs met | Trend |
|-----------|--------------|-------|--------|-------|
| O1: [Statement] | Q[N] | [0.0-1.0] | [N/N] | [vs. prior quarter] |
| O2: | | | | |
| O3: | | | | |

**Quarter grade:** [Weighted average] | **vs. Prior quarter:** [Higher/Lower/Same]

### OKR Retrospective

**What drove strong performance (if applicable):**
[Specific — what worked and why. Not generalities.]

**What prevented higher grades:**
[Honest. What blocked progress? Was it resources, clarity, external factors, execution?]

**Carry-forward vs. retired:**
- Carry-forward to Q[N+1]: [KR or theme — with refined target]
- Retired: [KR — met and no longer needs tracking / no longer relevant]
- New for Q[N+1]: [Theme or area we're adding based on what we learned]

---

## Section 2: KPI Trend Assessment

| KPI | Q[N-1] | Q[N] | Target | Trend | Assessment |
|-----|--------|------|--------|-------|-----------|
| [Denial rate] | [X%] | [X%] | [<8%] | ↓↑→ | [Improving — still above target] |
| [Days in AR] | [X] | [X] | [<45] | | |
| [BBL/day] | [X] | [X] | [X] | | |
| [Staff utilization] | [X%] | [X%] | [70-85%] | | |
| [OPEX vs. budget] | [X%] | [X%] | [100%] | | |

**Bright spots (metrics significantly improving):**
- [Metric]: From [X] to [Y] — [what drove this]

**Concerns (metrics trending wrong):**
- [Metric]: From [X] to [Y] — [root cause / plan to address]

---

## Section 3: Process Health

| Process | Rating | vs. Prior quarter | Notes |
|---------|--------|-----------------|-------|
| [Billing cycle — Allevio] | 🟢/🟡/🔴 | ↑/→/↓ | |
| [Vendor management] | | | |
| [Hiring process] | | | |
| [Incident response] | | | |
| [Reporting and analytics] | | | |

**Process wins:** [A process that materially improved this quarter]
**Process failures:** [A process that produced a significant issue — and the fix]
**Start/Stop/Continue:**
- Start: [Something we should be doing that we're not]
- Stop: [Something we're doing that isn't adding value]
- Continue: [Something working well — protect it]

---

## Section 4: People & Capacity

**Headcount:** [N actual] vs. [N budgeted] | **Open positions:** [N]
**Voluntary turnover:** [X%] trailing 12 months | **Regrettable turnover:** [N people, names if ≤5]
**Capacity assessment:** [Is the operations team at the right size for the work? Are people over-utilized, under-utilized, or balanced?]

**Key people developments:**
- [Promotion, departure, new hire, performance issue — relevant to operations]

**Capacity outlook for next quarter:**
- [Hiring needed: [role, by when] / No headcount changes planned / At risk: [utilization detail]]

---

## Section 5: Unresolved Issues

| Issue | Quarters open | Priority | Status |
|-------|-------------|---------|--------|
| [Issue] | [N quarters] | 🔴/🟡 | [Active mitigation / Accepted / Escalating] |

**Issues resolved this quarter:**
- [Issue]: [How it was resolved] — closed

---

## Section 6: Next Quarter Priorities (Quarterly) / Year-Ahead Plan (Annual)

**Q[N+1] top 3 operational priorities:**
1. [Priority] — rationale: [why this is the top priority]
2. [Priority]
3. [Priority]

**Draft Q[N+1] OKRs:** [Proposed objectives — to be finalized with CEO by end of week 1]

**[Annual only] Year-ahead operating commitments:**
- [Commitment 1 — specific, measurable, with completion date]
- [Commitment 2]
- [Commitment 3]
- [Investment required: $[X] in [category] — requires Matt Mathison approval]

---

## [Annual only] Portfolio Comparison

| Metric | [Company] | Portfolio median | Flag |
|--------|---------|----------------|------|
| [EBITDA margin] | [X%] | [X%] | 🟢/🟡/🔴 |
| [Denial rate — where applicable] | | | |
| [Staff turnover] | | | |
| [OPEX as % of revenue] | | | |

---

## Matt Mathison Brief (3 sentences — annual is 5)

[Company] Q[N] [/annual] ops review: overall [assessment]. [Strongest result this period]. [Biggest gap and what's being done about it]. [Annual: key investment or priority for next year that Matt Mathison should be aware of].
```

## Output Contract
- Retrospective is honest — the review is a truth-telling exercise, not a PR exercise; OKR grades are what they are; KPI trends are reported from authoritative sources; processes rated 🔴 are rated 🔴 even if it's uncomfortable; the value of the review is the signal it provides, not the story it tells
- The review produces decisions — a review that ends without specific next-quarter priorities and OKRs is incomplete; the output of the review meeting is: Q[N+1] top 3 priorities agreed, draft OKRs reviewed, any investment decisions surfaced to Matt Mathison, and a clear start/stop/continue on process changes
- Annual adds portfolio context — the annual review is the one moment where a company's operational performance is compared to the portfolio median; this comparison is motivating and revealing; Dr. Lewis facilitates this with data from ops-kpi-dashboard across entities; the portfolio comparison is presented factually, not as a competition
- HITL required: Dr. Lewis prepares and presents; CEO is the primary participant; Matt Mathison participates in annual reviews; the written document is distributed within 24 hours; next-quarter OKRs are finalized within 1 week of the review; any investment decision >$25K surfaced in the review requires Matt Mathison approval before commitment

## System Dependencies
- **Reads from:** OKR tracker (ops-okr-tracker), KPI dashboard (ops-kpi-dashboard), weekly ops reports (ops-weekly-ops-report), process assessments, HR records, issue log, prior quarter review
- **Writes to:** Ops review document (SharePoint/Ops/<Company>/Planning/Reviews/); draft OKRs for next quarter; Matt Mathison brief; annual comparison for portfolio reporting
- **HITL Required:** Dr. Lewis prepares; CEO reviews; Matt Mathison for annual; next-quarter OKRs finalized with CEO; investments >$25K surfaced for approval

## Test Cases
1. **Golden path:** Allevio Q3 ops review → Grade: 0.88 (strong quarter); KPI bright spot: first-pass acceptance recovered from 91% to 94% (payer modifier guide working); concern: denial rate still 9.1% vs. 8% target (close but not there); Process wins: vendor management process implemented — all Tier 1 scorecards current; people: 1 open position (billing specialist offer pending); next quarter: O1 is "Break through the 8% denial ceiling" with tighter KR targets; O2 is "Implement full equipment asset register"; Matt Mathison brief: "Allevio Q3 grade 0.88 — strong quarter. First-pass acceptance up significantly from modifier guide implementation. Denial rate still above target at 9.1% — closing the gap is Q4's primary operational focus."
2. **Edge case:** A review that reveals a significant capability gap (operations are functioning but the team is massively over-utilized and key processes are undocumented) → Name it directly in the review: "Operations is running on individual heroics rather than scalable processes. This works at current volume; it will not work at 1.5x volume. The annual plan must include: (1) documenting 5 core processes as SOPs; (2) one targeted hire to relieve the bottleneck in billing; (3) establishing a formal Monday.com tracking system. Investment: ~$85K fully loaded for the hire plus 2 weeks of Dr. Lewis time for SOP documentation." Surface this to Matt Mathison at the annual review.
3. **Adversarial:** "We reviewed Q2 less than 3 months ago — why do we need another review?" → The quarterly cadence exists precisely because 3 months is enough time for things to improve or deteriorate materially; the Q2 review set Q3 priorities; the Q3 review grades whether they were achieved; respond: "The Q3 review grades the OKRs we set in Q2. Without it, we don't know if Q3's priorities were the right ones or whether we executed them. It also sets Q4. 90 minutes once per quarter is the minimum governance cadence at this stage."

## Audit Log
All review documents retained by company and period. OKR grade history retained across quarters. KPI trend data retained. Matt Mathison annual review attendance and decisions retained. Investment decisions surfaced in reviews tracked to approval or rejection.

## Deprecation
Retire when portfolio companies have CEOs and COOs who lead their own quarterly and annual business reviews, with Dr. Lewis participating as a strategic advisor and reviewer rather than as the preparer and presenter.
