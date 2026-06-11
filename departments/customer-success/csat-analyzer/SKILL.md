---
name: csat-analyzer
description: "Analyze Customer Satisfaction (CSAT) scores from support interactions. Use when the user says 'CSAT', 'customer satisfaction score', 'support satisfaction', 'ticket satisfaction', 'CSAT analysis', 'how satisfied are customers with support', or 'support quality metrics'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--channel <all|email|phone|chat>]"
---

# CSAT Analyzer

Analyze Customer Satisfaction scores from support interactions to identify service quality trends and drive improvement. CSAT measures the experience at the point of interaction — it's different from NPS (relationship loyalty) and is the primary metric for support team performance.

## When to Use
- Monthly support team performance review
- When CSAT drops unexpectedly
- Identifying which support agents or ticket types produce dissatisfied customers
- Customer journey improvement (support phase)
- Preparing for QBR with a customer who had a recent support experience

## CSAT Framework

### Standard CSAT Question
"How satisfied were you with the support you received?"
Scale: 1–5 stars or 1–10 (or simple thumbs up/down for volume)

```
CSAT Score = (# of positive responses) / (total responses) × 100

Positive threshold: ≥ 4 stars (out of 5) or ≥ 7 (out of 10)

Benchmarks:
> 90%: World-class support
80–89%: Above average
70–79%: Average; improvement needed
< 70%: Urgent attention
```

## CSAT Analysis Dimensions

### By Agent (Support Quality)
Identify top performers (model their behavior) and struggling agents (coach or retrain)

### By Issue Type (Product/Process Driver)
Issues where CSAT is consistently low may indicate a product gap or a confusing process — not just an agent problem

### By Response Time (Speed Driver)
Is CSAT correlated to how quickly the ticket was first responded to?

### By Resolution Rate
Are tickets being resolved or just closed? Reopened tickets are a CSAT risk.

## Output Format

```markdown
# CSAT Analysis — <Entity>
**Period:** <period> | **Tickets surveyed:** <N> | **Response rate:** X%

---

## Overall CSAT

**CSAT Score: X%** | Benchmark: <above/at/below market>
**vs. Prior period:** <+/- X points>

| Rating | Count | % |
|--------|-------|---|
| 5 stars (Very satisfied) | <N> | X% |
| 4 stars (Satisfied) | <N> | X% |
| 3 stars (Neutral) | <N> | X% |
| 2 stars (Dissatisfied) | <N> | X% |
| 1 star (Very dissatisfied) | <N> | X% |

---

## CSAT by Agent

| Agent | Tickets | CSAT Score | vs. Team Avg | Trend |
|-------|---------|-----------|-------------|-------|
| <Name> | <N> | X% | +X points | ⬆️ |
| <Name> | <N> | X% | -X points | ⬇️ |

**Top performer:** [Agent] — X% (model their approach)
**Needs coaching:** [Agent] — X% (specific behavior to address)

---

## CSAT by Issue Type

| Issue Category | Tickets | CSAT | Avg Resolution Time | Flag |
|--------------|---------|------|-------------------|------|
| [Integration issues] | <N> | X% | <N> hrs | ⚠️ Below avg |
| [Billing questions] | <N> | X% | <N> hrs | 🟢 |
| [Feature requests] | <N> | X% | <N> hrs | |

**Lowest CSAT issue type:** [Category] — may indicate product gap or unclear process

---

## Response Time Correlation

| First Response Time | Avg CSAT |
|--------------------|---------|
| < 1 hour | X% |
| 1–4 hours | X% |
| 4–24 hours | X% |
| > 24 hours | X% |

**Finding:** [Correlation or no correlation between speed and CSAT]

---

## Dissatisfied Customer Follow-Up

| Customer | Ticket # | Rating | Issue | Action |
|---------|---------|--------|-------|--------|
| <Account> | #<N> | 1⭐ | [Issue] | CSM follow-up within 24 hours |
| <Account> | #<N> | 2⭐ | [Issue] | Agent reviews resolution; CSM aware |

---

## Improvement Actions

1. **[Action]** — Targets: [Metric] | Owner: [Support Manager] | Due: <date>
2. **[Action]** — Targets: [Agent coaching] | Owner: [Support Manager] | Due: <date>
```

## Output Contract
- Agent-level CSAT always shown — team averages hide individual performance issues
- Dissatisfied customers (1–2 stars) always flagged for follow-up — unacknowledged bad experiences become churn
- Issue-type analysis always included — connects support quality to product or process improvements
- HITL required before CSAT data is used for agent performance reviews or termination decisions

## System Dependencies
- **Reads from:** Support platform ticket data (Zendesk, Freshdesk, etc.) with CSAT survey responses
- **Writes to:** Nothing (analysis for HITL review and support team action)
- **HITL Required:** Support Manager reviews agent-level CSAT before performance conversations; CS Manager reviews dissatisfied customer list; Dr. Lewis reviews if CSAT decline affects a strategic account

## Test Cases
1. **Golden path:** Q2 CSAT, 180 surveyed tickets → 82% CSAT, integration issues at 64% (below average), 1 agent at 68% (needs coaching), 3 dissatisfied customers flagged for follow-up, response time correlation confirms > 4-hour responses drop CSAT 12 points
2. **Edge case:** Low survey response rate (< 15%) → flags that low response rate makes CSAT unreliable, reports available data with explicit caveat, recommends incentivizing survey completion or simplifying to a 1-click rating
3. **Adversarial:** Support Manager wants to exclude a ticket from an unhappy customer because "they were unreasonable" → includes all valid survey responses, explains that filtering out dissatisfied responses invalidates the metric

## Audit Log
CSAT results retained by entity, agent, and period. Dissatisfied customer follow-ups tracked.

## Deprecation
Retire when support platform provides native CSAT dashboards with automated agent performance tracking and real-time alerts for dissatisfied customers.
