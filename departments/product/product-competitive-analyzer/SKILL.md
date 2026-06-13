---
name: product-competitive-analyzer
description: "Analyze the competitive landscape for MBL products. Use when the user says 'competitive analysis', 'who are the competitors', 'how do we compare', 'competitive landscape', 'competitor product review', 'how does X compare to us', 'competitive positioning', 'competitor feature analysis', 'who else does this', or 'market analysis'."
metadata:
  version: 1.0.0
  tier: product
  owner: Dr. John Lewis
argument-hint: "[--product <name>] [--competitor <name>] [--mode <landscape|deep-dive|positioning>]"
---

# Product Competitive Analyzer

Analyze the competitive landscape for MBL products. Competitive analysis informs positioning, roadmap prioritization, and differentiation decisions. Done well, it reveals where to compete head-on and where to avoid direct comparison. For MBL's AI-first products, competition includes not just direct competitors but also "good enough" alternatives (spreadsheets, manual processes, generic AI tools) — and those are often the hardest to displace.

## When to Use
- Positioning a new product — who are we competing against?
- A competitor launched something new — how should we respond?
- Roadmap planning — what features are table stakes vs. differentiators?
- A customer is evaluating us against a specific competitor
- Portfolio company product assessment — where do they stand in their market?

## Competitive Analysis Framework

```
Category of competition (list all):
  1. Direct competitors (same category, same customer)
  2. Indirect competitors (different approach, same job to be done)
  3. Status quo (what the customer does today if they use nothing)
  4. Emerging threats (not direct competitors today, but could be)

For each competitor:
  - What job do they help the customer do?
  - Who is their primary customer?
  - What are their key features?
  - What do customers love? (G2, Capterra, reviews, LinkedIn posts)
  - What do customers complain about? (The reviews are gold — read the negatives)
  - What is their pricing model?
  - What is their funding/momentum status?
```

## Competitive Positioning Matrix

```
Choose 2 dimensions that matter most to the target customer:
  Example: Ease of use × AI quality
  Example: Price × Integration depth
  Example: Time to value × Automation level

Plot all competitors on the matrix:
  Where does white space exist?
  Where is there a crowded cluster?
  Where do we sit or want to sit?

Key insight: You don't have to beat every competitor on every dimension.
Win on the dimensions your target customer values most.
```

## Output Format

```markdown
# Competitive Analysis — <Product/Category>
**Date:** <date> | **Analyst:** Dr. John Lewis
**Our product:** <name> | **Target customer:** <description>
**Scope:** Full landscape / Specific competitor deep-dive

---

## Competitive Summary

**Key insight:** <2-3 sentences: who we compete with, where we win, where we lose>

**Our dominant differentiation:** <what we do that no direct competitor does>
**Our biggest gap vs. market:** <where competitors are clearly stronger>
**Threat to watch:** <which competitor or category change is the biggest risk>

---

## Competitive Landscape

| Competitor | Category | Target customer | Primary differentiation | Pricing | Momentum |
|-----------|---------|----------------|----------------------|---------|---------|
| [Comp A] | [Direct] | [Who] | [How they win] | $<price>/mo | 🟢 Growing |
| [Comp B] | [Indirect] | [Who] | [Differentiation] | $<price>/mo | 🟡 Stable |
| [Manual process] | [Status quo] | [Everyone] | Free; already doing it | $0 | 🔴 Declining (hopefully) |

---

## Deep Dive — [Competitor Name]

**Founded:** <year> | **Funding:** $<amount> | **Employees:** <N>
**Focus:** <market and use case>

**What customers love (from reviews):**
- "[Quote from review]" — G2, <date>
- [Feature/behavior that gets repeated positive mentions]

**What customers complain about:**
- "[Quote]" — negative review
- [Repeated complaint = our opportunity]

**Key features vs. ours:**

| Feature | [Competitor] | [Our product] | Who wins |
|---------|-------------|--------------|---------|
| [Feature 1] | ✅ Native | ✅ Native | Parity |
| [Feature 2] | ✅ Native | ❌ Not available | They win |
| [Feature 3] | ❌ None | ✅ Strong | We win |
| [Feature 4] | ⚠️ Basic | ✅ Deep | We win |

---

## Positioning Matrix

**Axes:** [Dimension 1] vs. [Dimension 2]

```
High [Dimension 1]
|  [Our product]     [Comp B]
|
|       [Comp A]
|                        [Status quo]
Low [Dimension 1]
        Low [D2]              High [D2]
```

**White space:** <where no one is positioned — opportunity>
**Our target position:** <where we're heading and why>

---

## Competitive Response Recommendations

| Competitor action | Risk to us | Recommended response |
|-----------------|-----------|-------------------|
| [Comp A launches feature X] | Medium — table stakes feature | Accelerate [feature] on roadmap |
| [New entrant in category] | Low — different customer segment | Monitor; no action now |

---

## Battlecard Summary (for sales)

**When prospect asks "How are you different from [Comp A]?":**
"[Comp A] is great for [use case]. We're built specifically for [our use case]. The difference that matters most for you: [specific differentiator]. Here's a customer who switched: [reference if available]."
```

## Output Contract
- Customer reviews (positive AND negative) always included — the negative reviews contain the most insight
- Status quo always included as a competitor — the hardest sale is replacing "we do it manually"
- Competitive positioning matrix always produced — text analysis without visual positioning is harder to act on
- Battlecard language always drafted — insights that don't reach the customer conversation are useless
- HITL required: Dr. Lewis reviews competitive analysis; significant competitive threats briefed to Matt Mathison; battlecards reviewed by Dr. Lewis before sales team use

## System Dependencies
- **Reads from:** Competitor websites, G2/Capterra reviews, LinkedIn, product announcements, customer interviews
- **Writes to:** Competitive analysis document (SharePoint/Marketing); battlecards (SharePoint/Sales)
- **HITL Required:** Dr. Lewis reviews; Matt Mathison informed of significant competitive threats

## Test Cases
1. **Golden path:** Competitive analysis for Meeting Intelligence → Direct competitors: Otter.ai ($17/mo — generic transcription), Fireflies.ai ($10/mo — basic summaries), Notion AI (bundled — generic); Status quo: email + manual notes; Our differentiation: portfolio-context-aware + Monday.com integration + zero behavior change; white space: PE portfolio operators who need structured action items, not just transcripts; Battlecard drafted for Otter.ai comparison
2. **Edge case:** No direct competitors in the exact category → frame against indirect and status quo; position the category itself (sometimes necessary); educate the market on why the problem deserves a dedicated solution; be careful not to create a category so narrow that the market is too small
3. **Adversarial:** Sales team says "we have no competition" → no competition usually means one of: (1) no market; (2) the status quo IS the competition and you haven't recognized it; (3) genuinely new category (rare); investigate and document; "no competition" is never the final answer

## Audit Log
Competitive analyses retained by date. Battlecards versioned. Competitive monitoring documented.

## Deprecation
Retire when product team has a dedicated product marketing function with ongoing competitive intelligence as a standard discipline.
