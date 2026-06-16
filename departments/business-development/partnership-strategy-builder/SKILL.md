---
name: partnership-strategy-builder
description: "Build a comprehensive partnership strategy for a company. Use when the user says 'partnership strategy', 'build a BD strategy', 'how should we approach partnerships', 'business development strategy', 'strategic partnership plan', 'partner program strategy', 'alliances strategy', 'how do we grow through partners', 'build our partnership program', or 'BD strategy'."
metadata:
  version: 1.0.0
  tier: business-development
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--stage <early|scaling|mature>] [--market <industry>]"
---

# Partnership Strategy Builder

Build a comprehensive partnership strategy for a portfolio company or MBL Partners — defining which partnership types to pursue, what the company offers partners, how to prioritize partner segments, and what a successful partnership program looks like in 12 months. A partnership strategy without prioritization is a list of things to try; a good partnership strategy is a focused bet on the 1-2 partnership models most likely to drive revenue or market access.

## When to Use
- A portfolio company needs a partnership program but doesn't have a clear strategy
- Allevio needs to define how it engages physician networks, health systems, or referral partners
- Column6 needs to define its publisher/advertiser partnership model
- Dr. Lewis is building MBL's own BD strategy for deal sourcing partnerships
- Matt Mathison asks "should we be building a partner program?"

## Partnership Type Framework

```
Partner type taxonomy:

1. Referral / Affiliate Partners
   What they do: Refer customers/patients/clients in exchange for a fee
   Best for: Companies with a clear per-referral economics model
   Examples: Physician referral networks (Allevio), broker/agent networks
   Complexity: Low | Revenue potential: Medium

2. Reseller / Channel Partners
   What they do: Sell the product/service to their own customer base
   Best for: Products with repeatable sales motion and margin to share
   Examples: Column6 media resellers, software VAR channels
   Complexity: Medium | Revenue potential: High (scales with partner count)

3. Technology / Integration Partners
   What they do: Integrate their product with yours for mutual customer value
   Best for: Software/platform companies with API-accessible products
   Examples: EHR integrations for Allevio, DSP/SSP integrations for Column6
   Complexity: High | Revenue potential: Medium (indirect — drives adoption)

4. Strategic / Co-sell Partners
   What they do: Actively co-sell into their customer base; shared pipeline
   Best for: Companies targeting the same customer but solving different problems
   Examples: Healthcare IT vendors co-selling with Allevio MSO services
   Complexity: High | Revenue potential: Very High (if partner customer base is large)

5. Distribution Partners
   What they do: Provide access to a market or geography the company can't reach alone
   Best for: Geographic expansion; regulated markets with established gatekeepers
   Examples: National physician management company partnering with Allevio for AZ
   Complexity: Very High (requires relationship capital) | Revenue potential: Very High
```

## Output Format

```markdown
# Partnership Strategy — <Company Name>
**Entity:** <Company> | **Stage:** [Early-stage / Scaling / Mature]
**Date:** <date> | **Prepared by:** Dr. John Lewis | **Approved by:** Matt Mathison / CEO

---

## Strategic Context

**Business goal partnerships must serve:**
[1-2 sentences — what the company is trying to accomplish that partnerships can accelerate. Not "grow revenue" — specific: "Expand into Southern Arizona physician practices without hiring additional sales reps"]

**Current BD reality:**
- Current partner count: [N] active partners / [N] inactive / [None yet]
- Current partner-sourced revenue: [$X / X% of total / $0]
- Current team capacity for BD: [Dr. Lewis / dedicated BD rep / None]

---

## Partnership Thesis

**Primary partnership bet (the one that matters most):**

Partner type: [Select from taxonomy above]
Target partner profile: [Who specifically — size, geography, vertical, existing customer base]
Why this partnership type: [Why this model fits this company's stage and product]
Revenue model: [Referral fee / Margin share / Licensing / Co-sell commission — specific %]
Why a partner would do this: [What's in it for them — must be genuine]

---

## Partnership Portfolio (Priority-Ordered)

| Priority | Partnership type | Partner profile | Revenue model | 12-mo target | Owner |
|---------|----------------|----------------|--------------|-------------|-------|
| 1 (Primary) | [Type] | [Target profile] | [Economics] | [N partners / $X attributed revenue] | [Owner] |
| 2 (Secondary) | [Type] | [Profile] | [Economics] | [N partners] | [Owner] |
| 3 (Explore only) | [Type] | [Profile] | [Economics] | [Research only] | [Owner] |

*Only pursue Priority 1 and 2 simultaneously. Priority 3 requires explicit approval.*

---

## Partner Value Proposition

**What we offer partners:**
1. [Economic benefit — specific: "15% referral fee on first-year revenue from referred practices"]
2. [Market/customer benefit — what we help them sell to their customers]
3. [Brand/credibility benefit — association with MBL-backed company]
4. [Support benefit — what we provide to help them succeed]

**Why a partner would choose us over alternatives:**
[Be specific and honest. If the answer is unclear, the value proposition needs more work.]

---

## 12-Month Partnership Roadmap

| Quarter | Milestone | Success metric |
|---------|-----------|---------------|
| Q1 | [Foundation — define program, recruit first 2-3 partners] | [N partners signed] |
| Q2 | [Activation — get partners selling or referring] | [N deals in pipeline from partners] |
| Q3 | [Scale — identify what's working, expand winning model] | [X% partner-attributed revenue] |
| Q4 | [Optimize — upgrade top partners, cull non-performers] | [$X in partner-sourced revenue] |

---

## Go/No-Go Criteria

**We will pursue partnerships if:**
- Partner-sourced revenue potential exceeds $[X] annually at target scale
- The cost to acquire a partner is less than [N×] the lifetime value of partner-attributed revenue
- We can staff and support the program with current resources

**We will NOT pursue partnerships if:**
- We can't define what the partner gets clearly enough that they'd say yes
- The economics require us to subsidize the partner program below breakeven
- The compliance risk (HIPAA, regulatory) of third-party partner access is unacceptable

---

## Matt Mathison Summary

**Partnership strategy recommendation:** [1-sentence — the primary bet and why]
**12-month revenue target from partnerships:** $[X] (X% of total revenue)
**Resources required:** [BD team time / headcount / budget]
**Decision needed from Matt Mathison:** [Approve strategy / Discuss resource allocation / Approve budget]
```

## Output Contract
- One primary partnership bet — the strategy must identify one primary partnership type to pursue first; partnership programs that try to build four partner types simultaneously succeed at none; the primary bet is the most important decision in the strategy
- Partner value proposition must be genuine — "we'll grow together" is not a value proposition; specific economic, market, or capability benefits that a partner would actually sign up for are required; if it can't be articulated clearly, the partner program will fail
- Revenue model is always specific — "revenue share" is not a revenue model; "15% referral fee on MRR for the first 24 months of a referred customer's contract" is a revenue model
- Go/No-Go criteria always included — the strategy must include explicit criteria for when to abandon the partnership program if it's not working; partnership programs are easy to start and hard to stop without predetermined criteria
- HITL required: Dr. Lewis builds the strategy; Matt Mathison and CEO approve before launch; any partnership with revenue sharing requires legal review of the agreement; any partnership involving patient or health data (Allevio) requires HIPAA assessment before contract signing

## System Dependencies
- **Reads from:** Company financials, market analysis, competitive landscape, current customer base
- **Writes to:** Partnership strategy (SharePoint/BD/Strategy); partner program documents
- **HITL Required:** Dr. Lewis builds; Matt Mathison approves strategy; CEO approves for portfolio companies; legal reviews all partnership agreements; HIPAA assessment for healthcare data partnerships

## Test Cases
1. **Golden path:** Allevio partnership strategy → Primary bet: physician referral network (referring physicians whose patients need billing/MSO services); partner value prop: 15% referral fee on first-year MSO contract value; target: 20 referring physicians in AZ in 12 months at $10K average contract = $30K in referral-attributed revenue; secondary: health system MSO referral partnerships (explore Q3); Q1 milestones: draft referral agreement (legal), identify 50 target referring physician networks, sign 5 pilot partners; Matt Mathison approval obtained; program launched
2. **Edge case:** The target partner profile doesn't actually have the volume to make the referral program worthwhile → validate with data before committing; talk to 5 potential partners before building the program; if the referral volume from each partner is too low ($500/year per partner), the program economics don't work at any scale; better to know this in Week 2 than in Month 6
3. **Adversarial:** A potential partner wants exclusivity in exchange for volume commitments → evaluate carefully; exclusivity can be the right trade if the partner can deliver significant volume; exclusivity can be catastrophic if it prevents working with other valuable partners; time-bound exclusivity (12 months) with volume commitments and clawback provisions is safer than perpetual exclusivity; all exclusivity provisions require Matt Mathison approval and legal review

## Audit Log
Partnership strategy versions retained with approval dates. Partner program launches documented. Revenue attribution tracked. Strategy revisions documented with rationale.

## Deprecation
Retire when portfolio companies hire dedicated VP Business Development who owns partnership strategy as a standard function.
