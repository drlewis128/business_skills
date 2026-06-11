---
name: it-onboarding-coordinator
description: "Coordinate IT setup for a new employee. Use when the user says 'IT onboarding', 'new employee IT setup', 'set up a new hire', 'IT new hire checklist', 'prepare for new employee', 'day one IT setup', or 'new hire technology setup'."
metadata:
  version: 1.0.0
  tier: it
  owner: Dr. John Lewis
argument-hint: "<employee-name> [--entity <name>] [--role <title>] [--start-date <date>] [--remote <yes|no>]"
---

# IT Onboarding Coordinator

Coordinate the IT setup for a new employee from hire notification to Day 1 readiness. A new employee who can't log in on Day 1 starts with a productivity deficit and a bad impression of the company. IT setup is not a Day 1 task — it's a Day -5 task.

## When to Use
- HR or hiring manager notifies IT of a new hire (trigger: as soon as hire is confirmed)
- Planning IT readiness for multiple new hires (growth phase)
- Reviewing IT onboarding process quality
- Remote employee start (additional coordination required)

## Day 1 Readiness Standard
By the time the new employee walks in (or logs on), they must be able to:
1. Log in to their computer with their credentials
2. Access their email
3. Access every system required for their role on Day 1
4. Reach IT support if anything isn't working

If any of these four are not ready on Day 1, IT onboarding has failed.

## Output Format

```markdown
# IT Onboarding Checklist — <Employee Name>
**Role:** <title> | **Department:** <dept> | **Entity:** <MBL entity>
**Start date:** <date> | **Remote:** Yes / No | **IT owner:** <name>

---

## Pre-Start Tasks (Complete by Day -5)

### Account Setup
- [ ] Microsoft 365 account created: <name>@<entity>.com
- [ ] Account added to correct Azure AD groups for role-based access
- [ ] MFA app enrollment email sent to personal email (for pre-start setup)
- [ ] Password set and temporary credentials prepared (to be given on Day 1)

### System Access (per role access matrix)
- [ ] Microsoft 365 — email, Teams, SharePoint (all employees)
- [ ] Monday.com — added to relevant boards for role
- [ ] GoHighLevel — if Sales/CS role
- [ ] QuickBooks — if Finance role (read or write per Finance approval)
- [ ] VPN — if remote or hybrid role
- [ ] [Any role-specific systems]

### Equipment
- [ ] Laptop identified (existing spare or procurement initiated)
- [ ] Laptop imaged with standard build (OS, required software, endpoint protection)
- [ ] Laptop MDM enrolled (Jamf / Intune)
- [ ] Laptop security configured (disk encryption, auto-lock, firewall)
- [ ] Any peripherals assigned (monitor, keyboard, headset if remote)

### Workspace (if office-based)
- [ ] Desk/workspace identified and equipped
- [ ] Network connectivity at workstation confirmed
- [ ] Monitor and peripherals set up and tested

### Remote Setup (if applicable)
- [ ] Laptop shipped with tracking — delivery confirmed by Day -2
- [ ] VPN access confirmed before start date
- [ ] Video conferencing setup and tested
- [ ] Home network requirements communicated

---

## Day 1 Verification

| Check | Status | Owner |
|-------|--------|-------|
| Employee can log in to laptop | [ ] | IT |
| Email accessible | [ ] | IT |
| MFA working | [ ] | IT |
| All role-required systems accessible | [ ] | IT + Manager |
| IT support contact given to employee | [ ] | IT |

---

## Day 1 IT Welcome Package (give to new employee)

1. Laptop + any accessories
2. IT support contact: [email/phone]
3. Password reset instructions
4. Link to IT help center / knowledge base
5. Note: "Call/Slack IT any time on Day 1 — that's what we're here for"

---

## Post-Start Follow-Up

- [ ] Day 3 check-in: Any IT issues? All systems working?
- [ ] Day 30 check-in: Any access requests? Anything missing?
```

## Output Contract
- All IT prep completed by Day -5 — not Day 1 morning
- Day 1 verification checklist completed before employee's first meeting
- Remote setups always include delivery confirmation and pre-start VPN test
- HITL required: IT Manager reviews setup for C-level hires; HR provides confirmed start date before IT starts provisioning

## System Dependencies
- **Reads from:** HR new hire notification (name, role, start date), access matrix
- **Writes to:** Nothing (checklist for IT execution)
- **HITL Required:** IT Manager reviews C-level onboarding setup; HR must confirm start date before account creation begins; any access requiring Finance approval (QuickBooks) routed to Finance

## Test Cases
1. **Golden path:** Sales hire starting Monday, notified Friday → account created Friday PM, laptop imaged over weekend, shipped to remote employee Thursday, VPN tested Friday before start, Day 1 all 4 checks passed
2. **Edge case:** Late hire notice (2 days before start) → prioritizes account creation and access first (completed same day), laptop may be a spare device, explains to manager what will be ready Day 1 vs. what may be ready Day 3-5
3. **Adversarial:** New hire arrives with no IT setup done ("HR forgot to tell IT") → emergency triage: create account immediately, use spare laptop if available, IT stays with the employee until they can log in and access email; documents the process failure for HR workflow improvement

## Audit Log
IT onboarding records retained by employee and start date. Day 1 readiness outcomes documented. Process failures and root causes tracked.

## Deprecation
Retire when HR platform (Rippling, Workday, BambooHR) includes automated IT provisioning triggers, workflow integration with IT platforms, and Day 1 readiness tracking.
