---
name: revops-crm-admin
description: "Administer GoHighLevel CRM for MBL Partners portfolio entities. Use when the user says 'GoHighLevel', 'GHL', 'CRM admin', 'CRM administration', 'CRM setup', 'CRM configuration', 'CRM management', 'GoHighLevel admin', 'GoHighLevel setup', 'GHL configuration', 'GHL pipeline', 'GHL contacts', 'GHL workflows', 'GHL automations', 'GHL fields', 'GHL tags', 'CRM field schema', 'CRM user access', 'add user to CRM', 'CRM data quality', 'CRM cleanup', 'CRM import', 'CRM export', 'CRM integration', 'GHL subaccount', 'GHL account setup', 'CRM permissions', 'who has access to CRM', 'GHL BAA', 'HIPAA CRM', or 'CRM data governance'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl>] [--action <configure|audit|user|export|import|BAA>] [--area <pipeline|contacts|tags|fields|workflows|users>]"
---

# RevOps CRM Admin

Administer GoHighLevel CRM across MBL Partners portfolio entities — managing subaccount configuration, field schema, pipeline design, user provisioning, access controls, and data governance to ensure GoHighLevel is an accurate, HIPAA-compliant system of record for all entity commercial activity. CRM administration is the infrastructure layer that all sales, marketing, and CS operations depend on; a poorly configured CRM produces unreliable data across every downstream report.

## When to Use
- Setting up GoHighLevel for a new entity
- Adding or removing users; adjusting permissions
- Auditing CRM data quality (field completion; tag hygiene; duplicate contacts)
- Authorizing a data export (Allevio: requires Dr. Lewis approval)
- Reviewing or updating workflow automations

## CRM Admin Framework

```
GOHIGHLEVEL ACCOUNT ARCHITECTURE:

  STRUCTURE:
    MBL Partners Agency Account (master) → entity subaccounts:
      └─ Allevio subaccount (HIPAA-designated; BAA in effect)
      └─ Column6 subaccount
      └─ HIVE Partners subaccount
      └─ MBL Partners subaccount (MBL-level contacts)
    
    Entity isolation: cross-subaccount contact access is OFF (portfolio isolation enforced)
    MBL agency admin: Dr. Lewis (sole agency-level admin access)
    
  USER ROLES PER ENTITY:
    Entity CEO: full access to entity subaccount (pipeline; contacts; reports; cannot edit field schema)
    Entity sales lead / AE: standard user (can manage their own deals; cannot bulk export; cannot edit pipelines)
    Entity marketing: campaign and contact access (cannot view or edit deal stages)
    Entity admin support: limited (contact entry; appointment booking only)
    Dr. Lewis: agency admin (full access to all entity subaccounts)
    New users: provisioned by Dr. Lewis only (or entity CEO with Dr. Lewis notification for Allevio)
    
  FIELD SCHEMA STANDARDS (CONTACT RECORD):
    Required fields (all entities):
      - First Name / Last Name
      - Entity tag (Allevio / Column6 / HIVE / MBL — mandatory; determines subaccount)
      - Company Name
      - Title / Role
      - Email (primary)
      - Phone
      - Lead Source (GoHighLevel source field; tied to UTM)
      - ICP Status (Yes / No / Unknown)
      - Contact Owner (assigned AE or marketing)
    
    Allevio-specific required fields:
      - Employer name
      - Employee headcount range (≤25 / 25-99 / 100-249 / 250+)
      - Benefit decision authority (HR / CFO / Owner / Broker)
      - HIPAA consent status (no PHI to be stored in GoHighLevel — field tracks only: "PHI-related communication: never")
      
    Column6-specific required fields:
      - Agency name
      - Annual CTV/programmatic spend estimate
      - Primary media type (CTV / Programmatic / Both)
      - Agency tier (1/2/3)
      
  HIPAA GOVERNANCE (ALLEVIO SUBACCOUNT):
    BAA: GoHighLevel BAA signed and on file (Dr. Lewis holds; reviewed annually)
    PHI prohibition: no PHI stored in any GoHighLevel field — ever
      - No diagnosis codes; no health conditions; no member information
      - Allevio GHL stores only: employer contact information; deal pipeline; marketing campaign data
      - Member-level data stays in AdvancedMD / Marshall Medical Billing — never imported to GHL
    Data export: ANY data export from Allevio subaccount → Dr. Lewis authorization required
    User provisioning for Allevio: Dr. Lewis approves all new users before access is granted
    New automations in Allevio subaccount: Dr. Lewis reviews and approves before activation
    
  CRM HYGIENE STANDARDS:
    Duplicate contacts: monthly duplicate scan and merge; entity sales lead initiates; Dr. Lewis reviews Allevio merges
    Missing required fields: flagged weekly in pipeline health check; resolved within 48 hours
    Inactive contacts: contacts with no activity for 12 months → entity sales lead review → archive or tag "inactive"
    Data import: CSV imports require Dr. Lewis approval for Allevio; entity CEO approval for others
    
  AUDIT CADENCE:
    Weekly: field completion rate check (pipeline health check integration)
    Monthly: user access review (is the user list current? any departed employees with active access?)
    Quarterly: full subaccount audit (field schema; pipeline configuration; workflow review; BAA current?)
    Annual: BAA renewal check; agency admin access review; field schema review
```

## Output Format

```markdown
# CRM Admin Audit — [Entity] — [Date]
**Auditor:** Dr. Lewis | **Subaccount:** [Entity] GHL | **BAA on file:** ✅/⚠️

---

## User Access Review

| User | Role | Last login | Status | Action |
|------|------|-----------|--------|--------|
| [Name] | AE | [Date] | Active | — |
| [Name] | (departed employee) | 90 days ago | ⚠️ | Deactivate |

---

## Field Completion Rate

| Field | Required? | Completion % | Action |
|-------|----------|-------------|--------|
| Entity tag | ✅ Yes | 99% | — |
| ICP Status | ✅ Yes | 72% | Require in pipeline entry |

---

## Workflow Audit ([N] active workflows)

| Workflow | Status | Last triggered | HIPAA review needed? |
|----------|--------|--------------|---------------------|
| [Workflow name] | Active | [Date] | ✅ No / ⚠️ Yes |

---

## Issues Found
[List; owner; resolution]

---

## HIPAA Status (Allevio)
BAA status: ✅ Current (expires [date])
PHI audit: ✅ No PHI found in subaccount contact fields
Export authorization: [N] exports requested; all authorized by Dr. Lewis
```

## Output Contract
- GoHighLevel entity isolation is a compliance requirement, not a preference — Allevio employer contacts must not appear in Column6 or HIVE subaccounts; cross-contamination creates attribution errors and HIPAA risk (an Allevio employer contact is a healthcare-adjacent contact who may have context that is HIPAA-sensitive); Dr. Lewis enforces subaccount isolation through GoHighLevel's architecture (separate subaccounts; no cross-subaccount visibility for standard users) and audits entity tag compliance monthly
- User access must be reviewed monthly — a departed employee with active GoHighLevel credentials is a security and HIPAA risk; Dr. Lewis requires a monthly user access review for all entity subaccounts; user deactivation must occur within 24 hours of an employee departure; for Allevio, departure-day deactivation is mandatory; an Allevio subaccount with a departed employee's active credentials is a HIPAA breach risk that Dr. Lewis treats as Priority 1
- HITL required: Allevio data export → Dr. Lewis authorization every time; new Allevio user → Dr. Lewis approves before access granted; new Allevio automation → Dr. Lewis reviews before activation; field schema changes → entity CEO approves; any subaccount configuration change affecting pipeline reporting → Dr. Lewis notified; BAA status at risk → Dr. Lewis immediate action

## System Dependencies
- **Reads from:** GoHighLevel (subaccount configuration; user list; field schema; workflow status; contact records); BAA files (SharePoint → Legal → Vendor BAAs → GoHighLevel); entity onboarding records (new user requests)
- **Writes to:** GoHighLevel (field schema updates; user provisioning/deactivation; workflow activation/deactivation; pipeline configuration); CRM admin audit (SharePoint → RevOps → CRM → Audits → [Date]); user access log; BAA tracking record; Allevio data export authorization log
- **HITL Required:** Allevio data export → Dr. Lewis; Allevio new user → Dr. Lewis; Allevio new automation → Dr. Lewis; field schema changes → entity CEO; pipeline config changes → Dr. Lewis notified; BAA status → Dr. Lewis

## Test Cases
1. **Golden path:** Monthly Allevio subaccount audit. Users: 4 active (entity CEO, AE, marketing coordinator, admin). One user (marketing coordinator who left 3 weeks ago) is still active → immediate deactivation; Dr. Lewis notified; access termination logged. Field completion: entity tag 100%; ICP status 68% → sales lead reminded to complete ICP status on all contacts within this week. Workflows: 3 active (lead nurture; appointment reminder; post-event follow-up) — all reviewed; no PHI references; all have Dr. Lewis prior approval records. BAA: current (expires in 8 months). PHI scan: no PHI found in contact fields. Export log: 1 export last month (authorized by Dr. Lewis). Audit passed.
2. **Edge case:** Entity CEO for Column6 requests to bulk export all Column6 contacts for an external list management tool → Dr. Lewis: "Column6 doesn't require the same HIPAA restrictions as Allevio, but a bulk export of all CRM contacts is still a significant data governance decision. Before I authorize this: (1) What tool are they being exported to? Does that tool have appropriate data security? (2) Is this a one-time export or a recurring sync? (3) Who will have access to the exported data? If this is for a legitimate sales outreach tool, I'm comfortable approving with a record of the authorization and the destination. I won't export without knowing where the data is going."
3. **Adversarial:** Allevio AE wants to export their own contact list from GoHighLevel to manage outreach in a personal spreadsheet → Dr. Lewis: "I understand the convenience, but no Allevio contact data leaves GoHighLevel without my authorization — and personal spreadsheets are not an authorized destination even for the rep's own contacts. Here's why: a personal spreadsheet is not a HIPAA-compliant environment; it can be shared accidentally; it creates a shadow CRM that's outside the audit trail; and it fragments the system of record. Everything in Allevio's GoHighLevel is there because it's secure and auditable. The right solution is for me to build a GoHighLevel view or report that gives the rep the information they need to manage their outreach — without exporting data to an uncontrolled environment."

## Audit Log
Monthly CRM admin audit records (all entities). User provisioning and deactivation records (permanent). Allevio data export authorization log (permanent). BAA tracking records. Field schema change records. Workflow activation/deactivation records (all Allevio workflows require Dr. Lewis review record). Security incident records.

## Deprecation
Field schema reviewed annually. User roles reviewed when entity structure changes. HIPAA governance for Allevio reviewed when HIPAA regulations change or when Allevio data model changes. BAA reviewed annually with GoHighLevel BAA document. Workflow library reviewed quarterly.
