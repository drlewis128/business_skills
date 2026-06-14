---
name: product-analytics-setup
description: "Set up product analytics instrumentation for a product. Use when the user says 'product analytics', 'set up analytics', 'instrument the product', 'event tracking', 'track user behavior', 'analytics implementation', 'add tracking', 'segment setup', 'mixpanel setup', 'analytics plan', or 'user tracking'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--tool <custom|mixpanel|amplitude|ga4>] [--mode <plan|implement|audit>]"
---

# Product Analytics Setup

Design and implement product analytics instrumentation — the event tracking that captures what users actually do. Without product analytics, product decisions are based on opinion and support tickets. With it, you know which features are used, where users drop off, what the aha moment is, and whether changes are working. For MBL's AI products, product analytics also captures AI-specific events: summary generation, HITL reviews, action item creation, and API costs.

## When to Use
- New product launch — instrument it before users arrive
- Product analytics don't exist — build the tracking plan first
- Analytics exist but aren't being used — audit and simplify
- Specific metric is unknown — add the event to measure it
- AI product — add AI-specific instrumentation (HITL rates, cost/session)

## Analytics Architecture for MBL

```
Event Collection:
  Web/app events → custom events library (or Segment if budget allows)
  API events → server-side logging → BigQuery
  AI events → Claude API usage logs → BigQuery
  HITL events → custom HITL event log → BigQuery

Storage:
  BigQuery: all events (raw_events schema)
  Retention: 2 years raw; indefinite aggregated

Processing:
  dbt: aggregate raw events into product analytics marts
  marts.product.daily_active_users
  marts.product.funnel_steps
  marts.product.feature_usage
  marts.ai.session_metrics

Serving:
  Metabase: product dashboards
  OpenFang: AI queries on product data
```

## Event Taxonomy for Meeting Intelligence

```
User events:
  user_signed_up (user_id, entity_id, source, timestamp)
  user_signed_in (user_id, entity_id, timestamp)
  summary_viewed (user_id, meeting_id, entity_id, timestamp)
  action_item_created (user_id, meeting_id, action_item_id, entity_id, timestamp)
  action_item_completed (user_id, action_item_id, entity_id, timestamp)
  summary_shared (user_id, meeting_id, recipient_count, timestamp)
  feedback_submitted (user_id, meeting_id, rating, comment, timestamp)

AI events (server-side):
  meeting_transcribed (meeting_id, entity_id, duration_min, transcript_tokens, timestamp)
  summary_generated (meeting_id, entity_id, model, prompt_tokens, completion_tokens, cost_usd, latency_ms, timestamp)
  hitl_review_triggered (meeting_id, entity_id, trigger_reason, timestamp)
  hitl_decision_made (review_id, decision: approved/rejected/edited, reviewer_id, timestamp)

Integration events:
  monday_sync_triggered (meeting_id, entity_id, action_items_count, timestamp)
  monday_sync_completed (meeting_id, entity_id, items_created, success: bool, timestamp)
```

## Output Format

```markdown
# Product Analytics Setup — <Product>
**Date:** <date> | **Owner:** Dr. John Lewis
**Product:** <name> | **Tool:** Custom / Segment / Mixpanel / Amplitude / GA4

---

## Analytics Strategy

**What decisions does this analytics setup enable?**
1. [Decision 1]: "Is the activation flow working?" → needs: sign-up, first session, first core action events
2. [Decision 2]: "Which features drive retention?" → needs: feature usage events by user + retention data
3. [Decision 3]: "Is AI quality acceptable?" → needs: HITL events, cost events, feedback events

---

## Event Plan

### Core User Events

| Event name | Trigger | Properties | Why |
|-----------|---------|-----------|-----|
| `user_signed_up` | User submits sign-up form | user_id, entity_id, source, plan | Acquisition funnel start |
| `user_signed_in` | User authenticates | user_id, entity_id | DAU calculation |
| `<core_action>` | User does the primary job | user_id, object_id, entity_id | NSM calculation |
| `<aha_moment>` | User reaches aha moment | user_id, object_id, entity_id | Activation calculation |
| `feature_<name>_used` | User interacts with a feature | user_id, feature_name, entity_id | Feature adoption |

### AI Events (server-side)

| Event name | Trigger | Properties | Why |
|-----------|---------|-----------|-----|
| `ai_request_made` | Claude API call initiated | request_id, model, prompt_tokens, entity_id | Cost tracking |
| `ai_response_received` | Claude API response received | request_id, completion_tokens, latency_ms, cost_usd | Quality/cost |
| `hitl_triggered` | HITL review required | request_id, trigger_reason | HITL rate tracking |
| `hitl_decision` | Human reviews AI output | request_id, decision, reviewer_id | Quality improvement |

---

## Implementation Plan

| Event | Priority | Implementation | Backend/Frontend | Owner | Sprint |
|-------|---------|--------------|-----------------|-------|--------|
| `user_signed_up` | P1 | Track on form submit | Frontend | Engineering | N |
| `<core_action>` | P1 | Track on API endpoint | Backend | Engineering | N |
| `ai_request_made` | P1 | Log in Claude API wrapper | Backend | Dr. Lewis | N |
| `hitl_triggered` | P1 | Log in HITL service | Backend | Dr. Lewis | N |
| `feature_X_used` | P2 | Track on feature endpoint | Backend | Engineering | N+1 |

---

## Event Properties Standard

**Every event MUST include:**
- `user_id` — who did the action
- `entity_id` — which portfolio company (portfolio isolation)
- `timestamp` — when (UTC)
- `session_id` — which session

**For server-side (AI) events, add:**
- `request_id` — links request to response events
- `model` — which Claude model version
- `cost_usd` — actual API cost

---

## Key Metrics This Enables

| Metric | Calculation | Required events |
|--------|-----------|----------------|
| DAU | DISTINCT(user_id) WHERE date = today | user_signed_in |
| Activation rate | COUNT(aha_moment) / COUNT(user_signed_up) | both |
| D7 Retention | Cohort: users who return in [day 6-8] / total cohort | user_signed_in |
| HITL rate | COUNT(hitl_triggered) / COUNT(ai_request_made) | both |
| Cost/session | SUM(cost_usd) / COUNT(sessions) | ai_request_made |

---

## Validation Checklist

Before going live:
- [ ] Test events fire in staging environment
- [ ] Events appear in BigQuery raw_events within 60 seconds
- [ ] entity_id is populated for all events (portfolio isolation confirmed)
- [ ] AI events include cost_usd (required for cost tracking)
- [ ] No PII in event properties (user_id only; no emails or names in events)
```

## Output Contract
- Entity isolation always enforced in event properties — every event must include entity_id
- AI events always tracked for AI products — HITL rate and cost/session require server-side AI events
- No PII in event stream — user_id only; no emails, names, or identifiable strings in raw events
- Validation checklist always completed before launch — analytics that fire incorrectly in production is worse than no analytics
- HITL required: Dr. Lewis designs instrumentation plan; engineering implements under Dr. Lewis supervision; HIPAA: Allevio event stream must be reviewed to ensure no PHI in event properties; Dr. Lewis reviews before Allevio events flow

## System Dependencies
- **Reads from:** Claude API logs, product backend, frontend event tracking
- **Writes to:** BigQuery raw_events; product analytics configuration; dbt models
- **HITL Required:** Dr. Lewis approves event plan; reviews implementation; HIPAA review for Allevio events

## Test Cases
1. **Golden path:** Meeting Intelligence analytics setup → 8 user events + 4 AI events planned; all include user_id, entity_id, timestamp; AI events include cost_usd and model; implementation: user events in frontend; AI events in Claude API wrapper; validation: all events in BigQuery within 60s; HITL rate and cost/session calculable from events; DAU and activation rate available from day 1
2. **Edge case:** A product feature is built by a third-party vendor and event tracking can't be added to their code → instrument at the API layer instead; track when the MBL system calls the vendor API (request event) and when it receives the response; this captures the interaction even without vendor-side tracking; note the limitation in the analytics plan
3. **Adversarial:** Engineering wants to track as many events as possible "just in case" → event sprawl is real: 200 events with unclear definitions is worse than 20 well-defined events; each event should answer a specific analytical question; if you can't name the decision an event enables, don't track it; over-tracking also increases storage costs and query complexity; instrument the minimum viable set, then add as needs emerge

## Audit Log
Event tracking plan versioned. Implementation changes documented. HIPAA event audit: no PHI in event stream confirmed quarterly.

## Deprecation
Retire when MBL adopts a dedicated product analytics platform (Amplitude, Mixpanel, or Segment) with standardized event tracking and instrumentation tooling.
