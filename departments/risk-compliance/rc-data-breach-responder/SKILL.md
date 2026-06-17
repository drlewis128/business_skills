---
name: rc-data-breach-responder
description: "Respond to data breaches — breach detection, assessment, notification, and regulatory reporting. Use when the user says 'data breach', 'breach response', 'security incident', 'PHI breach', 'HIPAA breach notification', 'breach assessment', 'breach notification', 'notify HHS', 'data breach notification', 'CCPA breach', 'ransomware breach', 'unauthorized access', 'breach investigation', 'breach clock', or 'notify affected individuals'."
metadata:
  version: 1.0.0
  tier: risk-compliance
  owner: Dr. John Lewis
argument-hint: "[--entity <company name>] [--incident-type <PHI|PII|financial|ransomware|unauthorized-access>] [--phase <detect|assess|contain|notify|remediate>]"
---

# Data Breach Responder

Respond to data security incidents and potential data breaches at MBL portfolio companies — from initial detection through containment, investigation, regulatory notification, and remediation. Data breach response is time-critical: HIPAA has a 60-day breach notification deadline from the date of discovery; CCPA has a 72-hour law enforcement notification window in some cases; delayed response and delayed notification compound both regulatory exposure and reputational damage. At Allevio, a HIPAA breach is not just a security incident — it is a regulatory event that triggers mandatory notifications to affected individuals, HHS, and potentially media. Speed, accuracy, and documentation are the three requirements of effective breach response.

## When to Use
- A potential breach is detected — what is the immediate response?
- An unauthorized access to PHI or personal data is discovered
- Ransomware or malware has been deployed on company systems
- A lost or stolen device contained PHI or company data
- A vendor reports a security incident that may have exposed company data
- Breach notification deadlines need to be tracked and managed
- Post-breach remediation planning

## Breach Response Framework

```
PICERL incident response phases:
  Preparation: Plans, tools, and contacts ready before an incident
  Identification: Detect and confirm the incident
  Containment: Stop the bleeding — isolate affected systems
  Eradication: Remove the threat (malware, unauthorized access)
  Recovery: Restore systems and operations
  Lessons Learned: What happened? What changes are needed?
  
HIPAA Breach Assessment (Allevio — required for any PHI-involved incident):
  
  Step 1: Was PHI involved?
    → If No: HIPAA breach assessment is not required (address as standard security incident)
    → If Yes or Unknown: Continue to Step 2
    
  Step 2: Does the Privacy Rule's Breach Notification Rule apply?
    → Unsecured PHI (not encrypted to NIST standard) is a reportable breach if acquired, accessed, used, or disclosed in violation of the Privacy Rule
    → Exception: If data was encrypted to NIST standards AND the encryption key was not compromised → NOT a reportable breach (safe harbor)
    
  Step 3: Apply the 4-factor risk assessment (HHS requirement):
    Factor 1: Nature and extent of PHI involved (what types of identifiers? Financial info? Clinical info?)
    Factor 2: Who used or accessed the PHI (another covered entity? Malicious outsider? Employee error?)
    Factor 3: Whether PHI was actually acquired or viewed (or just potentially accessible)
    Factor 4: Extent to which risk has been mitigated (data recovered? Recipient confirmed destruction?)
    
    LOW risk (all four factors favorable): May determine not a reportable breach → Document the determination
    HIGH risk (any factor unfavorable): Reportable breach → Notification required
    
HIPAA breach notification requirements:
  Individual notification:
    → Without unreasonable delay; no later than 60 days from date of discovery
    → Method: First-class mail (or email if individual has consented); if <10 individuals have outdated addresses: media or website notice
    → Content: Description of breach; PHI types involved; what individuals should do; what Allevio is doing; contact information
    
  HHS notification:
    → ≤500 individuals: Annual summary report; within 60 days of end of calendar year of discovery
    → >500 individuals: Within 60 days of discovery; also notify prominent media outlet in affected state
    → HHS Breach Reporting Tool: hhs.gov/hipaa/for-professionals/breach-notification/
    
  Business Associate breach notification:
    → BA must notify Allevio (Covered Entity) without unreasonable delay, within 60 days of BA's discovery
    → BA notification restarts the 60-day clock for Allevio
    
  Breach notification clock: Starts on the date of DISCOVERY (when the CE or BA knew or should have known of the breach)
    → "Should have known" — do not delay investigation to avoid starting the clock
    → Attorney engaged from day of discovery for any breach involving >10 individuals or involving malicious access
    
CCPA breach notification (if applicable — Column6/Siprocal primarily):
  Trigger: Unauthorized access and exfiltration of unencrypted consumer PII
  Individual notification: Expeditiously; without unreasonable delay
  Attorney General notification: Within 30 days if >500 CA residents affected
  
Non-HIPAA security incident (financial data, employee data):
  Attorney review: Any incident involving financial account data, SSNs, or >100 individuals
  State notification laws: Most states have breach notification requirements for certain personal data types; AZ: A.R.S. §18-552; UT; attorney advises on multi-state notification
```

## Output Format

```markdown
# Breach Response Log — <Company Name>
**Incident ID:** BR-[YYYY]-[###]
**Entity:** [Company] | **Date of discovery:** [Date/Time]
**Incident lead:** Dr. John Lewis | **Attorney:** [Name — engaged Day 1 for any PHI breach >10 individuals]

---

## Phase 1: Identification and Containment

**Discovery:** [How discovered — employee report, security alert, vendor notification, audit finding]
**Discovery date/time:** [Date and time — this starts the clock]
**Immediate containment actions (first 2 hours):**
- [ ] Affected systems identified: [System names]
- [ ] Systems isolated (disconnect from network if ransomware/malware): [Action taken]
- [ ] Access credentials changed for compromised accounts: [Accounts]
- [ ] IT security incident response activated: Dr. Lewis + [MSP/IT]
- [ ] Attorney notified (if PHI or PII breach potential): [Attorney name] — [Time]
- [ ] CEO notified: [Time]
- [ ] Matt Mathison notified: [Time] / Notification pending assessment

**Systems affected:** [List]
**Data potentially involved:** [PHI / PII / Financial / All]
**Initial scope estimate:** [N individuals / Unknown]

---

## Phase 2: HIPAA Breach Assessment (Allevio)

**PHI involved?** Yes / No / Unknown (investigating)

**4-Factor Risk Assessment:**

| Factor | Assessment | Evidence |
|--------|-----------|---------|
| Nature and extent of PHI (identifiers; sensitivity) | [High / Medium / Low risk] | [Types of PHI; demographic vs. clinical vs. financial] |
| Who accessed the PHI | [High / Low risk] | [Malicious outsider / Employee error / Another CE / Unknown] |
| Whether PHI was actually accessed/acquired | [High / Low risk] | [Confirmed acquisition / Potentially accessible only / Unknown] |
| Risk mitigation | [Reduced / Not reduced] | [Data recovered? Recipient confirmed destruction?] |

**Breach determination:**
- [ ] **REPORTABLE BREACH** — Notification required; proceed to Phase 3
- [ ] **NOT a reportable breach** — Risk assessment documented; 4 factors analyzed; rationale: [Basis]; attorney reviewed determination: [Date]

**Safe harbor applicable?** PHI was encrypted to NIST AES-128/256 standard AND encryption key not compromised → NOT a reportable breach (document encryption standard and key status)

---

## Phase 3: Breach Notification (if reportable)

**Individuals affected:** [N confirmed / estimate]
**Attorney confirmed notification obligation:** [Date]

| Notification | Recipient | Method | Deadline | Completed | Date |
|-------------|---------|--------|---------|---------|------|
| Individual notification | [N] individuals | First-class mail / Email (consent on file) | [Discovery + 60 days = DATE] | ✅ / ⚠️ | |
| HHS notification | HHS Breach Reporting Tool | Online portal | [Discovery + 60 days / Annual if ≤500] | ✅ / ⚠️ | |
| Media notification (if >500 in state) | [Media outlet] | Press release | [Discovery + 60 days] | ✅ / N/A | |
| BA notification to covered entity | [If vendor-initiated] | Written | Within 60 days of BA discovery | ✅ | |

**Individual notification content:** [Attached / Drafted and approved by attorney]
**Matt Mathison notified:** [Date] — Breach involves [N] individuals; PHI types: [List]; notification in progress

---

## Phase 4: Remediation and Lessons Learned

**Root cause:** [Phishing / Unpatched system / Misconfigured access / Lost device / Vendor breach / Insider]
**Systems patched/fixed:** [Action taken; date]
**Controls added:** [Specific changes — MFA, access restriction, monitoring, training]
**Policy updates required:** [rc-hipaa-security-program update; rc-policy-manager]
**Training required:** [Targeted HIPAA refresher within 30 days]

**Post-incident review:** Completed [Date] | Participants: Dr. Lewis, CEO, IT, [Attorney]

---

## Timeline

| Date/Time | Event | Actor |
|---------|-------|-------|
| [Date T+0h] | Discovery | [Who] |
| [T+1h] | CEO and attorney notified | Dr. Lewis |
| [T+2h] | Systems isolated | IT/MSP |
| [T+24h] | HIPAA breach assessment complete | Dr. Lewis + Attorney |
| [T+30d] | Individual notifications sent | Dr. Lewis |
| [T+60d] | Deadline — all notifications complete | |
| [T+60d] | HHS notification filed | Dr. Lewis |
```

## Output Contract
- The 60-day clock starts at discovery, not at the end of investigation — a common mistake is to continue investigating in the hope of determining the breach is not reportable, thereby extending the investigation past 60 days; the clock does not pause for investigation; if the breach is ultimately determined to be not reportable, no notification is required; but if the investigation takes 75 days and then the breach is confirmed reportable, the notification is already 15 days late; Dr. Lewis engages attorney within 24 hours of any potential HIPAA breach and sets the 60-day deadline immediately; investigation runs in parallel with notification preparation; notifications can be issued before the investigation is fully complete with available information supplemented by a follow-up notice if needed
- The 4-factor risk assessment is documented, not assumed — "it was probably fine" is not a breach determination; the 4-factor HHS risk assessment is documented with supporting evidence for each factor; if the determination is that it is NOT a reportable breach, that documentation is the defense in an OCR audit; if OCR investigates and finds no breach assessment documentation, OCR will treat the incident as an unnotified breach; attorney reviews the determination; the document is retained permanently
- Encrypted data is not automatically a non-breach event — the HIPAA encryption safe harbor applies when PHI is encrypted to NIST standards (AES 128 or 256) AND the encryption key was not compromised; a ransomware attack that encrypts company files is not a safe harbor event because the attacker has access to the data during the attack window; a lost USB drive with AES-256 encrypted PHI and no key compromise IS a safe harbor event; Dr. Lewis documents the encryption standard and key status as part of every breach assessment
- HITL required: Dr. Lewis leads breach response; attorney engaged Day 1 for any PHI breach or PII breach >10 individuals; CEO notified within 1 hour of breach confirmation; Matt Mathison notified within 24 hours of any reportable breach (PHI or significant PII); Matt Mathison for all media notification decisions (>500 individuals); law enforcement for criminal/ransomware incidents (attorney advises on timing and scope of law enforcement notification)

## System Dependencies
- **Reads from:** IT security monitoring (Microsoft Defender; MDM), AdvancedMD audit log (PHI access), email system logs, user access logs (Entra ID), vendor breach notifications, rc-hipaa-security-program (encryption status and HIPAA safeguards)
- **Writes to:** Breach response log (SharePoint/RC/Allevio/Breaches/ — permanent); HHS Breach Reporting Tool; individual notification letters; attorney engagement log; post-incident remediation plan; CEO and Matt Mathison notifications; rc-hipaa-security-program (update after breach)
- **HITL Required:** Dr. Lewis leads; attorney within 24 hours (any PHI breach); CEO within 1 hour of confirmation; Matt Mathison within 24 hours of reportable breach; law enforcement: attorney advises; media notification: CEO + Matt Mathison + attorney

## Test Cases
1. **Golden path:** A clinical coordinator reports that they sent an email with 3 patients' names and appointment dates to the wrong email address (to another patient instead of their own care team) → Discovery: Day 0; PHI involved: Yes (names + appointment dates = PHI); containment: email already sent; contact recipient email owner immediately; request deletion confirmation in writing; attorney notified Day 0; 4-factor assessment: Nature — minimal PHI (names, dates; no diagnosis, no clinical details); Who accessed — unintended recipient who is a patient (another private individual, not a malicious actor); Actually accessed — unknown; request confirmation from recipient that email was deleted without review; Mitigation — recipient responded within 24 hours: "I deleted it without reading it" — confirmed in writing; Risk assessment: LOW; Attorney reviews determination: low probability that PHI was acquired; documentation supports not a reportable breach; documented determination filed; training reinforced: secure messaging used for all patient communications going forward; incident log updated; not reportable
2. **Edge case:** Ransomware encrypts Allevio's server containing AdvancedMD data backups — is there a HIPAA breach? → Immediately: isolate affected systems; engage IT/MSP; attorney notified within 1 hour; CEO and Matt Mathison notified within 1 hour; 4-factor assessment: Nature — PHI backup data (diagnosis, treatment, billing — highly sensitive); Who — malicious external attacker; Actually accessed — ransomware typically exfiltrates before encrypting (assume acquired unless forensics disprove); Mitigation — data not recovered from attacker; determination: HIGH risk — reportable breach; attorney confirms; individual count determined from affected backup scope; notifications required: individuals (60-day deadline = [Date]); HHS (60-day); if >500 in AZ: media; law enforcement: FBI cyber division engaged (attorney advised); notifications prepared and sent within 45 days; HHS filed; incident documented
3. **Adversarial:** "Can we just say it was encrypted so we don't have to notify?" → The encryption safe harbor requires that the PHI was actually encrypted to NIST standards and that the encryption key was not compromised; false representation to HHS of a safe harbor that doesn't apply is a false statement to a federal agency; if OCR investigates (triggered by a complaint or random audit) and discovers that the safe harbor documentation was fabricated or the encryption standard was not actually met, the consequence is significantly worse than the original unreported breach; Dr. Lewis does not assist in misrepresenting breach status; if there is a legitimate encryption safe harbor question, attorney makes the determination with full facts; any determination that relies on incomplete facts is not a valid determination

## Audit Log
All breach incidents logged permanently with full timeline. Breach determinations (reportable and non-reportable) retained permanently with 4-factor assessment. Individual notification letters retained permanently. HHS notifications retained permanently. Attorney engagement records retained permanently. Post-incident remediation records retained. CEO and Matt Mathison notifications retained.

## Deprecation
Retire when portfolio companies have dedicated security operations functions (SOC or MSSP) with breach response playbooks and attorney relationships — with Dr. Lewis reviewing HIPAA breach assessment methodology and Matt Mathison notification protocols for all reportable breaches. HIPAA breach response remains a personal Dr. Lewis function at Allevio until a dedicated privacy officer is hired.
