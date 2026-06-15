---
name: pe-ops-review
description: "Facilitate the weekly and monthly MBL Partners PE operations review. Use when the user says 'PE ops review', 'weekly fund update', 'monthly portfolio review', 'PE operations meeting', 'portfolio review for Matt', 'weekly PE update', 'fund operations review', 'what do we cover in the PE review', or 'MBL weekly review'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--mode <weekly|monthly|quarterly>] [--date <date>]"
---

# PE Ops Review

Prepare and facilitate the MBL Partners PE operations review — the regular cadence meeting where Dr. Lewis and Matt Mathison align on fund performance, portfolio status, deal pipeline, and priorities. Without a structured review cadence, small PE funds drift — deals go stale, portfolio issues go unaddressed, and Matt Mathison lacks the real-time view he needs to make decisions. This skill creates the agenda, packages the information, and drives the conversation to decisions.

## When to Use
- Weekly (15-20 min): Deal pipeline update + any urgent portfolio flags
- Monthly (30-45 min): Full portfolio financial update + value creation + pipeline
- Quarterly (60 min): Fund performance + OKR review + LP reporting alignment + strategic priorities
- Matt Mathison asks "can we do a quick update call?"
- Any time a portfolio or deal issue needs Matt Mathison's decision

## Review Cadence Structure

```
Weekly (Monday, 15-20 min):
  Focus: Deal flow + urgent portfolio flags + Matt Mathison actions needed
  Not: A full portfolio review; save details for monthly
  Output: 3-5 bullet points; 1-2 Matt Mathison action items

Monthly (first week of month, 30-45 min):
  Focus: Last month's portfolio financials; value creation progress; pipeline update
  Output: PE KPI dashboard; deal pipeline summary; 2-3 decisions needed from Matt Mathison

Quarterly (after quarter-end close, 60 min):
  Focus: Fund performance (IRR/MOIC/DPI); OKR review; LP reporting alignment; next quarter priorities
  Output: Fund performance report; OKR grades; LP draft update; next quarter priorities agreed
```

## Output Format

```markdown
# PE Ops Review — <Weekly / Monthly / Quarterly>
**Date:** <date> | **Prepared by:** Dr. John Lewis | **For:** Matt Mathison
**Meeting type:** Weekly / Monthly / Quarterly
**Duration:** 15 min / 30-45 min / 60 min

---

## WEEKLY REVIEW

### 1. Deal Pipeline (5 min)

| Deal | Stage | Last action | Next action | Due | Matt Mathison needed? |
|------|-------|------------|------------|-----|----------------------|
| [Company A] | Stage 3 — LOI | LOI sent <date> | Await response | <date> | ⚠️ Yes — approve counter if they come back |
| [Company B] | Stage 2 | CIM received | Screen complete | <date> | No — Dr. Lewis managing |
| [Company C] | Stage 0 | Teaser received | Will screen this week | — | No |

**New inbound this week:** [Company X from Banker Y — teaser attached]
**Passed this week:** [Company Y — valuation too high at X× EBITDA]

---

### 2. Portfolio Flags (5 min)

| Flag | Entity | Severity | Status | Matt Mathison action? |
|------|--------|---------|--------|----------------------|
| CFO search — extended timeline | Allevio | ⚠️ Medium | Re-engaged recruiter | Aware — no action needed |
| WTI at $X — impact on HIVE EBITDA | HIVE | ⚠️ Monitor | $X below plan | Aware |
| [Any urgent flag] | | 🔴 | | Yes — needs decision |

**No flags this week:** ✅ (if nothing to report)

---

### 3. Matt Mathison Actions (2 min)

| Action | Context | Deadline | Notes |
|--------|---------|---------|-------|
| [Approve LOI counter for Company A] | They may respond by <date> | <date> | |
| [Connect with Allevio CEO on hiring] | CFO search stalled | This week | |

---

## MONTHLY REVIEW

### 1. Portfolio Financial Summary (10 min)

| Entity | LTM Revenue | LTM EBITDA | vs. Plan | vs. Prior month | Key driver |
|--------|------------|-----------|---------|----------------|-----------|
| Allevio | $X | $X (X%) | +/-X% | +/-X% | [Driver] |
| HIVE | $X | $X (X%) | +/-X% | +/-X% | [Driver] |
| Column6 | $X | $X (X%) | +/-X% | +/-X% | [Driver] |
| **Portfolio total** | **$X** | **$X (X%)** | +/-X% | +/-X% | |

**Highlights:** [1-2 wins]
**Concerns:** [1-2 concerns with plans to address]

---

### 2. Value Creation Progress (5 min)

| Initiative | Entity | Status | EBITDA realized | Next milestone |
|-----------|--------|--------|----------------|---------------|
| AI scheduling | Allevio | ✅ 90% complete | $X | Full rollout by <date> |
| New clinic | Allevio | ⚠️ 2 months behind | $0 (not yet open) | Open by <date> |
| Add-on acquisition | Allevio | ⏳ Diligence | $0 (pending) | LOI by <date> |

---

### 3. Deal Pipeline (5 min)

*[Summary view — same as weekly but monthly detail]*

**Active:** <N> deals; [Stage 3: Company A] is most advanced
**Closed this month:** [Company / None]
**Passed this month:** [Company / None]
**Sourcing outlook:** [Active / Need to source more]

---

### 4. Matt Mathison Decisions Needed (5 min)

| Decision | Context | Options | Recommendation | Deadline |
|---------|---------|---------|---------------|---------|
| [Authorize Allevio add-on LOI at up to $X] | Allevio add-on diligence complete; ready to proceed | LOI / Pass / More diligence | Proceed to LOI at $X | <date> |
| [Approve CFO candidate — offer letter] | Scorecard: 87/100; references clear | Offer / Pass | Offer — strong candidate | <date> |

---

## QUARTERLY REVIEW

### 1. Fund Performance (15 min)

*[Full fund-performance-calculator output — summarized here]*

| Metric | Current | Target | vs. Last Quarter |
|--------|---------|--------|----------------|
| Net IRR | X.X% | >20% | +/-Xpp |
| Net MOIC | X.× | >2.0× | +/-X.× |
| DPI | X.× | — | +/-X.× |

---

### 2. OKR Review (10 min)

*[Full pe-okr-tracker output — summarized here]*

| Objective | Grade | Key win | Key miss |
|-----------|-------|---------|---------|
| O1: Deal Sourcing | X.X | [Win] | [Miss] |
| O2: Portfolio Value Creation | X.X | [Win] | [Miss] |
| O3: Fund Operations | X.X | [Win] | [Miss] |
| O4: Platform Building | X.X | [Win] | [Miss] |

---

### 3. LP Reporting Alignment (10 min)

- Quarterly LP report draft: ✅ Ready for Matt Mathison review / ⏳ In progress
- Key messages to LPs this quarter: [2-3 bullets — what story are we telling?]
- Any LP questions or concerns to address: [List or None]
- Distribution date: <date>

---

### 4. Next Quarter Priorities (15 min)

| Priority | Owner | KR it supports | Target by Q end |
|---------|-------|--------------|----------------|
| Close Allevio add-on acquisition | Dr. Lewis | O2 KR 2.7 | Q[N+1] close |
| Launch next fund capital raise conversations | Matt Mathison | O4 KR 4.6 | 3 LP conversations |
| Upgrade Allevio financial reporting (CFO hire) | Dr. Lewis | O2 KR 2.6 | Q1 [Year+1] |
| [Priority 4] | | | |

---

## Actions from This Review

| Action | Owner | Due | Notes |
|--------|-------|-----|-------|
| [Action 1] | Matt Mathison | <date> | |
| [Action 2] | Dr. Lewis | <date> | |
```

## Output Contract
- Weekly review is 3-5 bullets max — the weekly is for speed and decision-making; it is not a status report; information that doesn't require Matt Mathison's input should not be in the weekly
- Decisions needed always called out explicitly — the monthly and quarterly reviews must end with a clear list of decisions Matt Mathison needs to make; review meetings that produce no decisions are wasted time
- Portfolio financials always vs. plan — the number by itself means nothing; context requires comparison to the plan and prior period
- Actions always have an owner and due date — a meeting action with no owner doesn't get done; both items (Matt Mathison actions and Dr. Lewis actions) should be captured
- HITL required: Dr. Lewis prepares all review materials; Matt Mathison participates and makes decisions; any review output that will be shared with LPs requires Matt Mathison approval; follow-up actions tracked and confirmed

## System Dependencies
- **Reads from:** PE KPI dashboard, deal pipeline tracker, value creation tracker, fund performance calculator, pe-okr-tracker
- **Writes to:** Meeting notes (SharePoint/Fund/Reviews); action items (Monday.com or equivalent tracker); Matt Mathison briefing
- **HITL Required:** Dr. Lewis prepares; Matt Mathison participates and decides; LP-facing content requires Matt Mathison approval

## Test Cases
1. **Golden path:** Monthly review, clean portfolio month → Allevio: EBITDA +8% MoM; HIVE: on plan (WTI stable); Column6: +12% revenue; pipeline: 2 Stage 2 deals, 1 LOI pending; value creation: 80% on track; 2 decisions: LOI approval for add-on ($1.2M, recommend proceed) + CFO offer letter approval (recommend); Matt Mathison: approves both; review takes 35 minutes; clear actions logged; Dr. Lewis sends confirmation email
2. **Edge case:** Matt Mathison cancels the monthly review due to travel → don't skip the review; send the full review package via email with a clear "decisions needed" section and a deadline for Matt Mathison to respond; if decisions are time-sensitive (LOI deadline), flag urgency; don't let the monthly review slide more than 1 week without the materials going out; even if Matt Mathison can't meet, the information should be delivered and decisions made via email/phone
3. **Adversarial:** Matt Mathison keeps the weekly review too long, covering topics that belong in the monthly → at the weekly, gently redirect: "Let's cover that in the monthly — for now, the key question is X"; the weekly's value is precision and speed; a 20-minute weekly that runs to 60 minutes becomes a meeting tax that neither person wants; propose a standing agenda for the weekly that Dr. Lewis maintains and Matt Mathison has agreed to in advance

## Audit Log
All review materials retained by date. Decisions made in review documented. Action items tracked and closed. Matt Mathison direction captured.

## Deprecation
Retire when MBL has a dedicated investor relations or operations team running formal investment committee and portfolio review processes with standardized meeting protocols.
