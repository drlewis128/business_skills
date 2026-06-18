---
name: legal-msa-builder
description: "Draft and negotiate Master Service Agreements for MBL portfolio companies. Use when the user says 'MSA', 'master service agreement', 'master agreement', 'framework agreement', 'services agreement', 'master contract', 'draft an MSA', 'review the MSA', 'vendor MSA', 'client MSA', 'customer MSA', 'service contract framework', 'professional services agreement', 'master vendor agreement', 'blanket purchase order agreement', 'service level agreement', 'SLA', 'SOW framework', 'statement of work', or 'master services framework'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--side <vendor|client>] [--entity <company name>] [--counterparty <name>] [--action <draft|review|negotiate>]"
---

# MSA Builder

Draft and negotiate Master Service Agreements (MSAs) for MBL portfolio companies — establishing the legal framework for ongoing service relationships before individual Statements of Work (SOWs) are executed. An MSA negotiated well is an asset: it sets the terms once and avoids renegotiating legal provisions on every project; an MSA negotiated poorly is a liability that follows every subsequent SOW. Dr. Lewis builds MBL-favorable MSA templates and reviews counterparty MSAs before execution.

## When to Use
- A portfolio company is entering a recurring service relationship with a vendor (use MSA + SOW structure)
- A portfolio company is selling recurring services to a customer (draft MBL-favorable client MSA)
- A technology vendor sends their standard MSA for signature
- Dr. Lewis is standardizing the contract process for a portfolio company

## MSA Framework

```
MSA STRUCTURE AND CRITICAL PROVISIONS:

  SCOPE AND SOW PROCESS:
    MSA governs the relationship; individual SOWs govern specific projects
    SOW must include: Description of services; deliverables; timeline; fees; acceptance criteria
    Change order process: Any scope change requires a written amendment before work begins
    SOW incorporated into MSA: Each SOW becomes part of the agreement
    
  FEES AND PAYMENT:
    Rate/fee structure: Fixed fee (for defined deliverables) vs. T&M (for flexible scope)
    Invoice schedule: Monthly; milestone-based; on delivery
    Payment terms: Net 30 (MBL standard); push back on Net 15 requests from vendors
    Late payment: Industry standard: 1.5%/month on overdue amounts
    Expense reimbursement: Cap at approved types; require receipts; pre-approval for travel
    
  TERM AND TERMINATION:
    Initial term: 1 year (most vendor MSAs); auto-renewal with 30-day notice
    Termination for convenience: Both parties should have this right (typically 60 days notice)
    Termination for cause: Immediate termination for uncured material breach after 30-day cure period
    Effect of termination: Outstanding SOWs; in-progress work; payment for completed work
    
  INTELLECTUAL PROPERTY:
    For vendor MSAs (we are the client):
      Work product: All deliverables created for us are our IP (work for hire or assigned)
      Pre-existing IP: Vendor retains their pre-existing IP; we get a license to use it in deliverables
      Background IP: Define clearly what the vendor brings vs. what they create for us
    For client MSAs (we are the service provider):
      Work product: We may need to retain some IP rights (especially if reusable across clients)
      License grant: We grant the client a license to use deliverables for agreed purposes
      
  CONFIDENTIALITY:
    Mutual: Both parties keep each other's confidential information secret
    Duration: During the agreement + [2-3] years after termination
    Standard exclusions: Information that is publicly known; independently developed; required by law
    HIPAA addendum: For Allevio, any vendor with access to PHI → BAA is required
      (NDA/confidentiality clause in MSA is not sufficient for HIPAA purposes)
    
  REPRESENTATIONS AND WARRANTIES:
    Vendor reps: Services will be performed professionally; deliverables will conform to specifications;
      no infringement of third-party IP; vendor has authority to enter the agreement
    Client reps: Client has authority to enter the agreement; client materials don't infringe third-party IP
    
  LIABILITY AND INDEMNIFICATION:
    Mutual limitation of liability: Cap at fees paid in prior 12 months (both parties)
    Mutual exclusion of consequential damages: Neither party liable for indirect/consequential damages
    Indemnification:
      Vendor indemnifies company for: IP infringement; vendor's gross negligence or willful misconduct
      Company indemnifies vendor for: Company's gross negligence or willful misconduct
      DO NOT indemnify the vendor for their own negligence
    Insurance: Vendor must maintain GL ($1M minimum); E&O if professional services ($1M minimum)
    
  DISPUTE RESOLUTION:
    Step 1: Notice + 30-day discussion period (required before any formal dispute proceeding)
    Step 2: Mediation (optional but recommended)
    Step 3: Arbitration or litigation (per governing law)
    Governing law: Arizona (for Allevio/MBL); Utah (for HIVE); preference for Arizona
    
  AUDIT RIGHTS:
    For client MSAs paying material amounts: Right to audit vendor's records related to the services
    Standard in enterprise agreements; may be resisted by smaller vendors
    Frequency: No more than once per year; reasonable notice required
    
MBL-FAVORABLE POSITIONS (as client):
  ✅ Always get: Work product IP assignment; mutual limitation of liability; consequential damages exclusion
  ✅ Always get: Termination for convenience right; governing law in our state
  ✅ Push hard for: Liability cap at prior 12 months of fees; not contract total value
  ❌ Reject: Vendor-favorable IP provisions (vendor retains all work product)
  ❌ Reject: Unlimited liability provisions
  ❌ Reject: Mandatory arbitration in vendor's state
  ❌ Reject: Residuals clauses (vendor can use knowledge retained in memory)
```

## Output Format

```markdown
# MSA Review / Draft Summary — [Service Type] with [Counterparty]
**Entity:** [Portfolio Company] | **Side:** [Client / Vendor] | **Date:** [Date]
**Reviewed by:** Dr. Lewis | **Recommendation:** SIGN / NEGOTIATE / ESCALATE

---

## Key Terms Summary

| Provision | Current Draft | MBL Position | Status |
|-----------|--------------|-------------|--------|
| Work product IP | [Vendor retains] | Client owns all deliverables | ❌ Negotiate |
| Liability cap | [Uncapped] | 12× monthly fees | ❌ Negotiate |
| Termination for convenience | [Not present] | 60-day notice right | ❌ Negotiate |
| Consequential damages | [Not excluded] | Mutual exclusion | ❌ Negotiate |
| Governing law | [Vendor's state] | Arizona | ⚠️ Negotiate |
| Payment terms | Net 30 | Net 30 | ✅ |

---

## Red Flags

| Issue | Risk | Fix |
|-------|------|-----|
| [No work product assignment] | Company doesn't own deliverables | Add IP assignment provision |
| [Residuals clause] | Vendor can use our confidential info indefinitely | Delete residuals clause |

---

## Recommendation

**[SIGN / NEGOTIATE before signing / ESCALATE]**
[2-sentence rationale and next steps]
```

## Output Contract
- SOW is where the project lives; MSA is where the risk lives — the MSA provisions (liability cap, IP ownership, confidentiality) govern every SOW under it; the SOW should focus on the work: what is being delivered, by when, and for how much; the legal protections are in the MSA; a company that signs a vendor's unfavorable MSA "because it's just for one project" has committed to those unfavorable terms for every subsequent SOW under that MSA; Dr. Lewis reviews the MSA with the same attention as any other commercial contract
- IP ownership in services agreements must be explicit — the default rule under U.S. copyright law is that the creator owns the work (unless it qualifies as work for hire); for an independent contractor, "work for hire" only applies to specifically enumerated categories; if the deliverable doesn't fit a category, the contractor owns it; this means a vendor who builds a custom software module for Allevio owns it by default unless the MSA includes an assignment clause; Dr. Lewis includes explicit IP assignment language in every client-side MSA: "Contractor hereby assigns all right, title, and interest in all deliverables to Company"
- Limitation of liability must be bilateral — a limitation of liability that caps the vendor's liability but not the company's liability is not a mutual limit; it protects the vendor but not the company; Dr. Lewis requires bilateral limitation of liability: both parties are capped at the same amount (prior 12 months of fees); this is standard commercial practice; vendors who resist a bilateral limit (wanting to limit their own liability but not the company's) should face pushback
- HITL required: Dr. Lewis reviews and recommends; CEO approves and signs MSAs; outside counsel required for MSAs >$50K annual value or with significant liability terms (professional services, technology platform, healthcare-specific); Matt Mathison approves any MSA creating obligations >$50K annual; Dr. Lewis does not sign MSAs on behalf of portfolio companies without CEO delegation of authority; all executed MSAs are logged in the contract tracker

## System Dependencies
- **Reads from:** MBL MSA template library (SharePoint/Legal/Templates/MSA_Client.docx and MSA_Vendor.docx); counterparty's standard MSA (if they send one for review); contract tracker (for prior agreements with the same counterparty); legal-contract-reviewer (if the MSA needs full contract review treatment); legal-hipaa-compliance-manager (if Allevio vendor needs a BAA in addition to MSA)
- **Writes to:** MSA draft (sent to counterparty); executed MSA (SharePoint/Legal/<Company>/Contracts/[Counterparty]_MSA_[Date].pdf); contract tracker entry (renewal date, ACV, SOW process); SOW template (if the MSA includes a standard SOW format)
- **HITL Required:** Dr. Lewis reviews; CEO approves and signs; outside counsel for >$50K or high-liability; Matt Mathison for >$50K obligations; HIPAA BAA in parallel for Allevio PHI-handling vendors; Dr. Lewis logs all executed MSAs in the contract tracker within 24 hours of execution

## Test Cases
1. **Golden path:** Allevio is engaging a healthcare data analytics firm for a 2-year MSA (~$36K/year) — the firm sends their standard MSA → Dr. Lewis reviews: IP: Vendor retains all deliverables (❌ — requires amendment; Allevio must own the analytical reports produced about its members); Liability cap: Vendor capped at contract value ($72K); Allevio is uncapped (❌ — require bilateral cap); Termination for convenience: 90-day notice (⚠️ — reduce to 60 days); Consequential damages: Not excluded (❌ — add mutual exclusion); HIPAA: No BAA provision (❌ — critical; this vendor will process PHI; BAA required); Recommendation: NEGOTIATE — 5 specific redlines needed; escalate BAA to HIPAA process in parallel; Dr. Lewis sends redlines; vendor accepts IP assignment and bilateral limit; BAA executed; MSA signed after all issues resolved
2. **Edge case:** Column6 wants to use its own MSA template for a new advertiser client relationship (Column6 is the service provider) → Dr. Lewis reviews the Column6 client MSA template from the client's perspective: IP: Template says all work product and audience data developed in the campaigns remain Column6's property (✅ from Column6's perspective — Column6 retains its proprietary targeting data); but the template does not give the client ownership of the creative assets they delivered to Column6 for the campaign (❌ — the client owns their own creative; Column6 needs only a license to run it); Client's payment obligation: Net 30 (✅); Agency self-pay provisions (✅ per 4A's credit terms); Limitation of liability: Column6 capped at campaign fees; client uncapped (❌ — should be bilateral); Dr. Lewis recommends two changes to the Column6 client MSA template: add the client's IP ownership of their creative assets; add bilateral limitation of liability; template updated; Column6 signs updated version with new client
3. **Adversarial:** A large technology vendor's MSA includes a "Service Level Agreement" with an uptime guarantee of 99.5% but the remedy for failure is a 5% service credit on the next invoice — Column6 is relying on this vendor for its ad serving platform, and downtime directly translates to lost revenue → Dr. Lewis flags: "The remedy for SLA failure (5% service credit) is grossly inadequate given the business impact. If the ad serving platform is down for 1 hour, Column6 loses revenue for every impression not served. At $40K/month, an hour of downtime might cost $1,000-$2,000 in missed inventory; a 5% monthly credit on $40K = $2,000 — barely equivalent to 1 hour of downtime. For a mission-critical platform, I recommend: (1) Increase the SLA credit to 10-15% per incident; (2) Add a right to terminate for repeated SLA failures (3 failures in 12 months = termination right); (3) Add a clause specifically addressing 'critical downtime' (>4 consecutive hours) with an escalated remedy." Vendor negotiates; critical downtime remedy improved; Column6 has better protection

## Audit Log
All MSA reviews retained by counterparty and date. Executed MSAs retained in SharePoint. Contract tracker entries for all executed MSAs. SOWs executed under each MSA retained with the master. Any MSA amendments retained. Outside counsel reviews retained.

## Deprecation
Retire when each portfolio company has in-house counsel who maintains the MSA template library — with Dr. Lewis reviewing any MSA with significant liability terms and Matt Mathison approving obligations >$50K.
