---
name: data-quality-auditor
description: "Audit and improve data quality across systems. Use when the user says 'data quality', 'bad data', 'dirty data', 'our data is wrong', 'data accuracy', 'data completeness', 'fix the data', 'data quality audit', 'data validation', 'trust the data', 'data reliability', or 'is this data correct'."
metadata:
  version: 1.0.0
  tier: data
  owner: Dr. John Lewis
argument-hint: "[--system <quickbooks|gohighlevel|monday|all>] [--dimension <completeness|accuracy|freshness|consistency>]"
---

# Data Quality Auditor

Audit data quality across MBL's systems and build a remediation plan. Bad data is worse than no data — people make decisions based on it. For MBL's AI products, data quality is doubly important: AI amplifies whatever patterns are in the data, so garbage in produces garbage out at scale. A data quality audit identifies which data can be trusted, which can't, and what it takes to fix it.

## When to Use
- Reports are producing numbers that don't match expectations
- Two reports show different numbers for the same metric
- About to build a dashboard or AI model on top of data — validate quality first
- New data source added — quality check before it flows into reports
- Stakeholder doesn't trust the data — run the audit to restore confidence

## Data Quality Dimensions

```
1. Completeness: Are all required fields populated?
   Check: % of records with null values in critical fields
   Target: >95% for required fields; flag anything below 80%

2. Accuracy: Does the data reflect the real world?
   Check: Sample 20-50 records; manually verify against source of truth
   Target: >98% accuracy for financial data; >95% for CRM

3. Consistency: Does the same concept have the same representation?
   Check: Same entity named differently across records (e.g., "MBL Partners" vs "MBL")
   Target: Normalized representations; no duplicates

4. Freshness: Is the data current?
   Check: When was the last record updated? Are expected records missing?
   Target: Real-time for operational data; <24h lag for reporting

5. Uniqueness: Are there duplicate records?
   Check: Count duplicate emails, duplicate company names, duplicate IDs
   Target: <1% duplicate rate for CRM; 0% for financial records

6. Validity: Do values fall within expected ranges or formats?
   Check: Phone numbers with correct format, dates in valid range, amounts > 0
   Target: >99% for financial data; >95% for CRM
```

## Output Format

```markdown
# Data Quality Audit — <System / Domain>
**Date:** <date> | **Auditor:** Dr. John Lewis
**System(s) audited:** <list>
**Records sampled:** <N>

---

## Audit Summary

| Dimension | Score | Status | Biggest issue |
|-----------|-------|--------|--------------|
| Completeness | <N>% | 🟢 / 🟡 / 🔴 | [Specific gap] |
| Accuracy | <N>% | 🟢 / 🟡 / 🔴 | [Specific error found] |
| Consistency | <N>% | 🟢 / 🟡 / 🔴 | [Duplicate/normalization issue] |
| Freshness | <N> days lag | 🟢 / 🟡 / 🔴 | [Stale data location] |
| Uniqueness | <N>% unique | 🟢 / 🟡 / 🔴 | [Duplicate count] |
| Validity | <N>% valid | 🟢 / 🟡 / 🔴 | [Invalid format issue] |

**Overall quality score:** <N>/6 dimensions passing
**Verdict:** ✅ Reliable for reporting | ⚠️ Conditionally reliable (caveats below) | ❌ Unreliable — do not use for decisions

---

## Finding Detail

### Completeness Issues

| Field | System | Null rate | Impact | Fix |
|-------|--------|---------|--------|-----|
| [close_date] | GoHighLevel Deals | 28% null | High — deals without close dates distort pipeline aging | Enforce required field; backfill from email records |
| [phone_number] | GoHighLevel Contacts | 35% null | Medium — contact completeness | Data enrichment tool (Clearbit) |

---

### Accuracy Issues

**Sample:** 30 randomly selected records manually verified against source documents

| Record | Field | System value | Actual value | Error type |
|--------|-------|-------------|-------------|-----------|
| Deal #1234 | Amount | $150,000 | $15,000 | Data entry error (extra zero) |
| Contact #567 | Company | "MBL" | "MBL Partners" | Inconsistent naming |

**Accuracy rate:** 28/30 correct = 93% (below 95% target)
**Most common error type:** Inconsistent company naming

---

### Consistency Issues

| Issue | Count | Examples | Fix |
|-------|-------|---------|-----|
| Company name variants | 23 duplicates | "MBL", "MBL Partners", "MBL Partners LLC" | Normalize to canonical name; dedup |
| Deal stage naming | 4 variants | "Proposal", "Prop", "Sent Proposal", "In Proposal" | Standardize stage names; update existing records |

---

### Duplicate Records

| Object | Duplicate count | % of total | Dedup approach |
|--------|--------------|-----------|--------------|
| Contacts | 47 | 3.2% | Match on email; manual review for conflicts |
| Companies | 12 | 1.8% | Match on normalized name + domain |

---

## Remediation Plan

| Finding | Priority | Action | Owner | Effort | By when |
|---------|---------|--------|-------|--------|---------|
| Missing close dates | P1 | Enforce required field; run enrichment for open deals | Dr. Lewis | 2h | 1 week |
| Duplicate contacts | P1 | GoHighLevel dedup run; establish merge rules | Dr. Lewis | 3h | 2 weeks |
| Inconsistent company names | P2 | Run normalization script; review 23 cases | Dr. Lewis | 4h | 2 weeks |
| Missing phone numbers | P3 | Clearbit enrichment for active contacts | Dr. Lewis | 1h setup | 1 month |

---

## Prevention Measures

| Measure | Implementation | Owner |
|---------|--------------|-------|
| Required fields enforced at entry | GoHighLevel form validation | Dr. Lewis |
| Weekly dedup run | Automated; Dr. Lewis reviews exceptions | Dr. Lewis |
| Data entry validation training | Quarterly; included in onboarding | Dr. Lewis |
| Monthly data quality scorecard | Automated pull; reviewed in ops meeting | Dr. Lewis |
```

## Output Contract
- All six quality dimensions always scored — a data audit that only checks completeness misses accuracy and freshness
- Sample verification always performed for accuracy — automated checks can't catch what the data never contained
- Remediation plan always prioritized and owned — findings without action are just a list of complaints
- Prevention measures always included — fix the data AND the process that created the bad data
- HITL required: Dr. Lewis reviews audit findings; remediation affecting financial data requires Dr. Lewis approval; HIPAA data quality issues require Allevio privacy officer notification; findings shared with Matt Mathison if affecting management reporting

## System Dependencies
- **Reads from:** All data systems being audited (GoHighLevel, QuickBooks, Monday.com)
- **Writes to:** Audit report (SharePoint/Data/Quality); remediation tasks (Monday.com)
- **HITL Required:** Dr. Lewis reviews and acts on findings; HIPAA issues escalate to Allevio privacy officer; financial data issues escalate to Matt Mathison

## Test Cases
1. **Golden path:** GoHighLevel CRM data quality audit → Completeness: 72% (close_date missing 28%); Accuracy: 93% (data entry errors in 2 of 30 sampled); Consistency: 85% (23 duplicate company names); Freshness: current; Uniqueness: 96.8% (47 duplicate contacts); Validity: 97%; Remediation: P1 — enforce required fields, dedup run; P2 — normalize company names; P3 — phone enrichment; prevention: required field validation, weekly dedup
2. **Edge case:** Financial data (QuickBooks) shows inconsistencies — some invoices have amounts that don't match the contracts → this is P0 — financial data errors affect reporting and potentially tax/audit obligations; Dr. Lewis investigates immediately; Matt Mathison informed; accountant reviews; do not publish financial reports until resolved
3. **Adversarial:** Data quality audit finds 40% error rate in CRM — team says "we knew it was bad, we just use it directionally" → "directional" data that's 40% wrong is not directional — it's noise; any model, dashboard, or AI system built on 40% error rate data will produce unreliable outputs; prioritize quality remediation before any analytics build; build on a solid foundation or don't build

## Audit Log
Audit reports retained per system per date. Remediation actions tracked. Quality scores trended monthly.

## Deprecation
Retire when MBL adopts an automated data quality monitoring platform (Great Expectations, Monte Carlo, or similar) with continuous quality checks and alerts.
