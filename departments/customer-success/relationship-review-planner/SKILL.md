---
name: relationship-review-planner
description: "Plan and execute an executive relationship review with a customer. Use when the user says 'relationship review', 'executive check-in', 'exec sponsor review', 'EBR', 'executive business review', 'executive alignment', or 'C-level meeting with customer'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "<account-name> [--entity <name>] [--level <exec|vp|director>] [--format <brief|full>]"
---

# Relationship Review Planner

Plan and execute an executive relationship review (EBR) with a customer. QBRs are operational — EBRs are strategic. They happen at the executive level, focus on the future, and are the primary vehicle for deepening the partnership above the CSM/champion layer. Miss these and you lose the relationship when the champion leaves.

## When to Use
- Annual or bi-annual executive relationship review
- Pre-renewal for a strategic account (> $75K ACV)
- New executive stakeholder joined the customer's leadership team
- Relationship at risk at the C-level despite healthy operational metrics
- Preparing for expansion conversation requiring exec approval

## EBR vs. QBR Distinction

| | QBR (Operational) | EBR (Executive) |
|--|------------------|----------------|
| **Audience** | CSM + Champion + operational team | CSM + Exec Sponsor + Customer executive |
| **Focus** | Progress, metrics, open issues, roadmap | Strategic alignment, partnership value, future vision |
| **Duration** | 60-90 minutes | 45-60 minutes (executives respect tight agendas) |
| **Frequency** | Quarterly | Annually or bi-annually |
| **Tone** | Operational review | Peer conversation; strategic partnership |
| **Metric depth** | Full scorecard | Summary only — 3 key numbers max |

## Executive Communication Principles

1. **Lead with their business goals, not your metrics** — Executives care about their priorities, not your KPIs
2. **Tight agenda** — If you can't say it in 45 minutes, you're not prepared
3. **One clear ask** — EBRs that end without a specific request or next step are wasted
4. **Send a pre-read** — Executives prepare; send a 1-page brief 48 hours before
5. **No surprises** — Anything that could be uncomfortable should be discussed with the champion before the meeting

## Output Format

```markdown
# Executive Relationship Review — <Account>
**Entity:** <MBL entity> | **Date:** <date> | **Duration:** 45-60 min
**Customer executives:** <names/titles>
**MBL participants:** Dr. John Lewis / Matt Mathison + CSM

---

## Pre-Meeting Brief (send 48 hrs before)

> **[Account Name] × [MBL Entity] — Executive Review, [Date]**
>
> **Purpose:** Annual executive alignment on partnership progress and 12-month priorities.
>
> **Key topics:**
> 1. Progress against your top 3 business goals (5 min)
> 2. Where we've delivered the most value (5 min)
> 3. Where we can do more (10 min)
> 4. Your priorities for the next 12 months (10 min)
> 5. How we're thinking about the partnership (5 min)
>
> **Pre-read data:**
> - [Key metric 1]: <value vs. target>
> - [Key metric 2]: <value vs. target>
> - [Key metric 3]: <value vs. target>
>
> No homework needed. Just bring your perspective on what matters most for your business in the next year.

---

## Meeting Agenda

| Time | Topic | Owner | Notes |
|------|-------|-------|-------|
| 0:00-0:05 | Introductions + purpose | Dr. Lewis / CSM | Set tone: strategic, not operational |
| 0:05-0:15 | Their business: what's changed, what's the priority? | Customer exec | Listen; don't present |
| 0:15-0:25 | Our view of the partnership: progress, value, where we've fallen short | Dr. Lewis / CSM | Honest; 3 metrics max |
| 0:25-0:40 | Where we can do more: capabilities, roadmap, expanded scope | MBL | Tie to their priorities from the first 15 min |
| 0:40-0:50 | Their vision for the next 12 months | Customer exec | This is the expansion signal |
| 0:50-0:55 | Our ask / alignment on next step | Dr. Lewis | One specific ask |
| 0:55-1:00 | Wrap + follow-up commitment | CSM | Date for next touchpoint |

---

## Key Talking Points

### What's gone well (3 headlines)
1. <Specific outcome with a number>
2. <Specific outcome>
3. <Recognition of their team or a specific stakeholder>

### Where we can improve (1-2 honest points)
1. <Honest acknowledgment — don't minimize, don't over-apologize>
2. <What we're doing about it>

### The ask
> <One clear, specific request — renewal commitment, expansion conversation, reference call, advisory board membership, etc.>

---

## Follow-Up Plan

| Action | Owner | Due Date |
|--------|-------|---------|
| Meeting summary + agreed next steps | CSM | 24 hours |
| <Specific ask follow-through> | Dr. Lewis / CSM | <date> |
| Next EBR scheduled | CSM | <date + 12 months> |
```

## Output Contract
- Pre-read always sent 48 hours before the meeting — no cold starts at the executive level
- Agenda always 45-60 minutes maximum — executive time is the constraint
- One specific ask always included — no EBR ends without a clear next step
- HITL required: Dr. Lewis or Matt Mathison participates in or reviews all EBRs for Tier 1 accounts

## System Dependencies
- **Reads from:** Account success plan, success metrics, QBR history, stakeholder map (provided)
- **Writes to:** Nothing (meeting plan and pre-read for HITL review and delivery)
- **HITL Required:** Dr. Lewis reviews EBR agenda before any strategic account meeting; Matt Mathison participates in EBRs where the customer's executive team includes C-level

## Test Cases
1. **Golden path:** Tier 1 strategic account, $150K ACV, annual EBR → 48-hr pre-read sent, 55-min agenda, 3 business outcome headlines, honest acknowledgment of one support delay in Q2, clear ask (multi-year renewal conversation at the next QBR), follow-up summary sent next morning
2. **Edge case:** New customer CFO (executive champion just left) → accelerates the EBR timeline to introduce Dr. Lewis and re-establish the relationship, focuses first 30 minutes on understanding the new executive's priorities before presenting any metrics or ask
3. **Adversarial:** Customer executive uses the EBR to negotiate a price reduction → redirects to ROI and value evidence, does not negotiate on pricing in the meeting, commits to have the commercial team follow up, uses the meeting to strengthen the relationship rather than concede on price

## Audit Log
EBR plans and outcomes retained by account and date. Executive attendees and agreed next steps documented.

## Deprecation
Retire when CS platform provides a native executive engagement module with pre-read generation, meeting note capture, and follow-up tracking.
