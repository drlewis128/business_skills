---
name: product-positioning-advisor
description: "Define product positioning and messaging for MBL portfolio products. Use when the user says 'product positioning', 'how should we position this', 'product messaging', 'value proposition', 'what makes us different', 'positioning statement', 'competitive differentiation', 'messaging framework', 'elevator pitch for the product', or 'how do we talk about this product'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--entity <name>] [--audience <internal|customers|investors>]"
---

# Product Positioning Advisor

Define product positioning and messaging for MBL and portfolio products. Positioning is the work that makes marketing easy and sales fast — when a product is well-positioned, the target customer immediately understands who it's for, what it does, and why it's different. Poor positioning creates confusion, commoditization, and sales cycles where you're constantly explaining rather than selling.

## When to Use
- Launching a new product or major feature — define the message before the launch
- The sales team can't explain the product consistently — positioning is broken
- Entering a new market or customer segment
- A competitor is encroaching — sharpen differentiation
- Investor or LP communication — how does the portfolio product create unique value?

## Positioning Framework (April Dunford)

```
For: [target customer — specific, not broad]
Who: [problem they have — observable situation]
Our product: [what it is]
Is a: [product category — frame the comparison]
That: [primary benefit — what it enables]
Unlike: [alternatives they'd consider]
Our product: [key differentiator — what makes you the better choice]

Example — MBL Meeting Intelligence:
For: Managing partners of PE-backed companies with 5+ portfolio companies
Who: spend 10+ hours per week in meetings and lose 40% of decisions to poor notes
Our product: Meeting Intelligence (built on Krista.ai + Claude)
Is a: AI-powered meeting operations system
That: automatically captures decisions, action items, and context from every meeting
Unlike: Manual note-taking, generic transcription tools, or basic AI assistants
Our product: Integrates with your specific systems (Monday.com, Microsoft), understands your portfolio context, and requires zero behavior change from the team
```

## Messaging Hierarchy

```
Tier 1 — Tagline (7 words or less):
  The briefest possible expression of differentiation
  Example: "Every meeting becomes an action plan."

Tier 2 — Headline value proposition (1 sentence):
  Who it's for + what it does + primary benefit
  Example: "Meeting Intelligence turns every Krista.ai recording into a structured action
  plan in Monday.com — automatically, without anyone changing how they meet."

Tier 3 — Elevator pitch (30 seconds / 3-4 sentences):
  Problem → Solution → Differentiation → Call to action
  Example: "PE portfolio companies run on meetings, but most decisions and action items
  fall through the cracks. Meeting Intelligence automatically captures every decision
  and pushes action items to Monday.com within minutes. Unlike generic transcription,
  it understands your portfolio structure. Matt, want to see your Monday standup
  transformed this week?"

Tier 4 — Full narrative (2-3 paragraphs):
  For proposals, decks, and detailed stakeholder communications
```

## Output Format

```markdown
# Product Positioning — <Product/Entity>
**Date:** <date> | **Author:** Dr. John Lewis
**Audience:** Internal / Sales / Investor / Customer

---

## Positioning Statement

**For:** <specific target customer — not everyone>
**Who:** <observable problem or situation>
**Our product:** <product name>
**Is a:** <category that sets the competitive frame>
**That:** <primary benefit — what it enables>
**Unlike:** <alternatives they'd compare you to>
**Our product:** <key differentiator — why you win>

---

## Messaging Hierarchy

**Tagline:** "<7 words or fewer>"

**Headline value proposition:**
"<1 sentence: who + what + primary benefit>"

**Elevator pitch (30-second):**
"<3-4 sentences: Problem → Solution → Differentiation → CTA>"

---

## Target Customer Profile

**Primary buyer:** <role + company type>
**Secondary influencer:** <role + how they influence the decision>
**User (if different from buyer):** <who actually uses it daily>

**Customer profile:**
- Company type: <PE-backed portfolio / Healthcare MSO / Oil & gas operator / etc.>
- Size: <headcount / revenue range>
- Situation: <the specific situation where they need this>
- Current alternative: <what they do today — your real competition>

---

## Competitive Differentiation

| Competitor / Alternative | What they do | Where we win | Where they win |
|------------------------|-------------|------------|--------------|
| [Generic transcription] | Records meetings | ✅ Context-aware; system integration | ❌ They're cheaper |
| [Manual notes] | Human notes | ✅ Reliable; structured output | ❌ They're "free" |
| [Generic AI assistant] | Summarizes text | ✅ Portfolio-specific; no behavior change | ❌ They're general purpose |

**Our dominant differentiation:** <one phrase — what we do that no one else does>

---

## What to Say vs. Not Say

| Say | Don't Say |
|-----|----------|
| <Specific outcome> | "AI-powered" (everyone says this) |
| <Concrete number> | "Revolutionary" / "Transformative" |
| <Portfolio-specific context> | "Enterprise-grade" |
| <Behavior it enables> | "Seamless" / "Best in class" |

---

## Use Cases and Proof Points

| Use case | Who uses it | Outcome |
|---------|------------|---------|
| [Use case 1] | [Persona] | [Specific, measurable outcome] |
| [Use case 2] | | |

---

## Investor / LP Version (if needed)

**For investor communication:**
"<Product> addresses <market problem> for <market size / segment>. Unlike <alternatives>, <product> <key differentiator>. Early results: <proof point>."
```

## Output Contract
- Positioning statement always in April Dunford format — abstract statements are not positioning
- Competitive alternatives always specific — "we're different" without "different from what" is not differentiation
- What NOT to say always included — removing jargon is as important as adding clarity
- Elevator pitch always includes a call to action — positioning without an ask doesn't drive action
- HITL required: Dr. Lewis reviews and approves positioning; Matt Mathison approves positioning used externally; portfolio company leadership approves positioning for their products

## System Dependencies
- **Reads from:** Product PRD, customer interviews, competitor analysis, existing marketing materials
- **Writes to:** Positioning document (SharePoint/Marketing); sales messaging guide
- **HITL Required:** Dr. Lewis approves; Matt Mathison approves external-facing positioning; portfolio leads approve portfolio product positioning

## Test Cases
1. **Golden path:** Position Meeting Intelligence for MBL → For: PE managing partners with 5+ portfolio companies; Problem: 40% of meeting decisions never become action items; Category: meeting operations system; Differentiation: portfolio-context-aware + zero behavior change; Tagline: "Every meeting becomes an action plan."; Elevator pitch drafted; 3 use cases with proof points
2. **Edge case:** Product doesn't have a clear category yet → category creation is harder than category entry; evaluate: is there an adjacent category you can lead with?; "AI meeting assistant" is a category people understand even if you're more specific; don't create a category you can't explain in 3 words
3. **Adversarial:** Marketing wants to position to "all SMBs" → broad positioning = no positioning; the narrower and more specific the target, the stronger the message; "SMBs" is 27 million companies; "PE portfolio companies with 3-10 operating entities" is a specific segment with specific needs; start narrow, expand if the segment proves out

## Audit Log
Positioning documents retained by version and date. External communications using positioning documented.

## Deprecation
Retire when entity has a dedicated marketing function with a professional brand strategist managing product positioning as an ongoing discipline.
