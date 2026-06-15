---
name: comms-ops-review
description: "Facilitate a communications function operations review. Use when the user says 'comms ops review', 'communications review', 'PR review', 'communications team review', 'monthly comms review', 'quarterly communications check', 'how is the comms program doing', 'communications function review', or 'review the PR program'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--mode <monthly|quarterly>] [--date <date>]"
---

# Comms Ops Review

Facilitate a monthly or quarterly communications function operations review — assessing media performance, executive communications progress, internal communications health, and crisis preparedness, and driving the decisions and actions needed to improve. A communications function without a regular review drifts; the review is how the program stays aligned with company strategy and business goals.

## When to Use
- Monthly comms review (15-20 min) — media coverage + executive content + quick flags
- Quarterly comms review (30-45 min) — full program assessment + OKR review + next quarter priorities
- Matt Mathison asks "how is the communications program doing?"
- Before a major announcement — confirm readiness of all communications assets
- After a communications miss (crisis, poor coverage, missed deadline) — review what happened

## Output Format

```markdown
# Communications Ops Review — <Entity Name>
**Period:** [Month / Quarter] [Year] | **Mode:** Monthly / Quarterly
**Prepared by:** Dr. John Lewis | **For:** Matt Mathison / CEO
**Date:** <date>

---

## MONTHLY REVIEW (15-20 min)

### 1. Media This Period (5 min)

| Coverage | Publication | Date | Tone | Source |
|---------|------------|------|------|--------|
| [Headline / link] | [Publication] | [Date] | ✅ Positive / ➖ Neutral / ❌ Negative | [MBL pitch / organic / reactive] |

**Pitches sent this month:** [N] | **Responses:** [N] | **Placements:** [N]
**Best coverage this month:** [Title + publication — 1 sentence on why it mattered]
**Anything requiring action:** [Flag or "None"]

---

### 2. Executive Content (5 min)

| Exec | Posts this month | Best-performing post | Engagement rate | Trend |
|------|----------------|---------------------|----------------|-------|
| Matt Mathison | [N] | [Post title / topic] | [X%] | ↑ / → / ↓ |
| [Portfolio CEO] | [N] | [Post topic] | [X%] | ↑ / → / ↓ |

**Thought leadership items in progress:** [Podcast pitch, article draft, speaking submission]

---

### 3. Flags (5 min)

| Flag | Severity | Status | Action needed |
|------|---------|--------|--------------|
| [Any monitoring alert] | ⚠️ / 🔴 | [Status] | [Action or "Monitoring"] |
| [Any upcoming crisis risk] | ⚠️ / 🔴 | [Status] | [Action] |

**No flags this period:** ✅ (if clear)

---

### 4. Matt Mathison Actions (2 min)

| Action | Context | Due |
|--------|---------|-----|
| [Action — or "None this month"] | [Context] | [Date] |

---

## QUARTERLY REVIEW (30-45 min)

### 1. Program Performance vs. OKRs (10 min)

*[Pull from comms-okr-tracker — summarized here]*

| Objective | Grade | Status | Key win | Key miss |
|-----------|-------|--------|---------|---------|
| O1: Media & Reputation | X.X | ✅ / ⚠️ / 🔴 | [Win] | [Miss] |
| O2: Executive Presence | X.X | ✅ / ⚠️ / 🔴 | [Win] | [Miss] |
| O3: Internal Comms | X.X | ✅ / ⚠️ / 🔴 | [Win] | [Miss] |
| O4: Crisis Preparedness | X.X | ✅ / ⚠️ / 🔴 | [Win] | [Miss] |
| **Overall** | **X.X** | | | |

---

### 2. Media Program Quarterly Summary (5 min)

| Metric | This quarter | Last quarter | Target | Trend |
|--------|-------------|-------------|--------|-------|
| Total placements | [N] | [N] | [N] | ↑ / → / ↓ |
| Tier 1-2 placements | [N] | [N] | [N] | |
| Pitch effectiveness rate | [X%] | [X%] | >20% | |
| Active media relationships | [N] | [N] | [N] | |

---

### 3. Internal Communications Summary (5 min)

| Metric | This quarter | Target |
|--------|-------------|--------|
| All-hands meetings held | [N/N scheduled] | 100% |
| Newsletter open rate (avg) | [X%] | >60% |
| CEO communications quality (self-assess) | [Score 1-5] | 4+ |

---

### 4. Decisions Needed (10 min)

| Decision | Context | Options | Recommendation | Deadline |
|---------|---------|---------|---------------|---------|
| [Decision 1] | [Context] | [Options] | [Dr. Lewis recommendation] | [Date] |

---

### 5. Next Quarter Priorities (10 min)

| Priority | Action | Owner | KR it supports |
|---------|--------|-------|---------------|
| [Priority 1] | [Specific action] | Dr. Lewis | [OKR KR] |
| [Priority 2] | [Action] | [Owner] | [KR] |

---

### 6. Matt Mathison Summary

**Communications program status, [Quarter]:** Overall grade X.X/1.0. [2-sentence assessment — what's working, what needs attention]. Next quarter priority: [1 specific focus]. **Matt Mathison action required:** [Specific decision or awareness — or "None"]
```

## Output Contract
- Monthly review is 15-20 minutes — the monthly review is for coverage and executive content only; save the full OKR review for quarterly; a monthly that runs long becomes a tax neither party wants to pay
- Quarterly review always includes decisions — a quarterly review that produces no decisions is a status report, not a management meeting; the decisions section is mandatory; if there are no decisions needed, examine whether the communications program is truly surfacing what needs attention
- Matt Mathison actions are always called out explicitly — every review must end with a clear list (or explicit "none") of what Matt Mathison needs to decide or be aware of; he should never walk away from a review uncertain about what requires his attention
- Flags are proactive, not reactive — the monthly flags section surfaces items that are emerging risks, not items that have already blown up; the value of the monthly review is early warning
- HITL required: Dr. Lewis prepares all review materials; Matt Mathison participates and makes decisions in the quarterly review; any communications crisis or major media issue is escalated to Matt Mathison outside the regular review cadence — do not wait for the monthly

## System Dependencies
- **Reads from:** Comms KPI dashboard, comms-okr-tracker, media monitoring, coverage tracker, executive content calendar
- **Writes to:** Review notes (SharePoint/Comms/Reviews); action items (Monday.com or tracker); Matt Mathison briefing
- **HITL Required:** Dr. Lewis prepares; Matt Mathison reviews quarterly and makes decisions; communications crises escalated immediately regardless of review schedule

## Test Cases
1. **Golden path:** Q3 quarterly comms review → OKR overall 0.82; Media: 8 placements (target 6), 3 Tier 2; Executive: Matt Mathison 11 LinkedIn posts (target 12), 3.8% engagement, 1 conference keynote; Internal: Allevio newsletter 74% open rate, all-hands Q3 done; Crisis: simulation scheduled Q4; 2 decisions needed: approve comms budget for PR agency exploratory ($X) + approve Q4 conference speaking submission; Matt Mathison: both approved; 3 next quarter priorities set; review takes 38 minutes
2. **Edge case:** Matt Mathison cancels the quarterly review → don't skip it; send the full quarterly package via email with a clear "decisions needed" section and a deadline for Matt Mathison to respond; if decisions are time-sensitive (conference submission deadline), flag urgency; the program cannot wait an additional quarter for strategic decisions
3. **Adversarial:** The monthly review consistently runs to 45 minutes because Matt Mathison has many questions → this signals either the briefing materials are insufficient (he's learning things in the meeting that should have been in the briefing) or the communications program is underperforming and creating anxiety; fix the briefing materials first; if coverage and content were consistently strong, there would be fewer questions; use the review to identify what information Matt Mathison needs to feel confident

## Audit Log
Monthly and quarterly review materials retained by date. Decisions documented. Action items tracked. Matt Mathison direction captured.

## Deprecation
Retire when MBL or portfolio companies have Communications Directors who run formal monthly/quarterly program reviews as a standard management function.
