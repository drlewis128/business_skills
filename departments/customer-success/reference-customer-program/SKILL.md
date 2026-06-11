---
name: reference-customer-program
description: "Build and manage a customer reference program. Use when the user says 'reference customers', 'customer references', 'reference program', 'who can we use as a reference', 'customer reference list', 'prospect wants to talk to a customer', 'peer reference call', or 'reference for sales'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <program|single-reference|pipeline>] [--segment <industry|use-case|size>]"
---

# Reference Customer Program

Build and manage a customer reference program. References close deals. A prospect who talks to a happy customer is 3-5× more likely to buy than one who reads a case study. This skill builds the program systematically — so Sales has references available when they need them, not when CS gets around to building the list.

## When to Use
- Sales requests a customer reference for an active deal
- Building the formal reference program from scratch
- Quarterly review of the reference pool (refresh, add, retire)
- Identifying which existing customers could become references
- Preparing a reference customer for a prospect call

## Reference Types

| Type | Format | Best For | Preparation Needed |
|------|--------|---------|------------------|
| **Reference call** | 30-min phone/video between prospect and customer | Enterprise deals; complex buyers | High — customer needs a brief |
| **Written case study** | 2-page PDF or web story | Website, sales decks, collateral | Medium — customer reviews and approves |
| **Video testimonial** | 60-90 second recorded clip | Digital sales motions, website | Medium — scripted/unscripted |
| **Speaking reference** | Customer presents at a webinar or event | Marketing, analyst credibility | High — significant time commitment |
| **Survey quote** | Short pull quote from NPS/survey response | Sales decks, proposals | Low — customer may not know it's used |

## Reference Candidate Criteria

| Criterion | Minimum | Ideal |
|----------|---------|-------|
| Health score | Green | Green for 2+ consecutive quarters |
| NPS | Passive (7-8) | Promoter (9-10) |
| Product adoption | > 60% license utilization | > 80% |
| Account age | 6 months | 12+ months |
| Relationship | Champion agrees | Champion + exec sponsor agrees |
| Willingness | Asked and said yes | Proactively offered |

## Output Format

```markdown
# Reference Customer Program — <Entity>
**Date:** <date> | **Total references:** <N active> | **Status:** Building / Active / Maintaining

---

## Reference Pool — Active

| Account | Reference Type | Segment Match | Contact | Available For | Last Used | Notes |
|---------|--------------|-------------|---------|-------------|---------|-------|
| [Account A] | Call, Case Study | Healthcare / Mid-market | [Name/Title] | Any | [date] | Champion, strong NPS 10 |
| [Account B] | Call | Oil & Gas / SMB | [Name/Title] | Oil & Gas deals only | [date] | Willing but prefers warm intro from CSM |
| [Account C] | Video testimonial | SaaS / Enterprise | [Name/Title] | Digital channels | [date] | Recording complete, approved |

---

## Reference Pipeline — Candidates to Recruit

| Account | Health | NPS | Tenure | Ideal Reference Type | Outreach Needed | Owner |
|---------|--------|-----|--------|---------------------|----------------|-------|
| [Account D] | Green | 9 | 14 months | Call + Case Study | CSM to ask champion | CSM |
| [Account E] | Green | 8 | 8 months | Quote only | Include in next survey | CS Manager |

---

## Reference Request Handling (Sales → CS)

When Sales requests a reference for an active deal:

1. **Receive request** — Account name, deal context, prospect industry, specific questions they want answered
2. **Match the reference** — Find a reference that matches industry, use case, and company size (don't use a wrong-fit reference)
3. **Brief the reference customer** — 5-minute prep call or email: who the prospect is, what they want to know, what NOT to discuss
4. **Connect Sales with the reference** — Warm intro email, with CSM CC'd
5. **Thank the reference** — Within 24 hours of the call; send a token of appreciation (gift card, acknowledgment)
6. **Track the outcome** — Did the reference help close the deal? Log it

**SLA:** CS matches a reference within 2 business days of Sales request. No matching reference available = escalate to CS Manager.

---

## Reference Customer Brief Template

When preparing a reference customer for a call:

> **[Reference Customer Name] — Reference Call Brief**
>
> **Prospect:** [Name], [Title], [Company] — [brief description of who they are]
> **What they're evaluating:** [Use case or product area]
> **Key questions they may ask:**
> - [Question 1]
> - [Question 2]
>
> **What to emphasize:** [Your specific experience that's most relevant to their situation]
>
> **What to avoid:** [Sensitive topics, unreleased features, competitive information]
>
> **Format:** 30-minute call on [date/time]. Sales rep will join for the first 5 minutes, then drop off.
>
> Thank you for supporting us — this means a lot. We'll let you know how the deal progresses.

---

## Reference Program Health

| Metric | Current | Target |
|--------|---------|--------|
| Active references | <N> | ≥ 10 (enough variety) |
| Reference requests fulfilled within SLA | <N>% | ≥ 90% |
| Average deals with reference support | <N>% | ≥ 30% of enterprise deals |
| References burned out (used > 3× / quarter) | <N> | 0 |
```

## Output Contract
- Reference match always includes industry and use case alignment — wrong-fit references do more harm than no reference
- Reference customer always briefed before a prospect call — unsupported references are a liability
- No reference used more than 3× per quarter without explicit permission — protect reference customer relationships
- HITL required: CS Manager approves use of any new reference; Dr. Lewis notified when a reference request involves a C-level prospect or a deal > $100K

## System Dependencies
- **Reads from:** Customer health scores, NPS data, account list with industry and use case, prior reference usage log (provided)
- **Writes to:** Nothing (reference program plan and tracking for HITL review and CS/Sales coordination)
- **HITL Required:** CS Manager approves all reference additions to the pool; Dr. Lewis notified on enterprise reference requests ≥ $100K deal size

## Test Cases
1. **Golden path:** Sales requests a healthcare mid-market reference for an active deal → CS matches [Account A] within 24 hours, sends 5-point brief to reference customer, warm intro email to Sales with prospect context, thank-you note sent after the call, outcome logged (reference contributed to deal close)
2. **Edge case:** No reference matches the prospect's specific segment (oil & gas, SMB) → CS Manager escalates to Dr. Lewis, explores whether a close-enough reference could work with appropriate framing, documents the gap in the reference pipeline for recruitment priority
3. **Adversarial:** Sales asks to use the same reference for 5 deals in one month → declines, explains reference burnout risk, offers to brief an alternative reference or schedule a group prospect call with multiple prospects at once to use the reference more efficiently

## Audit Log
Reference requests tracked with match result, SLA compliance, and deal outcome (when shared by Sales). Reference usage per customer tracked quarterly.

## Deprecation
Retire when CRM (GoHighLevel) integrates a native reference program module with automated matching, usage tracking, and reference customer briefing workflows.
