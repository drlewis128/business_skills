---
name: brand-messaging-framework
description: "Build a core brand messaging hierarchy and brand voice guide. Use when the user says 'brand messaging', 'messaging framework', 'core messages', 'what do we say about ourselves', 'brand voice', 'what is our value proposition', 'how do we describe the company', 'messaging hierarchy', 'brand positioning statement', or 'build our messaging platform'."
metadata:
  version: 1.0.0
  tier: corporate-communications
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--audience <primary audience>]"
---

# Brand Messaging Framework

Build a comprehensive brand messaging framework — the master source of truth for how a company describes itself, its value, and its differentiation across every audience and channel. A messaging framework prevents the inconsistency that emerges when different people say different things about the same company. Everyone draws from the same source; the message is coherent everywhere.

## When to Use
- New portfolio company acquisition — establish messaging before any public communications
- A company's messaging has become inconsistent across channels
- Preparing for a major launch or announcement that requires consistent narrative
- New executive joins and needs to communicate the company story consistently
- Annual brand review — refresh messaging for current market position

## Messaging Hierarchy

```
Level 1 — Master brand position (one sentence — the north star)
  What the company is, for whom, and what makes it different
  Never changes unless the business model changes

Level 2 — Brand promise (what customers/stakeholders can count on from us)
  A commitment, not a tagline
  Should be verifiable and falsifiable

Level 3 — Pillars (3 proof points that support the promise)
  Each pillar has a headline, a 2-sentence rationale, and proof points
  Pillars = reasons to believe the brand promise

Level 4 — Audience-specific messages (same story, different emphasis)
  Customers / Partners / Employees / Investors / Press
  The story doesn't change; the emphasis and language do

Level 5 — Proof points and evidence (the facts that back the claims)
  Data, customer quotes, case studies, awards
  Everything at Level 5 must be verifiable
```

## Output Format

```markdown
# Brand Messaging Framework — <Company Name>
**Entity:** <Company> | **Date:** <date>
**Primary audience:** <Customers / Patients / LPs / Enterprise clients>
**Owner:** Dr. John Lewis | **Approved by:** <CEO / Matt Mathison>

---

## Level 1: Brand Position Statement

*One sentence. Read it aloud — if it sounds like a competitor could say it, it's not specific enough.*

**[Company name] is [category] that [primary differentiation] for [specific audience].**

Example (Allevio): "Allevio is a managed services organization that enables independent physician practices to deliver high-quality patient care without the administrative burden of running a business."

---

## Level 2: Brand Promise

*What customers can expect. Not a tagline — a commitment.*

**"We [specific commitment]."**

---

## Level 3: Three Pillars

### Pillar 1: [Pillar headline — 3-5 words]
**What this means:** [2-sentence explanation in plain language]
**Proof points:**
- [Specific data point or fact]
- [Customer outcome or case study reference]
- [Capability or credential]

### Pillar 2: [Pillar headline]
**What this means:** [2-sentence explanation]
**Proof points:**
- [Fact]
- [Outcome]
- [Credential]

### Pillar 3: [Pillar headline]
**What this means:** [2-sentence explanation]
**Proof points:**
- [Fact]
- [Outcome]
- [Credential]

---

## Level 4: Audience-Specific Messages

### For Customers / Patients
**Key emphasis:** [Which pillar matters most to them]
**Language adjustment:** [More or less technical; more or less formal]
**Key message (1-2 sentences):**
> [Customer-specific version of the brand story]

### For Employees
**Key emphasis:** Purpose and culture
**Key message:**
> [Why working here matters; how the work connects to meaningful outcomes]

### For Investors / LPs (if applicable)
**Key emphasis:** Financial performance, market position, differentiation
**Key message:**
> [Investor-facing version — value creation, market opportunity, competitive moat]

### For Media / Press
**Key emphasis:** Newsworthiness, innovation, impact
**Key message:**
> [What makes this company a story — what has changed, what's growing, what's solving a real problem]

---

## Brand Voice

| Dimension | Description | In practice |
|-----------|------------|------------|
| **Tone** | [Confident but not arrogant / Warm but not casual / Direct but not cold] | [Example sentence in the right tone] |
| **Vocabulary** | [Industry terms we use / Terms we avoid / How technical we get] | [Examples] |
| **Length** | [Concise / Detailed / Depends on audience] | [Guideline] |
| **Personality** | [3 adjectives that describe the brand voice] | [What this sounds like] |

**Brand voice test:** Read a piece of content aloud. If it sounds like it could come from a generic company in the industry, it fails the brand voice test. If it sounds distinctly like [Company], it passes.

---

## Level 5: Proof Points Library

| Claim | Proof point | Source | Date verified |
|-------|------------|--------|--------------|
| [Claim we make] | [Specific evidence] | [Source] | [Date] |
| [Claim] | [Evidence] | [Source] | [Date] |

---

## Message Matrix (Quick Reference)

| Audience | Lead message | Key pillar | Proof point |
|---------|-------------|-----------|------------|
| [Audience 1] | [Message] | [Pillar] | [Proof] |
| [Audience 2] | [Message] | [Pillar] | [Proof] |
| [Audience 3] | [Message] | [Pillar] | [Proof] |
```

## Output Contract
- Brand position is exactly one sentence — if it's two sentences, it's two positions; cut to one; test it by asking "could a competitor say this?" — if yes, make it more specific
- Three pillars maximum — more than three and the focus collapses; choose the three most important differentiators and build them out completely
- Proof points must be verifiable — claims without proof points are marketing promises; claims with proof points are credible brand positions; every pillar must have at least one verifiable fact
- Audience-specific messages preserve the same story — the temptation is to tell a different story to each audience; resist it; the brand is the same; only the emphasis shifts
- HITL required: Dr. Lewis builds the framework; CEO and Matt Mathison (for MBL-level) approve before any distribution; the messaging framework is a strategic document requiring executive sign-off; it is the source of truth for all communications

## System Dependencies
- **Reads from:** Company strategy documents, product/service descriptions, customer research, competitive analysis
- **Writes to:** Brand messaging framework (SharePoint/Brand/<Company>/Messaging); press releases; spokesperson prep materials
- **HITL Required:** Dr. Lewis builds; CEO approves portfolio company frameworks; Matt Mathison approves MBL-level framework; annual refresh requires same approval process

## Test Cases
1. **Golden path:** Allevio brand messaging framework → Position: "Allevio is a managed services organization that frees independent physicians from administrative burden so they can focus entirely on patient care across the Mountain West"; Promise: "You keep caring for patients — we'll handle everything else"; Pillars: 1. Physician autonomy preserved, 2. Revenue cycle expertise, 3. Scalable MSO model; Proof: 12 practices served, 34% average reduction in billing denials, 95% physician satisfaction in annual survey; CEO approval obtained; framework distributed to all Allevio communications touchpoints
2. **Edge case:** Two executives give completely different descriptions of the company in the same week → this is the problem the messaging framework solves; present the inconsistency explicitly and use it to make the case for the framework; then build it and train both executives on the approved messaging; the framework only works if leadership uses it consistently
3. **Adversarial:** Marketing team wants to use different messaging for a specific campaign that contradicts the framework → evaluate whether the campaign message is genuinely audience-specific (acceptable) or actually contradicts the brand position (not acceptable); if it contradicts, push back and explain the risk of inconsistency; if it's a legitimate audience-specific adaptation, document it as an approved extension of the framework, not a departure from it

## Audit Log
Framework versions retained with approval date and approver. Major changes to position, promise, or pillars documented with rationale. Audience-specific adaptations logged.

## Deprecation
Retire when portfolio companies hire VP Marketing or Chief Communications Officer who owns brand strategy and messaging with a dedicated brand management process.
