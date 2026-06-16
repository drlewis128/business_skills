---
name: it-data-governance
description: "Establish data governance — classification, ownership, retention, and privacy. Use when the user says 'data governance', 'data ownership', 'data stewardship', 'data retention', 'data policy', 'GDPR', 'CCPA', 'data privacy', 'data lifecycle', 'data classification framework', 'data catalog', 'master data management', 'data standards', 'who owns the data', or 'data governance framework'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--action <classify|assign-ownership|retention-policy|privacy-assessment>]"
---

# IT Data Governance

Establish data governance at MBL portfolio companies — defining data classification, ownership, retention policies, and privacy requirements so that data is managed consistently, protected appropriately, and retained or destroyed on a defined schedule. Data governance at portfolio scale is about answering four questions for every type of sensitive data: Who owns it? How long do we keep it? Where does it live? Who can access it?

## When to Use
- Establishing data governance for the first time at a portfolio company
- A data-related compliance audit (HIPAA, SOC 2, CCPA) requires data governance documentation
- Before deploying a new system that will store sensitive data
- Data retention policies need to be defined or reviewed
- A data privacy request is received (CCPA: "delete my data" or "give me my data")
- Annual data governance review

## Data Governance Framework

```
Data governance structure:
  Data Owner: The business unit or executive accountable for a data domain
    → Finance data: Controller / CFO
    → Patient data (Allevio): Privacy Officer / Clinical Director
    → Customer data: Sales / Marketing lead
    → Employee data: HR Director
    → IT/Operations data: Dr. Lewis
    
  Data Steward: The person who operationally manages data quality and access
    → Often the same person as the owner at MBL portfolio scale
    
  Data Custodian: IT — responsible for technical controls (storage, backups, access enforcement)
    → Dr. Lewis at current portfolio scale
    
Data classification (see also: it-data-loss-prevention):
  Tier 1 — Public: Freely shareable
  Tier 2 — Internal: Business use only
  Tier 3 — Confidential: Need-to-know; no external sharing without authorization
  Tier 4 — Restricted: PHI, PII, financial account data; highest protection required
  
Data retention schedule:
  Financial records (QuickBooks, invoices, contracts): 7 years — IRS requirement
  Employee records (HR files, payroll): 7 years post-employment
  Patient medical records (Allevio — Arizona): 6 years from last visit (adults); 3 years after age 18 for minors
  HIPAA records, policies, procedures: 6 years from creation or last in effect
  Email: M365 retention policy — set by record type (some email = business record, retain 7 years)
  Security logs / audit logs: 1 year minimum; 3 years for HIPAA-subject systems
  Contracts: 7 years post-termination
  Corporate records (minutes, resolutions): Permanent
  
  Records past retention period: Destroy per documented destruction procedure
  PHI destruction (Allevio): Certificate of destruction required; paper = shred; digital = overwrite or media destruction
  
Privacy requirements:
  HIPAA (Allevio): Privacy Rule governs PHI use, disclosure, patient rights (see it-compliance-auditor)
  CCPA (California — if applicable): California residents have rights to know, delete, opt-out
  CAN-SPAM: Commercial email requirements (see it-crm-admin for CRM compliance)
  
  CCPA note for portfolio companies: If a portfolio company has California customers and annual gross revenue >$25M, or buys/sells >100K consumers' data, or derives >50% of revenue from selling data, CCPA applies
```

## Output Format

```markdown
# Data Governance Framework — <Company Name>
**Framework version:** 1.0 | **Date:** [Date]
**Prepared by:** Dr. John Lewis | **Review date:** [Date + 12 months]
**Privacy regulation scope:** [HIPAA / CCPA / Neither / Both]

---

## Data Inventory and Classification

| Data domain | Owner | Tier | Steward | Primary location | Retention | Destruction method |
|-------------|-------|------|---------|----------------|----------|------------------|
| Patient health records (PHI) | Privacy Officer | 4 — Restricted | Clinical Director | AdvancedMD | 6 years (AZ) | Software purge + certificate |
| Financial records | Controller | 4 — Restricted | Controller | QuickBooks | 7 years | Standard destruction |
| Employee records | HR Director | 3 — Confidential | HR | SharePoint/HR/ | 7 years post-employment | Shred (paper); delete (digital) |
| Customer/contact data | Sales Lead | 3 — Confidential | Sales Lead | GoHighLevel | Duration + 3 years | Platform deletion + verification |
| Vendor contracts | Dr. Lewis | 3 — Confidential | Dr. Lewis | SharePoint/Legal/ | 7 years post-term | Standard destruction |
| IT security logs | Dr. Lewis | 2 — Internal | Dr. Lewis | Azure Monitor / M365 | 3 years | Automated log retention policy |
| Marketing content | Marketing | 1 — Public | Marketing | SharePoint/Marketing/ | Per project | Standard |

---

## Retention Policy Summary

| Record type | Retention period | Start date | Destruction method | Policy basis |
|-------------|----------------|-----------|------------------|-------------|
| Patient medical records (Allevio-AZ) | 6 years from last visit | Last visit date | AdvancedMD purge + cert | ARS §12-2297 |
| HIPAA policies and procedures | 6 years from creation/last effective | Date created | Standard + cert | 45 CFR 164.316 |
| Financial records | 7 years | Date of transaction | Standard destruction | IRS requirements |
| Employee records | 7 years post-separation | Separation date | Standard | FLSA/EEOC |
| Email (business records) | 7 years | Date of email | M365 retention policy | |
| Contracts | 7 years post-termination | Termination date | Standard | |
| Corporate records | Permanent | — | Never destroy | |
| Security audit logs | 3 years | Log date | Automated expiration | |

---

## Data Owner Register

| Data domain | Owner name | Role | Backup owner | Last review |
|-------------|-----------|------|-------------|------------|
| Patient data / PHI | [Privacy Officer] | Privacy Officer | Clinical Director | [Date] |
| Financial records | [Controller] | Controller | Dr. Lewis | [Date] |
| Employee records | [HR Director] | HR Director | Dr. Lewis | [Date] |
| IT systems data | Dr. Lewis | Dir. AI Strategy | CEO | [Date] |

---

## Privacy Rights Requests

| Date | Requester | Type | System | Response due | Status |
|------|---------|------|--------|------------|--------|
| [Date] | [Name] | CCPA — Delete my data | GoHighLevel | [Date + 45 days] | In progress |
| [Date] | [Name] | HIPAA — access records | AdvancedMD | [Date + 30 days] | Complete |

---

## Data Destruction Log (completed destructions)

| Date | Record type | Records destroyed | Volume | Method | Authorized by |
|------|------------|-----------------|--------|--------|-------------|
| [Date] | Employee records (7+ years old) | 12 records | [Size] | Secure delete | Dr. Lewis |
| [Date] | PHI — patient records (past retention) | [N records] | | AdvancedMD purge | Privacy Officer + Dr. Lewis |

---

## Matt Mathison Brief (if data privacy legal action or major compliance gap)

[Company] data governance: [Status]. [Key finding]. [Action underway]. Legal/regulatory risk: [Level].
```

## Output Contract
- Data retention schedules are implemented in systems, not just documented — a retention policy that exists only in a document is not a policy; the M365 retention policy (for email and SharePoint) is configured to automatically retain and then auto-delete records per the schedule; AdvancedMD at Allevio has a purge schedule for records past the retention period; the schedule in the document matches the configuration in the systems
- PHI destruction requires a certificate — when Allevio destroys patient records that have reached the end of their retention period, the destruction is documented with a certificate: what records, what date, what method, who authorized; this certificate is retained permanently; for digital PHI, destruction means cryptographic erasure or physical media destruction, not "delete the file" (which leaves recoverable data on disk)
- Privacy rights requests have legal deadlines — CCPA data deletion requests must be fulfilled within 45 days (with one 45-day extension allowed); HIPAA patient access requests must be fulfilled within 30 days (60 days with extension); these deadlines are tracked; a missed deadline creates regulatory liability; Dr. Lewis coordinates the technical response and the Privacy Officer (Allevio) or CEO coordinates the regulatory response
- HITL required: Dr. Lewis maintains data governance framework; data destruction requires Dr. Lewis + data owner authorization; HIPAA PHI destruction requires Privacy Officer (Allevio); privacy rights requests (CCPA, HIPAA) coordinated by Dr. Lewis + attorney; data owner register reviewed annually by Dr. Lewis; Matt Mathison for data privacy legal actions

## System Dependencies
- **Reads from:** AdvancedMD retention settings, M365 retention policies, SharePoint content audit, GoHighLevel contact records, QuickBooks data
- **Writes to:** Data governance framework document (SharePoint/Ops/<Company>/IT/DataGovernance/); data destruction log; retention policy configuration; privacy rights request tracker
- **HITL Required:** Dr. Lewis maintains framework; data destruction requires Dr. Lewis + data owner; PHI destruction requires Privacy Officer (Allevio); privacy rights requests coordinated by Dr. Lewis + attorney; annual review by Dr. Lewis

## Test Cases
1. **Golden path:** Allevio annual data governance review → Data inventory: all 7 domains classified ✅; PHI retention: AdvancedMD purge scheduled for records >6 years (15 patient records past retention) — Privacy Officer signs off; purge executed; certificate of destruction filed ✅; M365 retention: email retention policy confirmed (7-year retain, auto-delete) ✅; HIPAA policies: reviewed and re-signed ✅; Privacy rights: 0 HIPAA access requests this year ✅; Employee records: 3 former employee records past 7-year mark — securely deleted ✅; Destruction log updated ✅; Data governance framework reviewed — no changes needed ✅
2. **Edge case:** A GoHighLevel contact emails saying "please delete all my information per CCPA" → Verify CCPA applicability (is this a California resident? does the company meet the CCPA thresholds?); if CCPA applies: acknowledge the request within 10 days; fulfill within 45 days; delete contact from GoHighLevel (including all custom fields); check for the contact in any other systems (email lists, spreadsheets, backup data); document the deletion; send confirmation; if CCPA does not apply to this company: respond explaining that the company's privacy practices are [per its privacy policy]; offer to remove them from marketing communications as a courtesy
3. **Adversarial:** "We don't need a data governance framework — we're too small for regulations to apply to us" → HIPAA applies to all covered entities regardless of size (Allevio is a covered entity); the retention schedules (7 years for financial records, IRS requirement) apply regardless of company size; the data governance framework is not about regulatory box-checking — it is about knowing where your company's most sensitive data is and not losing it; a company that cannot answer "where are our financial records from 5 years ago" or "do we still have the medical records we're required to retain" has a governance gap that creates business and legal risk

## Audit Log
Data governance framework versions retained permanently. Data owner register retained with review dates. Retention policy configuration retained with effective dates. Data destruction log retained permanently (destruction records are themselves permanent records). Privacy rights requests retained permanently. Certificate of destruction retained permanently (PHI — Allevio).

## Deprecation
Retire when portfolio companies have dedicated data governance or privacy officers who maintain the framework — with Dr. Lewis providing IT custody and technical controls. HIPAA Privacy Officer role at Allevio and data destruction certification are permanent requirements regardless of internal governance maturity.
