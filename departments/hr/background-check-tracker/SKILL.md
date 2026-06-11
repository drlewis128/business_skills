---
name: background-check-tracker
description: "Track background check status for candidates in the hiring pipeline. Use when the user says 'background check', 'BGC status', 'background check tracker', 'has background check cleared', 'pre-employment screening', or 'background check results'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--candidate <name>] [--entity <name>] [--check-type <standard|enhanced|clinical>]"
---

# Background Check Tracker

Track pre-employment background check status from initiation through clearance. Background checks that aren't actively tracked cause start-date delays and offer rescissions that damage candidate experience.

## When to Use
- After an offer letter is sent (conditional on background check)
- Monitoring multiple candidates in the pipeline simultaneously
- When a background check has a finding that requires review
- Confirming clearance before sending start-date confirmation

## Background Check Types

### Standard (Most Roles)
- Identity verification
- Criminal history (7-year lookback, jurisdiction-dependent)
- Employment verification (last 3-5 employers)
- Education verification (highest degree claimed)

### Enhanced (Financial Roles — Finance, Accounting, Treasury)
All standard + :
- Credit check (FCRA authorization required, role-related justification needed)
- Professional license verification
- Civil court records

### Clinical (Allevio Healthcare Roles)
All standard + :
- OIG exclusions check (Office of Inspector General)
- State medical board license verification
- DEA registration (if applicable)
- Malpractice history

## Background Check Process

1. **Initiate** — Send candidate authorization and disclosure form (FCRA required)
2. **Order** — Submit to background check vendor (e.g., Checkr, Sterling)
3. **Monitor** — Track status daily; flag delays > 5 business days
4. **Review** — If finding surfaces, follow adverse action process
5. **Clear / Decline** — Confirm clearance or begin adverse action
6. **Notify** — Send start-date confirmation once cleared

## Adverse Action Process (CRITICAL — FCRA Compliance)

If a finding could lead to non-hire:
1. Send **Pre-Adverse Action Notice** with a copy of the report and Summary of Rights
2. Wait minimum **5 business days** for candidate to respond or dispute
3. After 5 days, if decision unchanged: send **Final Adverse Action Notice**
4. **NEVER** skip this process — FCRA violations are civil liability

## Tracker Record Format

```yaml
candidate: <name>
role: <role title>
entity: <entity>
check_type: Standard | Enhanced | Clinical
vendor: <vendor name>
initiated_date: <YYYY-MM-DD>
authorization_received: Yes | No
current_status: Initiated | In Progress | Finding | Cleared | Adverse Action
findings: None | <description of finding>
adverse_action_started: <YYYY-MM-DD> or N/A
adverse_action_complete: <YYYY-MM-DD> or N/A
clearance_date: <YYYY-MM-DD> or Pending
start_date_confirmed: Yes | No
notes: <any notes>
```

## Output Format

```markdown
# Background Check Tracker
**Updated:** <date> | **Entity:** <entity>

## Active Checks

| Candidate | Role | Type | Status | Days In | Finding? | Action |
|---------|------|------|--------|---------|---------|--------|
| <Name> | <Role> | Standard | In Progress | 3 | No | Monitor |
| <Name> | <Role> | Clinical | ⚠️ Finding | 7 | OIG hit | Adverse action process |
| <Name> | <Role> | Enhanced | ✅ Cleared | 5 | No | Confirm start date |

## Action Required

### <Candidate Name> — Adverse Action Process Active
**Finding:** OIG exclusion record for provider license
**Pre-adverse sent:** <date>
**5-day window closes:** <date>
**Action:** Do not confirm start date until process complete and decision logged

## Cleared This Week — Confirm Start Dates
- <Name> (<role>) — cleared <date>. Send start date confirmation.

## Delayed Checks (> 5 Business Days — Escalate)
- <Name> — Day 8. Contact vendor for status.
```

## Output Contract
- Adverse action process always flagged with FCRA timeline — never skipped
- Clinical checks always include OIG exclusion verification
- Delays > 5 business days always flagged for vendor follow-up
- HITL required before any adverse action decision is communicated to candidates

## System Dependencies
- **Reads from:** Candidate list, background check vendor status (provided)
- **Writes to:** Nothing (tracking report for HR action)
- **HITL Required:** HR lead reviews all findings; legal review required before any adverse action is taken

## Test Cases
1. **Golden path:** 3 candidates in pipeline → tracker with status, 1 cleared with action item to confirm start date
2. **Edge case:** Finding on a healthcare role (OIG exclusion) → flags as disqualifying for clinical roles per Allevio compliance requirements, initiates adverse action process
3. **Adversarial:** Request to skip pre-adverse action notice to move faster → refuses, explains FCRA requirement and liability risk, provides exact process to follow

## Audit Log
Background check records retained per candidate per FCRA requirements. Adverse action documentation retained permanently.

## Deprecation
Retire when ATS integrates directly with background check vendor for automated status tracking and adverse action workflow.
