---
name: competitive-battlecard
description: "Build a competitive battlecard for use in sales conversations. Use when the user says 'battlecard', 'competitive analysis', 'how do we compete with X', 'compete against', 'vs competitor', 'competitor comparison', 'competitive positioning', or 'how do we beat X'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<competitor-name> [--entity <name>] [--product-context <description>]"
---

# Competitive Battlecard

Build a competitive battlecard for use by sales reps in head-to-head competitive situations. Reps who know the competitive landscape close competitive deals at 2× the rate of those who don't.

## When to Use
- New competitor emerging in deals
- Win rate dropping vs. a specific competitor
- Onboarding new sales reps (competitive literacy)
- Before a demo or close call where the prospect mentions a competitor
- Quarterly competitive review

## Battlecard Components

### 1. Competitor Overview
- What is their core product or service?
- Who do they target? (Their ICP)
- What is their primary value prop?
- Price positioning (premium / market / budget)?
- Recent news (funding, acquisitions, product changes)?

### 2. Their Strengths (Be Honest)
- Where are they genuinely strong?
- What do customers love about them?
- Why do prospects choose them?

### 3. Their Weaknesses (Be Honest — and Specific)
- Where do they consistently fall short?
- What do their dissatisfied customers complain about?
- What can't they do that we can?

### 4. Our Differentiators (Where We Win)
- The 3-5 specific reasons we win head-to-head
- Back each with evidence (customer quote, metric, specific feature)

### 5. When They Win vs. When We Win

| We Win When... | They Win When... |
|---------------|----------------|
| Prospect needs X | Prospect prioritizes Y |
| Buyer is [persona] | Buyer is [different persona] |

### 6. Discovery Questions to Use in Competitive Deals
Questions that surface our advantages vs. their weaknesses:
- "How are you handling [area where they're weak]?"
- "What's your experience been with [their known gap]?"

### 7. Handling "We're also looking at [Competitor]"
- Acknowledge: "That's a great company — we both solve [problem]."
- Differentiate: "Here's where we're different: [top differentiator]."
- Probe: "As you're evaluating, I'd ask you to look closely at [their weakness] — that matters a lot for [use case]."

### 8. Red Flags (When to Disengage)
Situations where the competitor likely wins and we should qualify harder:
- Prospect has existing contract with competitor
- Prospect's top priority is [competitor's strength / our gap]

## Output Format

```markdown
# Competitive Battlecard — <Our Entity> vs. <Competitor>
**Date:** <date> | **Version:** <N>

## Competitor Snapshot
**What they do:** <1-2 sentences>
**Target market:** <their ICP>
**Pricing:** <premium / market / budget>
**Known strengths:** <brief>
**Recent news:** <any relevant updates>

## Head-to-Head Comparison

| Area | Us | Them | Who Wins |
|------|-----|------|----------|
| <Capability 1> | ✅ Strong | ⚠️ Limited | **Us** |
| <Capability 2> | ✅ Strong | ✅ Strong | Neutral |
| <Capability 3> | ⚠️ Limited | ✅ Strong | **Them** |
| <Capability 4> | ✅ Unique | ❌ No capability | **Us** |

## Our Top 3 Differentiators in Competitive Situations
1. **[Differentiator]** — Evidence: [customer quote or metric]
2. **[Differentiator]** — Evidence: [proof point]
3. **[Differentiator]** — Evidence: [proof point]

## Their Key Weaknesses (Use Carefully — Lead with Questions)
1. **[Weakness]** — Discovery question: "[Question to surface this naturally]"
2. **[Weakness]** — Discovery question: "[Question]"

## When We Win vs. When They Win

| We Win When | They Win When |
|------------|--------------|
| [Scenario] | [Scenario] |

## Handling the Competitive Mention
When prospect says "We're also looking at [Competitor]":

1. Acknowledge: "Good — they're a solid company and solve a real problem."
2. Differentiate: "Where we're different: [top differentiator stated simply]."
3. Probe: "As you evaluate, I'd encourage you to ask them about [their weakness]."
4. Plant a seed: "The customers who switched to us from them most often cited [specific pain with competitor]."

## Trap Questions (Avoid Unless You Can Win)
Questions that surface weaknesses where we're vulnerable:
- <Question that might expose our gap — don't ask this if we can't answer it>
```

## Output Contract
- Both strengths and weaknesses must be honest — sugarcoating competitor weaknesses makes the card useless when a prospect knows better
- Every differentiator has supporting evidence — no unsubstantiated claims
- Handling language always provided — the card is useless if reps don't know what to say
- HITL required before competitive card is used publicly or in executive-level competitive conversations

## System Dependencies
- **Reads from:** Public competitor information, win/loss data from `win-loss-analyzer`, product knowledge (provided)
- **Writes to:** Nothing (battlecard for rep use)
- **HITL Required:** Dr. Lewis reviews any card with a named public company before reps use it; sales manager distributes to team

## Test Cases
1. **Golden path:** Competitor analysis for a healthcare compliance SaaS competitor → honest comparison with 4 areas, 3 differentiators with evidence, specific discovery questions
2. **Edge case:** Competitor is significantly larger and has more features → honest card that identifies specific segments and use cases where we win; doesn't pretend to be full-featured when we're not
3. **Adversarial:** Request to include false or misleading claims about a competitor → refuses, recommends only defensible comparisons backed by evidence

## Audit Log
Battlecards retained by competitor and version. Win rate vs. competitor tracked quarterly.

## Deprecation
Retire when competitive intelligence platform (Klue, Crayon) provides automated battlecard generation with real-time competitor monitoring.
