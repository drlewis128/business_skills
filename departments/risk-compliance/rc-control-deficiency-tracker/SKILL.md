---
name: rc-control-deficiency-tracker
description: "Track control deficiencies from open finding to verified remediation. Use when the user says 'control deficiency', 'track audit findings', 'findings tracker', 'material weakness', 'significant deficiency', 'remediation tracking', 'audit finding status', 'open findings', 'remediation plan', 'finding closure', 'control gap tracker', 'how many open audit findings', 'what findings are still open', or 'overdue remediation'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--status <open|overdue|all>] [--severity <high|medium|low|all>]"
---

# Control Deficiency Tracker

Track all control deficiencies from identification through verified remediation — ensuring that audit findings do not get documented and forgotten, that remediation deadlines are met, and that the portfolio's control environment is measurably improving over time. A finding tracker is the operational backbone of the internal audit function: it converts one-time audit reports into a living improvement program. Without it, High findings from prior quarters resurface the same way in the next audit cycle because nothing was verifiably fixed.

## When to Use
- Checking the status of all open audit findings across the portfolio
- A finding's remediation deadline is approaching or has passed
- Management claims a finding has been remediated — verify before closing
- Matt Mathison quarterly audit summary — what findings are open?
- Annual review — is the control environment improving year-over-year?
- A new finding has been issued from an audit report — add it to the tracker

## Control Deficiency Framework

```
Deficiency classification:
  Material Weakness: A deficiency, or combination of deficiencies, in internal control such that there is a reasonable possibility that a material misstatement of the financial statements will not be prevented, or detected and corrected, on a timely basis
    → At MBL portfolio scale: High + widespread (multiple transactions/instances) + financial reporting impact
    → Response: CEO and Matt Mathison notified immediately; attorney review; remediation plan within 2 weeks; verified within 30 days
    → Example: Payroll processing with no authorization controls and 5 unauthorized changes found
    
  Significant Deficiency: A deficiency, or combination of deficiencies, less severe than a material weakness but important enough to merit attention
    → At MBL portfolio scale: High finding with limited scope OR multiple Medium findings with common root cause
    → Response: CEO notified within 48 hours; Matt Mathison in quarterly report; remediation plan within 2 weeks; 30-day deadline
    → Example: 2 AP payments without dual approval in a sample of 15 (not system-wide but significant)
    
  Control Deficiency: A deficiency where the design or operation of a control does not allow management or employees to prevent or detect and correct misstatements on a timely basis
    → At MBL portfolio scale: Individual Medium or Low findings
    → Response: Management notified; remediation plan within 5 business days; 90-day deadline (Medium) or 180-day (Low)
    
Remediation lifecycle:
  1. Finding issued → Added to tracker within 24 hours of report distribution
  2. Management response received → Remediation plan documented with specific action, owner, due date
  3. Remediation in progress → Status updates from owner on milestone completion
  4. Remediation complete (management claim) → Dr. Lewis verification test scheduled
  5. Verification test completed → Finding closed with test results documented OR re-opened with escalation
  
Escalation protocol:
  High finding, remediation not started within 5 business days of finding → Escalate to CEO
  High finding, not remediated by due date → Escalate to CEO + Matt Mathison
  Medium finding, not remediated by due date → Escalate to CEO
  Low finding, overdue → Notify management; add to next audit cycle
  Any finding re-opened after management claimed completion → Escalate to CEO; document false closure
```

## Output Format

```markdown
# Control Deficiency Tracker — <Entity or Portfolio>
**Date:** [Date] | **Maintained by:** Dr. John Lewis
**Period:** [Date range or "Current"]

---

## Portfolio Summary

| Entity | High open | Medium open | Low open | Overdue (any) | Last audit |
|--------|----------|------------|---------|--------------|---------|
| MBL Holdings | [N] | [N] | [N] | [N] | [Date] |
| Allevio | [N] | [N] | [N] | [N] | [Date] |
| HIVE Partners | [N] | [N] | [N] | [N] | [Date] |
| **Total** | **[N]** | **[N]** | **[N]** | **[N]** | |

---

## Open Findings — High (Immediate Action Required)

| ID | Entity | Finding | Classification | Source | Issued | Due | Owner | Status | Days open |
|----|--------|---------|--------------|--------|--------|-----|-------|--------|----------|
| F001 | Allevio | Bill.com dual approval bypass — 2 payments | Significant Deficiency | AP Audit | [Date] | [Date] | Controller | In remediation | [N] |
| F003 | HIVE | Terminated employee AdvancedMD access (45 days) | Significant Deficiency | Access Audit | [Date] | [Date+30] | Dr. Lewis | Resolved — pending verification | [N] |

---

## Open Findings — Medium (90-Day Remediation)

| ID | Entity | Finding | Source | Issued | Due | Owner | Status | Days open |
|----|--------|---------|--------|--------|-----|-------|--------|----------|
| F002 | MBL | QuickBooks access review not documented | SOX-Lite | [Date] | [Date+90] | Dr. Lewis | Not started | [N] |
| F005 | Allevio | 2 vendor W-9s missing | AP Audit | [Date] | [Date+90] | Controller | In progress | [N] |

---

## Overdue Findings

| ID | Entity | Finding | Severity | Due date | Days overdue | Owner | Escalation status |
|----|--------|---------|---------|---------|-------------|-------|-----------------|
| F007 | Allevio | HIPAA training log not current | Medium | [Date] | [N] | Compliance coord | Escalated to CEO [Date] |

---

## Closed Findings (Last 90 Days)

| ID | Entity | Finding | Severity | Closed date | Verification | Verified by |
|----|--------|---------|---------|------------|------------|-----------|
| F004 | MBL | Legal invoice single approval | High | [Date] | Re-tested 15 payments — all passed | Dr. Lewis |
| F006 | Allevio | Shared AdvancedMD login | High | [Date] | Account deleted; audit log clean | Dr. Lewis |

---

## Remediation Quality Metrics

| Metric | Q[N] | Q[N-1] | Trend |
|--------|------|--------|-------|
| High findings — % remediated on time | [X]% | [X]% | ↑/↓ |
| Medium findings — % remediated on time | [X]% | [X]% | ↑/↓ |
| Findings re-opened after management closure claim | [N] | [N] | |
| Average days to close — High | [N] | [N] | |
| Average days to close — Medium | [N] | [N] | |
| Total open findings (end of quarter) | [N] | [N] | ↑/↓ |

**Control environment trend:** [Improving — open findings declining / Stable / Deteriorating — open findings increasing or recurring]

---

## Matt Mathison Quarterly Summary

Portfolio control deficiencies Q[N] [YYYY]: High open: [N] (all within remediation timeline: ✅ / overdue: ⚠️ [N]). Medium open: [N]. Key findings: [Most significant 1-2]. Closed this quarter: [N]. Control environment trend: [Improving / Stable / Deteriorating]. No action required / Action required: [What].
```

## Output Contract
- A finding is not closed until Dr. Lewis has independently verified the remediation — management saying "we fixed it" is a remediation claim, not a closed finding; Dr. Lewis re-tests the specific control that failed; for a Bill.com approval bypass, re-testing means pulling 10-15 payments after the configuration change and confirming dual approval is present; for a terminated employee access finding, re-testing means checking the specific account in the specific system; the verification result is documented; if the control is still failing, the finding is re-opened and escalated; no finding is ever closed on management assertion alone
- Overdue findings are escalated, not extended — a finding that reaches its due date without remediation is not given a new due date; it is escalated immediately to the CEO (for High and Medium) or added to the next audit cycle (for Low); the escalation is documented in the tracker; if the CEO wants to authorize an extension with documented justification, that is a CEO decision that is noted in the tracker; Dr. Lewis does not unilaterally extend remediation deadlines; doing so removes accountability from the remediation commitment
- Recurring findings are the most important signal — if the same control fails in three consecutive audit cycles, the finding is not a control gap, it is a control environment failure; recurring findings are elevated to Significant Deficiency classification regardless of their individual ratings; the root cause investigation is required; Dr. Lewis flags recurring findings explicitly in the Matt Mathison quarterly summary; a control that has failed three times without resolution requires a structural change (not just a remediation plan)
- HITL required: Dr. Lewis manages tracker and conducts all verification tests; High findings to CEO within 48 hours; overdue High findings escalated to CEO + Matt Mathison; all findings in Matt Mathison quarterly summary; material weakness findings: CEO + Matt Mathison + attorney immediately; findings at Allevio with HIPAA implications: Dr. Lewis escalates same day

## System Dependencies
- **Reads from:** rc-internal-audit-report (all findings), rc-controls-tester (verification test results), management responses (CEO email/SharePoint), remediation status updates from owners
- **Writes to:** Control deficiency tracker (SharePoint/RC/<Company>/InternalAudit/FindingsTracker/); Matt Mathison quarterly audit summary; CEO escalation notifications; annual control environment trend report
- **HITL Required:** Dr. Lewis manages tracker; all verification tests by Dr. Lewis; High overdue findings to CEO + Matt Mathison; material weakness: CEO + Matt Mathison + attorney; HIPAA-implicated findings at Allevio: same-day escalation

## Test Cases
1. **Golden path:** Quarter-end tracker review for the portfolio → Pull all open findings; MBL Holdings: 0 High, 2 Medium (QuickBooks access review - in progress, 45 days open; vendor onboarding checklist - not started, 20 days open); Allevio: 1 High (billing audit finding - in remediation per Controller; Dr. Lewis schedules re-test for next week), 3 Medium (all within timeline); HIVE: 0 open; No overdue findings; Closed this quarter: 4 findings (2 High verified, 2 Medium verified); Control environment trend: Improving — 6 fewer open findings vs. prior quarter; Matt Mathison quarterly summary sent; no escalations required
2. **Edge case:** Management claims a High finding (terminated employee system access) is remediated, but Dr. Lewis re-test finds the account is "disabled" not "deleted" and can be re-enabled by any admin → Finding re-opened; the "disabled" state partially remediates the risk (prevents current login) but does not fully close the finding (admin can re-enable the account, restoring access); Dr. Lewis documents the re-test result: "Account in 'disabled' state; not deleted; admin can re-enable; finding re-opened; requirement: account must be deleted or transferred to a licensed but non-active state that requires IT admin approval with documented justification to restore"; re-opened finding escalated to CEO since management claimed completion but control is still not fully effective; remediation deadline: 5 business days to delete account; lesson: deletion ≠ disablement in access testing
3. **Adversarial:** "Let's just mark all the Medium findings as Low — they're not really that significant" → Finding ratings are based on potential impact, not preference; reclassifying findings to reduce their apparent severity is a governance failure; if management believes a finding has been incorrectly rated, the correct process is a formal disagreement in the management response with supporting rationale; the finding stays at the auditor-assessed rating unless Dr. Lewis revises it based on the counter-evidence; fabricating lower ratings makes the tracker meaningless as a risk management tool and creates a false picture for Matt Mathison; THRIVE filter: Truth — findings are rated at actual risk level, not preferred level

## Audit Log
Finding tracker maintained in SharePoint with version history preserved. All finding entries retained permanently with timestamps. Verification test results retained permanently. Escalation notifications retained. Management responses retained. Remediation closure documentation retained permanently.

## Deprecation
Retire when portfolio companies have formal internal audit functions with deficiency tracking in a GRC platform (AuditBoard, Workiva, or similar) — with Dr. Lewis reviewing the tracker for HIPAA and financial controls findings quarterly.
