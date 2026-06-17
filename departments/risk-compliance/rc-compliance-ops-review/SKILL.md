---
name: rc-compliance-ops-review
description: "Produce the quarterly and annual compliance operations review — program performance, risks, and Matt Mathison executive brief. Use when the user says 'compliance ops review', 'compliance review', 'annual compliance report', 'compliance program review', 'quarterly compliance review', 'board compliance report', 'compliance program assessment', 'how is the compliance program performing', 'compliance program maturity', 'Matt Mathison compliance brief', 'compliance executive report', 'compliance program audit', or 'year-end compliance review'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <Q1|Q2|Q3|Q4|annual>] [--audience <CEO|Matt-Mathison|board>]"
---

# Compliance Operations Review

Produce the quarterly and annual compliance program review for MBL portfolio companies — synthesizing KPI performance, OKR completion, incident history, regulatory standing, and program maturity into an executive-level assessment for the CEO and Matt Mathison. The annual compliance ops review is the compliance function's performance review: it answers the question "is the compliance program working, and are we better protected than we were a year ago?" The quarterly review is a shorter operational check — is the program on track, what's changed, and what needs attention?

The compliance ops review is not a status report — it is a judgment. Dr. Lewis is the expert; the review should lead with conclusions and assessments, not just data. "Training completion is 98%" is data. "Training completion has improved from 87% to 98% over the year, eliminating our highest-probability HIPAA training deficiency finding risk" is a judgment.

## When to Use
- End of each quarter — quarterly compliance ops review for CEO
- Q4 / year-end — annual compliance program review
- Matt Mathison requests a compliance program brief
- Before a sale process or LP due diligence — compliance program due diligence package
- After a significant incident — post-incident program assessment

## Review Framework

```
Quarterly compliance review components:
  - KPI summary (from rc-compliance-kpi-dashboard)
  - OKR progress (from rc-compliance-okr-tracker)
  - Incidents summary (from rc-incident-manager)
  - Regulatory standing: any new requirements, pending actions, or status changes
  - Open items from prior review
  - Focus areas for next quarter

Annual compliance review components (add to quarterly):
  - Program maturity assessment: where we started vs. where we are
  - OKR annual performance: full year scores
  - Audit plan execution: planned vs. completed audits
  - Risk register year-over-year comparison: are risks increasing or decreasing?
  - Regulatory landscape changes: new requirements effective in next year
  - Resource assessment: is current investment adequate for current risk?
  - Compliance program priorities for coming year
  - Exit readiness assessment (PE context): how does the compliance program look to a buyer?
  
Compliance maturity model (for annual assessment):
  Level 1 — Reactive: Responds to incidents; minimal proactive compliance; no formal program
  Level 2 — Foundational: Key policies in place; mandatory training operating; incident response functional
  Level 3 — Operational: Risk-based audit plan; controls testing; KPI tracking; OKRs set and tracked
  Level 4 — Proactive: Predictive risk management; compliance embedded in business decisions; metrics driving improvement
  Level 5 — Leading: Compliance as competitive advantage; externally recognized program; portfolio-level integration
  
  MBL target for portfolio companies: Level 3 (Operational) by year 2 of program; Level 4 (Proactive) by year 3
  
Exit readiness compliance checklist:
  A buyer in a PE exit process will look for:
  ✅ Documented HIPAA program (Allevio): risk analysis, policies, training records, BAAs
  ✅ No open OCR investigations or significant regulatory actions
  ✅ OIG LEIE screening current
  ✅ No OIG exclusion events in past 3 years
  ✅ Employment practices: no open EEOC charges; documented progressive discipline process
  ✅ Financial controls: documented AP controls; payroll authorization; no open audit findings rated High
  ✅ Related-party transaction register current and disclosed
  ✅ No unresolved material weaknesses
  ✅ Insurance portfolio adequate and current
  ✅ Key person risk documented (compliance program documented to survive Dr. Lewis's absence)
```

## Output Format

```markdown
# Compliance Operations Review — <Company Name>
**Period:** [Q / Annual] | **Date:** [Date]
**Prepared by:** Dr. John Lewis | **CEO reviewed:** [Date]
**Matt Mathison brief:** ✅ Included at end

---

## Executive Summary

**Program health:** 🟢 Healthy / 🟡 Watch / 🔴 Action required
**Maturity level:** Level [1-5] — [Assessment vs. prior period]
**Quarter headline:** [2-3 sentence narrative — what was the most important compliance development this period?]
**Key action for leadership:** [What does the CEO or Matt Mathison need to do or decide based on this review?]

---

## KPI Performance

| Domain | Prior period | Current | Trend | Status |
|--------|------------|---------|-------|--------|
| Training completion (HIPAA) | [X]% | [X]% | ↑/↓/→ | 🟢/🟡/🔴 |
| Open High audit findings | [N] | [N] | | |
| Incidents — Critical/High | [N] | [N] | | |
| OIG LEIE current | ✅/⚠️ | ✅/⚠️ | | |
| BAAs current | [X]% | [X]% | | |
| Policies current | ✅/⚠️ | | | |

---

## OKR Performance (quarter)

| Objective | Score | Assessment |
|-----------|-------|-----------|
| O1: [Name] | [0-1.0] | [One sentence] |
| O2: [Name] | | |
| O3: [Name] | | |
| **Quarter** | [Avg] | [Overall judgment] |

---

## Incidents and Regulatory Standing

**Incidents this period:** [N] | Critical: [N] | High: [N] | Medium: [N] | Low: [N]
**Regulatory notifications sent:** [N] | **Regulatory actions received:** [N]
**Regulatory standing:** [Clean / Monitoring / Active response — describe]

**Notable incidents:** [If any — brief description and resolution status]
**Regulatory changes effective this period/next period:** [What's changing and what it requires]

---

## Open Items from Prior Review

| Item | Due | Owner | Status |
|------|-----|-------|--------|
| [From prior review] | [Date] | Dr. Lewis | ✅ Complete / 🟡 In progress / 🔴 Overdue |

---

## Focus Areas — Next Quarter

1. [Highest priority — why, and what we'll do]
2. [Second priority]
3. [Third priority]

---

## Annual Assessment (Q4 / Year-End Only)

### Program Maturity

| Year | Maturity level | Key advances |
|------|--------------|-------------|
| [Prior year] | Level [N] | |
| [Current year] | Level [N] | [2-3 specific capabilities added] |

**Year-over-year risk reduction:** [Where we are materially less exposed than 12 months ago]
**Remaining risk areas:** [Top 2-3 areas that still need improvement]

### Exit Readiness (PE Context)

| Compliance area | Status | Buyer-ready? |
|----------------|--------|-------------|
| HIPAA program documentation | ✅/⚠️/❌ | ✅/⚠️ |
| No open regulatory actions | ✅/⚠️/❌ | |
| OIG LEIE current | ✅/⚠️ | |
| Employment practices | ✅/⚠️/❌ | |
| Financial controls | ✅/⚠️/❌ | |
| Related-party register | ✅/⚠️/❌ | |
| No open material weaknesses | ✅/⚠️/❌ | |
| Insurance adequate | ✅/⚠️/❌ | |
| Compliance program documented | ✅/⚠️/❌ | |

**Exit readiness rating:** 🟢 Ready / 🟡 Close with noted gaps / 🔴 Significant work needed

---

## Matt Mathison Executive Brief

[Company] compliance operations review — [Period]:

**Program health:** [🟢/🟡/🔴]
**Maturity:** Level [N] (target: Level 3 by year 2)
**Training:** HIPAA [X]% | Anti-harassment [X]%
**Findings:** [N] High open / [N] Medium open / [N] closed this period
**Incidents:** [N] this period | [N] requiring regulatory notification
**OIG LEIE:** ✅ Current / ⚠️ Action needed
**Regulatory:** [Clean / Active response — brief description]
**OKRs:** [X/1.0] quarter average
**Exit readiness:** [🟢 Ready / 🟡 Noted gaps — describe]
**Action for Matt Mathison:** [What requires his awareness or decision — 1-2 items maximum]
```

## Output Contract
- The executive summary leads with a judgment, not data — the CEO and Matt Mathison read the executive summary; if the executive summary is a list of data points, they have to do the interpretation work themselves; Dr. Lewis does the interpretation and leads with the conclusion: "The compliance program is operating at Level 3 maturity, with meaningful improvement in HIPAA documentation and a reduction in open audit findings; the single area requiring CEO attention is the completion of the related-party transaction register, which remains at 60% completion after two quarters"; this is more useful than a table of numbers
- The annual review is Dr. Lewis's accountability moment — the annual compliance ops review assesses whether the compliance program delivered value during the year; Dr. Lewis is not just reporting to the CEO and Matt Mathison, but assessing the program honestly against what was committed at the start of the year; if OKRs scored 0.6 when 0.8 was the target, the review says that clearly and explains why; this builds credibility — a compliance officer who always reports success is not being honest; one who can analyze shortfalls and course-correct is trustworthy
- Exit readiness is a standing agenda item — MBL is a PE firm; portfolio companies will eventually be sold; the compliance program needs to be reviewable by a buyer's due diligence team; Dr. Lewis maintains the compliance program with exit readiness in mind at all times; the annual review includes an explicit exit readiness checklist so that if a sale process begins unexpectedly, the program can be presented without emergency remediation; the "cost" of maintaining exit readiness is a cleaner compliance program; the "cost" of not maintaining it is a last-minute fire drill that discounts the sale price
- HITL required: Dr. Lewis produces the quarterly review; CEO reviews and approves; Matt Mathison receives quarterly brief and annual review; annual review to Matt Mathison directly (not through intermediary); exit readiness assessment to Matt Mathison before any sale process begins; any Red indicator in the quarterly review triggers a direct conversation with the CEO (not just a written report)

## System Dependencies
- **Reads from:** KPI dashboard (rc-compliance-kpi-dashboard), OKR tracker (rc-compliance-okr-tracker), incident log (rc-incident-manager), risk register (rc-risk-register), audit plan execution (rc-audit-plan-builder), policy review status (rc-policy-manager), control deficiency tracker (rc-control-deficiency-tracker), regulatory calendar (rc-compliance-calendar)
- **Writes to:** Quarterly compliance review (SharePoint/RC/<Company>/Reviews/); annual compliance program review (same, year-end); Matt Mathison quarterly brief; Matt Mathison annual report; CEO review presentation; exit readiness package (when sale process is imminent)
- **HITL Required:** Dr. Lewis produces; CEO reviews; Matt Mathison receives quarterly brief and annual review; any Red indicator triggers direct CEO conversation; exit readiness assessment to Matt Mathison before sale process

## Test Cases
1. **Golden path:** Q3 annual compliance ops review for MBL portfolio → Dr. Lewis pulls all source data: KPIs (HIPAA 100% ✅; 1 High finding open 22 days — within 30-day window ✅; 0 incidents Q3 ✅); OKRs: O1 (HIPAA risk analysis update) — 0.9; O2 (vendor security questionnaires) — 0.7; O3 (whistleblower policy launch) — 1.0; quarter average 0.87; regulatory: clean; judgment: "Q3 was a strong compliance quarter. The HIPAA risk analysis update is substantially complete (1 section remaining — Q4 carryforward). The whistleblower program launched on schedule. One open High finding (AP control gap) is within remediation timeline. No incidents or regulatory actions." Matt Mathison brief: 4 sentences; overall 🟢; action: none required from Matt Mathison this quarter
2. **Edge case:** Annual review shows the program is still at Level 2 after 18 months (Level 3 target was 12 months) → Honest assessment: "The compliance program is at Level 2 — Foundational — 6 months behind the Level 3 target. The maturity gap is primarily in controls testing (no formal testing cycle completed) and KPI tracking (implemented this quarter). Contributing factors: Allevio clinical staffing changes absorbed significant compliance capacity in Q2-Q3. Recommendation: Complete the Q4 controls testing cycle to advance to Level 3 by year-end. Resource required: 20 hours in Q4 — no additional headcount needed." Matt Mathison receives this honestly; the plan to close the gap is specific; there is no attempt to reclassify what Level 2 means to make the program look better
3. **Adversarial:** "Can we just send Matt Mathison the KPI dashboard instead of a separate review?" → The KPI dashboard shows what the numbers are; the ops review interprets what the numbers mean and what decisions they require; Matt Mathison needs both the signal (dashboard) and the interpretation (ops review) to make informed decisions about portfolio compliance risk; a PE managing partner whose portfolio company sends raw metrics without analysis has to do the analysis himself — that is not an efficient use of his time; Dr. Lewis's job is to deliver the judgment alongside the data; the ops review takes the dashboard and adds the "so what" and "here's what needs to happen"

## Audit Log
All quarterly compliance reviews retained permanently. Annual compliance program reviews retained permanently. CEO review records retained. Matt Mathison quarterly briefs retained permanently. Exit readiness assessments retained permanently. Annual program review is a key document for any future sale process due diligence.

## Deprecation
Retire when portfolio companies have dedicated compliance functions producing their own program reviews — with Dr. Lewis reviewing and approving the reviews for accuracy and receiving the Matt Mathison brief directly rather than producing it. Matt Mathison retains the right to request a Dr. Lewis-produced review at any time for any portfolio company.
