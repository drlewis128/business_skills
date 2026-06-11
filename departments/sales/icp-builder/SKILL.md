---
name: icp-builder
description: "Define or refine the Ideal Customer Profile for a business or product. Use when the user says 'ICP', 'ideal customer', 'target customer', 'who should we sell to', 'define our target market', 'customer profile', 'target account criteria', or 'who is our buyer'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<entity-or-product> [--data-driven <yes|no>] [--focus <b2b|b2c|portfolio>]"
---

# ICP Builder

Define a precise Ideal Customer Profile (ICP) for a business. Selling without an ICP is fishing without bait — you catch anything, but not the right thing. A sharp ICP focuses sales effort and accelerates deal velocity.

## When to Use
- Starting a new sales motion (no ICP defined)
- When win rates are low (may be selling to wrong customers)
- When sales cycles are inconsistent (no pattern = wrong profile)
- Post-acquisition (who does this company actually sell to best?)
- When entering a new market or product line

## ICP vs. Persona

| Concept | Scope | Focus |
|---------|-------|-------|
| **ICP (Ideal Customer Profile)** | The company/organization | Firmographic and technographic fit |
| **Buyer Persona** | The individual within the company | Role, goals, pain, decision process |

Both are needed. ICP tells you which accounts to target. Persona tells you who to talk to there.

## ICP Dimensions

### Firmographic (Company Characteristics)
- **Industry / Vertical** — Which industries buy this product successfully?
- **Company size** — Revenue range, employee count, number of locations
- **Geography** — Where they're located (US only? Specific states? International?)
- **Business model** — B2B, B2C, SaaS, services, product, regulated industry?
- **Growth stage** — Startup, growth, mature, distressed?
- **Ownership** — Private equity-backed, family-owned, public?

### Behavioral (How They Operate)
- **Technology stack** — What tools do they already use? (Integration opportunity)
- **Buying process** — Committee-based? Single decision-maker? Budget cycles?
- **Current pain** — What specific problem are they experiencing now?
- **Urgency** — Triggered by growth, compliance, competitive pressure?

### Fit Indicators (Green Flags)
Signs a prospect is likely in your ICP:
- Using a legacy/inferior solution you replace
- Recently experienced a triggering event (growth, acquisition, regulatory change)
- Competitors using your product (competitive pressure creates urgency)
- Decision-maker match (the right persona is in the right role)

### Disqualifiers (Red Flags)
Signs a prospect is NOT in your ICP — stop pursuing early:
- Company size too small (can't afford or won't commit)
- Wrong industry (your solution doesn't apply)
- DIY culture (will build rather than buy)
- Procurement-dominated buying process (commoditizes your product)
- No budget authority in target contact

## ICP Development Process

### Method 1: Data-Driven (Preferred)
Analyze your best existing customers:
1. Pull the top 20% of customers by ARR/revenue
2. Pull the top 20% by NPS or retention
3. Identify what they have in common (firmographic patterns)
4. That intersection is your ICP

### Method 2: Hypothesis-Based (No Customer Data Available)
1. Define the problem you solve
2. Identify what type of company experiences that problem most acutely
3. Identify what firmographic characteristics correlate with that problem
4. Validate by prospecting and testing

## Output Format

```markdown
# Ideal Customer Profile — <Entity / Product>
**Date:** <date> | **Version:** <N> | **Based on:** <data analysis | hypothesis>

## ICP Summary
<One paragraph: who is the perfect customer, and why do they buy from us?>

## Firmographic Criteria

| Dimension | Target Range | Rationale |
|---------|------------|---------|
| Industry | <list of verticals> | <why> |
| Company size | <revenue or employee range> | <why> |
| Geography | <locations> | <why> |
| Business model | <type> | <why> |
| Growth stage | <stage> | <why> |

## Behavioral Characteristics
- **Typical pain:** <what problem they're experiencing>
- **Trigger events:** <what causes them to start looking for a solution>
- **Tech stack indicators:** <tools they use that signal fit>
- **Buying process:** <how decisions get made>

## Green Flags (Qualify In)
1. <Signal that confirms ICP fit>
2. <Signal>
3. <Signal>

## Red Flags (Qualify Out)
1. <Signal that suggests not ICP — don't waste cycles>
2. <Signal>

## Buyer Persona(s) — Who to Target at ICP Accounts
| Persona | Title | Primary Pain | What They Care About |
|---------|-------|-------------|---------------------|
| Economic Buyer | <title> | <pain> | ROI, risk reduction |
| Champion | <title> | <pain> | Making their job easier |
| Technical Buyer | <title> | <pain> | Integration, security |

## Sample Account List
<3-5 example companies that perfectly fit this ICP, for calibration>

## Anti-ICP (Who Not to Sell To)
<2-3 example company types that seem like prospects but aren't — common time wasters>
```

## Output Contract
- Green flags and red flags always defined — qualification is binary, not vibes
- Anti-ICP always included — as important as knowing who to pursue
- Sample accounts always provided — makes ICP concrete and testable
- HITL required before ICP is used to build target account lists or direct sales strategy

## System Dependencies
- **Reads from:** Customer data, product positioning, market research (provided)
- **Writes to:** Nothing (ICP document for HITL review)
- **HITL Required:** Matt Mathison and Dr. Lewis review and approve ICP before operationalizing in sales motion

## Test Cases
1. **Golden path:** MBL portfolio company with existing customers → ICP built from top 20% revenue analysis with firmographic patterns, green flags, and anti-ICP
2. **Edge case:** New product with no customers yet → hypothesis-based ICP with explicit validation plan (how to test and refine in first 30 days of outreach)
3. **Adversarial:** ICP defined as "any company that needs our product" → flags that this is not an ICP, requires specificity, walks through narrowing exercise

## Audit Log
ICP versions retained by entity and date. Win/loss data used to validate and refine quarterly.

## Deprecation
Retire when CRM (GoHighLevel) includes account scoring that operationalizes ICP criteria in real-time.
