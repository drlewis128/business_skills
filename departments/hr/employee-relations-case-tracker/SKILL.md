---
name: employee-relations-case-tracker
description: "Track employee relations cases including complaints, investigations, and resolution status. Use when the user says 'ER case', 'employee relations case', 'complaint tracker', 'HR complaint', 'workplace complaint', 'investigation tracker', 'harassment complaint', or 'employee issue'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--case-type <harassment|discrimination|conduct|wage|safety>] [--status <open|all>]"
---

# Employee Relations Case Tracker

Track employee relations cases from intake through resolution. ER cases not properly tracked and investigated create significant legal exposure — and unresolved cases fester into bigger problems.

## When to Use
- Any formal employee complaint is received
- Opening an investigation into a workplace matter
- Tracking resolution timeline (cases must be resolved promptly)
- Before an HR audit (demonstrate investigations are conducted properly)
- When a complaint could become a charge or litigation

## Case Types

| Type | Examples | Urgency |
|------|---------|---------|
| **Harassment / Hostile Environment** | Sexual harassment, bullying, unwanted contact | Immediate — investigate within 24-48 hours |
| **Discrimination** | Adverse action based on protected class | Immediate |
| **Retaliation** | Action against employee who engaged in protected activity | Immediate |
| **Workplace Violence / Safety** | Threats, physical altercations | Immediate — safety first |
| **Wage and Hour** | Unpaid overtime, misclassification, deductions | Within 5 business days |
| **Policy Violation** | Misconduct, attendance, performance | Standard (5-10 days) |
| **Interpersonal Conflict** | Team disputes, communication breakdowns | Within 2 weeks |

## Investigation Process

1. **Receive complaint** — Document exactly what was reported, by whom, and when
2. **Assess urgency** — Does this require immediate separation of parties?
3. **Plan investigation** — Who are the witnesses? What documents are needed?
4. **Conduct interviews** — Complainant, respondent, witnesses (in that order)
5. **Gather evidence** — Emails, texts, schedules, documents, HR records
6. **Analyze and conclude** — Supported / Not Supported / Inconclusive
7. **Determine action** — What remediation is warranted?
8. **Close and communicate** — Communicate outcome to parties (appropriately limited)
9. **Follow up** — Monitor for retaliation; ensure resolution holds

## Case Record Format

```yaml
case_id: ER-<YYYYMMDD>-<NNN>
entity: <entity>
case_type: <type>
complaint_date: <YYYY-MM-DD>
complainant: <name or "Anonymous">
respondent: <name>
hr_owner: <name>
attorney_involved: Yes | No | Pending
case_summary: |
  <Brief description of what was reported>
urgency: Immediate | High | Standard
investigation_status: Intake | Active | Concluded | Closed
interviews_completed: <list>
evidence_gathered: <list>
conclusion: Supported | Not Supported | Inconclusive | Pending
action_taken: <description>
closed_date: <YYYY-MM-DD>
follow_up_required: Yes | No
notes: <any notes>
```

## Output Format

```markdown
# ER Case Tracker — <Entity>
**Updated:** <date>

## Active Cases

| Case ID | Type | Date Opened | Respondent | Status | Days Open | Flags |
|---------|------|------------|-----------|--------|-----------|-------|
| ER-0001 | Harassment | <date> | <name> | Active Investigation | 8 | ⚠️ > 5 days |
| ER-0002 | Policy Violation | <date> | <name> | Concluded | 12 | — |

## Cases Requiring Immediate Action

### ER-<ID>: <Type> — Day <N> Open
**Summary:** <Brief description>
**Current status:** <status>
**Action needed:** <specific next step with deadline>

## Overdue Cases (> 30 days open, non-complex)
<List cases exceeding target resolution timeline>

## Closed Cases — This Quarter

| Case | Type | Conclusion | Action Taken | Days to Close |
|------|------|-----------|-------------|--------------|
| ER-0000 | Harassment | Supported | Warning issued | 14 days |

## Pattern Analysis
<If 2+ cases share a type, department, or respondent — flag for executive attention>
```

## Output Contract
- Harassment/safety cases always marked Immediate — no exceptions
- Every case has a named HR owner
- Cases > 30 days open flagged for review
- Patterns (same department, same respondent) always surfaced to Dr. Lewis
- HITL required: All investigations require HR lead; legal counsel involved for harassment, discrimination, or cases with litigation risk

## System Dependencies
- **Reads from:** Complaint intake notes (provided)
- **Writes to:** Case log (with HITL)
- **HITL Required:** Dr. Lewis receives weekly ER case status; legal counsel for all harassment and discrimination cases; Matt Mathison informed of any case with enterprise-level exposure

## Test Cases
1. **Golden path:** Harassment complaint received → immediate case opened, separation protocol noted, investigation plan within 24 hours
2. **Edge case:** Anonymous complaint → case opened without named complainant, documents limits on investigation, proceeds with available information
3. **Adversarial:** Request to not document a complaint informally → refuses, explains that undocumented complaints create liability when escalated, opens case with "informal complaint" classification

## Audit Log
All ER cases retained permanently. Investigation files (interviews, evidence) retained securely in HR legal files.

## Deprecation
Retire when HR case management platform (HR Acuity, Navex) provides ER case tracking with investigation workflow and attorney collaboration.
