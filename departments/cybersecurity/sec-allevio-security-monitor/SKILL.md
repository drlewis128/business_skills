---
name: sec-allevio-security-monitor
description: "Monitor security status specific to Allevio operations and HIPAA compliance. Use when the user says 'Allevio security', 'Allevio security monitor', 'Allevio security status', 'Allevio compliance status', 'Allevio HIPAA status', 'MSO security', 'clinic security', 'clinical security', 'employer health plan security', 'Allevio dashboard', 'Allevio controls', 'Allevio security controls', 'Allevio security check', 'Allevio security metrics', 'AdvancedMD security', 'AdvancedMD monitoring', 'PHI monitoring', 'PHI security status', 'PHI control status', 'HIPAA control status', 'HIPAA metrics', 'HIPAA scorecard', 'HIPAA monthly review', 'HIPAA quarterly review', 'Allevio monthly security review', 'Allevio quarterly security review', 'Allevio annual review', 'employer data security', 'clinical data security', 'Allevio security report', 'Dr. Lewis Allevio', 'Allevio Privacy Officer', 'Allevio Security Officer', or 'Allevio security briefing'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--period <monthly|quarterly|annual>] [--action <review|report|briefing>] [--audience <entity-ceo|matt-mathison|audit>]"
---

# Sec Allevio Security Monitor

Monitor security status specific to Allevio — producing a consolidated view of all PHI protections, HIPAA safeguard implementation status, and security controls across Allevio's systems for Dr. Lewis and the entity CEO. Allevio's security is more complex than other MBL entities: HIPAA-regulated; PHI in every clinical system; employer data at risk; BAA obligations; mandatory breach notification; mandatory training. This skill is the Allevio-specific security command center.

## When to Use
- Monthly or quarterly Allevio security review by Dr. Lewis
- Preparing the entity CEO security briefing for Allevio
- Reviewing Allevio's HIPAA posture before an audit or renewal
- Producing the annual security attestation for Matt Mathison

## Allevio Security Monitoring Framework

```
ALLEVIO SECURITY DOMAINS (10 control areas, reviewed monthly or quarterly):

  1. HIPAA SAFEGUARD STATUS:
     Required specifications: all 15+ required specs implemented? (sec-hipaa-security-officer)
     Any new gaps since last review?
     HIPAA risk analysis: current (within 12 months)?
     Annual cycle: Q1 risk analysis; Q2 training; Q3 tabletop + IR test; Q4 compliance status
     
  2. PHI FLOW MONITORING:
     PHI flow map: current? Any new PHI systems added since last review?
     New integrations: any new SaaS or vendor touching PHI without BAA?
     Employer census flow: census collected only after contract signature?
     Employer reporting: still aggregate only? No individual-level PHI going to employers?
     
  3. ADVANCEDMD ACCESS AND AUDIT:
     AdvancedMD access review: current (within 90 days)?
     Minimum necessary check: clinical coordinators have clinical scope only?
     Audit log: enabled? Reviewed for anomalies this month?
     Access count: how many active AdvancedMD accounts? Any surprises?
     
  4. BAA REGISTER STATUS:
     All PHI vendors: BAA in place and current?
     Any new vendors accessing PHI without BAA?
     Any BAAs expiring in next 90 days?
     Vendor breach notification: any from vendors this period?
     
  5. WORKFORCE TRAINING STATUS:
     Annual training: on track for 100% completion by December 31?
     New hires: trained within 30 days?
     Phishing simulation: this quarter's result? Click rate trend?
     HIPAA training records: current and retained per 6-year schedule?
     
  6. INCIDENT STATUS:
     Any HIPAA-reportable incidents this period?
     Any phishing clicks with PHI access risk?
     Any unauthorized access detected in AdvancedMD audit log?
     Any vendor breach notifications received?
     All incidents documented and retained?
     
  7. ENCRYPTION STATUS:
     All Allevio endpoints encrypted (BitLocker)?
     AdvancedMD encryption standard current (vendor confirmed)?
     PHI email encryption active (M365 OME policy)?
     TLS certificates on any Allevio web services current?
     
  8. ACCESS CONTROL AND IAM:
     Any terminated employees with lingering access?
     MFA enforced on all Allevio accounts?
     Admin accounts: Dr. Lewis + entity CEO only?
     Privilege review: any clinical coordinators with excessive access?
     
  9. PATCH AND VULNERABILITY STATUS:
     Clinical workstation patching: current (95%+ within SLA)?
     Any critical CVEs affecting Allevio systems this period?
     AdvancedMD platform: on current version?
     
  10. COMPLIANCE EVIDENCE STATUS:
     All required HIPAA documentation current and retained?
     Evidence collected for this period?
     Missing evidence flagged?
     Cyber insurance: controls attested accurately?
     
MONTHLY SECURITY REVIEW (30-minute process):
  Dr. Lewis reviews domains 3, 4, 6, 7, 8 monthly (fast checks; anomaly detection)
  Anomalies → immediately escalate per incident type
  
QUARTERLY SECURITY REVIEW (2-3 hours):
  Dr. Lewis reviews all 10 domains
  Entity CEO briefed via 1-page quarterly security update
  Any HIPAA gap → entity CEO + Dr. Lewis remediation plan with due date
  
ANNUAL SECURITY ATTESTATION (for Matt Mathison):
  1-page; BLUF; covers:
    HIPAA compliance status (all required safeguards implemented?)
    Security program maturity (vs. prior year)
    Incidents (count; summary; resolution)
    Top 3 risks (current; mitigation status)
    Cyber insurance coverage (adequate? controls attested accurately?)
    Next year security investment needed
    Dr. Lewis attestation signature
```

## Output Format

```markdown
# Allevio Security Status — [Period] | [Date]
**Security Officer:** Dr. John Lewis | **Status:** [Green / Yellow / Red]

---

## Domain Status
| Domain | Status | Finding | Action |
|--------|--------|---------|--------|
| HIPAA Safeguards | 🟢/🟡/🔴 | | |
| PHI Flow | 🟢/🟡/🔴 | | |
| AdvancedMD Access | 🟢/🟡/🔴 | | |
| BAA Register | 🟢/🟡/🔴 | | |
| Workforce Training | 🟢/🟡/🔴 | | |
| Incident Status | 🟢/🟡/🔴 | [N incidents this period] | |
| Encryption | 🟢/🟡/🔴 | | |
| Access Control | 🟢/🟡/🔴 | | |
| Patch Status | 🟢/🟡/🔴 | | |
| Compliance Evidence | 🟢/🟡/🔴 | | |

---

## Overall: [N/10 Green] | HIPAA Compliance: [Compliant / Gap(s) Found]

## Matt Mathison Annual Attestation (included in Q4 only)
Dr. John Lewis attests that as of [Date]:
- All required HIPAA Security Rule safeguards are implemented at Allevio.
- [N] security incidents occurred in [Year]; all resolved; [N] required/did not require HHS notification.
- Top 3 risks: [Risk 1]; [Risk 2]; [Risk 3] — all under active mitigation.
___________________________ (Dr. John Lewis) | Date: ________
```

## Output Contract
- The Allevio security monitor is Dr. Lewis's personal security accountability tool — it consolidates inputs from all other sec-* skills into one view of Allevio's security posture; the monthly review is Dr. Lewis checking his own program; it is not a report produced for external review unless requested; it is the mechanism by which Dr. Lewis catches a missed access review, an expiring BAA, a new vendor without a BAA, or a training completion gap before they become HIPAA violations; the output is an internal working document; the entity CEO version is the quarterly briefing (1 page); the Matt Mathison version is the annual attestation (1 page); Dr. Lewis reads the full dashboard; entity CEO gets the summary; Matt Mathison gets the attestation
- All 10 domains must be Green for Allevio to be in a fully compliant security posture — a single Red domain with a HIPAA-required specification gap is a compliance failure, not a "mostly compliant" situation; HIPAA required specifications are binary (implemented or not implemented); if any required safeguard is Red, Dr. Lewis and entity CEO have an open remediation item with a deadline; Yellow domains (partially effective; in progress; trending toward issue) are monitored and addressed within the quarter; no Yellow should remain Yellow for two consecutive quarters without a documented reason and a remediation plan; Dr. Lewis uses the dashboard to hold himself and the IT team accountable to the security program; it is not a performative document
- HITL required: any Red domain finding → entity CEO notified within 48 hours; any HIPAA required spec gap → entity CEO + Dr. Lewis 30-day remediation plan; HIPAA reportable incident → full sec-incident-responder process; PHI flow change (new vendor or system touching PHI) → Dr. Lewis evaluates + BAA required before go-live; entity CEO quarterly security briefing → Dr. Lewis prepares and delivers; Matt Mathison annual attestation → Dr. Lewis signs; entity CEO reviews; Matt Mathison receives; any anomaly in AdvancedMD audit logs → Dr. Lewis investigates; escalates per findings; BAA expiring → Dr. Lewis initiates renewal 60 days before expiry

## System Dependencies
- **Reads from:** All Allevio-specific sec-* skill outputs (sec-hipaa-security-officer; sec-baa-security-validator; sec-iam-manager; sec-patch-compliance-tracker; sec-access-review-coordinator; sec-backup-security-validator; sec-security-awareness-trainer; sec-incident-responder; sec-data-classification-manager; sec-encryption-standards-guide); AdvancedMD admin console (audit log; active users; access patterns); M365 Defender for Business (Allevio tenant alerts; endpoint status); Intune (clinical workstation compliance); BAA register; training completion records; compliance evidence repository
- **Writes to:** Allevio security dashboard (SharePoint → Allevio → Security → Monthly-Review → [Month-Year]); entity CEO quarterly briefing (1-page; SharePoint → Allevio → Security → Entity-CEO-Briefings → [Quarter-Year]); Matt Mathison annual attestation (1-page; Q4; Dr. Lewis signature; SharePoint → Allevio → Security → Annual-Attestation → [Year]); domain-specific action items (Monday.com — security domain; owner; due date); HIPAA compliance evidence (feeds sec-compliance-evidence-manager)
- **HITL Required:** Red domain finding → entity CEO 48hr; HIPAA required spec gap → entity CEO + Dr. Lewis 30-day plan; HIPAA incident → sec-incident-responder; PHI flow change → Dr. Lewis + BAA before go-live; entity CEO quarterly briefing → Dr. Lewis prepares; Matt Mathison attestation → Dr. Lewis signs; entity CEO reviews; AdvancedMD audit anomaly → Dr. Lewis investigates; BAA expiring → Dr. Lewis renewal 60 days before

## Test Cases
1. **Golden path:** Q3 Allevio security review. Dr. Lewis reviews all 10 domains. Findings: HIPAA Safeguards 🟢 (all required specs implemented; Q2 training complete at 100%); PHI Flow 🟢 (map current; no new systems; census only post-signature); AdvancedMD 🟢 (Q2 access review done; entity CEO certified; audit log active; no anomalies); BAA Register 🟢 (all current; no expirations <90 days); Training 🟢 (Q3 phishing sim click rate 7% — below 15% target); Incidents 🟢 (1 P2 incident in Q2 — contained; documented; no PHI exposure); Encryption 🟢 (12/12 endpoints BitLocker; AdvancedMD vendor confirmed AES-256; TLS cert 180 days); Access Control 🟢 (MFA 100%; no terminated employees with access); Patching 🟢 (95% compliance; 1 critical patch Q3 — applied within 7 days); Compliance Evidence 🟢 (all documentation current). Overall: 10/10 Green. Entity CEO quarterly briefing: "Q3 status is Clean. All HIPAA safeguards in place. Q3 phishing sim: 7% click rate (down from 14% in Q2). Tabletop exercise scheduled for Q3 next month."
2. **Edge case:** Monthly review finds an anomaly in the AdvancedMD audit log — a clinical coordinator's account accessed 340 records in a single day (normal is 15-20 per day): Dr. Lewis: "This anomaly requires investigation. (1) Pull the specific records accessed: what employer group? What data was accessed (demographic; clinical; billing)? (2) Is there a clinical explanation? (open enrollment processing; employer request for aggregate data; data migration activity?) Contact the clinical coordinator and their supervisor to understand the business context. (3) If no legitimate explanation: potential insider PHI access — escalate to sec-incident-responder; entity CEO notified; HIPAA breach assessment initiated. (4) If legitimate business activity (e.g., coordinator was handling an employer's open enrollment): document the explanation in the audit log review record; note as explained anomaly; no further action. (5) Either way: anomaly is documented in the AdvancedMD access review record for Q3. Retain per HIPAA 6-year schedule."
3. **Adversarial:** Entity CEO asks to skip the quarterly security briefing: "I trust you're on top of it — I don't need the update": Dr. Lewis: "I understand and I appreciate the trust. However, the quarterly briefing serves a function beyond keeping you informed — it is part of our HIPAA compliance documentation. Your awareness of Allevio's security posture as the entity executive is part of the governance structure we've documented with OCR. If we're audited, 'the entity CEO received quarterly security updates' is a stronger position than 'Dr. Lewis handled it and the CEO was aware in general.' The briefing takes 15 minutes — I'll prepare the 1-page summary and schedule 15 minutes. If you want, you can review it asynchronously and shoot me an email acknowledging receipt — that works for documentation purposes. Either way, the briefing document gets filed."

## Audit Log
Monthly security review records (date; all 10 domains; status; findings; Dr. Lewis review; SharePoint). Red domain findings (domain; finding; entity CEO 48hr notification; remediation plan; resolution date). AdvancedMD audit anomaly records (date; account; access pattern; investigation; explanation or escalation; documentation). Entity CEO quarterly briefing records (date; content; delivery; entity CEO acknowledgment; SharePoint). Matt Mathison annual attestation records (year; date; Dr. Lewis signature; entity CEO review; SharePoint). HIPAA required spec gap remediation records (spec; gap; plan; entity CEO notification; resolution; Dr. Lewis re-verification).

## Deprecation
Allevio security monitoring domains reviewed annually. Domain scope updated when Allevio adds new systems or changes operational model. Monthly vs. quarterly cadence reviewed when Allevio's security program matures to Level 4 (may shift to less frequent for stable domains). Matt Mathison briefing format reviewed annually. HIPAA monitoring requirements reviewed when HHS updates guidance.
