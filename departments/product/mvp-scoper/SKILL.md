---
name: mvp-scoper
description: "Define the minimum viable product scope for a new product or feature. Use when the user says 'MVP', 'minimum viable product', 'what's the smallest version we can ship', 'scope this down', 'what do we absolutely need', 'cut scope', 'ship faster', 'what's the core', 'simplest version that works', or 'define the MVP'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--feature <name>] [--deadline <date>] [--capacity <engineer-weeks>]"
---

# MVP Scoper

Define the minimum viable product scope for MBL features and products. MVP is not "minimum quality" — it's minimum scope to validate the core assumption. An MVP that's too small fails to learn anything. An MVP that's too large is just a product that took too long to ship. The right MVP tests the single most important assumption with the smallest possible investment.

## When to Use
- A new feature is being considered — what's the smallest version worth building?
- Timeline or capacity pressure — what must stay, what can be cut?
- A feature has grown too large — scope it back to the essential
- Evaluating whether to build something at all — what's the MVP and does it even justify the investment?

## MVP Framework

```
Core question for MVP scoping:
"What is the single most important assumption we must validate?
 What is the smallest thing we can build to test that assumption?"

Not MVP:
  - A feature-complete product with all edge cases handled
  - Everything on the feature list
  - The "nice to have" version

MVP:
  - The specific subset of features that tests the core value hypothesis
  - Typically 30-40% of the feature list
  - Users can complete the core job, even if awkwardly

MVP scope test:
  "If we removed this feature, could a user still complete the primary job?"
  YES → move to v2
  NO → keep in MVP
```

## Scope Cutting Criteria

```
Priority order for cutting:
1. Cut anything that doesn't directly test the core assumption
2. Cut anything in the "edge case" category (handle manually for now)
3. Cut anything that enhances (vs. enables) the core job
4. Cut anything with disproportionate engineering effort vs. value

Don't cut:
  - The thing that makes it work at all
  - The thing that makes it safe (security, compliance)
  - The thing you're learning from (the metric)
```

## Output Format

```markdown
# MVP Scope — <Feature/Product>
**Date:** <date> | **Author:** Dr. John Lewis
**Core assumption to test:** <the single hypothesis the MVP must validate>
**Capacity:** <N> engineer-weeks
**Target ship date:** <date>

---

## Core Assumption

"We believe [assumption]. The MVP must prove or disprove this."

**What we'll learn from shipping the MVP:**
- If [metric X] moves: assumption validated — invest in full version
- If [metric X] doesn't move: assumption rejected — pivot or kill

---

## MVP Feature Set

### In (must be in the MVP)

| Feature | Why it must be in | Effort |
|---------|----------------|--------|
| [Feature A] | Users can't complete the core job without it | 3 days |
| [Feature B] | Core assumption cannot be validated without it | 5 days |
| [Error handling] | Without this, errors will create false negatives | 2 days |

**Total MVP effort:** <N> engineer-weeks

---

### Out (deferred to v2)

| Feature | Why it can wait | When to add |
|---------|---------------|------------|
| [Feature C] | Enhances but doesn't enable the core job | v2 if MVP validates |
| [Edge case D] | Affects <5% of usage; handle manually for now | v2 |
| [Polish E] | Doesn't affect core job completion | v2 |

---

## MVP User Journey

**User type:** <specific user>
**MVP user journey (what they can do):**
1. [Step 1] → [What they see/do]
2. [Step 2]
3. [Step 3 — core job complete]

**What they cannot do in MVP (known limitations):**
- [Limitation]: Users will encounter this; communicate proactively or handle manually
- [Limitation]: Document in release notes

---

## Success Criteria

**MVP is a success if, at 30 days:**
- [Metric A]: ≥ <target>
- [Metric B]: ≥ <target>

**MVP is a failure if:**
- [Metric] does not change despite users actively using the feature

**MVP is inconclusive if:**
- Not enough usage to judge (need at least <N> sessions)

---

## Manual Fallback Plan

For features not in MVP that users will need:
| User need | Manual handling | Owner | Until when |
|-----------|---------------|-------|-----------|
| [Need] | [How Dr. Lewis or team handles it manually] | Dr. Lewis | v2 ships |

---

## V2 Roadmap (after MVP validates)

| Feature | Added in V2 | Why |
|---------|------------|-----|
| [Feature C] | Q<N> | Core job enhancement; validated need in MVP |
| [Edge case D] | Q<N> | Volume justifies automation |
```

## Output Contract
- Core assumption always explicit — if the MVP doesn't test anything, it's not an MVP
- Success criteria always defined before shipping — retroactive success is not success
- Manual fallback plan always documented — MVP can't break the user experience entirely
- V2 roadmap always started — a good MVP immediately creates the next investment decision
- HITL required: Dr. Lewis approves MVP scope; Matt Mathison approves if MVP involves portfolio company rollout; v2 investment decision requires Dr. Lewis and Matt Mathison

## System Dependencies
- **Reads from:** Feature spec (full feature list), engineering capacity estimates, roadmap
- **Writes to:** MVP scope document (SharePoint/Product); sprint commitment
- **HITL Required:** Dr. Lewis approves MVP scope; Matt Mathison approves portfolio rollouts

## Test Cases
1. **Golden path:** MVP for Meeting Intelligence action extraction → Core assumption: users will act on auto-extracted action items vs. ignoring them; MVP: webhook receive + Claude extraction + Monday.com push (manual error handling); Out: retry logic, email notifications, historical backfill; Effort: 8 days; Success: >50% of extracted action items marked complete within 7 days
2. **Edge case:** Capacity is so constrained that even the core MVP exceeds it → redefine the MVP further: can we do a Wizard of Oz MVP (human-in-the-loop) to test the assumption first?; often the right answer; validate the assumption with zero engineering if possible
3. **Adversarial:** Stakeholder insists all features must be in the MVP "or it's not useful" → that's a full product launch, not an MVP; ask: which specific feature would you remove if the alternative was shipping 4 weeks later?; this usually uncovers the actual MVP; document the negotiation

## Audit Log
MVP scope decisions retained. Success/failure outcomes documented. V2 decisions linked to MVP results.

## Deprecation
Retire when product team has an established MVP methodology and shipping cadence that doesn't require formal scoping facilitation.
