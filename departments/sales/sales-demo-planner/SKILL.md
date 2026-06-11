---
name: sales-demo-planner
description: "Plan and structure a product or service demonstration for a specific prospect. Use when the user says 'demo plan', 'product demo', 'demo structure', 'how to run the demo', 'demo prep', 'presentation planning', 'demo for this prospect', or 'show the product'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<company-name> [--product-context <description>] [--pain <identified-pain>] [--duration <minutes>]"
---

# Sales Demo Planner

Plan and structure a product or service demonstration tailored to a specific prospect's pain. A generic demo loses deals. A demo that mirrors the prospect's world closes them.

## When to Use
- Before any demo or formal presentation to a prospect
- When building a demo playbook for a product or service line
- When deals are advancing past discovery but stalling at demo
- When demo win rates are below 40%

## Demo Design Principles

### Show Pain First, Product Second
Open every demo by restating the pain discovered in the discovery call — in the prospect's own words. Before showing any feature, establish "this is the problem we're solving for you today."

### Prospect's World, Not Product's World
Use the prospect's company name, industry terms, and specific scenarios in the demo. Never show a generic demo to a prospect who gave you 45 minutes of discovery.

### Less Features, More Outcomes
Show 3-5 features that directly map to their stated pain. Don't show everything — you'll overwhelm and dilute the message.

### Let Them Drive
The best demos have moments where the prospect does something ("Would you like to try that?"). Interaction = investment.

### Close the Demo
Every demo ends with: "Based on what you've seen today, does this solve the problem you described?" Get a verbal evaluation before leaving.

## Demo Structure (45-60 Minutes)

### 1. Opening (5 min)
- Confirm agenda ("We have 45 minutes — does that still work?")
- Restate the pain: "Based on our earlier conversation, you told me [pain in their words]. Today I want to show you how we address that specifically."
- Set expectations: "I'll walk you through 3 areas, and then leave time for your questions."

### 2. Context Setup (5 min)
- Orient the prospect to what they're about to see
- "This is [their company name] — I've set up the demo environment to match your situation"
- Confirm the problem being solved (last chance to adjust)

### 3. Core Demo (25-30 min)
Map each feature/module to the pain it addresses:
- Pain 1 → Feature 1 → Outcome 1
- Pain 2 → Feature 2 → Outcome 2
- Pain 3 → Feature 3 → Outcome 3

After each section: "Does this map to what you're dealing with?" (Check-in = commitment building)

### 4. Proof (5 min)
Brief case study or outcome statement: "A company similar to yours [outcome]."

### 5. Q&A (10 min)
Answer questions. Distinguish between:
- Curiosity questions (keep brief)
- Buying questions (engage fully — these are high signal)
- Objection questions (see `objection-handler`)

### 6. Close (5 min)
"Based on what you've seen today, does this solve the problem you described?"
- If yes → "What would need to happen for you to move forward?"
- If maybe → "What's the gap between where we are and a yes?"
- If no → "What are we missing?"

## Output Format

```markdown
# Demo Plan — <Company Name>
**Date:** <date/time> | **Duration:** <N> min | **Attendees:** <names and titles>
**Pain Identified in Discovery:** <brief summary>

## Demo Objective
<Single sentence: what a successful demo looks like for this prospect>

## Demo Narrative
Opening statement (word-for-word):
"<Name>, based on our conversation last week, you described [exact pain in their words]. Today I want to show you specifically how we address that."

## Demo Flow

### Section 1: <Feature/Capability Name>
**Pain it addresses:** <pain from discovery>
**What to show:** <specific part of product>
**What to say:** <key points — 2-3 sentences max>
**Check-in:** "Does this look like your current situation?"

### Section 2: <Feature/Capability Name>
[same structure]

### Section 3: <Feature/Capability Name>
[same structure]

## Proof / Social Proof
"<Similar company> used this to [specific, relevant outcome — quantified if possible]."

## Anticipated Questions
| Question | Response |
|---------|---------|
| <Likely Q> | <Response> |

## Close Language
"Based on what you've seen today, does this solve the problem you described?"

## Success Criteria
- [ ] Prospect articulates value in their own words
- [ ] Next step agreed to before ending the call
- [ ] No open objections left unaddressed
```

## Output Contract
- Demo always tied to specific pain from discovery — no pain = no demo
- Check-in questions after every section — never barrel through without engagement
- Verbal evaluation always sought at close
- HITL required before demo is delivered to enterprise accounts (> $50K deals)

## System Dependencies
- **Reads from:** Discovery notes, pain identified in `sales-call-prep`, product capabilities (provided)
- **Writes to:** Nothing (demo plan for rep use)
- **HITL Required:** Sales manager reviews demo plan for strategic deals; Dr. Lewis reviews for C-suite demos

## Test Cases
1. **Golden path:** Healthcare operations director who cited billing error rate as primary pain → demo focused on error detection, reconciliation, and audit trail — not the full product
2. **Edge case:** Prospect who gives no specific pain in discovery → demo defaults to industry-standard pain hypotheses with explicit check-ins to validate
3. **Adversarial:** Request for a full product walkthrough to "show everything" → recommends against, explains that feature overload loses deals, proposes 3-pain focused demo

## Audit Log
Demo plans retained by account and date. Demo outcomes tracked for conversion analysis.

## Deprecation
Retire when sales enablement platform (Highspot, Consensus) provides interactive demo tools with built-in pain-to-feature mapping and outcome tracking.
