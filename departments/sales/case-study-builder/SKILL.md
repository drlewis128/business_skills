---
name: case-study-builder
description: "Build a customer case study or success story. Use when the user says 'case study', 'customer story', 'success story', 'write a case study', 'document a customer win', 'customer reference', 'proof point', or 'show how we helped a customer'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "<customer-name> [--entity <name>] [--format <one-pager|full|quote-only>] [--public <yes|no|anonymous>]"
---

# Case Study Builder

Build a customer case study or success story for use in sales, marketing, and executive communication. Case studies are the most credible sales material — "our customer achieved X" beats any claim we make about ourselves.

## When to Use
- Customer achieved measurable results and is willing to share their story
- A specific vertical, use case, or buyer persona needs a proof point
- Preparing for a board or LP update (show portfolio company results)
- Competitive situation where a competitor claims superiority (counter with evidence)
- New product launch needs initial social proof

## Case Study Formats

| Format | Length | Use Case |
|--------|--------|---------|
| **One-pager** | 400–600 words | Leave-behind, PDF, website |
| **Full case study** | 800–1200 words | Deep dive, marketing content |
| **Quote only** | 1-2 sentences + name | Email signature, slide, proposal |
| **Anonymous** | Full story without customer name | When customer prefers privacy |

## Case Study Structure (Problem → Solution → Results)

### 1. The Hook (First 2 sentences)
Grab attention. State the customer's category, their problem, and the headline result.
"When [Company] needed to [achieve goal], they were losing [X] per month to [problem]. After working with [Entity], they [specific result]."

### 2. Background / Customer Context
- Who is the customer? (Industry, size, context — not a Wikipedia entry)
- What were they trying to accomplish?
- Why was this a problem worth solving?

### 3. The Challenge (Be Specific — Use Their Words)
- What specifically wasn't working?
- What had they tried before?
- What were the consequences of not solving it?
Avoid vague language: "They needed a better solution" tells nobody anything.

### 4. Why They Chose Us
- What alternatives did they consider?
- What specifically drove the decision?
- Who championed the decision internally?

### 5. The Solution (What We Did)
- What did we implement or deliver?
- How did we work with their team?
- What was the implementation experience like?

### 6. Results (Numbers First, Always)
- Specific, measurable outcomes (not "significant improvement")
- Timeline: How quickly did they see results?
- Quote from the customer (the single most valuable part of the case study)

## Output Format

```markdown
# Case Study — <Customer> x <Entity>
**Industry:** <industry> | **Company size:** <size>
**Use case:** <brief — what problem we solved>
**Publication status:** Public / Anonymous / Internal only

---

## Headline

"[Customer] [Achieved Specific Result] with [Entity]"

*Or for anonymous: "Healthcare MSO Reduces Billing Lag 34% with [Entity]"*

---

## The Challenge

<Customer Name> is a [brief description — 1 sentence]. As they [grew / expanded / faced X], they struggled with [specific problem].

[Quote from champion or decision-maker about the problem — optional here, stronger in Results]

The consequences: [Specific impact — cost, time, risk, missed opportunity].

---

## Why <Entity>

After evaluating [alternatives — specific or general], <Customer> chose <Entity> because [specific reason — not "we were the best fit"].

---

## The Solution

[Entity] implemented [what we did] over [timeline]. Key elements:
- [Deliverable or capability 1]
- [Deliverable or capability 2]
- [How we worked with their team]

---

## The Results

| Outcome | Before | After | Impact |
|---------|--------|-------|--------|
| [Metric 1] | [Baseline] | [Result] | [X% improvement] |
| [Metric 2] | [Baseline] | [Result] | |

**Timeline:** Results achieved within [N] months of implementation.

> "[Customer quote — ideally from economic buyer or champion, in their own words — specific and credible]"
> — [Name, Title, Company]

---

## What's Next

[Customer] is now [expanding / continuing / planning next phase] — showing the partnership is ongoing, not a one-time transaction.

---

*[If approved for public use] To learn how [Entity] can deliver similar results for your organization, contact [contact info].*
```

## Output Contract
- Results section always leads with specific numbers — no vague "improved significantly"
- Customer quote always included or explicitly noted as not available
- Publication status always set before distribution — never share without customer approval
- HITL required: Customer must approve the draft before publication; Dr. Lewis reviews all public case studies; Legal reviews before external distribution

## System Dependencies
- **Reads from:** Customer project data, results metrics, customer interview notes (provided)
- **Writes to:** Nothing (draft for customer approval and HITL review)
- **HITL Required:** Customer approves content and publication status; Dr. Lewis reviews before public use; Legal reviews before external distribution for any claims about results

## Test Cases
1. **Golden path:** Allevio portfolio company reduced billing collection time by 28% → one-pager with numbers table, champion quote, anonymous format at customer request (HIPAA sensitivity), approved for internal sales use
2. **Edge case:** Customer won't share specific numbers → builds case study around process improvement and quote-based evidence, flags that lack of metrics reduces effectiveness, recommends anonymous format with approximate ranges if possible
3. **Adversarial:** Request to use exaggerated or estimated results that weren't actually measured → refuses, only uses documented and customer-confirmed results, recommends being specific about what was measured vs. estimated

## Audit Log
Case studies retained by customer (or anonymous ID), version, and approval status. Results claims documented against source data.

## Deprecation
Retire when marketing content management system tracks case study production, approval, and usage with built-in customer permission workflows.
