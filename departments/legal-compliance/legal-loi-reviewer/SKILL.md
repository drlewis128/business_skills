---
name: legal-loi-reviewer
description: "Review and draft Letters of Intent for M&A transactions. Use when the user says 'LOI', 'letter of intent', 'term sheet', 'M&A term sheet', 'acquisition term sheet', 'deal term sheet', 'indication of interest', 'IOI', 'offer letter for acquisition', 'buy the company', 'sell the company', 'M&A offer', 'acquisition offer', 'deal terms', 'preliminary agreement', 'non-binding agreement', 'exclusivity', 'M&A exclusivity', 'no-shop provision', 'deal structure terms', or 'preliminary deal terms'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--side <buy|sell>] [--entity <company name>] [--action <review|draft|negotiate>] [--deal-type <asset|stock|merger>]"
---

# LOI Reviewer

Review and negotiate Letters of Intent (LOIs) for M&A transactions involving MBL portfolio companies — ensuring that the LOI's binding provisions protect MBL's interests, the key economic terms are properly structured, and no inadvertent obligations are created before the definitive agreement is negotiated. The LOI is the first legally significant document in an M&A transaction; while mostly non-binding, the economics and structure negotiated in the LOI typically set the floor for the definitive agreement — what is conceded in the LOI is difficult to win back later. Dr. Lewis reviews all LOIs; M&A counsel is engaged for all but the simplest transactions.

## When to Use
- MBL or a portfolio company receives an LOI from a potential acquirer
- MBL is making an offer to acquire a target company (Morgan Sills Allevio M&A pipeline)
- A potential transaction is moving from exploration to offer stage
- An LOI has been signed and the terms need to be briefed to Matt Mathison

## LOI Review Framework

```
LOI STRUCTURE — BINDING vs. NON-BINDING:
  The LOI is typically a "mostly non-binding" document:
    NON-BINDING SECTIONS (customary):
      Purchase price and structure
      Due diligence scope and timeline
      Closing conditions
      Representations and warranties description
      Post-closing arrangements (employment; earn-out; non-compete)
    BINDING SECTIONS (customary — enforce even if deal doesn't close):
      Exclusivity / No-Shop: The most important binding provision
      Confidentiality: Information shared during diligence must remain confidential
      Expenses: Each party bears own expenses unless otherwise agreed
      Governing law: Which state's law applies to the LOI
    WARNING: Some LOIs include additional binding provisions (break-up fees; deposit; access rights)
      Review every provision to determine binding status before signing

KEY ECONOMIC TERMS TO EVALUATE:

  Purchase Price:
    Enterprise value: The value being placed on the business (typically a multiple of EBITDA or revenue)
    Check: Does the enterprise value reflect the EBITDA used and the multiple?
      Enterprise value = EBITDA × multiple (confirm the multiple is consistent with discussion)
    Equity value: Enterprise value − Net debt
    Implied valuation multiple: EV/LTM EBITDA — confirm it's within the sector benchmark range
      Allevio healthcare MSO: 7-10× EBITDA
      HIVE O&G: 4-6× EBITDA
      Column6 CTV/Media: 6-9× EBITDA
      
  Deal Structure:
    Asset purchase vs. stock purchase:
      Asset purchase: Buyer selects which assets and liabilities to acquire; seller retains entity
        Seller prefers stock (avoids asset transfer complexity; gets capital gains treatment)
        Buyer prefers asset (picks assets; doesn't inherit unknown liabilities)
      Stock purchase: Buyer acquires the entity (and all its liabilities)
    Tax implications: Critical decision — must be reviewed by tax counsel
    
  Net Working Capital (NWC) Mechanism:
    Standard: Transaction price set based on a "NWC peg" (target NWC amount)
    If actual NWC at closing > peg → buyer pays more; if < peg → buyer pays less
    The NWC definition is critical: What's included? What's excluded?
    The peg: Often based on 12-month trailing average NWC; negotiate this carefully
    Flag: "Normalized" NWC provisions — what adjustments are assumed?
    
  Earn-outs:
    Earn-out = additional consideration paid if post-close performance targets are met
    Seller perspective: Earn-outs are risky — buyer controls the business post-close and may manage to avoid earn-out triggers
    Position: Accept earn-out only if: (a) it's a small % of total consideration; (b) targets are objective (revenue, not EBITDA); (c) buyer has limited ability to manipulate results
    Earn-out accounting: Must be fair value at close (creates complexity)
    
  Representations and Warranties Insurance (RWI):
    Standard in most PE-backed deals today
    Buyer gets RWI policy; seller escrow is reduced (or eliminated)
    Seller retains liability for fundamental reps and fraud
    If buyer is requiring large seller escrow without RWI → flag for negotiation
    
EXCLUSIVITY / NO-SHOP:
  This is the highest-stakes binding provision in the LOI
  Exclusivity period: During this period, the seller cannot negotiate with other buyers
  Typical: 45-60 days from LOI signing
  MBL position:
    As seller: Minimize exclusivity period; require "fiduciary out" for superior offer
    As buyer: Maximize exclusivity period (protect deal investment); no fiduciary out
  Fee for breaking exclusivity: Some LOIs include a break-up fee if the seller terminates
    Acceptable as buyer: up to 2-3% of enterprise value
    Acceptable as seller: Avoid; if required, cap at 1-2% and include broad fiduciary out
    
DUE DILIGENCE PROVISIONS:
  Access: Buyer must have access to books, records, employees, facilities
  Timeline: Standard is 45-60 days for financial and legal DD; longer for complex deals
  Scope: Does the LOI define what due diligence covers? Should align with definitive agreement reps
```

## Output Format

```markdown
# LOI Review — [Target/Acquirer] | [Date]
**Transaction:** [Acquire / Sell] [Entity] | **Deal value:** $[X]M enterprise value
**Deal structure:** [Asset / Stock / Merger] | **Side:** [Buyer / Seller]
**Reviewed by:** Dr. Lewis | **M&A counsel:** [Engaged / To be engaged]

---

## Economic Terms Summary

| Term | LOI Provision | MBL Assessment |
|------|--------------|---------------|
| Enterprise Value | $[X]M | [Within/above/below sector benchmark — explain] |
| Implied multiple | [X.X]× EBITDA | [Benchmark: X-X× for this sector] |
| Deal structure | [Asset / Stock] | [Preferred? Tax implications — engage counsel] |
| NWC mechanism | [Yes / No — peg of $X] | [Acceptable / Needs negotiation] |
| Earn-out | [Yes / No — $X over X years on EBITDA] | [Accept/Reject with rationale] |
| Escrow / RWI | [X% escrow / RWI policy] | [Acceptable / Negotiate] |

---

## Binding Provisions Review

| Provision | Term | MBL Assessment | Action |
|-----------|------|---------------|--------|
| Exclusivity | [X days from signing] | [Acceptable/Too long] | [Negotiate to X days] |
| Confidentiality | [2 years] | ✅ Standard | None |
| Expenses | [Each party pays own] | ✅ Standard | None |
| Break-up fee | [X% of EV] | [Too high / Acceptable] | [Negotiate down/out] |

---

## Key Issues and Recommendations

| Priority | Issue | Recommended Position |
|----------|-------|---------------------|
| 1 | [Earn-out is 40% of consideration — too large] | Reduce to <20%; change metric to revenue (not EBITDA) |
| 2 | [Exclusivity is 90 days — too long] | Reduce to 45 days with 15-day extension option |
| 3 | [No RWI mentioned; large escrow implied] | Require RWI as condition; reduce escrow to 1.5% fundamental reps only |

---

## Recommendation

**[SIGN / NEGOTIATE BEFORE SIGNING / DO NOT SIGN]**
[2-3 sentence rationale and next steps]

**M&A counsel required before signing:** Yes (for all deal structures)
```

## Output Contract
- Walk-away price is set before LOI signature — before MBL signs any LOI (as buyer or seller), Dr. Lewis and Matt Mathison agree on the walk-away price: the minimum (if selling) or maximum (if buying) at which MBL will proceed; once the LOI is signed, negotiating leverage diminishes significantly; if the buyer tries to re-trade the price in due diligence ("we found issues that justify a price reduction"), MBL needs to know in advance whether the walk-away price has been crossed; if it has, the deal ends; the walk-away price is determined by the financial model (fpa-exit-value-model or fpa-ma-financial-support) before the LOI; Dr. Lewis does not let the deal momentum substitute for disciplined walk-away analysis
- Exclusivity is a concession — from the seller's perspective, signing an exclusivity provision means taking the company off the market for 45-90 days while one buyer does due diligence; if the deal falls apart, the seller loses 45-90 days and must restart the process; for this reason, Dr. Lewis negotiates exclusivity carefully: shorter period (45 days preferred); clear definition of what "exclusivity" covers; fiduciary out for superior offers; and a break-up fee paid to the seller if the buyer walks without cause; from the buyer's perspective, exclusivity protects the significant investment of time and money in due diligence — Dr. Lewis negotiates for longer exclusivity as buyer
- The LOI controls the deal structure — every critical element of the definitive agreement (structure, price, NWC mechanism, reps scope, indemnification) is easier to negotiate favorably in the LOI than after it is signed; once an LOI is signed at a specific price and structure, the other side treats those as settled; if the LOI left an issue open ("to be negotiated"), the definitive agreement negotiation will be contentious; Dr. Lewis pushes to resolve key issues in the LOI, not defer them
- HITL required: Dr. Lewis reviews; Matt Mathison must approve any LOI before signature (no exceptions — the LOI commits MBL to a path); M&A counsel required for all but the most straightforward LOIs (LOI review by counsel costs $3-8K; discovering a bad provision after signing costs much more); Dr. Lewis does not sign LOIs — Matt Mathison or the authorized officer of the portfolio company signs; Dr. Lewis briefs Matt Mathison on every LOI before signature with a clear SIGN / NEGOTIATE / DO NOT SIGN recommendation

## System Dependencies
- **Reads from:** Current financial model for the target or seller entity (fpa-exit-value-model for seller; fpa-ma-financial-support for buyer); sector valuation benchmarks (Allevio 7-10× EBITDA; HIVE 4-6×; Column6 6-9×); Morgan Sills Allevio M&A pipeline (for Allevio acquisition LOIs); Matt Mathison deal parameters (what price range is acceptable?); M&A counsel retainer
- **Writes to:** LOI review memo (SharePoint/Legal/MBL/MA/[Deal Name]_LOI_Review.pdf); LOI negotiation position paper (specific redlines and rationale); Matt Mathison deal brief (economic terms, key issues, recommendation); M&A counsel engagement letter; post-LOI due diligence plan (what must be verified in DD to confirm the LOI price is supportable)
- **HITL Required:** Dr. Lewis reviews; Matt Mathison approves all LOIs before signature; M&A counsel required for LOI review and drafting; Dr. Lewis does not execute LOIs — authorized signatories only; Dr. Lewis briefs Matt Mathison and provides a written recommendation memo before any LOI signing

## Test Cases
1. **Golden path:** MBL receives an unsolicited LOI from a strategic acquirer for Allevio — $9.8M enterprise value, asset purchase, 45-day exclusivity → Dr. Lewis reviews: LTM Allevio EBITDA is approximately $852K; implied multiple is $9.8M ÷ $852K = 11.5× — above the 7-10× benchmark; Strong price; Asset purchase — tax implications (Allevio gets ordinary income on some assets; Matt Mathison and tax counsel must advise); NWC peg not defined in LOI — flag: "NWC mechanism must be negotiated before signing — an undefined NWC peg is a buyer's tactic that will result in a post-signing price reduction negotiation"; earn-out: None — good; escrow: 10% for 18 months — negotiate to 5% with RWI; exclusivity: 45 days — acceptable; Recommendation: NEGOTIATE — price is strong; asset purchase structure needs tax analysis; NWC peg must be defined; escrow must be reduced. Matt Mathison briefed; M&A counsel engaged; counter-LOI with NWC peg included; RWI requirement added
2. **Edge case:** MBL is making an LOI offer for a small Allevio bolt-on acquisition ($2.2M EV) — the founder-seller insists on a stock purchase (for capital gains treatment) → Dr. Lewis advises: "The seller's preference for stock purchase is understandable — it gives them capital gains treatment on the proceeds. From MBL's perspective, stock purchase means we inherit all of the company's liabilities, including any unknown liabilities (unpaid taxes, litigation, HIPAA violations). For a $2.2M deal, we need to: (1) Confirm the company is clean (legal and financial due diligence focused on liabilities); (2) Negotiate strong representations and warranties with indemnification; (3) Use a larger escrow (12-15% for 24 months) because there's no RWI available at this deal size; (4) Price the deal accordingly (MBL is taking more risk with stock purchase). If DD reveals material unknown liabilities, we can restructure to asset purchase. The seller may resist, but it's a negotiation." M&A counsel advises on structure; LOI drafted with stock purchase but strong indemnification provisions
3. **Adversarial:** A buyer's LOI for HIVE contains a 90-day exclusivity period, a $500K break-up fee payable by HIVE if it "elects not to proceed," and no fiduciary out → Dr. Lewis flags: "This exclusivity provision is not acceptable as written. The 90-day exclusivity takes HIVE off the market for 3 months while one buyer does diligence — with $500K payable to the buyer if HIVE walks, regardless of reason. If WTI drops to $55/bbl during diligence and the deal economics change, HIVE could be walking away from a $500K payment. Our position: (1) Reduce exclusivity to 45 days; (2) Remove or dramatically reduce the break-up fee (acceptable at 1% of EV if buyer walks without cause; not acceptable if seller walks for any reason); (3) Add a fiduciary out for superior offers and a 'material adverse change in oil price' termination right; (4) Add a buyer break-up fee (if buyer walks without cause, buyer pays a fee to HIVE). Matt Mathison and M&A counsel must review before any response to the buyer."

## Audit Log
All LOI review memos retained by deal name and date. All executed LOIs retained permanently. Negotiation position papers retained. Matt Mathison briefing materials retained. M&A counsel engagement records retained. Any LOIs received but not executed retained (with the reason). Post-close reviews that reference LOI terms retained.

## Deprecation
Retire when MBL Partners has a dedicated M&A team or investment banker managing the transaction process — with Dr. Lewis reviewing LOIs for financial consistency and M&A counsel reviewing legal structure, and Matt Mathison approving all LOIs.
