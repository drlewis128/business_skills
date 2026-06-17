---
name: rc-internal-audit-report
description: "Draft an internal audit report with findings, risk ratings, and management response. Use when the user says 'internal audit report', 'audit findings report', 'write the audit report', 'document audit findings', 'audit conclusion', 'management response to audit', 'audit report format', 'communicate audit results', 'draft findings', 'audit summary for CEO', 'audit report for Matt Mathison', or 'audit report template'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--audit <name of audit>] [--entity <company name>] [--audience <CEO|Matt|board|management>]"
---

# Internal Audit Report

Draft a complete internal audit report from audit testing results — structured to communicate findings clearly to management, drive remediation, and create a permanent record that demonstrates the internal audit function is operating effectively. The report is the deliverable that makes the audit real: without it, the testing happened but the findings are not documented, the remediation has no baseline, and the regulatory or investor evidence does not exist. An audit report at MBL portfolio scale is concise, direct, and actionable — not a 40-page consulting deliverable.

## When to Use
- Completing an audit from the rc-audit-plan-builder
- Formalizing findings from rc-controls-tester testing
- Communicating audit results to CEO and/or Matt Mathison
- Creating the permanent audit record for regulatory or investor purposes
- Tracking management response and remediation commitments

## Audit Report Framework

```
Report structure and audience:
  Executive Summary (1 page): CEO and Matt Mathison — BLUF; overall rating; findings count; high-priority items
  Detailed Findings: Management — each finding fully documented; evidence; recommendation; response
  Remediation Tracker: All findings with owner, due date, status
  
Overall audit ratings (like a credit rating — communicate the control environment):
  Effective: Controls are designed appropriately and operating effectively; minor issues noted and documented
  Needs Improvement: Controls are generally in place but with identified gaps; remediation in progress
  Ineffective: Significant control failures identified; management action required; CEO and Matt Mathison informed
  
Finding risk ratings (consistent with rc-controls-tester):
  High: Significant risk of financial loss, fraud, regulatory violation, or data breach; remediate within 30 days
  Medium: Moderate risk with meaningful potential impact; remediate within 90 days
  Low: Minor control gap or process improvement opportunity; remediate within 180 days
  
Management response requirement:
  Every finding requires a management response: "We accept the finding and will implement [specific action] by [date], owned by [name]"
  Or: "We disagree with the finding for the following reason: [reason] — Dr. Lewis and management acknowledge the disagreement"
  Management cannot simply "note" a finding without committing to action or formally disagreeing
  
Report format principles (BLUF):
  BLUF first — rating and high-priority items in the first 5 lines
  Evidence-based — every finding cites specific evidence (transaction ID, date, system, screenshot reference)
  Action-oriented — every finding has a recommendation; every finding has a management response; every finding has a due date
  No ambiguity — "appears to have" and "may have" are not findings; "payment #X was processed without required dual approval" is a finding
```

## Output Format

```markdown
# Internal Audit Report: [Audit Name]
**Entity:** [Company] | **Date:** [Date]
**Audit period:** [Date range tested]
**Auditor:** Dr. John Lewis
**Distribution:** CEO [Name] | [Matt Mathison, if applicable]

---

## Executive Summary

**Overall Rating:** ✅ Effective / ⚠️ Needs Improvement / 🔴 Ineffective

**Summary:** [2-3 sentences — what was audited, overall conclusion, most significant finding]

| Finding category | High | Medium | Low | Total |
|-----------------|------|--------|-----|-------|
| Financial controls | [N] | [N] | [N] | |
| Access controls | [N] | [N] | [N] | |
| Compliance | [N] | [N] | [N] | |
| **Total** | **[N]** | **[N]** | **[N]** | **[N]** |

**High-priority items requiring immediate attention:**
- [F001] [One-line description] — Owner: [Name] — Due: [Date]
- [F002] [One-line description] — Owner: [Name] — Due: [Date]

**No decision required from Matt Mathison** / **Decision required: [What decision]**

---

## Scope and Objectives

**Audit objective:** [What this audit was designed to test]
**Scope:** [Specific systems, transaction populations, time periods]
**Excluded from scope:** [If any — and why]
**Testing methodology:** [Walkthrough / Sample / Full population / Configuration inspection]
**Standards applied:** [MBL Internal Audit Standard / HIPAA / COSO]

---

## Findings

### F001: [Finding Title]
**Risk rating:** 🔴 High | **Category:** [Financial / Access / Compliance / Operational]
**Control objective:** [What control should have prevented this]

**Condition (what we found):**
[Specific, evidenced description of what was observed. Include transaction IDs, dates, system names, and amounts where applicable.]

**Criteria (what should have happened):**
[The specific policy, procedure, or control requirement that was not met.]

**Cause (why it happened):**
[Root cause — system configuration, process gap, training gap, exception, design deficiency]

**Effect (risk if not corrected):**
[Specific consequence — financial loss, HIPAA violation, fraud risk, regulatory exposure]

**Evidence:**
- [Bill.com payment log, [Date], showing single approver for transaction #XXXX, $4,200]
- [Screenshot reference: Audit-F001-Evidence-1.png filed in SharePoint]

**Recommendation:**
[Specific, actionable recommendation — not general "improve controls" but "reconfigure Bill.com approval workflow to enforce dual approval for all payments above $1,000; test the configuration within 5 business days of change"]

**Management Response:**
> "We accept this finding. [Name] will reconfigure the Bill.com approval threshold by [Date]. The specific action: [steps]. Completion will be confirmed to Dr. Lewis by [Date]."
> — [CEO Name], [Date]

**Remediation due:** [Date] | **Verification:** Dr. Lewis re-test by [Date]

---

### F002: [Finding Title]
**Risk rating:** 🟡 Medium | **Category:** [Category]

[Same structure as F001]

---

## Findings Closed Since Last Audit

| Finding | Prior audit | Description | Closed date | Verified by |
|---------|------------|------------|-----------|-----------|
| F003 (prior) | AP Audit Q1 | Single approver on legal invoices | [Date] | Dr. Lewis — re-tested |

---

## Overall Assessment

**Strengths identified:**
- [Control that is operating effectively and worth noting — not just absence of problems]
- [Genuine positive finding — e.g., "100% of payroll changes in the test period had written authorization"]

**Systemic observations (not individual findings but patterns):**
- [If multiple findings share a root cause — e.g., "Three of four findings relate to access controls — a cross-cutting review of the access management lifecycle is recommended"]

**Year-over-year trend:**
- Prior year: [N] High, [N] Medium | Current year: [N] High, [N] Medium | **Trend:** [Improving / Stable / Deteriorating]

---

## Remediation Tracker (all open findings)

| Finding # | Description | Risk | Owner | Due date | Status | Verified |
|----------|------------|------|-------|---------|--------|---------|
| F001 | Bill.com dual approval bypass | 🔴 High | Controller | [Date] | In remediation | Pending |
| F002 | QuickBooks access review undocumented | 🟡 Medium | Dr. Lewis | [Date] | Not started | |
| [Prior F004] | | 🟡 Medium | | [Date] | Complete | ✅ [Date] |

---

## Audit Sign-Off

**Prepared by:** Dr. John Lewis
**Reviewed by:** [CEO Name] — [Date]
**Matt Mathison aware:** [Date] / N/A (no High findings)
**Next audit in this area:** [Date range / Per annual audit plan]
```

## Output Contract
- Every finding is evidenced, not asserted — "controls appear inadequate" is an assertion; "payment #2847 dated [Date] for $4,200 to [Vendor] shows only one approver in the Bill.com audit log; the dual approval threshold is set at $1,000" is an evidenced finding; Dr. Lewis cites specific transactions, system logs, dates, and amounts in every finding; a finding that cannot be independently verified from the cited evidence is not a finding
- Management response is specific and time-bound — "we will address this" is not a management response; "Controller will reconfigure the Bill.com approval workflow by [Date + 2 weeks]; confirmation email to Dr. Lewis upon completion" is a management response; the response names a person, a specific action, and a completion date; Dr. Lewis re-tests after the stated date to verify completion; an unverified "completed" management response is not a closed finding
- High findings go to CEO within 48 hours, report follows within 5 business days — Dr. Lewis communicates High findings to the CEO immediately upon confirmation, before the full report is drafted; the full audit report follows within 5 business days with the complete evidence; this ensures the CEO is not surprised by High findings in a formal report and can begin remediation immediately; Matt Mathison receives the full report within the same timeframe for any High finding
- The audit report is a permanent record — retained permanently; it is evidence that the internal audit function is operating (for HIPAA compliance, investor questions, lender diligence, potential buyers); the findings and management responses are preserved as-is even after remediation; the remediation tracker records the verified closure date; Dr. Lewis does not amend or delete findings after the report is issued; findings are closed by adding a verified closure entry to the tracker

## System Dependencies
- **Reads from:** rc-controls-tester (testing results and evidence); rc-audit-plan-builder (scope); prior audit reports (trend analysis); management responses (CEO); SharePoint (evidence files)
- **Writes to:** Internal audit report (SharePoint/RC/<Company>/InternalAudit/Reports/[Year]/); remediation tracker; CEO finding notification; Matt Mathison audit summary; annual audit findings log
- **HITL Required:** Dr. Lewis prepares report; CEO reviews findings and provides management responses; High findings to CEO within 48 hours; Matt Mathison receives full report for any High finding; Matt Mathison quarterly audit summary for all findings regardless of rating

## Test Cases
1. **Golden path:** AP audit report for Allevio → 3 controls tested; 2 pass; 1 High finding (single approval on 2 payments >$1K); overall rating: Needs Improvement; F001: payment #4412 ($3,200) and #4418 ($2,700) had single approver in Bill.com log (both approved by Controller only; CFO approval queue was misconfigured after CFO change); evidence: Bill.com audit log exports (filed in SharePoint as F001-Evidence-1 and F001-Evidence-2); cause: Bill.com approval workflow not updated after CFO role change; effect: 2 payments without required approval — fraud risk and SoD gap; recommendation: reconfigure CFO approval queue; test 10 additional payments to confirm scope; management response: Controller confirmed reconfiguration within 24 hours; Dr. Lewis re-tested 15 payments post-fix: all passed; finding closed; CEO briefed same day as finding; report distributed within 3 business days; Matt Mathison received report
2. **Edge case:** Audit finds a pattern across 3 different areas — all related to one root cause (offboarding checklist not followed when a manager left 6 months ago) → Systemic observation documented in Overall Assessment section: "Three findings (F002 access, F003 vendor W-9, F004 payroll authorization) share a common cause — the offboarding checklist was not followed when [Name] departed in [Month]; all findings could have been prevented by a completed offboarding checklist"; recommendation: redesign offboarding checklist (it-offboarding-deprovision) to be required, not advisory; add Dr. Lewis to offboarding notification for manager-level departures; cross-cutting observation highlighted in CEO summary and Matt Mathison report; individual findings rated on their own merits; systemic observation is additional intelligence
3. **Adversarial:** "The CEO wants to dispute the High finding — can we change the rating to Medium?" → Management can formally disagree with a finding and state their disagreement in the management response section; the finding rating is not changed based on management preference; if management believes the evidence does not support the finding, they must provide counter-evidence (e.g., "the second approver is documented in [system] which the auditor did not review — here is the evidence"); if the counter-evidence is valid, the finding is amended with explanation; if management simply disagrees without counter-evidence, the finding stands at High with a notation that management disagrees; the audit report is Dr. Lewis's professional conclusion, not a negotiated document; integrity of the audit function depends on this

## Audit Log
All audit reports retained permanently. Evidence files retained permanently. Management responses retained permanently. CEO and Matt Mathison notification records retained. Remediation verification records retained permanently.

## Deprecation
Retire when portfolio companies have formal internal audit functions with established reporting standards — with Dr. Lewis reviewing report quality and HIPAA-related findings for Allevio. Matt Mathison distribution for High findings is a permanent governance requirement regardless of who prepares reports.
