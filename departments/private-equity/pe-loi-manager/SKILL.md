---
name: pe-loi-manager
description: "Draft, negotiate, and manage Letters of Intent for MBL Partners acquisitions. Use when the user says 'LOI', 'letter of intent', 'LOI draft', 'draft LOI', 'LOI terms', 'LOI negotiation', 'LOI price', 'LOI structure', 'LOI exclusivity', 'exclusivity period', 'exclusivity', 'exclusivity agreement', 'IOI', 'indication of interest', 'term sheet', 'term sheet draft', 'offer letter', 'non-binding offer', 'submit an offer', 'make an offer', 'purchase price', 'offer price', 'valuation offer', 'deal structure', 'deal terms', 'equity rollover', 'seller rollover', 'earnout', 'escrow', 'working capital adjustment', 'peg', 'working capital peg', 'purchase price adjustment', 'representations and warranties', 'rep and warranty', 'no-shop', 'no shop clause', 'exclusivity clause', 'break fee', 'reverse break fee', 'financing condition', 'conditions to closing', or 'LOI signed'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--action <draft|negotiate|review|sign|track>] [--focus <price|structure|exclusivity|conditions>] [--stage <ioi|loi|final>]"
---

# PE LOI Manager

Draft, negotiate, and manage Letters of Intent for MBL Partners acquisitions — structuring the offer, drafting the LOI with fund counsel, managing the negotiation with the seller or their banker, tracking the exclusivity period, and ensuring that key terms are documented cleanly before due diligence begins. The LOI is the most important document before the definitive agreement: it sets the price expectation, the structure, and the exclusivity terms; a poorly drafted LOI with ambiguous terms leads to disputes during due diligence and negotiation of the purchase agreement; LOI terms that are too aggressive result in the seller choosing another buyer; LOI terms that are too generous reduce MBL's negotiating leverage during due diligence. Every LOI requires Matt Mathison's approval before it is submitted.

## When to Use
- Investment thesis is approved and ready to submit an offer
- Negotiating LOI terms with a seller or banker
- Tracking the exclusivity period after LOI signing
- Managing working capital or earnout mechanics

## LOI Management Framework

```
MBL LOI STANDARD TERMS (baseline — negotiable per deal):

  PRICE AND STRUCTURE:
    Purchase price: EV (Enterprise Value) basis — total consideration before adjustments
    Price determination: typically EV/EBITDA multiple applied to trailing 12-month EBITDA
      or EV/Revenue multiple for early-stage or high-growth businesses
    Deal structure: asset purchase (preferred for tax step-up) vs. stock purchase
    Equity rollover: if founder retains equity, typical range is 10-20% of post-close equity
    Earnout: only if there's a clear revenue/EBITDA metric; max 20% of total consideration
    
  WORKING CAPITAL ADJUSTMENT:
    Peg: normalized working capital (accounts receivable + inventory - accounts payable)
    Mechanism: dollar-for-dollar adjustment at closing based on actual vs. peg
    Collar: typically ±$[X] collar around the peg (immaterial differences netted)
    
  EXCLUSIVITY:
    Standard period: 45-60 days for full due diligence
    No-shop clause: seller cannot solicit or accept other offers during exclusivity
    Break fee: if MBL walks without a material breach or material adverse change (not standard in LMM; include if seller demands)
    Extension: right to request one 15-30 day extension if due diligence is not complete
    
  CONDITIONS TO CLOSING (listed in LOI):
    Completion of satisfactory due diligence
    Execution of definitive purchase agreement
    No material adverse change in business
    Regulatory approvals (if required — healthcare, energy may have state approvals)
    Financing (if MBL is using debt — lender commitment required)
    
  REPRESENTATIONS AND WARRANTIES:
    List key reps/warranties expected in purchase agreement (will be negotiated post-LOI)
    Flag any known issues that will require specific reps (employee litigation; environmental)
    R&W insurance: consider for deals >$10M EV (reduces escrow; provides LP protection)
    
  NON-BINDING NATURE:
    LOI is non-binding except for: exclusivity; confidentiality; expense provisions
    Binding provisions must be clearly identified
    Both parties acknowledge non-binding status in writing

LOI NEGOTIATION FRAMEWORK:

  PRICE NEGOTIATION:
    Anchor: submit at the top of the fair range (not the aspirational maximum)
    Rationale: provide specific valuation methodology (not just "we applied 5x EBITDA")
    Flexibility: identify in advance which terms are movable and which are not
    Walk-away: know the maximum price Matt Mathison will approve before submitting
    
  STRUCTURE NEGOTIATION:
    Asset vs. stock: MBL prefers asset purchase (tax basis step-up; cleaner liability)
    Seller preference: often stock purchase (capital gains treatment for seller)
    Compromise: stock purchase with specific representations; or asset purchase with transition support
    Earnout: use sparingly; only with clear metrics; seller must be able to influence the metric
    
  EXCLUSIVITY NEGOTIATION:
    60 days is the standard ask; sellers and bankers will push for 45 days
    Dr. Lewis's target: 60 days for a diligence-intensive business (healthcare; energy)
    30-day extension right is important; do not give it up without something in return
    
  ESCROW:
    Standard: 10-15% of purchase price in escrow for 12-18 months post-closing
    Indemnification support: escrow is the primary source of indemnification for reps/warranties

EXCLUSIVITY PERIOD TRACKING:

  After LOI is signed:
    Day 0: exclusivity starts; DD initiated (pe-diligence-coordinator)
    Day 30: DD milestone check — are we on track?
    Day 45: exclusivity midpoint — any material issues found?
    Day 55 (if 60-day exclusivity): request extension if needed
    Day 60 (or last day): definitive agreement signed or extend/exit
    
  CRITICAL: exclusivity expiring without a signed definitive agreement → seller can market to other buyers
  → Matt Mathison must be briefed 2 weeks before exclusivity expiry on status
```

## Output Format

```markdown
# LOI Summary — [Company Name] — [Date]
**Status:** [Draft / Submitted / Under Negotiation / Signed] | **Approved by:** Matt Mathison

---

## Key LOI Terms

| Term | MBL Position | Seller Response | Status |
|------|-------------|----------------|--------|
| Purchase price | $[X]M EV | $[X]M EV | Negotiating |
| Structure | Asset purchase | Stock purchase | To resolve |
| Exclusivity | 60 days | 45 days | To resolve |
| Working capital peg | $[X] | TBD | Pending DD |
| Escrow | 12.5% / 18 months | To be negotiated | Pre-DD |
| Earnout | None | $[X]M over 2 years | Rejected |

---

## Exclusivity Tracker (post-signing)

**Exclusivity start:** [Date] | **Exclusivity end:** [Date] | **Days remaining:** [N]

| Milestone | Target date | Status |
|-----------|------------|--------|
| Data room access | [Date] | ✅ |
| Financial DD complete | [Date] | ⏳ |
| Legal DD complete | [Date] | ⏳ |
| Purchase agreement draft | [Date] | — |
| Closing | [Date] | — |
```

## Output Contract
- Matt Mathison approves the price before submission — the LOI price is the anchor for all subsequent negotiation; once submitted, the price is very difficult to reduce without deal-threatening credibility damage; Dr. Lewis models the deal economics at different price points and presents Matt with a recommended range and a walk-away number before the LOI is drafted; Matt approves the submission price and the walk-away threshold; Dr. Lewis does not submit a price that Matt has not approved; if the negotiation pushes above Matt's approved ceiling, Dr. Lewis pauses and calls Matt before responding
- LOI exclusivity is tracked daily — the exclusivity period is finite and non-renewable without seller agreement; every day of exclusivity that passes without DD progress is a day closer to losing exclusivity and potentially the deal; Dr. Lewis initiates DD immediately on Day 0 of exclusivity and tracks progress daily against the plan; Matt Mathison is briefed at the exclusivity midpoint (Day 30 of a 60-day period) on DD status and any risks to completing on time
- Earnouts are used only when they solve a specific problem — earnouts are the most litigated element of PE purchase agreements; they create perverse incentives (management manages for the earnout metric rather than long-term health); they are expensive to enforce; Dr. Lewis recommends earnouts only when: (1) there is a genuine, measurable uncertainty in the business value; (2) the seller is the best person to resolve that uncertainty; (3) the earnout metric can be calculated objectively from audited financials; and (4) the seller agrees to MBL's protective covenants during the earnout period
- HITL required: every LOI submission → Matt Mathison written approval of price and key terms; any price negotiation above the approved ceiling → Matt Mathison call before responding; earnout inclusion → Matt Mathison explicit approval; any deviation from standard exclusivity terms → Matt awareness; exclusivity extension request → Matt awareness; deal walking away (killing the deal post-LOI) → Matt Mathison decision; R&W insurance engagement → Matt awareness

## System Dependencies
- **Reads from:** pe-deal-thesis-builder (approved thesis and recommended terms); pe-deal-pipeline-manager (deal stage and context); fund counsel (LOI drafting; legal review); pe-sensitivity-analyzer (price/structure scenarios); comparable transaction data (pricing benchmarks)
- **Writes to:** LOI documents (SharePoint → Deals → [Company] → LOI); pe-deal-pipeline-manager (Stage 5 update after signing); pe-diligence-coordinator (exclusivity start date; DD initiation); Matt Mathison notifications (LOI submitted; signed; negotiation status; exclusivity milestones); fund counsel instructions (drafting; negotiation)
- **HITL Required:** LOI price submission → Matt approval; price negotiation above ceiling → Matt call; earnout → Matt explicit approval; deviation from standard terms → Matt awareness; exclusivity extension → Matt awareness; killing deal post-LOI → Matt decision; R&W insurance → Matt awareness

## Test Cases
1. **Golden path:** Thesis approved. Dr. Lewis models the deal at $10.5M, $11M, $11.5M EV. Recommended LOI price: $11M. Walk-away: $12M. Matt approves the $11M offer with $12M ceiling. Fund counsel drafts LOI: asset purchase; 60-day exclusivity; 12.5% escrow / 18 months; no earnout; standard reps. Dr. Lewis submits to banker. Banker responds: seller wants $12.5M. Dr. Lewis calls Matt: seller above our ceiling. Matt decides to counter at $11.5M final offer. Counter accepted. LOI signed at $11.5M. DD initiated Day 0.
2. **Edge case:** The seller's banker insists on a 30-day exclusivity period (vs. MBL's 60-day request) citing a "fast-moving process" with other buyers → Dr. Lewis: "30 days isn't workable for a healthcare business — we need financial diligence; legal diligence (including OIG/LEIE and BAA review); and operational diligence on the clinical programs. That's a 45-60 day process done properly. My counter: 45 days with a mutual right to extend by 15 days if both parties agree we're making progress. This protects the seller from an infinite delay while giving us the time to do it right. If the seller accepts a buyer on 30-day exclusivity, that buyer will either rush the DD or miss something important — and MBL isn't willing to take that risk."
3. **Adversarial:** After LOI signing, the seller requests a price increase from $11.5M to $13M because "they received another offer" → Dr. Lewis: "An LOI creates an exclusivity obligation — the seller agreed not to negotiate with other parties during this period. If they've received (or are creating the appearance of) another offer during exclusivity, that's a potential breach of the LOI. I'm briefing Matt Mathison immediately and involving fund counsel to assess our options. MBL's position: we signed an LOI at $11.5M; we are proceeding on the agreed terms; we will not renegotiate price upward based on alleged competing offers during exclusivity. If the seller wants to breach the LOI, they may owe us a break fee. I will not respond to the seller directly until Matt and fund counsel have weighed in."

## Audit Log
All LOI drafts retained (with version history; negotiation correspondence). Matt Mathison approval records retained. Signed LOIs retained permanently. Exclusivity period tracking records retained. DD milestone tracking retained. LOI to purchase agreement negotiation records retained.

## Deprecation
LOI management is active during the fund's investment period. Standard LOI terms are reviewed annually with fund counsel for market consistency.
