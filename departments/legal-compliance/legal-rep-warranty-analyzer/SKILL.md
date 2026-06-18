---
name: legal-rep-warranty-analyzer
description: "Analyze representations and warranties in M&A agreements and manage disclosure schedules. Use when the user says 'reps and warranties', 'representations and warranties', 'disclosure schedule', 'disclosure schedules', 'reps', 'warranties', 'breach of rep', 'rep breach', 'inaccurate rep', 'rep and warranty', 'RWI', 'reps and warranties insurance', 'seller reps', 'buyer reps', 'material reps', 'fundamental reps', 'survival period', 'indemnification for reps', 'schedule exceptions', 'due diligence exceptions', 'rep disclosure', or 'disclosure exception'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--side <buy|sell>] [--entity <company name>] [--action <analyze|prepare-schedules|review|assess-breach>]"
---

# Rep & Warranty Analyzer

Analyze representations and warranties in M&A agreements and prepare disclosure schedules for MBL portfolio company transactions. Reps and warranties are the seller's factual statements about the business; disclosure schedules are the list of exceptions to those reps. Getting this right is the difference between a clean exit and a post-close indemnification demand. Dr. Lewis reviews the rep and warranty section from the seller's perspective (what can we accurately represent?) and coordinates with M&A counsel on the disclosure schedules.

## When to Use
- An M&A definitive agreement is in negotiation and the rep and warranty section is under review
- Preparing disclosure schedules for a sell-side transaction
- Assessing whether a discovered fact constitutes a breach of a rep (post-close indemnification risk)
- Evaluating whether RWI is appropriate for the deal structure

## Rep & Warranty Framework

```
REP AND WARRANTY CATEGORIES:

  FUNDAMENTAL REPS (highest importance; typically survive indefinitely; no cap):
    □ Organization and good standing: Company is validly organized and in good standing in all states
    □ Authority to sign: Seller has full authority to enter the transaction; required approvals obtained
    □ Title: Seller owns the equity or assets being sold, free and clear of liens
    □ Capitalization: The cap table in the agreement accurately reflects all issued equity
    □ No brokers: No undisclosed broker or finder's fees
    
  OPERATIONAL REPS (subject to disclosure schedules; survive 18-24 months):
    □ Financial statements: The financial statements fairly present the company's financial position
      Key question: Are the financials prepared in accordance with GAAP (or consistently applied)?
      For portfolio companies: Are QBO financials "GAAP" or "cash basis"? Define clearly in the agreement
    □ Absence of material adverse change (MAC): No MAC since the financial statement date
    □ Contracts: The material contracts disclosed are the complete and accurate list
      Disclosure schedule requirement: Attach all material contracts to the agreement
    □ IP: Company owns or has valid licenses for all IP used in the business
    □ Employment: No undisclosed employment contracts; no pending labor disputes
    □ Litigation: No pending or threatened material litigation
    □ Compliance with laws: Company has complied with all applicable laws
    □ Taxes: All required tax returns filed; all taxes paid; no material tax claims
    □ Permits and licenses: All required permits and licenses are held and in good standing
    □ Insurance: All material insurance policies are in full force
    □ Indebtedness: All debt is disclosed in the agreement
    □ Accounts receivable: AR is valid and collectible (within [60/90] days)
    □ Inventory: No representation issue for service businesses
    
  ENTITY-SPECIFIC REPS:
    ALLEVIO (healthcare):
      □ Healthcare compliance: No HIPAA violations; all required BAAs in place
      □ Professional licensing: All required healthcare licenses held and in good standing
      □ Billing compliance: No known billing fraud or false claims; no government investigations
      □ Payor contracts: All employer group contracts disclosed; no material disputes
      □ Provider credentialing: All providers properly credentialed
      □ OIG exclusion: No personnel on OIG exclusion list
    HIVE (O&G):
      □ Environmental: No known environmental contamination; all permits valid
      □ Mineral leases: All mineral leases disclosed; no defaults
      □ Production: Production data is accurate; no material decline in production
      □ Well status: All wells in good operating condition; no unreported issues
      □ Regulatory: No pending DOGM violations or regulatory proceedings
    COLUMN6 (media/advertising):
      □ Advertising compliance: No pending FTC investigations or material advertiser disputes
      □ Data privacy: CCPA compliance (if applicable); no data breach history
      □ IAB compliance: ads.txt, sellers.json current
      □ Advertiser contracts: Material agency agreements disclosed
      
DISCLOSURE SCHEDULES:
  Each operational rep is qualified by a disclosure schedule
  Disclosure schedule = the list of exceptions to the rep
  Example:
    Rep: "The Company has no pending litigation"
    Disclosure schedule: "Schedule 3.14(a) — Pending Litigation: 
      [Former employee demand letter received January 15, 2027; resolved by settlement 
      February 2, 2027; no pending claims outstanding]"
  Purpose: A fully disclosed exception is not a breach; an undisclosed issue IS a breach
  
  Rule: When in doubt, disclose — an item that is disclosed is protected; an undisclosed item
    that is later discovered is a potential indemnification claim against the seller
    
  DISCLOSURE SCHEDULE PREPARATION PROCESS:
    Step 1: Dr. Lewis reviews each rep and identifies: what information is needed to confirm the rep is accurate?
    Step 2: For each rep, identify all items that create exceptions (known issues, pending matters)
    Step 3: Every exception must be specifically disclosed (not "matters in the ordinary course")
    Step 4: M&A counsel reviews the disclosure schedules for legal adequacy
    Step 5: CEO reviews and certifies the disclosure schedules are accurate and complete
    
RWI (REPRESENTATIONS AND WARRANTIES INSURANCE):
  What it does: Insures buyer against breaches of seller's reps; transfers seller's indemnification to insurer
  Benefit to seller: Reduced (or eliminated) escrow; cleaner exit
  Benefit to buyer: Deep-pocket insurance carrier vs. seller who may spend sale proceeds
  When to use: Deals >$10-15M EV (premium is typically 2-4% of policy limit; minimum premium ~$150K)
  Structure:
    Policy: Buyer-side policy (standard); insurer pays buyer for covered rep breaches
    Seller's retained liability: Typically: Fraud; fundamental reps; tax-specific reps; matters within seller's knowledge
    Retention (deductible): Seller's exposure limited to retention amount (usually 1% of EV)
```

## Output Format

```markdown
# Rep & Warranty Analysis — [Deal Name]
**Entity:** [Seller] | **Side:** [Buyer / Seller] | **Date:** [Date]
**M&A counsel:** [Firm] | **RWI:** [Yes / No / TBD]

---

## Rep Accuracy Assessment (Seller Perspective)

| Rep Category | Can We Represent Accurately? | Issues / Disclosures Needed |
|-------------|---------------------------|---------------------------|
| Organization / Good standing | ✅ Yes | Good standing certs current |
| Authority | ✅ Yes | Board consent obtained |
| Cap table / Capitalization | ✅ Yes | Cap table reconciled |
| Financial statements | ⚠️ GAAP qualification needed | QBO financials are tax-basis; not GAAP |
| Material contracts | ✅ Yes | Full contract list in disclosure schedule |
| Litigation | ⚠️ Must disclose | Former employee demand letter — resolved; disclose |
| HIPAA compliance (Allevio) | ⚠️ Minor gap | 1 BAA not yet executed for new vendor |
| Permits / Licenses | ✅ Yes | All current; good standing confirmed |

---

## Disclosure Schedule Status

| Schedule | Content | Status |
|---------|---------|--------|
| 3.4 — Material contracts | All 12 material contracts | ✅ Complete |
| 3.14 — Litigation | Former employee demand — resolved | ✅ Disclosed |
| 3.12 — IP | Trademark application pending (not registered) | ✅ Disclosed |
| 3.22 — HIPAA | BAA missing for [Vendor] | ⚠️ Cure in progress; disclose status |

---

## RWI Analysis

**Deal size:** $[X]M EV | **RWI eligible:** Yes / No (threshold: >$10M EV)
**Estimated premium:** $[X]K ([X]% of $[X]M policy limit)
**Seller escrow without RWI:** $[X]K (15% of EV for 18 months)
**Seller escrow with RWI:** $[X]K (2% fundamental reps only)
**Recommendation:** RWI — cost justified / RWI — not cost justified at deal size

---

## Recommendation

**[REPS ARE SUPPORTABLE / GAPS IDENTIFIED — remedy before signing / MATERIAL ISSUE — counsel required]**
[2-3 sentence summary of the most important findings]
```

## Output Contract
- Disclose everything that might be a problem — the seller's interest is to complete a clean exit; an undisclosed issue discovered post-close becomes an indemnification claim; a disclosed issue in the schedules is not a breach (even if the buyer doesn't love it); the seller's strategy should always be: be expansive in disclosure; do not leave known issues undisclosed hoping no one notices; buyers' post-close lawyers are paid to find undisclosed issues; Dr. Lewis reviews disclosure schedules with a "what could they claim we didn't disclose?" lens
- GAAP qualification for small company financials — most early-stage portfolio companies prepare financial statements on a tax basis or cash basis, not full GAAP; the purchase agreement's financial statement rep will say "prepared in accordance with GAAP"; if the financials are not GAAP, the rep is technically inaccurate from day one; Dr. Lewis catches this in the rep review: the rep should be qualified to "prepared in accordance with the Company's historical accounting practices consistently applied" (not full GAAP) for companies whose financials are not GAAP-audited
- RWI changes the deal dynamic — without RWI, the seller's indemnification obligation is secured by an escrow held by the buyer for 18-24 months; the seller cannot fully deploy the sale proceeds until the escrow period ends; with RWI, the escrow is reduced to 1-2% of EV (fundamental reps only); the seller gets more liquidity immediately after closing; for PE sponsors, this matters for LP distributions; Dr. Lewis evaluates RWI for every deal >$10M EV and presents the cost/benefit to Matt Mathison
- HITL required: Dr. Lewis reviews and identifies; M&A counsel reviews the legal adequacy of disclosure schedules; CEO certifies the disclosure schedules are accurate and complete (CEO is the person with the most detailed knowledge of the business); Matt Mathison reviews and approves the rep and warranty terms before signing the definitive agreement; no definitive agreement is signed without Dr. Lewis's financial review and M&A counsel's legal review completed; Dr. Lewis does not certify disclosure schedules — CEO certifies

## System Dependencies
- **Reads from:** M&A definitive agreement (APA/SPA) — rep and warranty section; prior disclosure schedules (from diligence data room); legal compliance status (entity good standing; permits; HIPAA BAA tracker; IP inventory; contract tracker; litigation log); financial statements (QuickBooks); cap table; RWI broker quote (if applicable)
- **Writes to:** Rep accuracy assessment memo; disclosure schedule drafts (SharePoint/Legal/MBL/MA/[Deal]_DisclosureSchedules.docx); CEO certification checklist; RWI evaluation memo; Matt Mathison deal briefing; M&A counsel markup comments
- **HITL Required:** Dr. Lewis reviews; M&A counsel provides legal analysis of rep adequacy; CEO certifies disclosure schedules are accurate and complete; Matt Mathison approves the rep and warranty terms before signing; RWI broker and insurer must confirm coverage scope before RWI is relied upon; Dr. Lewis does not certify or sign disclosure schedules — CEO certifies under the purchase agreement

## Test Cases
1. **Golden path:** Allevio sell-side transaction — preparing disclosure schedules → Dr. Lewis conducts the rep-by-rep review; identifies 3 items requiring disclosure: (1) Former employee demand letter — resolved but must be disclosed; (2) One pending trademark application (not yet registered — must be disclosed as "application pending, not registered"); (3) Missing BAA for one new vendor (in process — disclose the gap and the cure timeline); All 3 are disclosed clearly in the appropriate schedules; CEO reviews and certifies; M&A counsel confirms adequacy; no surprises post-close; deal closes cleanly; buyer relies on RWI for any post-close claims; seller's escrow: $200K (2% fundamental reps); full $9.6M balance to seller at closing
2. **Edge case:** Dr. Lewis discovers during disclosure schedule preparation that HIVE has been operating in Utah without having obtained a required DOGM permit modification after a well modification was made 8 months ago → Dr. Lewis flags immediately: "This is a material undisclosed regulatory non-compliance. Options: (1) Cure the non-compliance immediately — file the permit modification with DOGM; it will likely be approved but takes time; (2) Disclose the gap in the disclosure schedules with the cure timeline; (3) If curing before closing is not possible, price the risk into the deal (price reduction, escrow, or indemnity for any DOGM penalty). This cannot be omitted from the disclosure schedules — an undisclosed regulatory violation at HIVE discovered post-close is a material rep breach. Matt Mathison must be informed today." O&G counsel engaged; permit modification filed; cure completed before closing; disclosed in regulatory compliance schedule as "permit modification filed [date]; pending approval"; buyer accepts with a $25K indemnity holdback pending approval
3. **Adversarial:** The buyer's M&A counsel insists that the financial statement rep requires "GAAP-compliant" financials with a 3-year audit — Allevio has never been audited and its financials are QBO tax-basis → Dr. Lewis and M&A counsel push back: "Allevio's financial statements were prepared consistently on a tax-accrual basis using QuickBooks Online — not GAAP-audited. We cannot represent they are 'GAAP-compliant' because they have never been audited. The market standard for a company of Allevio's size is 'prepared in accordance with the Company's historical accounting practices consistently applied.' We will provide the buyer with reviewed (not audited) financials prepared by an outside CPA — this gives the buyer assurance without requiring a full audit. A full GAAP audit would take 90 days and cost $25-40K — this is not a reasonable pre-close condition for an $8M deal." Buyer accepts reviewed financials; rep qualified to consistent historical practices; deal closes

## Audit Log
All rep accuracy assessment memos retained. All disclosure schedule drafts and final executed versions retained permanently. CEO certification records retained permanently. RWI policy and coverage documentation retained. M&A counsel advice retained. Any post-close indemnification claims related to rep breaches retained permanently with outcomes.

## Deprecation
Retire when MBL Partners has M&A counsel who manages the rep and warranty process end-to-end — with Dr. Lewis providing the financial accuracy review and CEO certifying the disclosure schedules.
