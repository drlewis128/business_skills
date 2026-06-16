---
name: it-data-quality-auditor
description: "Audit data quality, detect duplicates, and drive cleanup. Use when the user says 'data quality', 'data cleanup', 'bad data', 'dirty data', 'duplicate records', 'data accuracy', 'data completeness', 'data validation', 'data integrity', 'clean the database', 'data audit', 'data hygiene', 'incorrect data', 'stale data', or 'data issues'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--system <CRM|QuickBooks|AdvancedMD|all>] [--action <audit|cleanup|validate|score>]"
---

# IT Data Quality Auditor

Assess and improve data quality at MBL portfolio companies — identifying duplicate records, missing required fields, incorrect data, and stale entries across CRM, financial, and clinical systems. Poor data quality produces unreliable reports, failed automations, incorrect billing, and poor business decisions. Data quality work is unglamorous but the ROI is high: a CRM with 40% duplicate contact rate produces email campaigns that reach people twice and skews pipeline counts; a QuickBooks with miscategorized expenses produces an incorrect P&L.

## When to Use
- Quarterly CRM data quality review — duplicates, missing fields, stale pipeline contacts
- A report is showing numbers that don't match expectations — data quality investigation
- Before migrating data to a new system — clean data first, don't migrate garbage
- After a bulk data import — validate accuracy and completeness
- A billing or AR discrepancy at Allevio — data quality in AdvancedMD
- Annual data quality audit across all core systems

## Data Quality Framework

```
Data quality dimensions:
  Completeness: Are required fields populated?
    → CRM contacts missing email = incomplete; QB invoices missing account = incomplete
    
  Accuracy: Is the data correct (not just present)?
    → Wrong billing code in AdvancedMD = inaccurate; expense in wrong QB account = inaccurate
    
  Consistency: Is data consistent across systems?
    → Same vendor spelled "Acme Corp" in QB and "ACME corporation" in Bill.com = inconsistent
    
  Uniqueness: Are there duplicate records?
    → Same contact in CRM 3 times = not unique; same vendor in QB twice = not unique
    
  Timeliness: Is the data current?
    → CRM contact last updated 2 years ago with no activity = stale
    → QB AR outstanding invoice 180 days old with no follow-up = stale
    
Data quality scoring:
  Score = (Records meeting standard / Total records) × 100
  
  Per system targets:
    CRM (GoHighLevel): >90% completeness; <3% duplicates; <15% stale (no activity 12+ months)
    QuickBooks: 100% categorized transactions; <5 uncategorized expenses per month
    AdvancedMD (Allevio): >95% clean claim rate; correct CPT/ICD-10 codes; no duplicate patient records
    
Common data quality issues by system:
  GoHighLevel CRM:
    - Duplicate contacts (same email or phone, different name variant)
    - Missing email or phone (cannot be contacted or marketed to)
    - Stale contacts in pipeline (no activity in >90 days — blocking pipeline view)
    - Incorrect pipeline stage (deal closed but still in "Proposal Sent")
    - Missing source tag (cannot attribute leads to campaigns)
    
  QuickBooks Online:
    - Uncategorized transactions ("Ask My Accountant" expense category)
    - Miscategorized expenses (marketing spend coded to office supplies)
    - Duplicate vendor entries (same vendor, two records)
    - Unreconciled bank transactions (bank feed imported but not matched to QB entries)
    - Stale AR: invoices outstanding >90 days with no notes
    
  AdvancedMD (Allevio — clinical billing data):
    - Claim rejections from data quality issues (wrong billing code, missing modifier)
    - Duplicate patient records (same patient, two MRNs)
    - Missing or incorrect insurance information (causes claim rejections)
    - Undocumented or unmatched encounters
```

## Output Format

```markdown
# Data Quality Audit Report — <Company Name>
**Date:** [Date] | **Systems audited:** [GoHighLevel / QuickBooks / AdvancedMD / Other]
**Overall data quality score:** [X%]
**Critical findings:** [N] | **Records requiring cleanup:** [N]
**Prepared by:** Dr. John Lewis

---

## GoHighLevel CRM Data Quality

| Metric | Count | % of Total | Target | Status |
|--------|-------|-----------|--------|--------|
| Total contacts | [N] | — | — | |
| Contacts with email | [N] | [X%] | >95% | 🟢/🟡/🔴 |
| Contacts with phone | [N] | [X%] | >80% | |
| Contacts with source tag | [N] | [X%] | 100% | |
| Duplicate contacts (detected) | [N] | [X%] | <3% | |
| Stale contacts (no activity 12+ mo) | [N] | [X%] | <15% | |
| Contacts in wrong pipeline stage | [N] | — | 0 known | |

**Data quality score (CRM):** [X%]

**Top cleanup actions:**
- [ ] Merge [N] duplicate contacts — [Tool: GHL merge function]
- [ ] Update source tag on [N] contacts — bulk update
- [ ] Archive [N] stale contacts with no activity since [Date]

---

## QuickBooks Data Quality

| Metric | Count | Target | Status |
|--------|-------|--------|--------|
| Uncategorized ("Ask My Accountant") expenses | [N] | 0 | 🟢/🔴 |
| Duplicate vendor entries | [N] | 0 | |
| Unreconciled bank transactions | [N] | 0 (monthly) | |
| Stale AR (>90 days outstanding) | [N] | 0 (or documented) | |
| Bank reconciliation status | [Current / Behind] | Monthly | |

**Critical:** Uncategorized expenses ([N]) — controller must categorize before monthly close

---

## AdvancedMD Data Quality (Allevio)

| Metric | Value | Target | Status |
|--------|-------|--------|--------|
| Clean claim rate (first-pass acceptance) | [X%] | >95% | 🟢/🔴 |
| Denial rate | [X%] | <8% | |
| Duplicate patient records | [N] | 0 | 🔴 if any |
| Encounters without billing | [N] | 0 | |
| Claims with incorrect CPT/ICD-10 | [N] | 0 | |

**Common denial reasons (this period):**
| Denial reason | Count | Fix |
|--------------|-------|-----|
| [Missing modifier] | [N] | Add modifier to CPT template |
| [Wrong insurance ID] | [N] | Verify insurance at check-in |

---

## Data Cleanup Plan

| System | Issue | Count | Action | Owner | Deadline | Effort |
|--------|-------|-------|--------|-------|---------|--------|
| CRM | Duplicate contacts | [N] | GHL merge tool | Dr. Lewis | This week | 2 hrs |
| CRM | Missing source tags | [N] | Bulk update | Dr. Lewis | This week | 1 hr |
| QB | Uncategorized expenses | [N] | Controller categorizes | Controller | Month-end | 1 hr |
| QB | Duplicate vendors | [N] | Merge in QB | Dr. Lewis | This week | 30 min |
| AdvancedMD | Duplicate patient records | [N] | Clinical Director + billing review | Clinical + Dr. Lewis | This week | 3 hrs |

---

## Matt Mathison Brief (if data quality impacting reports or >10% critical records)

[Company] data quality: [X%] overall. [Key issue — e.g., "CRM 8% duplicates inflating pipeline count by ~$[X]"]. Fix: [Action underway]. Expected: Complete by [Date].
```

## Output Contract
- Data quality issues that affect business decisions are escalated immediately — if the CRM pipeline count is inflated by 30% because of duplicate contacts (double-counting deals), Matt Mathison is making strategic decisions based on bad data; this is reported as soon as it's discovered, not cleaned up quietly and then reported as resolved; the impact on reporting is stated explicitly before the fix is described
- Duplicate patient records at Allevio are treated as critical — a patient with two MRN records may have split clinical history; billing to the wrong record creates compliance risk; duplicate patient records in AdvancedMD are resolved by the clinical director (who confirms which record is the primary) and Dr. Lewis (who executes the merge); this is a same-week action item regardless of what else is on the calendar
- Data quality cleanup does not delete data — merge, not delete; archive, not purge; records are merged (preserving history) or archived (preserved but removed from active view); data is purged only per the data retention schedule with the data owner's authorization (see it-data-governance); "cleanup" at MBL scale means correcting and consolidating, not removing
- HITL required: Dr. Lewis leads data quality audits; CRM cleanup by Dr. Lewis; QB uncategorized expenses by controller (Finance owns QB data accuracy); AdvancedMD duplicate patients by Clinical Director + Dr. Lewis; data deletion/archiving requires data owner authorization; Matt Mathison briefed if reporting impact found

## System Dependencies
- **Reads from:** GoHighLevel (contacts, pipeline, activity), QuickBooks Online (transactions, vendors, AR), AdvancedMD (claims, patient records, denial reports), Bill.com (vendors, payments), it-reporting-infrastructure (reports that surface data quality issues)
- **Writes to:** Data quality report (SharePoint/Ops/<Company>/IT/DataQuality/); CRM merge and cleanup log; QuickBooks cleanup log; AdvancedMD duplicate record resolution log (Allevio — clinical record); data quality trend tracker
- **HITL Required:** Dr. Lewis leads audit; CRM cleanup by Dr. Lewis; QB categorization by controller; AdvancedMD patient records by Clinical Director + Dr. Lewis; data purge by data owner; reporting impact escalated to Matt Mathison

## Test Cases
1. **Golden path:** Allevio quarterly data quality audit → CRM (North Vista — separate from clinical): 2,847 contacts; duplicates detected: 112 (3.9% — above 3% target); missing email: 187 (6.6%) — below 95% target; source tags missing: 340 (12%) — below 100% target; Plan: merge duplicates this week (2 hrs); bulk update source tags where determinable (1 hr); for missing emails: flag for sales team follow-up; AdvancedMD: clean claim rate 96.2% ✅; denial rate 5.8% ✅; duplicate patients: 3 detected → Clinical Director confirms primaries; Dr. Lewis merges → 0 duplicates ✅; QB: 7 uncategorized expenses — controller categorizes by month-end; 0 duplicate vendors ✅; overall data quality score: 87% — Needs work; target: >90% by next quarter
2. **Edge case:** QuickBooks shows 47 transactions in "Ask My Accountant" (uncategorized) — some are from 6 months ago → Escalate to controller: uncategorized transactions = inaccurate P&L; some may have been intentionally left for clarification; schedule 1-hour session with controller to categorize all 47; categorize by type: expense (which account?), asset purchase, or duplicate entry (should be deleted); bank reconciliation cannot be signed off with uncategorized transactions; this is a month-end close blocker; prioritize now
3. **Adversarial:** "Data cleanup sounds like busywork — we have more important things to do" → Frame with business impact: "The CRM pipeline count of $2.4M includes $340K in duplicate contacts that represent deals we've already closed or lost — the real pipeline is $2.06M; Matt Mathison's weekly report is showing a number that is 16% higher than actual; that affects capital allocation decisions"; data quality is not housekeeping — it is the foundation of every report the business uses to make decisions; the work to fix it is proportional to the business risk of leaving it wrong

## Audit Log
Quarterly data quality reports retained by system and date. CRM merge and cleanup logs retained. QB categorization records retained. AdvancedMD duplicate patient resolution retained (clinical record — permanent). Data quality trend scores tracked over time. Reporting impact disclosures retained. Data purge authorizations retained.

## Deprecation
Retire when portfolio companies have dedicated data analysts or operations staff who run quarterly data quality audits and own cleanup processes — with Dr. Lewis reviewing quarterly data quality scorecards and exception reports. AdvancedMD duplicate patient record resolution at Allevio requires Clinical Director involvement permanently.
