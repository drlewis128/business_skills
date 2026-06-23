---
name: revops-data-governance
description: "Govern revenue data access, handling, and compliance for MBL Partners portfolio entities. Use when the user says 'data governance', 'revenue data governance', 'data access control', 'data access policy', 'who can see what data', 'data permissions', 'data access rules', 'data handling policy', 'data privacy', 'data compliance', 'HIPAA data governance', 'HIPAA data handling', 'PHI data governance', 'data policy', 'data security', 'data access request', 'data export policy', 'can I access this data', 'is this data allowed', 'revenue data policy', 'CRM data policy', 'GoHighLevel data policy', 'data access audit', 'data governance framework', 'data governance policy', 'data access review', 'data handling standards', 'access control', 'data permission review', or 'who has access to what'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--data-type <crm|financial|clinical|pipeline|marketing>] [--action <policy|audit|review|grant|deny>]"
---

# RevOps Data Governance

Govern revenue data access, handling, and compliance across MBL Partners portfolio entities — establishing who can access what data, under what conditions, and with what audit trail. Data governance is the intersection of HIPAA compliance (Allevio), business confidentiality (Column6 agency relationships), and operational security (all entities). Dr. Lewis is the data governance authority for the MBL portfolio.

## When to Use
- New hire or contractor requesting access to revenue systems
- Auditing current data access permissions
- Resolving a data access question ("can I see this data?")
- Reviewing data handling after a potential policy violation

## Data Governance Framework

```
DATA CLASSIFICATION:

  LEVEL 1 — PUBLIC (accessible to all MBL employees with business need):
    Entity brand guides; public pricing (where applicable); published content; public market data
    
  LEVEL 2 — INTERNAL (accessible to entity team with role-based access):
    Pipeline data; CRM contacts; marketing campaign data; GTM playbook; sales materials
    Access: entity role (AE; marketing coordinator; CS lead) per GoHighLevel subaccount permissions
    
  LEVEL 3 — CONFIDENTIAL (restricted to senior roles; limited sharing):
    Commission plans; contract terms; financial forecasts; investor materials; competitor intelligence
    Access: entity CEO; Dr. Lewis; Matt Mathison
    Sharing: only to named individuals with documented business need; no mass forwarding
    
  LEVEL 4 — RESTRICTED (HIPAA-PROTECTED or legally sensitive):
    Allevio: any data that could contain or derive PHI (clinical records; individual health data; enrollment records with health context)
    Access: Allevio clinical team only (AdvancedMD); Dr. Lewis (for compliance review only; aggregate summaries only in RevOps)
    Prohibition: PHI does not appear in GoHighLevel, QuickBooks, Monday.com, or any RevOps system — ever
    
ROLE-BASED ACCESS BY FUNCTION:

  Entity CEO:
    GHL subaccount: full access (all contacts; deals; reports; workflows — cannot edit field schema)
    QuickBooks: read access (not write; billing managed by finance function)
    SharePoint: full entity folder access; restricted from other entity folders
    
  Sales AE:
    GHL subaccount: own pipeline; own contacts; no bulk export; no admin access
    QuickBooks: no access
    SharePoint: Sales folder only; no access to HR/Finance/Legal folders
    
  Marketing coordinator:
    GHL subaccount: contact view and campaign management; no pipeline view unless granted
    SharePoint: Marketing folder; no access to Sales commission plans or contracts
    
  CS Lead:
    GHL subaccount: CS contacts and health scores; no commission data; no deal financials
    AdvancedMD (Allevio): aggregate enrollment reports only; clinical data = no access
    
  Dr. Lewis:
    GHL: agency admin (all subaccounts)
    QuickBooks: read access across entities for revenue reconciliation
    SharePoint: all folders across all entities
    AdvancedMD (Allevio): aggregate-only; clinical records = no access
    
  Contractors/Vendors:
    Minimum necessary access only
    Allevio contractors: no access to GoHighLevel Allevio subaccount without BAA and Dr. Lewis approval
    All contractors: NDA on file before any Level 3 access
    Off-boarding: access revoked within 24 hours of engagement end
    
DATA EXPORT POLICY:
  Level 1-2 data: entity CEO may export with entity purpose
  Level 3 data: Dr. Lewis must approve any export; destination documented
  Level 4 data (Allevio HIPAA): Dr. Lewis written authorization required for every export; destination must be HIPAA-compliant; export logged permanently
  Unauthorized export attempt: security incident; Dr. Lewis + entity CEO immediate response
  
DATA RETENTION:
  Revenue data (GHL, QB records): 7 years minimum
  Allevio HIPAA-related records: permanent (no deletion)
  Marketing data: 3 years; email lists purged annually for bounces and opt-outs
  Employee data: per HR policy (outside RevOps governance)
```

## Output Format

```markdown
# Data Governance Report — [Entity / All] — [Quarter/Year]
**Reviewed by:** Dr. Lewis | **Scope:** [Full audit / Access review / Incident review]

---

## Access Review

| User | Entity | Role | Level 2 access? | Level 3 access? | Last reviewed | Issues |
|------|--------|------|-----------------|-----------------|--------------|--------|
| [Name] | Allevio | AE | ✅ GHL subaccount | ❌ No | [Date] | None |
| [Name] | (departed) | (any) | ⚠️ Still active | | | Revoke immediately |

---

## Data Export Log (Level 3+)

| Date | Exported by | Data type | Records | Destination | Authorization |
|------|------------|---------|---------|------------|--------------|
| [Date] | [Name] | Allevio GHL contacts | 47 | Entity CEO board prep | Dr. Lewis ✅ |

---

## Policy Violations This Quarter
[None / List violations with details and resolution]

---

## Actions
1. [Action — owner — due]
```

## Output Contract
- Data governance is not a compliance checkbox — it is the operational discipline that keeps HIPAA violations from happening at Allevio, keeps Column6 agency relationships confidential (agencies trust that their campaign data is not shared with competitors), and keeps MBL portfolio financial information in the hands of people who have a need to know; Dr. Lewis treats data governance as a continuous oversight function, not an annual audit; access reviews happen monthly; export authorizations happen in real time; policy violations are addressed within 24 hours
- The principle of minimum necessary access applies to every role — an AE does not need access to the company's commission calculation spreadsheet; a marketing coordinator does not need access to the legal folder; a contractor building a GoHighLevel automation does not need access to the Allevio subaccount's full contact database; Dr. Lewis provisions access at the minimum level required for the person to do their job, and revokes access immediately when the job changes or ends; over-permissioned access is a data governance failure even when the person with excess access does nothing wrong with it
- HITL required: any Level 3+ export → Dr. Lewis authorization in writing; Allevio Level 4 data → Dr. Lewis; contractor Allevio access → Dr. Lewis + BAA; access violations → entity CEO + Dr. Lewis within 24 hours; quarterly access review → Dr. Lewis; new user provisioning (all entities) → entity CEO notifies Dr. Lewis; any unauthorized export attempt → security incident protocol

## System Dependencies
- **Reads from:** GoHighLevel (user access logs; export logs; permission settings); SharePoint (folder permissions); Microsoft Entra / Azure AD (identity and access management); revops-crm-admin (GHL user provisioning records); BAA files (vendor access authorization)
- **Writes to:** Access review records (SharePoint → RevOps → Data Governance → Access Reviews); export authorization log (permanent); data governance policy document (SharePoint → [Entity] → Legal → Data Governance); security incident records; Dr. Lewis data governance decisions log
- **HITL Required:** Level 3+ export → Dr. Lewis; Allevio access → Dr. Lewis + BAA; violations → entity CEO + Dr. Lewis; quarterly access review → Dr. Lewis; new user → entity CEO notifies Dr. Lewis; unauthorized export → security incident

## Test Cases
1. **Golden path:** Q3 data governance review. Access audit: 4 active GHL users per entity (entity CEO; AE; marketing; admin). All active users are current employees ✅. One Column6 contractor (GHL automation builder) has subaccount access — reviewing: BAA on file? (Column6 is not Allevio — BAA not required, but NDA required; NDA on file ✅); access scope: Column6 subaccount only; workflow builder role only (no contact export) ✅. Export log: 2 Level 3 exports (both Dr. Lewis authorized; destinations logged). Policy violations: 0. Allevio: no PHI in any record (monthly PHI scan confirmed ✅). Access review complete. Dr. Lewis signs off.
2. **Edge case:** Entity CEO for Allevio asks to share a copy of the GoHighLevel Allevio contact database with a new marketing agency they're onboarding → Dr. Lewis: "Before any Allevio contact data goes to a third-party agency, I need to evaluate three things: (1) Does the agency have a BAA signed with Allevio? Allevio employer contact data is HIPAA-adjacent, and any vendor accessing it needs a BAA. (2) What specific data are they getting? Full contact database vs. a targeted subset? (3) What is the business purpose and how will the data be used? Marketing agencies frequently want contact lists for email campaigns — that requires HIPAA-compliant email marketing configuration. I'll work with the entity CEO to scope the minimum necessary data, confirm the BAA is signed, and document the transfer authorization. This takes 48-72 hours; we don't expedite HIPAA governance decisions."
3. **Adversarial:** AE tries to export their own GoHighLevel contact list before leaving the company to use for outreach at their new employer → Dr. Lewis: "This export is not authorized, and the contacts in Allevio's GoHighLevel subaccount are not the AE's personal property — they are Allevio's business relationships. I'm revoking the AE's GoHighLevel access immediately (departure was effective today). I'm also reviewing GoHighLevel's export log to confirm whether any export occurred before I caught this. If an export occurred, this is a potential data misappropriation issue and I'm briefing the entity CEO and our legal counsel within the hour. The AE's personal sales relationships that existed before they joined Allevio are theirs; the CRM contacts developed during their employment are Allevio's. This is standard, and it should have been addressed in the AE's offer letter and employment agreement."

## Audit Log
Quarterly data governance review records (permanent). Access grant and revocation records (permanent). Level 3+ export authorization records (permanent). Allevio HIPAA data access records (permanent). Policy violation records and resolutions (permanent). Security incident records (permanent). Contractor access records with BAA/NDA status.

## Deprecation
Data classification levels reviewed annually. Role-based access model reviewed when entity structure changes. Export policy reviewed when GoHighLevel capabilities change or HIPAA regulations change. Retention policy reviewed when legal requirements change. Contractor access policy reviewed annually.
