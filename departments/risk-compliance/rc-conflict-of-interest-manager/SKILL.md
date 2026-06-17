---
name: rc-conflict-of-interest-manager
description: "Manage conflict of interest disclosures, related-party transactions, and ethics compliance. Use when the user says 'conflict of interest', 'COI', 'related party', 'related-party transaction', 'self-dealing', 'COI disclosure', 'board conflict', 'disclose interest', 'recuse', 'arm's length', 'COI policy', 'COI review', 'executive conflict', 'vendor relationship conflict', or 'COI register'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <disclose|review|approve|report>] [--type <vendor|employment|investment|board|other>]"
---

# Conflict of Interest Manager

Manage conflict of interest (COI) disclosures and related-party transactions at MBL portfolio companies — ensuring that any potential conflict between an employee's or executive's personal interests and the company's interests is disclosed, reviewed, and managed appropriately. COI management is a fiduciary obligation at the portfolio level and a practical risk management tool: undisclosed conflicts discovered in diligence, regulatory investigations, or litigation are significantly more damaging than conflicts that were disclosed and properly managed. The THRIVE value of Integrity is the foundation — doing the right thing when no one is watching means disclosing a conflict even when it's uncomfortable.

## When to Use
- An employee or executive has a potential conflict of interest — how to disclose and manage it
- A related-party transaction is being contemplated — what process is required?
- Annual COI certifications are due — who must certify?
- A vendor relationship exists with a connected party — is it at arm's length?
- Preparing for diligence — are all related-party transactions documented and disclosed?
- A COI policy needs to be drafted or reviewed

## COI Framework

```
What is a conflict of interest?
  A conflict exists when an employee or executive has a personal interest that could impair — or appear to impair — their ability to act in the best interests of the company
  
  Common COI categories:
    Vendor/contractor conflicts: Employee's family member or company owned by the employee is a vendor
    Employment conflicts: Employee has a second job that competes with or is a vendor of the company
    Investment conflicts: Employee has a financial interest in a competitor, customer, or vendor
    Board conflicts: Board member has a financial interest in a proposed transaction or in a competitor
    Hiring conflicts: Employee approves hiring of a family member or romantic partner
    Gift and entertainment conflicts: Vendor provides gifts or entertainment that could influence procurement decisions
    
  Not all conflicts are disqualifying — some can be managed with proper disclosure and controls:
    Managed: Full disclosure; recusal from related decisions; arm's length verification; Matt Mathison awareness
    Disqualifying: If the conflict cannot be managed (e.g., employee is approving payments to their own company) without compromising the company's interests — the position or the relationship must change
    
Related-party transactions (RPTs):
  Definition: Any transaction between a portfolio company and a person or entity that is related to a key employee, executive, or investor
  Examples:
    → CEO's consulting company provides services to the portfolio company
    → Executive approves lease of a property owned by a family member
    → Portfolio company contracts with a company in which Dr. Lewis has an equity interest
  
  Required process for RPTs:
    Step 1: Disclose the relationship and transaction to Dr. Lewis (or to Matt Mathison if Dr. Lewis is the related party)
    Step 2: Dr. Lewis reviews for arm's length terms (is the price market rate?)
    Step 3: Matt Mathison informed and approves before transaction is executed
    Step 4: RPT documented in the related-party register
    Step 5: RPT disclosed in financial reporting as applicable (LP reporting)
    
  At arm's length: The transaction price and terms are comparable to what would be obtained from an unrelated third party; competitive bids or market rate evidence required for RPTs above $5,000
  
Annual COI certification:
  Who must certify: All executives; all managers; all employees who approve payments, hiring, or procurement
  Certification content: "I have disclosed all material COIs; no undisclosed conflicts exist; I will disclose any future conflicts promptly"
  Timing: Annual; also at hire; also upon any material change in personal circumstances
  Review: Dr. Lewis reviews all certifications; any disclosed COI is assessed and documented
  
Gift and entertainment policy:
  Gifts received: Employees may not accept gifts from vendors/customers >$50 in value; any gift must be reported to manager
  Gifts given: Company gifts to customers/vendors must be pre-approved; >$100 requires manager approval; >$250 requires CEO approval
  Entertainment: Reasonable business entertainment is permitted; excessive entertainment from or to a party with a business relationship is a COI concern
  FCPA: No cash or cash-equivalent gifts to government officials (foreign or domestic); attorney immediately
```

## Output Format

```markdown
# COI Disclosure and Related-Party Transaction Register — <Company Name>
**Maintained by:** Dr. John Lewis | **Last annual certification:** [Date]

---

## Annual COI Certification Status

| Certification year | Required to certify | Certified | Uncertified (follow up) | Disclosures received |
|------------------|-------------------|---------|----------------------|---------------------|
| [Year] | [N executives + managers] | [N] | [N — names] | [N] |

---

## COI Disclosures

| ID | Disclosing party (role) | Nature of conflict | Disclosed date | Assessment | Action | Matt Mathison aware |
|----|------------------------|------------------|-------------|-----------|--------|-------------------|
| COI-2026-001 | Controller | Spouse provides bookkeeping services (not to this entity — different company) | [Date] | No conflict — different entity; monitor | Disclosure acknowledged | N/A |
| COI-2026-002 | CEO | Considering investment in a startup that may seek services from Allevio | [Date] | Potential conflict | CEO will recuse from any related decisions; disclose to Matt Mathison | ✅ [Date] |

---

## Related-Party Transaction Register

| RPT ID | Entity | Related party | Relationship | Transaction description | Amount | Arm's length evidence | Matt Mathison approved | Date |
|-------|--------|-------------|------------|----------------------|--------|---------------------|---------------------|------|
| RPT-2026-001 | Allevio | [Vendor Name] | CEO's brother-in-law owns vendor | Office cleaning services | $18,000/yr | 3 competitive bids obtained; price is $2,400 below next lowest bid ✅ | ✅ [Date] | [Date] |
| RPT-2026-002 | MBL | [Entity] | Dr. Lewis advises Board | Speaking engagement — $2,500 fee paid to Dr. Lewis by external company | $2,500 | Market rate for speaking engagement; CEO approved | N/A (below threshold; CEO approved) | [Date] |

---

## Open COI Cases

| ID | Status | Next action | Due |
|----|--------|-----------|-----|
| COI-2026-002 | Monitoring — CEO investment decision pending | CEO to confirm investment decision / recusal plan | [Date] |

---

## Matt Mathison Brief (for RPTs >$5K or executive COIs)

[Company] COI/RPT report: [Number] disclosures in [period]. Related-party transactions: [Description]. Arm's length: ✅ / ⚠️ [issue]. Action: [What was decided]. [Any undisclosed conflicts discovered]. [Diligence readiness: all RPTs documented ✅].
```

## Output Contract
- Matt Mathison approves all related-party transactions before execution — this is the non-negotiable control; a CEO who discloses a RPT to Dr. Lewis, receives Dr. Lewis's assessment, and then proceeds without Matt Mathison's approval has not followed the process; the sequence is: disclose → Dr. Lewis assessment → Matt Mathison approval → execute; a RPT discovered in diligence without Matt Mathison's prior approval is a significant governance finding regardless of how arm's length the terms were; the disclosure and approval record is the evidence that the RPT was managed appropriately
- Annual COI certifications are collected from everyone who approves payments, hiring, or procurement — not just executives; the accounts payable coordinator who approves vendor invoices must certify; the hiring manager who approves offers must certify; the scope of certification follows the scope of risk; a staff member with no approval authority and no vendor relationships has minimal COI risk — certification is still best practice but the priority for follow-up is those with approval authority
- Gift policy violations are COI events — an employee who receives a $500 gift card from a vendor and doesn't report it has a potential COI (the vendor is influencing decisions through gifts); Dr. Lewis treats gift policy violations as COI concerns, not just conduct concerns; the relevant question is: did the gift influence a business decision? Even if no influence can be proven, the appearance of influence damages integrity; the THRIVE filter: Integrity requires full disclosure of anything that could create an appearance of self-interest
- HITL required: Dr. Lewis manages COI disclosures and RPT register; CEO approves RPTs below Matt Mathison threshold (per Delegation of Authority); Matt Mathison approves all RPTs >$5K and all executive COIs; attorney for RPTs where arm's length is disputed or where legal fiduciary duty questions arise; Matt Mathison annual COI summary; all diligence RPT disclosures include Matt Mathison approval records

## System Dependencies
- **Reads from:** Annual COI certifications (SharePoint/Policies/COI/Certifications/), vendor payment records (Bill.com — identify vendors with employee relationships), hiring records (detect family member hiring), RPT register (this skill), rc-policy-manager (COI policy)
- **Writes to:** COI register (SharePoint/RC/<Company>/COI/); RPT register; annual certification log; Matt Mathison notifications and approval records; LP disclosure reporting; diligence documentation package
- **HITL Required:** Dr. Lewis manages; Matt Mathison approves all RPTs >$5K and executive COIs; attorney for fiduciary disputes; Matt Mathison annual COI summary; all diligence packages include Matt Mathison approval records for RPTs

## Test Cases
1. **Golden path:** Annual COI certification cycle for MBL Holdings → Certification forms sent to all 8 executives and managers; 8 of 8 returned within 30 days; 1 disclosure: VP Operations is on the advisory board of a startup that provides marketing services and may pitch to MBL portfolio companies; assessment: this is a potential conflict if the startup pitches to Allevio or HIVE; action: VP Operations must recuse from any evaluation of that startup's proposals; disclosure acknowledged; Matt Mathison informed; COI register updated; no other disclosures; annual certifications complete; register current
2. **Edge case:** Controller discovers that a new vendor (approved last month) is owned by the CEO's college roommate — no COI disclosure was made → Potential undisclosed RPT; Dr. Lewis initiates review; did the CEO know? Obtain information from CEO; if the CEO knew of the relationship and did not disclose: COI violation (undisclosed conflict); Matt Mathison informed immediately; assess arm's length of the vendor relationship; assess whether the CEO's involvement in vendor selection should be reviewed; if the CEO was unaware (coincidence): lower severity; document; disclose prospectively; monitor for any favorable treatment of the vendor; regardless of awareness: document the COI disclosure retroactively; Matt Mathison approval for the RPT (retroactive but documented); add to RPT register
3. **Adversarial:** "We're a small company — nobody is going to accuse us of self-dealing" → Related-party transactions discovered in diligence (without prior disclosure) are one of the most common reasons deals fall through or prices are reduced; the buyer's question is: "If management didn't disclose this, what else wasn't disclosed?"; the amount of the RPT matters less than the fact of concealment; a $5,000 undisclosed RPT in a $3M acquisition is not a $5,000 problem — it is a credibility problem that reduces the buyer's confidence in everything else they've been told; Dr. Lewis maintains the RPT register precisely to ensure that every RPT is documented, approved, and available for diligence

## Audit Log
COI disclosures retained permanently. Annual certifications retained 7 years. RPT register retained permanently with Matt Mathison approval records. Gift policy violations retained in personnel files. Attorney engagement records retained permanently. LP disclosure records retained permanently.

## Deprecation
Retire when portfolio companies have formal governance functions with audit committee oversight of RPTs and annual COI certification programs — with Dr. Lewis maintaining the portfolio-level RPT register and Matt Mathison annual COI summary.
