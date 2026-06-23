---
name: revops-customer-data-integrity
description: "Maintain customer data integrity in GoHighLevel for MBL Partners portfolio entities. Use when the user says 'data quality', 'data integrity', 'CRM data quality', 'clean the CRM', 'duplicate contacts', 'duplicate records', 'bad data', 'bad CRM data', 'contact hygiene', 'account hygiene', 'contact cleanup', 'data cleanup', 'data hygiene', 'stale contacts', 'outdated contacts', 'wrong contact info', 'data enrichment', 'contact data', 'account data', 'contact accuracy', 'email bounces', 'invalid emails', 'data governance CRM', 'GoHighLevel data quality', 'GHL data cleanup', 'customer data management', 'contact management', 'data standardization', 'normalize data', 'data consistency', 'entity data isolation', 'cross-entity data', or 'CRM data audit'."
metadata:
  version: 1.0.0
  tier: revops
  owner: Dr. John Lewis
argument-hint: "[--entity <allevio|column6|hive|mbl|all>] [--action <audit|clean|merge|enrich|report>] [--issue <duplicates|missing|stale|PHI|entity-tag>]"
---

# RevOps Customer Data Integrity

Maintain customer data quality and integrity across MBL Partners GoHighLevel subaccounts — running structured audits, deduplicating contacts, enforcing required fields, validating entity isolation, and ensuring Allevio's HIPAA data prohibition is respected in every contact record. Bad data corrupts every report, forecast, and attribution model downstream.

## When to Use
- Monthly data quality audit (standard cadence)
- Diagnosing a report or attribution anomaly traced to data quality
- New data import (pre-import quality check)
- Annual full-database audit

## Data Integrity Framework

```
DATA QUALITY DIMENSIONS:

  1. COMPLETENESS:
     All required fields populated on every contact record
     Required fields: first name / last name / company / entity tag / lead source / ICP status
     Allevio additional: employer size range / benefit decision authority
     Column6 additional: agency tier / annual CTV spend estimate
     Target: ≥95% field completion rate on required fields
     
  2. ACCURACY:
     Email addresses: valid format; no bouncing (clean bounce list monthly)
     Phone numbers: valid format; US format enforced
     Company names: standardized (not "Acme Corp" and "Acme Corporation" as separate contacts)
     Deal values: match signed contract (GoHighLevel deal value ≠ contract → fix it)
     
  3. UNIQUENESS (DEDUPLICATION):
     Duplicate definition: 2+ contacts with same email address OR same name + company
     Monthly duplicate scan using GoHighLevel's duplicate detection
     Merge process: retain most complete record; merge activity history; Dr. Lewis reviews Allevio merges (HIPAA)
     
  4. ENTITY ISOLATION:
     Every contact must have exactly one entity tag (Allevio / Column6 / HIVE / MBL)
     Cross-entity contamination: contact with no tag or with multiple tags → exception review
     An Allevio employer contact that appears in Column6's pipeline is a data governance failure
     Audit: monthly spot-check of entity tag compliance across all subaccounts
     
  5. HIPAA COMPLIANCE (ALLEVIO CONTACTS):
     Prohibition: no PHI in any GoHighLevel contact field — ever
     PHI includes: health conditions, diagnoses, treatment history, prescription info, mental health status
     Allevio GoHighLevel fields store only: employer contact info (name, title, email, phone); deal data; engagement data
     Monthly PHI scan: review any free-text notes fields in Allevio subaccount for prohibited content
     If PHI found: immediately delete from GHL; log incident; Dr. Lewis notified within 24 hours
     
DATA AUDIT CADENCE:
  Weekly: field completion rate check (part of pipeline health monitor)
  Monthly: full data quality audit (all 5 dimensions); duplicate scan; entity tag compliance; Allevio PHI scan
  Quarterly: entity CEO reviews data quality report; Dr. Lewis reviews Allevio
  Annual: full database audit + data enrichment pass (update stale contact info; re-verify email validity)
  
ALLEVIO DATA EXPORT AUTHORIZATION:
  ANY export of Allevio GoHighLevel data requires Dr. Lewis written authorization (email or signed form)
  Authorized exports: entity CEO approved business need; specific records only (not full database)
  Unauthorized export attempt: treated as security incident; Dr. Lewis + entity CEO notified immediately
  All exports logged: date; records exported; exported by; destination; Dr. Lewis authorization
```

## Output Format

```markdown
# Data Integrity Audit — [Entity / All] — [Month]
**Auditor:** RevOps (Dr. Lewis for Allevio) | **GoHighLevel subaccount:** [Entity]

---

## Completeness Score

| Field | Required | Completion % | Target | Status |
|-------|----------|-------------|--------|--------|
| Entity tag | ✅ | X% | ≥99% | ✅/⚠️ |
| ICP status | ✅ | X% | ≥95% | |
| Lead source | ✅ | X% | ≥95% | |
| Employer size (Allevio) | ✅ | X% | | |

---

## Duplicates Found: [N]
[List: Contact name + company + action taken (merged/archived)]

---

## Entity Tag Violations: [N]
[List: contact with wrong or missing entity tag; action taken]

---

## HIPAA Scan (Allevio)
PHI found in contact records: ✅ None / ⚠️ Found (log below)
PHI found in notes fields: ✅ None / ⚠️ Found (log below)
Allevio data exports this month: [N] — all authorized by Dr. Lewis ✅

---

## Actions
1. [Issue — owner — due date]
```

## Output Contract
- Entity isolation is a compliance requirement that must be verifiable — when Dr. Lewis says "Allevio data is isolated from Column6 data in GoHighLevel," that statement must be verifiable through the monthly entity tag audit; if there are untagged contacts in the Allevio subaccount, they are a compliance gap regardless of whether they actually contain PHI; Dr. Lewis requires the entity tag compliance rate to be ≥99% at all times; a single untagged contact in the Allevio subaccount is one contact away from a misrouted data flow and a HIPAA compliance incident
- PHI in GoHighLevel is treated as a security incident regardless of how it got there — if a well-meaning CS lead writes "Employer contact mentioned that several employees are dealing with depression and poor mental health as a result of benefits gap" in a GoHighLevel notes field, that note references employee health status and is potentially PHI-adjacent; Dr. Lewis does not wait to determine exactly whether the note qualifies legally — the note is deleted immediately, the incident is logged, and the CS lead is retrained; erring on the side of deletion is the correct risk management posture for Allevio
- HITL required: any PHI found in Allevio GHL → delete immediately + Dr. Lewis notified within 24hr; Allevio data export → Dr. Lewis written authorization every time; Allevio merge of duplicate contacts → Dr. Lewis reviews before merge; entity tag violations → reviewed before correction (some may be legitimate cross-entity contacts requiring special handling); quarterly data quality report → entity CEO + Dr. Lewis

## System Dependencies
- **Reads from:** GoHighLevel (all subaccounts; contact records; field completion; notes fields; deal records; user export logs); revops-crm-admin (user provisioning; export authorization logs; PHI policy); mktg-crm-marketing-manager (contact list management; tag taxonomy)
- **Writes to:** Data integrity audit reports (SharePoint → [Entity] → RevOps → Data Quality → [Month]); GoHighLevel (contact corrections; field updates; duplicate merges; entity tag corrections; PHI deletions); Dr. Lewis HIPAA incident log (Allevio PHI findings); export authorization log (Allevio)
- **HITL Required:** Allevio PHI found → Dr. Lewis within 24hr; Allevio export → Dr. Lewis written auth; Allevio merge → Dr. Lewis reviews; entity tag violations → reviewed before correction; quarterly report → entity CEO + Dr. Lewis

## Test Cases
1. **Golden path:** Allevio monthly data integrity audit. Completeness: entity tag 100% ✅; ICP status 91% ⚠️ (below 95% — 11 contacts missing; sales lead to complete this week); lead source 97% ✅; employer size 88% ⚠️ (below 95% — 17 contacts missing size; sales lead to update). Duplicates: 2 found (same employer HR contact entered twice with different email formats — "jsmith@abc.com" and "john.smith@abc.com"); merged; activity history combined; Dr. Lewis reviews merge before execution (HIPAA: no PHI in either record ✅). Entity tag violations: 0 ✅. PHI scan: 0 PHI instances ✅. Export log: 1 export (authorized by Dr. Lewis June 15 — entity CEO requested employer list for board prep; 12 records; logged). Audit clean overall; 2 completeness issues assigned to sales lead by July 5.
2. **Edge case:** CS lead adds a note in Allevio GoHighLevel contact record: "HR director mentioned their workforce has high rates of anxiety and burnout — main reason they're looking at Allevio" → Dr. Lewis: "This note needs to be deleted immediately. The note describes employee health status (anxiety, burnout) which is PHI-adjacent even though it's a population-level observation from the employer. The safer note is: 'Employer cited employee wellbeing and access to mental health support as primary benefit need' — which captures the sales context without describing a specific health condition. I'm deleting the original note now and logging this as a training event. CS lead retrained on what can and cannot go in GHL notes fields for Allevio accounts. This is not a punitive action — it's a clarification that we document."
3. **Adversarial:** Sales lead wants to skip the entity tag requirement for new contacts and "add tags in bulk at the end of the month" → Dr. Lewis: "Batch tagging at month-end creates a window where contacts have no entity tag — and during that window, any automation, report, or pipeline pull that uses entity filters will produce wrong data. The 30 seconds it takes to add the entity tag when creating the contact is the right time to add it. Here's the practical solution: I'll configure the GoHighLevel contact creation form to make the entity tag field required — it will not allow a contact to be saved without an entity tag selected. That removes the decision from the sales lead and makes compliance automatic."

## Audit Log
Monthly data integrity audit reports (all entities). Allevio PHI incident log (permanent; every finding regardless of severity). Export authorization log (Allevio — permanent). Duplicate merge records. Entity tag correction records. Dr. Lewis HIPAA review records for Allevio audits. Annual full-database audit records.

## Deprecation
Required field list reviewed when entity data model changes. Deduplication criteria reviewed when GoHighLevel data structure changes. HIPAA scan process reviewed when Allevio data practices or regulations change. Export authorization process reviewed when entity data governance policy changes. Audit cadence reviewed when entity data volume changes significantly.
