---
name: strategic-narrative-builder
description: "Build a compelling strategic narrative for MBL or a portfolio company. Use when the user says 'strategic narrative', 'company story', 'our narrative', 'how should we position MBL', 'investor pitch narrative', 'positioning statement', 'company pitch', or 'write our story'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<entity-name> [--audience <lp|board|deal-target|employee>] [--length <short|full>]"
---

# Strategic Narrative Builder

Build a clear, compelling strategic narrative for MBL Partners or a portfolio company. A strong narrative wins deals, attracts talent, and aligns teams around a common purpose.

## When to Use
- LP fundraising (new LP narrative)
- Board or IC presentation opening
- Recruiting senior talent (why join us?)
- Deal outreach (why MBL is the right buyer)
- New employee onboarding (why we exist)
- Positioning a portfolio company in its market

## Narrative Framework

### The Core Narrative Arc

1. **The World As It Was** — the before state (market problem or opportunity that existed before you)
2. **The Disruption / Shift** — what changed? Why now is the right moment?
3. **The Vision** — the world as it should be (your end state)
4. **Your Unique Position** — why you (and not someone else) are uniquely positioned to achieve this
5. **The Evidence** — proof points (what you've done already, traction, results)
6. **The Ask** — what you need from this audience to realize the vision

### Audience Adaptation

| Audience | Lead With | Evidence Type | Tone |
|---------|-----------|---------------|------|
| LP / Investor | Market opportunity + returns | IRR, MOIC, portfolio performance | Data-forward, investor-rational |
| Board | Strategy + execution | OKR progress, milestones | Strategic, peer-level |
| Deal Target | Partnership value | References, what MBL brings | Credible, operator-oriented |
| Employee | Mission + opportunity | Growth, impact, culture | Inspirational, human |

## MBL Partners Narrative Elements

**Market thesis:** Private equity companies that deploy AI systematically into portfolio operations will generate superior returns — faster identification of issues, faster decision-making, lower operational overhead.

**MBL's edge:** Dr. Lewis builds AI systems; Matt Mathison structures deals. The combination of PE rigor and real AI operational capability is rare.

**Portfolio thesis:** Acquire businesses in sectors with operational complexity and high information latency (healthcare, energy, media) where AI creates disproportionate value.

**THRIVE:** We operate by values we can name: Truth, Hustle, Respect, Integrity, Value, Enjoy.

## Output Format

```markdown
# Strategic Narrative — <Entity>
**Audience:** <audience> | **Format:** Short / Full | **Date:** <date>

---

## Short Form (Elevator Pitch — 90 seconds)
<3-4 sentences: Who we are, what we do, why we're different, what we're looking for>

## Full Narrative

### The Market Moment
<Why now — what's changing in this market that creates the opportunity>

### Our Position
<Who we are, what we do, why we exist>

### Our Edge
<What makes us uniquely suited to win — specific and honest>

### The Evidence
<Specific proof points — numbers, milestones, logos, outcomes>

### The Vision
<What does winning look like in 5 years>

### The Ask
<What we need from this specific audience>

---

**Key Messages (3 things we want them to remember):**
1. <Message 1>
2. <Message 2>
3. <Message 3>
```

## Output Contract
- Every narrative is specific — avoids generic phrases like "best in class" or "transformative"
- Audience adaptation is always applied — one narrative does not fit all audiences
- The Ask is always explicit — no vague closes
- HITL required before narrative is used in LP or IC presentations

## System Dependencies
- **Reads from:** Context provided, entity background, portfolio performance data
- **Writes to:** Nothing (draft for review)
- **HITL Required:** Matt Mathison reviews narratives used in external investor or deal contexts

## Test Cases
1. **Golden path:** MBL LP narrative for new investor → complete arc from market moment to ask, investor-rational tone
2. **Edge case:** Narrative for a portfolio company with mixed performance → honest framing with forward thesis, does not oversell current results
3. **Adversarial:** Request to omit THRIVE values from employee narrative → includes values (they're core to the culture narrative), flags that omission would be inauthentic

## Audit Log
Narratives versioned by entity, audience, and date. LP-facing narratives tracked by distribution.

## Deprecation
Review and update narratives annually — markets and positioning evolve.
