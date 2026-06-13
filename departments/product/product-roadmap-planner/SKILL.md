---
name: product-roadmap-planner
description: "Build and maintain the product roadmap. Use when the user says 'product roadmap', 'what should we build', 'product strategy', 'product priorities', 'quarterly product plan', 'product direction', 'product backlog prioritization', 'roadmap planning', 'what are we shipping', or 'product planning'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--horizon <quarter|half|annual>] [--mode <build|review|reprioritize>]"
---

# Product Roadmap Planner

Build and maintain the product roadmap for MBL and portfolio products. A product roadmap translates customer problems and business objectives into a sequenced delivery plan. It is not a feature list (that's a backlog) and not a project plan (no committed dates beyond the current quarter). For MBL's AI-first portfolio, the roadmap must reflect agent capability progression, portfolio company adoption sequences, and compliance requirements (HIPAA for Allevio).

## When to Use
- Quarterly product planning — what ships this quarter and why
- Annual strategic roadmap — directional bets for the year
- Stakeholder alignment — "what's the plan?" from Matt Mathison or portfolio companies
- Reprioritization after business direction change or market signal
- Portfolio company product assessment — where are they, where should they be?

## Roadmap Framework

```
Now (current quarter) — committed delivery:
  Specific features, scoped and resourced
  Business case documented for each item

Next (next 1-2 quarters) — planned delivery:
  Prioritized but not fully scoped
  May shift based on Now outcomes and new information

Later (6-12+ months) — strategic bets:
  Hypothesis-driven; directional
  No commitment; conditions to advance documented

Dropped — documented decisions:
  What we chose NOT to build and why
  Critical for stakeholder alignment
```

## Prioritization Framework (RICE)

```
Reach × Impact × Confidence / Effort = RICE Score

Reach: How many users/customers affected per quarter?
  Score 1-100 (actual number or percentage of user base)

Impact: How much does this move the key metric?
  0.25 = minimal, 0.5 = low, 1 = medium, 2 = high, 3 = massive

Confidence: How confident are we in Reach and Impact estimates?
  50% = low (guess), 80% = medium (some data), 100% = high (validated)

Effort: Engineer-months to build
  Score in person-months (1 = 1 engineer, 1 month)

RICE = (Reach × Impact × Confidence) / Effort
Higher RICE = higher priority
```

## Output Format

```markdown
# Product Roadmap — <Product/Entity>
**Period:** <quarter/half/year> | **Date:** <date>
**Prepared by:** Dr. John Lewis

---

## Product Vision (unchanged)
"<Product> helps <customer> achieve <outcome> by <mechanism>."

## This Quarter's Theme
"<One sentence framing the Q's top priority — connects work to outcome>"

---

## Now — Committed This Quarter

| Feature/Initiative | Business Case | RICE | Team | Status |
|-------------------|--------------|------|------|--------|
| [Feature 1] | [Why: metric it moves] | 48 | Eng + Prod | 🟢 On track |
| [Feature 2] | [Why] | 32 | Eng | 🟡 At risk |

**Capacity committed:** <N> engineer-weeks

---

## Next — Planned (Q+1/Q+2)

| Feature/Initiative | Business Case | RICE | Dependencies |
|-------------------|--------------|------|-------------|
| [Feature A] | [Why] | 41 | Requires Now-1 shipped |
| [Feature B] | [Why] | 28 | Standalone |

---

## Later — Strategic Bets

| Initiative | Hypothesis | Signal to Advance |
|-----------|-----------|-----------------|
| [Initiative X] | [What we believe this will do] | [What must be true first] |

---

## Dropped / Deferred

| Initiative | Why Dropped | Revisit Condition |
|-----------|------------|-----------------|
| [Feature Y] | Low RICE (4); doesn't move key metric | If user segment grows to >20% |

---

## Key Metrics This Quarter

| Metric | Baseline | Target | Current |
|--------|---------|--------|---------|
| [Primary metric] | | | |
| [Secondary metric] | | | |

---

## Matt Mathison Bottom Line

**What ships this quarter:** <3 bullets — business outcomes, not feature names>
**What's deferred:** <1-2 items and why>
**What we need from business:** <decisions needed, unblocks required>
```

## Output Contract
- Business case required for every Now item — "it's a good feature" is not a business case
- RICE scores documented and auditable — how we prioritize must be explainable
- Dropped items always documented — stakeholders need to know what didn't make the cut
- HITL required: Dr. Lewis builds roadmap; Matt Mathison approves Now commitments; portfolio company leadership approves portfolio-specific items; roadmap reviewed quarterly

## System Dependencies
- **Reads from:** Business objectives (Matt Mathison), customer feedback (CS team), engineering capacity
- **Writes to:** Product roadmap (SharePoint); Monday.com board (current quarter items)
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves Now quarter; portfolio leadership approves portfolio items

## Test Cases
1. **Golden path:** Q4 MBL product roadmap → Theme: "Production-grade agent infrastructure"; Now: Meeting Intelligence API (RICE 62), OpenFang portfolio isolation (RICE 44); Next: Allevio agent pilot; Later: autonomous deal analysis agent; Dropped: legacy report system migration (RICE 8); Matt Mathison approves
2. **Edge case:** Two high-RICE items but only capacity for one → document both RICE scores; present trade-off clearly to Matt Mathison; don't commit to both; one goes to Next; document decision
3. **Adversarial:** Stakeholder demands a feature be on the roadmap "no matter what" → every item on Now has a capacity cost; what comes out?; present the trade-off; never add to Now without removing; document the decision with stakeholder name

## Audit Log
Roadmap versions retained quarterly. Priority scoring documented. Dropped decisions retained.

## Deprecation
Retire when product team adopts a dedicated roadmapping platform (Productboard, Aha!, Linear) with integrated RICE scoring and stakeholder communication.
