---
name: hr-offboarding-manager
description: "Manage employee separations and offboarding for MBL Partners portfolio companies. Use when the user says 'employee offboarding', 'employee is leaving', 'resignation', 'someone resigned', 'voluntary resignation', 'involuntary termination', 'termination', 'let someone go', 'employee departure', 'separation', 'offboarding checklist', 'last day checklist', 'final paycheck', 'access revocation', 'equipment return', 'severance', 'COBRA notification', 'exit process', 'knowledge handoff', 'offboard the employee', 'employee exit', 'off board', 'how to handle a resignation', or 'departure process'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--employee <name>] [--entity <mbl|allevio|hive|column6>] [--type <voluntary|involuntary>] [--last-day <YYYY-MM-DD>] [--action <checklist|final-pay|access|severance>]"
---

# HR Offboarding Manager

Manage employee separations — voluntary resignations and involuntary terminations — ensuring proper knowledge transfer, final pay compliance, benefits continuation notices, access revocation, and documentation. Separation is a legal event with time-sensitive obligations; the most common HR legal violations occur in offboarding (late final paychecks; unlawful deductions; missing COBRA notices); Dr. Lewis owns the offboarding process for all portfolio entity separations.

## When to Use
- An employee resigns or is being terminated
- A last day is confirmed and separation checklist needs to be executed
- Final paycheck timing and amount need to be determined
- Benefits continuation and COBRA need to be triggered

## Offboarding Framework

```
VOLUNTARY RESIGNATION:
  
  RECEIPT OF RESIGNATION:
    Acknowledge receipt in writing within 24 hours (email)
    Confirm last day (may or may not accept 2-week notice — CEO decision)
    Determine: is the employee in a sensitive role with access to confidential data?
      If yes: Dr. Lewis decides whether to accept notice period or pay through last day and end access now
    
  DURING NOTICE PERIOD:
    Knowledge transfer plan activated (hr-knowledge-transfer)
    Transition meetings scheduled with key stakeholders
    Client/customer communication plan (for client-facing roles)
    Exit interview scheduled for last week (hr-exit-interview)

INVOLUNTARY TERMINATION:
  
  PRE-TERMINATION:
    Entity CEO + Dr. Lewis joint decision required before any termination
    Protected activity review: any recent complaint, leave request, or EEOC activity? 
      If yes: Dr. Lewis and legal counsel review timing before proceeding
    Documentation review: is there documentation supporting the termination?
      Performance-based: prior coaching conversations, PIPs, documented warnings
      Policy violation: documented incident
      Position elimination: business case documented (no personal performance reasons cited)
    Involuntary termination without adequate documentation = legal risk; Dr. Lewis pauses if not satisfied
    
  TERMINATION MEETING:
    Short, direct, respectful; no more than 15 minutes
    Attendees: entity CEO (or direct manager) + Dr. Lewis (or HR representative)
    Message: clear, specific reason; one conversation; no debate
    No sugarcoating: "We're ending your employment today" not "We're making some changes..."
    THRIVE — Truth: honest reason given; THRIVE — Respect: dignified termination meeting
    
FINAL PAYCHECK TIMING (legal deadlines):
  Arizona: final paycheck due within 7 days of termination
    Includes all accrued, unused PTO (if AZ Earned Paid Sick Time: must be paid out)
  Utah: final paycheck due within 24 hours of termination request, or within 7 days if no request
  Do NOT hold final paycheck for equipment return — illegal in AZ and UT
  Improper deductions from final paycheck = wage theft violation

BENEFITS CONTINUATION:
  COBRA notification: must be sent within 14 days of qualifying event (employer must notify COBRA
    administrator within 30 days; COBRA administrator has 14 days from that)
  ACA: does the departure affect entity's ACA large employer status? (50 FTE threshold)
  HSA: employee-owned; no action required
  401(k): document vesting status; provide SPD; rollover options communicated

ACCESS REVOCATION (before or on last day — never after):
  Rule: access is deprovisioned ON OR BEFORE last day (never day after)
  Microsoft 365 / email: disable on last day (after termination meeting for involuntary)
  GoHighLevel CRM: remove on last day
  QuickBooks: remove on last day (finance roles)
  Monday.com: remove on last day
  Allevio-specific (absolute rule):
    AdvancedMD and all PHI systems: access revoked at termination meeting (involuntary)
    or end of last day (voluntary) — PHI access by a departing employee = HIPAA breach risk
  Building access / key fob: collected at termination meeting (involuntary) or last day (voluntary)
  Passwords: entity password manager account deprovisioned
  
EQUIPMENT RETURN:
  All entity equipment returned on last day (or shipped within 5 business days if remote)
  Equipment return receipt signed by both parties
  Do NOT delay final paycheck pending equipment return (AZ/UT law)
  If equipment not returned: pursue through civil process, not paycheck deduction

SEVERANCE (case-by-case; not automatic):
  Severance is not legally required in AZ or UT
  Offered at entity CEO + Dr. Lewis discretion for: position eliminations; long-tenure departures;
    involuntary separations where risk of litigation is elevated
  Severance agreement includes release of claims (reviewed by legal counsel before presenting)
  ADEA (age 40+): 21-day consideration period + 7-day revocation right; document compliance
  VP+: Matt Mathison approves any severance offer
```

## Output Format

```markdown
# Offboarding Checklist — [Employee Name] | [Entity] — Last Day: [Date]
**Type:** Voluntary / Involuntary | **Role:** [Title] | **Completed by:** Dr. Lewis

---

## Pre-Departure
- [ ] Resignation acknowledged in writing (voluntary) / Termination meeting conducted (involuntary)
- [ ] Protected activity review complete (involuntary)
- [ ] Documentation reviewed (involuntary)
- [ ] Knowledge transfer plan activated
- [ ] Exit interview scheduled (voluntary)

---

## Final Paycheck
- **State:** AZ (7 days) / UT (24 hrs) | **Due date:** [Date]
- **Amount:** $[X] | **Includes accrued PTO:** Yes / No | **Method:** Direct deposit / Check
- [ ] Final paycheck issued by [Date]

---

## Access Revocation
- [ ] Microsoft 365 disabled: [Date/Time]
- [ ] GoHighLevel disabled: [Date]
- [ ] QuickBooks disabled (if applicable): [Date]
- [ ] AdvancedMD + PHI systems disabled: [Date/Time] (Allevio — must be on or before last day)
- [ ] Building access collected: [Date]

---

## Benefits Continuation
- [ ] COBRA notification triggered: [Date] (14-day employer clock starts today)
- [ ] 401(k) vesting status communicated: [Date]
- [ ] Final benefits summary sent: [Date]
```

## Output Contract
- Access is deprovisioned on or before the last day with no exceptions — a former employee with active Microsoft 365 access can read email, access SharePoint, and forward confidential data; a former Allevio employee with active AdvancedMD access is a HIPAA breach waiting to happen; Dr. Lewis has a zero-tolerance policy on post-separation system access; for involuntary terminations, access is disabled at the termination meeting; for voluntary, it is disabled at end of last business day; there is no grace period
- Final paycheck is issued within legal deadlines regardless of equipment status — AZ and UT prohibit withholding final pay for equipment non-return; attempting to hold the check until equipment is returned is a wage theft violation; Dr. Lewis issues the final check within the legal deadline and pursues equipment return separately; if the entity needs to recover equipment value, the process is a civil one, not a payroll one
- Involuntary terminations require entity CEO + Dr. Lewis joint decision before action — no manager terminates an employee without Dr. Lewis involvement; the protected activity review is non-negotiable before any involuntary separation; a manager who terminates an employee who filed a harassment complaint the prior week without Dr. Lewis review has created a retaliation claim; Dr. Lewis requires the protected activity review even when the termination appears completely unrelated
- HITL required: involuntary termination decision → entity CEO + Dr. Lewis; protected activity review → Dr. Lewis + legal if any flag; severance offer → Dr. Lewis + entity CEO; VP+ severance → Matt Mathison approves; COBRA trigger → Dr. Lewis confirms within required window; Allevio PHI access revocation → Dr. Lewis confirms before or at last day; age 40+ severance → Dr. Lewis confirms ADEA compliance

## System Dependencies
- **Reads from:** hr-termination-manager (if involuntary); hr-exit-interview (voluntary); hr-knowledge-transfer (transition plan); hr-pip-builder (performance documentation for involuntary); legal-employment-agreement-manager (severance and ADEA); HRIS (final pay calculation; PTO balance; tenure; vesting)
- **Writes to:** Offboarding checklist (SharePoint → HR → Separations → [Entity] → [Employee]); final paycheck record (payroll); COBRA trigger notification; HRIS termination record; access revocation confirmation records; severance agreement (if applicable); Dr. Lewis termination authorization record
- **HITL Required:** Involuntary termination → CEO + Dr. Lewis; protected activity review → Dr. Lewis + legal if flag; final paycheck → Dr. Lewis confirms timing; Allevio PHI access → Dr. Lewis confirms before last day; severance → CEO + Dr. Lewis; VP+ severance → Matt Mathison; ADEA 40+ → Dr. Lewis confirms compliance

## Test Cases
1. **Golden path:** Allevio Care Coordinator resigns with 2 weeks notice. Dr. Lewis: written acknowledgment sent within 24 hours; knowledge transfer plan activated (hr-knowledge-transfer); exit interview scheduled for last Friday; AdvancedMD access disabled at end of last day; Microsoft 365 disabled at 5 PM last day; final paycheck direct deposit includes 3 days accrued PTO (AZ Earned Sick Time); issued within 7 days; COBRA notification triggered; 401(k) vesting communicated. Clean separation.
2. **Edge case:** HIVE Lease Manager terminated for performance — filed an accommodation request 3 weeks prior → Dr. Lewis: "Stop. We need legal counsel before we proceed. A termination within 90 days of a protected accommodation request requires a clear record showing the termination decision is independent of the request. Let me pull the documentation history. We'll have a legal review call within 48 hours. No separation meeting until we have counsel's input."
3. **Adversarial:** Column6 CEO wants to hold an employee's final paycheck pending return of a company laptop → Dr. Lewis: "We cannot do that in Arizona. AZ law prohibits withholding wages for equipment non-return regardless of what the handbook says. I'll issue the check on time. For the laptop: I'm sending a demand letter for the equipment value within 5 business days. If not returned, we have a civil claim option. But the paycheck goes out on time."

## Audit Log
All offboarding checklists retained for 3 years. Final paycheck records retained (payroll audit). Protected activity review records retained permanently for involuntary terminations. COBRA notification records retained (6 years — ERISA requirement). Severance agreements retained permanently. Allevio PHI access revocation records retained (HIPAA audit). Access revocation timestamps retained.

## Deprecation
Final paycheck deadline calendar updated annually (AZ minimum wage updates January 1; UT law changes monitored). COBRA notification window reviewed when ERISA regulations change. Severance agreement templates reviewed by legal counsel annually.
