---
name: rc-audit-plan-builder
description: "Build a risk-based internal audit plan. Use when the user says 'internal audit plan', 'audit planning', 'audit schedule', 'internal audit', 'audit program', 'risk-based audit', 'audit calendar', 'compliance audit plan', 'build an audit plan', 'what should we audit', 'audit priorities', 'annual audit plan', or 'internal controls audit'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--year <YYYY>] [--scope <full|financial|compliance|operational|IT>]"
---

# Internal Audit Plan Builder

Build a risk-based internal audit plan for MBL portfolio companies — prioritizing audit activities based on risk exposure, compliance requirements, and operational criticality rather than rotating through a fixed list of topics. Internal audit at portfolio scale is not about checking the same boxes every year; it is about focusing limited audit resources (primarily Dr. Lewis's time) on the areas with the highest risk and the greatest opportunity to strengthen controls. The audit plan is approved by the CEO and reported to Matt Mathison quarterly.

## When to Use
- Annual audit planning — what will the internal audit function cover this year?
- A significant risk event triggers an unplanned audit (fraud suspicion, system failure, regulatory action)
- A new business line, acquisition, or system requires audit coverage
- Quarterly reporting to Matt Mathison — what was audited and what did we find?
- Preparing for an external audit — internal audit findings support external auditor reliance

## Audit Plan Framework

```
Audit universe (areas eligible for audit):
  Financial controls:
    → Accounts payable / payment controls (Bill.com workflow; approval matrix)
    → Payroll (ghost employee check; rate changes; termination processing)
    → Expense reimbursement (policy compliance; receipt requirements)
    → Revenue recognition (Allevio billing accuracy; HIVE production accounting)
    → Cash management (bank reconciliation; segregation of duties)
    
  IT / Technology controls:
    → User access review (Entra ID; AdvancedMD; QuickBooks — who has access to what)
    → Change management (IT changes controlled; tested; approved)
    → Backup and recovery (tested; documented; HIPAA contingency — Allevio)
    → Security configuration (Secure Score; MDM enrollment; patch compliance)
    → Vendor access (MSP/IT vendor remote access controlled and logged)
    
  Compliance controls:
    → HIPAA Security Rule compliance (Allevio — annual requirement)
    → OIG LEIE exclusion checks (Allevio — annual)
    → Employment law compliance (FLSA classification; E-Verify; required postings)
    → Licensing and registration (license tracker current; renewals on track)
    → Billing compliance (Allevio — medical billing accuracy; Medicare/Medicaid compliance)
    
  Operational controls:
    → Vendor management (W-9 before payment; BAA before PHI; approved vendor list)
    → Inventory / asset management (equipment tracker; physical count)
    → Contract management (contracts executed; approved; filed)
    → Procurement (competitive bids where required; approval limits honored)
    
Risk-based prioritization scoring:
  Risk exposure (1-5): How much risk if this area is not controlled?
  Control maturity (1-5, inverted): 5 = no controls in place (audit more); 1 = strong controls (audit less)
  Last audited (1-5): 5 = never audited; 1 = audited within 12 months
  Regulatory requirement (binary, weight 2×): HIPAA audit = required; others = risk-based
  
  Audit priority score = (Risk exposure + Control maturity + Last audited) × regulatory weight
  Top scores = highest audit priority for the year

Annual audit plan structure:
  Q1: Compliance audits — HIPAA (Allevio mandatory); licensing review; employment compliance check
  Q2: Financial controls — AP audit; payroll audit; expense review
  Q3: IT controls — User access review; security configuration; backup test
  Q4: Operational controls — Vendor management; contract review; asset audit
  
  Unplanned audits: Reserve 20% of audit capacity for unplanned audits triggered by risk events
```

## Output Format

```markdown
# Internal Audit Plan — <Company Name> — FY [YYYY]
**Prepared by:** Dr. John Lewis | **Date:** [Date]
**CEO approved:** [Date] | **Matt Mathison aware:** [Date]
**Total audit capacity:** [N hours estimated for the year]

---

## Audit Universe and Risk Prioritization

| Audit area | Risk exposure (1-5) | Control maturity (1-5, inverted) | Last audited | Regulatory req | Priority score | Planned? |
|-----------|-------------------|--------------------------------|------------|--------------|--------------|---------|
| HIPAA Security Rule (Allevio) | 5 | 2 | 6 months | ✅ Required (2×) | High | Q1 |
| User access review | 4 | 3 | 12 months | No | High | Q3 |
| AP / payment controls | 4 | 3 | 18 months | No | High | Q2 |
| Payroll | 4 | 3 | 12 months | No | Medium-High | Q2 |
| OIG LEIE checks (Allevio) | 5 | 2 | 12 months | ✅ Required (2×) | High | Q1 |
| Billing compliance (Allevio) | 5 | 3 | 6 months | ✅ Required (2×) | High | Q1/Q3 |
| Employment law compliance | 3 | 3 | 18 months | No | Medium | Q4 |
| Vendor management | 3 | 3 | 12 months | No | Medium | Q4 |
| Backup and recovery testing | 4 | 2 | 6 months | ✅ Required-Allevio | High | Q3 |

---

## Annual Audit Plan

| # | Audit | Quarter | Estimated hours | Scope | Owner | Objective |
|---|-------|---------|----------------|-------|-------|----------|
| 1 | HIPAA Security Rule compliance (Allevio) | Q1 | 8 hrs | Full safeguards review; risk analysis | Dr. Lewis | Annual HIPAA compliance; regulatory requirement |
| 2 | OIG LEIE exclusion check — all clinical staff (Allevio) | Q1 | 2 hrs | Full clinical roster | Dr. Lewis | Medicare/Medicaid compliance |
| 3 | AP / payment controls | Q2 | 4 hrs | Bill.com workflow; approval matrix; bank verification | Dr. Lewis | Prevent unauthorized payments; fraud risk |
| 4 | Payroll accuracy and controls | Q2 | 4 hrs | Sample of payroll runs; new hires/terms | Dr. Lewis | Ghost employee; rate errors; separation controls |
| 5 | User access review | Q3 | 4 hrs | Entra ID; QuickBooks; AdvancedMD; Bill.com | Dr. Lewis | Least privilege; terminated user access; shared accounts |
| 6 | IT security configuration | Q3 | 3 hrs | Secure Score; MDM; patch compliance | Dr. Lewis | Security posture against baseline |
| 7 | Backup and recovery test | Q3 | 3 hrs | Restore test from Azure Backup; DR procedure | Dr. Lewis | Recovery capability; HIPAA contingency |
| 8 | Vendor management | Q4 | 3 hrs | W-9 tracker; BAA tracker; approval limits | Dr. Lewis | Vendor compliance; fraud prevention |
| 9 | Employment law compliance check | Q4 | 3 hrs | Required postings; E-Verify; EPSTA | Dr. Lewis | Regulatory compliance; exposure reduction |
| **Unplanned reserve** | TBD | Any | **8 hrs** | Triggered by risk events | Dr. Lewis | Responsive to emerging risks |
| **Total** | | | **42 hrs** | | | |

---

## Quarterly Audit Status Report

| Quarter | Audits planned | Completed | Findings | High findings resolved | Unplanned audits |
|---------|-------------|---------|---------|----------------------|----------------|
| Q1 | [N] | [N] | [N findings] | [N]/[N] | [N] |
| Q2 | | | | | |
| Q3 | | | | | |
| Q4 | | | | | |
| **FY Total** | **[N]** | **[N]** | **[N]** | | |

---

## Audit Findings Tracker

| Audit | Finding # | Description | Risk rating | Remediation owner | Due date | Status |
|-------|----------|------------|-----------|-----------------|---------|--------|
| AP Audit | F001 | 3 invoices approved by the same person who created them (SoD gap) | 🔴 High | Controller | [Date] | In remediation |
| | F002 | 1 vendor missing W-9 (paid in prior year) | 🟡 Medium | Controller | | |
| User Access | F003 | Former employee account active 10 days post-termination | 🔴 High | Dr. Lewis | Immediate | Resolved [Date] |

---

## Matt Mathison Quarterly Audit Report

Q[N] [YYYY] internal audit: [N] audits completed. High findings: [N] (resolved: [N]; in remediation: [N]). Key finding: [Most significant finding + remediation]. HIPAA audit (Allevio): [Compliant / Gap — detail]. Unplanned audits: [N — trigger]. Next quarter: [Planned audits].
```

## Output Contract
- Audit results drive remediation, not just documentation — an audit finding that is documented and filed without a remediation plan and a follow-up is a compliance artifact, not an audit; every finding has: a risk rating, a remediation owner, a due date, and a follow-up audit to verify remediation; High findings are remediated within 30 days; Medium within 90 days; the audit plan reserves follow-up capacity to verify that findings from prior audits were actually fixed
- HIPAA audit at Allevio is not optional and is not merged with other compliance activities — the HIPAA Security Rule requires periodic evaluation (§164.308(a)(8)); Dr. Lewis conducts an annual HIPAA security audit as a standalone activity; it produces a dated document that demonstrates the evaluation was performed; combining it with the general IT security audit is acceptable if both are fully documented, but the HIPAA evaluation output must stand on its own as evidence for OCR
- Unplanned audit capacity is reserved — an audit plan that allocates 100% of capacity to planned audits cannot respond to risk events without canceling planned work; Dr. Lewis reserves approximately 20% of audit capacity for unplanned audits; when a risk event occurs (suspected fraud, system failure, employee complaint), the unplanned capacity is used without disrupting the planned audit schedule
- HITL required: Dr. Lewis leads all internal audits; CEO reviews and approves annual audit plan; High findings escalated to CEO within 48 hours of finding; Matt Mathison quarterly audit summary; unresolved High findings >30 days escalated to Matt Mathison; fraud-related findings escalated immediately to CEO, Matt Mathison, and attorney

## System Dependencies
- **Reads from:** Risk register (rc-risk-register), prior audit findings, compliance program status (rc-hipaa-security-program, rc-employment-compliance), IT security data (it-security-assessor), financial records (QuickBooks, Bill.com), user access records (Entra ID, AdvancedMD)
- **Writes to:** Annual audit plan (SharePoint/RC/<Company>/InternalAudit/Plans/); individual audit reports; findings tracker; CEO and Matt Mathison quarterly audit summary
- **HITL Required:** Dr. Lewis leads audits; CEO approves annual plan; High findings escalated to CEO within 48 hours; Matt Mathison quarterly summary; fraud findings: CEO + Matt Mathison + attorney immediately

## Test Cases
1. **Golden path:** Annual audit plan for Allevio FY2027 → Risk-based prioritization: HIPAA audit (required; last done 8 months ago — high priority Q1); OIG LEIE (required; done 11 months ago — Q1); Billing compliance (high risk; 6-month prior audit found 2% error rate — Q1 follow-up + Q3 full audit); AP controls (last audited 18 months ago — medium-high priority Q2); User access (12 months; 1 prior High finding — verify remediation Q3); Total planned: 9 audits; 42 hours; unplanned reserve: 8 hours; CEO approved; Q1 execution begins; HIPAA audit completed Q1: 2 Medium findings (missing addressable spec documentation; 1 BAA unsigned for new vendor — both remediated); OIG LEIE: all clear; Billing: error rate improved from 2% to 0.8% — significant progress; AP audit Q2: 1 High finding (SoD gap); escalated to CEO; remediation plan: Bill.com role configuration changed within 2 weeks; verified
2. **Edge case:** A controller at Allevio is terminated unexpectedly mid-year — unplanned audit triggered → Termination triggers unplanned audit of financial controls and access; scope: Bill.com access revoked same day (verified via it-offboarding-deprovision); QuickBooks access revoked; bank signatory updated; AP aging reviewed for any anomalies in final 30 days; payroll reviewed for unauthorized changes; no anomalies found; audit documented; risk register updated (temporary SoD gap during transition); new controller onboarding includes financial controls orientation; unplanned audit complete within 1 week; 4 hours used from unplanned reserve
3. **Adversarial:** "Internal audit is for big companies — we don't need it at our size" → Internal audit at MBL portfolio scale is targeted and practical: 42 hours/year for Allevio covers the 9 highest-risk areas; that is less than 1 week of Dr. Lewis's time; the alternative — no internal audit — means: HIPAA Security Rule compliance is assumed but not verified; AP controls are assumed to work but not tested; user access to financial systems is assumed to be current but not checked; at Allevio's size, one fraud event or one HIPAA breach would cost more in a single day than the annual audit investment costs in a full year

## Audit Log
Annual audit plans retained permanently. Individual audit reports retained permanently. Findings and remediation tracking retained permanently. CEO and Matt Mathison audit communications retained. Attorney engagement for fraud findings retained permanently.

## Deprecation
Retire when portfolio companies have dedicated internal audit functions — with Dr. Lewis providing oversight of audit plan prioritization and reviewing findings from HIPAA and financial controls audits. Matt Mathison quarterly audit summary is a permanent governance requirement regardless of who leads internal audit.
