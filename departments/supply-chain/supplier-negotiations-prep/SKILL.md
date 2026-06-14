---
name: supplier-negotiations-prep
description: "Prepare for supplier price and contract negotiations. Use when the user says 'negotiate with a supplier', 'supplier negotiation', 'prepare to negotiate', 'how to negotiate with vendors', 'contract negotiation prep', 'supplier pricing negotiation', 'negotiate better terms', 'reduce supplier cost', 'renegotiate a contract', or 'negotiation strategy'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--supplier <name>] [--goal <price|terms|volume|renewal>] [--entity <MBL|Allevio|HIVE>]"
---

# Supplier Negotiations Prep

Prepare a complete negotiation strategy before entering any supplier negotiation — objectives, BATNA, leverage points, concession strategy, and walk-away criteria. Walking into a negotiation without preparation means accepting the supplier's terms. For MBL, procurement negotiations are a direct lever on portfolio profitability: every 5% saved in supplier cost flows directly to EBITDA.

## When to Use
- Annual contract renewal — renegotiating price and terms
- New supplier selection — negotiating initial contract terms
- Mid-contract renegotiation (supplier performance issues; market price drop)
- Expanding volume — leverage volume increase for price concessions
- Portfolio-level negotiation — negotiating on behalf of multiple portfolio companies for volume leverage

## Negotiation Framework

```
Preparation sequence (do in order):
  1. Know your position: What do we want? What's our BATNA?
  2. Know their position: What do they want? What's their BATNA?
  3. Build leverage: What gives us negotiating power?
  4. Plan concessions: What can we give to get what we want?
  5. Set walk-away: When do we stop?
  6. Plan the conversation: Who leads? What's the agenda?
```

## Output Format

```markdown
# Supplier Negotiation Prep — <Supplier Name>
**Date:** <date> | **Negotiator:** Dr. John Lewis
**Supplier:** <name> | **Entity:** <MBL / Allevio / HIVE / Portfolio>
**Negotiation type:** Renewal / New contract / Renegotiation / Volume expansion
**Contract value at stake:** $X/year | **Target close date:** <date>

---

## Our Position

**Primary objective:** <What is the single most important outcome?>
**Secondary objectives:** <What else matters — terms, flexibility, SLAs>
**Non-negotiables:** <What we will not concede regardless of supplier pressure>

| Negotiating point | Our current position | Opening ask | Target | Walk-away |
|-----------------|---------------------|------------|--------|----------|
| Unit price | $X (current) / $X (market) | -15% | -10% | -5% |
| Payment terms | Net 30 | Net 45 | Net 45 | Net 30 |
| Contract term | 1 year | 2 years | 2 years | 1 year + option |
| Price escalation | "At discretion" | CPI cap | CPI + max 3% | CPI + max 5% |
| Volume commitment | 1,000 units/year | 900 units | 950 units | 1,000 units |
| Termination for convenience | None | 30-day notice | 60-day notice | 90-day notice |

**BATNA (Best Alternative to Negotiated Agreement):**
Supplier B has quoted $X/unit — 8% lower than current Supplier A pricing. If Supplier A won't reach -8%, Supplier B is a viable alternative. Lead time is 2 weeks longer — acceptable.

---

## Supplier's Likely Position

**What they want:** <Long-term commitment; price increase; early payment>
**Their constraints:**
- Raw material costs up X% (they may cite this as justification for a price increase)
- They have competitive alternatives (how badly do they need us?)
- Estimated margin at current pricing: X% (gives us a floor; below this, they won't go)

**Estimated BATNA for supplier:**
- Losing MBL = $X/year revenue; represents X% of their business with this segment
- High switching cost — we use their proprietary system; they know this

**Their likely opening position:**
- Price: +8% increase request (citing cost inflation)
- Term: 3-year commitment (seeking revenue certainty)
- Payment: Maintain Net 30 (cash flow)

---

## Leverage Analysis

**Sources of our leverage:**
- Volume: $X/year spend is significant for their business unit
- Portfolio: If we negotiate as a portfolio buyer (Allevio + HIVE + MBL), volume increases to $X
- BATNA: Supplier B is a credible alternative with acceptable terms
- Relationship: Long-term customer; low friction; low credit risk
- Market: Commodity prices have declined X% — we have market data to support price reduction

**Sources of their leverage:**
- Switching cost: Proprietary integration is expensive to replace (~$X in switching costs)
- Sole source: No current backup supplier for [specific item]
- Expertise: Specialized clinical knowledge (Allevio context) difficult to replicate

**Net leverage assessment:** Roughly balanced; market data gives us the strongest argument

---

## Concession Strategy

**What we can offer (in order of preference — least costly first):**
1. Commit to 2-year term (vs. current year-to-year) — valuable to them; low cost to us if they perform
2. Commit to minimum volume (95% of current) — low risk given expected demand
3. Agree to Net 30 (don't push for 45) — worth giving up if we get price
4. Give them a reference / case study — no cost; high value to them as a marketing asset

**Avoid giving:**
- Price increase — this is the main battleground; no increases without substantial value exchange
- Unlimited escalation — always cap at CPI or fixed %
- Removal of termination for convenience — must have an exit

---

## Negotiation Tactics to Anticipate

| Supplier tactic | What they'll say | Our response |
|----------------|-----------------|-------------|
| Anchoring high | "We need a 10% price increase" | "We were expecting a decrease given market conditions" — present market data |
| Good cop / bad cop | "I want to help but my CFO is insisting..." | "I understand constraints. Let's focus on total value — can you work with our TCO analysis?" |
| Artificial deadline | "This price is only good until Friday" | "We need to complete due diligence before we can agree. Friday doesn't work for us." |
| Nibbling | Adding items after agreement is reached | "Let's make sure we have everything on the table before we finalize" |
| Bundling concessions | "If you take the 3-year term, we'll hold price" | Evaluate each element independently; don't let bundling obscure value |

---

## Negotiation Plan

**Who leads:** Dr. Lewis (primary); Matt Mathison (present for strategic suppliers — signals seriousness)
**Format:** Video call (preferred for complex deals) / In-person (Tier A renewals)
**Agenda:**
1. Relationship and performance review (10 min) — start positive; acknowledge their performance
2. Market context (10 min) — share market data; set the tone for pricing discussion
3. Present our position (15 min) — systematic walk through negotiating points
4. Discuss and explore (20 min) — listen; find creative solutions; don't make concessions under pressure
5. Close or next steps (5 min) — agree on timeline; "let us review your counter-proposal"

**What we will NOT do:**
- Accept a price increase without justification and market data to support it
- Sign a contract in the meeting — always take 24-48h to review
- Give more than two concessions in a single session
- Make the first concession significant — signal firmness early

---

## Post-Negotiation Action Items

- [ ] Send summary email of agreed terms within 24h
- [ ] Dr. Lewis reviews draft contract against agreed terms
- [ ] Legal review (if >$50K or HIPAA/IP clauses)
- [ ] Matt Mathison signs (if >$25K)
- [ ] PO system updated with new pricing
```

## Output Contract
- BATNA always defined before negotiation begins — negotiating without a BATNA means accepting their terms under pressure
- Walk-away criteria always explicit — knowing when to stop is as important as knowing what to ask for
- Supplier's likely position always analyzed — understanding their constraints and leverage is the foundation of effective negotiation
- Concession sequence always planned — giving your most valuable concession first wastes it; sequence from least costly
- HITL required: Dr. Lewis leads negotiations; Matt Mathison present for Tier A strategic suppliers; no contract signed in the meeting — always review; >$25K contracts require Matt Mathison signature; >$50K or HIPAA require legal review before signing

## System Dependencies
- **Reads from:** Supplier performance history, current contract, market pricing data, financial data (spend by supplier)
- **Writes to:** Negotiation prep (SharePoint/Operations/Procurement); agreed terms summary; updated contract
- **HITL Required:** Dr. Lewis leads; Matt Mathison for Tier A; legal review >$50K/HIPAA; Matt Mathison signature >$25K; no in-meeting signing

## Test Cases
1. **Golden path:** Annual renewal negotiation with Cardinal Health (Allevio medical supplies, $240K/year) → Supplier opens with +7% increase; market data shows commodity prices flat; we counter with -5%; leverage: portfolio-wide spend ($320K if HIVE included); concession: 2-year term; agreement: price flat + 2-year term + 3% annual cap; savings vs. supplier ask: $16.8K; Matt Mathison present for close; contract signed by Matt Mathison
2. **Edge case:** Supplier refuses to negotiate and says "take it or leave it" → "take it or leave it" is a tactic, not a final position; respond calmly: "we're committed to this relationship and want to find something that works for both of us — let's take a few days to think about this before making a final decision"; if they truly won't move and the BATNA (Supplier B) is viable, execute the BATNA; use the BATNA as a real option, not a bluff
3. **Adversarial:** Dr. Lewis is under pressure to close quickly (Matt Mathison wants the deal done this week) → time pressure is one of the strongest negotiation disadvantages; don't reveal the internal deadline; negotiate at normal pace; if the supplier senses time pressure, they will use it; communicate internally that rushing costs money — even 1% on a $240K contract is $2,400/year

## Audit Log
Negotiation prep retained. Negotiation notes retained (who said what, what was agreed). Agreed terms summary retained. Contract signed version in SharePoint/Legal.

## Deprecation
Retire when MBL has a dedicated procurement team with professional negotiators and a category management process that includes structured negotiation programs.
