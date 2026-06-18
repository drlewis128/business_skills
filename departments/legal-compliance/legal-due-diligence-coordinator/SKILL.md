---
name: legal-due-diligence-coordinator
description: "Coordinate legal due diligence for M&A transactions. Use when the user says 'due diligence', 'DD', 'diligence', 'data room', 'due diligence checklist', 'due diligence process', 'legal due diligence', 'financial due diligence', 'diligence request list', 'diligence review', 'data room management', 'VDR', 'virtual data room', 'diligence findings', 'diligence issues', 'M&A due diligence', 'acquisition diligence', 'buy-side diligence', 'sell-side diligence', 'diligence timeline', or 'diligence coordinator'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--side <buy|sell>] [--entity <company name>] [--action <setup|review|report|manage>] [--phase <legal|financial|operational|all>]"
---

# Due Diligence Coordinator

Coordinate legal and financial due diligence for M&A transactions involving MBL portfolio companies — managing the data room, tracking diligence requests, identifying red flags, and ensuring the due diligence process produces an accurate picture of the business. Due diligence is the risk management process that determines whether the agreed deal price is justified by the actual facts. A poorly run diligence process — whether as buyer or seller — is expensive: buyers who discover undisclosed issues post-close have expensive litigation; sellers who are surprised by buyer DD findings scramble to explain issues they should have anticipated and managed.

## When to Use
- A transaction is post-LOI and entering the diligence phase
- MBL or a portfolio company is preparing a data room for a sell-side process
- MBL is conducting buy-side due diligence on an acquisition target
- Diligence findings need to be organized and reported to Matt Mathison

## Due Diligence Framework

```
DILIGENCE PHASES:

  Phase 1 — LOI (pre-signing): Limited information sharing; NDA required
    Share: Company overview; financial highlights; market position
    Do not share: Detailed customer list; employee compensation; detailed IP; operational secrets
    
  Phase 2 — Exclusive Diligence (post-LOI): Full diligence process
    Buyer submits: Diligence request list (DRL) — comprehensive list of documents requested
    Seller uploads: Responsive documents to the virtual data room (VDR)
    Timeline: 30-60 days (typical)
    
  Phase 3 — Pre-Closing (post-definitive agreement): Bring-down diligence
    Confirm no material changes since signing the definitive agreement
    Updated financial statements; any new litigation; regulatory developments

SELL-SIDE DATA ROOM ORGANIZATION (if MBL portfolio company is being sold):

  Section 1 — Corporate
    □ Certificate of Formation / Articles of Incorporation
    □ Operating Agreement / Bylaws (all amendments)
    □ Good standing certificates (all states)
    □ Board minutes and resolutions (3 years)
    □ Cap table / membership interest register
    □ Entity org chart
    
  Section 2 — Financial
    □ Audited or reviewed financial statements (3 years) + current YTD
    □ Monthly P&L (24 months)
    □ Annual operating budgets (3 years) + current year forecast
    □ Tax returns (3 years)
    □ QuickBooks general ledger export (3 years)
    □ Customer/revenue schedule (individual customer revenue breakdown)
    □ Accounts receivable aging
    □ Accounts payable aging
    
  Section 3 — Legal / Contracts
    □ All material contracts (vendor, customer, employment, leases)
    □ IP registrations (trademarks, patents, copyrights)
    □ Real estate / lease agreements
    □ Bank agreements / LOC documentation
    □ Insurance policies (current)
    □ Litigation history (pending and settled in last 5 years)
    □ Regulatory licenses and permits
    
  Section 4 — HR / People
    □ Organizational chart
    □ Employee list (name, title, compensation, start date, location) — typically shared late in DD
    □ Key employee agreements (employment, non-compete, IP assignment)
    □ Benefit plan summaries
    □ Workers comp and OSHA records
    □ EEOC / employment claims history
    
  Section 5 — Operations / Entity-Specific
    ALLEVIO:
      □ Payer contracts (employer group agreements)
      □ Provider agreements
      □ HIPAA policies and BAA list
      □ OIG exclusion check records (key employees)
      □ Billing records / denial rate history
      □ AdvancedMD and Marshall Medical Billing contracts
    HIVE:
      □ Well permits (DOGM)
      □ Mineral lease agreements
      □ Production history by well (5 years)
      □ LOE history and breakdown
      □ Reserve report (if available)
      □ Environmental compliance records (EPA, DAQ)
      □ Land agreements / ROW
    COLUMN6:
      □ Agency and advertiser contracts
      □ SSP/DSP agreements
      □ IAB certifications
      □ Campaign performance data (aggregate — no advertiser-specific prior to LOI)
      □ Privacy policy and data processing documentation
      □ Ad server agreements

BUY-SIDE DUE DILIGENCE — FOCUS AREAS (when MBL is the acquirer):

  Financial DD (led by Dr. Lewis):
    □ Revenue quality: Is revenue recurring? Concentrated? At risk?
    □ EBITDA normalization: Are there one-time items inflating EBITDA?
    □ NWC analysis: What is the actual trailing NWC? How was the peg set?
    □ Customer concentration: >20% = concentration risk
    □ Contract duration: Are key contracts at risk of non-renewal?
    
  Legal DD (led by M&A counsel):
    □ Title to assets: Does the company own what it says it owns?
    □ IP ownership: Is all IP assigned to the company (vs. individuals)?
    □ Litigation exposure: Any pending or threatened claims?
    □ Environmental exposure: Any known contamination or regulatory violations?
    □ Contract assignability: Can material contracts be assigned to the buyer?
    □ Third-party consents: Do any contracts require consent to the change of control?
    
  DILIGENCE RED FLAGS:
    Concentration: One customer >30% of revenue
    Revenue retention: High churn rate; key customer contracts expiring
    IP: Key IP not fully assigned to the company
    Litigation: Undisclosed lawsuits; pattern of employment claims
    Environmental: Unresolved contamination; regulatory penalties
    Change of control clauses in material contracts: Require renegotiation post-close
```

## Output Format

```markdown
# Due Diligence Tracker — [Deal Name]
**Entity:** [Seller] | **Transaction:** [Buyer] acquiring [Seller] | **Phase:** [Diligence]
**LOI signed:** [Date] | **Exclusivity expires:** [Date] | **Target close:** [Date]
**Managed by:** Dr. Lewis | **M&A counsel:** [Firm] | **VDR:** [Platform / Link]

---

## Data Room Status

| Section | Documents Requested | Uploaded | % Complete | Outstanding |
|---------|-------------------|---------|-----------|------------|
| Corporate | 8 | 7 | 88% | Good standing cert — [State] |
| Financial | 12 | 10 | 83% | Monthly P&L last 6 months |
| Contracts | 15 | 11 | 73% | 4 contracts pending upload |

---

## Key Diligence Findings

| # | Finding | Risk Level | Impact | Recommended Action |
|---|---------|-----------|--------|-------------------|
| 1 | [Two material vendor contracts have change-of-control consent requirements] | High | Could delay closing | Notify vendor pre-close; obtain consent; price risk into definitive agreement |
| 2 | [Customer concentration: Top customer = 28% of revenue] | Medium | Customer departure risk | Get estoppel letter from customer; earn-out structure if high concentration |

---

## Open Issues Log

| Issue | Responsible Party | Status | Due |
|-------|----------------|--------|-----|
| [Request missing: Employee list] | Seller | Pending | [Date] |
| [Question: IP assignment — founder's pre-company work] | M&A counsel | Under review | [Date] |

---

## Matt Mathison Summary

**Deal status:** On track / Concern / Issue discovered
**Recommendation:** Proceed at agreed price / Re-price / Pause pending resolution / Walk away
**Key issue:** [One-sentence description of the most important finding]
```

## Output Contract
- Diligence sets the price, not the LOI — the LOI price is a starting point based on limited information; diligence is the process that confirms whether the starting price is justified; if diligence reveals that EBITDA was overstated by $150K (one-time items not properly removed), the enterprise value should be reduced by the multiple applied to that $150K; Dr. Lewis tracks every finding that has a financial impact and quantifies it in dollar terms; the diligence findings report is not just a list of issues — it is a revaluation of the business based on full information
- Change-of-control provisions are deal-critical — many material contracts have change-of-control provisions that require the other party's consent when the company's ownership changes; if these are discovered late in diligence, the deal closing is delayed while consents are obtained; Dr. Lewis makes change-of-control consent reviews a priority-one item in the first week of legal diligence; any contract requiring consent must be identified, the consent process initiated, and the risk priced into the definitive agreement if consent is uncertain
- Data room discipline protects the seller — for sell-side diligence, the seller controls what goes into the data room and in what order; Dr. Lewis follows a disciplined order: corporate, financial, and legal documents first; employee compensation data last (after the deal is substantially certain); customer-specific data with appropriate protections; Dr. Lewis does not allow the CEO to upload documents to the data room without review — a document that reveals an undisclosed liability, a breach of a covenant, or a legal issue is better managed proactively than discovered and questioned by the buyer's counsel
- HITL required: Dr. Lewis manages the diligence process and data room; M&A counsel leads legal diligence and document review; Matt Mathison receives weekly updates and the final diligence findings report before the definitive agreement is signed; Matt Mathison approves any re-pricing decision based on diligence findings; Dr. Lewis does not make material concessions in the definitive agreement without Matt Mathison's approval; any diligence finding that would change Matt Mathison's approval of the deal is escalated immediately (not at the next scheduled update)

## System Dependencies
- **Reads from:** LOI and deal terms; M&A counsel diligence request list; virtual data room access (buyer's counsel uploads and seller uploads); Allevio/HIVE/Column6 financial records (QuickBooks — for financial diligence responses); contract tracker (for material contracts that must go into the data room); DOGM permit records (for HIVE); HIPAA BAA tracker (for Allevio); IP registry (for IP diligence)
- **Writes to:** Data room (populated with responsive documents); diligence tracker (open items, status, completion %); diligence findings report (SharePoint/Legal/MBL/MA/[Deal Name]_DiligenceReport.pdf); Matt Mathison deal status memo (weekly during diligence); rep and warranty schedule (disclosure schedules for the definitive agreement — informed by diligence)
- **HITL Required:** Dr. Lewis manages; M&A counsel leads legal analysis; Matt Mathison receives weekly updates and approves diligence findings before signing the definitive agreement; any material finding (red flag level) is escalated immediately to Matt Mathison; Dr. Lewis does not allow documents to enter the data room without review; no response to buyer DD questions without M&A counsel review of the legal dimensions

## Test Cases
1. **Golden path:** Allevio is in sell-side due diligence with a strategic healthcare acquirer — 45-day exclusivity period → Dr. Lewis organizes the data room in 5 sections; uploads corporate documents in week 1 (all 8 corporate documents within 3 days); financial documents in week 1-2 (QuickBooks export, 3 years financials, monthly P&L); buyer submits 62-item DRL; Dr. Lewis tracks each item; Section 3 (contracts): uploads all material contracts including Marshall Medical Billing agreement, AdvancedMD, and all employer group agreements; identifies one change-of-control provision in the Marshall Medical Billing contract (requires consent if Allevio's ownership changes by >50%); flags immediately to M&A counsel; M&A counsel advises contacting Marshall Medical Billing proactively; consent obtained in week 3; no other material issues; employee list shared in week 4 after buyer confirms deal commitment; deal proceeds at agreed price; diligence complete in 38 days
2. **Edge case:** Buyer's DD team discovers that 3 of Allevio's 7 employer group contracts expire within 4 months of the closing date with no auto-renewal provision → Dr. Lewis quantifies: 3 contracts represent $280K revenue (22% of total); buyer adjusts their view of revenue quality; Dr. Lewis and the Allevio CEO get renewal letters of intent from 2 of the 3 employers within 2 weeks (the third is genuinely at risk); Dr. Lewis presents to Matt Mathison: "The contract renewal risk is real but manageable. 2 of 3 at-risk contracts have LOIs for renewal (covering $240K of the $280K). The third contract ($40K) is uncertain. I recommend structuring a modest earn-out ($150K over 12 months) contingent on the third employer group renewing — this aligns buyer and seller on the retention risk and avoids a full price reduction for an issue that may not materialize." Matt Mathison approves the earn-out approach; negotiated into the definitive agreement
3. **Adversarial:** Buy-side diligence on an Allevio acquisition target reveals that the target's EBITDA has been inflated by including a non-recurring government grant ($220K) in the last 12 months, which the seller included in "normalized EBITDA" → Dr. Lewis flags: "The $220K government grant is not an ongoing revenue stream — it was a one-time COVID-era relief payment that is not recurring and cannot be included in the EBITDA multiple basis. At 8× EBITDA (our agreed multiple), including this grant inflates the purchase price by $1.76M. Our position: exclude the grant from normalized EBITDA; reduce the purchase price accordingly. The seller's M&A counsel will push back; our M&A counsel's response: the definitional framework in the LOI for 'Adjusted EBITDA' excludes non-recurring government grants by definition (this is a standard exclusion). Matt Mathison must decide: (a) negotiate the price reduction as a condition of signing; (b) walk away if the seller refuses; (c) accept the inflated price if strategic rationale justifies it. My recommendation: negotiate the price reduction." Matt Mathison chooses option (a); negotiation proceeds

## Audit Log
All data room documents retained (by deal name — permanent for completed transactions; 5 years for deals that did not close). Diligence tracker history retained. Diligence findings reports retained. Matt Mathison update memos retained. M&A counsel communications retained (privileged — stored separately). Consent letters for change-of-control provisions retained. Any buyer or seller misrepresentations discovered post-close retained permanently.

## Deprecation
Retire when MBL Partners has a dedicated M&A function with an in-house transaction counsel and deal team — with Dr. Lewis reviewing financial diligence findings and M&A counsel managing legal diligence.
