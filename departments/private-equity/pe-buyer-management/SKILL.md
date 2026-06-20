---
name: pe-buyer-management
description: "Track and manage buyer relationships during MBL Partners exit processes. Use when the user says 'buyer management', 'buyer tracking', 'buyer list', 'buyer universe', 'potential buyers', 'strategic buyers', 'PE buyers', 'financial buyers', 'buyer outreach', 'buyer contact', 'buyer interest', 'buyer qualification', 'buyer NDA', 'NDA management exit', 'buyer CIM', 'buyer engagement', 'buyer questions', 'buyer DD', 'buyer due diligence', 'buyer request', 'buyer data request', 'buyer access', 'buyer visit', 'site visit buyer', 'management presentation buyer', 'IOI', 'indication of interest', 'bid management', 'bid tracker', 'bid received', 'bid evaluation', 'compare bids', 'bid analysis', 'winning bidder', 'selected buyer', 'exclusivity buyer', 'buyer in exclusivity', 'preferred buyer', 'backup buyer', 'second choice buyer', 'buyer walked', 'buyer dropped out', 'buyer withdrew', 'buyer concern', 'buyer question', 'buyer reference', 'buyer reputation', 'buyer track record', 'buyer integration track record', 'culture fit buyer', or 'THRIVE filter buyer'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|hive|column6>] [--action <track|qualify|evaluate|select|communicate>] [--buyer-type <strategic|pe|both>] [--stage <nda|cim|presentation|ioi|loi|dd|close>]"
---

# PE Buyer Management

Track and manage buyer relationships during MBL Partners exit processes — maintaining the buyer tracker, qualifying buyer fit, managing buyer communications and information access, evaluating bids, and helping Matt Mathison select the winning buyer. Buyer management is not just logistics — it is a sales and relationship process; buyers who feel well-managed and respected through the process maintain their bid discipline; buyers who feel disorganized or disrespected reduce their bids or drop out; the quality of the buyer relationship during the process often determines whether the winning bid holds through due diligence or is renegotiated downward.

## When to Use
- Tracking buyer activity during an active exit process
- Evaluating and comparing bids
- Managing buyer information requests
- Matt Mathison asks "where are the buyers?"

## Buyer Management Framework

```
BUYER UNIVERSE DEVELOPMENT:

  BUYER TYPES:
    Strategic buyers: companies that acquire for operational synergies
      Advantages: often pay higher multiples (synergies justify premium)
      Disadvantages: more information risk (competitor or partner); integration uncertainty
    PE buyers: PE funds acquiring for financial returns
      Advantages: process-familiar; execution-efficient; often faster close
      Disadvantages: typically lower multiples than strategics (financial vs. synergy buyer)
      
  BUYER IDENTIFICATION:
    Banker (primary): identifies buyer universe from sector expertise and relationships
    Dr. Lewis: adds/removes buyers based on MBL relationship awareness and conflict considerations
    Matt Mathison: approves final buyer universe; vetoes any buyer for cause
    
  BUYER QUALIFICATION:
    Financial capacity: can the buyer fund the transaction?
    Strategic fit: does this acquisition make sense for the buyer's strategy?
    Cultural fit: THRIVE filter applied to buyer's stated integration approach
    Track record: how have they treated prior acquisitions? (employee outcomes; management retention)
    Process commitment: is the buyer serious or kicking tires?

BUYER TRACKER (maintain throughout process):

  PER BUYER RECORD:
    Company name; buyer type (strategic / PE)
    Primary contact: name; title; email; phone
    NDA: signed date; expiration
    CIM: date received; any questions asked
    Management presentation: date; attendees; Matt Mathison's assessment
    IOI: date received; preliminary price range; structure notes
    Final bid (LOI): date received; price; structure; conditions; exclusivity requested
    Status: Active / Declined / Withdrew / Selected / Backup
    
  BUYER HEALTH SIGNALS:
    Strong buyer signals: prompt NDA; detailed questions; senior attendees at mgmt pres;
      multiple rounds of DD questions; large data room download
    Weak buyer signals: slow NDA; minimal engagement; junior attendees; few data requests
    Warning signals: requesting information outside normal DD scope; asking for specific
      employee or customer data that seems exploratory rather than DD-focused

BID EVALUATION FRAMEWORK:

  FINANCIAL TERMS:
    Headline price (EV)
    Structure: cash at close vs. earnout vs. rollover equity
    Escrow: amount and duration
    Earnout structure (if any): base; milestones; duration; MBL ability to influence
    Working capital peg: consistent with our normalized WC?
    
  BUYER QUALITY FACTORS (for Matt Mathison's selection decision):
    Track record with prior acquisitions (specifically: employee treatment; management retention)
    Integration plan (stated): is it consistent with protecting Allevio/HIVE/Column6 customers?
    Cultural alignment: do they respect the business they're acquiring?
    Closing certainty: strong balance sheet; no financing condition; clean process reputation
    
  RECOMMENDED SELECTION CRITERIA (weighted):
    Headline price (50%): all-cash; no earnout is best
    Closing certainty (30%): proven track record; no financing risk; process efficiency
    Cultural fit (20%): THRIVE alignment; employee and customer outcome intention
    
  THRIVE FILTER ON BUYERS:
    Truth: do their stated intentions match their track record at prior acquisitions?
    Hustle: is the buyer moving with appropriate urgency, or will this drag out?
    Respect: how do they treat our management team during the process?
    Integrity: any track record of renegotiating after exclusivity without a legitimate DD reason?
    Value: does the buyer's ownership of this entity create more value than the alternatives?
    Enjoy: would the entity management team and employees be well-served by this buyer?

BUYER COMMUNICATION MANAGEMENT:

  ALL BUYER COMMUNICATIONS GO THROUGH THE BANKER:
    Direct communication between Dr. Lewis and buyers: only with banker present or cc'd
    Direct communication between Matt Mathison and buyers: at management presentations and
    final negotiations only
    Communications through Dr. Lewis without banker: emergency situations only (buyer threatening to walk)
    
  DATA ROOM REQUESTS:
    All buyer data requests go through the data room (no email attachments)
    Dr. Lewis reviews every request before fulfilling
    Requests that seem designed to extract confidential information (competitor intelligence) 
    rather than DD → flag to banker and Matt Mathison
    Allevio: NO PHI in the data room — aggregate data only
```

## Output Format

```markdown
# Buyer Tracker — [Entity] — [Date]
**Process phase:** [Phase] | **Prepared by:** Dr. Lewis | **For:** Matt Mathison

---

## Buyer Status Summary

| Buyer | Type | NDA | CIM | Mgmt pres | IOI | Final bid | Status |
|-------|------|-----|-----|-----------|-----|----------|--------|
| [Strategic A] | Strategic | ✅ | ✅ | [Date] | $[X]M EV | $[X]M EV | Active |
| [PE B] | PE | ✅ | ✅ | [Date] | $[X]M EV | TBD | Active |
| [Strategic C] | Strategic | ✅ | ✅ | [Date] | $[X]M EV | Declined | Out |
| [PE D] | PE | ✅ | ✅ | — | — | — | Slow signals |

---

## Bid Analysis (Matt Mathison decision required)

| Buyer | Headline price | Structure | Earnout | Escrow | Certainty | THRIVE | Rec |
|-------|--------------|---------|---------|--------|----------|--------|-----|
| Strategic A | $[X]M | 85% cash / 15% equity | None | 10% / 18mo | ✅ High | ✅ | ⭐ Recommended |
| PE B | $[X]M | 100% cash | $[X]M earnout | 12.5% / 24mo | ✅ High | ⚠️ | Alternate |

**Dr. Lewis recommendation:** [Strategic A] at $[X]M — higher price; clean cash structure; strong employee integration track record. Awaiting Matt Mathison selection.
```

## Output Contract
- Buyer selection is Matt Mathison's decision, not Dr. Lewis's — Dr. Lewis provides the analysis, the comparison, and a recommendation; Matt Mathison makes the selection; if Matt disagrees with Dr. Lewis's recommendation, that is absolutely his right; Dr. Lewis documents the recommendation and the final selection decision (with Matt's rationale) for the record; a buyer selection decision made by Dr. Lewis alone without Matt's approval creates a governance gap in the most consequential transaction in the investment cycle
- Buyer communications are disciplined and filtered — buyers in a competitive process learn through the process (through tone, response timing, and data access patterns) whether the seller is pressured to transact; a seller who responds to every buyer inquiry within 2 hours and shares every document requested signals desperation; Dr. Lewis manages response timing and data access through the banker to maintain a controlled, confident process posture; not every buyer request is fulfilled immediately; some information is appropriately withheld until the buyer advances to a later stage
- The THRIVE filter applies to buyer selection, not just to management teams — a buyer who has a track record of slashing headcount, breaking customer relationships, and abandoning the acquired entity's culture post-close fails the THRIVE filter even if their bid is higher; Dr. Lewis researches each final buyer's prior acquisitions and prepares a buyer track record summary for Matt Mathison; if a buyer's track record is clearly misaligned with THRIVE values, that is a factor in the selection — MBL bears some responsibility for the outcomes created by its exit choices
- HITL required: buyer universe → Matt Mathison approves (includes removals); buyer advancing to management presentations → Matt Mathison approves; data room access for unusual requests → Matt Mathison awareness; final bid comparison → Matt Mathison makes selection; exclusivity granted → Matt Mathison approves buyer and terms; any buyer threatening to walk → Matt Mathison briefing immediately; buyer requesting PHI from Allevio → refuse immediately and notify Matt

## System Dependencies
- **Reads from:** pe-exit-process-manager (process stage and milestone context); pe-exit-readiness-assessor (entity strengths to highlight to buyers); pe-exit-value-optimizer (value narrative for buyer conversations); banker (buyer universe; IOI tracking; bid management); data room (buyer access records and document requests)
- **Writes to:** Buyer tracker (SharePoint → Portfolio → [Entity] → Exit → BuyerTracker); Matt Mathison bid comparison memo; banker instructions (data room access; buyer communication approvals); pe-exit-process-manager (buyer status updates); THRIVE buyer assessments
- **HITL Required:** Buyer universe → Matt approves; buyer to management presentations → Matt approves; unusual data requests → Matt awareness; final buyer selection → Matt decides; exclusivity → Matt approves; buyer threatening to walk → Matt immediately; PHI request from Allevio buyer → refuse + notify Matt

## Test Cases
1. **Golden path:** Allevio exit process. 8 buyers reach IOI stage. Dr. Lewis reviews IOIs: strategic buyers range $33M-$39M; PE buyers range $28M-$32M. Dr. Lewis prepares bid comparison: Strategic A ($38.5M cash; strong integration track record; references from 3 prior acquisitions confirm management team retention); Strategic B ($36M with $4M earnout; track record mixed on employee retention). Dr. Lewis THRIVE assessment: Strategic A: strong on all 6 values. Strategic B: Integrity concern (prior acquisition — management team publicly disclosed they felt misled during the process). Matt Mathison selects Strategic A at $38.5M. Exclusivity granted. Dr. Lewis notifies banker. DD phase begins.
2. **Edge case:** A potential strategic buyer sends a data room request for the complete list of Allevio's employer group contracts including member enrollment numbers → Dr. Lewis: "This request goes beyond standard financial DD and enters PHI-adjacent territory. The employer group contracts are appropriate for data room inclusion (they establish the revenue relationships). However, the member enrollment numbers by employer group are aggregate commercial data that I'll include in the data room as a summary table (total enrolled members by tier, not by employer group name). Individual employer group enrollment numbers are sensitive competitive data that could be used to approach our employer groups. I'm discussing with the banker whether to fulfill this modified request or to ask the buyer to clarify their need. Matt: FYI on this buyer request — I'm managing it through the banker."
3. **Adversarial:** The winning buyer tries to renegotiate the price $2.5M downward during exclusivity, citing a DD finding that was actually in the CIM → Dr. Lewis: "The DD finding [the buyer] cited was disclosed on page 14 of the CIM and was clearly visible before they submitted their bid. A $2.5M price reduction for a disclosed fact is not a legitimate DD finding — it's a renegotiation attempt using exclusivity as leverage. Matt Mathison briefing required immediately. Our options: (1) Hold firm on price and explain why the finding was disclosed pre-bid; (2) Offer a small concession (e.g., additional escrow or specific indemnification) without a headline price reduction; (3) Break exclusivity and contact our backup buyer. I recommend option 1, with option 2 as a fallback. Matt: this is your call — I'll be ready to act within 24 hours."

## Audit Log
All buyer communications retained (through banker; with dates). Data room access records retained per buyer. IOI and bid records retained. Matt Mathison selection decision retained (with comparison memo and rationale). Buyer track record research retained. THRIVE buyer assessments retained. Exclusivity grant records retained.

## Deprecation
Buyer management is activated when a banker is engaged and runs through closing. Buyer records are retained permanently for the applicable investment. The THRIVE buyer assessment criteria are permanent and applied to every exit.
