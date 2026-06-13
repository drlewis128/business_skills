---
name: product-ops-tracker
description: "Track and optimize product operations across the product lifecycle. Use when the user says 'product ops', 'product operations', 'product processes', 'how do we scale product operations', 'product team processes', 'improve product process', 'product operating model', 'product workflow', 'product team efficiency', or 'product delivery process'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--area <planning|delivery|launch|feedback>]"
---

# Product Ops Tracker

Track and optimize the operational processes that enable reliable product delivery. Product ops is the connective tissue of the product function — sprint planning, roadmap maintenance, stakeholder communication, OKR tracking, launch checklists, and retrospectives all need to work as a system. When they don't, product managers spend their time firefighting processes instead of building products. For MBL's AI products, product ops also includes AI-specific operations: prompt iteration cadence, HITL review process, and model version management.

## When to Use
- Setting up a new product function from scratch
- A product team is in chaos — too many ad hoc processes, unclear ownership
- Preparing to hand off product operations to a new PM
- Portfolio company assessment — do they have repeatable product operations?
- Monthly product ops review — where are the process gaps?

## Product Ops Process Map

```
Planning cadence:
  Quarterly: OKR setting → roadmap planning → capacity planning
  Monthly: OKR check-in → product health review → feedback synthesis
  Weekly: Sprint planning → sprint review → retrospective → stakeholder update

Delivery process:
  Discovery → spec → engineering review → sprint commitment → build → QA → launch → monitoring

Launch process:
  Marketing brief → docs → release notes → rollout plan → launch → post-launch review

Feedback loop:
  Analytics → support tickets → user interviews → CSAT/NPS → synthesis → prioritization

AI-specific ops:
  Prompt iteration: monthly review of Claude prompts; Dr. Lewis reviews output samples
  HITL review: weekly review of human-in-the-loop approvals and rejections
  Model versioning: quarterly model version assessment; migration plan when model updates
  Cost tracking: weekly Claude API cost review vs. budget
```

## Output Format

```markdown
# Product Ops Health Report — <Product>
**Date:** <date> | **Owner:** Dr. John Lewis
**Period:** <month/quarter>

---

## Process Health Summary

| Process | Status | Last run | Gaps |
|---------|--------|---------|------|
| Weekly sprint planning | 🟢 Running | <date> | None |
| Weekly retrospective | 🟡 Inconsistent | <date> | Skipped 2 of last 4 weeks |
| Monthly product review | 🟢 Running | <date> | None |
| OKR tracking (weekly) | 🔴 Not happening | — | Need owner; Dr. Lewis to start |
| User interview cadence | 🟡 Below target | <date> | 1 interview in 60 days (target: 2/month) |
| Feedback synthesis | 🟢 Running | <date> | None |
| HITL review (AI-specific) | 🟡 Ad hoc | <date> | No weekly cadence established |
| Prompt review (AI-specific) | 🔴 Never done | — | Set up monthly cadence |

---

## Cadence Board

| Process | Cadence | Owner | Day/Time | Status |
|---------|---------|-------|----------|--------|
| Sprint planning | Weekly, Monday | Dr. Lewis | Mon 9am | 🟢 |
| Sprint retrospective | Bi-weekly | Dr. Lewis | Fri EOD | 🟡 |
| Product review (ops) | Weekly, Thursday | Dr. Lewis | Thu 2pm | 🟢 |
| Product review (strategic) | Monthly | Dr. Lewis + Matt | 1st Mon | 🟢 |
| OKR tracking | Weekly | Dr. Lewis | Thu 9am | 🔴 |
| User interviews | 2x/month | Dr. Lewis | Rotating | 🟡 |
| Feedback synthesis | Monthly | Dr. Lewis | Last Fri | 🟢 |
| HITL review | Weekly | Dr. Lewis | Wed 10am | 🟡 |
| Prompt quality review | Monthly | Dr. Lewis | 3rd Mon | 🔴 |
| Model version review | Quarterly | Dr. Lewis | Qtr review | 🟢 |

---

## AI-Specific Operations

### HITL Review Log (last 4 weeks)

| Week | Total reviews | Approved | Rejected | Rejection rate | Trend |
|------|-------------|---------|---------|--------------|-------|
| <date> | <N> | <N> | <N> | <N>% | ↑ |
| <date> | <N> | <N> | <N> | <N>% | → |

**Rejection reasons (top 3):**
1. [Reason] — <N>% of rejections
2. [Reason] — <N>% of rejections
3. [Reason] — <N>% of rejections

**Action:** [Prompt improvement to address top rejection reason]

---

### Claude API Cost Tracker

| Week | API calls | Cost | Cost/session | Budget | Status |
|------|----------|------|-------------|--------|--------|
| <date> | <N> | $<N> | $<N> | $<N>/week | 🟢 |

**Cache hit rate:** <N>% (target: >40%) — 🟢 / 🟡 / 🔴

---

## Process Improvement Actions

| Gap | Action | Owner | By when |
|-----|--------|-------|---------|
| OKR tracking not happening | Schedule weekly Thursday OKR review; use product-okr-tracker skill | Dr. Lewis | Sprint N |
| Prompt review never done | Monthly prompt review on 3rd Monday; sample 20 outputs for quality | Dr. Lewis | <date> |
| HITL review ad hoc | Weekly Wednesday HITL review block; use rejection data to improve prompts | Dr. Lewis | <date> |

---

## Operational Metrics

| Metric | This period | Target | Status |
|--------|------------|--------|--------|
| Sprint goal hit rate | <N>% | >80% | 🟡 |
| Spec → sprint ratio (days) | <N> days | <7 days | 🟢 |
| Launch on time rate | <N>% | >90% | 🟡 |
| Post-launch review completion | <N>% | 100% | 🟡 |
| User interviews per month | <N> | 2 | 🔴 |
```

## Output Contract
- All recurring processes listed with status — gaps in cadence create downstream delivery failures
- AI-specific ops always included for AI products — HITL and prompt ops are not optional for AI product quality
- Every red process has a specific action and owner — flagging without fixing is not product ops
- Claude API cost tracked weekly — unchecked costs are a risk at scale
- HITL required: Dr. Lewis reviews ops health monthly; process changes approved by Dr. Lewis; HITL review cadence is non-negotiable for AI products

## System Dependencies
- **Reads from:** Monday.com (sprint board), Claude API dashboard, HITL review logs, meeting notes
- **Writes to:** Product ops health report (SharePoint/Product); process improvement actions (Monday.com)
- **HITL Required:** Dr. Lewis reviews and approves ops health report; process changes require Dr. Lewis sign-off

## Test Cases
1. **Golden path:** Monthly product ops review for Meeting Intelligence → Sprint planning and product review: green; OKR tracking: red (never set up — Dr. Lewis to start); User interviews: yellow (0 in last month; target 2); HITL review: yellow (ad hoc, not weekly); Prompt review: red (never done); Actions: 3 specific process improvements owned by Dr. Lewis with dates; API cost: $47 last week (on budget); cache hit rate: 38% (below 40% target — investigate)
2. **Edge case:** Team is tiny (Dr. Lewis + 1 engineer) — many of these processes feel like overkill → scale to capacity; for a 2-person team, consolidate: one 30-min weekly meeting (sprint review + retrospective + product review); monthly product ops check (30 min); HITL review weekly (async, 15 min); the processes should serve the team, not the other way around
3. **Adversarial:** PM says "we don't have time for process — we need to ship" → process debt compounds; a team that skips retros ships the same problems sprint after sprint; skip OKR tracking and the quarter ends with no way to assess whether the work mattered; the 3 hours per week of product ops processes save 3+ hours per week of rework and re-decisions; quantify the time spent on "product ops debt" to make the case

## Audit Log
Monthly product ops health reports retained. Process improvement actions tracked. HITL review logs retained for AI quality audit.

## Deprecation
Retire when product team has dedicated product ops support (a program manager or product ops specialist) and the cadences are running without this skill scaffold.
