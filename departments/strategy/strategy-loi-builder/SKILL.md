---
name: strategy-loi-builder
description: "Draft a Letter of Intent for an M&A acquisition. Use when the user says 'LOI', 'letter of intent', 'draft an LOI', 'write an LOI', 'offer letter', 'indication of interest', 'IOI', 'term sheet', 'acquisition offer', 'offer terms', 'purchase terms', 'make an offer', 'offer price', 'deal terms', 'draft our offer', or 'write the term sheet'."
metadata:
  version: 1.0.0
  tier: strategy
  owner: Dr. John Lewis
argument-hint: "[--target <company name>] [--price <$X or X× EBITDA>] [--structure <all-cash|earnout|equity-rollover>] [--exclusivity <days>]"
---

# LOI Builder

Draft Letters of Intent and Indications of Interest for MBL Partners acquisition targets — translating the deal thesis and economics into a formal written offer that initiates exclusive negotiation with the seller. The LOI is a critical document: it sets the price and structural terms that will define the final transaction, establishes exclusivity that prevents competitive bids, and signals to the seller that MBL is a credible and organized buyer. A poorly drafted LOI that fails to address key terms creates expensive renegotiations during purchase agreement; a strong LOI with clear terms accelerates to close.

## When to Use
- Matt Mathison has approved pursuing a deal — need to make a formal offer
- Responding to an indication of interest process run by a banker
- Moving from management meeting to exclusive negotiations
- Competitive process where we need to submit a bid

## LOI Framework

```
LOI components (MBL standard):

KEY ECONOMIC TERMS:
  Purchase price: Total enterprise value (EV); equity consideration (EV minus assumed debt)
    Methods: Fixed amount, or EBITDA multiple (e.g., "6.5× LTM EBITDA" — protects against EBITDA revision)
    Earnout: Deferred consideration tied to post-close performance (reduces upfront risk; adds execution complexity)
    Equity rollover: Seller retains minority equity stake (aligns seller post-close; reduces upfront cash)
    
  Working capital adjustment: Normalize working capital at close (typical: peg to trailing 12-month average)
  Net debt adjustment: Adjust price for cash + debt on balance sheet at close
  
STRUCTURE AND MECHANICS:
  Acquisition structure: Asset purchase (preferred — avoids inheriting unknown liabilities) vs. stock purchase
    Healthcare note: Asset purchase for Allevio tuck-ins (physician practice acquisitions) — critical to avoid
    inheriting Medicare/Medicaid billing exposure, malpractice claims, and unknown employment obligations
    
  Financing contingency: Is the offer contingent on financing? (Cash offers with no financing contingency = stronger)
  
EXCLUSIVITY:
  Period: 30-60 days standard; request sufficient time for diligence
  Scope: Seller agrees not to solicit or discuss other offers during exclusivity
  
DUE DILIGENCE CONDITIONS:
  Confirmatory diligence: LOI is subject to satisfactory diligence; defines what is diligenced
  Material adverse change: LOI conditioned on no material adverse change discovered in diligence
  
REGULATORY CONDITIONS:
  Allevio: Healthcare license transfer; CMS enrollment; any state regulatory approvals
  HIVE: UT DOGM permit transfer; environmental clearance
  
KEY COVENANTS:
  No-shop: Seller cannot pursue other buyers during exclusivity
  Confidentiality: All deal terms remain confidential
  Employee non-solicitation: During exclusivity, MBL does not recruit seller employees
  
TRANSITION:
  Management retention: Key employee commitment expected (or noted as a diligence item)
  Transition services: Seller provides transition assistance post-close (duration; compensation)
  
ATTORNEY REVIEW REQUIRED: Every LOI is reviewed by MBL's M&A attorney before delivery
  Reason: Tax structure, employment law (particularly California if any operations there), 
  regulatory conditions, and earnout enforceability must be reviewed; never deliver without counsel
```

## Output Format

```markdown
# Letter of Intent — [MBL Partner Entity] Proposed Acquisition of [Target Company]
**Date:** [Date]
**From:** MBL Partners, LLC / [Relevant Portfolio Entity]
**To:** [Seller Name(s)]
**RE:** Proposed Acquisition of [Target Company Name]

---

Dear [Seller Name]:

This letter of intent ("LOI") sets forth the general terms and conditions under which [MBL Entity / Acquiring entity] ("Buyer") proposes to acquire [Target Company Name] ("Company"). This LOI is intended to be a non-binding expression of intent, except for the sections marked as binding below (Exclusivity, Confidentiality, No-Shop, Expenses).

---

## 1. PURCHASE PRICE AND STRUCTURE

**Total Consideration:** $[X],000,000 (USD) [or: [X]× the Company's LTM EBITDA of $[X] as of [Date]]

**Breakdown:**
- Cash at close: $[X],000,000
- Earnout (if applicable): Up to $[X],000,000, payable [conditions — e.g., if Year 1 revenue exceeds $[X]M and Year 2 EBITDA exceeds $[X]M]
- Equity rollover (if applicable): [Seller retains [X]% equity in post-close entity]

**Working capital adjustment:** Purchase price adjusted at close for working capital above/below a normalized peg of $[X] (to be agreed in diligence).

**Net debt adjustment:** Purchase price adjusted for cash and debt on the Company's balance sheet at close.

---

## 2. ACQUISITION STRUCTURE

Buyer proposes to acquire [all of the outstanding equity interests of / substantially all assets of] the Company in an [asset / stock] purchase transaction. 

[Healthcare note if applicable: This transaction is structured as an asset purchase to allow for clean transfer of physician practice operations, Medicare/Medicaid provider numbers, and operational agreements while providing both parties certainty on liabilities assumed.]

---

## 3. FINANCING

Buyer's obligation hereunder is [not / is] contingent on financing. [Cash offer, no financing contingency — Buyer has committed capital available for this transaction.]

---

## 4. EXCLUSIVITY (BINDING)

For a period of [45] calendar days following execution of this LOI ("Exclusivity Period"), Seller agrees not to, directly or indirectly, solicit, initiate, or engage in discussions with any other party regarding a potential sale, merger, or other change of control of the Company. Buyer will use best efforts to complete due diligence and negotiate a definitive agreement within the Exclusivity Period.

---

## 5. DUE DILIGENCE

This LOI is subject to Buyer's satisfactory completion of customary confirmatory due diligence, including but not limited to:
- Financial: Review of 3 years of financial statements; accounts receivable aging; working capital analysis
- Legal: Corporate records; contracts; intellectual property; litigation; employment agreements
- Operational: Customer relationships; key employee interviews; systems and technology
- Regulatory: [Healthcare: Medicare/Medicaid enrollment; OIG LEIE status; HIPAA compliance; physician license status] / [O&G: UT DOGM permits; environmental; mineral rights]

Seller to provide data room access within [5] business days of LOI execution.

---

## 6. NO-SHOP (BINDING)

During the Exclusivity Period, Seller shall not, directly or indirectly: (a) solicit other acquisition offers; (b) participate in discussions with other prospective buyers; or (c) provide non-public information to any party other than Buyer and Buyer's representatives.

---

## 7. CONFIDENTIALITY (BINDING)

All terms of this LOI and the proposed transaction shall be kept confidential by both parties. Neither party shall disclose the existence or terms of this LOI to any third party without prior written consent, except as required by law or to counsel and financial advisors.

---

## 8. TRANSACTION TIMELINE

Execution of LOI: [Date]
Due diligence completion: [Date — approximately 30-45 days from LOI execution]
Purchase agreement execution: [Date — approximately 15-30 days after diligence complete]
Target close: [Date]

---

## 9. MANAGEMENT AND TRANSITION

Buyer anticipates that [Seller / key management] will [remain with the Company for a transition period of [X] months / continue in their current role post-close]. Final terms of any employment or consulting agreements to be negotiated during the due diligence period.

---

## 10. REGULATORY APPROVALS

This transaction is conditioned upon receipt of all required regulatory approvals, including [list specific: AZ medical practice license transfer; CMS provider number transfer; UT DOGM permit transfer]. Buyer will cooperate with Seller to obtain all required approvals promptly.

---

## 11. EXPENSES

Each party bears its own expenses in connection with this LOI and the proposed transaction. If the transaction is not completed due to Buyer's failure to proceed without cause after Exclusivity is granted, Buyer agrees to reimburse Seller's documented third-party expenses up to $[X] (if applicable — negotiate based on deal context).

---

## 12. NON-BINDING

Except for Sections 4 (Exclusivity), 6 (No-Shop), 7 (Confidentiality), and 11 (Expenses), this LOI does not constitute a binding agreement. This LOI is superseded by and subject to a definitive purchase agreement, to be negotiated in good faith.

---

Please indicate your agreement with the terms of this LOI by signing below. We look forward to working with you toward a successful transaction.

Sincerely,

Dr. John Lewis
Director of AI Strategy / Authorized Representative
MBL Partners

_________________________
[Seller Name], [Title]                    Date: ___________
```

## Output Contract
- Attorney review before delivery — no exceptions — every LOI must be reviewed by MBL's M&A attorney before being delivered to the seller; the LOI creates binding obligations on exclusivity, no-shop, and confidentiality; imprecise language on earnout mechanics, working capital pegs, or regulatory conditions can create expensive disputes; the attorney review adds 1-2 days and protects against far larger costs; Dr. Lewis prepares the draft and the attorney reviews before Dr. Lewis presents to Matt Mathison for final approval
- Asset purchase is the default for healthcare acquisitions — stock purchases in healthcare acquisitions inherit the seller's Medicare/Medicaid billing history, malpractice exposure, unknown employee claims, and prior compliance failures; Allevio acquires physician practices as asset purchases (acquiring assets and assuming selected liabilities) unless the attorney has a specific reason to recommend a stock purchase; this is a non-negotiable default that protects MBL and Allevio from inheriting unknown Allevio regulatory exposure
- Price mechanics must be unambiguous — an LOI that says "approximately $1.5 million" is worse than one that says "$1.5M, subject to working capital adjustment" with a defined peg; ambiguity in the LOI creates renegotiation leverage for the seller; Dr. Lewis uses precise language: defined EBITDA reference period, defined working capital peg, defined earnout conditions with specific milestones and measurement dates
- HITL required: Dr. Lewis drafts; attorney reviews all LOIs before delivery; Matt Mathison approves price, structure, and terms before Dr. Lewis sends to attorney; Matt Mathison reviews attorney-revised draft before delivery to seller; Matt Mathison or Dr. Lewis delivers the LOI — not the portfolio company CEO unless explicitly authorized

## System Dependencies
- **Reads from:** M&A screen (strategy-m-and-a-screener), deal pipeline (strategy-deal-flow-manager), investment thesis (strategy-investment-thesis), financial data from CIM or diligence, attorney guidance
- **Writes to:** LOI document (SharePoint/Strategy/DealFlow/<Target>/LOI/); deal pipeline stage update; attorney engagement record; Matt Mathison approval record
- **HITL Required:** Dr. Lewis drafts; attorney reviews before delivery; Matt Mathison approves final terms; Matt Mathison or Dr. Lewis delivers; no LOI without Matt Mathison final approval

## Test Cases
1. **Golden path:** LOI for Scottsdale Physical Therapy Group (4-provider tuck-in for Allevio) → Price: $1.1M cash (7.6× LTM EBITDA of $145K); no earnout (seller retiring — clean exit preferred); asset purchase structure (standard for healthcare); 45-day exclusivity; regulatory conditions: AZ physical therapy license transfer + Medicare provider number + OIG LEIE current on all clinical staff; working capital peg: $35K (trailing 6-month average); net debt adjustment: none (seller debt-free); management: owner/PT commits to 12-month transition consulting agreement at $8K/month; Dr. Lewis drafts; attorney reviews; Matt Mathison approves; delivered to seller via PDF + DocuSign
2. **Edge case:** Seller wants to negotiate the price after receiving the LOI → LOI negotiations are normal; Dr. Lewis responds to seller's counter-proposal by presenting the financial analysis: at the seller's ask price of $1.3M (9.0× EBITDA), the IRR drops below MBL's 20% threshold; Dr. Lewis presents this analysis to Matt Mathison; options: (1) walk away at >$1.15M, (2) accept $1.2M if seller commits to 18-month transition (additional value capture), (3) restructure with $1.0M at close + $150K earnout tied to patient volume retention; Matt Mathison decides; Dr. Lewis delivers the counter-proposal
3. **Adversarial:** CEO wants to deliver the LOI verbally first to "see how the seller reacts" → Verbal LOI discussions without a written document are legally ambiguous, create undocumented commitments, and undermine the formal process; if the CEO says "we'll pay around $1.1M" verbally and the seller holds that as a commitment, it becomes a baseline that the formal LOI now has to exceed; Dr. Lewis delivers all offers in writing; if informal contact is needed first (to see if the seller is still interested before Matt Mathison approves the LOI), the CEO can say "we're preparing a formal offer" — but no numbers or terms until the written LOI is ready and attorney-reviewed

## Audit Log
All LOI drafts and final documents retained permanently. Attorney review records retained. Matt Mathison approval records retained. Delivery confirmation retained. Counter-proposal records retained. Deal pipeline updated with LOI delivery date.

## Deprecation
Retire when MBL develops a standard LOI template library maintained by M&A counsel — with Dr. Lewis populating deal-specific terms into the template rather than drafting from scratch.
