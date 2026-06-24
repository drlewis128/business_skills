---
name: sec-phishing-response-coordinator
description: "Coordinate phishing response for MBL portfolio companies. Use when the user says 'phishing', 'phishing email', 'phishing attack', 'I got a phishing email', 'suspicious email', 'suspicious link', 'clicked a phishing link', 'clicked a link', 'I clicked something', 'employee clicked', 'someone clicked a bad link', 'someone clicked a phishing email', 'malicious email', 'malicious link', 'malicious attachment', 'suspicious attachment', 'opened an attachment', 'email fraud', 'spoofed email', 'impersonation email', 'CEO fraud', 'CFO fraud', 'invoice fraud', 'fake invoice', 'fake wire transfer request', 'business email compromise', 'BEC', 'spear phishing', 'whaling', 'vishing', 'voice phishing', 'smishing', 'SMS phishing', 'text phishing', 'QR code phishing', 'quishing', 'credential harvest', 'fake login page', 'fake Microsoft login', 'report phishing', 'phishing report', 'phishing investigation', 'phishing response', 'phishing containment', 'quarantine email', 'delete phishing email', 'email quarantine', or 'suspicious communication'."
metadata:
  version: 1.0.0
  tier: cybersecurity
  owner: Dr. John Lewis
argument-hint: "[--entity <mbl|allevio|column6|hive>] [--type <link|attachment|credential-entry|bec|vishing>] [--action <report|investigate|contain|train>]"
---

# Sec Phishing Response Coordinator

Coordinate phishing response for MBL portfolio companies — providing a clear, fast response playbook for when employees encounter or click on phishing emails, managing the containment of credential compromise, and handling Business Email Compromise (BEC) attempts targeting financial transactions. Phishing is the entry point for the majority of breaches; the response in the first 30 minutes determines whether a clicked link becomes a credential reset or a data breach.

## When to Use
- An employee reports receiving or clicking a phishing email
- Investigating a Business Email Compromise (BEC) attempt
- An employee entered credentials on a suspicious page
- Responding to a smishing or vishing incident

## Phishing Response Framework

```
EMPLOYEE PHISHING REPORT PROCESS:
  All employees should know: report suspicious emails using the "Report Phishing" button
  or by forwarding to security@[entity].com → Dr. Lewis reviews
  
  What employees should NOT do:
    Click links to verify if they're real
    Forward the email widely to warn colleagues (risks spreading)
    Delete the email before IT reviews it
    Try to "trace" where the email came from themselves
    Reply to the sender asking if it's real
    
RESPONSE BY INCIDENT TYPE:

  TYPE 1 — PHISHING EMAIL RECEIVED (not clicked):
    Severity: P2 (low immediate risk; important for blocking and training)
    Response:
      1. IT reviews email: is it phishing? (check sender domain; headers; links — hover don't click)
      2. If confirmed: quarantine or delete from all mailboxes (M365 Admin → Threat Explorer → delete)
      3. Block sender domain and any URLs in Microsoft Defender for Office 365
      4. Document: email; sender; subject; reported by; date; action taken
      5. Use in next phishing simulation content (disguise details; use as training example)
      6. No employee notification needed (routine handling)
      
  TYPE 2 — LINK CLICKED (no credential entry confirmed):
    Severity: P1 (potential for drive-by malware download; browser exploit)
    Response:
      1. Dr. Lewis notified by IT within 15 minutes
      2. Isolate the endpoint: run full AV scan immediately; review Defender for Business for alerts
      3. Check: did the site attempt a download? (browser history; Defender detection)
      4. If malware indicator: escalate to sec-incident-responder (Type 2 link click + malware detection)
      5. If no malware indicator and site was just a credential harvest page they didn't enter:
         Reset password preventively; verify MFA enrolled; document
      6. Employee receives targeted phishing training (immediate; 15-minute module)
      7. Block the phishing URL in M365 Defender Safe Links
      
  TYPE 3 — CREDENTIALS ENTERED ON PHISHING SITE (highest risk):
    Severity: P1 (immediate credential compromise)
    Response:
      1. Dr. Lewis notified within 10 minutes
      2. Block sign-in for the affected account IMMEDIATELY (M365 Admin → Users → Block sign-in)
      3. Revoke all active sessions (Azure AD → User → Revoke sessions)
      4. Reset password; re-enroll MFA with new method
      5. Review sign-in logs: did the attacker sign in before block?
         If yes: escalate to sec-incident-responder (compromise occurred)
         If no: credential reset successful; attacker intercepted; document
      6. Allevio: check AdvancedMD audit logs for any access under the affected account
      7. Employee training: targeted phishing + MFA fatigue awareness
      
  TYPE 4 — BEC (Business Email Compromise — fake financial request):
    Severity: P0 if wire transfer executed; P1 if intercepted before transfer
    
    BEC recognition patterns:
      Urgency + financial request ("need this wire NOW"; "gift cards immediately")
      Sender appears to be CEO/CFO but from external email or slightly off domain
      Request to bypass normal approval process ("just between us"; "keep this confidential")
      New bank account details ("we changed our bank — please send to this new account")
      
    Response if intercepted before transfer:
      1. Confirm with the purported sender via known phone number (not email reply)
      2. Mark email as BEC attempt; document; block sender
      3. No financial action until phone verification complete
      4. Entity CEO notified; Dr. Lewis briefed
      
    Response if transfer already executed:
      1. Contact bank IMMEDIATELY — attempt wire recall (within hours is critical)
      2. Matt Mathison notified immediately
      3. FBI IC3 complaint filed (cybercrime.gov)
      4. Preserve evidence (email; transfer records; timeline)
      5. sec-incident-responder activated (P0)
      
  TYPE 5 — VISHING / SMISHING (voice or SMS phishing):
    Severity: P1 if credentials or financial info disclosed
    Response:
      1. Employee reports call or text to IT
      2. If no information disclosed: document; no further action beyond training
      3. If credentials disclosed: treat as Type 3 (credential entry response)
      4. If financial information disclosed: notify entity CEO + Dr. Lewis; bank if applicable
      
BEC PREVENTION CONTROLS (implement proactively):
  DMARC at p=reject: prevents spoofing of MBL entity domains
  Wire transfer verification protocol: any wire transfer >$5K requires phone call to known number
  No new bank account changes via email only: require written + phone verification
  Finance team training: BEC deep-dive annual + phishing simulation targeting finance roles
  Multi-approver for large transfers: two people confirm before wire executes
```

## Output Format

```markdown
# Phishing Incident Response — [Entity] | [Incident ID] | [Date/Time]
**Type:** [1-Received/2-Clicked/3-Credential Entry/4-BEC/5-Vishing]
**Reported by:** [Name/Role] | **Dr. Lewis notified:** [HH:MM] | **Severity:** P[0-2]

---

## Response Timeline
| Time | Action | By |
|------|--------|----|
| [HH:MM] | Employee reports suspicious email | [Name] |
| [HH:MM] | IT reviews; confirms phishing | IT |
| [HH:MM] | [Account blocked / AV scan / Quarantine] | [IT/Dr. Lewis] |

---

## Containment Status
- Account blocked: ✅/❌ [Time]
- Sessions revoked: ✅/❌
- Password reset: ✅/❌
- MFA re-enrolled: ✅/❌
- AV scan: ✅/❌ [Result]

---

## Allevio PHI Check (if applicable)
AdvancedMD audit log reviewed: [Yes/No] | PHI access detected: [Yes/No/N/A]
```

## Output Contract
- Block the account before investigating — the instinct during a credential compromise is to investigate first ("let me see what the attacker did before I lock them out"); this is the wrong sequence; if an attacker has a valid credential and you investigate while their session is active, they can access more systems during your investigation window; the sequence is: block sign-in → revoke sessions → reset password → then investigate sign-in logs; the account block takes 30 seconds in M365 Admin Center; the investigation takes 30 minutes; those 30 minutes of investigation happen after the attacker is locked out, not while they have access
- BEC financial fraud has a very narrow recovery window — wire transfers can sometimes be recalled if the bank is contacted within 24 hours of the transfer; some banks can act within hours if the fraud is reported quickly; the FBI's Financial Fraud Kill Chain program has a 72% success rate in recovering BEC fraud funds when reported within 24 hours vs. much lower rates after that; Dr. Lewis + entity CEO contacting the bank is the first action (above documentation; above FBI report; above internal incident log); Matt Mathison is notified simultaneously; the bank contact and Matt Mathison notification happen before Dr. Lewis stops to document the incident timeline — documentation follows the immediate response
- HITL required: Type 3 credential entry → Dr. Lewis block + reset within 10 minutes; entity CEO notified within 2 hours; Allevio AdvancedMD audit log reviewed (HIPAA — any PHI access triggers breach assessment); Type 4 BEC executed → bank contact within 1 hour; Matt Mathison immediately; FBI IC3 complaint within 24 hours; entity CEO + Dr. Lewis both involved in bank call; Type 4 BEC intercepted → entity CEO + Dr. Lewis verify with purported sender; no transfer until verified; Dr. Lewis reviews BEC email for sender authenticity; Allevio credential compromise → PHI breach assessment initiated (sec-incident-responder); Matt Mathison notified if PHI at risk

## System Dependencies
- **Reads from:** Employee phishing reports (email to security@entity.com; Report Phishing button in M365); M365 Admin Center (block sign-in; session revoke; password reset); M365 Defender Threat Explorer (email quarantine; URL blocking; detection history); M365 sign-in logs (did attacker sign in?); AdvancedMD audit logs (Allevio — PHI access post-compromise); Defender for Business (endpoint AV scan; malware detection); bank records (BEC); wire transfer confirmation (BEC)
- **Writes to:** Phishing incident record (SharePoint → [Entity] → Security → Incidents → Phishing → [Incident-ID]); M365 Defender URL block (add phishing URLs to block list); M365 sender block (add sender domain to block list); training assignment (targeted phishing training for clicker — within 24 hours); Allevio PHI breach assessment trigger (sec-incident-responder); BEC bank call record (entity CEO + Dr. Lewis; attempt and outcome); FBI IC3 complaint (BEC executed); entity CEO phishing briefing (any Type 3 or 4 incident); Matt Mathison notification (BEC executed; PHI at risk)
- **HITL Required:** Type 3 → Dr. Lewis block + reset within 10 min; entity CEO 2hr; Allevio audit log review; PHI → breach assessment; Type 4 BEC executed → bank within 1hr; Matt Mathison immediately; entity CEO + Dr. Lewis on bank call; FBI IC3 within 24hr; Type 4 BEC intercepted → entity CEO + Dr. Lewis verify sender before any transfer; suspicious BEC email → Dr. Lewis reviews for authenticity; all Type 3/4/5 incidents → entity CEO notified

## Test Cases
1. **Golden path (Type 1):** Column6 employee reports a suspicious email: "Congratulations — your Microsoft account needs verification" from microsoft-accounts@security-alert-verify.net. IT reviews: clearly phishing (external domain; fake Microsoft branding; link goes to credential harvest page). Actions: IT quarantines email from all mailboxes (M365 Threat Explorer — search by sender; delete from all). Block sender domain in Defender for Office 365. Block the phishing URL in Safe Links. Document: sender; subject; reported by; date; quarantine confirmed. Employee receives: "Thanks for reporting — this was indeed a phishing email. Your quick report helped us block it for everyone. No action needed on your part." No credential entry; no containment needed. Used as content for next phishing awareness email.
2. **Edge case (Type 3 — Allevio):** An Allevio clinical coordinator reports: "I got an email that looked like our AdvancedMD login page and I typed in my password." Dr. Lewis: "P1 — credential entry on phishing site. (1) Block coordinator's M365 account immediately (Admin Center — done within 5 minutes). (2) Revoke all active M365 sessions. (3) Reset M365 password + re-enroll MFA. (4) AdvancedMD: change AdvancedMD password immediately — the phishing page was AdvancedMD-themed; the attacker may have those credentials. (5) AdvancedMD audit log: pull last 2 hours — any access from unusual IP or location? (6) M365 sign-in log: did the attacker successfully sign in before we blocked? (7) If AdvancedMD access occurred before credential change: HIPAA breach assessment — what records did they access? (8) Entity CEO notified within 2 hours. Matt Mathison notified if PHI access confirmed."
3. **Adversarial (Type 4 BEC — executed):** MBL finance team received an email appearing to be from Matt Mathison requesting an urgent $52,000 wire to a new vendor account. Finance executed the wire. Matt Mathison is informed by the CEO 2 hours later when reviewing the bank statement. Dr. Lewis: "P0 — BEC executed. (1) Entity CEO + Dr. Lewis call the bank immediately — within the next 30 minutes. 'We believe we were the victim of a business email compromise — a fraudulent wire transfer of $52,000 was executed this morning. We need to initiate a wire recall immediately.' Provide all wire details. (2) Matt Mathison notified — he's already aware; this is confirmation and escalation to bank recall priority. (3) Preserve: phishing email headers; wire transfer records; timeline. (4) FBI IC3 complaint within 24 hours (cybercrime.gov — submit all evidence). (5) Check: did the attacker also access Matt Mathison's email account? Review M365 sign-in logs for Matt's account. (6) BEC prevention controls: implement wire transfer call-back verification immediately — all transfers >$5K require phone call to known number before execution."

## Audit Log
Phishing incident records (all types; entity; incident ID; type; reported by; response timeline; containment actions; entity CEO briefed if Type 3/4; SharePoint). Allevio AdvancedMD audit log reviews (post Type 3/4 incident; result; PHI access determination; Dr. Lewis; date; HIPAA breach assessment if applicable). BEC response records (incident; bank contact; recall attempt; outcome; FBI IC3 complaint; Matt Mathison notification; entity CEO; financial loss if any). M365 URL and sender block records (blocked domains; dates; Defender configuration). Employee training assignments (triggered by phishing click; targeted training; completion date). HIPAA breach assessment records (triggered by Allevio Type 3/4 incidents; 4-factor assessment; outcome; notification if required).

## Deprecation
Phishing response playbook reviewed annually. BEC response procedure reviewed when bank relationships or wire transfer approval processes change. M365 Defender configuration reviewed when Microsoft updates Threat Explorer or Safe Links capabilities. Training assignment process reviewed when training platform changes. BEC prevention controls updated when new BEC attack patterns emerge (deepfake voice; QR code phishing).
