---
name: proposal-builder
description: "Build a professional sales proposal or SOW for a prospect. Use when the user says 'proposal', 'build a proposal', 'write a proposal', 'SOW', 'statement of work', 'create a proposal for', 'sales proposal', 'quote', or 'put together an offer'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<company-name> [--entity <name>] [--deal-value <amount>] [--type <proposal|sow|quote>]"
---

# Proposal Builder

Build a professional, persuasive proposal or Statement of Work (SOW) for a prospect. A proposal is not a brochure — it's a close document. Every element should move the prospect toward yes.

## When to Use
- After demo or discovery where value is established
- When prospect explicitly asks for a proposal or pricing
- Building a standardized proposal template for a product line
- Post-negotiation (final commercial proposal before close)

## Proposal vs. SOW vs. Quote

| Document | Use When | Focus |
|---------|---------|-------|
| **Proposal** | Solution hasn't been scoped precisely yet | Value, approach, investment range |
| **SOW (Statement of Work)** | Scope is defined; need deliverables agreed | Deliverables, timeline, acceptance criteria |
| **Quote** | Price is the only open question | Pricing table with options |

## Proposal Components

### 1. Executive Summary (Most Important Section)
- 1-2 paragraphs
- Written for the economic buyer (who may not have been in the demo)
- Restates their problem, your solution, the outcomes you'll deliver, and the investment
- Must stand alone — if they only read this, they understand the deal

### 2. Their Situation (The Problem)
- Mirror back what you learned in discovery
- Use their words, not yours
- Make them feel completely understood
- "You told us that..." — don't invent problems they didn't articulate

### 3. Our Approach (The Solution)
- How you solve the problem
- What they get (deliverables, capabilities, access)
- Why your approach is right for their situation
- Keep it concise — not a product catalog

### 4. Outcomes and ROI
- What success looks like (specific, measurable)
- Supporting evidence (case study, data, guarantee if applicable)
- ROI estimate if calculable (see `roi-calculator`)

### 5. Investment
- Pricing — be clear, no hidden fees
- Options if applicable (give 2-3 — "Good / Better / Best")
- Payment terms
- Contract term

### 6. Next Steps
- What happens after they sign?
- Who does what?
- When do they start getting value?
- Clear call to action — sign by [date] to start on [date]

## Pricing Psychology: Anchoring and Options

### Anchoring
Lead with the highest option. The first number anchors the prospect's expectation — the middle option then feels like a reasonable compromise.

### 3-Option Framework
| Option | Price | What They Get |
|--------|-------|--------------|
| Core | $X | Essential features/services |
| Standard (recommended) | $XX | Most clients choose this |
| Premium | $XXX | Full capabilities + priority support |

Mark the middle option as "Most Popular" or "Recommended" — 60-70% of buyers choose the middle option.

## Output Format

```markdown
# Proposal — [Entity/Product] for [Company Name]
**Prepared for:** <contact name, title> | **Date:** <date>
**Prepared by:** <entity name> | **Expiration:** <date — 30 days is standard>

---

## Executive Summary

[Company Name] faces a [2-sentence problem statement in their words]. This proposal outlines how [Entity] will [solution summary] — resulting in [top 2-3 outcomes].

**Investment:** $[range or exact] | **Term:** [contract length] | **Start date:** [date if they sign by date]

---

## Your Situation

Based on our conversations, you've shared:
- [Pain 1 — in their words]
- [Pain 2 — in their words]
- [Context: what's at stake if unresolved]

---

## Our Approach

[Concise solution description — how you solve the problem]

**What's included:**
- [Deliverable or capability 1]
- [Deliverable or capability 2]
- [Deliverable or capability 3]
- Support: [support terms]
- Implementation: [implementation approach and timeline]

---

## Outcomes You Can Expect

Based on results with similar companies:
- [Specific outcome 1 — quantified if possible]
- [Specific outcome 2]

**Reference:** [Company name if shareable] achieved [outcome] within [timeframe].

---

## Investment

| Option | Annual Investment | Includes |
|--------|-----------------|---------|
| Core | $<N> | [Core features] |
| **Standard ★ Recommended** | **$<N>** | **[Full features + support]** |
| Premium | $<N> | [Full + priority + extras] |

**Payment terms:** [Net 30 / Annual upfront / Monthly / etc.]
**Accepted payment methods:** [Wire / Check / ACH / Credit card]

---

## Next Steps

If this proposal looks right:
1. **Sign** — [e-signature link or instruction]
2. **Kickoff scheduled** — We'll schedule your kickoff call within [X] business days
3. **[First milestone]** — You'll [first value delivery] by [date]

**To secure this pricing and start date, please respond by [date].**

Questions? Reach [contact name] at [email / phone].

---
*This proposal is confidential and prepared exclusively for [Company Name].*
```

## Output Contract
- Executive summary always written as a standalone close document
- Pricing always presented with 3 options when applicable
- Next steps always include a specific expiration and urgency driver
- HITL required: Dr. Lewis reviews all proposals > $50K; Matt Mathison approves > $100K; Finance reviews payment terms

## System Dependencies
- **Reads from:** Discovery notes, demo outcomes, pricing model (provided)
- **Writes to:** Nothing (proposal document for HITL review and distribution)
- **HITL Required:** Sales manager reviews before sending; legal reviews any SOW with custom terms; Dr. Lewis approves executive-level deals

## Test Cases
1. **Golden path:** $35K SaaS proposal → executive summary, situation restatement, 3-tier pricing with Standard recommended, clear next steps with 30-day expiration
2. **Edge case:** Prospect who wants a "quick quote" → surfaces that a quote without context is low-close-rate, recommends minimum executive summary to frame value
3. **Adversarial:** Request to include false case studies or exaggerated outcomes → refuses, recommends honest outcomes with appropriate ranges ("typically" vs. "guaranteed")

## Audit Log
Proposals retained by account, version, and outcome. Accepted/rejected tracked for win rate analysis.

## Deprecation
Retire when CRM or CPQ (Configure, Price, Quote) platform generates proposals from deal data with built-in approval workflow and e-signature.
