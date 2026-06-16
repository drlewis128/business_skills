---
name: hr-offboarding-manager
description: "Manage employee offboarding and separation. Use when the user says 'employee offboarding', 'employee departure', 'someone is leaving', 'employee resignation', 'terminate an employee', 'offboarding checklist', 'last day checklist', 'separating an employee', 'manage a departure', 'employee exit', 'revoke access', 'offboard', or 'final paycheck'."
metadata:
  version: 1.0.0
  tier: hr
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--employee <name>] [--type <voluntary|involuntary>] [--last-day <YYYY-MM-DD>]"
---

# HR Offboarding Manager

Manage employee offboarding for MBL portfolio companies — from resignation or termination notice through final paycheck, system access revocation, and knowledge transfer. Offboarding done poorly creates security risks (departed employee retains system access), legal risk (improper final pay), operational disruption (institutional knowledge walking out the door), and sometimes reputational damage (employees who leave badly become employer brand risks). Offboarding done well protects the company and preserves the relationship.

## When to Use
- An employee has given notice (voluntary departure)
- A termination decision has been made (involuntary departure)
- An employee's last day is approaching and logistics need to be confirmed
- A departed employee still has active system access (this is a critical security issue)
- Matt Mathison is informed of a key employee departure
- Allevio has a clinical employee departing (patient continuity + credential file)

## Offboarding Framework

```
Two departure types — different processes apply:

VOLUNTARY (employee resigns):
  - Standard notice period: 2 weeks (accept or release early)
  - Knowledge transfer: maximum priority — document what they know
  - Farewell: professional, positive — they may return or refer others
  - Exit interview: schedule before last day

INVOLUNTARY (company terminates):
  - Decision must be approved before communication: Dr. Lewis (non-executive); Matt Mathison (any executive)
  - Legal review: Dr. Lewis reviews before any termination conversation; attorney if PIP already in progress or discrimination claim risk
  - Same-day access revocation: revoke all system access on the day of termination, before or simultaneously with the conversation
  - Final pay: follows state law — some states require same-day; most require next regular pay date
  - Severance: not automatic; requires Dr. Lewis recommendation and Matt Mathison approval
  - Documentation: termination reason documented before the conversation — do not allow "performance reasons" without documented prior counseling

Critical security rule: For involuntary terminations, revoke email, VPN, and financial system 
access BEFORE or DURING the termination conversation — never after. A terminated employee 
with access can cause significant harm.
```

## Output Format

```markdown
# Employee Offboarding — <Name>
**Company:** <Entity> | **Role:** [Title]
**Departure type:** [Voluntary — resigned / Involuntary — terminated]
**Notice date:** [Date] | **Last day:** [Date]
**Offboarding coordinator:** Dr. John Lewis

---

## Security — Access Revocation (Priority 1)

| System | Revocation date | Revoked by | Confirmed |
|--------|----------------|-----------|---------|
| Microsoft 365 (email, Teams, SharePoint) | [Date] | IT | ✅ / 🔴 |
| QuickBooks | [Date] | Dr. Lewis | ✅ / 🔴 |
| Bill.com | [Date] | Dr. Lewis | ✅ / 🔴 |
| Payroll system | [Date] | Dr. Lewis / IT | ✅ / 🔴 |
| Bank portal | [Date] | Dr. Lewis | ✅ / 🔴 |
| [GoHighLevel / CRM] | [Date] | | ✅ / 🔴 |
| [Role-specific systems] | [Date] | | |
| Physical access / key card | [Date] | CEO / Manager | ✅ / 🔴 |
| Password manager (shared passwords) | [Date] | IT | ✅ / 🔴 |

**⚠️ Involuntary terminations: All financial system access (QuickBooks, Bill.com, bank portal) 
must be revoked on the termination date, before or simultaneously with the conversation. 
This is a security requirement, not a courtesy.**

**⚠️ Any shared passwords the employee had access to must be rotated after departure.**

---

## Knowledge Transfer (Voluntary — before last day)

| Area | Knowledge holder | Transfer target | Method | Deadline |
|------|----------------|----------------|--------|---------|
| [Close process documentation] | [Departing employee] | [Controller / Bookkeeper] | Written + walkthrough | 3 days before last day |
| [Vendor relationships] | | | | |
| [Client/patient contacts] | | | | |
| [In-progress projects] | | | | |
| [System configurations / passwords] | | | | |
| [Regular reporting obligations] | | | | |

**Critical knowledge transfer check:** What does only this person know that would stop the business if it walked out the door? That gets transferred first.

---

## HR and Payroll Tasks

| Task | Owner | Deadline | Status |
|------|-------|---------|--------|
| Resignation letter / termination documentation on file | Dr. Lewis | Immediately | |
| Last day confirmed and communicated to payroll | Dr. Lewis | 3 days before | |
| Final paycheck calculation (including PTO payout if required) | Dr. Lewis / Payroll | Per state law | |
| Benefits termination date set ([last day of month / last day of employment]) | Dr. Lewis / Benefits carrier | | |
| COBRA notice sent (within 14 days of coverage loss) | Dr. Lewis | Statutory | |
| 401(k) vesting confirmed and distribution options communicated | HR / Plan admin | Within 30 days | |
| Return of company equipment | Manager | Last day | ✅ / 🔴 |
| Return of company credit card / access cards | Manager | Last day | ✅ / 🔴 |

**Final paycheck — state law matters:**
| State | When final pay is due |
|-------|----------------------|
| California | Immediately on termination (involuntary); next regular payday (voluntary) |
| Arizona | Next regular payday |
| Utah | Next regular payday |
| [Other states] | Check state DOL — varies |

---

## Exit Interview (Voluntary Departures)

**Scheduled:** [Date — before last day] | **With:** Dr. Lewis
**Format:** [30-min conversation — not interrogation; learn, don't argue]

Questions:
1. What motivated you to start looking for a new opportunity?
2. What could we have done differently to keep you?
3. What did you find most valuable about working here?
4. What's one thing we should improve?
5. Would you consider returning to [Company] in the future?
6. Is there anyone here you'd like to recognize for their support?

**Exit interview data use:** Aggregated across departures for trend identification; 
individual exit interview content is confidential; themes shared with Matt Mathison 
quarterly; not used for retaliation of any kind.

---

## Involuntary Termination Checklist (additional steps)

- [ ] Termination decision approved: Dr. Lewis (non-executive) / Matt Mathison (executive)
- [ ] Legal review completed (if PIP was in progress, discrimination claim risk, or severance offered)
- [ ] Termination documentation prepared (reason, prior counseling record)
- [ ] Access revocation plan ready (execute before or during conversation)
- [ ] Who conducts the conversation: [Dr. Lewis / CEO / Manager] + witness present
- [ ] Script prepared — what will be said, what will not
- [ ] Severance decision made (requires Matt Mathison approval): [Yes: $X / No]
- [ ] Final pay calculation confirmed with payroll before conversation
- [ ] Equipment recovery plan ready (remote: shipping label prepared)

**Termination conversation script guidance:**
- State the decision clearly and early: "We've made the decision to part ways, effective today."
- Brief, factual reason: "This is due to [performance concerns documented since X / position elimination / conduct]."
- Do not debate or argue — the decision is made.
- Provide logistics: final pay, benefits, return of equipment.
- Be humane: allow dignity; avoid public terminations.

---

## Matt Mathison Notification

**Departure notification:** [Voluntary: "Name is departing on [date]. Impact: [low / moderate / high — and why]. Backfill: [approved / pending / not needed]." / Involuntary: brief with reason and legal review status]

**Escalate to Matt Mathison immediately for:**
- Any executive departure (director and above)
- Any departure that creates a critical operational gap
- Any involuntary termination where legal risk exists
- Any employee who has made or threatened an HR complaint during their tenure
```

## Output Contract
- Access revoked same day on involuntary termination — this is non-negotiable; a terminated employee who retains financial system access (QuickBooks, Bill.com, bank) is an unacceptable security risk; access revocation is coordinated before or simultaneously with the termination conversation; for voluntary departures, access is revoked at end of last day, not before
- Knowledge transfer is a business continuity function — for voluntary departures, every day of the notice period that isn't used for knowledge transfer is institutional knowledge walking out the door; a list of what only this person knows is built on Day 1 of the notice period and transfer tasks are assigned immediately
- Final pay follows state law — not company policy; different states have different final pay timing requirements; Arizona and Utah require next regular payday for most situations; California has same-day requirements for involuntary; Dr. Lewis confirms the state law requirement before the departure date and executes accordingly
- Exit interviews are not optional for voluntary departures — they are the cheapest source of honest feedback about what the company could do better; the information is confidential; trends are reported to Matt Mathison; individual data is never used in a way that could be retaliatory
- HITL required: Dr. Lewis coordinates all offboarding logistics; Matt Mathison notified of any executive departure; involuntary terminations require Dr. Lewis approval (non-executive) or Matt Mathison approval (executive) before conversation occurs; severance requires Matt Mathison approval; any departure with legal risk requires employment attorney review before termination conversation

## System Dependencies
- **Reads from:** Employee file, resignation letter or termination documentation, state final pay laws, benefits carrier termination procedures, payroll system
- **Writes to:** Offboarding checklist (SharePoint/HR/<Company>/Employees/<Name>/); payroll system (termination); system access revocation log; COBRA notification; exit interview notes
- **HITL Required:** Dr. Lewis coordinates; Matt Mathison approves executive departures and severance; involuntary terminations require pre-approval; access revocation confirmed before departure; legal review for high-risk terminations

## Test Cases
1. **Golden path:** Allevio front desk coordinator gives 2-week notice → Dr. Lewis notified Day 1; knowledge transfer plan built: patient scheduling contacts, insurance verification contacts, escalation procedures — all documented and walked through with remaining staff by Day 5; exit interview scheduled Day 12; access revocation plan: Microsoft 365 and scheduling system revoked at 5 PM last day; COBRA notice generated and sent within 14 days; final paycheck on next regular payday (AZ); equipment returned last day (badge, laptop); exit interview reveals: "I felt undertrained on the scheduling system when I started — the first 2 weeks were hard." Dr. Lewis notes for future onboarding improvements; Matt Mathison brief: "Front desk coordinator departing 6/30. Backfill approved. No legal concerns. Onboarding gap identified and will be addressed."
2. **Edge case:** An employee resigns and offers 2 weeks notice but the hiring manager wants to release them immediately because "it's awkward" → releasing early is the company's right; the implications: (a) depending on the state, early release may still obligate the company to pay through the notice period, (b) the employee loses 2 weeks of income they planned for, which damages the relationship and employer brand; recommend: "I'd suggest accepting the 2-week notice unless there's a specific reason to release early (e.g., they're in a position with access to sensitive data and you're concerned). The awkwardness is manageable; the cost savings from 2 weeks of work outweigh the discomfort. If you want to release early, I'll check the state law on whether we owe the 2 weeks regardless."
3. **Adversarial:** An involuntary termination is proceeding and the manager wants to handle the conversation alone without HR involvement → Dr. Lewis must be present or a trained designee: "I need to be on the termination call. This isn't optional — it protects you, protects the company, and ensures the conversation stays on script. Without HR present, a disgruntled employee can claim they were told things that were never said, and there's no witness to contradict them. It also protects you from saying something that creates legal liability in the moment. I'll keep it short and professional. Can we do [time]?"

## Audit Log
All offboarding documentation retained by employee and date. Access revocation confirmations retained. Knowledge transfer completion documented. Exit interview notes retained (confidential). Final pay calculations and confirmation retained. COBRA notices retained. Involuntary termination documentation and approvals retained permanently. Severance agreements retained permanently.

## Deprecation
Retire when portfolio companies have dedicated HR managers with automated offboarding workflows (HRIS-triggered access revocation, automated COBRA notices, standard exit interview processes) that don't require Dr. Lewis to manually coordinate each departure.
