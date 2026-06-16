---
name: finance-okr-tracker
description: "Track Finance function OKRs. Use when the user says 'finance OKRs', 'finance goals', 'finance team objectives', 'finance quarterly goals', 'finance department OKRs', 'set finance goals', 'track finance OKRs', 'finance team performance', 'finance quarterly review', or 'finance objectives and key results'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--quarter <Q1|Q2|Q3|Q4>] [--year <YYYY>]"
---

# Finance OKR Tracker

Set and track OKRs for the Finance function — the quarterly goals that measure how well the finance team is serving the business, not just whether the business is performing financially. Finance OKRs are different from business KPIs: they measure how well Dr. Lewis and the finance function are doing their jobs (close speed, forecast accuracy, compliance, partner satisfaction) rather than whether Allevio or HIVE hit revenue.

## When to Use
- Beginning of each quarter — set Finance function OKRs
- Mid-quarter check-in — assess progress
- End of quarter — grade and reflect on Finance function performance
- Matt Mathison asks "what are the Finance team's goals this quarter?"
- Establishing accountability for the finance function beyond just "keep the books"

## Finance OKR Design

```
Finance function OKRs fall into 4 categories:

1. CLOSE AND REPORTING
   Are we closing the books fast and accurately?
   Examples: Close within 7 days; all reconciliations by Day 5; zero restated reports

2. PLANNING AND FORECASTING
   Is our financial planning serving the business?
   Examples: Annual budget delivered by Nov 30; forecast accuracy within ±5%

3. COMPLIANCE AND CONTROLS
   Are we meeting all legal and internal obligations?
   Examples: Zero missed tax deadlines; controls assessment complete; no overdue AP

4. PARTNER VALUE
   Are we helping the business grow and make better decisions?
   Examples: Delivered unit economics analysis for Q3 decision; 3 cost savings identified

OKR grading: 0.0-1.0 scale; 0.7 is the target (ambitious but achievable).
A 1.0 means the goal was too easy. A 0.3 means something went significantly wrong.
```

## Output Format

```markdown
# Finance Function OKRs — Q[N] [YYYY]
**Entity context:** [MBL Partners + portfolio finance function]
**Finance lead:** Dr. John Lewis
**Set date:** <Date> | **Grade date:** <End of quarter>

---

## OKR Summary

| Objective | Status | Grade |
|---------|--------|-------|
| [O1: Close speed and accuracy] | 🟢 On track / 🟡 At risk / 🔴 Behind | /1.0 |
| [O2: Forecast quality] | | |
| [O3: Compliance] | | |
| [O4: Finance as business partner] | | |

---

## O1: Close the Books Fast and Right

**Objective:** Achieve consistent 7-day close across all portfolio companies with zero material errors.

| Key Result | Target | Current | Status | Grade |
|-----------|--------|---------|--------|-------|
| KR1: Monthly close complete by Business Day 7 for all entities | 100% months | [X of Y months on time] | 🟢/🟡/🔴 | |
| KR2: All bank reconciliations complete by Business Day 5 | 100% | [X%] | | |
| KR3: Zero financial statement restatements in the quarter | 0 restatements | [0 / N] | | |
| KR4: Monthly management report delivered to Matt Mathison within 10 days of month end | 100% | [X of Y] | | |

**Narrative:** [What drove performance? What slowed down a close? What process improvement was implemented?]

---

## O2: Financial Planning and Forecast Quality

**Objective:** Deliver financial plans and forecasts that management trusts and acts on.

| Key Result | Target | Current | Status | Grade |
|-----------|--------|---------|--------|-------|
| KR1: Full-year revenue forecast accuracy (actual vs. forecast) | ±5% | [±X%] | | |
| KR2: Annual budget delivered to Matt Mathison by [Nov 30] | Nov 30 | On time / [N days late] | | |
| KR3: Quarterly scenario analysis delivered before every major decision | 100% of decisions >$25K | [X of Y] | | |

---

## O3: Compliance and Controls

**Objective:** Zero compliance failures; controls always operating.

| Key Result | Target | Current | Status | Grade |
|-----------|--------|---------|--------|-------|
| KR1: Zero missed tax deadlines (federal, state, payroll) | 0 misses | [0 / N] | 🟢/🔴 | |
| KR2: Annual controls assessment complete for all entities | 100% by [date] | ✅ / 🔴 | | |
| KR3: All identified control gaps remediated within 30 days | 100% | [X%] | | |
| KR4: AP overdue (>5 days past due date) = 0 | 0 overdue | [$[X] currently overdue] | | |
| KR5: All 1099s filed by Jan 31 | 100% by Jan 31 | — (Q1 only) | | |

---

## O4: Finance as Business Partner

**Objective:** Finance function adds strategic value beyond bookkeeping.

| Key Result | Target | Current | Status | Grade |
|-----------|--------|---------|--------|-------|
| KR1: Unit economics analysis delivered for at least one portfolio company | 1 analysis | ✅ / 🔴 | | |
| KR2: Cost reduction opportunities identified ≥$[target] across portfolio | $[X] | $[X identified] | | |
| KR3: Finance decision support on at least [N] major decisions (model or analysis) | [N] decisions | [N] | | |
| KR4: Matt Mathison rates Finance function value as ≥8/10 (end-of-quarter) | ≥8/10 | [Rating] | | |

---

## Quarter-End Grades

| Objective | Grade | Key achievement | Key miss |
|---------|-------|----------------|---------|
| O1: Close speed and accuracy | [0.X] | [What went well] | [What slipped] |
| O2: Forecast quality | [0.X] | | |
| O3: Compliance | [0.X] | | |
| O4: Business partner | [0.X] | | |
| **Finance Function Average** | **[0.X]** | | |

**Honest narrative:** [What happened this quarter — include both wins and what didn't go as planned. A finance OKR that always grades 0.9+ is not ambitious enough.]

**Carry-forward for next quarter:** [What specifically are we doing differently in Q[N+1] as a result of this quarter's performance?]
```

## Output Contract
- OKRs measure the Finance function, not the business — the distinction must be maintained; a KR that says "EBITDA >$100K" is a business KPI, not a Finance function OKR; the Finance function OKRs measure whether the function is serving the business well (close speed, forecast accuracy, Matt Mathison satisfaction), not whether the business is performing
- Grading always honest — 0.7 is the target; a finance function that grades 0.9+ every quarter either set the goals too low or is grading generously; the honest narrative section must acknowledge what didn't go well, even in strong quarters
- Matt Mathison rating always solicited at quarter end — the ultimate measure of whether Finance is adding value is whether Matt Mathison believes it is; the KR for Matt Mathison rating (O4, KR4) requires actually asking him; do not skip this because it's uncomfortable
- 3-4 objectives maximum — more objectives dilutes focus; the Finance function is not doing 8 things well simultaneously; pick the 3-4 that matter most this quarter
- HITL required: Dr. Lewis sets and tracks OKRs; Matt Mathison reviews at quarter end; the carry-forward improvement plan is shared with Matt Mathison; any KR with a grade below 0.4 requires a specific explanation and remediation plan before the next quarter begins

## System Dependencies
- **Reads from:** Close calendar performance (actual vs. target close dates), forecast accuracy (actual vs. rolling forecast), compliance calendar (missed deadlines), Matt Mathison feedback
- **Writes to:** Finance OKR tracker (SharePoint/Finance/OKRs/); quarterly review document; Matt Mathison quarterly update
- **HITL Required:** Dr. Lewis sets OKRs; Matt Mathison reviews quarterly; low grades (<0.4) require remediation plan; Matt Mathison satisfaction rating requires direct solicitation

## Test Cases
1. **Golden path:** Finance Q2 2026 OKRs → O1 (Close): KR1 close by Day 7: 3/3 months ✅; KR2 recs by Day 5: 3/3 ✅; KR3 zero restatements: 0 ✅; KR4 management report by Day 10: 3/3 ✅; O1 grade: 1.0 (hit all KRs — note: close targets should be stretched next quarter to Day 5 for at least one entity); O2 (Forecast): KR1 accuracy: ±3.8% — within ±5% target ✅; KR2 budget delivered on time ✅; KR3 scenario analysis: 2 of 2 major decisions ✅; O2 grade: 0.9; O3 (Compliance): KR1 no missed tax deadlines ✅; KR2 controls assessment: 1/3 entities complete (Allevio done, HIVE and Column6 pending) ⚠️; KR4 AP overdue: $0 ✅; O3 grade: 0.7 (controls assessment behind); O4 (Partner): unit economics delivered ✅; cost reduction $43K identified ✅; Matt Mathison rating: 8.5/10 ✅; O4 grade: 0.9; Finance average: 0.88; Narrative: "Strong quarter; primary miss was controls assessment completion — HIVE and Column6 assessments scheduled for Q3; no compliance misses; cost reduction work created real value"
2. **Edge case:** An OKR is missed entirely because of a circumstance outside the Finance function's control (a portfolio company's bookkeeper quit and the close was delayed by 3 weeks) → grade it honestly: 0.3 for that KR, and document the context: "Close was delayed due to bookkeeper departure at HIVE Partners. The KR was missed, but the root cause was outside the Finance function's direct control. We did not have a contingency plan — going forward, Dr. Lewis maintains the ability to perform an emergency close for any portfolio company, even without local accounting support." The grade stands; the context is documented; the learning is captured
3. **Adversarial:** Matt Mathison rates Finance at 5/10 → do not defend — learn: ask directly: "Thank you for the honest rating. Can you tell me specifically what Finance is not doing that you wish we were, or what we're doing that isn't valuable?" Turn the 5/10 into a specific list of improvements for next quarter; set a goal to reach 8/10 by Q[N+2]; commit to a mid-quarter check-in

## Audit Log
Finance OKRs retained by quarter and year. Grades documented with narrative. Matt Mathison ratings retained. Carry-forward improvements tracked across quarters. Low-grade (≤0.4) remediation plans retained.

## Deprecation
Retire when each portfolio company has a dedicated finance leader (CFO or controller) who sets their own function OKRs, and Dr. Lewis's Finance OKRs shift to portfolio-level oversight and strategic finance rather than operational finance execution.
