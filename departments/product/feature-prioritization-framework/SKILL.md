---
name: feature-prioritization-framework
description: "Prioritize features using structured frameworks. Use when the user says 'how should we prioritize', 'what should we build first', 'prioritize this list', 'feature ranking', 'RICE scoring', 'ICE score', 'prioritization framework', 'which feature has highest value', 'rank these features', or 'help us decide what to build'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--features <list>] [--framework <rice|ice|kano|moscow>] [--constraint <time|budget|team>]"
---

# Feature Prioritization Framework

Prioritize features using structured frameworks for MBL products. Feature prioritization is a decision under uncertainty — you rarely have perfect information. Frameworks don't remove the uncertainty; they make the reasoning auditable and defensible. The right framework depends on what you know: RICE when you have reach and impact data, Kano when you're asking about user satisfaction vs. effort, MoSCoW when you need to cut scope for a fixed deadline.

## When to Use
- Planning a sprint or quarter — which of 20 candidate features gets built?
- Capacity constraint forces scope cuts — what stays, what goes?
- Multiple stakeholders each want their feature first — objective framework prevents politics
- Evaluating agent capabilities — what agent skill drives the most value first?
- Portfolio company product assessment — are they building the right things?

## Framework Selection Guide

| Framework | Use When | Time Required | Key Input |
|-----------|----------|--------------|-----------|
| **RICE** | You have data on reach, impact; comparing many features | 30-60 min | Usage data, impact estimates, effort |
| **ICE** | Need speed; rough relative ranking acceptable | 10-20 min | Gut estimates OK |
| **Kano** | Understanding satisfaction vs. expectations | Survey needed | User survey |
| **MoSCoW** | Fixed deadline; scope must be cut now | 15-30 min | Stakeholder alignment |
| **Impact/Effort matrix** | Visual communication; quick executive view | 15 min | Rough estimates |

## RICE Scoring (Primary Framework)

```
RICE = (Reach × Impact × Confidence) / Effort

Reach: Users/customers affected per quarter
  Use actual numbers; get from analytics or reasonable estimate

Impact:
  3 = Massive (core metric impact; retention-level change)
  2 = High (significant metric improvement; >10% change)
  1 = Medium (notable improvement; 5-10% change)
  0.5 = Low (small improvement; <5% change)
  0.25 = Minimal (quality of life improvement)

Confidence:
  100% = High confidence in Reach and Impact estimates (have data)
  80% = Medium confidence (some data, some assumption)
  50% = Low confidence (mostly assumption)

Effort:
  In person-months (1 engineer × 1 month = 1)
  If multiple engineers: multiply (2 engineers × 2 months = 4)
```

## ICE Scoring (Speed Scoring)

```
ICE = Impact × Confidence × Ease

Impact: 1-10 (how much will this move the needle?)
Confidence: 1-10 (how sure are we this will work?)
Ease: 1-10 (inverse of effort — 10 = trivially easy, 1 = massive effort)

ICE is fast but less precise than RICE. Use for rough sorting, then apply RICE to top candidates.
```

## MoSCoW (Scope Cutting)

```
Must have: Without this, the product/release fails completely
Should have: High value; include if capacity allows; painful to exclude
Could have: Nice to have; include only if no capacity risk
Won't have (this time): Explicitly deferred; reduces expectations

Rules:
  Must have should be <60% of estimated capacity
  If >60% is Must have, you've not made hard enough choices
  Won't have is not a trash bin — it's a promise for later
```

## Output Format

```markdown
# Feature Prioritization — <Product/Sprint/Quarter>
**Date:** <date> | **Facilitator:** Dr. John Lewis
**Framework:** RICE / ICE / MoSCoW / Impact-Effort
**Capacity:** <N> engineer-months this quarter

---

## Features Evaluated

| Feature | Reach | Impact | Confidence | Effort | **RICE Score** |
|---------|-------|--------|-----------|--------|---------------|
| [Feature A] | 800 | 2 | 80% | 1 | **1280** |
| [Feature B] | 400 | 3 | 50% | 2 | **300** |
| [Feature C] | 1200 | 1 | 100% | 0.5 | **2400** |
| [Feature D] | 200 | 0.5 | 80% | 3 | **26.7** |

**Priority order (by RICE):** Feature C → Feature A → Feature B → Feature D

---

## Priority Recommendation

### Build This Quarter (capacity: X engineer-months)

| Feature | RICE | Effort | Rationale |
|---------|------|--------|---------|
| Feature C | 2400 | 0.5 mo | Highest RICE; low effort; builds on existing system |
| Feature A | 1280 | 1 mo | Second priority; high reach + medium impact |
| Feature B | 300 | 2 mo | (Partial capacity remaining) |

**Capacity consumed:** 3.5 of <N> months

---

### Defer to Next Quarter

| Feature | RICE | Reason |
|---------|------|--------|
| Feature D | 26.7 | Low RICE; limited reach; reconsider if user segment grows |

---

## Assumptions and Sensitivities

| Assumption | If wrong | Impact on priority |
|-----------|---------|------------------|
| Feature A reach = 800 users | Actually 200 | RICE drops to 320; may fall below Feature B |
| Feature C effort = 0.5 months | Actually 2 months | RICE drops to 600; still top priority |

---

## MoSCoW Summary (if used for scope cut)

| Category | Features |
|---------|---------|
| Must have | Feature C, Feature A (core to this quarter's objective) |
| Should have | Feature B (important but won't break the quarter) |
| Could have | [Feature E] |
| Won't have (this time) | Feature D |

---

## Stakeholder Communication

**To Matt Mathison:** "We're building Features C and A this quarter — they address <business outcome>. Feature B is next quarter. Feature D is deferred indefinitely — low impact on our primary metric."
```

## Output Contract
- RICE scores always documented with inputs — the score without the inputs is not auditable
- Assumptions always listed — RICE based on guesses should be labeled as such
- Deferred items always explained — "not this quarter" without a reason frustrates stakeholders
- Stakeholder communication always drafted — decision needs to be communicated, not just made
- HITL required: Dr. Lewis runs prioritization; Matt Mathison approves final Now-quarter decisions; any deviation from priority order requires Dr. Lewis approval

## System Dependencies
- **Reads from:** Analytics (reach data), previous RICE scores, engineering estimates (effort), roadmap
- **Writes to:** Prioritization document (SharePoint/Product); Monday.com board priority order
- **HITL Required:** Dr. Lewis facilitates and approves; Matt Mathison confirms quarter priorities; engineering confirms effort estimates

## Test Cases
1. **Golden path:** Prioritize Q3 MBL product features (8 candidates, 4 months capacity) → RICE scored; top 3 fit in capacity (6.5 months); Feature D deferred (low RICE 12); stakeholder summary written; Matt Mathison approves; Monday.com updated with priority order
2. **Edge case:** Two features have nearly identical RICE scores → apply a tiebreaker: (1) strategic alignment to current company OKR; (2) customer commitment (promised to a specific customer); (3) dependency unlocking (enables higher-value feature); document the tiebreaker used
3. **Adversarial:** Sales team insists a feature must be built "or we'll lose the deal" → single-customer pressure is a common prioritization override; evaluate: is this customer representative of the segment?; what's the deal value vs. opportunity cost?; present to Matt Mathison with full trade-off; never let one deal set product direction without explicit executive decision

## Audit Log
Prioritization sessions retained with RICE scores. Decisions and rationale documented. Override requests logged.

## Deprecation
Retire when product team adopts a product management platform with integrated prioritization scoring and stakeholder collaboration.
