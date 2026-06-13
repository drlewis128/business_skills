---
name: product-north-star-builder
description: "Define or refine a product's North Star metric. Use when the user says 'north star metric', 'what should we optimize for', 'what is our north star', 'define our north star', 'single product metric', 'what metric drives growth', 'core product metric', or 'what are we really measuring'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--business-model <type>]"
---

# Product North Star Builder

Define or refine the single metric that best captures the value a product delivers to users and predicts long-term growth. The North Star Metric (NSM) is not a vanity metric — it's the one number that tells you whether the product is working. Every team should be able to say "our North Star is X and it moved Y% this week" and have that mean something. For MBL products, the NSM connects user value to business outcomes.

## When to Use
- New product or major feature launch — what is the one metric that matters?
- Team is tracking too many metrics and losing focus
- North Star exists but the team doesn't actually use it or trust it
- Business model changed — does the NSM still reflect value?
- Portfolio company assessment — what should they be optimizing for?

## North Star Framework

```
A good North Star Metric:
  1. Measures value delivered to users (not just activity)
  2. Is predictive of revenue (correlated with business success)
  3. Is actionable (the team can move it)
  4. Is a leading indicator (moves before revenue does)
  5. Is simple enough that everyone understands it

Common NSM mistakes:
  - Revenue as NSM: lags behind value delivery; can't act on it fast enough
  - DAU/MAU: measures presence, not value; you can have high DAU with no value
  - Vanity metrics: page views, downloads, sign-ups — input, not outcome
  - Team can't influence it: if engineering can't affect it, it's not actionable

NSM formula:
  "[Who] does [what core action] [how often]"
  Example: "Users who receive and act on at least one AI-generated summary per week"
```

## NSM Examples by Business Type

```
SaaS productivity tool: "Weekly active users completing at least 1 core job"
Marketplace: "Successful transactions per week"
Communication tool: "Messages sent between users per day"
AI assistant: "User-initiated conversations that result in a completed action"
Meeting Intelligence: "Summaries with at least 1 completed action item per week"
```

## Output Format

```markdown
# North Star Metric Definition — <Product>
**Date:** <date> | **Author:** Dr. John Lewis
**Product:** <name> | **Business model:** <SaaS/marketplace/internal tool>

---

## North Star Metric

**NSM:** "<Precise metric statement>"
**Definition:** <Exact calculation — what counts as an occurrence, what excludes>
**Current value:** <N> per week/month (if known)
**Target:** <N> per week/month by <date>

---

## Why This Is The Right Metric

**It measures user value because:** <explanation>
**It predicts revenue because:** <explanation>
**The team can influence it by:** <list of levers>
**It's a leading indicator because:** <explanation>

---

## Alternatives Considered

| Metric | Why rejected |
|--------|-------------|
| DAU | Measures presence, not value |
| Revenue | Lags too much; not actionable for product team |
| [Alt 1] | <reason> |

---

## Metric Hierarchy (NSM → Supporting)

```
North Star: <NSM>
  ├── Input metric 1: <what drives NSM — actionable>
  ├── Input metric 2: <what drives NSM — actionable>
  └── Input metric 3: <what drives NSM — actionable>

Guardrail metrics (must not regress while optimizing NSM):
  - User satisfaction (CSAT ≥ 4.0/5)
  - Error rate (< 2%)
  - [Other guardrail]
```

---

## How to Use the NSM

**Weekly review:** Report NSM at Monday stand-up
**Sprint planning:** Each sprint goal should connect to NSM movement
**Roadmap:** Features ranked by expected NSM impact
**Success test:** "Will this [feature/experiment] move our NSM?"

---

## NSM Review Schedule

**Quarterly:** Is the NSM still the right metric?
**Conditions to change NSM:** Business model change, user segment change, NSM becomes saturated
```

## Output Contract
- NSM is always a single metric — "X and Y" is two metrics
- Exact calculation always defined — ambiguous metrics cannot be tracked
- Alternatives always documented — shows the thinking and prevents re-opening debates
- Input metric hierarchy always included — gives the team the levers to actually move the NSM
- HITL required: Dr. Lewis approves NSM; Matt Mathison informed if NSM is for a portfolio company product; NSM changes require Dr. Lewis and Matt Mathison alignment

## System Dependencies
- **Reads from:** Product analytics, business model documentation
- **Writes to:** NSM definition document (SharePoint/Product); Monday.com dashboard
- **HITL Required:** Dr. Lewis approves; Matt Mathison aligned if portfolio-facing

## Test Cases
1. **Golden path:** Meeting Intelligence NSM definition → NSM: "Meetings per week where at least one action item is marked complete in Monday.com (within 7 days of summary)"; Measures value (users acted on AI output); Predicts revenue (shows the tool is embedded in workflow); Actionable (improve action item quality, improve Monday.com sync, improve summary timeliness); Input metrics: summaries per week, action items extracted per summary, action items marked complete per week
2. **Edge case:** Product is too early to have data — can't validate NSM choice → Pick the NSM based on the user value hypothesis; set a review trigger (when N=50 users, validate NSM correlation with engagement and renewal); don't let perfect analytics block having a North Star
3. **Adversarial:** Leadership wants to use revenue as the North Star → revenue is an outcome, not a lever; product team needs a leading indicator they can act on; propose NSM + a revenue dashboard as a parallel track; explain that optimizing for NSM is *how* you move revenue

## Audit Log
NSM definitions versioned. Quarterly review outcomes documented. Changes to NSM documented with rationale.

## Deprecation
Retire when product team has established metric governance with a dedicated analytics platform that tracks and reviews NSM as an ongoing practice.
