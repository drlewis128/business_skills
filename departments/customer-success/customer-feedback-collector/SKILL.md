---
name: customer-feedback-collector
description: "Design and run a customer feedback collection process. Use when the user says 'collect customer feedback', 'survey customers', 'customer survey', 'how do we get feedback', 'pulse survey', 'in-app survey', 'customer satisfaction survey', or 'CSAT survey design'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--type <nps|csat|pulse|onboarding|churn-exit>] [--audience <all|tier1|tier2|segment>]"
---

# Customer Feedback Collector

Design and run structured customer feedback collection. Feedback that isn't collected can't be acted on. Feedback that's collected but not acted on destroys trust. This skill designs the full loop: collection, synthesis, close-loop response.

## When to Use
- Quarterly or annual NPS or CSAT survey
- Post-onboarding pulse (30-60 days in)
- Post-event feedback (after a QBR, training session, or escalation resolution)
- Churn exit survey (understand why a customer left)
- General customer feedback program design

## Survey Types

| Type | Purpose | Timing | Length |
|------|---------|--------|--------|
| **NPS** | Loyalty and advocacy signal | Quarterly / Annually | 2-3 questions |
| **CSAT** | Satisfaction with a specific interaction | Post-support, post-training, post-QBR | 1-3 questions |
| **Onboarding pulse** | Early experience and adoption signal | Day 30, Day 60 | 5-7 questions |
| **Health check** | Ongoing relationship pulse | Bi-annual / Before renewal | 5-8 questions |
| **Churn exit** | Root cause of churn | Within 2 weeks of cancellation | 5-7 questions |

## Survey Design Principles

1. **One question per topic** — Don't ask "How easy was setup and did you find value?" separately
2. **Lead with the rating, follow with the reason** — "Rate X [1-5]" then "Why did you give that score?"
3. **Maximum 7 questions** — Response rates drop sharply above 5 minutes
4. **Close the loop within 5 business days** — Every response that scores below threshold needs a human follow-up
5. **Segment the results** — Always break out by tier, use case, or tenure before drawing conclusions

## Output Format

```markdown
# Customer Feedback Collection Plan — <Entity>
**Type:** NPS / CSAT / Pulse / Health Check / Churn Exit
**Audience:** <segment description> | **Sample size:** <N> | **Target response rate:** ≥ 35%

---

## Survey Design

### Survey: [Type] — [Entity] [Quarter/Event]

**Introduction text:**
> "We value your feedback. This survey takes less than 3 minutes and helps us improve your experience. Your responses will be reviewed by the Customer Success team."

| # | Question | Type | Required? |
|---|---------|------|---------|
| 1 | On a scale of 0-10, how likely are you to recommend [Product] to a peer in your industry? | NPS (0-10) | Yes |
| 2 | What's the primary reason for your score? | Open text | Yes |
| 3 | How satisfied are you with the support you've received? (1 = Very dissatisfied, 5 = Very satisfied) | Rating (1-5) | Yes |
| 4 | What's one thing we could do to improve your experience? | Open text | No |
| 5 | Is there anything else you'd like us to know? | Open text | No |

**Close text:**
> "Thank you for your time. A member of our team will review your responses and reach out if appropriate."

---

## Distribution Plan

| Channel | Audience | Timing | Owner |
|---------|---------|--------|-------|
| Email (survey link) | All accounts | <date> | CS Manager |
| In-app banner (if available) | Active users | Same week | Product |
| CSM direct outreach | Tier 1 accounts | Day 5 if no response | CSM |

**Reminder:** One reminder only, Day 5, for non-responders.

---

## Response Thresholds and Close-Loop Protocol

| Score/Rating | Action | Owner | SLA |
|-------------|--------|-------|-----|
| NPS 0-6 (Detractor) | CSM calls within 2 business days | CSM | 48 hrs |
| NPS 7-8 (Passive) | CSM sends follow-up email within 5 days | CSM | 5 days |
| NPS 9-10 (Promoter) | Identify for advocacy program; CSM thanks | CSM | 5 days |
| CSAT 1-2 | Escalate to CS Manager; call within 24 hrs | CSM + Manager | 24 hrs |
| CSAT 3 | CSM follow-up email within 3 days | CSM | 3 days |
| Open feedback — product gap | Route to Product via `product-feedback-loop` | CS Manager | Weekly batch |
| Open feedback — complaint | Review and respond | CS Manager | 48 hrs |

---

## Results Reporting

**Target response rate:** ≥ 35% | **Report due:** <date + 2 weeks after survey closes>

Results will be synthesized into:
- Entity-level NPS / CSAT score vs. prior period
- Top 3 themes from open text (qualitative)
- Action items (by priority)
- Close-loop status: % of detractors/low-CSAT contacted
```

## Output Contract
- Survey max 7 questions — response rate protection is non-negotiable
- Close-loop SLAs always defined before survey launches — no survey without a response plan
- Results always segmented by tier and tenure — aggregate scores hide the signal
- HITL required: CS Manager reviews survey before launch; Dr. Lewis reviews results for any entity showing NPS < 0 or CSAT avg < 3.0

## System Dependencies
- **Reads from:** Customer list with tier and contact data, prior NPS/CSAT scores (provided)
- **Writes to:** Nothing directly (survey design and plan for HITL review; results synthesis after collection)
- **HITL Required:** CS Manager approves survey before distribution; Dr. Lewis reviews results summary for any entity with poor aggregate scores; Product receives open-text product feedback via `product-feedback-loop`

## Test Cases
1. **Golden path:** Quarterly NPS survey, 40-account entity, Tier 1-3 → 5-question NPS survey, email distribution with Day 5 reminder, detractor close-loop within 48 hours, results report with top 3 themes in 2 weeks
2. **Edge case:** Churn exit survey for a just-cancelled account → shorter survey (3 questions, max 2 minutes), warm tone ("we want to learn and improve"), do not include upsell or win-back language, results reviewed by CS Manager and Product
3. **Adversarial:** Survey results show NPS dropped from +25 to -10 quarter-over-quarter → flags as critical signal to CS Manager and Dr. Lewis immediately, does not delay to include in normal reporting cycle, recommends emergency customer outreach and root cause analysis within 5 days

## Audit Log
Survey designs and results retained by entity and period. Close-loop completion tracked (% of detractors contacted). Action items tracked through resolution.

## Deprecation
Retire when CS platform integrates native NPS/CSAT survey distribution, response collection, and close-loop workflow with automated CSM notification.
