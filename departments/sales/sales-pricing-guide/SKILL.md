---
name: sales-pricing-guide
description: "Present pricing and navigate price discussions for MBL portfolio company sales teams. Use when the user says 'pricing', 'price', 'how much does it cost', 'cost', 'rate', 'PMPM', 'PMPM rate', 'per member per month', 'CPM', 'cost per mille', 'IO pricing', 'IO cost', 'IO rate', 'how much is the IO', 'pricing model', 'pricing structure', 'pricing tier', 'pricing options', 'pricing discussion', 'price the deal', 'give them pricing', 'present pricing', 'present the price', 'present the cost', 'quote', 'quotation', 'price quote', 'pricing quote', 'price presentation', 'price sensitivity', 'price pushback', 'they pushed back on price', 'price objection', 'price too high', 'too expensive', 'can we do it cheaper', 'lower the price', 'discount', 'pricing concession', 'how do I defend the price', 'defend pricing', 'value vs. price', 'ROI vs. cost', 'justify the price', 'price justification', 'HIVE LOI price', 'acquisition price', 'offer price', or 'pricing authority'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive>] [--scenario <present|defend|concession|compare>] [--audience <cfo|buyer|seller>]"
---

# Sales Pricing Guide

Present pricing and navigate price discussions for MBL portfolio company sales teams — delivering pricing with confidence, defending value before offering concessions, and escalating only when a concession is genuinely the right business decision. The rep who apologizes for the price loses on price; the rep who presents the price as the natural result of the value they've established wins more of the right deals at the right margin.

## When to Use
- Preparing to present pricing to a prospect
- Responding to price pushback or objection
- Determining whether a concession is warranted and what authority it requires
- Building the pricing section of a proposal

## Pricing Framework

```
PRICING PRESENTATION TIMING:
  Present pricing AFTER establishing value:
    Don't anchor on price in the first call
    Don't send pricing without a discovery call — unless the prospect refuses any other path
    Correct order: pain discovery → solution demonstration → value establishment → pricing
    By the time you present pricing, the prospect should feel the price is the cost of solving 
    a problem they've already acknowledged they need to solve
    
ALLEVIO PRICING:
  PMPM (Per Member Per Month) model:
    Rate basis: charged per enrolled employee per month
    Rate range: $[X]-$[X] PMPM (entity CEO maintains current rate card)
    Rate is not disclosed publicly — rate card is internal
    Rate is presented after: employee count confirmed; renewal date confirmed; pain established
    
  Presentation language:
    "At [N] enrolled employees, your monthly investment would be $[X] ($PMPM × employees)"
    "On an annualized basis, that's $[X]"
    "Based on our ROI model — even the Conservative scenario shows $[X] in Year 1 savings — 
     the net position after Allevio is $[Y] positive in Year 1"
    
  HIPAA: do not reference individual employee costs; pricing discussion is employer-aggregate
    
  Volume consideration: larger employee counts → lower PMPM may be warranted
    Entity CEO makes volume-based rate decisions (not the rep)
    Do not offer a volume discount without entity CEO approval
    
  PMPM floor: entity CEO maintains a floor below which no contract is signed without deal desk
    
COLUMN6 PRICING:
  CPM (Cost Per Thousand Impressions) model:
    Rate card: maintained by entity CEO (not distributed to reps without authorization)
    Gross margin floor: ≥35% on every IO — non-negotiable without deal desk
    CPM presented at the time of campaign proposal (after discovery; after budget confirmed)
    
  Presentation language:
    "At $[CPM] CPM, your $[budget] investment delivers [N] impressions over [X] weeks"
    "That's [N] households reached at [targeting parameters]"
    "Effective CPM — adjusted for our IVT rate — is $[X], which compares to..."
    
  Minimum IO: $25K for CTV; $15K for Mobile or Gaming
  
  Below-minimum request: "We're set up for campaigns of $25K and above on CTV — 
    for smaller tests, we can sometimes structure a mobile or gaming IO at $15K. 
    What does your Q[N] budget look like for this initiative?"
    
HIVE PRICING:
  LOI offer price:
    HIVE pays to acquire mineral rights → Matt Mathison models and decides the offer price
    Rep (or Dr. Lewis) brings the qualified asset to Matt Mathison → Matt Mathison sets the LOI price
    Rep does NOT negotiate price independently — this is Matt Mathison's domain
    WTI trigger: LOI offer is not sent if WTI <$58/bbl for 2+ consecutive weeks without Matt Mathison exception
    
PRICE DEFENSE BEFORE CONCESSION:
  Step 1 — Acknowledge the concern:
    "I hear you — price is an important consideration. Let me make sure we're looking at the full picture."
    
  Step 2 — Return to value:
    "At [PMPM × employees], the annual investment is $[X]. Our Conservative ROI model shows $[Y] in savings.
     The net investment is $[X-Y] — or $[X-Y] per employee per year to reduce your claims trend 
     from 12% to the 4-6% range."
    
  Step 3 — Reframe to cost of inaction:
    "The alternative is maintaining the current trajectory — at 12%, Year 2 cost increase alone 
     is $[Z] more than what you'd pay for Allevio. The question becomes: which is the higher cost?"
     
  Step 4 — Probe the objection:
    "When you say the price is too high — is it the absolute number, or is it the ROI case 
     that isn't strong enough for your CFO? Those are two different conversations."
    
  Step 5 — Concession decision (ONLY if steps 1-4 don't resolve it):
    <5% concession: entity CEO approves (rep does NOT grant without approval)
    5-15% concession: entity CEO + Dr. Lewis
    >15% concession: entity CEO + Dr. Lewis + Matt Mathison
    
CONCESSION RULES:
  Never offer a concession preemptively — only in response to explicit pushback that can't be value-defended
  Never offer a concession without understanding what you're getting in return
  Standard trade offers:
    Extended contract term (Allevio: 12 → 18 or 24 months)
    Faster close (closing by [date] in exchange for [rate])
    Larger volume commitment (Column6: larger IO or second IO)
  Rep cannot grant ANY concession on the call without deal desk approval
  Rep can offer to "take this back to my team and see what we can do" — but cannot commit
  
PRICING DO's and DON'Ts:
  DO:
    Present pricing confidently — not apologetically
    Always anchor to value before stating the number
    State the investment as an annual number (easier for CFO)
    Have the ROI model ready before any price conversation
    Know your floor before the call
    
  DON'T:
    Apologize for the price
    Offer a discount as your first response to any price pushback
    Guess at a concession ("I think we can probably do X") — "I'll need to check with my team"
    Reveal the gross margin floor to the prospect
    Reveal the PMPM rate to a broker before the entity CEO approves it
```

## Output Format

```markdown
# Pricing Presentation — [Prospect Name] | [Entity] | [Date]
**AE:** [Name] | **Audience:** [Titles] | **Current stage:** [N]

---

## Pricing Summary
| Line item | Rate | Units | Total |
|-----------|------|-------|-------|
| [PMPM / CPM / LOI] | $[X] | [N employees / impressions] | $[X]/year |

---

## Value Anchor (state before the number)
[1-2 sentences: their pain → your solution → the result, before you say the price]

---

## ROI Context
**Conservative ROI:** $[X] savings Year 1 | **Net investment:** $[X] | **Payback:** [N months]
**Cost of inaction:** $[X] more at current trend (Year 2)

---

## Concession Authorization (if applicable)
**Requested concession:** [X% or description]
**Authority required:** Entity CEO only / Entity CEO + Dr. Lewis / + Matt Mathison
**Status:** Pending deal desk / Approved / Denied
```

## Output Contract
- Pricing is presented after value is established — a rep who leads with the PMPM rate before the prospect has articulated their pain has anchored the negotiation on cost rather than value; the prospect's mental math becomes "is $X/month worth it?" rather than "is solving our 12% claims trend problem worth $X/month?"; Dr. Lewis coaches: don't say the number until the prospect has acknowledged the problem they need to solve; once they've said "yes, our claims trend is a real problem," the price becomes the cost of solving it — not an arbitrary number being evaluated in isolation
- Concessions require approval before the prospect hears them — "I'll need to check with my team" is a complete and professional answer; a rep who says "I can probably do 10% off" without authorization has made a commitment the entity hasn't approved; the entity CEO is the first approver; Dr. Lewis is involved at ≥5%; Matt Mathison at >15%; the rep's job is to defend value, probe the objection, offer a trade — and only bring the concession request to the deal desk after they've established that value defense alone isn't going to close; a premature concession offer also signals to the prospect that the price is negotiable from the start, which will cause them to push harder
- HITL required: Allevio volume-based PMPM → entity CEO decision; PMPM floor → entity CEO maintains; any concession → entity CEO minimum; ≥5% → Dr. Lewis; >15% → Matt Mathison; Column6 gross margin floor → entity CEO enforces; Column6 CPM below margin floor → deal desk before presenting; HIVE LOI price → Matt Mathison models and decides; rep does not negotiate HIVE LOI price independently; pricing concession deal desk record → filed in SharePoint; rep grants concession without approval → entity CEO + Dr. Lewis coaching event; pricing sent before discovery → entity CEO notified

## System Dependencies
- **Reads from:** Entity rate card (entity CEO — PMPM or CPM; current; not distributed without authorization); ROI model output (sales-allevio-roi-calculator; conservative scenario); deal desk authorization matrix (sales-deal-desk; sales-negotiation-guide); GHL (deal stage; discovery notes; pain; employee count or budget); HIVE WTI status; HIVE LOI model (Matt Mathison)
- **Writes to:** Pricing section of proposal (sales-proposal-builder); deal desk request (if concession required); GHL (pricing presented; date; prospect response; concession request if applicable); entity CEO notification (concession requests; volume pricing requests); Matt Mathison briefing (HIVE LOI pricing); commission records (if pricing affects commission calculation)
- **HITL Required:** PMPM floor → entity CEO; volume pricing → entity CEO decision; any concession → entity CEO minimum; ≥5% → Dr. Lewis; >15% → Matt Mathison; Column6 CPM floor → entity CEO; HIVE LOI price → Matt Mathison models and approves; rep unauthorized concession → entity CEO + Dr. Lewis coaching event; pricing before discovery → entity CEO notification

## Test Cases
1. **Golden path:** Allevio employer; 200 employees; claims at 12% trend. Rep presents pricing: "Based on our ROI model, a Conservative 30% reduction in claims trend saves you approximately $180K in Year 1. At standard pricing with 200 enrolled employees, your annual investment is $[PMPM × 200 × 12]. That puts your net Year 1 position at [savings - investment]. And at current 12% trend, Year 2 cost increase alone is $[Z] — more than what you'd invest in Allevio." CFO: "That's still a significant number." Rep: "I hear you. The 12% is your baseline — what claims trend would make this feel like an obvious investment? If we can show the model at 30%, 40%, or 50% reduction and you can see where the crossover is, that might help." CFO: "If we can reliably get to 35%, the math works." Rep: "Our base case is 30-40% — 35% is well within our standard range. Let me get you the model at exactly 35% and I'll have it to you by end of day." No concession granted. CFO is now evaluating ROI, not price.
2. **Edge case:** Prospect asks for pricing in the first email before a discovery call: "Can you just send me your pricing?" → Rep response: "Happy to get you our pricing — I want to make sure I send you the right numbers. Our pricing is based on your employee count and benefits structure (self-insured vs. fully insured), so a 15-minute call is the fastest way to get you accurate numbers. Can we find 15 minutes this week? If a call doesn't work, I can send you a range with the caveat that final pricing requires knowing a few specifics." If they insist on pricing before a call: entity CEO advises whether to share a range or hold. Rep does not share specific PMPM rates without entity CEO approval.
3. **Adversarial:** Rep agrees to a 20% discount on the call to save the deal: "I told them we could do $X, 20% off standard" → Dr. Lewis: "A 20% concession requires entity CEO + Dr. Lewis + Matt Mathison approval — that commitment was made without authorization. Here's what happens now: (1) I'm calling you and the entity CEO today; (2) We decide whether 20% is a concession we'd approve — if yes, we document it with deal desk; (3) If it's not approvable, you'll need to walk it back: 'I misspoke on our call — a discount at that level requires additional review from our leadership. I'll have an answer for you by [date]'; (4) Either way, this is a coaching event: price concessions are deal desk items; they are never granted on the call. The deal may survive or it may not — but a promise we can't keep damages the relationship more than walking it back with a clear explanation."

## Audit Log
Pricing presentation records (all Stage 4+ deals; entity; rate; date; prospect response; GHL). Concession request records (amount; justification; approvers; decision; date; deal desk). Volume pricing records (entity CEO decision; date; rationale). Unauthorized concession records (rep; event; coaching; corrective action). HIVE LOI pricing records (Matt Mathison model; approved price; date). Gross margin records (Column6 — pricing check; margin; entity CEO confirmation). Rate card distribution records (who has received the rate card; entity CEO authorization).

## Deprecation
PMPM rate card reviewed when Allevio updates pricing. CPM rate card reviewed when Column6 updates pricing. Gross margin floor reviewed when Column6's cost structure changes. Concession authority matrix reviewed annually. HIVE LOI pricing guidance reviewed when Matt Mathison updates acquisition model.
