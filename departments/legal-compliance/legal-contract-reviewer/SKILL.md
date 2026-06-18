---
name: legal-contract-reviewer
description: "Review and redline commercial contracts for MBL portfolio companies. Use when the user says 'review this contract', 'redline the contract', 'contract review', 'review the agreement', 'flag the risks', 'what does this contract say', 'contract analysis', 'contract issues', 'review the MSA', 'review the SOW', 'review the agreement', 'look at this contract', 'contract red flags', 'what should I watch out for', 'commercial contract review', 'contract concerns', 'is this contract okay', 'review the terms', or 'contract negotiation'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--contract-type <msa|sow|nda|vendor|employment|lease|other>] [--entity <company name>] [--counterparty <name>] [--action <review|redline|summarize>]"
---

# Contract Reviewer

Review and redline commercial contracts for MBL portfolio companies — identifying risk provisions, unfavorable terms, and missing protections before signature. Contract review is one of the highest-leverage legal activities in a PE portfolio: a poorly reviewed contract can create multi-year obligations, liability exposure, or rights forfeitures that are expensive to unwind. Dr. Lewis provides the initial business and risk review; outside counsel is engaged for any contract above the materiality threshold or involving significant liability.

## When to Use
- Any commercial contract presented for signature by a portfolio company CEO
- A vendor or customer sends a contract for review before execution
- A contract is about to renew and the CEO wants to know what they're agreeing to
- Outside counsel has not been engaged (below the cost-justified threshold)
- Matt Mathison asks "what does this contract say?"

## Contract Review Framework

```
CONTRACT REVIEW CHECKLIST (all contract types):

  PARTIES AND AUTHORITY:
    □ Correct legal entity named (MBL entity or portfolio company legal name — not trade name)
    □ Authorized signatory — who can sign for the company? (Dr. Lewis reviews; CEO signs)
    □ Counterparty legal entity confirmed (not just a trade name)
    □ Guarantor provisions — is MBL Partners being asked to personally guarantee?
      If MBL Partners personal guarantee requested: STOP → Matt Mathison review required before any response
      
  TERM AND RENEWAL:
    □ Initial term: How long? What is the end date?
    □ Auto-renewal clauses: Does this contract auto-renew? When must notice be given to terminate?
      Auto-renewal = highest risk provision — contracts that silently renew for another year
      Flag: Notice period required to terminate (if >30 days before renewal date, add to contract tracker immediately)
    □ Termination rights: Can the company exit early? What are the conditions?
    □ Termination for convenience: Can we terminate without cause? At what notice and cost?
    □ Termination for cause: What events allow immediate termination?
    
  PAYMENT TERMS AND FEES:
    □ Amount, timing, and frequency confirmed
    □ Price increase provisions: Can the counterparty raise prices without consent?
      Flag: Any provision allowing >5% annual price increase without consent
    □ Late payment penalties: What happens if payment is late?
    □ Expenses: Are additional expenses reimbursable? Capped?
    
  LIABILITY AND INDEMNIFICATION:
    □ Limitation of liability: Is the company's liability capped?
      Standard: Cap at fees paid in the prior 12 months (for vendor contracts)
      Red flag: No cap on liability / unlimited liability exposure
    □ Indemnification: What is the company indemnifying the counterparty for?
      Acceptable: Indemnify for company's own negligence or breach
      Red flag: Indemnify for counterparty's negligence or third-party claims outside the company's control
    □ Consequential damages: Excluded? (should be — consequential damages exclusion protects both parties)
    □ Insurance requirements: What insurance must the company maintain?
    
  INTELLECTUAL PROPERTY:
    □ IP ownership: Who owns work product created under the contract?
      For vendor contracts: Company should own all deliverables; vendor gets license to use tools only
      For employment: Employee-created IP belongs to the employer (confirm with employment agreement)
    □ License grants: What rights is the company giving or receiving?
    □ Background IP: Are there provisions about pre-existing IP the vendor brings?
    
  CONFIDENTIALITY:
    □ Confidentiality obligations: Are they mutual or one-sided?
    □ Duration: How long must information be kept confidential?
    □ Exclusions: Standard exclusions (publicly known, independently developed) should be present
    
  DISPUTE RESOLUTION:
    □ Governing law: Which state's law applies? (prefer Arizona or the portfolio company's state)
    □ Jurisdiction: Where must disputes be litigated? (prefer local jurisdiction)
    □ Dispute resolution mechanism: Litigation? Arbitration? Mediation first?
    
  CONTRACT-TYPE SPECIFIC CHECKS:
    
    VENDOR CONTRACTS:
      □ Service levels / SLA: What performance is promised? What remedy if not met?
      □ Data handling: How does vendor handle company data? HIPAA BAA required for Allevio health data?
      □ Subcontracting: Can the vendor subcontract without consent?
      □ Change control: How are scope changes managed and priced?
      
    CUSTOMER / REVENUE CONTRACTS:
      □ Payment terms: Net 30 standard; Net 60 flag for review
      □ Collection rights: Can the company suspend services for non-payment?
      □ Exclusivity: Is the company restricted from serving competitors?
      □ Most favored nation (MFN): Is the company required to give this customer the best pricing?
      
    EMPLOYMENT AGREEMENTS:
      □ Compensation: Base, bonus, equity — all specified?
      □ Non-compete: Scope, duration, geography — enforceable in the state?
      □ Non-solicitation: Duration and scope reasonable?
      □ IP assignment: Does all work-related IP assign to the company?
      □ At-will: Confirm at-will employment; no implied term provisions
      
  APPROVAL ROUTING:
    Contracts reviewed by Dr. Lewis:
      <$10K annual value: Dr. Lewis review → CEO signature
      $10K-$50K annual: Dr. Lewis review → CEO + Dr. Lewis (both review)
      >$50K annual or high-liability: Outside counsel review → Matt Mathison approval → CEO signature
      Any personal guarantee of MBL Partners: Matt Mathison must review before any response
      Any M&A-related contract: Outside counsel required
```

## Output Format

```markdown
# Contract Review Summary — [Contract Type] with [Counterparty]
**Entity:** [Portfolio Company] | **Contract value:** $[X]K/year | **Date reviewed:** [Date]
**Reviewed by:** Dr. Lewis | **Recommendation:** SIGN / NEGOTIATE / ESCALATE / DO NOT SIGN

---

## Summary

**What this contract does:** [1-2 sentence plain language description]
**Term:** [Start date] to [End date] | **Auto-renews:** [Yes — notice by X date / No]
**Company's obligations:** [Plain language — what the company must do]
**Counterparty's obligations:** [Plain language — what they must deliver]

---

## Red Flags (must be resolved before signing)

| # | Issue | Clause | Risk | Recommended Fix |
|---|-------|--------|------|----------------|
| 1 | [Auto-renewal with 90-day notice] | Section 12.2 | Company auto-commits for another year if notice missed | Reduce to 30-day notice period |
| 2 | [Unlimited liability] | Section 9.1 | No cap on company's financial exposure | Add mutual limitation of liability (12× monthly fees) |
| 3 | [MBL guarantor] | Section 15 | MBL Partners personally liable for obligations | Remove; [Company] signs as the contracting entity |

---

## Negotiation Points (preferred but not blocking)

| # | Issue | Recommended Revision |
|---|-------|---------------------|
| 1 | [No termination for convenience] | Add 60-day termination for convenience right |
| 2 | [Arbitration in NY] | Change to Arizona / local jurisdiction |

---

## Acceptable Provisions

- Liability cap: 12 months of fees — standard ✅
- Confidentiality: Mutual; standard exclusions present ✅
- IP ownership: Deliverables assigned to [Company] ✅
- Governing law: Arizona ✅

---

## Recommendation

**[SIGN / NEGOTIATE / ESCALATE TO OUTSIDE COUNSEL / DO NOT SIGN]**

[One to two sentence rationale. If NEGOTIATE: specific redlines needed before signature. If ESCALATE: reason for outside counsel engagement.]

**HITL Required:** [CEO signature needed / CEO + Dr. Lewis review / Matt Mathison approval / Outside counsel required]
```

## Output Contract
- Lead with the recommendation — the CEO needs to know immediately whether to sign, negotiate, or escalate; a contract review that buries the recommendation in 10 pages of analysis is not useful; Dr. Lewis leads with SIGN / NEGOTIATE / ESCALATE / DO NOT SIGN in the first line, and the rest of the review supports that recommendation; the CEO can read the recommendation and the red flags and have enough information to decide; they can read the full analysis for context
- Red flags vs. negotiation points — not all contract issues are equal; a provision that creates unlimited liability is a hard stop (red flag — must be resolved before signing); a provision that places jurisdiction in New York vs. Arizona is a negotiation point (preferred to change, but not a deal-breaker); Dr. Lewis distinguishes between the two clearly so the CEO knows which issues to fight for and which to let go in negotiation
- Outside counsel threshold — Dr. Lewis provides the business and risk review; he is not a lawyer and does not give legal advice; for contracts above the materiality threshold ($50K+ annual value), with significant liability exposure, or with legal complexity (IP, M&A, healthcare-specific regulatory), outside counsel is engaged; Dr. Lewis coordinates the outside counsel review and receives their redlines; he does not sign legal opinions or legal analysis in his name
- HITL required: Dr. Lewis reviews; CEO confirms business terms and context (is this vendor relationship important enough to negotiate hard?); outside counsel reviews for high-risk or high-value contracts; CEO signs all contracts (not Dr. Lewis — Dr. Lewis's authority is to review, not execute); Matt Mathison approves contracts creating obligations >$50K annual or any MBL Partners guarantee; no contract that auto-renews is executed without the renewal date being logged in the contract tracker

## System Dependencies
- **Reads from:** Contract document provided by CEO or counterparty; MBL entity legal name list (to verify correct entities are named); legal contract tracker (for prior contracts with same counterparty — is this consistent with prior agreements?); company approval matrix (for routing); outside counsel retainer agreement (for escalation threshold guidance)
- **Writes to:** Contract review memo (SharePoint/Legal/<Company>/Contracts/<Counterparty>_[Date]_Review.pdf); contract tracker (renewal dates, term, value, key obligations — for any contract that proceeds to signature); if escalated: outside counsel brief; post-signature: final executed version retained in SharePoint
- **HITL Required:** Dr. Lewis reviews; CEO validates business context; outside counsel for >$50K or high-risk; CEO signs; Matt Mathison approves any contract creating obligations >$50K annual or any MBL guarantee; Dr. Lewis does not sign commercial contracts on behalf of any portfolio company — that authority belongs to the CEO

## Test Cases
1. **Golden path:** Allevio receives a vendor contract for a new employee wellness platform — $8.4K/year, 12-month auto-renewing term → Dr. Lewis reviews: Red flag: auto-renews with 60-day notice required (risk: if notice missed, committed for another year — add to contract tracker immediately); Negotiation point: no termination for convenience (would like a 60-day out, but not a blocker at $8.4K); Acceptable: liability capped at 12 months of fees; mutual confidentiality; IP of any data analysis remains with Allevio; HIPAA BAA included (required for Allevio); Recommendation: SIGN with auto-renewal date logged in contract tracker as Day 1 action; CEO signs; renewal notice deadline (60 days before anniversary) logged in the contract tracker immediately
2. **Edge case:** A Column6 advertiser contract includes an MFN (Most Favored Nation) clause — the advertiser requires Column6 to offer them the lowest CPM rate given to any advertiser → Dr. Lewis flags: "This MFN clause is a significant business constraint — it means that if Column6 ever gives any other advertiser a lower CPM than [Advertiser], Column6 must reduce [Advertiser]'s rate to match. This limits pricing flexibility for Column6's entire advertiser base. For a small contract ($30K campaign), this is an outsized obligation. I recommend negotiating to remove the MFN clause entirely, or limiting it to 'direct competitor advertisers in the same vertical' rather than all advertisers. If the advertiser insists on the MFN, the revenue must price in the future rate restriction risk — this contract may not be worth accepting at current pricing." CEO negotiates; MFN removed from final agreement
3. **Adversarial:** The HIVE CEO has already signed a 3-year service contract for LOE field services without Dr. Lewis's review — the contract has no termination for convenience and locks in a rate $3/BOE above market → Dr. Lewis assesses: "The contract is signed — my role now shifts from review to damage mitigation. At $3/BOE above market and ~940 BOE/day, HIVE is overpaying approximately $1.03M over 3 years. Options: (1) Negotiate a contract amendment with the vendor (they may take $1.50/BOE reduction to keep the relationship); (2) Review the force majeure and assignment clauses — a HIVE entity restructuring could trigger a right to renegotiate; (3) Accept the rate and factor it into the LOE benchmark gap analysis. I recommend starting with option 1 — a direct conversation with the vendor. For future contracts: per the approval matrix, any contract >$25K annual requires Dr. Lewis review before signature. I'm updating the HIVE CEO onboarding checklist to reinforce this." Dr. Lewis logs the contract in the tracker; pursues the amendment negotiation

## Audit Log
All contract reviews retained by counterparty and date. Executed contracts retained in SharePoint legal folder. Contract tracker maintained (renewal dates, obligations, annual value). Escalations to outside counsel retained. Post-signature obligations calendar maintained (renewal notices, deliverable deadlines, reporting requirements). Any contract disputes or issues retained.

## Deprecation
Retire when each portfolio company has in-house counsel or a dedicated legal vendor relationship — with Dr. Lewis reviewing contracts above the materiality threshold and Matt Mathison approving contracts creating obligations above the approval matrix threshold.
