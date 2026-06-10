---
name: employee-offboarding-checklist
description: "Run the employee offboarding checklist to ensure a complete, compliant separation. Use when the user says 'employee offboarding', 'offboarding checklist', 'someone is leaving', 'employee separation', 'exit process', 'how do we offboard X', or 'termination checklist'."
metadata:
  version: 1.0.0
  tier: operations
  owner: Dr. John Lewis
argument-hint: "<employee-name-or-id> [--type <voluntary|involuntary>] [--last-day <YYYY-MM-DD>]"
---

# Employee Offboarding Checklist

Ensure complete, compliant, and secure employee separation — voluntary or involuntary. A missed offboarding step is a security, financial, or legal risk.

## When to Use
- When any employee gives notice or is terminated
- For contractor offboarding (scaled checklist)
- When a role is eliminated (RIF — reduction in force)
- Annual audit of offboarding completeness

## Offboarding Timeline

### Same Day as Departure Notification (Involuntary) or Day 1 After Notice (Voluntary)
- [ ] HR notified
- [ ] Manager briefed on offboarding plan
- [ ] IT access review initiated (timeline set for cutoff)
- [ ] Payroll notified (final pay calculation)

### During Notice Period (Voluntary) or Immediately (Involuntary)
- [ ] Knowledge transfer plan created (who takes over what)
- [ ] Systems access review (what access do they have?)
- [ ] Client / LP relationship transitions identified
- [ ] Files/documents moved to shared repository (not personal folders)

### Last Day — Access Revocation
**This is the most security-critical step.**
- [ ] Email access revoked (or set to auto-forward and monitor)
- [ ] Microsoft 365 license revoked
- [ ] QuickBooks / Bill.com access removed
- [ ] Monday.com access removed
- [ ] CRM (GoHighLevel) access removed
- [ ] All other SaaS tools access removed (check `software-license-tracker`)
- [ ] VPN / network access removed
- [ ] Physical access revoked (key card, office access)
- [ ] Company devices retrieved (laptop, phone, peripherals)
- [ ] Security certificates / MFA tokens deprovisioned

### Financial Closeout
- [ ] Final paycheck calculated (through last day + unused PTO if required by state)
- [ ] Benefits termination notice sent
- [ ] COBRA notification (if applicable — required within 14 days of coverage loss)
- [ ] 401k / retirement plan notification
- [ ] Expense reports reconciled and paid / recovered
- [ ] Company credit cards canceled

### Administrative
- [ ] Separation agreement signed (if applicable)
- [ ] Non-compete / non-solicitation confirmation (review terms)
- [ ] Reference policy communicated to former employee
- [ ] HR file finalized and secured
- [ ] Exit interview conducted (voluntary separations)

### Post-Departure (30 days after)
- [ ] Email auto-reply removed or inbox archived
- [ ] License recovered and reassigned or cancelled
- [ ] Audit log reviewed for their final-days activity (`audit-log-reviewer`)

## Output Format

```markdown
# Offboarding Checklist — <Employee Name>
**Type:** Voluntary / Involuntary | **Last Day:** <date> | **Role:** <title>
**Entity:** <entity> | **HR Owner:** <name> | **IT Owner:** <name>

## Critical — Same Day Actions
- [x] HR notified
- [ ] IT access review initiated — **ACTION REQUIRED**

## Access Revocation (Complete by Last Day)
| System | Access Level | Status | Completed By |
|--------|-------------|--------|-------------|
| Microsoft 365 | Full | ⚠️ Pending | IT — last day |
| QuickBooks | Read/Write | ⚠️ Pending | Finance — last day |
| Bill.com | Approver | ⚠️ Pending | Finance — last day |

## Financial Items
[checklist]

## Knowledge Transfer
| Topic | Knowledge Holder (Departing) | Receiving Owner | Transfer By |
|-------|---------------------------|----------------|------------|
| AP vendor relationships | <name> | Finance team | Jun 14 |

## Status: <N>/<total> complete | Outstanding: <N> critical items
```

## Output Contract
- Access revocation items always flagged separately as highest priority
- COBRA notification deadline always calculated and surfaced
- Post-departure audit log review always included (security standard)
- CONFIDENTIAL — offboarding data visible to HR and Tier 1 only
- HITL required before access revocation for sensitive system access

## System Dependencies
- **Reads from:** Employee record, systems access list (from `software-license-tracker`), payroll system
- **Writes to:** Nothing (checklist output for HR and IT to execute)
- **HITL Required:** HR lead and IT lead coordinate access revocation; Finance approves final pay

## Test Cases
1. **Golden path:** Voluntary resignation, 2-week notice → structured plan with access cutoff on last day, knowledge transfer during notice
2. **Edge case:** Involuntary termination, same-day departure → compressed checklist with access revocation in first hour, device collection on-site
3. **Adversarial:** Employee has system admin access to financial systems → flags elevated-privilege access as high priority, recommends immediate revocation regardless of notice type

## Audit Log
Offboarding checklists retained as HR and security records. Access revocation dates documented by system.

## Deprecation
Retire when HRIS automates offboarding workflows with system-integrated access revocation triggers.
