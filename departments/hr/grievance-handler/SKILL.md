---
name: grievance-handler
description: "Process and track employee grievances through resolution. Use when the user says 'employee grievance', 'grievance process', 'employee complaint process', 'formal complaint', 'how to handle a grievance', 'open door policy', 'grievance resolution', or 'employee dispute'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "<grievance-type> [--entity <name>] [--urgency <immediate|standard>]"
---

# Grievance Handler

Process employee grievances through a structured, fair, and documented resolution process. Every employee complaint deserves a response — leaving grievances unaddressed escalates them into ER cases, charges, or litigation.

## When to Use
- Employee files a formal complaint or grievance
- Employee raises a concern through the open door policy
- Employee disagrees with a disciplinary action or policy application
- Wage dispute or leave dispute
- Before a grievance escalates to an EEOC charge or DOL complaint

## Grievance Types

| Type | Examples | Urgency |
|------|---------|---------|
| **Harassment / Hostile Environment** | Sexual harassment, bullying, hostile behavior | Immediate — see `employee-relations-case-tracker` |
| **Discrimination** | Adverse action on protected class basis | Immediate — see `employee-relations-case-tracker` |
| **Wage / Pay** | Underpayment, OT not paid, unauthorized deductions | 5 business days |
| **Policy Application** | Discipline they disagree with, leave denial | 10 business days |
| **Interpersonal** | Conflict with coworker or manager | 10 business days |
| **Working Conditions** | Safety concern, remote work dispute, scheduling | Depends on safety urgency |
| **Accommodation** | ADA, religious accommodation denied or delayed | 5 business days — ADA has prompt action requirement |

## Grievance Process

### Step 1: Receive and Acknowledge
- Acknowledge receipt within 24-48 hours (in writing)
- Confirm you've received it and explain what happens next
- Do NOT dismiss or minimize — take all grievances seriously

### Step 2: Triage
- Is this a harassment/discrimination complaint? → Escalate to `employee-relations-case-tracker`
- Does this require immediate action (safety, wage violation)? → Act before investigation
- Who should be the neutral investigator? (Not the respondent's direct manager)

### Step 3: Investigation / Review
- Gather relevant facts (documents, records, witness statements)
- Interview the grievant to understand the full complaint
- Review any relevant policies
- Interview the respondent or manager involved

### Step 4: Decision
- Is the grievance substantiated? (Yes / Partially / No)
- What is the appropriate remedy?
- Is any policy change warranted?

### Step 5: Communicate
- Communicate the outcome to the grievant (in writing)
- Communicate what action was taken (without violating other employee privacy)
- Communicate the appeals process (if applicable)

### Step 6: Monitor
- Follow up in 30 days: Did the issue resolve? Any retaliation?

## Grievance Record Format

```yaml
grievance_id: GR-<YYYYMMDD>-<NNN>
entity: <entity>
grievant: <name>
respondent: <name or "Policy/Process">
grievance_type: <type>
date_received: <YYYY-MM-DD>
date_acknowledged: <YYYY-MM-DD>
investigator: <name>
current_status: Received | Under Review | Decision Pending | Closed
decision: Substantiated | Partially Substantiated | Not Substantiated | Pending
remedy: <description>
closed_date: <YYYY-MM-DD>
grievant_notified: Yes | No
appeal_requested: Yes | No
notes: <any notes>
```

## Output Format

```markdown
# Grievance — GR-<ID>
**Entity:** <entity> | **Date Received:** <date>
**Grievant:** <name> | **Respondent:** <name / "Policy">
**Type:** <type> | **Urgency:** <urgency>

## Grievance Summary
<What the employee alleged or complained about — in their words, accurately captured>

## Status: <status>

## Investigation Plan
1. <Step with owner and deadline>
2. <Step>

## Decision (when complete)
**Outcome:** Substantiated / Partially Substantiated / Not Substantiated
**Remedy:** <what action was taken>
**Communicated to grievant:** Yes / No — <date>

## 30-Day Follow-Up
**Scheduled:** <date>
**Status:** <any follow-up notes>
```

## Output Contract
- Every grievance acknowledged within 48 hours — silence communicates indifference
- Harassment/discrimination always escalated to formal ER process — never handled as "just a grievance"
- Retaliation monitoring always includes 30-day follow-up after resolution
- HITL required: HR lead owns all grievances; legal review for wage complaints and accommodation grievances

## System Dependencies
- **Reads from:** Grievance details (provided), relevant policies and records
- **Writes to:** Grievance log (with HITL)
- **HITL Required:** HR lead reviews all decisions before communicating to grievant; Dr. Lewis informed of all substantiated grievances; legal counsel for accommodation denials and wage disputes

## Test Cases
1. **Golden path:** Employee grieves a written warning they believe was unfair → structured review of the disciplinary documentation, decision in 10 days, outcome communicated in writing
2. **Edge case:** Anonymous grievance about a manager's behavior → documents as anonymous, investigates without revealing source, limits investigation scope to what's possible without a named complainant
3. **Adversarial:** Request to dismiss a grievance as "unfounded" without investigation → refuses, requires at minimum a fact-gathering review before any decision is made

## Audit Log
All grievances retained permanently. Decision and remedy documentation retained in HR legal files.

## Deprecation
Retire when ER case management platform handles grievance tracking with structured workflow, timelines, and audit trail.
