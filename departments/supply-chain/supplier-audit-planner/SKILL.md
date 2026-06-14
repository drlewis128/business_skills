---
name: supplier-audit-planner
description: "Plan and conduct supplier audits for quality, compliance, and risk. Use when the user says 'supplier audit', 'audit a supplier', 'vendor audit', 'on-site supplier visit', 'supplier quality audit', 'compliance audit for suppliers', 'supplier assessment visit', 'supplier capability audit', or 'assess supplier operations'."
metadata:
  version: 1.0.0
  tier: supply-chain
  owner: Dr. John Lewis
argument-hint: "[--supplier <name>] [--type <quality|compliance|risk|capability>] [--format <on-site|remote|self-assessment>]"
---

# Supplier Audit Planner

Plan and conduct supplier audits to verify quality systems, compliance status, and operational capability. Supplier audits are the most direct way to assess supplier risk and quality beyond SLA metrics and self-reported data. For MBL's portfolio, supplier audits are most critical for Allevio (medical supply vendors — FDA, HIPAA) and HIVE (field service contractors — OSHA, safety). Audits are a Tier A supplier governance requirement and a risk mitigation tool for any high-risk supplier.

## When to Use
- New Tier A supplier before first major order (pre-qualification audit)
- Annual Tier A supplier review (governance requirement)
- Supplier performance has declined — investigate root cause on-site
- HIPAA compliance audit for Allevio clinical vendors
- OSHA safety audit for HIVE field contractors
- After a supplier incident or quality failure — corrective action audit

## Audit Types

```
Quality audit:
  Focus: Manufacturing/service quality systems (ISO 9001, GMP for medical)
  Evidence: Quality management system documentation; process controls; inspection records
  Best for: Medical device suppliers (Allevio); manufactured goods

Compliance audit:
  Focus: Regulatory compliance (HIPAA, OSHA, FDA, DOT)
  Evidence: Compliance documentation; records; certifications; training logs
  Best for: Allevio clinical vendors (HIPAA); HIVE contractors (OSHA)

Risk audit:
  Focus: Business continuity, financial stability, single-source risk
  Evidence: Financial statements; capacity data; BCP documentation; sub-supplier list
  Best for: Any Tier A supplier before major commitment

Capability audit:
  Focus: Can this supplier do what we're asking? (pre-qualification)
  Evidence: Facility visit; equipment; staff; capacity; references validated
  Best for: New supplier before first strategic order
```

## Output Format

```markdown
# Supplier Audit Plan — <Supplier Name>
**Date:** <date> | **Auditor:** Dr. John Lewis
**Supplier:** <name> | **Entity:** <MBL / Allevio / HIVE>
**Audit type:** Quality / Compliance / Risk / Capability
**Format:** On-site / Remote / Self-assessment
**Audit date:** <date> | **Pre-audit package sent:** <date - 14 days>

---

## Audit Scope

**What we're auditing:** <Specific processes, facilities, or systems>
**Why this audit:** <Annual review / Incident response / New supplier / Performance concern>
**Standards referenced:** <ISO 9001 / HIPAA / OSHA 29 CFR / FDA 21 CFR>

---

## Pre-Audit Checklist (send 14 days before audit)

Supplier provides before audit date:
- [ ] Organizational chart (who's responsible for quality/compliance?)
- [ ] Quality/compliance certifications (ISO, HIPAA attestations, OSHA logs)
- [ ] Sample procedures for audited processes (2-3 key procedures)
- [ ] Any customer or regulatory audit reports from last 2 years
- [ ] Corrective action log (what issues have been identified and resolved?)
- [ ] Sub-supplier list (who do they buy from for what we purchase?)

---

## Audit Checklist

### Section 1: Quality Management System (Quality audit)

| Item | Evidence required | Finding | Score (1-5) |
|------|-----------------|---------|------------|
| Quality manual exists and is current | Document review | | |
| Management review is conducted | Meeting minutes | | |
| Internal audits are conducted | Audit schedule + reports | | |
| Corrective action process exists | CAR log; closure documentation | | |
| Customer complaints are tracked and resolved | Complaint log | | |
| Inspection records are maintained | Sample inspection reports | | |
| Calibration records are maintained | Calibration log | | |

**Quality system score:** ___/35

---

### Section 2: HIPAA Compliance (Allevio vendors)

| Item | Evidence required | Finding | Score |
|------|-----------------|---------|-------|
| HIPAA Privacy Officer designated | Documented role | | Pass/Fail |
| Annual HIPAA training completed | Training records | | Pass/Fail |
| PHI access log maintained | Access log sample | | Pass/Fail |
| Risk assessment completed (annual) | Risk assessment document | | Pass/Fail |
| BAA executed with all sub-processors | Sub-processor BAA list | | Pass/Fail |
| Breach notification procedure documented | Procedure document | | Pass/Fail |
| PHI encryption: in transit (TLS 1.2+) | Tech documentation | | Pass/Fail |
| PHI encryption: at rest | Tech documentation | | Pass/Fail |

**HIPAA compliance: ___/8 items PASS (must be 8/8 to continue clinical relationship)**

---

### Section 3: OSHA Compliance (HIVE contractors)

| Item | Evidence required | Finding | Score |
|------|-----------------|---------|-------|
| OSHA 300 log (injury/illness records) | 300 log review | | Pass/Fail |
| OSHA recordable incident rate (TRIR) | Calculate from 300 log | Target: <2.0 | |
| Safety training records | Training log | | Pass/Fail |
| Hazard communication (HazCom) | SDS binder; labeling | | Pass/Fail |
| PPE policy and enforcement | Written policy; observation | | Pass/Fail |
| Emergency response procedure | Written procedure | | Pass/Fail |
| Equipment inspection records | Inspection log | | Pass/Fail |

**OSHA compliance score:** ___/7 items | **TRIR:** X.XX (target: <2.0)**

---

### Section 4: Business Continuity / Risk (Risk audit)

| Item | Evidence required | Finding | Score (1-5) |
|------|-----------------|---------|------------|
| Business continuity plan exists | BCP document | | |
| BCP has been tested in last 12 months | Test report | | |
| Single points of failure identified | Risk register | | |
| Sub-supplier risk managed | Sub-supplier list + controls | | |
| Financial stability (D&B or financial statement) | D&B report | | |
| Alternative production site available | Documented | | |

**Business continuity score:** ___/30

---

## Audit Findings

| Finding # | Category | Description | Severity | Root cause | Corrective action required |
|----------|---------|-----------|---------|-----------|--------------------------|
| F-001 | Quality | Calibration records: 3 instruments overdue by >30 days | Medium | Process gap | Update calibration schedule; complete overdue within 30 days |
| F-002 | HIPAA | Sub-processor BAA: 1 of 3 sub-processors missing BAA | Critical | Oversight | Execute BAA within 7 days or cease data sharing |
| F-003 | OSHA | HazCom: 2 chemicals lacking current SDS on-site | Medium | Administrative | Obtain SDS within 10 days |

---

## Audit Score Summary

| Section | Max | Score | % | Assessment |
|---------|-----|-------|---|-----------|
| Quality Management | 35 | 28 | 80% | Good |
| HIPAA Compliance | 8 (P/F) | 7/8 | 88% | 🔴 Critical finding (1 fail) |
| OSHA Compliance | 7 (P/F) | 6/7 | 86% | Medium findings |
| Business Continuity | 30 | 22 | 73% | Adequate |
| **Overall** | | | **82%** | **Conditional — corrective actions required** |

**Audit verdict:**
- ✅ APPROVED: 90%+ with no critical findings
- ⚠️ CONDITIONAL: 70-89% OR critical findings with acceptable corrective action plan
- ❌ DISQUALIFIED: <70% OR critical HIPAA finding with no corrective action within 7 days

**Verdict: CONDITIONAL — HIPAA CAR must be completed within 7 days**

---

## Corrective Action Requests (CARs)

| CAR # | Finding | Required action | Due date | Supplier confirmed? | Closure status |
|-------|---------|----------------|---------|-------------------|--------------|
| CAR-001 | Missing BAA | Execute BAA with sub-processor | <date + 7> | ⏳ | Open |
| CAR-002 | Calibration overdue | Complete 3 calibrations | <date + 30> | ⏳ | Open |
| CAR-003 | SDS missing | Obtain missing SDS | <date + 10> | ⏳ | Open |
```

## Output Contract
- HIPAA audit always 8/8 pass requirement for Allevio clinical vendors — a supplier with any failing HIPAA control cannot continue handling PHI; it's not a scorecard issue
- OSHA TRIR always calculated from actual 300 log — self-reported safety rates are not auditable; the 300 log is the authoritative source
- Corrective action requests always time-bound — an audit finding without a due date and verification plan doesn't close
- Audit verdict always explicit — not a score; a clear approval/conditional/disqualification decision
- HITL required: Dr. Lewis plans and leads audit; Matt Mathison notified of disqualified suppliers; HIPAA critical findings escalated to Allevio privacy officer immediately; OSHA critical findings escalated to HIVE safety officer; corrective action closure verified by Dr. Lewis before re-approval

## System Dependencies
- **Reads from:** Supplier contracts (SLA requirements), supplier performance history, compliance standards (HIPAA, OSHA, ISO)
- **Writes to:** Audit report (SharePoint/Operations/Procurement/Audits); corrective action tracker; supplier registry (audit status)
- **HITL Required:** Dr. Lewis leads audit; disqualifications → Matt Mathison; HIPAA criticals → Allevio PO; OSHA criticals → HIVE safety officer; CAR closure verified by Dr. Lewis

## Test Cases
1. **Golden path:** Annual Tier A audit of AdvancedMD (Allevio) → Remote audit; HIPAA: 8/8 pass; Quality: 80%; Business continuity: 75%; 3 medium findings (no critical); overall: 80% — Conditional; 2 CARs issued; supplier responds within 5 days with closure plan; CARs verified closed within 30 days; supplier status: Approved — next audit in 12 months
2. **Edge case:** Supplier refuses to allow an on-site audit ("it's proprietary") → an on-site audit refusal for a Tier A supplier is a red flag; for HIPAA-covered vendors, the right to audit is typically in the BAA; escalate to legal; if audit rights aren't in the contract, this is a gap to fix at renewal; if the supplier won't allow any audit (remote or on-site), consider whether to continue the relationship; a supplier with "nothing to hide" doesn't hide from audits
3. **Adversarial:** Audit reveals a critical OSHA violation (chemical stored incorrectly at HIVE contractor site) → stop work at that site immediately; hazmat stored incorrectly is an immediate safety risk; notify HIVE GP and safety officer; determine if any OSHA reporting requirement is triggered (employer has a general duty to provide safe workplaces); contractor must remediate before work resumes; document; consider whether this contractor should remain on the approved list

## Audit Log
Audit reports retained. CARs and closure documentation retained. Audit schedule maintained. Disqualification decisions documented. Corrective action timelines and verification retained.

## Deprecation
Retire when MBL has a supplier quality management platform with standardized audit templates, automated CAR tracking, and supplier portal for document submission.
