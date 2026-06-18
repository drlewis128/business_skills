---
name: legal-nda-manager
description: "Draft, review, and track non-disclosure agreements for portfolio companies. Use when the user says 'NDA', 'non-disclosure agreement', 'confidentiality agreement', 'send an NDA', 'draft an NDA', 'review the NDA', 'NDA template', 'mutual NDA', 'one-way NDA', 'need an NDA', 'confidentiality', 'keep this confidential', 'before we share information', 'NDA before the meeting', 'NDA for the deal', 'NDA for the vendor', 'NDA for the employee', 'sign an NDA', 'NDA tracking', or 'confidentiality agreement management'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--type <mutual|one-way>] [--purpose <deal|vendor|employee|partner>] [--entity <company name>] [--counterparty <name>]"
---

# NDA Manager

Draft, review, and track non-disclosure agreements for MBL portfolio companies — ensuring that confidential business information is protected before sharing in vendor evaluations, deal discussions, partnership conversations, and employment contexts. NDAs are the first legal document in almost every significant business relationship; a missing or poorly drafted NDA is how companies lose trade secrets, deal information, and competitive intelligence. Dr. Lewis maintains the NDA templates, reviews inbound NDAs, and tracks all executed NDAs.

## When to Use
- Before sharing any non-public financial or operational information with a vendor, partner, or potential acquirer
- Before a deal discussion that will involve sharing Allevio, HIVE, or Column6 business information
- Before hiring a contractor or consultant who will have access to confidential business data
- A counterparty sends an NDA for review before the first meeting

## NDA Framework

```
NDA TYPE SELECTION:

  Mutual NDA (both parties bound):
    When: Deal discussions; strategic partnerships; M&A conversations; vendor evaluations where both parties share
    Key elements: Both parties are "Disclosing Party" and "Receiving Party"; obligations are symmetric
    Use case examples: Potential acquirer in early M&A conversation; strategic partner evaluation; investor conversations
    
  One-Way NDA (only Receiving Party bound):
    When: Sharing information with a service provider who won't be sharing confidential information back
    Key elements: Only the Receiving Party is restricted; Disclosing Party is MBL/portfolio company
    Use case examples: Sharing financials with a vendor for pricing purposes; due diligence provider

NDA ESSENTIAL TERMS:

  Definition of Confidential Information:
    Include: Financial information; business strategies; customer and patient data; pricing; technology
    Exclude: Information already publicly known; independently developed by recipient; required by law to disclose
    HIPAA NOTE (Allevio): NDA alone is NOT sufficient for sharing patient health information (PHI)
      PHI sharing requires a HIPAA Business Associate Agreement (BAA) in addition to or instead of NDA
      See legal-hipaa-compliance-manager for BAA requirements
      
  Obligations of Receiving Party:
    Use only for the stated purpose of the relationship
    Do not disclose to third parties without consent (subcontractors require equivalent obligations)
    Protect with at least the same standard of care as own confidential information (minimum reasonable care)
    
  Term:
    NDA duration: 2 years minimum; 3-5 years for M&A discussions
    Confidentiality obligations typically survive termination of the NDA itself
    Avoid "perpetual" confidentiality terms — unreasonable and often unenforceable
    
  Return or Destruction:
    On termination: Receiving party must return or certify destruction of confidential information
    Exception: Required by law to retain; backup copies in automated systems (standard carve-out)
    
  Governing Law and Jurisdiction:
    Default: Arizona law / Maricopa County courts
    Exception: Counterparty insists on their state — acceptable if otherwise favorable terms
    
MBL STANDARD NDA POSITIONS:
  Duration: 3 years for M&A/deal discussions; 2 years for vendor/partner
  Purpose clause: Limit to the specific relationship (not "any potential business relationship" — too broad)
  Non-solicitation: Not required in a standard NDA but can be added for key employees in deal discussions
  Residuals: NEVER accept a residuals clause — residuals allow the receiving party to use confidential information retained in memory (often inserted by tech companies; MBL rejects it)
  
NDA TRACKING:
  Log all executed NDAs in the contract tracker (same as any other contract)
  Key fields: Counterparty; purpose; mutual or one-way; effective date; term; any non-solicitation provisions
  Alert: If NDA expires and relationship is still active → renew or execute a new NDA before continuing to share information
```

## Output Format

```markdown
# NDA Summary — [Mutual/One-Way] NDA with [Counterparty]
**Entity:** [Portfolio Company] | **Purpose:** [M&A / Vendor / Partner / Employee] | **Date:** [Date]
**Type:** Mutual / One-Way | **Term:** [X] years | **Governing law:** Arizona
**Status:** Draft / Under review / Executed

---

## Key Terms

**Confidential information defined as:** [Summary of what is covered]
**Receiving party obligations:** [What the counterparty must do to protect the information]
**Purpose restriction:** [Limited to: specific purpose]
**Term:** [Start] to [End] | **Obligations survive termination:** Yes

---

## Red Flags (if reviewing inbound NDA)

| Issue | Clause | Risk | Recommended Fix |
|-------|--------|------|----------------|
| [Residuals clause] | Section 3.4 | Allows use of confidential info retained in memory | Delete clause entirely |
| [Perpetual duration] | Section 7 | Unenforceable and unreasonable | Change to 3 years |

---

## HIPAA Note (Allevio Only)

[If applicable]: This NDA does NOT substitute for a HIPAA BAA. If [Counterparty] will access patient data (PHI), a BAA must be executed. See legal-hipaa-compliance-manager.

---

## Recommendation

**[SIGN / NEGOTIATE / DO NOT SIGN]** — [Rationale]
**Log in contract tracker:** Yes — [summary of what to log]
```

## Output Contract
- NDAs are not a formality — an NDA is a legally binding agreement that defines what information is protected and what remedies exist if it's breached; a well-drafted NDA enables legal action when confidential information is misused; a poorly drafted NDA (or none at all) leaves the company with no remedy; Dr. Lewis treats NDAs as the minimum threshold of information protection, not a rubber stamp; if the counterparty wants to proceed without an NDA, Dr. Lewis recommends not sharing any confidential information — the conversation can proceed at the public information level only until an NDA is in place
- Residuals clause is a hard rejection — a residuals clause (often called "residual knowledge") says the recipient can use any information "retained in the unaided memory of [recipient's] employees" — effectively gutting the NDA's protections; any tech company, consulting firm, or competitor who insists on a residuals clause should be viewed with suspicion; Dr. Lewis rejects all residuals clauses and is clear with the CEO about why; if the counterparty insists on a residuals clause, Dr. Lewis escalates to Matt Mathison before proceeding with the information sharing
- HIPAA BAA is separate — for Allevio, an NDA does not cover patient health information (PHI); PHI sharing requires a HIPAA Business Associate Agreement (BAA) that meets the specific HIPAA requirements; Dr. Lewis flags this explicitly whenever an Allevio NDA is involved so the CEO does not accidentally assume NDA coverage extends to patient data
- HITL required: Dr. Lewis reviews; CEO signs (or Dr. Lewis signs as authorized signatory for NDA-level agreements at MBL's direction — this requires explicit authorization per company); counterparty signs; executed NDA logged in contract tracker; any NDA covering M&A discussions requires Matt Mathison awareness before information sharing begins

## System Dependencies
- **Reads from:** MBL NDA template library (SharePoint/Legal/Templates/NDA_Mutual.docx and NDA_OneWay.docx); contract tracker (prior NDAs with same counterparty); legal-hipaa-compliance-manager (HIPAA BAA requirements for Allevio)
- **Writes to:** NDA draft (sent to counterparty for review); executed NDA filed in SharePoint/Legal/<Company>/NDAs/; contract tracker (log new NDA); if HIPAA-relevant: BAA process initiated via legal-hipaa-compliance-manager
- **HITL Required:** Dr. Lewis reviews any inbound NDA; CEO reviews and approves non-standard terms; CEO or Dr. Lewis (if authorized) signs; Matt Mathison informed of any NDA covering M&A-level information sharing; Dr. Lewis logs all executed NDAs in the contract tracker within 24 hours of execution

## Test Cases
1. **Golden path:** HIVE is exploring a strategic partnership with a midstream operator in the Uinta Basin — mutual NDA needed before sharing production data → Dr. Lewis uses the mutual NDA template: 3-year term; both parties are Disclosing Party and Receiving Party; confidential information includes production data, financial projections, operating costs, and strategy; purpose: limited to evaluating a potential pipeline transportation agreement; governing law: Arizona; no residuals clause; return or destroy on termination; Dr. Lewis reviews the template, sends to the HIVE CEO for signature, then routes to the counterparty for counter-signature; upon execution, logs in contract tracker (NDA mutual; HIVE/[Operator]; effective date; 3-year term; purpose: pipeline evaluation)
2. **Edge case:** A potential Column6 acquirer sends their own NDA template — the template includes a residuals clause and a 5-year non-solicitation of employees → Dr. Lewis reviews: "The acquirer's NDA has two issues. First, the residuals clause in Section 4.2 must be deleted — it would allow their team to use Column6's business information retained in memory, which is not acceptable protection for our proprietary ad targeting data. Second, the 5-year employee non-solicitation is longer than standard (2 years is typical) and would restrict Column6's ability to hire if this deal doesn't close. I recommend pushing back on both: delete residuals, reduce non-solicitation to 18 months. If they insist on residuals, escalate to Matt Mathison before we share any Column6 financial information." CEO negotiates; residuals deleted; non-solicitation reduced to 18 months; NDA executed
3. **Adversarial:** An Allevio clinic is considering sharing patient outcome data with a healthcare analytics vendor for benchmarking — they send Dr. Lewis the vendor's standard NDA and ask if it's sufficient → Dr. Lewis flags immediately: "Patient outcome data is Protected Health Information (PHI) under HIPAA. An NDA is not sufficient. We need a HIPAA Business Associate Agreement (BAA) with this vendor before sharing any PHI. The BAA must include the specific HIPAA-required provisions around PHI handling, breach notification, and subcontractor obligations. I will not clear this for sharing until a BAA is executed. I'll initiate the BAA process with the vendor — can you send me their legal contact?" NDA is set aside; BAA process initiated

## Audit Log
All executed NDAs retained by counterparty and date. NDA review memos retained. Contract tracker entries for all NDAs. Any NDA breaches (suspected or confirmed) retained with documentation of response. Expired NDA alerts retained (did renewal happen before continued information sharing?).

## Deprecation
Retire when each portfolio company has in-house counsel who maintains the NDA library and executes NDAs as a standard part of business development — with Dr. Lewis reviewing any NDA that covers M&A-level confidential information.
