---
name: finance-entity-compliance-manager
description: "Manage annual entity compliance for MBL Partners portfolio entities. Use when the user says 'entity compliance', 'annual report', 'state filing', 'registered agent', 'LLC compliance', 'corporation compliance', 'annual compliance', 'maintain good standing', 'good standing', 'state registration', 'AZ LLC filing', 'Arizona annual report', 'secretary of state filing', 'corporate formalities', 'meeting minutes', 'annual meeting', 'board minutes', 'operating agreement', 'entity formation', 'entity maintenance', 'corporate governance compliance', 'entity good standing certificate', 'certificate of good standing', 'foreign qualification', 'register in another state', 'business license', 'business license renewal', 'professional license', 'healthcare license Allevio', 'licensing compliance', 'statutory compliance', 'entity expiration', 'entity dissolution', 'wind down entity', or 'entity administrative compliance'."
metadata:
  version: 1.0.0
  tier: finance
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--action <track|file|renew|audit>] [--jurisdiction <az|ut|state>]"
---

# Finance Entity Compliance Manager

Manage annual entity compliance for MBL Partners portfolio entities — maintaining a compliance calendar for state filings, registered agent renewals, business licenses, and corporate formalities. Entity compliance failures (missed annual reports; lapsed registered agent; expired business licenses) can result in loss of good standing, administrative dissolution, or regulatory penalties. Prevention costs nothing; remediation is expensive.

## When to Use
- Annual state compliance filings due
- Business license renewal
- New entity formation (add to compliance calendar)
- Good standing certificate needed for a transaction

## Entity Compliance Framework

```
ENTITY PORTFOLIO AND JURISDICTIONS:
  MBL Partners LLC: AZ → annual report to AZ Corporation Commission (or equivalent)
  HIVE Partners LLC: AZ + UT (Uinta Basin operations) → AZ filing + UT foreign qualification
  Allevio: AZ → AZ Corporation Commission; + any states with clinical operations
  Column6: AZ → AZ Corporation Commission; + any states where operations warrant registration
  
COMPLIANCE CALENDAR:
  Arizona LLC/Corp Annual Report:
    Due: anniversary month of formation (not a fixed date — varies by entity)
    Fee: ~$0 (LLC) or small fee (corp) — AZ has minimal annual report requirements
    Dr. Lewis checks AZ Corporation Commission annually for each entity's specific due date
    
  Registered Agent:
    AZ requires a registered agent with a physical AZ address for all entities
    Renewal: annual (typically January); Dr. Lewis manages registered agent service subscription
    If registered agent lapses: entity may lose good standing and miss service of process notifications
    
  Business Licenses:
    City of Phoenix (or applicable city) business license: annual renewal (varies by city)
    Scottsdale / other cities: if entity has office presence
    Allevio: healthcare-specific licenses may apply (MSO licensing varies by state)
    HIVE: AZ and UT business licenses; oil & gas operator registration in UT (coordinate with O&G counsel)
    
  Corporate Formalities:
    Annual meeting (or consent in lieu of meeting): document annually for each entity
    Meeting minutes or written consent: retained in entity records
    Operating agreement / bylaws: reviewed when structure changes; stored in SharePoint
    
GOOD STANDING CERTIFICATE:
  Required for: bank account opening; loan applications; acquisition transactions; LP documents
  Obtained from: AZ Corporation Commission (online; ~$10 fee; 1-3 business days)
  Dr. Lewis obtains proactively for any known transaction that will require one
  
ALLEVIO SPECIFIC:
  MSO licensing: Allevio's MSO operations may require state healthcare licensing beyond standard LLC registration
  Dr. Lewis coordinates with Allevio entity CEO and healthcare attorney for licensing requirements
  HIPAA: entity-level compliance (BAA management; privacy policies) tracked in revops-data-governance; not this skill
  
HIVE SPECIFIC:
  Utah operations: HIVE must maintain good standing in UT as a foreign LLC
  Oil & gas operations: UT Division of Oil, Gas, and Mining registration (coordinate with O&G counsel)
  Dr. Lewis tracks with HIVE entity CEO; O&G counsel handles technical regulatory filings
  
COMPLIANCE AUDIT (ANNUAL — Q4):
  Pull current good standing status for each entity
  Verify registered agent current and paid
  Verify all business licenses current
  Verify annual meeting/consent documented
  Verify operating agreements reflect current ownership and structure
  Flag any upcoming compliance deadlines for next 12 months
```

## Output Format

```markdown
# Entity Compliance Audit — All Entities — [Year]
**Prepared by:** Dr. Lewis | **Date:** [Date]

---

## Compliance Status

| Entity | Jurisdiction | Annual Report | Registered Agent | Business License | Good Standing |
|--------|-------------|--------------|----------------|----------------|--------------|
| MBL Partners LLC | AZ | ✅ Filed [Date] | ✅ Current | ✅ Current | ✅ |
| HIVE Partners LLC | AZ | ✅ Filed [Date] | ✅ Current | ✅ Current | ✅ |
| HIVE Partners LLC | UT (foreign) | ✅ Filed [Date] | ✅ Current | ✅ Current | ✅ |
| Allevio | AZ | ✅ Filed [Date] | ✅ Current | ⚠️ Renewal due [Date] | ✅ |
| Column6 | AZ | 🟡 Due [Date] | ✅ Current | ✅ Current | ✅ |

---

## Upcoming Deadlines (next 90 days)
- Column6 AZ Annual Report: due [Date] — action: file by [Date]
- Allevio city business license: due [Date] — action: renew
```

## Output Contract
- Entity compliance is maintenance work that prevents catastrophic problems — an administratively dissolved LLC cannot enforce contracts, cannot hold bank accounts, and cannot enter into transactions until reinstated; reinstatement requires filing all missed reports, paying back fees, and obtaining a court order in some jurisdictions; the cost is typically $500-2,000 in fees and attorney time plus the business disruption; Dr. Lewis tracks every entity's compliance calendar with a 90-day lead time so no filing is ever missed; the annual compliance audit is the single most important 2-hour block of the year for entity maintenance, and Dr. Lewis treats it as a hard calendar item in Q4
- Good standing is required infrastructure for transactions — when HIVE goes to acquire a new working interest, when Allevio onboards a new employer, or when any entity opens a new bank account, the counterparty or financial institution will request a good standing certificate; Dr. Lewis keeps a current (≤90 days old) good standing certificate on file for each entity by obtaining them at the start of Q1; this costs ~$40 total across all entities and takes 30 minutes; it prevents a 3-day delay in any transaction where a certificate is unexpectedly requested
- HITL required: annual compliance audit → Dr. Lewis + entity CEOs review; any lapsed status → entity CEO + Dr. Lewis immediate remediation; Allevio MSO licensing → entity CEO + healthcare attorney; HIVE UT filings → entity CEO + O&G counsel; good standing certificate needed → Dr. Lewis obtains; operating agreement amendment → entity CEO + legal counsel + Matt Mathison; entity dissolution → Matt Mathison + legal counsel + Dr. Lewis; new entity formation → Dr. Lewis + legal counsel + Matt Mathison

## System Dependencies
- **Reads from:** AZ Corporation Commission (online; entity status; annual report due dates); UT Division of Corporations (HIVE foreign qualification status); registered agent service records; business license renewal notices; entity operating agreements and formation documents (SharePoint → [Entity] → Legal → Formation)
- **Writes to:** AZ Corporation Commission (annual report filings); UT Corporation Division (foreign LLC filings); entity compliance calendar (SharePoint → Finance → Compliance → [Year]); registered agent service renewals; good standing certificate file; entity CEO compliance notifications; Matt Mathison compliance audit summary (annual)
- **HITL Required:** Annual compliance audit → Dr. Lewis + entity CEOs; lapsed status → entity CEO + Dr. Lewis immediate; Allevio MSO → entity CEO + healthcare attorney; HIVE UT O&G → entity CEO + O&G counsel; operating agreement → entity CEO + legal + Matt Mathison; dissolution → Matt Mathison + legal + Dr. Lewis; new entity → Dr. Lewis + legal + Matt Mathison

## Test Cases
1. **Golden path:** Q4 2026 annual compliance audit. Dr. Lewis pulls AZ Corporation Commission status for all 4 entities: MBL Partners (good standing ✅); HIVE Partners AZ (good standing ✅); Allevio (good standing ✅); Column6 (good standing ✅). HIVE UT foreign qualification: good standing ✅. Registered agent: all 4 entities current (paid through December 2027 ✅). Business licenses: MBL (no business license required for holding company ✅); HIVE (AZ and UT current ✅); Allevio (Phoenix city business license → expires March 31, 2027 → flagged for Q1 renewal); Column6 (current ✅). Annual meetings: consents in lieu of meeting signed for all entities in November ✅. Good standing certificates obtained for all entities (dated December 2, 2026). Compliance calendar updated.
2. **Edge case:** Dr. Lewis discovers that Column6's AZ annual report was 45 days overdue (missed the anniversary filing date in a calendar gap) → Dr. Lewis: "Column6's AZ annual report is 45 days overdue — the due date was October 15; it's now November 29. I'm filing the annual report today (AZ Corporation Commission online; same-day processing). Penalty: Arizona assesses a $25 late fee for LLC annual reports. I'm paying the $25 and filing today. Good standing status: Column6 is still in good standing (AZ has a 60-day cure window before suspension); we're within the cure period. I'm updating the compliance calendar so this date is flagged 45 days in advance next year. Total cost: $25 + 30 minutes of my time. Entity CEO notified of the late filing and the cure."
3. **Adversarial:** Entity CEO asks whether the entity can skip the annual meeting/consent documentation because "it's a small company and nobody does that" → Dr. Lewis: "Annual meeting documentation (or written consent in lieu of meeting) is a corporate formality that exists for a reason: it documents that the entity is being operated as a separate legal entity, not as an alter ego of its owners. In a PE-backed portfolio context, this matters for two specific reasons: (1) if we ever have a creditor challenge or litigation, piercing the corporate veil (holding owners personally liable) is significantly more likely when corporate formalities are ignored; (2) in due diligence for any acquisition or investment transaction, the first thing the buyer's counsel checks is corporate minutes and governance documentation — missing years of minutes is a due diligence red flag that can slow or kill a transaction. It takes 30 minutes per year. I'll prepare the written consent for entity CEO's signature in November alongside the compliance audit."

## Audit Log
Annual compliance audit records (all entities; permanent). Annual report filing records. Registered agent renewal records. Business license renewal records. Good standing certificate file (with dates obtained). Annual meeting/consent records. Operating agreement version control. Allevio MSO licensing records. HIVE UT O&G registration records. Late filing records and remediation. New entity formation records.

## Deprecation
Compliance calendar updated when new entities are formed or existing entities are dissolved. AZ/UT filing requirements reviewed when state laws change. Registered agent reviewed annually (provider quality). Allevio MSO licensing reviewed when state healthcare regulations change. HIVE O&G operator registration reviewed when regulatory requirements change.
