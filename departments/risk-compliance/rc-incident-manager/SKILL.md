---
name: rc-incident-manager
description: "Classify and respond to compliance incidents — regulatory, operational, and safety. Use when the user says 'compliance incident', 'incident response', 'incident classification', 'regulatory incident', 'report an incident', 'compliance event', 'incident escalation', 'compliance notification', 'incident timeline', 'incident report', 'compliance violation discovered', 'how do we respond to this incident', 'safety incident', 'OSHA incident', or 'notify the regulator'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--type <HIPAA|OSHA|employment|financial|safety|data|operational>] [--severity <critical|high|medium|low>] [--phase <detect|classify|contain|notify|remediate>]"
---

# Compliance Incident Manager

Classify and respond to compliance incidents at MBL portfolio companies — ensuring that compliance events (regulatory violations, safety incidents, data breaches, employment law events) are identified, classified by severity, contained, reported to the appropriate parties within required timelines, and remediated with documented lessons learned. A compliance incident is any event that creates regulatory, legal, or operational risk outside of the normal control environment; effective incident management minimizes the impact of the event through speed of response and accuracy of classification. Different incident types have different notification obligations and timelines — the classification determines the response.

## When to Use
- A compliance event has occurred — what is the response?
- An incident needs to be classified by severity and type
- A regulatory notification is required — to whom, by when, in what format?
- A safety incident at the workplace needs to be processed (OSHA)
- Post-incident review — what happened and what needs to change?
- An incident log needs to be reviewed for patterns

## Incident Classification Framework

```
Compliance incident types and notification requirements:

HIPAA BREACH (Allevio):
  Severity: Critical (>500 individuals), High (1-499), Medium (potential breach — under assessment)
  Notification: Individuals (60 days from discovery); HHS (60 days; annual if ≤500); Media (60 days if >500 in state)
  Protocol: rc-data-breach-responder (full protocol); Dr. Lewis + CEO + attorney same day
  
OSHA RECORDABLE / REPORTABLE INCIDENT:
  Fatality: Report to OSHA within 8 hours (any workplace death)
  In-patient hospitalization, amputation, or eye loss: Report within 24 hours
  Recordable (no immediate OSHA report, but log on OSHA 300): Days away from work; restricted duty; medical treatment beyond first aid
  Protocol: Document immediately; OSHA Form 301 (within 7 days of incident); OSHA 300 log updated
  
EMPLOYMENT LAW INCIDENT:
  EEOC charge filed against the company: Attorney immediately; CEO immediately; Matt Mathison if litigation threshold ($100K)
  DOL investigation opened: Attorney immediately; CEO immediately
  Class action threat: Attorney immediately; CEO + Matt Mathison immediately
  Employee injury claim (Workers' Comp): Workers' Comp carrier notified within 24 hours; OSHA recordability assessed
  
DATA BREACH (non-HIPAA):
  PII breach (SSNs, financial account numbers): State breach notification laws triggered; attorney immediately; CEO immediately
  Employee data breach: Attorney advises on state notification obligations
  Vendor breach affecting company data: rc-third-party-compliance; attorney; CEO
  
FINANCIAL / FRAUD INCIDENT:
  Confirmed fraud or theft: CEO immediately; Matt Mathison immediately; attorney; potentially law enforcement
  Failed AP control (payment to fraudulent vendor): CEO; attorney; bank fraud department
  Ransomware: IT isolation protocol; FBI Cyber; attorney; CEO + Matt Mathison same day
  
REGULATORY ACTION:
  OCR investigation (HIPAA): Attorney immediately; CEO; do not respond to OCR without attorney
  DOL audit: Attorney immediately; CEO; document preservation
  State regulatory action: Attorney immediately; CEO
  
Incident severity levels:
  Critical: Regulatory notification required; potential for material financial harm or criminal exposure; CEO + Matt Mathison + attorney same day
  High: Significant compliance failure; requires investigation; CEO within 24 hours; attorney within 24 hours
  Medium: Control failure without immediate regulatory notification requirement; CEO within 48 hours; remediation within 30 days
  Low: Minor compliance gap; management level; remediation within 90 days; logged and tracked
```

## Output Format

```markdown
# Compliance Incident Report — <Company Name>
**Incident ID:** INC-[YYYY]-[###] | **Entity:** [Company]
**Date of occurrence:** [Date] | **Date of discovery:** [Date]
**Type:** HIPAA / OSHA / Employment / Data / Financial / Regulatory
**Severity:** 🔴 Critical / 🟠 High / 🟡 Medium / 🟢 Low

---

## Incident Summary

**Description:** [Objective; factual; what happened]
**Discovered by:** [Role]
**Systems/areas affected:** [List]
**Individuals affected (estimate):** [N or Unknown]
**Regulatory implications:** [Which regulations implicated]

---

## Immediate Response (first 2 hours)

| Action | Completed | Time | By |
|--------|---------|------|-----|
| Incident classified | ✅ | [Time] | Dr. Lewis |
| CEO notified | ✅ / N/A | [Time] | Dr. Lewis |
| Matt Mathison notified | ✅ / N/A | [Time] | |
| Attorney notified | ✅ / N/A | [Time] | |
| Containment actions taken | ✅ | | |
| Evidence preserved | ✅ | | Dr. Lewis |

**Containment actions:** [Specific steps taken to stop the bleeding — system isolation, access revocation, process halt]

---

## Regulatory Notification Schedule

| Notification | Recipient | Deadline | Method | Completed |
|-------------|---------|---------|--------|---------|
| HIPAA — Individual notification | [N] individuals | [Discovery + 60 days] | First-class mail | ✅ [Date] / Pending |
| HIPAA — HHS | HHS Portal | [Discovery + 60 days / annual] | Online | |
| OSHA — Fatality/hospitalization | OSHA area office | [8 hrs / 24 hrs] | Phone call + written | |
| State breach notification | [State AG] | [State law deadline] | Written | |
| Workers' Comp carrier | [Carrier] | Within 24 hours | Phone + claim | |

---

## Investigation and Root Cause

**Root cause:** [Specific cause — system failure, human error, policy gap, external attack, vendor failure]
**Contributing factors:** [What made the incident worse or harder to detect]
**Scope confirmed:** [Final count of individuals; systems; data types affected]

---

## Remediation Plan

| Action | Owner | Due date | Status |
|--------|-------|---------|--------|
| [Specific fix — e.g., AdvancedMD access control reconfigured] | Dr. Lewis | [Date] | In progress |
| HIPAA training refresher for affected staff | Dr. Lewis | [Within 30 days] | |
| Control update to prevent recurrence | | | |

---

## Lessons Learned

**What failed:** [Control; process; training gap]
**What could have caught this sooner:** [Detection gap]
**Changes implemented:** [Specific; measurable]
**Risk register updated:** ✅ [Date] / N/A

---

## Matt Mathison Summary

[Company] compliance incident [ID]: [Type; severity]. [Brief description]. Individuals affected: [N]. Regulatory notification: [Required by [Date] / Not required]. Action taken: [Summary]. Financial exposure: $[Estimate]. Attorney engaged: [Name]. Status: [Contained / Remediation in progress / Closed].
```

## Output Contract
- Classification determines the response timeline — a HIPAA breach starts a 60-day clock on the date of discovery; an OSHA fatality starts an 8-hour clock; misclassifying a Critical incident as Medium to avoid the response effort does not eliminate the regulatory obligation, it just delays the response until the deadline has passed; Dr. Lewis classifies incidents at the time of discovery with the information available and updates the classification as investigation proceeds; if the initial classification is Conservative (treating a possible Medium as High), the cost is additional response effort; if the initial classification is Optimistic (treating a possible High as Low), the cost may be a missed notification deadline
- "Discovery" is the trigger, not "confirmation" — for HIPAA, the clock starts when the covered entity knew OR SHOULD HAVE KNOWN about a breach; an employee who discovers suspicious AdvancedMD access on Day 1 and reports it to their manager, who waits 2 weeks to escalate it to Dr. Lewis, does not reset the clock to Day 15; the clock started on Day 1 when the employee had knowledge; Dr. Lewis trains staff to report immediately and treats any potential compliance incident as discovered on the date of first knowledge at any level of the organization
- Contain before investigate — the first response to a critical incident is containment (stop the bleeding), not investigation (understand what happened); if AdvancedMD shows unauthorized access, the first action is to disable the account, not to review the audit log; if financial fraud is suspected, the first action is to restrict access, not to quantify the amount; evidence preservation (rc-investigation-manager) runs concurrently with containment; the investigation follows once the incident is contained
- HITL required: Dr. Lewis classifies and manages all incidents; CEO within 1 hour for Critical; Matt Mathison within 24 hours for Critical and within 48 hours for High; attorney same day for Critical; no regulatory responses without attorney review; OSHA oral notification for fatalities/hospitalizations must be made immediately (Dr. Lewis or CEO calls OSHA area office); Matt Mathison for all incidents with regulatory notification requirements

## System Dependencies
- **Reads from:** Security monitoring (Microsoft Defender), AdvancedMD audit logs, OSHA incident thresholds, state breach notification law requirements, HIPAA breach assessment (rc-data-breach-responder), investigation protocol (rc-investigation-manager)
- **Writes to:** Incident log (SharePoint/RC/<Company>/Incidents/); OSHA 300 and 301 forms; HHS breach reporting tool; regulatory notification letters; CEO and Matt Mathison notifications; attorney engagement log; post-incident remediation plan; risk register update (rc-risk-register)
- **HITL Required:** Dr. Lewis classifies and leads; CEO within 1 hour for Critical; Matt Mathison within 24 hours Critical/48 hours High; attorney same day for Critical; OSHA oral notification by Dr. Lewis or CEO; no regulatory submissions without attorney review

## Test Cases
1. **Golden path:** A clinical staff member at Allevio calls in to report they accidentally sent a patient's name and appointment details to the wrong patient (email) → Classification: potential HIPAA breach, Medium severity; containment: Dr. Lewis contacts both parties to confirm the email was deleted; attorney notified within 24 hours; 4-factor HIPAA assessment conducted (rc-data-breach-responder): minimal PHI, accidental, recipient cooperating, deletion confirmed; determination: low risk, not a reportable breach; documentation: assessment dated and retained permanently; training note: all clinical staff reminded of secure messaging policy; incident log updated; CEO briefed; incident closed as not reportable with documentation
2. **Edge case:** An Allevio employee breaks their wrist while climbing a step stool to reach a file — is this OSHA recordable? → Recordability assessment: work-related injury? Yes (occurred at workplace during work activity). Severity: medical treatment beyond first aid? If employee only receives first aid (ace wrap; OTC pain reliever) → not OSHA recordable. If employee receives prescription medication, physical therapy, or has days away from work → OSHA recordable; OSHA 301 (injury report) completed within 7 days; OSHA 300 log updated; Workers' Comp carrier notified within 24 hours regardless of recordability; no OSHA immediate notification required (not a fatality, hospitalization, amputation, or eye loss); Dr. Lewis documents the assessment with OSHA recordability criteria applied
3. **Adversarial:** CEO wants to call the OCR investigator directly to explain the situation before attorney is engaged → Do not do this; any communication with OCR during a HIPAA investigation should be through counsel; voluntary statements that seem explanatory can be interpreted as admissions; OCR has specific investigation procedures and expectations; Dr. Lewis's role is to ensure the attorney is engaged and to support the attorney's response strategy; Dr. Lewis does not make direct contact with OCR without attorney guidance; Dr. Lewis explains this to the CEO and facilitates attorney engagement immediately

## Audit Log
All compliance incidents logged with timeline from discovery to closure (permanently). OSHA 300 and 301 forms retained 5 years. Workers' Comp incident records per carrier requirements. HIPAA breach records retained permanently. Regulatory correspondence and notifications retained permanently. Post-incident remediation records retained. CEO and Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have formal incident response programs with dedicated compliance functions — with Dr. Lewis receiving notifications for Critical incidents across the portfolio and reviewing incident classification for HIPAA events at Allevio.
