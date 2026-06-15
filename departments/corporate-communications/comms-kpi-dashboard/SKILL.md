---
name: comms-kpi-dashboard
description: "Build a communications function KPI dashboard. Use when the user says 'comms KPIs', 'communications KPIs', 'PR metrics', 'track communications performance', 'comms dashboard', 'communications metrics', 'PR measurement', 'how do we measure communications', 'comms scorecard', or 'what metrics should communications track'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--period <monthly|quarterly>]"
---

# Comms KPI Dashboard

Build a communications function KPI dashboard — measuring the performance of media relations, executive communications, internal communications, and brand health in a single consolidated view. Communications without measurement is an opinion; communications with measurement is a function that can improve systematically.

## When to Use
- Monthly or quarterly communications performance review
- Matt Mathison asks "how is the communications program doing?"
- Establishing baseline metrics for a new portfolio company communications program
- Justifying communications investment (showing ROI for the time and resources allocated)
- Hiring a communications leader — define what they'll be measured on

## Output Format

```markdown
# Communications KPI Dashboard — <Entity Name>
**Period:** [Month/Quarter] [Year] | **Prepared by:** Dr. John Lewis
**For:** Matt Mathison / CEO | **Date:** <date>

---

## TL;DR

[3 bullets — the most important things to know about communications performance this period]
- [Biggest win]
- [Biggest concern]
- [Action required from Matt Mathison or CEO — or "None"]

---

## Media & Reputation

| KPI | This period | Prior period | Target | Status |
|-----|------------|-------------|--------|--------|
| Total earned media placements | [N] | [N] | [N] | ✅ / ⚠️ / ❌ |
| Tier 1-2 placements (major publications) | [N] | [N] | [N] | ✅ / ⚠️ / ❌ |
| Tier 3 placements (trade, local) | [N] | [N] | [N] | ✅ / ⚠️ / ❌ |
| Coverage tone (positive / neutral / negative) | [N%/N%/N%] | [Prior] | >80% positive | ✅ / ⚠️ / ❌ |
| Active media relationships (warm/hot contacts) | [N] | [N] | [N] target | ✅ / ⚠️ / ❌ |
| Pitches sent / accepted (pitch effectiveness rate) | [N sent / N accepted = X%] | [Prior] | >20% acceptance | ✅ / ⚠️ / ❌ |
| Inbound media requests | [N] | [N] | — (track only) | — |

**Media commentary:** [2-3 sentences — what drove the results; what to expect next period]

---

## Executive & Thought Leadership

| KPI | This period | Prior period | Target | Status |
|-----|------------|-------------|--------|--------|
| LinkedIn posts published (primary exec) | [N] | [N] | [3-4/month] | ✅ / ⚠️ / ❌ |
| LinkedIn avg engagement rate | [X%] | [X%] | >[3%] | ✅ / ⚠️ / ❌ |
| LinkedIn follower growth | +[N] | +[N] | +[N]/mo | ✅ / ⚠️ / ❌ |
| Expert media citations (quoted/mentioned) | [N] | [N] | [1-2/quarter] | ✅ / ⚠️ / ❌ |
| Speaking engagements delivered | [N] | [N] | [N/year] | ✅ / ⚠️ / ❌ |
| Podcast appearances | [N] | [N] | [N/quarter] | ✅ / ⚠️ / ❌ |

**Thought leadership commentary:** [2-3 sentences]

---

## Internal Communications

| KPI | This period | Prior period | Target | Status |
|-----|------------|-------------|--------|--------|
| Employee newsletter open rate | [X%] | [X%] | >[60%] | ✅ / ⚠️ / ❌ |
| All-hands meetings held (vs. scheduled) | [N/N] | [N/N] | 100% | ✅ / ⚠️ / ❌ |
| Change communications issued on time | [X%] | [X%] | 100% | ✅ / ⚠️ / ❌ |
| Employee Q&A follow-ups closed (within 48hr) | [X%] | [X%] | >90% | ✅ / ⚠️ / ❌ |

**Internal comms commentary:** [2-3 sentences]

---

## Crisis Preparedness

| KPI | Status | Last update | Target |
|-----|--------|------------|--------|
| Crisis playbook current | ✅ Current / ❌ Needs update | [Date reviewed] | Annual review |
| Crisis simulation completed | ✅ Done / ❌ Pending | [Date] | Annual |
| Media monitoring active | ✅ Weekly / ⚠️ Gaps | [Last review date] | Weekly |
| Crisis team contact list verified | ✅ / ❌ | [Date] | Quarterly |
| Social media monitoring active | ✅ / ⚠️ / ❌ | [Last review date] | Daily |

---

## Period Highlights

**Best coverage:** [Title + publication — most impactful piece of coverage this period]

**Top-performing content:** [Best-performing LinkedIn post or article — engagement metric]

**Key relationship built:** [Journalist or partner relationship that was activated this period]

**Coverage that hurt:** [Any negative coverage — what happened, current status]

---

## Next Period Priorities

| Priority | Action | Owner | Timeline |
|---------|--------|-------|---------|
| [Priority 1] | [Specific action] | Dr. Lewis | [Week/Date] |
| [Priority 2] | [Action] | [Owner] | [Timeline] |

**Matt Mathison action needed:** [Specific ask — or "None this period"]
```

## Output Contract
- TL;DR always leads — the dashboard is a management tool; the most senior reader should be able to understand the state of the communications program in 30 seconds by reading the TL;DR only; if they need to read more, the TL;DR has failed
- Effectiveness rate always calculated — pitches sent is activity; acceptance rate is effectiveness; the dashboard must show the ratio, not just volume
- Crisis preparedness is always green, yellow, or red — never omit it; a crisis happens when you least expect it; the preparedness status must be visible in every period's dashboard
- Negative coverage is always disclosed — a dashboard that only shows positive coverage is not trusted by management; every piece of negative or neutral coverage is logged and explained
- HITL required: Dr. Lewis builds the dashboard; Matt Mathison reviews quarterly; any ❌ status items requiring budget or personnel decisions are escalated to Matt Mathison for action

## System Dependencies
- **Reads from:** Media monitoring data, LinkedIn analytics, newsletter platform data, all-hands attendance records, crisis documentation
- **Writes to:** KPI dashboard (SharePoint/Comms/KPIs); quarterly comms review; Matt Mathison briefing
- **HITL Required:** Dr. Lewis builds; Matt Mathison reviews; resource decisions escalated to Matt Mathison

## Test Cases
1. **Golden path:** Q2 MBL comms dashboard → Media: 7 placements (target 6), 3 Tier 2 (target 2), 86% positive coverage; Thought leadership: Matt Mathison 12 LinkedIn posts (target 12), 4.1% avg engagement (target 3%), 1 conference keynote; Internal: Allevio newsletter 74% open rate (target 60%), all-hands Q2 completed; Crisis: playbook current, simulation not done (Q3 planned); TL;DR: "Media program at target; strong LinkedIn engagement; schedule simulation before year-end"; Matt Mathison action: "Review simulation date"
2. **Edge case:** Pitch effectiveness rate is very low (5%) — most pitches result in no response → this signals either the wrong journalists are being pitched, the wrong angles are being used, or the timing is poor; add a diagnostic section to the dashboard: which pitches got responses and which didn't; look for patterns; the data will reveal the fix; don't just track the rate — track what's driving it
3. **Adversarial:** Matt Mathison says "these metrics don't matter — I care about deal flow, not press clippings" → this is a legitimate challenge; reframe the communications KPIs to connect directly to business outcomes: "LinkedIn engagement from Matt's posts generated 4 inbound conversations from PE peers this quarter"; "the Becker's article was referenced by 2 prospective Allevio partners in introductory calls"; if the connection to business outcomes can't be demonstrated, the communications program needs to be refocused

## Audit Log
Monthly/quarterly dashboards retained. Trend data maintained for year-over-year comparison. Metric definitions documented to ensure consistency.

## Deprecation
Retire when portfolio companies or MBL Partners hire Communications Directors who manage communications analytics as a standard function with dedicated measurement tools.
