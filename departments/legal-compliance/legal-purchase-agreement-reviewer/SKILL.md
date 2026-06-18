---
name: legal-purchase-agreement-reviewer
description: "Review and negotiate M&A purchase agreements (APA/SPA) for MBL transactions. Use when the user says 'purchase agreement', 'APA', 'asset purchase agreement', 'SPA', 'stock purchase agreement', 'merger agreement', 'definitive agreement', 'M&A agreement', 'acquisition agreement', 'deal documents', 'reps and warranties', 'indemnification', 'closing conditions', 'purchase price adjustment', 'NWC adjustment', 'working capital adjustment', 'signing definitive agreement', 'definitive deal docs', 'M&A definitive', or 'buy-sell agreement'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--side <buy|sell>] [--entity <company name>] [--action <review|negotiate|sign-off>] [--deal-type <asset|stock|merger>]"
---

# Purchase Agreement Reviewer

Review and support negotiation of M&A purchase agreements (APA/SPA) for MBL portfolio company acquisitions and exits — ensuring that the economic and legal terms protect MBL's interests, the indemnification structure is appropriate, and closing conditions are achievable. The purchase agreement is the definitive legal document in any M&A transaction; once signed, it determines the final economics, the liability allocation, and the post-close obligations. Dr. Lewis reviews the purchase agreement for financial consistency and business logic; M&A counsel reviews for legal adequacy.

## When to Use
- An M&A transaction moves to the definitive agreement stage (post-LOI, post-diligence)
- M&A counsel circulates a first draft of the APA or SPA
- Purchase price adjustments need to be analyzed (NWC true-up; earn-out provisions)
- Matt Mathison needs to be briefed on the definitive agreement terms before signing

## Purchase Agreement Review Framework

```
CORE AGREEMENT SECTIONS:

  PURCHASE PRICE:
    Closing consideration: The amount paid at closing
    Purchase price adjustments:
      Net Working Capital (NWC) true-up:
        Estimated NWC at signing vs. Actual NWC at closing
        Post-close adjustment (typically 45-90 days after closing): True-up based on final balance sheet
        Dispute resolution: Neutral accountant if parties can't agree
        CRITICAL: Review the NWC definition carefully
          What is included in NWC? (Current assets − Current liabilities; specific items by definition)
          Disputes over NWC true-ups are the most common post-close disagreement
          If selling: Push for narrow NWC definition (fewer items included)
          If buying: Push for comprehensive NWC definition
      Indebtedness at closing: Seller's debt is deducted from purchase price
        Definition matters: What counts as "indebtedness"? Unfunded pension liabilities? Transaction bonuses?
      Cash at closing: Seller's cash is added to purchase price (or stays with seller — negotiate)
      
  EARN-OUTS (if applicable):
    Milestones: Revenue, EBITDA, or operational targets post-close
    Measurement: How is the metric calculated? Who decides?
    Dispute mechanism: Neutral accountant; arbitration
    Accounting standards: Must be specified (GAAP; consistent with historical practice)
    Buyer's covenant: Buyer must operate the business in a manner consistent with achieving earn-out targets
      (without this covenant, buyer can manage the business to avoid the earn-out)
    
  REPRESENTATIONS AND WARRANTIES:
    Seller's reps and warranties: Statements by seller about the business (factual representations)
    Categories:
      Fundamental reps: Title to assets/equity; authority to sign; no liens; capitalization
        Survive: Often for indefinite period or statute of limitations + 1 year
        Indemnification: Full dollar-for-dollar indemnification (no cap in most deals)
      Operational reps: Financial statements; compliance; IP; employment; contracts; litigation
        Survive: Typically 18-24 months post-close
        Indemnification: Capped (typically 10-15% of enterprise value)
      Special reps: Tax; environmental; healthcare compliance (HIPAA for Allevio); O&G (for HIVE)
        Survive: Until statute of limitations expires for the underlying obligation
        
  INDEMNIFICATION:
    Survival period: How long after closing can buyer make claims?
    Deductible / Basket: Buyer cannot claim indemnification until losses exceed the basket
      Tipping basket: Once losses exceed basket, buyer can claim from dollar one
      Deductible basket: Buyer can only claim losses above the basket (most favorable for seller)
      Basket amount: Typically 0.5-1% of enterprise value
    Cap: Maximum indemnification obligation of seller
      Typical cap (operational reps): 10-15% of EV (protected by RWI if in place)
      Fundamental reps: Often 100% of EV or uncapped
    Escrow: Portion of purchase price held in escrow to secure indemnification
      With RWI: Typically 1-3% of EV escrow for fundamental reps
      Without RWI: Typically 10-15% escrow for all reps (retained for 18-24 months)
      
  CLOSING CONDITIONS:
    Conditions precedent to buyer's obligation to close:
      □ Seller's reps and warranties true in all material respects
      □ No material adverse change (MAC/MAE) since signing
      □ Third-party consents obtained (change-of-control provisions)
      □ Regulatory approvals (HSR if required; industry-specific)
      □ No pending litigation that would constitute a MAC
    Conditions precedent to seller's obligation to close:
      □ Buyer's payment of purchase price
      □ Buyer's reps and warranties true in all material respects
      
  MATERIAL ADVERSE CHANGE (MAC/MAE):
    Definition critical: What events constitute a MAC that allows buyer to walk away?
    Seller seeks to exclude: General economic conditions; industry-wide conditions; pandemics; acts of war
    Buyer seeks to include: Any event that has a material adverse effect on the specific business
    HIVE consideration: WTI price drop — confirm whether a dramatic price drop is a MAC
      Seller's preferred position: Oil price decline is a "general economic condition" → excluded from MAC
      
  POST-CLOSING COVENANTS:
    Non-compete: Seller (and key individuals) cannot compete for X years in the same geography
      Typical: 2-3 years; same geographic area as the business
      Reasonableness: Must be reasonable in scope, duration, and geography to be enforceable
    Non-solicitation: Seller cannot solicit customers or employees for X years
    Transition services: Seller may agree to provide transition assistance post-close
    Founder/management employment: Key personnel agreements (keep key people post-close)
```

## Output Format

```markdown
# Purchase Agreement Review — [Deal Name]
**Transaction:** [Entity] [acquired by / acquiring] [Counterparty] | **Date:** [Date]
**Deal value:** $[X]M | **Structure:** [Asset / Stock / Merger] | **Side:** [Buyer / Seller]
**M&A counsel:** [Firm] | **Reviewed by:** Dr. Lewis

---

## Economic Terms Confirmation

| Term | Agreement | LOI/Model | Consistent? |
|------|----------|----------|------------|
| Enterprise value | $[X]M | $[X]M | ✅ / ❌ |
| NWC peg | $[X]K | $[X]K | ✅ / ❌ — [note if different] |
| Escrow | [X]% / RWI | [X]% | ✅ / ❌ |
| Earn-out | $[X]K over [X] years | Per LOI | ✅ / ❌ |

---

## Key Issues for Negotiation

| # | Issue | Current Draft | Recommended Position | Priority |
|---|-------|--------------|---------------------|---------|
| 1 | [Basket: tipping vs. deductible] | Tipping basket | Deductible basket (seller position) | High |
| 2 | [MAC definition: excludes oil price decline?] | Not explicitly excluded | Add WTI price decline exclusion | High (HIVE only) |
| 3 | [Non-compete: 5 years] | 5 years / all of Utah | Reduce to 3 years / Uinta Basin only | Medium |

---

## Matt Mathison Briefing

**Deal status:** Ready to sign / Key issues outstanding
**Recommended action:** Sign / Negotiate further
**Key risk:** [One sentence — most important remaining risk]
**Estimated close date:** [Date]
```

## Output Contract
- NWC true-up is a post-close cash adjustment — the NWC true-up is executed after closing based on the actual closing balance sheet; if the actual NWC is lower than the peg (the agreed target), the seller writes a check to the buyer; Dr. Lewis models the NWC adjustment scenarios using the company's trailing NWC data; if the peg was set at $350K but Dr. Lewis's analysis shows trailing NWC averages $380K, the company should expect to receive additional consideration post-close; if the peg was set above the trailing average, the company faces a post-close payment risk; the NWC model must be built before the agreement is signed, not after
- RWI changes the indemnification dynamic — representations and warranties insurance (RWI) transfers the seller's indemnification liability to an insurance carrier; with RWI, the seller's escrow can be reduced to a small amount (1-3% of EV for fundamental reps only); without RWI, the seller holds 10-15% of EV in escrow for 18-24 months; at current portfolio company values ($5-20M EV range), RWI is available and often economical; Dr. Lewis confirms whether RWI is part of the deal structure and adjusts the financial model accordingly
- MAC definition determines whether the buyer can walk — the Material Adverse Change clause is the buyer's "out" if something goes seriously wrong between signing and closing; the scope of the MAC definition determines whether the buyer can invoke it; for HIVE, a catastrophic WTI price decline between signing and closing is a realistic scenario; the HIVE sales team should ensure that an industry-wide oil price decline is explicitly excluded from the MAC definition (it is a general economic condition, not a company-specific event); without this exclusion, a buyer could potentially invoke MAC based on an oil market event that was not a company failure
- HITL required: Dr. Lewis reviews and models the economic terms; M&A counsel reviews and negotiates the legal terms; Matt Mathison approves and signs the definitive agreement; no definitive agreement is signed without Matt Mathison's explicit approval after the Dr. Lewis financial review and M&A counsel legal review; Dr. Lewis does not negotiate the purchase agreement directly — M&A counsel leads negotiations; Dr. Lewis provides the financial analysis that supports the negotiating position

## System Dependencies
- **Reads from:** LOI (agreed economic terms — compare against the definitive agreement for consistency); M&A counsel's draft APA/SPA; financial model (fpa-exit-value-model or fpa-ma-financial-support — NWC analysis; earn-out modeling); NWC trailing analysis (from QuickBooks — to confirm NWC peg accuracy); diligence findings (fpa-due-diligence-coordinator — any issues that affect reps or indemnification); RWI broker quote (if RWI is part of the deal)
- **Writes to:** Purchase agreement review memo (SharePoint/Legal/MBL/MA/[Deal]_PAReview.pdf); NWC model (analysis of trailing NWC vs. peg — in Excel); earn-out model (fpa-ma-financial-support); Matt Mathison deal brief for definitive agreement signing; post-close NWC adjustment calculation (true-up post-closing based on actual balance sheet)
- **HITL Required:** Dr. Lewis reviews and models; M&A counsel leads all legal review and negotiation; Matt Mathison must approve and sign the definitive agreement; no signing without Matt Mathison's explicit authorization; Dr. Lewis does not sign M&A agreements — authorized signatories only; any material deviation from the LOI terms requires Matt Mathison re-approval before the definitive agreement is signed

## Test Cases
1. **Golden path:** Allevio exit — SPA (stock purchase) with a strategic healthcare acquirer at $9.8M enterprise value → Dr. Lewis reviews the draft SPA: EV matches LOI ($9.8M ✅); NWC peg set at $280K — Dr. Lewis NWC model shows trailing NWC of $295K; if closing NWC is $295K, Allevio receives an additional $15K post-close ✅; Escrow: RWI confirmed; 2% escrow ($196K) for fundamental reps only ✅; Earn-out: none ✅; MAC definition: general economic conditions excluded; healthcare regulatory changes excluded ✅; Operational reps survival: 18 months ✅; HIPAA rep: specific; survives for 6 years (HIPAA statute of limitations) — appropriate; Non-compete: 3 years, state of Arizona — negotiate from 5 years (success); Basket: tipping basket — negotiate to deductible basket (partial success: $50K deductible basket agreed); M&A counsel confirms legal adequacy; Dr. Lewis confirms financial consistency; Matt Mathison briefed; Matt Mathison approves; SPA signed
2. **Edge case:** NWC peg dispute — buyer calculates NWC peg at $340K (higher than seller's $280K model) → Dr. Lewis analyzes: Buyer's peg calculation includes $65K of deferred revenue in current liabilities — seller's position is that deferred revenue is a timing item not a liability in the NWC definition; difference: $65K × acquisition EV multiple is a $65K purchase price reduction risk; Dr. Lewis and M&A counsel review the NWC definition in the SPA: "Net Working Capital" as defined excludes deferred revenue from current liabilities; seller's position is correct; buyer's peg calculation is wrong; M&A counsel sends a markup with the correction; after negotiation, peg agreed at $295K (seller position prevails on deferred revenue exclusion)
3. **Adversarial:** Buyer's M&A counsel sends a draft APA that includes a "material adverse change" clause which is drafted broadly enough that a 15% decline in HIVE's WTI realized price between signing and closing would constitute a MAC → Dr. Lewis flags immediately to Matt Mathison: "The MAC definition in the buyer's draft is too broad for HIVE's business. Under the current language, if WTI falls from $63.50 to $54 between signing and closing — a realistic scenario in the O&G market — the buyer could argue MAC and walk away from the deal. This is unacceptable. Our position: WTI price fluctuations are 'general economic conditions' specific to the oil and gas industry and must be explicitly excluded from the MAC definition. This is a standard position in O&G transactions; any experienced O&G buyer understands this. M&A counsel is inserting the exclusion into the next markup. If the buyer insists on including commodity price decline in MAC, we restructure the deal economics to account for the asymmetric risk they're creating." M&A counsel negotiates; exclusion included in final SPA

## Audit Log
All purchase agreement drafts retained (all versions, by markup round). Final executed SPA/APA retained permanently. NWC model and post-close adjustment calculations retained. Earn-out tracking records retained (through earn-out period + 5 years). Escrow release records retained. Matt Mathison approval records retained. M&A counsel engagement records retained.

## Deprecation
Retire when MBL Partners has a dedicated M&A team with in-house transaction counsel — with Dr. Lewis reviewing the financial economics and earn-out modeling, and M&A counsel leading all legal review and negotiation.
