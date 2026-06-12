---
name: contract-negotiation-prep
description: "Prepare for contract negotiations. Use when the user says 'contract negotiation', 'preparing to negotiate', 'negotiation prep', 'what to ask for in this contract', 'negotiation strategy', 'what are our must-haves', 'vendor negotiation', 'negotiation leverage', 'before we negotiate', or 'how do I negotiate this contract'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--contract-type <vendor|M&A|employment|partnership>] [--value <dollar-amount>] [--position <buyer|seller|customer|vendor>]"
---

# Contract Negotiation Prep

Prepare for contract negotiations for MBL portfolio companies. Good negotiations are won in preparation, not in the room. Before any material negotiation, define your must-haves, should-haves, and can-yields; understand your BATNA (Best Alternative to a Negotiated Agreement); and identify the other side's interests and constraints. This skill builds the negotiation preparation package.

## When to Use
- Preparing to negotiate any contract above $25K annual value
- Vendor contract renewal where terms need to change
- M&A negotiation preparation (deal terms, representations, purchase price)
- Employment offer negotiation (executive or key hire)
- Partnership or licensing agreement negotiation

## Negotiation Framework

```
STEP 1 — Define your position
  Must-have:   Walk away if not included (non-negotiable)
  Should-have: Strongly prefer; will push hard but may compromise
  Can-yield:   Willing to trade away in exchange for must-haves/should-haves
  BATNA:       What happens if this deal doesn't close? (your walk-away point)

STEP 2 — Understand the other side
  Their interests:    What do they actually care about? (Often ≠ their stated position)
  Their constraints:  What can they not agree to? (Budget, authority, policy)
  Their BATNA:        What happens if they don't close this deal?

STEP 3 — Identify value-creation opportunities
  Win-win trades:     Issues where you care more about X; they care more about Y
  Package approach:   Negotiate all issues together, not one at a time

STEP 4 — Set your walk-away
  At what point do you walk away?
  Who has authority to approve concessions? (Dr. Lewis / Matt Mathison above threshold)
```

## Output Format

```markdown
# Contract Negotiation Preparation — <Contract Name>
**Date:** <date> | **Entity:** <name>
**Contract:** <description> | **Counterparty:** <name>
**Contract value:** $<amount> | **Position:** Customer / Vendor / Buyer / Seller
**Negotiation date:** <date> | **Lead negotiator:** Dr. John Lewis / <name>

---

## Our Position Summary

### Must-Haves (Walk Away If Not Included)

| Issue | Our Requirement | Why Non-Negotiable |
|-------|--------------|------------------|
| No AI training on our data | Explicit prohibition on using our data to train AI models | Confidential data / IP protection |
| IP ownership of custom work | We own all custom deliverables | Need to use what we paid for |
| BAA execution (if PHI) | BAA required before any PHI shared | HIPAA legal requirement |
| Liability cap ≥ 12 months' fees | Minimum $100K liability cap | PHI breach risk requires meaningful recovery |
| 90-day termination for convenience | Need an exit without paying break fees | Business flexibility |

### Should-Haves (Push Hard, May Compromise)

| Issue | Our Target | Acceptable Alternative |
|-------|---------|---------------------|
| 45-day ROFR notice | 20-day ROFR notice period | 30 days as compromise |
| Arizona venue for disputes | Arizona or virtual/remote arbitration | 50/50 split — we handle remotely |
| Price cap 3% | Price increase cap at 3%/yr | 4% max — acceptable |

### Can-Yield (Trade Away For Must-Haves)

| Issue | Their Ask | Our Counter-Offer | Why We'd Yield |
|-------|---------|----------------|--------------|
| Payment terms (net 30 → net 15) | Net 15 | Accept net 15 | Small cash flow impact vs. must-haves |
| 2-year initial term | 3-year term | Accept 2.5 years | Term extension in exchange for better cap |
| Dedicated account manager | Standard support | Accept if price is right | Nice-to-have, not critical |

---

## Their Position (Our Best Assessment)

**Their key interests:**
- Multi-year revenue certainty (they want a long-term contract)
- Standard terms (they don't want to custom-negotiate with every customer)
- Reference customer status (they may value a healthcare/PE reference)

**Their constraints:**
- Legal team may not be able to remove AI training clause without executive approval (common)
- Liability cap policy may require CEO approval to increase
- They likely need the deal to close this quarter (sales incentive)

**Their BATNA:**
- They have other customers; losing this deal is not existential
- However: Allevio healthcare reference may be valuable to them — leverage this

---

## Leverage Analysis

| Leverage Factor | We Have It? | Description |
|---------------|-----------|-----------|
| Alternative vendors | ✅ | Two comparable vendors available — BATNA is real |
| Deal size significance | 🟡 | $180K/yr is mid-tier for them |
| Reference value | ✅ | Allevio healthcare reference is valuable |
| Time pressure | ❌ | We're not in a rush — they may be at quarter end |
| Long-term relationship | ✅ | We've been a customer for 2 years |

**Overall leverage:** Moderate — use reference value and alternative vendors as primary leverage

---

## Negotiation Tactics

1. **Lead with the relationship:** Acknowledge the value of the partnership before raising issues
2. **Package, don't pick:** "We can agree on term and payment if you can work with us on data rights and IP ownership"
3. **Anchor high on liability cap:** Ask for 24 months; settle for 12
4. **Trade term length for better rates:** "If we do 3 years, what can you do on price?"
5. **Walk-away discipline:** If AI training and IP ownership aren't resolved, do not sign

---

## Authority and Escalation

| Decision | Authority Level |
|---------|--------------|
| Minor concessions (payment terms, dates) | Lead negotiator (Dr. Lewis) |
| Material term changes (liability cap, IP, data rights) | Dr. Lewis + outside counsel review |
| Contract value over $100K, or deal structure changes | Matt Mathison approval |
| Any HIPAA-related term for Allevio | Outside counsel review required |
```

## Output Contract
- Must-haves always separated from should-haves — negotiators who don't know their walk-aways make bad concessions
- BATNA always defined — negotiating without a credible alternative is negotiating from weakness
- Authority levels always defined — making commitments beyond your authority creates legal and relationship problems
- AI data training rights always flagged as must-have for any SaaS contract — this is the highest-risk provision of 2025+
- HITL required: Dr. Lewis reviews negotiation prep; outside counsel reviews must-haves on high-value or complex contracts; Matt Mathison approves final deal terms above threshold; no material concessions without checking authority level

## System Dependencies
- **Reads from:** Draft contract, prior contract terms (if renewal), market rate data (provided by Dr. Lewis / outside counsel)
- **Writes to:** Negotiation preparation document (for Dr. Lewis and outside counsel — internal only; not shared with counterparty)
- **HITL Required:** Dr. Lewis leads negotiations; outside counsel reviews must-haves; Matt Mathison approves above threshold

## Test Cases
1. **Golden path:** Vendor renewal negotiation — $180K SaaS contract, 2-year renewal → must-haves: no AI training clause, IP for any custom API work, 12-month liability cap; leverage: reference value, 2 alternative vendors; result: AI clause removed, IP assignment for custom integrations granted, liability cap increased to 6 months (compromise), 3-year term at 2% annual increase vs. 5%
2. **Edge case:** Counterparty makes a "take it or leave it" offer on terms → assess: is this posturing or a real constraint? In most cases, "take it or leave it" is a negotiation position — send the redline anyway; if truly non-negotiable on must-haves, execute BATNA
3. **Adversarial:** Counterparty pressures for signature "by EOD or the offer expires" → artificial urgency is a negotiation tactic; a vendor who withdraws a deal because you took 48 hours for legal review is a vendor you don't want to work with; take the time you need

## Audit Log
Negotiation prep documents retained as confidential attorney-client work product. Final executed contracts retained in contract lifecycle tracker.

## Deprecation
Retire when entity has established standard contract playbooks (Ironclad) with pre-approved term positions and automated redlining for common contract types.
