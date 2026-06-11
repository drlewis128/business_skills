---
name: product-feedback-loop
description: "Structure and deliver customer product feedback to the Product team. Use when the user says 'product feedback', 'feedback for Product', 'feature request', 'customers are asking for X', 'what are customers requesting', 'product roadmap input', or 'how do we get feedback to Product'."
metadata:
  version: 1.0.0
  tier: customer-success
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--period <month|quarter>] [--format <summary|prioritized-list|formal>]"
---

# Product Feedback Loop

Structure and deliver customer product feedback to the Product team. CS hears what customers want — Product decides what to build. Without a structured feedback loop, voice-of-customer gets lost, duplicated, or watered down. This skill creates the bridge.

## When to Use
- Quarterly product roadmap cycle (CS input to Product prioritization)
- Feature gap is causing churn or blocking renewal
- A high-value customer has a specific request that affects the renewal
- CS team has collected feedback across multiple customers and needs to consolidate
- Product asks CS "what are customers saying?"

## Feedback Prioritization Framework

### Impact Score (1–5)
- 5: This issue is causing churn or blocking expansion
- 4: This issue significantly reduces adoption or satisfaction
- 3: This would meaningfully improve the product experience
- 2: Nice to have — customers mention it but not a decision factor
- 1: Edge case or low-frequency request

### Customer Coverage (Breadth)
- How many customers are affected? (# and % of customer base)
- What segment are they in? (Tier 1 customers carry more weight)

### Prioritization Score
```
Priority = Impact × (Customer coverage / total customers) × Tier weight
Tier 1 customer weight: 1.5× | Tier 2: 1.0× | Tier 3: 0.75×
```

## Feedback Categories

| Category | Description | Typical Source |
|---------|------------|---------------|
| **Missing feature** | Capability that doesn't exist | Onboarding, QBR, support tickets |
| **Workflow improvement** | Existing feature that's clunky or slow | CSM observation, training Q&A |
| **Integration request** | Need to connect to a specific third-party | Discovery, onboarding |
| **Performance issue** | Speed, reliability, or scale concern | Support tickets, CSM escalation |
| **UI/UX feedback** | Confusing navigation or design | Training Q&A, onboarding |
| **Reporting/analytics** | Need better dashboards or exports | QBR, power user requests |

## Output Format

```markdown
# Product Feedback Package — CS to Product
**Period:** <period> | **Entity:** <MBL entity> | **Prepared by:** <CS Manager>
**Submitted to:** Product leadership | **Date:** <date>

---

## Executive Summary

**Top 3 requests driving retention risk:**
1. [Feature] — affecting <N> Tier 1 accounts; linked to <N> churn or at-risk conversations
2. [Feature] — mentioned in <N>% of QBRs this quarter
3. [Integration] — blocking <N> accounts from full adoption

**Requests with expansion revenue upside:**
1. [Feature] — <N> accounts would expand if this existed

---

## Prioritized Feature Request List

| Priority | Request | Category | # Customers | Tier 1? | Impact | Risk If Not Built |
|---------|---------|---------|------------|---------|--------|-----------------|
| 1 | [Feature] | Missing feature | <N> | Yes | 5 | Churn risk for [Account] |
| 2 | [Integration X] | Integration | <N> | Yes | 4 | Blocks renewal |
| 3 | [Workflow improvement] | UX | <N> | No | 3 | Adoption friction |

---

## Detailed Request Writeups (Top 5)

### 1. [Feature Name]
**What they're asking for:** <Specific description of the request in the customer's words>
**Why they need it:** <Business context — what problem does it solve>
**Current workaround:** <What they do now; why it's painful>
**Customers requesting:** [Account 1], [Account 2], [Account 3]
**Retention risk:** High / Medium / Low — <Specific: "Account X mentioned this as a renewal concern">
**Expected impact if built:** <Adoption improvement, churn reduction, expansion opportunity>

### 2. [Feature Name]
[Same structure]

---

## Requests Not Prioritized (Logged for Reference)

| Request | # Customers | Reason Not Prioritized |
|---------|------------|----------------------|
| [Request] | 1 | Single customer; no broader pattern |
| [Request] | 2 | Edge case; low impact |

---

## Feedback Loop Commitment

CS to Product: We commit to updating customers on roadmap decisions for the requests above.
Product to CS: We need [specific commitment — timeline for response, decision on Q3 roadmap, etc.]
```

## Output Contract
- Every request backed by customer attribution — no anonymous feedback
- Retention risk clearly flagged for any request linked to churn
- Customers must receive a response on what's planned — feedback loop is two-way
- HITL required: CS Manager reviews before submission; Product receives the package formally with a meeting; Dr. Lewis aware of any request linked to a strategic account renewal

## System Dependencies
- **Reads from:** CSM notes, support ticket data, QBR feedback, VoC analysis (provided or from CS platform)
- **Writes to:** Nothing (feedback package for HITL review and Product delivery)
- **HITL Required:** CS Manager reviews and approves before submission to Product; Dr. Lewis briefed on any high-priority request linked to strategic account churn risk; Product team responds with roadmap decision

## Test Cases
1. **Golden path:** Q2 feedback package → 8 prioritized requests, top 3 linked to at-risk accounts, integration request #2 directly linked to $75K renewal, detailed writeups for top 5, clear ask for Product response by <date>
2. **Edge case:** Multiple requests for the same underlying feature described differently → consolidates into one request, credits all customers who mentioned it, provides the consolidated user story
3. **Adversarial:** Product team ignores the feedback package → CS Manager escalates to Dr. Lewis, schedules a formal Product × CS alignment meeting, documents that customer feedback is not being incorporated into roadmap decisions

## Audit Log
Feedback packages retained by entity and quarter. Product decisions tracked against each request. Customer communications documented when requests are actioned or declined.

## Deprecation
Retire when CS platform or product management tool (Productboard, Aha!) integrates CS customer feedback directly with roadmap prioritization and customer notification workflows.
