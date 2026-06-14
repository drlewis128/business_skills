---
name: data-retention-policy-builder
description: "Define and implement data retention and deletion policies. Use when the user says 'data retention', 'how long to keep data', 'data deletion policy', 'purge old data', 'data lifecycle', 'retention schedule', 'when to delete data', 'data archival policy', 'GDPR deletion', 'HIPAA retention requirements', or 'right to be forgotten'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--entity <MBL|Allevio|HIVE|Column6>] [--framework <hipaa|gdpr|ccpa|business>]"
---

# Data Retention Policy Builder

Define and implement data retention schedules — how long each type of data is kept, who's responsible, and how it's deleted or archived. Keeping data forever is not safer than having a retention policy; it increases compliance risk, storage cost, and breach exposure. For MBL, HIPAA sets mandatory minimum retention periods for Allevio PHI. Business data has different requirements based on legal, financial, and operational needs.

## When to Use
- Building data governance for a new portfolio company
- Compliance audit reveals no retention policy exists
- Storage costs growing — need a data lifecycle plan
- HIPAA/GDPR/CCPA compliance work
- Customer requests data deletion (CCPA/GDPR)
- Before decommissioning a data system

## Regulatory Retention Minimums

```
HIPAA (Allevio):
  Medical records: 6 years from creation OR last effective date (whichever is longer)
  Policies and procedures: 6 years
  HIPAA compliance documentation: 6 years
  Access logs (PHI): 6 years
  Breach notification records: 6 years

Financial / Tax:
  Tax records: 7 years minimum (IRS statute of limitations)
  Financial statements: 7 years
  Contracts: 7 years after termination
  Accounts payable/receivable: 7 years
  Employee records: 7 years after termination

Legal:
  Litigation hold: Indefinite while active; delete only after legal counsel clears
  Contracts (executed): 7 years after expiration + term
  Corporate records (minutes, resolutions): Permanent

Business:
  Email (general business): 3-5 years
  Email (contract-related): 7 years
  CRM data (active customers): Active + 3 years after churn
  CRM data (prospects who never converted): 2 years after last contact
  Employee performance records: 7 years after termination

Product/Analytics:
  Product event data (raw): 2 years
  Aggregated analytics: Indefinite (no PII — safe to keep)
  Server logs: 90 days
  A/B test raw data: 1 year after test completion
  AI prompt/response logs (non-PHI): 1 year
```

## Output Format

```markdown
# Data Retention Policy — <Entity>
**Version:** 1.0 | **Effective date:** <date>
**Owner:** Dr. John Lewis | **Review cycle:** Annual
**Entity:** <MBL Partners / Allevio / HIVE Partners / Column6>

---

## Policy Statement

<Entity> retains data for the minimum period required by law, regulation, and legitimate business need — and no longer. Data past its retention period will be securely deleted or archived according to this policy. This policy applies to all data systems operated by or on behalf of <entity>.

---

## Retention Schedule

### Category 1: HIPAA / PHI Data (Allevio only)

| Data type | System | Minimum retention | Maximum retention | Deletion method | Owner |
|-----------|--------|-----------------|-----------------|----------------|-------|
| Medical records | AdvancedMD | 6 years from creation | 10 years (recommended) | Secure wipe (NIST 800-88) | Allevio PO |
| HIPAA audit logs | AdvancedMD | 6 years | 7 years | Secure archive, then wipe | Allevio PO |
| BAA copies | SharePoint/Legal | 6 years after BAA expiration | 7 years | Secure wipe | Dr. Lewis |
| PHI in BigQuery | BigQuery | PROHIBITED — PHI not stored | N/A | N/A | Dr. Lewis |

### Category 2: Financial Data

| Data type | System | Retention period | Deletion method | Owner |
|-----------|--------|-----------------|----------------|-------|
| Tax records | QuickBooks + archive | 7 years | Archive → legal hold if needed | Dr. Lewis |
| Contracts | SharePoint/Legal | 7 years post-expiration | Secure delete | Dr. Lewis |
| Financial statements | QuickBooks | 7 years | Archive | Dr. Lewis |
| QuickBooks transactions | QuickBooks | 7 years | Archive | Dr. Lewis |

### Category 3: CRM / Customer Data

| Data type | System | Retention period | Deletion method | Owner |
|-----------|--------|-----------------|----------------|-------|
| Active customer records | GoHighLevel | Active + 3 years after churn | Archive | Dr. Lewis |
| Churned customer records | GoHighLevel | 3 years after churn date | Purge from CRM; archive summary | Dr. Lewis |
| Lead/prospect records | GoHighLevel | 2 years after last interaction | Delete | Dr. Lewis |
| Customer email history | Outlook/CRM | 5 years | Archive | Dr. Lewis |

### Category 4: Product / Analytics Data

| Data type | System | Retention period | Deletion method | Owner |
|-----------|--------|-----------------|----------------|-------|
| Raw product events | BigQuery | 2 years | Partition delete | Dr. Lewis |
| Aggregated analytics | BigQuery | Indefinite | Keep — no PII | Dr. Lewis |
| Server logs | BigQuery / CloudWatch | 90 days | Automated partition delete | Dr. Lewis |
| AI prompt/response logs | BigQuery | 1 year | Partition delete | Dr. Lewis |
| A/B test raw data | BigQuery | 1 year post-test | Partition delete | Dr. Lewis |

### Category 5: HR / Employee Data

| Data type | System | Retention period | Deletion method | Owner |
|-----------|--------|-----------------|----------------|-------|
| Employment records | SharePoint/HR | 7 years post-termination | Secure archive | HR |
| Performance records | SharePoint/HR | 7 years post-termination | Secure archive | HR |
| Payroll records | QuickBooks | 7 years | Archive | Dr. Lewis |
| Background checks | SharePoint/HR | Duration of employment + 7 years | Secure delete | HR |

---

## Deletion Process

### Standard Deletion (non-PHI, non-financial)
1. Identify records past retention period using scheduled query
2. Dr. Lewis reviews deletion batch (HITL checkpoint)
3. Execute delete in production
4. Log deletion: date, record type, count, executor
5. Confirm deleted records are absent from backups within next backup cycle

### Secure Deletion (PHI, financial, legal)
1. Same steps as Standard Deletion
2. Additionally: Secure wipe using NIST 800-88 method (or vendor-confirmed equivalent)
3. Certificate of destruction obtained (HIPAA: required for PHI)
4. Log retained for 6 years (PHI) / 7 years (financial)

### CCPA/GDPR Right to Deletion
On individual data subject deletion request:
1. Confirm identity of requestor
2. Locate all records associated with the requestor across all systems
3. Delete within 45 days (CCPA) / 30 days (GDPR) of request
4. Confirm deletion to requestor in writing
5. Exception: records required for legal compliance cannot be deleted

---

## Litigation Hold

When legal action is anticipated or active:
- All retention schedules are **suspended** for relevant data categories
- Data subject to hold must NOT be deleted
- Legal counsel defines hold scope and duration
- Hold is released only by legal counsel
- After hold release, normal retention schedule resumes

---

## Compliance Calendar

| Action | Frequency | Owner | Next date |
|--------|---------|-------|---------|
| Retention policy annual review | Annual | Dr. Lewis | <date + 1 year> |
| Automated deletion job execution | Quarterly | Dr. Lewis | <next quarter start> |
| HIPAA PHI audit (confirm no PHI in BigQuery) | Quarterly | Dr. Lewis | <next quarter start> |
| Backup verification (can delete if past retention) | Annual | Dr. Lewis | <date + 1 year> |
```

## Output Contract
- Retention schedule always covers all data categories relevant to the entity — gaps in the schedule create compliance risk
- HIPAA section always separate and explicit — PHI retention has specific legal minimums and deletion requirements
- Litigation hold protocol always included — the most common policy failure is deleting data under legal hold
- Deletion process always documented — "delete it" without process means inconsistent execution
- HITL required: Dr. Lewis reviews all deletion batches before execution; HIPAA secure deletion requires Dr. Lewis execution and certificate of destruction; litigation hold changes require legal counsel sign-off; any deletion of financial records requires Dr. Lewis + Matt Mathison sign-off

## System Dependencies
- **Reads from:** BigQuery (partition metadata), GoHighLevel (contact records), SharePoint (document dates), AdvancedMD (PHI dates)
- **Writes to:** Retention policy (SharePoint/Legal/Governance); deletion logs; compliance calendar
- **HITL Required:** Dr. Lewis approves all deletion batches; HIPAA PHI: Allevio privacy officer co-approves; litigation hold: legal counsel controls; financial record deletion: Matt Mathison sign-off

## Test Cases
1. **Golden path:** MBL annual data retention review → schedule executed; BigQuery automated query identifies 450K raw event rows past 2-year retention; Dr. Lewis reviews batch (no PHI, no financial, no litigation hold); partition delete executed; deletion logged; GoHighLevel: 23 prospect contacts past 2-year window; Dr. Lewis reviews; purge executed; retention schedule confirmed current and accurate
2. **Edge case:** A customer exercises their CCPA right to deletion → locate all records for the customer: GoHighLevel (CRM), BigQuery (product events), Outlook (email threads); financial records: cannot delete (7-year legal requirement); PHI: cannot delete if Allevio medical record (HIPAA minimum 6 years); for records that can be deleted, execute within 45 days; send written confirmation; document exceptions with legal basis
3. **Adversarial:** Team wants to delete old data to save storage costs before confirming retention requirements → cost savings is not a valid reason to violate retention minimums; always confirm retention requirements before deleting; calculate: HIPAA violation cost ($10K-$50K per violation) vastly exceeds storage cost savings; the right way to reduce storage costs is to archive cold data (cheaper storage tier) — not delete it prematurely

## Audit Log
Policy version history retained. Deletion logs retained. Certificate of destruction (PHI) retained separately for 6 years. Litigation hold records retained until legal counsel clears.

## Deprecation
Retire when MBL implements an automated data lifecycle management tool (BigQuery table TTLs, OneTrust data inventory) that enforces retention schedules without manual execution.
