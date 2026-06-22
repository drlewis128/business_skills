---
name: hr-termination-manager
description: "Manage involuntary employee terminations at MBL Partners portfolio companies. Use when the user says 'termination', 'terminate an employee', 'let someone go', 'fire an employee', 'fire someone', 'involuntary separation', 'layoff', 'RIF', 'reduction in force', 'elimination of position', 'position eliminated', 'employment end', 'end employment', 'separation meeting', 'termination meeting', 'termination documentation', 'termination letter', 'termination checklist', 'final paycheck', 'pay final wages', 'severance', 'severance agreement', 'separation agreement', 'WARN Act', 'mass layoff', 'conduct-based termination', 'misconduct termination', 'for cause', 'without cause', 'performance termination', or 'failed PIP termination'."
metadata:
  version: 1.0.0
  tier: human-resources
  owner: Dr. John Lewis
argument-hint: "[--employee <name>] [--entity <mbl|allevio|hive|column6>] [--type <performance|misconduct|elimination|layoff>] [--action <plan|execute|document>]"
---

# HR Termination Manager

Manage involuntary employee separations — planning the termination, executing the meeting, handling final pay, deprovisioning access, and processing severance. Involuntary terminations are among the highest-risk HR events: done poorly, they generate lawsuits; done correctly, they are professional, documented, legally compliant, and respectful of the employee's dignity. The entity's reputation as an employer is built in large part by how it handles departures.

## When to Use
- A failed PIP requires involuntary separation
- A misconduct investigation results in termination
- A position is eliminated (RIF or business restructure)
- Any employee's employment must be ended by the entity

## Termination Framework

```
PRE-TERMINATION CHECKLIST (must be complete before the meeting):

  1. AUTHORIZATION:
     All terminations: entity CEO + Dr. Lewis decision (joint)
     Director+: Matt Mathison awareness (not approval — awareness) before execution
     
  2. DOCUMENTATION REVIEW:
     Performance termination: PIP on file; failed PIP documented; coaching records in file
     Misconduct termination: investigation report + substantiated finding on file
     Position elimination: business rationale documented; no replacement role in 90 days
     Protected activity review: confirm no recent EEOC/complaint/leave that creates retaliation risk
     
  3. FINAL PAY CALCULATION (prepared before meeting):
     AZ: all wages earned through last day due within 7 business days
     UT: all wages due within 24 hours of separation request
     Accrued PTO: must be paid per AZ law; UT: per company policy (confirm handbook)
     Cannot hold final paycheck for equipment return (illegal in AZ and UT)
     
  4. SEVERANCE (if offered):
     Standard: offered for position eliminations; discretionary for performance/misconduct
     VP+ severance: Matt Mathison approval required
     ADEA: employees age 40+ need 21 days to review + 7-day revocation period before release is effective
     Severance agreement must include: general release; non-disparagement; non-solicitation (where applicable)
     
  5. ACCESS DEPROVISIONING (scheduled — not executed until day of):
     IT ready: M365 disable; systems revocation; email forwarding to manager; hardware return process
     Allevio: AdvancedMD access; PHI system access revoked at termination meeting
     HIVE: Covercy access; field system access
     Column6: campaign platform access; CRM access
     Dr. Lewis notifies IT on morning of separation; access revoked within 1 hour of meeting

TERMINATION MEETING:

  WHO IS IN THE ROOM:
    Manager (or entity CEO) + Dr. Lewis (or HR representative)
    Never manager alone (witness required)
    Neutral location: conference room (not the employee's desk or manager's office)
    
  DURATION: 10-15 minutes (not a negotiation)
  
  STRUCTURE:
    Open with the decision: "I have difficult news. Your employment with [entity] is ending effective today."
    Reason (1 sentence): "This is the result of [the performance improvement plan not achieving the 
      required outcomes / the position being eliminated as part of a business restructuring / 
      a violation of company policy]."
    Next steps: "I'm going to walk you through the logistics."
    Final pay: explain when and how
    Benefits: COBRA notice; benefits end date
    Return of property: how and when
    Access: "Your system access will be revoked as you leave today."
    Severance (if applicable): "We are providing a severance package. Here is the agreement — 
      you have [21 days for age 40+; reasonable time for others] to review it."
    Close: "Do you have any questions about the logistics?"
    
  WHAT NOT TO SAY:
    "This is really hard for us" — not relevant; this is about them
    Extended justification after the decision is stated — the decision is made; relitigating it extends their pain
    "You'll land somewhere great" — they don't need your comfort right now
    Anything that opens negotiation on the decision
    
  TONE: professional, calm, direct, humane — not apologetic and not cold

AZ/UT LEGAL REQUIREMENTS:
  AZ: final paycheck within 7 business days
  UT: final paycheck within 24 hours of employee's request
  AZ: accrued PTO must be paid (Prop 206)
  AZ/UT: cannot condition final paycheck on equipment return

LAYOFFS (RIF — Reduction in Force):
  Document business rationale (economic; structural; role redundancy) before selection
  Selection criteria documented (role; performance history; skills needed going forward) — NOT protected class
  WARN Act: if ≥50 employees + ≥33% OR ≥500 employees laid off within 30 days: 60-day notice required
    MBL portfolio companies typically <50 employees — WARN usually inapplicable; confirm size before proceeding
  Post-layoff: confirm no immediate backfill of same role within 90 days (creates discrimination risk)
```

## Output Format

```markdown
# Termination Checklist — [Employee Name] | [Entity] — [Date]
**Type:** Performance / Misconduct / Position Elimination / Layoff
**Authorized by:** Entity CEO + Dr. Lewis | **Director+ awareness:** Matt Mathison ☐

---

## Pre-Meeting Checklist
- [ ] Documentation reviewed: [PIP / Investigation report / Business rationale]
- [ ] Protected activity check completed: [No recent complaint/leave/EEOC]
- [ ] Final pay calculated: $[X] base + $[X] PTO = $[X] total | Due by: [AZ: 7 days / UT: 24 hrs]
- [ ] Severance terms: [Amount] | ADEA 21-day window: ☐ Yes / ☐ N/A (under 40)
- [ ] IT deprovisioning scheduled: [Systems to revoke]
- [ ] Allevio PHI access revocation: ☐ Confirmed / ☐ N/A
- [ ] COBRA notice: prepared for same-day delivery
- [ ] Meeting logistics: [Room / Time / Attendees]

---

## Meeting Notes
**Conducted by:** [Manager/CEO name] + Dr. Lewis | **Date/Time:** [Date] [Time]
**Employee response:** [Brief factual note — not verbatim; just key points]
**Property returned:** ☐ Yes / ☐ Pending — hardware return by: [Date]
**Signed separation agreement:** ☐ Yes / ☐ Pending — review deadline: [Date]

---

## Post-Meeting Checklist
- [ ] IT access revoked: [Time]
- [ ] Final paycheck issued: [Date]
- [ ] COBRA notice delivered: [Date — triggers 30-day employer clock]
- [ ] Benefits end date communicated: [Date]
- [ ] Severance agreement returned by: [Date]
```

## Output Contract
- Entity CEO + Dr. Lewis authorize every termination jointly — no manager has unilateral termination authority; the entity CEO must be a co-decision-maker on every involuntary separation; Dr. Lewis must review documentation and confirm legal and process compliance before execution; an involuntary termination that occurs without this dual authorization is an exposure event regardless of the underlying justification
- Access is revoked on the day of separation, never later — an employee whose access has been revoked can no longer cause harm (data download, message deletion, system tampering) after they leave; an employee who learns they are being terminated but whose access is not revoked immediately creates a data security risk; Dr. Lewis notifies IT the morning of the termination; access is revoked within 1 hour of the meeting; for Allevio, PHI system access is revoked in the termination meeting itself (IT ready in advance); this is non-negotiable
- Final paycheck timing is non-negotiable by jurisdiction — AZ is 7 business days; UT is 24 hours from request; the entity cannot condition final pay on equipment return or anything else; entities that attempt to withhold final pay create wage theft exposure; Dr. Lewis tracks final pay issuance and confirms within the required window
- HITL required: termination decision → entity CEO + Dr. Lewis jointly; Director+ → Matt Mathison awareness before execution; protected activity check → Dr. Lewis confirms; ADEA (age 40+) → 21-day review period required; IT deprovisioning → IT executes on day of meeting within 1 hour; Allevio PHI access → revoked at meeting; VP+ severance → Matt Mathison approval; mass layoff (RIF) → legal counsel on WARN Act applicability

## System Dependencies
- **Reads from:** hr-pip-builder (failed PIP documentation); hr-investigation-manager (misconduct substantiated finding); hr-offboarding-manager (offboarding process integration); hr-benefits-manager (COBRA trigger; benefits end date); hr-equity-plan-manager (equity treatment post-termination); legal-employment-law-tracker (AZ/UT final pay; WARN Act); legal-employment-agreement-manager (severance agreement template)
- **Writes to:** Termination record (SharePoint → HR → Terminations → [Entity] → [Employee]); IT deprovisioning ticket; final paycheck authorization (QuickBooks); COBRA notice to admin (triggers 30-day clock); severance agreement; Matt Mathison notification (Director+); HR metrics (attrition log)
- **HITL Required:** Decision → CEO + Dr. Lewis; Director+ → Matt Mathison awareness; protected activity check → Dr. Lewis; IT revocation → within 1 hour; PHI → at meeting; VP+ severance → Matt Mathison; WARN Act → legal counsel; final pay → Dr. Lewis confirms issuance

## Test Cases
1. **Golden path:** Allevio Care Coordinator — failed 60-day PIP (Q4). Documentation in file: 2 coaching records + PIP + 3 check-in notes showing continued errors. Protected activity check: no complaints or leave in 90 days. Entity CEO + Dr. Lewis decision: termination. Pre-meeting: final pay = $4,620 (7 days × $57K/52/5 × 3 days + 4 days accrued PTO). IT ready: AdvancedMD + email deprovisioning at 10 AM. Severance: not offered (performance termination). Meeting: 10-minute meeting; professional; direct. Access revoked at 10:05 AM. Final check issued within 7 business days.
2. **Edge case:** Position eliminated — only 1 employee in role — could be viewed as targeting → Dr. Lewis: "Before we proceed, I need to confirm two things: (1) the business rationale for eliminating this function is documented and legitimate — it can't be retrofitted; and (2) we are not backfilling this role in any form for at least 90 days. If we hire someone into a similar role within 90 days, we have a discrimination exposure risk. If both are confirmed, I'll proceed with the elimination documentation. I also want to offer severance for an elimination — it's standard and it reduces litigation risk."
3. **Adversarial:** Entity CEO wants to execute termination today, having decided yesterday, without giving Dr. Lewis time to review documentation → Dr. Lewis: "I understand you want to move quickly — I can have my review done by tomorrow morning. But I need to confirm the documentation, run the protected activity check, prepare final pay, schedule IT deprovisioning, and prepare the COBRA notice. If we skip those steps and the employee challenges the termination, the process gaps create more risk than the one-day delay. Give me until tomorrow morning — I'll have everything ready."

## Audit Log
All termination records retained permanently. Pre-termination authorization records retained permanently. Protected activity check records retained permanently. IT deprovisioning confirmation records retained. Final paycheck issuance records retained (payroll audit). COBRA notice delivery records retained. Severance agreement records retained. ADEA 21-day window records retained. Matt Mathison notifications retained.

## Deprecation
Final pay timing reviewed when AZ/UT employment laws change. WARN Act applicability reviewed when portfolio company headcount changes materially. ADEA process reviewed when EEOC guidance changes. Severance template reviewed annually with legal counsel.
