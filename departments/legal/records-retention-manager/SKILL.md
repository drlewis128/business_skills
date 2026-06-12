---
name: records-retention-manager
description: "Manage records retention schedules and document lifecycle. Use when the user says 'records retention', 'how long do we keep records', 'document retention', 'retention schedule', 'records destruction', 'purge records', 'retain this how long', 'litigation hold vs. retention', 'records management', or 'document lifecycle'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--record-type <HR|financial|legal|healthcare|IT>] [--mode <policy|schedule|destruction>]"
---

# Records Retention Manager

Manage records retention schedules and document lifecycle for MBL portfolio companies. Keeping everything forever creates cost, risk, and e-discovery exposure. Destroying records prematurely creates regulatory violations and litigation problems. The answer is a defined, documented records retention schedule that specifies what to keep, how long, and how to destroy it at the end. HIPAA requires 6 years for PHI records. IRS requires 7 years for tax records. Employment records require 3-7 years depending on type.

## When to Use
- Building or updating the records retention policy
- Determining how long to keep a specific type of record
- Preparing for legal hold review — what retention schedules are affected?
- Annual records cleanup (purging records past their retention period)
- M&A due diligence — what records does the entity have?

## Retention Schedule by Record Type

### Financial Records (All Entities)
| Record Type | Retention Period | Regulatory Driver |
|-----------|----------------|----------------|
| Tax returns (federal and state) | 7 years | IRS — audit period |
| Accounts payable/receivable | 7 years | IRS, general practice |
| Bank statements | 7 years | IRS |
| Payroll records | 4 years (FLSA) | DOL — FLSA |
| Payroll tax records | 4 years | IRS |
| General ledger | Permanent | Accounting best practice |
| Financial statements (audited) | Permanent | Governance |
| Expense reports | 7 years | IRS |
| Contracts (executed) | 10 years after expiration | Statute of limitations |

### Healthcare Records — Allevio
| Record Type | Retention Period | Regulatory Driver |
|-----------|----------------|----------------|
| Medical records (patient) | 10 years from last treatment (AZ) | ARS §12-2297 |
| HIPAA records (policies, training, risk analysis) | 6 years from creation or last in effect | 45 CFR §164.530(j) |
| BAAs | 6 years from creation or last in effect | 45 CFR §164.530(j) |
| Breach documentation | 6 years | 45 CFR §164.530(j) |
| PHI disclosure accounting | 6 years | 45 CFR §164.528 |

### Employment Records (All Entities)
| Record Type | Retention Period | Regulatory Driver |
|-----------|----------------|----------------|
| I-9 forms | 3 years after hire or 1 year after termination (whichever is longer) | IRCA |
| Employment applications | 2 years | EEOC |
| Employee personnel files | 7 years after termination | ADEA, general |
| Workers' compensation records | 5 years | OSHA |
| FMLA records | 3 years | FMLA |
| Payroll/wage records | 4 years | FLSA / IRS |
| Benefits records | 6 years | ERISA |

### Legal Records
| Record Type | Retention Period | Regulatory Driver |
|-----------|----------------|----------------|
| Contracts (active) | Active + 10 years after expiration | Statute of limitations |
| Litigation files | 10 years after close | Statute of limitations |
| Corporate records (charters, operating agreements, minutes) | Permanent | Corporate law |
| IP records (trademarks, patents, copyrights) | Permanent | IP law |
| Settlement agreements | Permanent | |

### IT and Security Records
| Record Type | Retention Period | Regulatory Driver |
|-----------|----------------|----------------|
| M365 audit logs | 6 years (Allevio — HIPAA) | 45 CFR §164.312(b) |
| Security incident logs | 3 years (general) / 6 years (Allevio) | SOC 2, HIPAA |
| Access logs (PHI systems) | 6 years | HIPAA |
| Vulnerability scan reports | 3 years | SOC 2 |
| Backup records | 1 year after backup deletion | General |

## Output Format

```markdown
# Records Retention Review — <Entity>
**Date:** <date> | **Entity:** <name>
**Review type:** Annual cleanup / Legal hold check / Policy build
**Prepared by:** Dr. John Lewis

---

## Retention Policy Status

| Policy component | Status |
|----------------|--------|
| Records retention policy written | ✅ / ❌ |
| Retention schedule published | ✅ / ❌ |
| Records destruction procedure defined | ✅ / ❌ |
| Legal hold exceptions process defined | ✅ / ❌ |
| Annual destruction schedule executed | ✅ / ❌ |

---

## Annual Destruction Candidates

Records that have met their retention period and may be destroyed (UNLESS under legal hold):

| Record Type | Entity | Retention Period | Oldest Eligible | Volume | Action |
|-----------|--------|----------------|---------------|--------|--------|
| 2016 expense reports | MBL | 7 years | Pre-2017 | ~200 documents | Destroy — secure shred |
| Pre-2020 employment applications (not hired) | All | 2 years | Pre-2020 | ~50 applications | Destroy |
| Closed litigation file (2014) | MBL | 10 years | 2024 eligible | 1 file | Destroy per 10-yr schedule in 2024 |

**LEGAL HOLD CHECK:** Before any destruction, confirm none of these records are subject to an active legal hold.

---

## Legal Hold Crosscheck

| Active Legal Hold | Scope | Records Affected | Status |
|-----------------|-------|----------------|--------|
| Allevio employment claim (WB-001) | All records re: <employee name> 2022-present | Personnel file, expense reports, emails | 🔴 DO NOT DESTROY — hold active |

---

## Destruction Procedure

**Paper records:**
- Cross-cut shred or engage certified document destruction vendor
- For PHI: require Certificate of Destruction from vendor
- Certificate retained for 6 years (HIPAA)

**Electronic records:**
- Delete and empty recycle bin
- For PHI: overwrite or cryptographic erase per NIST guidelines
- For decommissioned hardware: certified data destruction

**Documentation:**
- Record what was destroyed, when, and how
- Destruction log retained per retention schedule
```

## Output Contract
- Legal hold always checked before any destruction — records destruction during litigation is spoliation, punishable by adverse inference instruction or sanctions
- PHI destruction always requires Certificate of Destruction (paper) or NIST-compliant electronic destruction — "we deleted it" is not sufficient for HIPAA
- Permanent records never destroyed — corporate records (operating agreements, minutes, IP) are permanent
- Annual destruction cycle always executed — records retained past their period create unnecessary e-discovery risk and storage cost
- HITL required: Dr. Lewis reviews destruction candidates; Legal counsel confirms no legal holds; Allevio Compliance Officer approves PHI record destruction; records destruction log maintained by Legal

## System Dependencies
- **Reads from:** Document management system (SharePoint), legal hold manager, HR system, financial system (QuickBooks) record dates (provided by IT and Finance)
- **Writes to:** Destruction authorization and log (maintained by Legal)
- **HITL Required:** Dr. Lewis approves destruction; Legal confirms no holds; Allevio Compliance for PHI; CFO for financial record destruction

## Test Cases
1. **Golden path:** Annual records cleanup → identify 2016 financial records eligible for destruction (7-year retention), confirm no active legal holds affecting those records, authorize secure destruction of paper records (shredding vendor — get Certificate of Destruction for any PHI), electronic records purged per NIST guidelines, destruction log filed
2. **Edge case:** Records identified for destruction are related to a closed lawsuit from 5 years ago → confirm the lawsuit is truly closed and fully resolved; litigation file retention is 10 years after close — if the lawsuit closed 5 years ago, file is not yet eligible; retain until 10-year mark
3. **Adversarial:** Operations team wants to do a "spring cleaning" and delete old email threads — "we have too many emails" → before any bulk email deletion, confirm the records are past their retention period, not subject to a legal hold, and the deletion is executed per the retention policy; unilateral bulk deletion without policy guidance is spoliation risk

## Audit Log
Destruction logs retained for at least the period of the most recent destroyed record type. PHI destruction certificates retained for 6 years. Annual retention review results retained.

## Deprecation
Retire when entity deploys a records management platform (Microsoft Purview Records Management, Iron Mountain Connect) with automated retention labeling, hold management, and destruction workflow.
