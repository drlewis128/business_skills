---
name: competitive-intelligence-brief
description: "Generate a competitive intelligence brief on a market, company, or competitor. Use when the user says 'competitive intelligence', 'competitor brief', 'CI report', 'research this company', 'what are the competitors doing', 'competitive landscape', 'market intelligence', or 'who are the players in X market'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<company-or-market> [--depth <quick|full>] [--sector <healthcare|oil-gas|ctv|pe>]"
---

# Competitive Intelligence Brief

Generate a structured competitive intelligence brief on a company, market, or competitor. Designed to support deal screening, strategic positioning, and market navigation.

## When to Use
- Before acquiring or partnering with a company (understand their competitive position)
- Assessing a new market for portfolio expansion
- Annual competitive landscape review for each portfolio entity
- When a competitor makes a significant move (acquisition, funding, leadership change)
- Before a sales conversation with a prospect familiar with competitors

## Intelligence Sections

### Company Overview (if single company)
- Business model and revenue streams
- Scale (revenue, employees, geography)
- Ownership structure (PE-backed, public, founder-owned)
- Key leadership
- Recent developments (last 6-12 months)

### Competitive Position
- Where they compete vs. MBL entities
- Strengths (what they do well)
- Weaknesses (where they're vulnerable)
- Market share / position (if known)

### Market Dynamics
- Market size (TAM / SAM)
- Growth rate and drivers
- Consolidation trends (who's buying whom)
- Regulatory environment
- Technology disruption vectors

### Strategic Implications for MBL
- Threat level (High / Medium / Low) with reasoning
- Opportunity (gaps to exploit, partnership potential)
- Recommended response (if any)

## Quick vs. Full Mode

**Quick (~1 page):** Company snapshot, key facts, top 3 strategic implications. For initial screening.

**Full (~3-5 pages):** Complete competitive analysis, market context, financial comparables, strategic recommendations.

## Output Format

```markdown
# Competitive Intelligence Brief — <Subject>
**Date:** <date> | **Depth:** Quick / Full | **Sector:** <sector>

## BLUF
<3 sentences: who they are, what they mean for MBL, recommended action>

## Company / Market Snapshot
| Field | Details |
|-------|---------|
| Type | Private / PE-backed / Public |
| Revenue (est.) | $X |
| Scale | <employees, geography> |
| Ownership | <owner/backer> |
| Key leadership | <names> |
| Recent news | <notable developments> |

## Competitive Position
**vs. MBL / Portfolio Companies:**
- Where they overlap: <areas>
- Differentiators vs. us: <their edge>
- Our advantages: <our edge>

## Market Context
- Market size: $XB TAM
- Growth: X% CAGR
- Key trends: <trends>
- M&A activity: <recent transactions>

## Strategic Implications for MBL
| Dimension | Assessment |
|-----------|------------|
| Threat level | High / Medium / Low |
| Opportunity | <specific opportunity> |
| Recommended action | <specific next step> |
```

## Output Contract
- Always includes strategic implications specific to MBL — not generic analysis
- Threat level must be justified with specific evidence
- Competitor financial data labeled as "estimated" when from public sources
- HITL required before sharing any competitive intelligence with external parties

## System Dependencies
- **Reads from:** Provided context, public sources (web search if enabled), prior intelligence from `portfolio-performance-summary`
- **Writes to:** Nothing
- **HITL Required:** Before sharing externally or using in M&A context

## Test Cases
1. **Golden path:** Known PE-backed competitor in healthcare → full brief with market position, ownership, and MBL strategic implication
2. **Edge case:** Subject is an early-stage startup with minimal public info → flags data gaps, provides what's available, recommends additional research channels
3. **Adversarial:** Competitive brief requested on MBL itself (self-assessment) → pivots to "competitive positioning analysis" format, outputs MBL's own strengths/weaknesses

## Audit Log
Intelligence briefs retained by subject and date. Used in board and IC materials documented.

## Deprecation
Retire when a dedicated market intelligence platform (PitchBook, CB Insights) is integrated for automated competitive monitoring.
