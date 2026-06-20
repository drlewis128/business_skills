---
name: pe-legal-diligence
description: "Coordinate legal due diligence for MBL Partners acquisitions. Use when the user says 'legal due diligence', 'legal diligence', 'legal DD', 'legal review', 'legal risk', 'corporate governance review', 'cap table review', 'equity review', 'capitalization', 'entity structure diligence', 'contract review DD', 'customer contract review', 'vendor contract review', 'employment agreement review', 'real estate review', 'lease review DD', 'IP diligence', 'intellectual property review', 'IP ownership', 'litigation review', 'pending litigation', 'disclosed litigation', 'undisclosed litigation', 'regulatory compliance DD', 'compliance review', 'permits', 'licenses', 'environmental review', 'HIPAA compliance DD', 'BAA review', 'OIG LEIE', 'LEIE check', 'exclusion list', 'healthcare regulatory DD', 'CMS compliance', 'employment compliance DD', 'wage hour', 'ERISA DD', 'benefit plan DD', 'data privacy DD', 'CCPA', 'GDPR', 'data security DD', 'insurance DD', 'insurance review', 'indemnification', 'reps and warranties', 'purchase agreement risk', 'legal findings', 'legal red flag', or 'legal deal breaker'."
metadata:
  version: 1.0.0
  tier: private-equity
  owner: Dr. John Lewis
argument-hint: "[--company <company-name>] [--action <coordinate|review|report|escalate>] [--workstream <corporate|contracts|ip|litigation|regulatory|employment|environmental|data-privacy>] [--sector <healthcare|energy|ctv|general>]"
---

# PE Legal Diligence

Coordinate legal due diligence for MBL Partners acquisitions — managing the legal DD workstream through fund counsel, reviewing data room materials for legal risks, tracking findings against the investment thesis, and escalating material legal findings to Matt Mathison. Legal diligence protects MBL from acquiring undisclosed liabilities — litigation exposure that reduces value; IP ownership issues that undermine the business model; regulatory non-compliance that creates post-close cost; employment violations that create claims; and in the healthcare context, OIG/LEIE exclusions that would make the business unbillable to federal programs. Legal diligence is coordinated by Dr. Lewis but executed by fund counsel (or specialist counsel in healthcare/energy); Dr. Lewis manages the workstream, synthesizes findings, and translates legal risk into business impact for Matt Mathison.

## When to Use
- LOI signed and legal DD is initiated
- A specific legal risk is identified that needs deeper analysis
- Matt Mathison asks for a legal risk summary
- A legal finding may affect deal terms

## Legal Diligence Framework

```
LEGAL DD WORKSTREAM STRUCTURE:

  1. CORPORATE GOVERNANCE:
     Cap table: who owns what? Any options; warrants; rights; side agreements?
     Entity structure: is the entity properly formed and in good standing in all states?
     Board minutes (last 3 years): any unresolved issues; unusual approvals; related party transactions?
     Shareholder agreements: any rights of first refusal; drag-along; tag-along; consent rights?
     Prior financing agreements: any convertible notes; SAFEs; debt instruments with conversion rights?
     
  2. MATERIAL CONTRACTS:
     Customer contracts: standard vs. custom terms; auto-renewal vs. manual; termination provisions;
       change of control provisions (do contracts survive acquisition?)
     Vendor/supplier contracts: critical single-source vendors; termination rights; change of control
     Employment agreements: executive contracts; non-competes; non-solicits; change of control payments
     Real estate/leases: current term; renewal options; change of control consent requirements
     
     RED FLAGS IN CONTRACTS:
       Change of control clause that gives customer or vendor a termination right post-acquisition
       Non-compete restrictions that limit MBL's ability to expand the business
       Exclusivity clauses (company cannot serve other customers in a geography or segment)
       Revenue share or royalty obligations to third parties
       Personal guarantees from the seller that will not survive post-close
       
  3. INTELLECTUAL PROPERTY:
     IP ownership: does the company own its IP, or is it licensed?
     Key question: was software developed by contractors? Do the contractor agreements assign IP to the company?
     Patents: registered? pending? any infringement claims?
     Trademarks: registered? any confusion with existing marks?
     Trade secrets: are there NDAs and confidentiality agreements with employees and contractors?
     
  4. LITIGATION AND DISPUTES:
     Pending litigation: filed claims against or by the company
     Threatened litigation: demand letters; regulatory notices
     Settled litigation: terms of past settlements; any ongoing obligations?
     Employment disputes: EEOC charges; wage/hour claims; workers' comp claims
     
  5. REGULATORY COMPLIANCE:
  
     ALL BUSINESSES:
       Federal and state registrations current
       Operating licenses: current; in good standing; no pending suspension
       Required permits: environmental; occupational health; local
       
     HEALTHCARE (ALLEVIO FOCUS — HIGHEST PRIORITY):
       OIG/LEIE CHECK (pe-deal-breaker-tracker): every provider; every key personnel
         An excluded individual cannot receive payment from federal healthcare programs
         Even a single excluded provider = deal-killer or major restructuring required
       HIPAA: has the company implemented a HIPAA compliance program?
         BAA with all business associates?
         Privacy Notice in place?
         Security Rule implementation (administrative; physical; technical safeguards)?
         Any prior HIPAA breaches? OCR investigations or settlement agreements?
       CMS: any open audits; overpayment demands; corrective action plans?
       State medical board: any sanctions on providers; disciplinary actions?
       
     ENERGY (HIVE FOCUS):
       Mineral title/royalty title: clear, marketable title?
       DOGM compliance: any outstanding NOVs; violations?
       Environmental: any spills; contamination; environmental liens?
       
  6. EMPLOYMENT AND HR:
     I-9 compliance: are all employees properly verified?
     Wage/hour: overtime calculations; exempt/non-exempt classification
     ERISA: benefit plan compliance; any plan audits?
     Non-compete enforceability: are key employee non-competes valid under state law?
     Workers' comp: claims history; any open claims?
     
  7. DATA PRIVACY:
     CCPA (California employees or customers): compliance?
     GDPR (EU customers): compliance?
     Data breach history: any prior breaches? Notifications made?
     Data security posture: are customer and employee data adequately protected?
```

## Output Format

```markdown
# Legal Diligence Report — [Company Name] — [Date]
**Prepared by:** Dr. Lewis | **Legal Advisor:** [Firm] | **For:** Matt Mathison

---

## Legal Risk Summary

| Area | Finding | Severity | Business impact | Action required |
|------|---------|---------|----------------|----------------|
| OIG/LEIE | All [N] providers CLEAR | — | No impact | None |
| HIPAA | No formal compliance program | 🔴 HIGH | Post-close cost; potential liability | Price adjustment or indemnification |
| Customer contracts | 3 of 10 have change-of-control termination rights | ⚠️ MEDIUM | Revenue risk if customer exercises right | Specific rep + consent from customers |
| Litigation | $85K wage/hour claim; pending | ⚠️ MEDIUM | Cap at $150K with settlement | Escrow hold; specific indemnification |
| IP ownership | Contractor IP assignment gaps in 2 software modules | ⚠️ MEDIUM | IP risk if contractor asserts rights | Resolve before close; specific rep |

---

## OIG/LEIE Check Results

| Name | Role | Check date | Result |
|------|------|-----------|--------|
| [Provider 1] | PCP | [Date] | ✅ CLEAR |
| [Provider 2] | Specialist | [Date] | ✅ CLEAR |
| [Key Staff 1] | Operations | [Date] | ✅ CLEAR |
```

## Output Contract
- OIG/LEIE check is done before any other legal work in healthcare deals — it takes 15 minutes and can kill the deal instantly; there is no point spending $150K on legal diligence for a healthcare business that has an excluded provider; Dr. Lewis runs the OIG/LEIE check in the first 48 hours of DD for any healthcare deal; an excluded provider or key employee is immediately escalated to Matt Mathison; this is a deal-breaker in most cases (the excluded individual cannot be in a financial relationship with MBL's healthcare entities; restructuring is complex and often not worth it)
- Change-of-control provisions in customer contracts are quantified — "3 of 10 customers have change-of-control termination rights" is incomplete; "3 of 10 customers representing 45% of revenue have change-of-control termination rights; if all three exercise their rights, revenue falls by 45% — EBITDA falls to $[X]; deal value falls to $[X]" IS complete; Dr. Lewis quantifies every legal risk in business impact terms so Matt Mathison can make informed decisions about how to address each risk (price; contract; indemnification)
- IP ownership gaps are resolved before closing, not after — a software product whose key modules were developed by a contractor without a proper IP assignment agreement is a software product MBL may not fully own post-close; the contractor may assert rights to the code; the resolution is simple (get assignment agreements signed) but must happen before closing; Dr. Lewis identifies IP ownership gaps and requires them to be cured as a condition to closing; if the contractor cannot be located or refuses to sign, the business impact is assessed and fund counsel provides a risk opinion
- HITL required: OIG/LEIE match for any person → Matt Mathison immediately (deal-killer review); material HIPAA compliance failure → Matt immediately; change-of-control termination rights for >25% of revenue → Matt immediately; undisclosed material litigation → Matt immediately (misrepresentation concern); IP ownership gaps that can't be cured before close → Matt decision; any regulatory finding (open CMS audit; DOGM NOV) → Matt with impact assessment; legal diligence fee exceeding budget → Dr. Lewis approval

## System Dependencies
- **Reads from:** Data room (corporate; contracts; IP; litigation; regulatory); pe-deal-breaker-tracker (OIG/LEIE; regulatory checks); pe-diligence-coordinator (DD timeline and tracker); fund counsel (legal analysis and opinions); sector-specific databases (LEIE; NPDB; DOGM records; state medical board records)
- **Writes to:** Legal DD report (SharePoint → Deals → [Company] → DD → Legal); OIG/LEIE check results; Matt Mathison briefings (material findings); pe-diligence-coordinator (legal DD status); purchase agreement negotiation inputs (risks requiring specific reps; indemnification; escrow)
- **HITL Required:** OIG/LEIE match → Matt immediately; HIPAA failure → Matt immediately; change-of-control provisions for >25% revenue → Matt immediately; undisclosed litigation → Matt; IP gaps uncurable before close → Matt; open regulatory actions → Matt with impact; legal budget exceedance → Dr. Lewis approval

## Test Cases
1. **Golden path:** Healthcare MSO (Allevio add-on). OIG/LEIE check: 8 providers + 4 key staff — all CLEAR (48 hours from LOI signing). HIPAA: compliance program in place; BAAs with all business associates current; no OCR investigations. Customer contracts: all 9 employer group agreements reviewed — none have change-of-control termination rights (employer group contracts are annual renewals). Litigation: one former employee claim ($22K; settled; no ongoing obligation). IP: all software internally developed by employees under work-for-hire agreements. Legal DD: clean. Fund counsel recommends standard reps and 10% escrow / 12 months.
2. **Edge case:** A vendor contract (marketing agency that generates 40% of new employer group leads) has a change-of-control termination right with 30-day notice → Dr. Lewis: "The marketing agency contract is a legal finding that's also a commercial risk. If the agency exercises the termination right post-close, the company loses its primary new-employer-group lead source — this affects the growth thesis. My recommendation: before signing the purchase agreement, we require the seller to obtain a written consent from the agency waiving the change-of-control termination right. If the agency won't consent, we either (1) establish our own lead generation capability before close; (2) price the risk into the deal; or (3) require the agency consent as a condition to close. Matt: this needs a decision — I'll have it resolved within 2 weeks."
3. **Adversarial:** Seller's counsel objects to providing the complete list of employees for OIG/LEIE screening, arguing "employee privacy" → Dr. Lewis: "OIG/LEIE screening requires names, dates of birth, and Social Security Numbers for licensed providers and key personnel. This is standard in any healthcare acquisition — it is not optional. Employee privacy concerns are addressed by the confidentiality provisions of the NDA we've already executed; screening results are not shared with anyone outside the MBL DD team and fund counsel. The alternative to providing this information is that we cannot validate that the business is free from OIG exclusions — which is a condition to closing. If the seller cannot provide this information, we cannot proceed. I'll send a formal request letter through fund counsel today."

## Audit Log
All legal DD work product retained permanently (by deal name; closing date). OIG/LEIE check records retained (with check dates; personnel names; results). Contract review summaries retained. Litigation review records retained. IP ownership analysis retained. Legal risk quantification analysis retained. Matt Mathison briefings retained.

## Deprecation
Legal diligence is active during the fund's investment period. Sector-specific legal DD requirements (HIPAA; DOGM; SEC) are updated when applicable regulations change.
