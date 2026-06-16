---
name: partner-performance-tracker
description: "Track and measure partner performance. Use when the user says 'track partner performance', 'partner metrics', 'how are our partners doing', 'partner scorecard', 'partner KPIs', 'partner revenue tracking', 'measure partner results', 'partner reporting', 'which partners are performing', or 'partner portfolio review'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly>]"
---

# Partner Performance Tracker

Track and measure the performance of all active partners — identifying top performers, at-risk partnerships, and the overall health of the partner portfolio. A partner program without measurement treats all partners as equal when they're not; 20% of partners typically generate 80% of partnership revenue. This skill identifies that 20% so resources can focus there.

## When to Use
- Monthly or quarterly partner portfolio review
- Matt Mathison asks "which partners are actually performing?"
- A partner agreement is up for renewal — need performance data to decide
- Identifying which partners to double down on vs. which to exit
- Building a partner tier upgrade/downgrade decision

## Partner Performance Metrics

```
Key partner metrics:

Revenue metrics:
  - Partner-attributed revenue (last 30/90/365 days)
  - Pipeline generated from this partner (open opportunities)
  - Referral-to-close rate (what % of their referrals convert)
  - Average deal size from this partner's referrals
  - Time from referral to close (partner pipeline velocity)

Activity metrics:
  - Referrals submitted (last 30/90 days)
  - Referral quality (% that meet ICP, vs. noise referrals)
  - Partner engagement (responding to communications? Attending trainings?)
  - Joint customer conversations initiated

Health indicators:
  - Relationship health (is the contact still there? Are they responsive?)
  - Pipeline trend (growing / stable / declining month-over-month)
  - Last activity date (>60 days with no activity = at risk)
```

## Output Format

```markdown
# Partner Performance Tracker — <Company Name>
**Period:** [Month / Quarter] [Year] | **Prepared by:** Dr. John Lewis
**For:** Matt Mathison / CEO | **Date:** <date>

---

## TL;DR

- **Partner-attributed revenue this period:** $[X] ([X% of total revenue])
- **Top performer:** [Partner name] — $[X] attributed
- **At-risk partners:** [N] partners with <1 referral in 60 days
- **Action needed:** [1-2 specific actions — or "None"]

---

## Partner Portfolio Overview

| Partner | Type | Status | Revenue (LTM) | Pipeline | Referrals (90d) | Health |
|---------|------|--------|--------------|---------|----------------|--------|
| [Partner 1] | Referral | ✅ Active | $[X] | $[X] | [N] | 🟢 |
| [Partner 2] | Co-sell | ⚠️ At risk | $[X] | $[X] | [N] | 🟡 |
| [Partner 3] | Referral | 🔴 Inactive | $[0] | $[0] | [0] | 🔴 |

Health indicators:
  🟢 Active: ≥1 referral in 30 days OR active pipeline
  🟡 At risk: No referral in 31-60 days; no active pipeline
  🔴 Inactive: No referral in >60 days; no pipeline

---

## Partner Deep Dives (Active Partners)

### [Partner Name] — [Type] Partner

| Metric | This period | Last period | Trend |
|--------|------------|------------|-------|
| Revenue attributed | $[X] | $[X] | ↑ / → / ↓ |
| Open pipeline | $[X] | $[X] | ↑ / → / ↓ |
| Referrals submitted | [N] | [N] | ↑ / → / ↓ |
| Referral-to-close rate | [X%] | [X%] | ↑ / → / ↓ |
| Avg referral deal size | $[X] | $[X] | ↑ / → / ↓ |
| Last activity date | [Date] | | |

**Partner summary:** [2 sentences — what's happening with this partner, why]
**Action:** [Specific — "Schedule QBR" / "Activate with new pitch" / "No action needed" / "Consider exit"]

---

## At-Risk Partner Response Plan

| Partner | Last activity | Risk | Outreach plan | Owner | Due |
|---------|-------------|------|--------------|-------|-----|
| [Partner] | [Date] | [Reason — gone quiet / contact left / competitor won their attention] | [Specific outreach action] | Dr. Lewis | [Date] |

---

## Partner Program Revenue Summary

| Metric | This period | Last period | Target | Status |
|--------|------------|------------|--------|--------|
| Total partner-attributed revenue | $[X] | $[X] | $[X] | ✅ / ⚠️ / ❌ |
| Partner revenue as % of total | [X%] | [X%] | [X%] target | ✅ / ⚠️ / ❌ |
| Average revenue per active partner | $[X] | $[X] | — | — |
| Referral-to-close rate (portfolio average) | [X%] | [X%] | >[X%] | ✅ / ⚠️ / ❌ |
| New partners signed | [N] | [N] | [N]/quarter | ✅ / ⚠️ / ❌ |

---

## Partner Portfolio Action Plan

| Action | Partner | Rationale | Owner | Due |
|--------|---------|---------|-------|-----|
| [Activate / QBR / Exit / Upgrade tier] | [Partner name] | [Why now] | Dr. Lewis | [Date] |

---

## Matt Mathison Summary

**Partner program status:** $[X] partner-attributed revenue this [period] ([X%] of total). [N] active partners, [N] at-risk. [Top partner] continues to outperform ([N] referrals, $[X] in pipeline). [At-risk partner] has been quiet 60+ days — [plan]. **Matt Mathison action needed:** [Specific — or "None this period"]
```

## Output Contract
- TL;DR always leads — Matt Mathison needs the state of the partner program in 30 seconds; the top-line numbers and actions come first
- Health status for every partner — every partner gets a green/yellow/red status based on activity, not just revenue; a partner who is active but hasn't yet generated revenue is in a better position than an inactive partner who generated revenue 12 months ago
- At-risk partners always have a response plan — a partner on the at-risk list without a response plan is just a reported problem; every at-risk partner has a specific outreach action, an owner, and a due date
- Revenue attribution is always specific — "partners contributed to revenue" without specific dollar attribution is not useful; every dollar attributed to partners must be tracked to a specific partner
- HITL required: Dr. Lewis tracks and reports; Matt Mathison reviews quarterly; partner exit decisions (ending a partnership agreement) require Matt Mathison approval; any change to partner fee structures requires Matt Mathison approval and legal review

## System Dependencies
- **Reads from:** CRM (partner-attributed deals), partner activity log, referral tracking, revenue data
- **Writes to:** Partner performance report (SharePoint/BD/Partner Reports); partner CRM
- **HITL Required:** Dr. Lewis reports; Matt Mathison reviews quarterly; partner exits require Matt Mathison; fee changes require Matt Mathison and legal

## Test Cases
1. **Golden path:** Allevio Q2 partner review — 5 referral partners → Partner A: $45K attributed, 8 referrals (🟢 top performer); Partner B: $12K, 3 referrals (🟢 active); Partner C: $0, last referral was 65 days ago (🔴 at risk); Partner D: $8K, 2 referrals (🟢 active); Partner E: $0, just signed (🟡 new — give 60 days); Total: $65K partner-attributed (8.5% of revenue, target 10%); at-risk: Partner C — outreach scheduled for Thursday; Matt Mathison: informed on top performer and at-risk; action: upgrade Partner A to preferred tier
2. **Edge case:** A partner attributes a deal to themselves that the CRM shows as a company-sourced deal (the customer was already in the pipeline before the partner's referral) → revenue attribution disputes must be resolved with documented criteria; if the partner submitted a referral for a customer who was already in the CRM as an active prospect, what are the rules? Decide the attribution policy before the first dispute occurs and document it in the partner agreement; apply consistently
3. **Adversarial:** A high-performing partner (top revenue) is discovered to be referring customers who are a bad fit for the company (high churn, complex needs) → revenue attribution isn't the only performance metric that matters; add "referral quality" to the tracker (churn rate of partner-referred customers vs. company-sourced); a partner who sends 10 referrals that all churn in 6 months is generating negative value despite showing positive revenue; address this with the partner directly

## Audit Log
Partner performance data retained by period. Revenue attribution records maintained. At-risk outreach outcomes logged. Partner exit decisions documented.

## Deprecation
Retire when portfolio companies have dedicated partner success teams with CRM-integrated partner tracking and reporting.
