---
name: term-sheet-analyzer
description: "Extract and analyze key terms from a term sheet and surface negotiation flags. Use when the user says 'review term sheet', 'analyze term sheet', 'term sheet analysis', 'what does this term sheet say', 'term sheet red flags', 'TS review', or 'what are the key terms'."
metadata:
  version: 1.0.0
  tier: executive
  owner: Dr. John Lewis
argument-hint: "<term-sheet-text-or-file> [--type <acquisition|investment|lending>]"
---

# Term Sheet Analyzer

Extract and analyze key economic and governance terms from a term sheet. Surface non-standard terms, negotiation leverage points, and any provisions that require legal review before acceptance.

## When to Use
- When MBL or a portfolio company receives a term sheet
- Before a negotiation session (understand the other side's position)
- LOI or preliminary deal structure review
- Acquisition financing term sheets from lenders

## Acquisition / LOI Term Sheet — Key Terms

### Economics
- Purchase price and structure (cash / equity / earnout)
- Earnout provisions (triggers, cap, measurement period)
- Escrow / holdback (amount, duration, release conditions)
- Working capital adjustment (peg, methodology, collar)
- Debt-free / cash-free (what's included/excluded)

### Representations & Warranties
- Survival period
- Indemnification cap (typically 10-15% of purchase price)
- Basket / deductible (minimum threshold before claims)
- R&W insurance requirement

### Transaction Structure
- Stock vs. asset deal (tax implications differ significantly)
- Rollover equity (seller keeps skin in the game)
- Financing contingency (buyer must secure financing)
- Material adverse change (MAC) definition

### Governance (if seller retaining equity)
- Board composition
- Veto rights / approval thresholds
- Information rights
- Anti-dilution provisions

### Process Terms
- Exclusivity period (typical: 30-60 days)
- Closing conditions
- Break fee / reverse break fee
- Estimated closing date

## Flag Taxonomy

| Flag Type | Example | Risk |
|-----------|---------|------|
| 🔴 Non-standard | Earnout > 30% of purchase price | Seller bears significant performance risk |
| 🟡 Negotiate | Escrow > 15% | Standard is 10% |
| 🔵 Legal review | MAC definition (broad) | Buyer could walk for market reasons |
| ⚠️ Missing | No working capital peg | Creates closing ambiguity |

## Output Format

```markdown
# Term Sheet Analysis — <Deal Name>
**Document Type:** Acquisition LOI / Investment TS / Lending TS
**Date:** <date> | **Party:** <buyer/investor name>

## Deal Snapshot
| Field | Term | Market Standard | Flag |
|-------|------|----------------|------|
| Purchase Price | $X | — | — |
| Earnout | $X (30% of PP) over 3 years | < 20% of PP | 🔴 |
| Escrow | 15% / 24 months | 10% / 18 months | 🟡 Negotiate |
| Exclusivity | 60 days | 30-45 days | 🟡 |
| Financing contingency | Yes | Varies | 🔵 Legal |

## Non-Standard Terms — Address in Negotiation
1. **Earnout structure:** $X earnout tied to EBITDA targets — this represents 30% of total consideration. Seller bears execution risk. Consider cap or time limit.
2. **MAC clause is broad:** Includes "general economic conditions" — gives buyer wide latitude to walk. Request narrower definition.

## Missing Terms — Request Before Proceeding
1. Working capital peg methodology not specified — request net working capital target and methodology before signing.

## Economic Summary
- Total certain consideration: $X (cash at close)
- Maximum consideration: $X (with full earnout)
- Escrow exposure: $X held for X months

## Recommended Negotiation Priorities
1. <Highest leverage item>
2. <Second priority>
3. <Third priority>

## Legal Review Required
<items that must go to transaction counsel before signing>
```

## Output Contract
- Flags non-standard terms with market benchmarks for comparison
- Always lists missing terms separately from non-standard terms
- Legal review items explicitly called out — this skill does not provide legal advice
- HITL required before any negotiation response is sent

## System Dependencies
- **Reads from:** Term sheet document (provided)
- **Writes to:** Nothing
- **HITL Required:** Matt Mathison + transaction counsel before accepting or countering any terms
- **Data sensitivity:** CONFIDENTIAL — deal terms

## Test Cases
1. **Golden path:** Clean, market-standard term sheet → brief summary noting standard terms, minor negotiation targets
2. **Edge case:** LOI for asset purchase vs. expected stock deal → flags tax structure difference, recommends CPA review
3. **Adversarial:** Term sheet with extremely broad MAC clause and large earnout → surfaces both as red flags, recommends counter on both before exclusivity

## Audit Log
Term sheet analyses versioned by date and deal name. Negotiation changes tracked against original terms.

## Deprecation
Retire when legal tech platform (Kira, Luminance) handles structured term extraction from deal documents.
