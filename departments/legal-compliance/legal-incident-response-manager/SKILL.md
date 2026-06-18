---
name: legal-incident-response-manager
description: "Manage data breach, cybersecurity incident, and regulatory incident response for MBL portfolio companies. Use when the user says 'data breach', 'security incident', 'incident response', 'we were hacked', 'ransomware', 'phishing attack', 'data leak', 'unauthorized access', 'breach notification', 'breach response', 'HIPAA breach', 'breach reporting', 'security breach', 'compromised account', 'exposed data', 'data theft', 'regulatory incident', 'FTC inquiry', 'DOL inquiry', 'DOGM investigation', or 'OCR investigation'."
metadata:
  version: 1.0.0
  tier: legal
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--incident-type <data-breach|ransomware|regulatory|physical>] [--action <activate|assess|notify|document>] [--status <suspected|confirmed>]"
---

# Incident Response Manager

Manage data breach, cybersecurity incident, and regulatory incident response for MBL portfolio companies — executing the incident response protocol from initial detection through containment, assessment, notification, and recovery. The first 24-48 hours after a security incident determine whether a breach becomes a regulatory enforcement action, a PR crisis, or a manageable operational event. Dr. Lewis coordinates the incident response and ensures that all legal notification obligations are met within their statutory deadlines.

## When to Use
- A data breach or security incident is suspected or confirmed
- An employee account is compromised
- A ransomware attack is detected
- A regulatory inquiry arrives (HIPAA OCR, FTC, DOGM, DOL)
- A vendor notifies the company of a breach affecting company data

## Incident Response Framework

```
IMMEDIATE RESPONSE PROTOCOL (0-24 HOURS):

  Step 1: Contain the incident (do not turn off systems without IT's direction — evidence may be lost)
    □ Isolate compromised systems from the network (do not wipe or shut down unless directed by IT security)
    □ Reset compromised credentials immediately
    □ Block unauthorized access vectors (change admin passwords; revoke compromised API keys)
    □ Preserve logs (do not allow auto-purging of security logs during the incident)
    
  Step 2: Assemble the incident response team
    □ Dr. Lewis: Legal, regulatory, notification obligations
    □ CEO of affected company: Decision authority and communications
    □ IT/Security (internal or external): Forensic investigation
    □ Cyber insurance carrier: Notify within required timeframe (typically 24-72 hours)
    □ Outside counsel (privacy/cyber): Engage for attorney-client privilege protection
    □ PR/Communications (if breach is material and public notification is likely)
    
  Step 3: Initial assessment (within 4-12 hours)
    □ What systems were compromised?
    □ What data was accessed or exfiltrated?
    □ Is the breach ongoing or contained?
    □ Who is affected? (employees, customers, patients, members?)
    □ What is the estimated scope?

NOTIFICATION OBLIGATIONS BY ENTITY:

  ALLEVIO (HIPAA):
    HIPAA Breach Notification Rule:
      60-day clock starts from "discovery" (when any Allevio workforce member learns of the breach)
      Notification required to:
        (1) Affected individuals: Written notice (first-class mail or email if consented)
        (2) HHS (Health & Human Services / OCR): Online breach notification portal
          If >500 individuals in a state: Also notify prominent media outlets in that state
        (3) Business associates: Notify covered entity (Allevio) of any breach affecting their data
      Content: What happened; what data was involved; what steps Allevio is taking; what individuals can do
      Unsecured PHI = encrypted data is NOT required to be reported (encryption is the safe harbor)
      Risk assessment: Not every security incident is a "breach" — perform a 4-factor analysis:
        (1) Nature of PHI involved; (2) Who accessed it; (3) Whether PHI was actually acquired/viewed;
        (4) Extent to which risk has been mitigated
      If any factor indicates low probability of compromise: Document and do not report
      If uncertain: Report (false positive reporting is not penalized)
      
  COLUMN6 / ALL ENTITIES (Arizona data breach law):
    Arizona Revised Statutes §18-552: Breach notification to Arizona residents required
    Trigger: Personal information (name + SSN; or name + financial account; or name + login credentials)
      of Arizona residents is acquired by an unauthorized person
    Timing: "Expedient manner" (industry standard: 30-60 days; do not wait for the 60-day limit to notify)
    Content: Description; type of information; what happened; contact information
    Notifies: Affected Arizona residents + Arizona Attorney General (if >100 Arizona residents affected)
    
  COLUMN6 (CCPA):
    CCPA data breach: If unencrypted California personal information is accessed by an unauthorized person
    Notification: "Expedient time" — California interprets as 30-45 days; no formal statutory deadline
    But: Class action risk is significant for CCPA data breaches (statutory damages $100-$750/person)
    Notify California AG if >500 California residents affected
    
  HIVE PARTNERS (DOGM regulatory incident):
    Environmental spill or release: DOGM notification (depending on severity and media affected)
    Emergency: BLM/EPA Region 8 notification may be required for significant spills
    DOGM: Operator self-reporting is always viewed more favorably than reactive response to inspection
    Worker safety (OSHA): Serious injury or fatality requires OSHA notification within 24 hours

REGULATORY INQUIRY RESPONSE:
  HIPAA OCR Investigation:
    □ Engage privacy counsel immediately
    □ Issue litigation hold
    □ Do NOT respond to OCR without counsel review
    □ OCR has broad investigation authority; cooperation is required but must be managed
    □ Document all actions taken to remediate the breach
    □ OCR's primary concern: Was there a breach? Was it properly reported? Is it being remediated?
    
  FTC Investigation (Column6):
    □ Engage regulatory/FTC counsel immediately
    □ Do not produce documents without counsel review
    □ FTC investigations are triggered by: consumer complaints; monitoring of advertising claims; data practices
    □ Self-disclosure of known issues is viewed favorably by the FTC
    
  DOL Audit:
    □ Review the specific DOL inquiry (ERISA? FLSA wage and hour? Workers' compensation?)
    □ Engage employment counsel for the specific DOL matter
    □ Produce only documents specifically requested; do not volunteer

BREACH NOTIFICATION TRIAGE:
  Not every security incident is a reportable breach
  The question: Was unsecured personal data (PHI for Allevio; PII for others) acquired/accessed without authorization?
  If YES: Activate full breach response and notification protocol
  If MAYBE: Document the risk assessment; engage privacy counsel; err on the side of reporting if uncertain
  If NO (false alarm; contained; encrypted data): Document and close (no notification required)
```

## Output Format

```markdown
# Incident Response Record — [Incident ID]
**Entity:** [Portfolio Company] | **Date discovered:** [Date/Time] | **Incident type:** [Breach / Ransomware / Regulatory]
**Status:** Contained / Ongoing | **Dr. Lewis notified:** [Date/Time]
**Cyber insurance notified:** [Yes/No — Date] | **Outside counsel:** [Firm — engaged Date]

---

## Incident Summary

**What happened:** [Description]
**Data involved:** [Types of data accessed/exfiltrated]
**Affected individuals:** [Estimated number and categories]
**Current status:** [Contained / Under investigation / Ongoing]

---

## Notification Obligations

| Obligation | Entity | Deadline | Status |
|-----------|--------|---------|--------|
| HIPAA individual notification | Allevio members | 60 days from discovery (by [Date]) | In progress |
| HHS/OCR notification | OCR | 60 days from discovery | Not yet filed |
| Arizona AG | Arizona AG | <100 AZ residents: N/A | N/A |
| Cyber insurance | [Carrier] | 72 hours (by [Date]) | ✅ Notified [Date] |

---

## Remediation Actions

| Action | Owner | Status | Due |
|--------|-------|--------|-----|
| Compromised accounts reset | IT | ✅ Done | Immediate |
| Forensic investigation initiated | [Firm] | In progress | [Date] |
| Vulnerability patched | IT | Pending | [Date] |
| Employee security training | CEO | Scheduled | [Date] |

---

## Matt Mathison Brief

**Severity:** High / Medium / Low
**Regulatory exposure:** [Amount / Unknown]
**Cost estimate:** $[X]K - $[X]K (forensics + notification + counsel)
**Insurance coverage:** $[X]M cyber policy (carrier: [Name])
```

## Output Contract
- HIPAA's 60-day clock is from discovery, not from confirmation — the HIPAA breach notification clock begins running when any member of Allevio's workforce first learns of the potential breach, not when the investigation confirms the breach; this is a critical distinction — starting the clock from when the breach is "confirmed" has been specifically rejected by OCR; if Allevio's IT manager discovers on October 1 that a server was compromised, the 60-day clock runs from October 1 even if the forensic investigation isn't complete until November 15; the notification must go out by November 30; Dr. Lewis starts the clock on the day of discovery and manages the notification deadline rigorously
- Cyber insurance notification is time-sensitive — most cyber insurance policies require notification within 24-72 hours of a known or suspected breach; late notification can void coverage; Dr. Lewis notifies the cyber insurance carrier within 24 hours of any confirmed or suspected breach event (even if it later turns out to be a false alarm — early notification does not create coverage issues; late notification does); the carrier has panel counsel and forensic investigators who are available immediately; using carrier-provided resources preserves coverage
- Attorney-client privilege protects the investigation — outside privacy counsel should be engaged immediately so that the forensic investigation and breach assessment are conducted under attorney-client privilege; without privilege, the investigation report is discoverable in subsequent litigation or regulatory proceedings; with privilege, the investigation findings are protected; Dr. Lewis engages outside privacy counsel before commissioning the forensic investigation; the forensic firm works at counsel's direction to maximize privilege protection
- HITL required: Dr. Lewis leads incident response coordination; CEO makes all communication and response decisions; Matt Mathison notified within 24 hours of any material breach (significant personal data; HIPAA breach; regulatory inquiry); cyber insurance carrier notified within 24 hours; outside privacy counsel engaged within 24 hours (do not respond to any regulatory inquiry without counsel); Dr. Lewis does not respond to OCR, FTC, or other regulatory inquiries without outside counsel review; no breach notification is sent without Dr. Lewis and outside counsel review

## System Dependencies
- **Reads from:** Incident reports (IT systems — what systems were affected; what data was accessed); data inventory (what personal data is stored where — particularly for Allevio PHI and Column6 audience data); insurance policy (cyber coverage terms; notification requirements; panel counsel list); vendor notification (if the breach involves a vendor's system — the vendor's notification obligation to Allevio); prior breach history (any prior OCR enforcement or settlements); employee access logs (who had access to the affected data?); legal-data-privacy-manager (data classification and state notification requirements)
- **Writes to:** Incident response record (SharePoint/Legal/<Company>/Incidents/[IncidentID]_Record.docx); breach notification letters (to affected individuals); OCR breach notification (HHS portal); Arizona AG notification; cyber insurance carrier notification; Matt Mathison incident brief; board/manager consent resolution (if material breach requires board-level response); post-incident security improvement plan
- **HITL Required:** Dr. Lewis coordinates; CEO makes response decisions; Matt Mathison notified within 24 hours of material breach; cyber insurance carrier notified within 24 hours; outside privacy counsel engaged within 24 hours; no regulatory response without counsel review; no breach notification without Dr. Lewis and counsel review; Matt Mathison approves all public communications related to the breach; CEO authorizes the breach notification letters (as company's authorized representative)

## Test Cases
1. **Golden path:** Allevio's IT manager discovers that a phishing attack compromised an employee's email account — the email account contained some member PHI (appointment confirmations; benefit plan information; no clinical records) → Dr. Lewis activates: (1) 60-day HIPAA clock starts — today is Day 1; (2) Compromised account reset and MFA enforced within 2 hours; (3) Cyber insurance carrier notified — same day; panel counsel engaged; (4) Forensic firm (at counsel's direction) reviews email account access logs; (5) 4-factor HIPAA risk assessment: PHI involved (yes — appointment confirmations with name and benefit plan); authorized acquisition (unknown — access logs examined); mitigation (account reset; MFA; 2-hour containment); scope (42 members with emails in that account); Risk assessment: LOW probability of compromise (access was brief; likely automated phishing tool scanning for financial info; no clinical records; PHI of limited sensitivity); Dr. Lewis documents the risk assessment and concludes: Not a reportable breach; (6) Security training for all employees scheduled; (7) Documentation retained; Matt Mathison briefed
2. **Edge case:** HIVE's field operations manager accidentally sends a spreadsheet with 86 employee social security numbers to an external email address that was not authorized → Dr. Lewis: No HIPAA (HIVE is not a covered entity or business associate); Arizona data breach law: Name + SSN for Arizona residents = reportable; Assess: 86 SSNs; external email address confirmed received; likely Arizona residents (HIVE employees based in Utah and Arizona); Arizona law trigger: Confirmed; (1) Cyber insurance notified; (2) Privacy counsel engaged; (3) Notification letters to 86 affected employees sent within 15 days of discovery (well within the "expedient" standard); (4) Letters include: what happened; what data was shared; credit monitoring offer (12 months — best practice); instructions; (5) If >100 Arizona residents: Arizona AG notification (86 — below threshold; not required but Dr. Lewis notifies as a proactive measure to demonstrate good faith); (6) Security training updated to address email send errors; Matt Mathison briefed; total cost: ~$8K (counsel + notifications + credit monitoring)
3. **Adversarial:** Column6 receives a federal civil investigative demand (CID) from the FTC demanding documents related to its advertising disclosure practices and data privacy → Dr. Lewis: "This is a serious regulatory event. A federal CID from the FTC is the functional equivalent of a subpoena — it requires a response but not an immediate production. We have 30 days to respond (the CID specifies the deadline). Immediate actions: (1) Litigation hold issued to all Column6 employees with knowledge of advertising practices and data processing; (2) FTC regulatory counsel engaged today — do not produce a single document without counsel review; (3) Matt Mathison notified same day; (4) Cyber insurance carrier notified (does the policy cover regulatory defense costs? check); (5) No public statement about the CID — FTC investigations are confidential unless the FTC chooses to publicize them; (6) Compile all relevant advertising campaigns, disclosure policies, and data processing records for counsel's review; (7) FTC counsel will advise on the appropriate response strategy." FTC counsel engaged; document production managed under privilege review; investigation resolved with no enforcement action after cooperative response demonstrating compliant disclosure practices

## Audit Log
All incident response records retained permanently. Breach notification letters and transmission records retained permanently. OCR/regulatory filings retained permanently. Cyber insurance notifications and claim records retained permanently. Matt Mathison notifications retained. Outside counsel engagement records retained. Post-incident security improvements documented and tracked. Any regulatory enforcement actions or settlements retained permanently.

## Deprecation
Retire when each portfolio company has a dedicated information security and privacy function with an incident response retainer agreement — with Dr. Lewis coordinating the legal response and Matt Mathison approving material communications.
