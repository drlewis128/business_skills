---
name: i9-verification-tracker
description: "Track I-9 employment eligibility verification status and re-verification deadlines. Use when the user says 'I-9', 'I-9 tracker', 'work authorization', 'I-9 audit', 'I-9 reverification', 'employment eligibility', 'I9 compliance', or 'work authorization expiry'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <name>] [--scope <new-hires|reverification|audit>]"
---

# I-9 Verification Tracker

Track I-9 employment eligibility verification compliance for all employees. I-9 violations carry fines of $281–$2,789 per form error (first offense) and up to $27,894 per knowing violation. ICE audits can happen without warning.

## When to Use
- Tracking new hire I-9 completion (Section 1 by Day 1, Section 2 within 3 days)
- Monitoring upcoming work authorization expiration dates (re-verification required)
- Annual I-9 self-audit (before an ICE audit finds the problems)
- Post-acquisition (inherited employees may have missing or incomplete I-9s)
- Purging expired I-9s per retention schedule

## I-9 Key Rules

### Timing Requirements
| Section | Who Completes | Deadline |
|---------|-------------|---------|
| Section 1 | Employee | No later than Day 1 of employment |
| Section 2 | Employer | Within 3 business days of start date |
| Section 3 (re-verification) | Employer | Before work authorization expiry |

### Document Inspection Rules
- Must physically examine original documents (not photocopies)
- E-Verify: required for federal contractors, some states, and optional for others
- Remote hire exception: use authorized representative or E-Verify Remote I-9

### Re-Verification Required For
- Any work authorization document that has an expiration date
- List A documents with expiry: EAD (Employment Authorization Document), foreign passport with I-94
- **Never re-verify:** US Passport, Permanent Resident Card (Green Card), Social Security Card — these do not expire for I-9 purposes

### Retention Requirements
Retain I-9 for whichever is later:
- 3 years after date of hire, OR
- 1 year after termination date

Example: Hired Jan 1, 2023, terminated Jan 1, 2025 → retain until Jan 1, 2026 (1 year post-termination).

## Common I-9 Errors
| Error | Fine Risk |
|-------|----------|
| Section 1 not completed by Day 1 | Substantive violation |
| Section 2 completed after 3-day window | Substantive violation |
| Missing Section 2 employer certification | Substantive violation |
| Accepted expired document | Technical violation |
| Re-verification not done on expired authorization | Knowing violation risk |
| Unacceptable documents (notarized copies, etc.) | Substantive violation |

## I-9 Tracker Format

```yaml
employee: <name>
entity: <entity>
hire_date: <YYYY-MM-DD>
section_1_complete: Yes | No
section_1_date: <YYYY-MM-DD>
section_2_complete: Yes | No
section_2_date: <YYYY-MM-DD>
within_3_day_window: Yes | No | Late
work_auth_type: US Citizen | LPR | EAD | H-1B | Other
work_auth_expiry: <YYYY-MM-DD> | N/A
reverification_due: <YYYY-MM-DD> | N/A
reverification_complete: Yes | No | N/A
e_verify_case: <case number> | N/A
retention_purge_date: <YYYY-MM-DD>
notes: <any notes>
```

## Output Format

```markdown
# I-9 Compliance Tracker — <Entity>
**Updated:** <date> | **Total Employees:** <N>

## Compliance Status

| Status | Count |
|--------|-------|
| ✅ Complete and compliant | <N> |
| ⚠️ Re-verification due within 90 days | <N> |
| 🔴 Re-verification overdue | <N> |
| ❌ Incomplete / missing | <N> |

## URGENT — Overdue Re-Verification

| Employee | Work Auth Type | Expiry Date | Days Overdue | Action |
|---------|--------------|------------|-------------|--------|
| <Name> | EAD | <date> | <N> | Immediate re-verification required |

## Re-Verification Due in Next 90 Days

| Employee | Work Auth Type | Expiry Date | Days Until Due |
|---------|--------------|------------|---------------|
| <Name> | H-1B | <date> | 45 days |

## Incomplete / Missing I-9s — Immediate Audit Risk

| Employee | Issue | Hire Date | Action |
|---------|-------|----------|--------|
| <Name> | Section 2 missing | <date> | HR to investigate and remediate |

## Purge Schedule — Terminated Employees
Ready to purge (retention period elapsed):
- <Name> (terminated <date>, purge eligible <date>)

## Self-Audit Findings
<If audit mode requested — list technical errors found and recommended remediations>
```

## Output Contract
- Overdue re-verifications always surfaced at top — these are active violations
- Missing I-9s always flagged as critical — ICE audit would cite these immediately
- Never advise backdating or falsifying dates — document accurately and note remediation
- HITL required: HR lead reviews all findings; legal counsel for any missing I-9s or significant violations

## System Dependencies
- **Reads from:** Employee I-9 records, work authorization data (provided)
- **Writes to:** Nothing (tracker for HR action)
- **HITL Required:** HR lead reviews all compliance gaps; legal counsel before any ICE audit response

## Test Cases
1. **Golden path:** 30-employee audit → 2 re-verifications due in 60 days, 1 missing Section 2, all flagged with action items
2. **Edge case:** Employee presents document with expiration that never actually requires re-verification (US passport) → correctly identifies as no re-verification needed, documents in tracker
3. **Adversarial:** Request to backdate a Section 2 completion date that was late → refuses, explains that falsifying I-9 is a federal crime, recommends completing with current date and adding a notation

## Audit Log
I-9 compliance tracker retained per I-9 retention requirements. Audit records retained permanently.

## Deprecation
Retire when HRIS includes I-9 management with E-Verify integration, document expiry alerts, and retention scheduling.
