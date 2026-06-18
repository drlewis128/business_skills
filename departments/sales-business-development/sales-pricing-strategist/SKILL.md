---
name: sales-pricing-strategist
description: "Develop and manage pricing strategy for MBL portfolio companies. Use when the user says 'pricing', 'price', 'pricing strategy', 'how should we price', 'what to charge', 'pricing model', 'PMPM pricing', 'CPM pricing', 'royalty rate', 'pricing tiers', 'discount', 'discount approval', 'pricing exception', 'price increase', 'raise prices', 'reduce prices', 'pricing optimization', 'price sensitivity', 'value-based pricing', 'competitor pricing', 'pricing negotiation', 'pricing authority', 'list price', 'floor price', or 'pricing governance'."
metadata:
  version: 1.0.0
  tier: sales
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <review|set|model|approve-exception>] [--context <new-product|renewal|discount|increase>]"
---

# Pricing Strategist

Develop and manage pricing strategy for MBL portfolio companies — establishing list prices, floor prices, discount authority, and the governance process for pricing exceptions. Pricing is one of the highest-leverage levers in any business: a 1% price increase on $1M in revenue produces $10K of margin improvement with zero added cost; a 5% discount on a $120K deal reduces the deal value by $6K and sets a precedent for every negotiation that follows. Dr. Lewis governs pricing discipline across the portfolio.

## When to Use
- Setting initial pricing for a new product or service
- A sales rep requests a pricing exception or discount
- Pricing hasn't been reviewed in 12+ months
- A significant cost change or competitive shift warrants a pricing review
- Preparing a proposal (confirm pricing is within approved guidelines before submitting)

## Pricing Framework

```
PRICING BY ENTITY:

  ALLEVIO — Employer Group PMPM Pricing:
    List price: $85/member/month (PMPM)
    Pricing rationale: Value-based — Allevio typically reduces costs by $20-35/PMPM vs. carrier;
      at $85 PMPM, Allevio is below market rates and captures a share of the savings
    Tiered pricing structure:
      25-50 employees: $90/PMPM (higher setup cost relative to group size)
      51-150 employees: $85/PMPM (core ICP; standard rate)
      151-300 employees: $82/PMPM (volume discount; pre-approved)
      300+ employees: $78-80/PMPM (CEO must approve)
      
    Discount authority:
      Standard rate ($85): Sales rep authority (within standard)
      Volume discount ($82): Sales rep + Dr. Lewis review
      Custom pricing (<$82): CEO must approve + Dr. Lewis reviews before quoting
      
    Floor price: $75/PMPM — below this, the economics don't work for Allevio;
      no exceptions without CEO + Dr. Lewis + Matt Mathison approval
      
    Price increase authority:
      Annual PMPM increases of 0-3%: CEO authority
      Annual PMPM increases of 3%+: CEO + Matt Mathison approval
      Price increases at renewal: Must be communicated 90 days before renewal date
      Unilateral mid-contract price changes: Not permitted without contractual provision
      
  COLUMN6 — CTV/Programmatic CPM Pricing:
    CTV list price: $22-45 CPM (varies by audience targeting complexity and content environment)
      Premium CTV (top-tier networks; precise audience): $35-45 CPM
      Standard CTV (broad audience; general content): $22-30 CPM
    Programmatic list price: $4-12 CPM (bidding-based; managed through DSP)
    
    Pricing authority:
      Standard CPM range: Sales rep quotes from the approved CPM range
      Below-floor CPM: Column6 CEO + Dr. Lewis review
      Non-standard deal terms (guaranteed CPM; floor CPM on programmatic): CEO must approve
      
    Floor CPM:
      CTV: $18 CPM (below this, the economics of serving the campaign are marginal)
      Programmatic: $2.50 CPM
      
    CPM pricing variables:
      Targeting complexity: More precise targeting = higher CPM
      Content adjacency: Premium/brand-safe environments command higher CPMs
      Audience size: Narrower audiences command higher CPMs
      Campaign commitment: Larger IO commitments may warrant a modest volume discount
      
  HIVE — Mineral Rights / Lease Terms:
    Lease bonus: $1-2/acre (market rate for Uinta Basin in current market)
    Royalty rate: 12.5%-16% (standard industry range)
    Pricing authority:
      Standard terms: HIVE CEO + Dr. Lewis can execute
      Above-market bonus (>$2/acre) or royalty (>16%): CEO + Dr. Lewis + Matt Mathison review
      Below-market terms (if competing for strategic acreage): CEO + Matt Mathison must approve
      
PRICING GOVERNANCE — DISCOUNT APPROVAL PROCESS:
  Any quote below the standard rate requires documentation:
    □ What is the customer requesting? (specific discount amount or %)
    □ Why is the customer requesting it? (competitive pressure; budget constraint; volume commitment)
    □ What is the competitive situation? (competitor price; are they bluffing?)
    □ What is the proposed deal value? (ACV; total contract value)
    □ What is the recommended counter? (Dr. Lewis and CEO review)
    
  Discount psychology:
    Never give a discount without getting something in return
    If the customer asks for 10% off: Counter with "I can do 5% if you sign by [date]" or
      "I can work with you on pricing if you extend the contract term to 2 years"
    Trading value > giving discounts: Add something (extra service; data report; implementation support)
      instead of reducing the price; maintains price integrity while accommodating the request
      
PRICING REVIEW CADENCE:
  Annual pricing review (October — for next year's pricing):
    □ Review win/loss data: Are we losing deals on price? (sales-win-loss-analyzer)
    □ Review competitor pricing: Have competitors moved? (sales-competitive-intel)
    □ Review cost structure: Have our costs changed? (fpa-gross-margin-tracker)
    □ Review market conditions: Can the market support a price increase?
    Decision: Maintain; increase; decrease; restructure pricing tiers
    Matt Mathison informed of any pricing change > 5%
```

## Output Format

```markdown
# Pricing Review / Exception Request — [Entity] | [Date]
**Deal/Context:** [Deal name or pricing review type]
**Prepared by:** Dr. Lewis

---

## Current Pricing

| Tier | Standard price | Floor price | Authority to discount |
|------|--------------|------------|----------------------|
| [Standard — 51-150 EE] | $85/PMPM | $75/PMPM | CEO for <$82 |
| [Volume — 151-300 EE] | $82/PMPM | $75/PMPM | Dr. Lewis + CEO |

---

## Exception Request (if applicable)

**Customer:** [Name] | **Group size:** [X employees] | **Requested price:** $[X]/PMPM
**Customer's stated reason:** [Budget constraint / competitive offer / multi-year commitment]
**Competitive situation:** [Is this real pressure or negotiation?]
**Deal value impact:** Standard ACV: $[X]K | Requested ACV: $[X]K | Difference: $[X]K

---

## Recommendation

**Recommended response:** [Decline / Counter-offer / Approve with condition]
**Counter-offer:** $[X]/PMPM IF [sign by [date] / extend to 2-year term / pay quarterly upfront]
**Approval required:** [Dr. Lewis only / CEO + Dr. Lewis / CEO + Dr. Lewis + Matt Mathison]

---

## Annual Pricing Review Summary (if applicable)

**Current pricing:** [List; unchanged / Increase X% for 2028]
**Rationale:** [Win/loss data; cost structure; competitive position]
**Matt Mathison notification required:** [Yes / No]
```

## Output Contract
- Never discount without getting something in return — a discount given without a concession trains every future buyer that the initial price is negotiable; Dr. Lewis enforces the principle that every pricing exception must include a counter-condition; the condition doesn't need to be large (a faster close date; a reference customer agreement; a 2-year term instead of 1-year) but something must be exchanged to protect pricing integrity
- Floor prices are inviolable without full escalation — the floor price exists because below it, the economics of serving the customer don't work; a deal priced below floor that gets renewed creates a long-term economic problem; Dr. Lewis treats floor price violations as requiring CEO + Matt Mathison approval, not just CEO approval; below-floor pricing must be documented with a specific rationale (strategic account; test/pilot; competitive market condition) and reviewed at the next annual pricing review
- Annual pricing reviews connect pricing to cost and competitive reality — pricing set in 2024 may not reflect 2027 delivery costs; Dr. Lewis conducts a formal annual pricing review in October of each year, reviewing the cost structure, competitive landscape, and win/loss pricing data before recommending any changes for the following year; pricing increases above 5% are reviewed with Matt Mathison as a portfolio-level financial decision
- HITL required: Sales reps operate within the standard pricing range; Dr. Lewis approves volume discounts and reviews all pricing exceptions; CEO approves custom pricing below the volume tier; Matt Mathison informed of pricing increases above 5% or any below-floor exception; Dr. Lewis does not authorize below-floor pricing; Dr. Lewis does not retroactively approve a discount that was already quoted to a customer without documentation and escalation

## System Dependencies
- **Reads from:** Win/loss analysis (sales-win-loss-analyzer — is pricing causing losses?); competitive intelligence (sales-competitive-intel — competitor pricing levels); cost structure (fpa-gross-margin-tracker — what are the delivery economics at each price point?); contract terms (legal-contract-reviewer — is there a most-favored-nation clause in any existing contract?); fpa-annual-budget-builder (pricing assumptions in the operating plan)
- **Writes to:** Pricing policy document (SharePoint/Sales/<Company>/Pricing/Pricing_Policy_v[X]_[Date].pdf); discount approval records (SharePoint/Sales/<Company>/Pricing/DiscountLog.xlsx — all exceptions documented); CEO/Matt Mathison pricing notification memos (for increases >5%); proposal pricing confirmation (all proposals >$50K have pricing confirmed by Dr. Lewis before submission)
- **HITL Required:** Dr. Lewis manages pricing governance; CEO approves custom pricing; Matt Mathison informed of material pricing changes; Dr. Lewis does not approve below-floor pricing for any deal; Dr. Lewis does not communicate pricing changes to customers — the sales rep or CEO does; pricing changes in renewal contracts require CEO approval regardless of the amount

## Test Cases
1. **Golden path:** Annual Allevio pricing review for 2028 → Dr. Lewis reviews: Win/loss data: 3 of 9 losses cited price ("competitor is cheaper"); competitor pricing research: one competitor is quoting $78-80/PMPM; Allevio delivery cost review: cost of serving an average group has increased 2.5% YoY due to provider cost increases; Dr. Lewis recommendation: "Do not lower prices to match the competitor — we lose the margin and set a price war precedent. The competitor's $78 price is likely below their costs or they're not providing the same level of care management. Maintain list price at $85 but strengthen the value comparison in proposals — the savings analysis needs to be sharper. Annual increase for existing contracts: 2% (within CEO authority; matches inflation). No change to the tier structure." CEO approves; Matt Mathison notified of the 2% renewal increase (below the 5% threshold for formal approval)
2. **Edge case:** A Column6 agency buyer requests a $14 CPM for a CTV campaign (below the $18 floor) arguing that "we can get that rate from Google" → Dr. Lewis advises: "A $14 CPM is below our floor price ($18 CTV). This is a below-floor exception that requires CEO + Dr. Lewis approval before we respond. Before deciding: (1) Is the Google $14 CPM comparable inventory (premium CTV or co-mingled remnant)? If they're comparing our premium CTV to Google's remnant inventory, the comparison isn't apples-to-apples; (2) What's the campaign budget? A $500K IO at $14 CPM may warrant a special review even with below-floor economics; (3) Are there strategic value reasons (this agency brings 10+ campaigns per year) to accept below-floor for this first campaign? Recommendation: Counter at $18 CPM with a measurement offer — 'We'll run a test at $18 and if our completion rate and audience quality don't justify the premium vs. Google, we'll work with you on future pricing.' This is a professional counter; not a concession." CEO reviews; approves the counter; agency accepts
3. **Adversarial:** A sales rep quotes a customer $75/PMPM without authorization (below the $82 CEO-approval threshold) → Dr. Lewis: "A $75/PMPM quote has been sent to an employer group without CEO approval. This is below the $82 volume discount threshold and requires CEO authorization. Actions: (1) Do not confirm or advance this quote until CEO reviews; contact the rep today; (2) CEO reviews the deal: is $75 viable for this group size? (150 employees: $75 × 150 × 12 = $135K ACV; at $75, margins are thin); (3) If the CEO approves this as an exception (possibly to win a high-value reference customer), document the rationale; (4) Train the rep: any quote below $82 requires CEO approval before being sent. Going below $82 without approval is a policy violation." Rep is counseled; CEO reviews; approves $78 (not $75) as a counter; documented as an exception

## Audit Log
All pricing exception requests retained with deal details, rationale, and approval. Annual pricing review records retained. CEO and Matt Mathison approval records for pricing changes retained. Below-floor exception records retained permanently (these are high-risk decisions). Win/loss pricing analysis retained quarterly.

## Deprecation
Retire when each portfolio company has a dedicated VP of Sales or Revenue Operations who manages pricing governance — with Dr. Lewis reviewing the annual pricing strategy and Matt Mathison approving material pricing changes.
