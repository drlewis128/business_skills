---
name: voice-of-customer-analyzer
description: "Synthesize customer feedback into structured insights. Use when the user says 'voice of customer', 'VoC', 'customer feedback analysis', 'what are customers saying', 'synthesize feedback', 'customer insights', 'feedback themes', or 'analyze customer feedback'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--sources <nps|csat|interviews|tickets|all>] [--period <quarter|year>]"
---

# Voice of Customer Analyzer

Synthesize customer feedback from multiple sources into structured insights that drive product, service, and CS improvements. Feedback without synthesis is noise. This skill converts raw feedback into prioritized themes, actionable insights, and a closed-loop accountability plan.

## When to Use
- Quarterly customer insights review for leadership
- Product roadmap prioritization — what do customers actually want?
- CS process improvement — where are we falling short?
- Board or LP update (customer perspective section)
- New portfolio company assessment — what do their customers say?

## Feedback Sources

| Source | Signal Type | Volume | Depth |
|--------|-----------|--------|-------|
| NPS open-ended comments | Satisfaction driver | Medium | Medium |
| CSAT follow-up comments | Support experience | High | Low |
| Customer interviews | Detailed opinion | Low | High |
| QBR feedback | Business outcome opinion | Low | High |
| Support ticket content | Product friction | High | Medium |
| Churn exit interviews | Deep dissatisfaction | Low | Very High |
| CSM observation notes | Qualitative relationship signals | Medium | Medium |

## Feedback Coding Framework

Categorize all feedback items into:

| Category | Example Themes |
|---------|---------------|
| **Product functionality** | Missing features, bugs, performance |
| **UX / ease of use** | Navigation, learning curve, UI clarity |
| **Integration / technical** | API issues, data sync, compatibility |
| **Support experience** | Response time, resolution quality, availability |
| **Onboarding / training** | Too fast, too slow, missing content |
| **Value / ROI** | Cost vs. benefit, value delivery |
| **CS relationship** | CSM responsiveness, proactivity, expertise |
| **Roadmap / innovation** | Pacing, relevance of new features, communication |

## Prioritization Matrix

```
Impact on retention × Frequency of mention

High Frequency + High Retention Impact = Fix this quarter
High Frequency + Low Retention Impact = Roadmap for next cycle
Low Frequency + High Retention Impact = Investigate (might be an early signal)
Low Frequency + Low Retention Impact = Monitor
```

## Output Format

```markdown
# Voice of Customer Analysis — <Entity>
**Period:** <period> | **Feedback sources:** <list> | **Total items analyzed:** <N>

---

## Executive Summary

Top 3 findings:
1. **[Theme]** — Mentioned by X% of respondents; [positive/negative] signal
2. **[Theme]** — [Summary]
3. **[Theme]** — [Summary]

**Overall customer sentiment:** Positive / Mixed / Negative
**Trend vs. prior period:** Improving / Stable / Declining

---

## Theme Analysis

| Theme | Frequency | Sentiment | Retention Impact | Priority |
|-------|----------|---------|----------------|---------|
| [Theme 1] | X% of feedback | 🔴 Negative | High | Fix Q3 |
| [Theme 2] | X% | 🟡 Mixed | Medium | Roadmap Q4 |
| [Theme 3] | X% | 🟢 Positive | High | Amplify |

---

## Theme Deep Dive (Top 3 Issues)

### Issue 1: [Theme Name]
**Frequency:** Mentioned in X% of feedback items
**Sentiment:** Negative
**Verbatim quotes:**
> "[Customer quote 1 — exact words]" — [Source: NPS/Interview/etc.]
> "[Customer quote 2]"

**Root cause hypothesis:** <What's driving this>
**Retention risk:** High / Medium / Low
**Recommended action:** <Specific — who does what by when>

### Issue 2: [Theme Name]
[Same structure]

---

## Positive Signals to Amplify

| Signal | Frequency | Who Said It | Opportunity |
|--------|----------|------------|------------|
| [Positive theme] | X% | [Segment] | Case study, marketing, retention proof point |

---

## Closed-Loop Action Plan

| Finding | Action | Owner | Due | Status |
|---------|--------|-------|-----|--------|
| [Issue 1] | [Specific action] | CS Manager / Product | <date> | Open |
| [Issue 2] | [Specific action] | CSM team | <date> | |

**Feedback loop close:** Customers should hear back on what we're doing with their input. Communication plan: [How and when]

---

## Product Feedback Package

Top 3 feature/fix requests with frequency and business impact:
1. **[Request]** — X customers, estimated retention impact: High
2. **[Request]** — X customers, estimated retention impact: Medium
3. **[Request]** — X customers

→ Deliver this package to Product leadership as input for roadmap prioritization.
```

## Output Contract
- Themes always backed by verbatim quotes — synthesis without evidence is opinion
- Prioritization always applied — not a flat list of everything customers said
- Action plan always includes closed-loop — customers must hear what you're doing with their feedback
- HITL required before VoC analysis is shared with Product, board, or external parties

## System Dependencies
- **Reads from:** NPS responses, CSAT data, interview notes, churn exit interview notes (provided)
- **Writes to:** Nothing (analysis for HITL review and distribution)
- **HITL Required:** Dr. Lewis reviews before board/LP sharing; Product leadership receives product feedback package; CS Manager owns action plan execution

## Test Cases
1. **Golden path:** Q2 VoC, 3 sources (NPS, 2 exit interviews, 12 support tickets) → 4 themes identified, onboarding most-mentioned issue (40%), 2 positive signals for amplification, product feedback package prepared
2. **Edge case:** Only 3-5 feedback items available → acknowledges limited sample, presents findings as directional rather than conclusive, recommends expanding feedback collection before acting on findings
3. **Adversarial:** Request to filter out negative feedback before presenting to leadership → refuses, presents complete and honest picture, recommends reframing negative feedback as prioritized improvement opportunities

## Audit Log
VoC analyses retained by entity and period. Actions tracked to closure. Feedback loop communications documented.

## Deprecation
Retire when CS platform or product intelligence tool provides automated feedback aggregation, coding, and insight generation from multiple sources.
